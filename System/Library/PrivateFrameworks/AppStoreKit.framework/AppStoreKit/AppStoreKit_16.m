uint64_t sub_1E1497E68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4798);
    v3 = sub_1E1AF6F9C();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_1E1AF5DFC();
      sub_1E1AF762C();
      v27 = v7;
      sub_1E1AF5F0C();
      v8 = sub_1E1AF767C();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_1E1AF5DFC();
        v18 = v17;
        if (v16 == sub_1E1AF5DFC() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_1E1AF74AC();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E149805C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4778);
    v3 = sub_1E1AF6F9C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_1E1AF762C();
      MEMORY[0x1E6900360](v10);
      result = sub_1E1AF767C();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E1498198(uint64_t a1)
{
  v2 = sub_1E1AF2FDC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4758);
    v9 = sub_1E1AF6F9C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1E1498AA4(&qword_1EE1D2A78, MEMORY[0x1E698B1B0]);
      v16 = sub_1E1AF5D0C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1E1498AA4(&qword_1ECEB4760, MEMORY[0x1E698B1B0]);
          v23 = sub_1E1AF5DAC();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E14984B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4788);
    v3 = sub_1E1AF6F9C();
    v4 = 0;
    v43 = v3 + 56;
    v38 = v1;
    v39 = a1 + 32;
    v37 = v3;
    while (1)
    {
      v5 = (v39 + (v4 << 6));
      v6 = v5[3];
      v47 = v5[2];
      v48 = v6;
      v7 = v5[1];
      v45 = *v5;
      v46 = v7;
      v8 = v45;
      sub_1E1AF762C();
      sub_1E1AF764C();
      sub_1E13C5038(&v45, v44);
      if (*(&v8 + 1))
      {
        sub_1E1AF5F0C();
      }

      v9 = v47;
      v41 = *(&v46 + 1);
      v42 = v46;
      sub_1E1AF5F0C();
      sub_1E1AF764C();
      if (*(&v9 + 1))
      {
        sub_1E1AF5F0C();
      }

      v10 = v48;
      if (*(&v48 + 1))
      {
        sub_1E1AF764C();
        sub_1E1AF5F0C();
      }

      else
      {
        sub_1E1AF764C();
      }

      result = sub_1E1AF767C();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = *(v43 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      v17 = *(v3 + 48);
      if (((1 << v13) & v15) != 0)
      {
        break;
      }

LABEL_43:
      *(v43 + 8 * v14) = v15 | v16;
      v30 = (v17 + (v13 << 6));
      v31 = v45;
      v32 = v46;
      v33 = v48;
      v30[2] = v47;
      v30[3] = v33;
      *v30 = v31;
      v30[1] = v32;
      v34 = *(v3 + 16);
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v36;
LABEL_45:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    v40 = v4;
    v18 = ~v12;
    while (1)
    {
      v19 = (v17 + (v13 << 6));
      v20 = v19[1];
      v21 = v19[2];
      v22 = v19[3];
      v23 = v19[4];
      v25 = v19[5];
      v24 = v19[6];
      v26 = v19[7];
      if (v20)
      {
        if (!*(&v8 + 1))
        {
          goto LABEL_13;
        }

        result = *v19;
        if (*v19 != v8 || v20 != *(&v8 + 1))
        {
          result = sub_1E1AF74AC();
          if ((result & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      else if (*(&v8 + 1))
      {
        goto LABEL_13;
      }

      v28 = v21 == v42 && v22 == v41;
      if (v28 || (result = sub_1E1AF74AC(), (result & 1) != 0))
      {
        if (v25)
        {
          if (*(&v9 + 1))
          {
            v29 = v23 == v9 && v25 == *(&v9 + 1);
            if (v29 || (result = sub_1E1AF74AC(), (result & 1) != 0))
            {
LABEL_35:
              if (v26)
              {
                if (*(&v10 + 1))
                {
                  if (__PAIR128__(v26, v24) == v10 || (result = sub_1E1AF74AC(), (result & 1) != 0))
                  {
LABEL_41:
                    sub_1E13C5094(&v45);
                    v3 = v37;
                    v1 = v38;
                    v4 = v40;
                    goto LABEL_45;
                  }
                }
              }

              else if (!*(&v10 + 1))
              {
                goto LABEL_41;
              }
            }
          }
        }

        else if (!*(&v9 + 1))
        {
          goto LABEL_35;
        }
      }

LABEL_13:
      v13 = (v13 + 1) & v18;
      v14 = v13 >> 6;
      v15 = *(v43 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if ((v15 & (1 << v13)) == 0)
      {
        v3 = v37;
        v1 = v38;
        v17 = *(v37 + 48);
        v4 = v40;
        goto LABEL_43;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E1498818(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4770);
    v3 = sub_1E1AF6F9C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1E1AF762C();

      sub_1E1AF5F0C();
      result = sub_1E1AF767C();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1E1AF74AC();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1E1498980(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4768);
    v3 = sub_1E1AF6F9C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v10 = *(a1 + 32 + 8 * v4);
      result = sub_1E1AF761C();
      v12 = result & v6;
      v13 = (result & v6) >> 6;
      v14 = *(v5 + 8 * v13);
      v15 = 1 << (result & v6);
      v16 = *(v3 + 48);
      if ((v15 & v14) != 0)
      {
        while (*(v16 + 8 * v12) != v10)
        {
          v12 = (v12 + 1) & v6;
          v13 = v12 >> 6;
          v14 = *(v5 + 8 * (v12 >> 6));
          v15 = 1 << v12;
          if (((1 << v12) & v14) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v13) = v15 | v14;
        *(v16 + 8 * v12) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E1498AA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E1498AF8(void *a1, uint64_t a2)
{
  v241 = a2;
  v3 = sub_1E1AEF59C();
  v222 = *(v3 - 8);
  v223 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v228 = &v200 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v242 = &v200 - v6;
  v235 = sub_1E1AEF65C();
  v245 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v227 = &v200 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB47C8);
  v239 = *(v8 - 8);
  v240 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v238 = &v200 - v9;
  v10 = sub_1E1AEFCCC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v220 = &v200 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v221 = &v200 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v234 = &v200 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v217 = &v200 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v237 = &v200 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v244 = &v200 - v22;
  v23 = sub_1E1AEFEAC();
  v232 = *(v23 - 8);
  v233 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v231 = &v200 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v213 = &v200 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v226 = &v200 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v224 = &v200 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v200 - v32;
  v34 = sub_1E1AF3E1C();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v219 = &v200 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v218 = &v200 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v225 = &v200 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v243 = &v200 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v230 = &v200 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v229 = &v200 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v200 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v200 - v51;
  v53 = MEMORY[0x1E69E7CC0];
  v265 = MEMORY[0x1E69E7CC0];
  v54 = a1[45];
  v248 = v11;
  v249 = v55;
  v246 = v35;
  v247 = v10;
  v236 = a1;
  if (v54)
  {
    v56 = *(v54 + 16);

    v57._countAndFlagsBits = 0xD000000000000019;
    v57._object = 0x80000001E1B60E10;
    v58._countAndFlagsBits = 0;
    v58._object = 0xE000000000000000;
    v59 = localizedString(_:comment:)(v57, v58);
    object = v59._object;
    countAndFlagsBits = v59._countAndFlagsBits;
    v216 = sub_1E1926F88(0xD000000000000013, 0x80000001E1B567A0, 20.0, 20.0);

    sub_1E1AF3DFC();
    type metadata accessor for ShareSheetAction();
    v60 = swift_allocObject();
    *(v60 + OBJC_IVAR____TtC11AppStoreKit16ShareSheetAction_data) = v56;
    *(v60 + OBJC_IVAR____TtC11AppStoreKit16ShareSheetAction_activities) = v53;
    *(v60 + OBJC_IVAR____TtC11AppStoreKit16ShareSheetAction_shareSheetStyle) = 0;
    v264 = 0;
    v262 = 0u;
    v263 = 0u;
    (*(v35 + 16))(v49, v52, v34);
    v61 = sub_1E1AF46DC();
    (*(*(v61 - 8) + 56))(v33, 1, 1, v61);
    v62 = (v60 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
    *v62 = 0u;
    v62[1] = 0u;
    sub_1E134FD1C(&v262, &v256, &unk_1ECEB5670);
    if (*(&v257 + 1))
    {
      v259 = v256;
      v260 = v257;
      v261 = v258;
    }

    else
    {
      v63 = v231;
      sub_1E1AEFE9C();
      v64 = sub_1E1AEFE7C();
      v66 = v65;
      (*(v232 + 8))(v63, v233);
      *&v252 = v64;
      *(&v252 + 1) = v66;
      v35 = v246;
      sub_1E1AF6F6C();
      sub_1E1308058(&v256, &unk_1ECEB5670);
    }

    sub_1E1308058(&v262, &unk_1ECEB5670);
    v67 = v249;
    (*(v35 + 8))(v52, v249);
    v68 = v60 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
    v69 = v260;
    *v68 = v259;
    *(v68 + 1) = v69;
    *(v68 + 4) = v261;
    sub_1E134B7C8(v33, v60 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
    v70 = object;
    v60[2] = countAndFlagsBits;
    v60[3] = v70;
    v60[4] = v216;
    v60[5] = 0;
    (*(v35 + 32))(v60 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v49, v67);

    MEMORY[0x1E68FEF20](v71);
    if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    sub_1E1AF62AC();

    v53 = v265;
    v11 = v248;
    a1 = v236;
  }

  v72 = a1[33];
  if (v72)
  {
    v73 = type metadata accessor for FlowAction();
    v74 = swift_dynamicCastClass();
    v75 = v249;
    if (v74)
    {
      v76 = v74;
      v211 = v73;
      object = v72;

      v77._countAndFlagsBits = 0xD00000000000002BLL;
      v77._object = 0x80000001E1B60DE0;
      v78._countAndFlagsBits = 0;
      v78._object = 0xE000000000000000;
      v79 = localizedString(_:comment:)(v77, v78);
      countAndFlagsBits = v79._object;
      v216 = v79._countAndFlagsBits;
      v80 = sub_1E1926F88(1918989427, 0xE400000000000000, 20.0, 20.0);
      v81 = (v76 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageData);
      swift_beginAccess();
      v82 = v81[3];
      v212 = v80;
      if (v82)
      {
        v83 = v81[4];
        v84 = __swift_project_boxed_opaque_existential_1Tm(v81, v82);
        v85 = *(v82 - 8);
        v86 = MEMORY[0x1EEE9AC00](v84);
        v88 = &v200 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v85 + 16))(v88, v86);
        (*(v83 + 8))(&v262, v82, v83);
        (*(v85 + 8))(v88, v82);
      }

      else
      {
        v262 = 0u;
        v263 = 0u;
      }

      v89 = v224;
      v90 = v229;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2DF0);
      v91 = type metadata accessor for ShelfBasedProductPage();
      if (swift_dynamicCast())
      {
        if (v256)
        {
          *&v259 = v256;
LABEL_19:

          v224 = v259;
          sub_1E1AF3DFC();
          type metadata accessor for ShelfBasedPageScrollAction();
          v92 = swift_allocObject();
          v93 = &v92[OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_shelfId];
          strcpy(&v92[OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_shelfId], "productRatings");
          v93[15] = -18;
          *&v92[OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_purchasedShelfId] = xmmword_1E1B0E390;
          *&v92[OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_notPurchasedShelfId] = xmmword_1E1B0E390;
          v94 = &v92[OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_adamId];
          *v94 = 0;
          *(v94 + 1) = 0;
          v95 = &v92[OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_index];
          *v95 = 0;
          v95[8] = 1;
          v92[OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_clicksOnScroll] = 1;
          v96 = *(v246 + 16);
          v264 = 0;
          v262 = 0u;
          v263 = 0u;
          v97 = v230;
          v209 = v96;
          v96(v230, v90, v75);
          v98 = sub_1E1AF46DC();
          v99 = *(v98 - 8);
          v207 = *(v99 + 56);
          v208 = v98;
          v206 = v99 + 56;
          v207(v89, 1, 1);
          v100 = &v92[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
          *v100 = 0u;
          *(v100 + 1) = 0u;
          sub_1E134FD1C(&v262, &v256, &unk_1ECEB5670);
          if (*(&v257 + 1))
          {
            v259 = v256;
            v260 = v257;
            v261 = v258;
          }

          else
          {
            v101 = v231;
            sub_1E1AEFE9C();
            v102 = sub_1E1AEFE7C();
            v104 = v103;
            v105 = v101;
            v90 = v229;
            (*(v232 + 8))(v105, v233);
            *&v252 = v102;
            *(&v252 + 1) = v104;
            v97 = v230;
            sub_1E1AF6F6C();
            sub_1E1308058(&v256, &unk_1ECEB5670);
          }

          sub_1E1308058(&v262, &unk_1ECEB5670);
          v106 = v246;
          v107 = *(v246 + 8);
          v229 = (v246 + 8);
          v210 = v107;
          v107(v90, v75);
          v108 = &v92[OBJC_IVAR____TtC11AppStoreKit6Action_id];
          v109 = v260;
          *v108 = v259;
          *(v108 + 1) = v109;
          *(v108 + 4) = v261;
          sub_1E134B7C8(v89, &v92[OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics]);
          v110 = countAndFlagsBits;
          *(v92 + 2) = v216;
          *(v92 + 3) = v110;
          *(v92 + 4) = 0;
          *(v92 + 5) = 0;
          v204 = *(v106 + 32);
          v205 = v106 + 32;
          v204(&v92[OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics], v97, v75);
          v111 = v224;
          if (v224)
          {

            v112 = _s11AppStoreKit21ShelfBasedProductPageC4from04fullF13FetchedActionACSgAF_AA0K0CtcfC_0(v111, v92);
          }

          else
          {

            v112 = 0;
          }

          v264 = 0;
          v262 = 0u;
          v263 = 0u;
          v202 = *(v76 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_page);
          sub_1E134FD1C(v76 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageUrl, v244, &unk_1ECEB4B60);
          v113 = *(v76 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerUrl + 8);
          v201 = *(v76 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerUrl);
          if (!v112)
          {
            v91 = 0;
            v255[2] = 0;
            v255[1] = 0;
          }

          v255[0] = v112;
          v255[3] = v91;
          v114 = v209;
          v209(v243, (v76 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics), v75);
          v115 = v112;
          v116 = OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentationContext;
          swift_beginAccess();
          v117 = *(v76 + v116);
          v118 = OBJC_IVAR____TtC11AppStoreKit10FlowAction_origin;
          swift_beginAccess();
          v119 = *(v76 + v118);
          v203 = *(v76 + 40);

          v230 = v115;

          v120 = sub_1E1AF4D0C();
          v122 = v121;
          v123 = swift_allocObject();
          *(v123 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
          v124 = v123 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageData;
          *v124 = 0u;
          *(v124 + 1) = 0u;
          *(v124 + 4) = 0;
          v125 = (v123 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_appStateController);
          *v125 = 0;
          v125[1] = 0;
          *(v123 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_page) = v202;
          sub_1E134FD1C(v244, v123 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageUrl, &unk_1ECEB4B60);
          v126 = (v123 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerUrl);
          *v126 = v201;
          v126[1] = v113;
          v127 = v123 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData;
          *v127 = xmmword_1E1B04490;
          v127[40] = 0;
          *(v127 + 3) = 0;
          *(v127 + 4) = 0;
          *(v127 + 2) = 0;
          *(v123 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentationContext) = v117;
          v128 = v249;
          *(v123 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_animationBehavior) = 1;
          *(v123 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_origin) = v119;
          v129 = (v123 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentation);
          *v129 = v120;
          v129[1] = v122;
          sub_1E134FD1C(&v262, &v259, &unk_1ECEB5670);
          v130 = v225;
          v114(v225, v243, v128);
          v131 = v226;
          (v207)(v226, 1, 1, v208);
          v132 = (v123 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
          *v132 = 0u;
          v132[1] = 0u;
          sub_1E134FD1C(&v259, &v252, &unk_1ECEB5670);
          if (*(&v253 + 1))
          {
            v256 = v252;
            v257 = v253;
            v258 = v254;
            v133 = v212;
          }

          else
          {
            v133 = v212;

            v134 = v231;
            sub_1E1AEFE9C();
            v135 = sub_1E1AEFE7C();
            v137 = v136;
            (*(v232 + 8))(v134, v233);
            v250 = v135;
            v251 = v137;
            sub_1E1AF6F6C();
            sub_1E1308058(&v252, &unk_1ECEB5670);
          }

          sub_1E1308058(&v259, &unk_1ECEB5670);
          v138 = v123 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
          v139 = v257;
          *v138 = v256;
          *(v138 + 1) = v139;
          *(v138 + 4) = v258;
          sub_1E134B7C8(v131, v123 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
          v140 = countAndFlagsBits;
          v123[2] = v216;
          v123[3] = v140;
          v141 = v203;
          v142 = v204;
          v123[4] = v133;
          v123[5] = v141;
          v142(v123 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v130, v128);

          FlowAction.setPageData(_:)(v255);

          v210(v243, v128);
          sub_1E1308058(v244, &unk_1ECEB4B60);
          sub_1E1308058(&v262, &unk_1ECEB5670);
          sub_1E1308058(v255, &qword_1ECEB2DF0);

          MEMORY[0x1E68FEF20](v143);
          if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E1AF625C();
          }

          sub_1E1AF62AC();

          v53 = v265;
          v11 = v248;
          goto LABEL_33;
        }
      }

      else
      {
        *&v256 = 0;
      }

      *(&v263 + 1) = MEMORY[0x1E69E7CA8] + 8;
      if ((swift_dynamicCast() & 1) == 0)
      {
        *&v259 = 0;
      }

      goto LABEL_19;
    }
  }

LABEL_33:
  if (qword_1ECEB1470 != -1)
  {
    swift_once();
  }

  v144 = v238;
  sub_1E1AF52EC();
  v145 = v237;
  v146 = v240;
  sub_1E1AF531C();
  (*(v239 + 8))(v144, v146);
  v147 = *(v11 + 48);
  v148 = v247;
  v149 = v147(v145, 1, v247);
  v150 = v245;
  v151 = v242;
  if (v149 == 1)
  {
    sub_1E1308058(v145, &unk_1ECEB4B60);
  }

  else
  {
    v152 = v234;
    v243 = *(v11 + 32);
    v244 = v11 + 32;
    (v243)(v234, v145, v148);
    sub_1E1AEF5EC();
    v153 = v235;
    if ((*(v150 + 48))(v151, 1, v235) == 1)
    {
      (*(v11 + 8))(v152, v148);
      sub_1E1308058(v151, &qword_1ECEB39F0);
    }

    else
    {
      (*(v150 + 32))(v227, v151, v153);
      v154 = v236;

      v155 = v228;
      sub_1E1AEF56C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2708);
      v156 = v222;
      v157 = (*(v222 + 80) + 32) & ~*(v222 + 80);
      v158 = swift_allocObject();
      *(v158 + 16) = xmmword_1E1B02CC0;
      v159 = v158 + v157;
      v160 = v223;
      (*(v156 + 16))(v159, v155, v223);
      sub_1E1AEF5DC();
      v161 = v217;
      sub_1E1AEF5FC();
      v162 = v247;
      if ((v147)(v161, 1) == 1)
      {
        (*(v156 + 8))(v228, v160);
        (*(v245 + 8))(v227, v235);
        (*(v248 + 8))(v234, v162);
        sub_1E1308058(v161, &unk_1ECEB4B60);
      }

      else
      {
        v163 = v221;
        (v243)(v221, v161, v162);
        v164._countAndFlagsBits = 0xD000000000000020;
        v164._object = 0x80000001E1B60DB0;
        v165._countAndFlagsBits = 0;
        v165._object = 0xE000000000000000;
        v166 = localizedString(_:comment:)(v164, v165);
        v242 = v166._object;
        v243 = v166._countAndFlagsBits;
        v167 = sub_1E1926F88(0xD000000000000011, 0x80000001E1B56800, 20.0, 20.0);
        v168 = v154[3];
        v239 = v154[2];
        v169 = *(v248 + 16);
        v170 = v220;
        v169(v220, v163, v162);
        v171 = v154[13];
        v172 = v154[6];
        v173 = v154[14];
        v174 = v154[15];
        v240 = v154[12];
        v241 = v173;

        v244 = v167;

        v175 = v218;
        sub_1E1AF3DFC();
        type metadata accessor for WriteReviewAction();
        v176 = swift_allocObject();
        v177 = &v176[OBJC_IVAR____TtC11AppStoreKit17WriteReviewAction_adamId];
        *v177 = v239;
        *(v177 + 1) = v168;
        v178 = v247;
        v169(&v176[OBJC_IVAR____TtC11AppStoreKit17WriteReviewAction_url], v170, v247);
        v179 = &v176[OBJC_IVAR____TtC11AppStoreKit17WriteReviewAction_appName];
        *v179 = v240;
        v179[1] = v171;
        *&v176[OBJC_IVAR____TtC11AppStoreKit17WriteReviewAction_appIcon] = v172;
        v180 = &v176[OBJC_IVAR____TtC11AppStoreKit17WriteReviewAction_itemDescription];
        *v180 = v241;
        *(v180 + 1) = v174;
        v264 = 0;
        v262 = 0u;
        v263 = 0u;
        v181 = v175;
        v182 = v249;
        (*(v246 + 16))(v219, v181, v249);
        v183 = sub_1E1AF46DC();
        v184 = v213;
        (*(*(v183 - 8) + 56))(v213, 1, 1, v183);
        v185 = &v176[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
        *v185 = 0u;
        *(v185 + 1) = 0u;
        sub_1E134FD1C(&v262, &v256, &unk_1ECEB5670);
        if (*(&v257 + 1))
        {
          v259 = v256;
          v260 = v257;
          v261 = v258;
        }

        else
        {

          v186 = v231;
          sub_1E1AEFE9C();
          v187 = sub_1E1AEFE7C();
          v189 = v188;
          (*(v232 + 8))(v186, v233);
          *&v252 = v187;
          *(&v252 + 1) = v189;
          v184 = v213;
          sub_1E1AF6F6C();
          sub_1E1308058(&v256, &unk_1ECEB5670);
        }

        v190 = v222;
        sub_1E1308058(&v262, &unk_1ECEB5670);
        v191 = v246;
        (*(v246 + 8))(v218, v182);
        v192 = *(v248 + 8);
        v192(v220, v178);
        v193 = &v176[OBJC_IVAR____TtC11AppStoreKit6Action_id];
        v194 = v260;
        *v193 = v259;
        *(v193 + 1) = v194;
        *(v193 + 4) = v261;
        sub_1E134B7C8(v184, &v176[OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics]);
        v195 = v242;
        *(v176 + 2) = v243;
        *(v176 + 3) = v195;
        *(v176 + 4) = v244;
        *(v176 + 5) = 0;
        (*(v191 + 32))(&v176[OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics], v219, v182);

        MEMORY[0x1E68FEF20](v196);
        v197 = v223;
        if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E1AF625C();
          v197 = v223;
        }

        sub_1E1AF62AC();

        v192(v221, v178);
        (*(v190 + 8))(v228, v197);
        (*(v245 + 8))(v227, v235);
        v192(v234, v178);
        v53 = v265;
      }
    }
  }

  if (v53 >> 62)
  {
    if (sub_1E1AF71CC())
    {
      goto LABEL_49;
    }
  }

  else if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_49:
    type metadata accessor for FlowPreviewActionsConfiguration();
    v198 = swift_allocObject();
    *(v198 + 48) = 0;
    *(v198 + 56) = 1;
    *(v198 + 24) = 0;
    *(v198 + 32) = 0;
    *(v198 + 16) = v53;
    *(v198 + 40) = 1;
    swift_beginAccess();
    result = v198;
    *(v198 + 48) = 0;
    *(v198 + 56) = 1;
    return result;
  }

  return 0;
}

uint64_t MixedMediaLockupLayout.LockupPosition.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

double sub_1E149A69C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4000);
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4800);
  v1 = swift_allocObject();
  *(v1 + 16) = KeyPath;
  result = 2.0;
  *(v1 + 24) = xmmword_1E1B0E3A0;
  qword_1EE2158A0 = v1;
  return result;
}

__n128 MixedMediaLockupLayout.init(metrics:lockupView:media:tagline:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1[4];
  *(a5 + 200) = a1[5];
  v9 = a1[7];
  *(a5 + 216) = a1[6];
  *(a5 + 232) = v9;
  *(a5 + 248) = a1[8];
  v10 = *a1;
  *(a5 + 136) = a1[1];
  v11 = a1[3];
  *(a5 + 152) = a1[2];
  *(a5 + 168) = v11;
  *(a5 + 184) = v8;
  *(a5 + 120) = v10;
  sub_1E1308EC0(a2, a5);
  sub_1E1308EC0(a3, a5 + 40);
  result = *a4;
  v13 = *(a4 + 16);
  *(a5 + 80) = *a4;
  *(a5 + 96) = v13;
  *(a5 + 112) = *(a4 + 32);
  return result;
}

uint64_t MixedMediaLockupLayout.Metrics.init(lockupPosition:taglineNumberOfLines:taglineSpace:taglineFont:alwaysIncludeTaglineSpace:verticalSpacing:layoutMargins:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, __int128 *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  *a7 = *a1;
  *(a7 + 8) = a2;
  sub_1E1308EC0(a3, a7 + 16);
  *(a7 + 56) = a4;
  *(a7 + 64) = a5;
  result = sub_1E1308EC0(a6, a7 + 72);
  *(a7 + 112) = a8;
  *(a7 + 120) = a9;
  *(a7 + 128) = a10;
  *(a7 + 136) = a11;
  return result;
}

uint64_t MixedMediaLockupLayout.Metrics.taglineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 16);

  return sub_1E1308EC0(a1, v1 + 16);
}

uint64_t MixedMediaLockupLayout.Metrics.verticalSpacing.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 72);

  return sub_1E1308EC0(a1, v1 + 72);
}

void MixedMediaLockupLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = a3;
  v4[17] = a4;
}

double MixedMediaLockupLayout.measurements(fitting:in:)(uint64_t a1, double a2)
{
  sub_1E149AC60(a1, &v5);
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v5, v6);
    sub_1E1AF11CC();
    __swift_destroy_boxed_opaque_existential_1(&v5);
  }

  else
  {
    sub_1E1308058(&v5, &qword_1ECEB47D8);
  }

  sub_1E149B040(&v5);
  _VerticalFlowLayout.measurements(fitting:in:)(a2);

  return *(v2 + 240) + *(v2 + 256) + a2;
}

uint64_t sub_1E149AC60@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1E1AF745C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(v2 + 80, &v31, &qword_1ECEB2AD0);
  v10 = *(&v32 + 1);
  result = sub_1E1308058(&v31, &qword_1ECEB2AD0);
  if (!v10 && *(v2 + 184) != 1)
  {
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
    return result;
  }

  v12 = *(v2 + 128);
  if (qword_1EE1DA4E8 != -1)
  {
    swift_once();
  }

  *&v31 = qword_1EE2158A0;

  sub_1E1AF102C();
  Conditional<>.value(in:rounded:)(a1, v9);
  v14 = v13;
  v15 = v13;
  v16 = *(v7 + 8);
  v16(v9, v6);

  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v28 = a2;
  v17 = v12 * v14;
  if ((v12 * v14) >> 64 != v17 >> 63)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_1E134FD1C(v3 + 80, &v31, &qword_1ECEB2AD0);
  if (!*(&v32 + 1))
  {
    sub_1E1308058(&v31, &qword_1ECEB2AD0);
    goto LABEL_16;
  }

  v29 = v33;
  v27 = __swift_project_boxed_opaque_existential_1Tm(&v31, *(&v32 + 1));
  v30 = qword_1EE2158A0;

  sub_1E1AF102C();
  Conditional<>.value(in:rounded:)(a1, v9);
  v19 = v18;
  v20 = v18;
  v16(v9, v6);

  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_24;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = v12 * v19;
  if ((v12 * v19) >> 64 != result >> 63)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  sub_1E1AF146C();
  __swift_destroy_boxed_opaque_existential_1(&v31);
LABEL_16:
  v21 = *(v3 + 120);
  v29 = *(v3 + 176);
  sub_1E1300B24(v3 + 136, &v32 + 8);
  LOBYTE(v31) = v21;
  *(&v31 + 1) = v17;
  *&v32 = v29;
  v22 = v28;
  v28[3] = &type metadata for LineCountTextLayout;
  v22[4] = sub_1E149BD94();
  v22[5] = sub_1E149BDE8();
  v23 = swift_allocObject();
  *v22 = v23;
  sub_1E134FD1C(v3 + 80, (v23 + 5), &qword_1ECEB2AD0);
  v24 = v32;
  v23[1] = v31;
  v23[2] = v24;
  v25 = v34;
  v23[3] = v33;
  v23[4] = v25;
  v26 = v29;

  return v26;
}

uint64_t sub_1E149B040@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v62 = 1;
  v63 = MEMORY[0x1E69E7CC0];
  v4 = MEMORY[0x1E69E63B0];
  v5 = MEMORY[0x1E69ABBA8];
  *(&v48 + 1) = MEMORY[0x1E69E63B0];
  *&v49 = MEMORY[0x1E69ABBA8];
  *&v47 = 0;
  *(&v39 + 1) = MEMORY[0x1E69E63B0];
  *&v40 = MEMORY[0x1E69ABBA8];
  *&v38 = 0;
  sub_1E1300B24(v1, v58);
  sub_1E1300B24(&v47, &v60);
  sub_1E134FD1C(&v38, v61, &unk_1ECEB47F0);
  v59 = 0;
  v61[5] = 0;
  sub_1E1308058(&v38, &unk_1ECEB47F0);
  __swift_destroy_boxed_opaque_existential_1(&v47);
  v57[3] = v4;
  v57[4] = v5;
  v56[4] = v5;
  v57[0] = 0;
  v56[3] = v4;
  v56[0] = 0;
  if ((*(v1 + 120) & 1) == 0)
  {
    sub_1E149BCE4(v58, &v47);
    v7 = sub_1E172D4E0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    v10 = v9 + 1;
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1E172D4E0((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v10;
    v11 = &v7[136 * v9];
    *(v11 + 2) = v47;
    v12 = v48;
    v13 = v49;
    v14 = v51;
    *(v11 + 5) = v50;
    *(v11 + 6) = v14;
    *(v11 + 3) = v12;
    *(v11 + 4) = v13;
    v15 = v52;
    v16 = v53;
    v17 = v54;
    *(v11 + 20) = v55;
    *(v11 + 8) = v16;
    *(v11 + 9) = v17;
    *(v11 + 7) = v15;
    __swift_assign_boxed_opaque_existential_1(v57, (v2 + 192));
    sub_1E1300B24(v56, &v52 + 8);
    sub_1E1300B24(v2 + 40, &v47);
    sub_1E1300B24(v57, &v50);
    WORD4(v49) = 0;
    v55 = 0;
    v18 = *(v7 + 2);
    if (!v18)
    {
      __break(1u);
      goto LABEL_20;
    }

    sub_1E149BCE4(&v47, &v38);
    v19 = *(v7 + 2);
    if (v19)
    {
      v63 = v7;
      if (v19 < *(v7 + 3) >> 1)
      {
LABEL_10:
        sub_1E14F3120(1uLL, 1, 1, &v38);
        sub_1E149BD40(&v47);
        sub_1E149BD40(v58);
        v20 = v62;
        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    v7 = sub_1E172D4E0(1, v19 + 1, 1, v7);
    v63 = v7;
    goto LABEL_10;
  }

  sub_1E134FD1C(v1 + 80, &v47, &qword_1ECEB2AD0);
  if (!*(&v48 + 1))
  {
    sub_1E1308058(&v47, &qword_1ECEB2AD0);
LABEL_12:
    if (*(v2 + 184) != 1)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1Tm(&v47, *(&v48 + 1));
  v6 = sub_1E1AF112C();
  __swift_destroy_boxed_opaque_existential_1(&v47);
  if ((v6 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  __swift_assign_boxed_opaque_existential_1(v57, (v2 + 192));
LABEL_14:
  __swift_assign_boxed_opaque_existential_1(v56, (v2 + 192));
  sub_1E1300B24(v56, &v52 + 8);
  sub_1E1300B24(v2 + 40, &v47);
  sub_1E1300B24(v57, &v50);
  WORD4(v49) = 0;
  v55 = 0;
  sub_1E149BCE4(&v47, &v38);
  v7 = sub_1E172D4E0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v7 + 2);
  v18 = *(v7 + 3);
  v10 = v2 + 1;
  if (v2 >= v18 >> 1)
  {
LABEL_20:
    v7 = sub_1E172D4E0((v18 > 1), v10, 1, v7);
  }

  sub_1E149BD40(&v47);
  *(v7 + 2) = v10;
  v21 = &v7[136 * v2];
  v22 = v42;
  v23 = v40;
  v24 = v39;
  *(v21 + 5) = v41;
  *(v21 + 6) = v22;
  *(v21 + 3) = v24;
  *(v21 + 4) = v23;
  v25 = v45;
  v26 = v44;
  v27 = v43;
  *(v21 + 20) = v46;
  *(v21 + 8) = v26;
  *(v21 + 9) = v25;
  *(v21 + 7) = v27;
  *(v21 + 2) = v38;
  sub_1E149BCE4(v58, &v47);
  v28 = *(v7 + 3);
  v29 = v2 + 2;
  if (v29 > (v28 >> 1))
  {
    v7 = sub_1E172D4E0((v28 > 1), v29, 1, v7);
  }

  sub_1E149BD40(v58);
  *(v7 + 2) = v29;
  v30 = &v7[136 * v10];
  v31 = v51;
  v33 = v48;
  v32 = v49;
  *(v30 + 5) = v50;
  *(v30 + 6) = v31;
  *(v30 + 3) = v33;
  *(v30 + 4) = v32;
  v35 = v53;
  v34 = v54;
  v36 = v52;
  *(v30 + 20) = v55;
  *(v30 + 8) = v35;
  *(v30 + 9) = v34;
  *(v30 + 7) = v36;
  *(v30 + 2) = v47;
  v20 = 1;
LABEL_18:
  *a1 = v20;
  *(a1 + 8) = v7;
  __swift_destroy_boxed_opaque_existential_1(v56);
  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t MixedMediaLockupLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB47E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29 - v6;
  sub_1E1AF6B0C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_1E149AC60(a1, v36);
  sub_1E134FD1C(v36, &v33, &qword_1ECEB47D8);
  if (v35)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v33, v35);
    sub_1E1AF11CC();
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_1(&v33);
  }

  else
  {
    sub_1E1308058(&v33, &qword_1ECEB47D8);
    v17 = 0.0;
  }

  v18 = *(v2 + 120);
  v37.origin.x = v9;
  v37.origin.y = v11;
  v37.size.width = v13;
  v37.size.height = v15;
  MinX = CGRectGetMinX(v37);
  v19 = v9;
  v20 = v11;
  v21 = v13;
  v22 = v15;
  if (v18)
  {
    Width = CGRectGetWidth(*&v19);
    v38.origin.x = v9;
    v38.origin.y = v11;
    v38.size.width = v13;
    v38.size.height = v15;
    Height = CGRectGetHeight(v38);
    v39.origin.x = v9;
    v39.origin.y = v11;
    v39.size.width = v13;
    v39.size.height = v15;
    CGRectGetMinX(v39);
    v40.origin.x = v9;
    v40.origin.y = v11;
    v40.size.width = v13;
    v40.size.height = v15;
    CGRectGetMinY(v40);
    MinY = v17;
  }

  else
  {
    MinY = CGRectGetMinY(*&v19);
    v41.origin.x = v9;
    v41.origin.y = v11;
    v41.size.width = v13;
    v41.size.height = v15;
    Width = CGRectGetWidth(v41);
    v42.origin.x = v9;
    v42.origin.y = v11;
    v42.size.width = v13;
    v42.size.height = v15;
    Height = CGRectGetHeight(v42);
    v43.origin.x = v9;
    v43.origin.y = v11;
    v43.size.width = v13;
    v43.size.height = v15;
    CGRectGetMinX(v43);
    v44.origin.x = v9;
    v44.origin.y = v11;
    v44.size.width = v13;
    v44.size.height = v15;
    CGRectGetMaxY(v44);
  }

  v45.origin.x = v9;
  v45.origin.y = v11;
  v45.size.width = v13;
  v45.size.height = v15;
  CGRectGetWidth(v45);
  sub_1E149B040(&v33);
  v24 = v33;
  v25 = v34;
  sub_1E134FD1C(v36, &v33, &qword_1ECEB47D8);
  if (v35)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v33, v35);
    sub_1E1AF1B7C();
    v26 = sub_1E1AF111C();
    (*(*(v26 - 8) + 56))(v7, 0, 1, v26);
    sub_1E1308058(v7, &qword_1ECEB47E0);
    __swift_destroy_boxed_opaque_existential_1(&v33);
  }

  else
  {
    sub_1E1308058(&v33, &qword_1ECEB47D8);
    v27 = sub_1E1AF111C();
    (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
    sub_1E1308058(v7, &qword_1ECEB47E0);
  }

  LOBYTE(v33) = v24;
  v34 = v25;
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(a2, MinX, MinY, Width, Height - v17);
  sub_1E1308058(v36, &qword_1ECEB47D8);
}

unint64_t sub_1E149B8C8()
{
  result = qword_1ECEB47E8;
  if (!qword_1ECEB47E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB47E8);
  }

  return result;
}

uint64_t sub_1E149B924(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
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

uint64_t sub_1E149B96C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E149BA0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E149BA54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

unint64_t sub_1E149BD94()
{
  result = qword_1EE1DCDE8;
  if (!qword_1EE1DCDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DCDE8);
  }

  return result;
}

unint64_t sub_1E149BDE8()
{
  result = qword_1EE1DCDE0;
  if (!qword_1EE1DCDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DCDE0);
  }

  return result;
}

uint64_t Gate.Condition.__allocating_init(initialValue:)(char a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = a1;
  return v2;
}

uint64_t Gate.Condition.init(initialValue:)(char a1)
{
  swift_weakInit();
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
  return v1;
}

uint64_t sub_1E149BEF8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
}

uint64_t sub_1E149BF58()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1E149BFA4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_1E149C048(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E149DEE8();
  }

  return result;
}

uint64_t sub_1E149C0BC(char a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E149DEE8();
  }

  return result;
}

uint64_t (*sub_1E149C12C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E149C180;
}

uint64_t sub_1E149C180(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1E149DEE8();
    }
  }

  return result;
}

uint64_t Gate.name.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Gate.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t Gate.__allocating_init(queue:passingDelay:)(uint64_t a1, double a2)
{
  v4 = swift_allocObject();
  Gate.init(queue:passingDelay:)(a1, a2);
  return v4;
}

uint64_t Gate.init(queue:passingDelay:)(uint64_t a1, double a2)
{
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CE0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v2 + 48) = v5;
  *(v2 + 56) = v6;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  v7 = sub_1E1AF470C();
  v8 = MEMORY[0x1E69AB218];
  *(v2 + 104) = v7;
  *(v2 + 112) = v8;
  __swift_allocate_boxed_opaque_existential_0((v2 + 80));
  sub_1E1AF46FC();
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t Gate.add(condition:)()
{
  swift_beginAccess();
  swift_weakAssign();
  swift_beginAccess();

  MEMORY[0x1E68FEF20](v1);
  if (*((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1E1AF625C();
  }

  sub_1E1AF62AC();
  return swift_endAccess();
}

Swift::Void __swiftcall Gate.invalidate()()
{
  v1 = v0;
  v2 = *(v0 + 48);
  os_unfair_lock_lock(v2 + 4);
  sub_1E149E254();
  os_unfair_lock_unlock(v2 + 4);
  swift_beginAccess();
  v3 = *(v0 + 56);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v1[7] = MEMORY[0x1E69E7CC0];

    swift_beginAccess();
    v6 = v1[15];
    v7 = v1[16];
    v1[15] = 0;
    v1[16] = 0;
    sub_1E1361B18(v6, v7);
    return;
  }

  v4 = sub_1E1AF71CC();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E68FFD80](v5, v3);
      }

      else
      {
      }

      ++v5;
      swift_beginAccess();
      swift_weakAssign();
    }

    while (v4 != v5);

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1E149C650(uint64_t a1)
{
  if (*(a1 + 72))
  {

    sub_1E1AF329C();
  }

  *(a1 + 72) = 0;
}

uint64_t Gate.printUnsatisfiedConditions.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

BOOL Gate.isPassing.getter()
{
  v2 = v0;
  i = *v0;
  v4 = sub_1E1AF591C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v2 + 64) == 1)
  {
    v25 = v7;
    v26 = v5;
    swift_beginAccess();
    v1 = *(v2 + 56);
    v27 = MEMORY[0x1E69E7CC0];
    if (v1 >> 62)
    {
      goto LABEL_39;
    }

    v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v24 = i;

    if (v8)
    {
      v23 = v4;
      v9 = 0;
      v4 = v1 & 0xC000000000000001;
      i = v1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v4)
        {
          v10 = MEMORY[0x1E68FFD80](v9, v1);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_15:
            __break(1u);
            goto LABEL_16;
          }
        }

        else
        {
          if (v9 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            v8 = sub_1E1AF71CC();
            goto LABEL_4;
          }

          v10 = *(v1 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_15;
          }
        }

        swift_beginAccess();
        if (*(v10 + 40))
        {
        }

        else
        {
          sub_1E1AF70BC();
          sub_1E1AF70FC();
          sub_1E1AF710C();
          sub_1E1AF70CC();
        }

        ++v9;
        if (v11 == v8)
        {
LABEL_28:
          v14 = v27;
          v4 = v23;
          goto LABEL_31;
        }
      }
    }

    v14 = MEMORY[0x1E69E7CC0];
LABEL_31:

    v27 = v14;
    v28 = sub_1E149CD28;
    v29 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4810);
    sub_1E149E27C();
    v23 = sub_1E1AF5D6C();
    v17 = v16;

    if (qword_1EE1E35B0 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v4, qword_1EE216158);
    v19 = v25;
    v20 = v26;
    (*(v26 + 16))(v25, v18, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B05090;
    v30 = v24;
    v27 = v2;

    sub_1E1AF38BC();
    sub_1E13E44F8(&v27);
    sub_1E1AF382C();
    v30 = MEMORY[0x1E69E6158];
    v27 = v23;
    v28 = v17;

    sub_1E1AF38BC();
    sub_1E13E44F8(&v27);
    sub_1E1AF5F1C();

    sub_1E1AF382C();
    sub_1E1AF549C();

    (*(v20 + 8))(v19, v4);
    if (v14 < 0 || (v14 & 0x4000000000000000) != 0)
    {
      v21 = sub_1E1AF71CC();
    }

    else
    {
      v21 = *(v14 + 16);
    }

    return v21 == 0;
  }

  else
  {
LABEL_16:
    swift_beginAccess();
    v12 = *(v2 + 56);
    v4 = v12 & 0xFFFFFFFFFFFFFF8;
    if (v12 >> 62)
    {
      v13 = sub_1E1AF71CC();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v13 != i; ++i)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v2 = MEMORY[0x1E68FFD80](i, v12);
        if (__OFADD__(i, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v2 = *(v12 + 8 * i + 32);

        if (__OFADD__(i, 1))
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      swift_beginAccess();
      v1 = *(v2 + 40);

      if ((v1 & 1) == 0)
      {

        return 0;
      }
    }

    return 1;
  }
}

uint64_t sub_1E149CD28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  if (*(v3 + 32))
  {
    v4 = *(v3 + 24);
    v5 = *(v3 + 32);
  }

  else
  {
    type metadata accessor for Gate.Condition();

    v4 = sub_1E1AF5E8C();
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_1E149CDB4@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  v3 = *(result + 72);
  if (v3)
  {

    sub_1E1AF329C();
  }

  *a2 = v3 == 0;
  return result;
}

void sub_1E149CE0C(uint64_t a1)
{
  if (Gate.isPassing.getter())
  {
    swift_beginAccess();
    v2 = *(a1 + 120);
    if (v2)
    {
      v3 = *(a1 + 128);
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
      swift_beginAccess();
      sub_1E1300B24(a1 + 80, v4);
      __swift_project_boxed_opaque_existential_1Tm(v4, v4[3]);
      sub_1E1AF3FAC();
      sub_1E1361B18(v2, v3);
      __swift_destroy_boxed_opaque_existential_1(v4);
    }

    Gate.invalidate()();
  }
}

uint64_t Gate.observerScheduler.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);
  sub_1E1308EC0(a1, v1 + 80);
  return swift_endAccess();
}

uint64_t sub_1E149CFC8@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 120);
  v5 = *(v3 + 128);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E137AFA8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1E1300E34(v4);
}

uint64_t sub_1E149D05C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E137AFA0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 120);
  v9 = *(v7 + 128);
  *(v7 + 120) = v6;
  *(v7 + 128) = v5;
  sub_1E1300E34(v3);
  return sub_1E1361B18(v8, v9);
}

uint64_t Gate.observer.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
  sub_1E1300E34(v1);
  return v1;
}

uint64_t Gate.observer.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 120);
  v6 = *(v2 + 128);
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return sub_1E1361B18(v5, v6);
}

uint64_t Gate.description.getter()
{
  swift_beginAccess();
  if (*(v0 + 40))
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 40);
  }

  else
  {
    v2 = 0xE900000000000073;
    v1 = 0x756F6D796E6F6E61;
  }

  sub_1E1AF5D9C();
  sub_1E149E32C();
  v3 = sub_1E1AF606C();
  v5 = v4;
  MEMORY[0x1E68FECA0](v1, v2);

  MEMORY[0x1E68FECA0](58, 0xE100000000000000);
  MEMORY[0x1E68FECA0](v3, v5);

  MEMORY[0x1E68FECA0](41, 0xE100000000000000);
  return 0x2865746147;
}

uint64_t Gate.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 80);
  sub_1E1361B18(*(v0 + 120), *(v0 + 128));
  return v0;
}

uint64_t Gate.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 80);
  sub_1E1361B18(*(v0 + 120), *(v0 + 128));

  return swift_deallocClassInstance();
}

uint64_t Gate.NotificationCondition.__allocating_init(satisifedBy:revertedBy:object:on:initialValue:)(void *a1, void *a2, uint64_t a3, void *a4, char a5)
{
  v10 = swift_allocObject();
  swift_weakInit();
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = a5;
  sub_1E13BFF54(a3, v32);
  v11 = v33;
  if (v33)
  {
    v12 = __swift_project_boxed_opaque_existential_1Tm(v32, v33);
    v13 = *(v11 - 8);
    v14 = MEMORY[0x1EEE9AC00](v12);
    v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);
    swift_retain_n();
    v17 = a1;
    v18 = sub_1E1AF748C();
    (*(v13 + 8))(v16, v11);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    swift_retain_n();
    v19 = a1;
    v18 = 0;
  }

  v20 = &selRef_updateAutoPlayVideoSettings;
  [a4 addObserver:v10 selector:sel_takeSatisfactionFrom_ name:a1 object:v18];

  swift_unknownObjectRelease();
  sub_1E13BFF54(a3, v32);
  v21 = v33;
  if (v33)
  {
    v22 = __swift_project_boxed_opaque_existential_1Tm(v32, v33);
    v23 = *(v21 - 8);
    v24 = MEMORY[0x1EEE9AC00](v22);
    v26 = v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26, v24);
    v27 = a2;
    v28 = sub_1E1AF748C();
    v29 = v26;
    v20 = &selRef_updateAutoPlayVideoSettings;
    (*(v23 + 8))(v29, v21);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    v30 = a2;
    v28 = 0;
  }

  [a4 v20[134]];

  swift_unknownObjectRelease();
  sub_1E13E44F8(a3);
  return v10;
}

uint64_t Gate.NotificationCondition.init(satisifedBy:revertedBy:object:on:initialValue:)(void *a1, void *a2, uint64_t a3, void *a4, char a5)
{
  swift_weakInit();
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = a5;
  sub_1E13BFF54(a3, v32);
  v11 = v33;
  if (v33)
  {
    v12 = __swift_project_boxed_opaque_existential_1Tm(v32, v33);
    v13 = *(v11 - 8);
    v14 = MEMORY[0x1EEE9AC00](v12);
    v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);
    swift_retain_n();
    v17 = a1;
    v18 = sub_1E1AF748C();
    (*(v13 + 8))(v16, v11);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    swift_retain_n();
    v19 = a1;
    v18 = 0;
  }

  v20 = &selRef_updateAutoPlayVideoSettings;
  [a4 addObserver:v5 selector:sel_takeSatisfactionFrom_ name:a1 object:v18];

  swift_unknownObjectRelease();
  sub_1E13BFF54(a3, v32);
  v21 = v33;
  if (v33)
  {
    v22 = __swift_project_boxed_opaque_existential_1Tm(v32, v33);
    v23 = *(v21 - 8);
    v24 = MEMORY[0x1EEE9AC00](v22);
    v26 = v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26, v24);
    v27 = a2;
    v28 = sub_1E1AF748C();
    v29 = v26;
    v20 = &selRef_updateAutoPlayVideoSettings;
    (*(v23 + 8))(v29, v21);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    v30 = a2;
    v28 = 0;
  }

  [a4 v20[134]];

  swift_unknownObjectRelease();
  sub_1E13E44F8(a3);
  return v5;
}

uint64_t sub_1E149DA0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_1E1AEF55C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E1AEF50C();
  swift_beginAccess();
  *(a1 + 40) = a4;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_1E149DEE8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t Gate.CountingCondition.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 48) = 0;
  swift_weakInit();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  return v0;
}

uint64_t Gate.CountingCondition.init()()
{
  *(v0 + 48) = 0;
  swift_weakInit();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  return v0;
}

uint64_t sub_1E149DC30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;
  swift_beginAccess();
  *(v3 + 40) = v2 == 0;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E149DEE8();
  }

  return result;
}

Swift::Void __swiftcall Gate.CountingCondition.increment()()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 48) = v3;
    v4 = v3 == 0;
    swift_beginAccess();
    *(v0 + 40) = v4;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1E149DEE8();
    }
  }
}

Swift::Bool __swiftcall Gate.CountingCondition.decrement()()
{
  v1 = v0;
  v2 = 1;
  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = v3 < 1;
  v5 = v3 - 1;
  if (!v4)
  {
    *(v1 + 48) = v5;
    v6 = v5 == 0;
    swift_beginAccess();
    *(v1 + 40) = v6;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1E149DEE8();
    }

    return *(v1 + 48) == 0;
  }

  return v2;
}

uint64_t sub_1E149DE44()
{
  swift_weakDestroy();

  return v0;
}

uint64_t sub_1E149DE74()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1E149DEE8()
{
  v16 = sub_1E1AF326C();
  v15 = *(v16 - 8);
  v1 = MEMORY[0x1EEE9AC00](v16);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v14 - v4;
  v6 = sub_1E1AF320C();
  MEMORY[0x1EEE9AC00](v6);
  v7 = *(v0 + 48);
  v22 = sub_1E149E5BC;
  v23 = v0;
  v8 = v7;
  v14[0] = v7;
  os_unfair_lock_lock(v7 + 4);
  sub_1E149E5D8(aBlock);
  v14[1] = 0;
  os_unfair_lock_unlock(v8 + 4);
  aBlock[4] = sub_1E149E5F4;
  v26 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_16;
  _Block_copy(aBlock);
  v24 = MEMORY[0x1E69E7CC0];
  sub_1E139D5D8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  sub_1E1AF32AC();
  swift_allocObject();
  v9 = sub_1E1AF328C();

  sub_1E1AF325C();
  sub_1E1AF32DC();
  v10 = *(v15 + 8);
  v11 = v16;
  v10(v3, v16);
  sub_1E1AF68CC();
  v10(v5, v11);
  v20 = v0;
  v21 = v9;
  v17 = sub_1E149E5FC;
  v18 = &v19;
  v12 = v14[0];
  os_unfair_lock_lock((v14[0] + 16));
  sub_1E149E644();
  os_unfair_lock_unlock(v12 + 4);
}

unint64_t sub_1E149E27C()
{
  result = qword_1ECEB4818;
  if (!qword_1ECEB4818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB4810);
    sub_1E1302CD4(&qword_1ECEB4820, &qword_1ECEB4828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4818);
  }

  return result;
}

unint64_t sub_1E149E32C()
{
  result = qword_1ECEB4830;
  if (!qword_1ECEB4830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4830);
  }

  return result;
}

uint64_t sub_1E149E5FC()
{
  *(*(v0 + 16) + 72) = *(v0 + 24);
}

uint64_t SearchResultsContentPresenter.__allocating_init()()
{
  v0 = swift_allocObject();
  SearchResultsContentPresenter.init()();
  return v0;
}

void *SearchResultsContentPresenter.init()()
{
  v9 = sub_1E1AF68DC();
  v1 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E1361A80();
  v8[0] = "it4Gate17CountingCondition";
  v8[1] = v6;
  sub_1E1AF322C();
  v10 = MEMORY[0x1E69E7CC0];
  sub_1E149FE48(&qword_1EE1E3438, 255, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  sub_1E1302CD4(&qword_1EE1E34D8, &unk_1ECEB7A90);
  sub_1E1AF6EEC();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v9);
  v0[2] = sub_1E1AF692C();
  v0[3] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4838);
  swift_allocObject();
  v0[4] = sub_1E1AF35CC();
  return v0;
}

size_t sub_1E149E958@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v43 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2740);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4858);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v41 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4860);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - v12;
  sub_1E1302CD4(&qword_1ECEB4868, &qword_1ECEB4860);
  sub_1E1302CD4(&qword_1ECEB4870, &qword_1ECEB2740);
  v44 = v2;
  sub_1E1AF1F7C();
  sub_1E149FDF4();
  sub_1E1AF3CCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4880);
  v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E1B02CC0;
  v38 = v13;
  v39 = v11;
  v16 = *(v11 + 16);
  v40 = v10;
  v16(v15 + v14, v13, v10);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4850);
  sub_1E1AF1F0C();

  v18 = v42;
  if (v42 >> 62)
  {
    v35 = v42;
    v36 = sub_1E1AF71CC();
    v18 = v35;
    v19 = v36;
  }

  else
  {
    v19 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v19)
  {
LABEL_15:
    v33 = v39;
    v32 = v40;
    v34 = v41;
    (*(v39 + 56))(v41, 1, 1, v40);
    sub_1E1AF1EDC();

    sub_1E149FE90(v34);
    return (*(v33 + 8))(v38, v32);
  }

  v20 = v18;
  v46 = MEMORY[0x1E69E7CC0];
  result = sub_1E135C684(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v42 = v17;
    v22 = v46;
    v23 = v20;
    if ((v20 & 0xC000000000000001) != 0)
    {
      v24 = 0;
      do
      {
        v25 = v23;
        v45 = MEMORY[0x1E68FFD80](v24);
        type metadata accessor for SearchResult();
        sub_1E149FE48(&qword_1EE1E0430, 255, type metadata accessor for SearchResult);
        sub_1E1AF3CBC();
        v46 = v22;
        v27 = *(v22 + 16);
        v26 = *(v22 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1E135C684(v26 > 1, v27 + 1, 1);
          v22 = v46;
        }

        ++v24;
        *(v22 + 16) = v27 + 1;
        (*(v3 + 32))(v22 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v27, v7, v44);
        v23 = v25;
      }

      while (v19 != v24);
    }

    else
    {
      v28 = (v20 + 32);
      type metadata accessor for SearchResult();
      sub_1E149FE48(&qword_1EE1E0430, 255, type metadata accessor for SearchResult);
      v29 = v37;
      do
      {
        v45 = *v28;

        sub_1E1AF3CBC();
        v46 = v22;
        v31 = *(v22 + 16);
        v30 = *(v22 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1E135C684(v30 > 1, v31 + 1, 1);
          v29 = v37;
          v22 = v46;
        }

        *(v22 + 16) = v31 + 1;
        (*(v3 + 32))(v22 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v31, v29, v44);
        ++v28;
        --v19;
      }

      while (v19);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E149EF04(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E1AF320C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1AF324C();
  v9 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v2 + 16);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v2;
  aBlock[4] = sub_1E149FDE8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_16;
  v13 = _Block_copy(aBlock);

  sub_1E1AF322C();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1E149FE48(&qword_1EE1E3C80, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v16);
}

uint64_t sub_1E149F1E8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4850);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  v9 = sub_1E1AF32BC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  a1(a3 + 24);
  swift_endAccess();
  v13 = *(a3 + 16);
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v14 = v13;
  LOBYTE(v13) = sub_1E1AF32EC();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {

    sub_1E149E958(v16, v8);

    sub_1E1AF35BC();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall SearchResultsContentPresenter.reapplySnapshot()()
{
  v1 = sub_1E1AF320C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF324C();
  v5 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *(v0 + 16);
  aBlock[4] = sub_1E149F900;
  v13 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_17;
  v8 = _Block_copy(aBlock);

  sub_1E1AF322C();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1E149FE48(&qword_1EE1E3C80, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v10);
}

uint64_t sub_1E149F6E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4850);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - v4;
  v6 = sub_1E1AF32BC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 16);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6, v8);
  v12 = v11;
  LOBYTE(v11) = sub_1E1AF32EC();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    swift_beginAccess();

    sub_1E149E958(v14, v5);

    sub_1E1AF35BC();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E149F928(void *a1)
{

  *a1 = MEMORY[0x1E69E7CC0];

  return sub_1E1728534(v2);
}

uint64_t sub_1E149F994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;

  sub_1E149EF04(a3, v5);
}

uint64_t SearchResultsContentPresenter.deinit()
{

  return v0;
}

uint64_t SearchResultsContentPresenter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t SearchResultsContentPresenter.Section.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1E1AF72FC();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_1E149FBE0()
{
  result = qword_1ECEB4848;
  if (!qword_1ECEB4848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4848);
  }

  return result;
}

uint64_t sub_1E149FC34()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t sub_1E149FCA0()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t sub_1E149FCF0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1E1AF72FC();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_1E149FDF4()
{
  result = qword_1ECEB4878;
  if (!qword_1ECEB4878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4878);
  }

  return result;
}

uint64_t sub_1E149FE48(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E149FE90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4858);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppEventDetailPagePresenter.__allocating_init(objectGraph:appEventDetailPage:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1E14A04C4(a1, a2);

  return v4;
}

uint64_t AppEventDetailPagePresenter.init(objectGraph:appEventDetailPage:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E14A04C4(a1, a2);

  return v2;
}

uint64_t sub_1E149FFFC(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit27AppEventDetailPagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E14A0068(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit27AppEventDetailPagePresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E1363018;
}

uint64_t sub_1E14A0108()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = qword_1EE1EC290;

    if (v3 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = qword_1EE1EC298;
    v5 = v2 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_requestedTime;
    swift_beginAccess();
    *v5 = v4;
    *(v5 + 8) = 0;
    v6 = *(v2 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequestedTime);
    swift_beginAccess();
    *(v6 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1E149DEE8();
    }
  }

  v7 = v1 + OBJC_IVAR____TtC11AppStoreKit27AppEventDetailPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 16))(*(v1 + OBJC_IVAR____TtC11AppStoreKit27AppEventDetailPagePresenter_appEventDetailPage), ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E14A02E0()
{
  v1 = v0 + OBJC_IVAR____TtC11AppStoreKit27AppEventDetailPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(*(v0 + OBJC_IVAR____TtC11AppStoreKit27AppEventDetailPagePresenter_appEventDetailPage), ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E14A03A8()
{
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit27AppEventDetailPagePresenter_view);
}

uint64_t AppEventDetailPagePresenter.deinit()
{
  v0 = BasePresenter.deinit();
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit27AppEventDetailPagePresenter_view);

  return v0;
}

uint64_t AppEventDetailPagePresenter.__deallocating_deinit()
{
  BasePresenter.deinit();
  v0 = OBJC_IVAR____TtC11AppStoreKit27AppEventDetailPagePresenter_view;

  sub_1E1337DEC(v1 + v0);

  return swift_deallocClassInstance();
}

uint64_t sub_1E14A04C4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC11AppStoreKit27AppEventDetailPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC11AppStoreKit27AppEventDetailPagePresenter_appEventDetailPage) = a2;

  v5 = sub_1E138C578(a1, 0, 0, 0);
  v7[3] = type metadata accessor for AppEventDetailPage();
  v7[4] = &protocol witness table for BasePage;
  v7[5] = sub_1E14A076C();
  v7[0] = a2;
  swift_beginAccess();

  sub_1E13891EC(v7, v5 + 40);
  swift_endAccess();
  sub_1E138B568();

  sub_1E14A07C4(v7);
  return v5;
}

uint64_t type metadata accessor for AppEventDetailPagePresenter()
{
  result = qword_1ECEB4890;
  if (!qword_1ECEB4890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E14A076C()
{
  result = qword_1ECEB48A0;
  if (!qword_1ECEB48A0)
  {
    type metadata accessor for AppEventDetailPage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB48A0);
  }

  return result;
}

uint64_t sub_1E14A07C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2588);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1E14A084C(uint64_t a1)
{
  v3 = objc_opt_self();
  result = [v3 valueWithNewObjectInContext_];
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1Tm((v1 + 16), *(v1 + 40));
    v6 = v5;
    v7 = [v3 valueWithObject:sub_1E1AF748C() inContext:a1];
    result = swift_unknownObjectRelease();
    if (v7)
    {
      sub_1E1AF6C5C();

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1E14A093C()
{
  result = qword_1ECEB48A8;
  if (!qword_1ECEB48A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB48A8);
  }

  return result;
}

unint64_t sub_1E14A0998()
{
  result = qword_1ECEB48B0;
  if (!qword_1ECEB48B0)
  {
    type metadata accessor for PersonalizedOfferContext();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB48B0);
  }

  return result;
}

uint64_t sub_1E14A09F0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17 = a1;
  v18 = a2;
  v16 = sub_1E1AF189C();
  v6 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_1E135C640(0, v9, 0);
  v10 = v19;
  v11 = a3 + 32;
  v15 = v6 + 32;
  while (1)
  {
    v17(v11);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v19 = v10;
    v13 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1E135C640(v12 > 1, v13 + 1, 1);
      v10 = v19;
    }

    *(v10 + 16) = v13 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v8, v16);
    v11 += 40;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E14A0B9C(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1E135C320(0, v4, 0);
    v5 = v17;
    v8 = *(type metadata accessor for ItemLayoutContext() - 8);
    v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    while (1)
    {
      a1(&v16, v9, &v15);
      if (v3)
      {
        break;
      }

      v11 = v16;
      v17 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1E135C320((v12 > 1), v13 + 1, 1);
        v5 = v17;
      }

      *(v5 + 16) = v13 + 1;
      *(v5 + 8 * v13 + 32) = v11;
      v9 += v10;
      if (!--v4)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_1E14A0D08(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_1E135CA20(0, v5, 0);
  v6 = v24;
  for (i = (a3 + 56); ; i += 4)
  {
    v9 = *i;
    v19 = *(i - 3);
    v20 = *(i - 1);
    v21 = v9;

    a1(v22, &v19);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v22[0];
    v10 = v22[1];
    v12 = v23;
    v24 = v6;
    v14 = *(v6 + 16);
    v13 = *(v6 + 24);
    if (v14 >= v13 >> 1)
    {
      v17 = v23;
      sub_1E135CA20((v13 > 1), v14 + 1, 1);
      v12 = v17;
      v6 = v24;
    }

    *(v6 + 16) = v14 + 1;
    v15 = v6 + 32 * v14;
    *(v15 + 32) = v11;
    *(v15 + 40) = v10;
    *(v15 + 48) = v12;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E14A0E74(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v16 = MEMORY[0x1E69E7CC0];
  sub_1E135C048(0, v5, 0);
  v6 = v16;
  for (i = (a3 + 32); ; ++i)
  {
    v14 = *i;

    a1(&v15, &v14);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v10 = v15;
    v16 = v6;
    v12 = *(v6 + 16);
    v11 = *(v6 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1E135C048((v11 > 1), v12 + 1, 1);
      v6 = v16;
    }

    *(v6 + 16) = v12 + 1;
    *(v6 + 8 * v12 + 32) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E14A0FA0(uint64_t result, double a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = 0;
  v10 = a2;
  v8 = *(a4 + 16);
  do
  {
    if (v8 == v7)
    {
      break;
    }

    v9 = *(type metadata accessor for ItemLayoutContext() - 8);
    result = v6(&v10, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
  }

  while (!v4);
  return result;
}

uint64_t BasePageLayoutSectionProvider.__allocating_init(componentTypeMappingProvider:visibleItemsObserverProviders:componentHeightCache:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1E1308EC0(a1, v6 + 16);
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  return v6;
}

uint64_t BasePageLayoutSectionProvider.init(componentTypeMappingProvider:visibleItemsObserverProviders:componentHeightCache:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  sub_1E1308EC0(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

id sub_1E14A1124(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v63 = a8;
  v64 = a5;
  v65 = a6;
  v62 = a9;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
  sub_1E1AF3DAC();

  if (LOBYTE(aBlock[0]) == 1)
  {
    v61 = a4;
    v17 = a7;
    v18 = sub_1E13006E4(0, &qword_1EE1E3388);
    v19 = a2();
    v20 = swift_beginAccess();
    v21 = v10[8];
    if (*(v19 + 16))
    {
      MEMORY[0x1EEE9AC00](v20);
      v57 = v18;
      v58 = v10 + 2;
      v59 = v21;
      v60 = a10;

      sub_1E14A0FA0(sub_1E14A2628, 0.0, v56, v19);
      v30 = v29;
      v31 = v10[5];
      v32 = v10[6];
      __swift_project_boxed_opaque_existential_1Tm(v10 + 2, v31);
      v33 = (*(v32 + 8))(a1, a10, v31, v32);
      if (v33 && (v34 = v33, (v35 = swift_conformsToProtocol2()) != 0) && ((*(v35 + 24))(a1, a10, v34, v35) & 1) != 0)
      {
        v36 = v19;
        v37 = v30;
        v38 = 1;
      }

      else
      {
        v36 = v19;
        v37 = v30;
        v38 = 0;
      }

      v27 = sub_1E148A668(v36, v38, a1, v63, v62, a10, v37);
    }

    else
    {

      v27 = _sSo23NSCollectionLayoutGroupC11AppStoreKitE05emptybC03forAbC05ShelfB7ContextV_tFZ_0(a1);
    }

    a7 = v17;
    v48 = [objc_opt_self() sectionWithGroup_];
    v49 = [objc_opt_self() standardUserDefaults];
    v50 = NSUserDefaults.shelfOrthogonalScrollingBehavior.getter();

    [v48 setOrthogonalScrollingBehavior_];
    [v48 setInterGroupSpacing_];
    v51 = Array<A>.visibleItemsTransformer(for:observing:asPartOf:)(a1, v61, a10, v11[7]);
    if (v51)
    {
      aBlock[4] = v51;
      aBlock[5] = v52;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E14A1CA0;
      aBlock[3] = &block_descriptor_18;
      v53 = _Block_copy(aBlock);
    }

    else
    {
      v53 = 0;
    }

    [v48 setVisibleItemsInvalidationHandler_];
    _Block_release(v53);
  }

  else
  {
    v22 = (a2)(v16);
    swift_beginAccess();
    v23 = v10[8];
    v24 = sub_1E13006E4(0, &qword_1EE1E3388);
    if (*(v22 + 16))
    {
      MEMORY[0x1EEE9AC00](v24);
      v57 = v25;
      v58 = v10 + 2;
      v59 = v23;
      v60 = a10;

      v26 = sub_1E14A0B9C(sub_1E14A1E28, v56, v22);
      v61 = a7;
      v39 = v26;
      v40 = v10[5];
      v41 = v10[6];
      __swift_project_boxed_opaque_existential_1Tm(v10 + 2, v40);
      v42 = (*(v41 + 8))(a1, a10, v40, v41);
      if (v42 && (v43 = v42, (v44 = swift_conformsToProtocol2()) != 0) && ((*(v44 + 24))(a1, a10, v43, v44) & 1) != 0)
      {
        v45 = v22;
        v46 = v39;
        v47 = 1;
      }

      else
      {
        v45 = v22;
        v46 = v39;
        v47 = 0;
      }

      v28 = sub_1E148AF90(v45, v46, v47, a1, v63, v62, a10);

      a7 = v61;
    }

    else
    {

      v28 = _sSo23NSCollectionLayoutGroupC11AppStoreKitE05emptybC03forAbC05ShelfB7ContextV_tFZ_0(a1);
    }

    v48 = [objc_opt_self() sectionWithGroup_];
  }

  v54 = v48;
  _s11AppStoreKit29BasePageLayoutSectionProviderC27addSupplementariesAndInsets2to3for05shelff7SpacingH00o13SupplementaryH08asPartOfySo012NSCollectionfG0C_AA05ShelfF7ContextVAA0vfpH0_pAA0vqH0_p9JetEngine0D11ObjectGraphCtF_0(v54, a1, v64, v65, a7, a10);

  return v54;
}

BOOL sub_1E14A16EC(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_15:
    v3 = sub_1E1AF71CC();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E68FFD80](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_14;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v8 = [v6 alignment];

    v4 = v5 + 1;
  }

  while (v8 != 1);
  return v3 != v5;
}

void sub_1E14A17CC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E1AF71CC();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1E68FFD80](v3, a1);
      }

      else
      {
        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      if ([v5 alignment] == 1)
      {
        v7 = [v6 layoutSize];
        v8 = [v7 heightDimension];

        [v8 dimension];
        v10 = v9;

        v4 = v4 + v10;
      }

      else
      {
      }

      ++v3;
    }

    while (v2 != v3);
  }
}

BOOL sub_1E14A1908(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_15:
    v3 = sub_1E1AF71CC();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E68FFD80](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_14;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v8 = [v6 alignment];

    v4 = v5 + 1;
  }

  while (v8 != 5);
  return v3 != v5;
}

void sub_1E14A19E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E1AF71CC();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1E68FFD80](v3, a1);
      }

      else
      {
        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      if ([v5 alignment] == 5)
      {
        v7 = [v6 layoutSize];
        v8 = [v7 heightDimension];

        [v8 dimension];
        v10 = v9;

        v4 = v4 + v10;
      }

      else
      {
      }

      ++v3;
    }

    while (v2 != v3);
  }
}

id sub_1E14A1B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = [objc_opt_self() sectionWithGroup_];
  v13 = [objc_opt_self() standardUserDefaults];
  v14 = NSUserDefaults.shelfOrthogonalScrollingBehavior.getter();

  [v12 setOrthogonalScrollingBehavior_];
  [v12 setInterGroupSpacing_];
  v15 = Array<A>.visibleItemsTransformer(for:observing:asPartOf:)(a2, a6, a7, *(v8 + 56));
  if (v15)
  {
    v19[4] = v15;
    v19[5] = v16;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1E14A1CA0;
    v19[3] = &block_descriptor_3;
    v17 = _Block_copy(v19);
  }

  else
  {
    v17 = 0;
  }

  [v12 setVisibleItemsInvalidationHandler_];
  _Block_release(v17);
  return v12;
}

uint64_t sub_1E14A1CA0(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB48D0);
  v9 = sub_1E1AF621C();

  swift_unknownObjectRetain();
  v8(v9, a5, a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t BasePageLayoutSectionProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t BasePageLayoutSectionProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

id _s11AppStoreKit29BasePageLayoutSectionProviderC27addSupplementariesAndInsets2to3for05shelff7SpacingH00o13SupplementaryH08asPartOfySo012NSCollectionfG0C_AA05ShelfF7ContextVAA0vfpH0_pAA0vqH0_p9JetEngine0D11ObjectGraphCtF_0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = a6;
  v70 = a5;
  v69 = a4;
  v79 = a1;
  v8 = sub_1E1AF745C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3[3];
  v13 = a3[4];
  __swift_project_boxed_opaque_existential_1Tm(a3, v12);
  (*(v13 + 8))(v81, a2, v12, v13);
  __swift_project_boxed_opaque_existential_1Tm(v81, v82);
  v74 = type metadata accessor for ShelfLayoutContext();
  v14 = *(a2 + *(v74 + 40));
  v15 = a2;
  sub_1E13BC274();
  sub_1E1AF12DC();
  v17 = v16;
  v18 = *(v9 + 8);
  v18(v11, v8);
  __swift_destroy_boxed_opaque_existential_1(v81);
  v19 = a3[3];
  v20 = a3[4];
  __swift_project_boxed_opaque_existential_1Tm(a3, v19);
  (*(v20 + 16))(v81, a2, v19, v20);
  __swift_project_boxed_opaque_existential_1Tm(v81, v82);
  sub_1E13BC274();
  v78 = v14;
  sub_1E1AF12DC();
  v22 = v21;
  v73 = v11;
  v75 = v8;
  v76 = v9 + 8;
  v77 = v18;
  v18(v11, v8);
  v23 = v70;
  v24 = v15;
  __swift_destroy_boxed_opaque_existential_1(v81);
  v25 = v15 + *(v74 + 28);
  v26 = *(v25 + 368);
  v27 = *(v25 + 384);
  ObjectType = swift_getObjectType();
  v29 = a3;
  v30 = a3;
  v31 = v71;
  v32 = (*(v23 + 8))(v15, v30, v71, ObjectType, v23);
  v80 = MEMORY[0x1E69E7CC0];
  LODWORD(v74) = sub_1E14A16EC(v32) && v17 > 0.0;
  if (v74 == 1)
  {
    v33 = ObjectType;
    sub_1E14A17CC(v32);
    v35 = v34;
    v36 = objc_opt_self();
    v37 = [v36 fractionalWidthDimension_];
    v38 = [v36 absoluteDimension_];
    v39 = [objc_opt_self() sizeWithWidthDimension:v37 heightDimension:v38];

    v40 = sub_1E1AF5DBC();
    v41 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v39 elementKind:v40 alignment:1 absoluteOffset:{0.0, -v35}];

    MEMORY[0x1E68FEF20]();
    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    sub_1E1AF62AC();
    ObjectType = v33;
  }

  sub_1E172854C(v42);
  v43 = sub_1E14A1908(v32);
  v44 = v79;
  if (v43 && v22 > 0.0)
  {
    sub_1E14A19E8(v32);
    v46 = v45;

    v47 = objc_opt_self();
    v48 = [v47 fractionalWidthDimension_];
    v49 = [v47 absoluteDimension_];
    v50 = [objc_opt_self() sizeWithWidthDimension:v48 heightDimension:v49];

    v51 = sub_1E1AF5DBC();
    v52 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v50 elementKind:v51 alignment:5 absoluteOffset:{0.0, v46}];

    MEMORY[0x1E68FEF20]();
    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    sub_1E1AF62AC();
    v72 = 1;
  }

  else
  {

    v72 = 0;
  }

  sub_1E13006E4(0, &qword_1EE1E32D0);
  v53 = sub_1E1AF620C();

  [v44 setBoundarySupplementaryItems_];

  (*(v23 + 16))(v24, v29, v31, ObjectType, v23);
  sub_1E13006E4(0, &unk_1EE1E3310);
  v54 = sub_1E1AF620C();

  [v44 setDecorationItems_];

  v55 = v29[3];
  v56 = v29[4];
  __swift_project_boxed_opaque_existential_1Tm(v29, v55);
  (*(v56 + 24))(v81, v24, v55, v56);
  __swift_project_boxed_opaque_existential_1Tm(v81, v82);
  v57 = v73;
  sub_1E13BC274();
  sub_1E1AF12DC();
  v59 = v58;
  v60 = v75;
  v61 = v77;
  v77(v57, v75);
  __swift_destroy_boxed_opaque_existential_1(v81);
  v62 = v29[3];
  v63 = v29[4];
  __swift_project_boxed_opaque_existential_1Tm(v29, v62);
  (*(v63 + 32))(v81, v24, v62, v63);
  __swift_project_boxed_opaque_existential_1Tm(v81, v82);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v65 = v64;
  v61(v57, v60);
  __swift_destroy_boxed_opaque_existential_1(v81);
  if (v74)
  {
    v66 = 0.0;
    v67 = v59 + 0.0;
    if (v72)
    {
      return [v79 setContentInsets_];
    }

    goto LABEL_15;
  }

  v67 = v17 + v59;
  v66 = 0.0;
  if ((v72 & 1) == 0)
  {
LABEL_15:
    v66 = v22;
  }

  return [v79 setContentInsets_];
}

uint64_t EditorialStoryCardLayout.init(metrics:artworkView:headerLabel:titleLabel:descriptionLabel:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *(a1 + 112);
  *(a6 + 96) = *(a1 + 96);
  *(a6 + 112) = v10;
  *(a6 + 128) = *(a1 + 128);
  *(a6 + 144) = *(a1 + 144);
  v11 = *(a1 + 48);
  *(a6 + 32) = *(a1 + 32);
  *(a6 + 48) = v11;
  v12 = *(a1 + 80);
  *(a6 + 64) = *(a1 + 64);
  *(a6 + 80) = v12;
  v13 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v13;
  sub_1E1308EC0(a2, a6 + 152);
  sub_1E1308EC0(a3, a6 + 192);
  sub_1E1308EC0(a4, a6 + 232);

  return sub_1E1308EC0(a5, a6 + 272);
}

uint64_t EditorialStoryCardLayout.Metrics.init(headerSpace:titleSpace:descriptionSpace:layoutMargins:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, double *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  sub_1E1308EC0(a1, a4);
  sub_1E1308EC0(a2, (a4 + 5));
  result = sub_1E1308EC0(a3, (a4 + 10));
  a4[15] = a5;
  a4[16] = a6;
  a4[17] = a7;
  a4[18] = a8;
  return result;
}

uint64_t EditorialStoryCardLayout.Metrics.headerSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

uint64_t EditorialStoryCardLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_1E1308EC0(a1, v1 + 40);
}

uint64_t EditorialStoryCardLayout.Metrics.descriptionSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_1E1308EC0(a1, v1 + 80);
}

void EditorialStoryCardLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[15] = a1;
  v4[16] = a2;
  v4[17] = a3;
  v4[18] = a4;
}

__n128 EditorialStoryCardLayout.Metrics.init(byCopying:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = *(a1 + 144);
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *a1;
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  return result;
}

__n128 sub_1E14A2B00@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = *(a1 + 144);
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *a1;
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  return result;
}

uint64_t EditorialStoryCardLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v38 = a2;
  v13 = sub_1E1AF111C();
  v36 = *(v13 - 8);
  v37 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v6 + 19, v6[22]);
  sub_1E1AF116C();
  v16 = [a1 traitCollection];
  [v16 layoutDirection];

  *&v35[1] = a3;
  *&v35[2] = a4;
  *&v35[3] = a5;
  *&v35[4] = a6;
  sub_1E1AF6B0C();
  sub_1E1AF6B1C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB26B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CD0;
  v26 = v7[27];
  v27 = v7[28];
  v28 = __swift_project_boxed_opaque_existential_1Tm(v7 + 24, v26);
  v43 = v26;
  v44 = *(v27 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v42);
  (*(*(v26 - 8) + 16))(boxed_opaque_existential_0, v28, v26);
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  sub_1E1300B24(v42, inited + 32);
  sub_1E1300B24(v7, inited + 80);
  sub_1E141E104(&v39, inited + 120);
  *(inited + 72) = 1;
  *(inited + 160) = 8;
  sub_1E141E174(&v39);
  __swift_destroy_boxed_opaque_existential_1(v42);
  v30 = v7[32];
  v31 = v7[33];
  v32 = __swift_project_boxed_opaque_existential_1Tm(v7 + 29, v30);
  v43 = v30;
  v44 = *(v31 + 8);
  v33 = __swift_allocate_boxed_opaque_existential_0(v42);
  (*(*(v30 - 8) + 16))(v33, v32, v30);
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  sub_1E1300B24(v42, inited + 168);
  sub_1E1300B24((v7 + 5), inited + 216);
  sub_1E141E104(&v39, inited + 256);
  *(inited + 208) = 1;
  *(inited + 296) = 8;
  sub_1E141E174(&v39);
  __swift_destroy_boxed_opaque_existential_1(v42);
  LOBYTE(v42[0]) = 1;
  v42[1] = inited;
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(v15, v18, v20, v22, v24);
  (*(v36 + 8))(v15, v37);

  __swift_project_boxed_opaque_existential_1Tm(v7 + 34, v7[37]);
  sub_1E1AF11CC();
  v45.origin.x = v18;
  v45.origin.y = v20;
  v45.size.width = v22;
  v45.size.height = v24;
  CGRectGetMinX(v45);
  v46.origin.x = v18;
  v46.origin.y = v20;
  v46.size.width = v22;
  v46.size.height = v24;
  CGRectGetMaxY(v46);
  __swift_project_boxed_opaque_existential_1Tm(v7 + 34, v7[37]);
  sub_1E1AF116C();
  return sub_1E1AF106C();
}

uint64_t sub_1E14A2F78(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_1E14A3234();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x1EEE18170](a1, a2, v10, a3, v11, v12);
}

unint64_t sub_1E14A3000()
{
  result = qword_1ECEB48D8;
  if (!qword_1ECEB48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB48D8);
  }

  return result;
}

uint64_t sub_1E14A305C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 312))
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

uint64_t sub_1E14A30A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
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

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1E14A3178(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1E14A31C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E14A3234()
{
  result = qword_1ECEB48E0;
  if (!qword_1ECEB48E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB48E0);
  }

  return result;
}

uint64_t PageChangeMetrics.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PageChangeMetrics.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t PageChangeMetrics.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v32 = a2;
  v31 = sub_1E1AF39DC();
  v3 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - v12;
  v14 = a1;
  sub_1E1AF381C();
  sub_1E1AF368C();
  v28 = *(v7 + 8);
  v29 = v6;
  v28(v10, v6);
  v15 = sub_1E1AF40DC();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_1E1308058(v13, &qword_1ECEB2B28);
  }

  else
  {
    v17 = sub_1E1AF40BC();
    (*(v16 + 8))(v13, v15);
    if (v17)
    {
      goto LABEL_5;
    }
  }

  v17 = sub_1E1303A74(MEMORY[0x1E69E7CC0]);

LABEL_5:
  v18 = v33;
  v19 = v14;
  v20 = v31;
  *(v33 + 16) = v17;
  sub_1E1AF381C();
  v21 = v32;
  (*(v3 + 16))(v5, v32, v20);
  sub_1E1AF3ABC();
  v22 = v30;
  v23 = sub_1E1AF62EC();
  v24 = v20;
  if (v22)
  {
    (*(v3 + 8))(v21, v20);
    v28(v19, v29);

    type metadata accessor for PageChangeMetrics();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v25 = v23;
    (*(v3 + 8))(v21, v24);
    v28(v19, v29);
    *(v18 + 24) = v25;
  }

  return v18;
}

uint64_t sub_1E14A36D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = 0;
  v7 = sub_1E1AF3C1C();
  v73 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF3B5C();
  v72 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v75 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v76 = &v66 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v86 = &v66 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v84 = &v66 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v66 - v19;
  v21 = sub_1E1AF3C3C();
  (*(*(v21 - 8) + 16))(a2, a1, v21);
  v22 = v96;
  v71 = a2;
  v24 = sub_1E1AF3ADC();
  v25 = *v23;
  v67 = v3;
  if (v25)
  {
    v26 = v23;
    v22 = *(v3 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = *v26;
    *v26 = 0x8000000000000000;
    sub_1E14A55BC(v22, sub_1E160785C, 0, isUniquelyReferenced_nonNull_native, &v95);
    v68 = 0;

    *v26 = v95;
  }

  else
  {
    v68 = 0;
  }

  v24(v96, 0);
  v28 = v71;
  v69 = sub_1E1AF3B7C();
  v87 = v29;
  v30 = *v29;
  v83 = *(*v29 + 16);
  if (v83)
  {
    v31 = 0;
    v32 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v85 = v30 + v32;
    v92 = v73 + 16;
    v91 = (v73 + 8);
    v78 = (v72 + 8);
    v89 = v20;
    v90 = v10;
    v79 = v32;
    v82 = v72 + 16;
    v77 = v30;
    while (v31 < *(v30 + 2))
    {
      v81 = *(v72 + 72);
      v33 = *(v72 + 16);
      v33(v20, v85 + v81 * v31, v10);
      v28 = v20;
      v22 = sub_1E1AF3AFC();
      if (qword_1EE1D2A08 != -1)
      {
        swift_once();
      }

      v34 = __swift_project_value_buffer(v7, qword_1EE1D2A10);
      if (v22[2])
      {
        v35 = v34;
        v36 = sub_1E14A5508(&qword_1EE1E3B28);
        v88 = v35;
        v28 = v35;
        v74 = v36;
        v37 = sub_1E1AF5D0C();
        v38 = -1 << *(v22 + 32);
        v6 = v37 & ~v38;
        if ((*(v22 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6))
        {
          v80 = v33;
          v39 = ~v38;
          v40 = *(v73 + 72);
          v93 = *(v73 + 16);
          v94 = v40;
          while (1)
          {
            v93(v9, v22[6] + v94 * v6, v7);
            v10 = sub_1E14A5508(&qword_1EE1E3B20);
            v28 = sub_1E1AF5DAC();
            v41 = *v91;
            (*v91)(v9, v7);
            if (v28)
            {
              break;
            }

            v6 = (v6 + 1) & v39;
            if (((*(v22 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          v77 = *v78;
          v77(v89, v90);
          v6 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_61;
          }

          v42 = v31;
          v43 = *v87;
          v44 = *(*v87 + 16);
          if (v6 != v44)
          {
            v70 = (v72 + 40);
            v51 = v79;
            v22 = v88;
            while (v6 < v44)
            {
              v85 = v42;
              v89 = v6;
              v83 = v6 * v81;
              v28 = v84;
              v80(v84, v43 + v51 + v6 * v81, v90);
              v52 = sub_1E1AF3AFC();
              if (*(v52 + 16) && (v28 = v22, v53 = sub_1E1AF5D0C(), v54 = -1 << *(v52 + 32), v55 = v53 & ~v54, ((*(v52 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) != 0))
              {
                v56 = ~v54;
                while (1)
                {
                  v93(v9, *(v52 + 48) + v55 * v94, v7);
                  v28 = sub_1E1AF5DAC();
                  v41(v9, v7);
                  if (v28)
                  {
                    break;
                  }

                  v55 = (v55 + 1) & v56;
                  if (((*(v52 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
                  {
                    goto LABEL_34;
                  }
                }

                v77(v84, v90);
                v42 = v85;
                v51 = v79;
                v6 = (v89 + 1);
                if (__OFADD__(v89, 1))
                {
                  goto LABEL_53;
                }
              }

              else
              {
LABEL_34:

                v77(v84, v90);
                v57 = v85;
                v6 = v89;
                v51 = v79;
                if (v85 != v89)
                {
                  if ((v85 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_55;
                  }

                  v28 = *v87;
                  v58 = *(*v87 + 16);
                  if (v85 >= v58)
                  {
                    goto LABEL_56;
                  }

                  v59 = v28 + v79;
                  v73 = v85 * v81;
                  v60 = v90;
                  v6 = v82;
                  v22 = v80;
                  v80(v76, v28 + v79 + v85 * v81, v90);
                  if (v89 >= v58)
                  {
                    goto LABEL_57;
                  }

                  (v22)(v75, v59 + v83, v60);
                  v61 = swift_isUniquelyReferenced_nonNull_native();
                  *v87 = v28;
                  if ((v61 & 1) == 0)
                  {
                    v28 = sub_1E14E697C(v28);
                    *v87 = v28;
                  }

                  v57 = v85;
                  v6 = v89;
                  v22 = v70;
                  if (v85 >= *(v28 + 16))
                  {
                    goto LABEL_58;
                  }

                  v62 = v79;
                  v63 = *v70;
                  v64 = v28 + v79 + v73;
                  v28 = v90;
                  (*v70)(v64, v75, v90);
                  if (v6 >= *(*v87 + 16))
                  {
                    goto LABEL_59;
                  }

                  v63(*v87 + v62 + v83, v76, v28);
                  v51 = v62;
                  v22 = v88;
                }

                v65 = __OFADD__(v57, 1);
                v42 = v57 + 1;
                if (v65)
                {
                  goto LABEL_54;
                }

                v65 = __OFADD__(v6++, 1);
                if (v65)
                {
                  goto LABEL_53;
                }
              }

              v43 = *v87;
              v44 = *(*v87 + 16);
              if (v6 == v44)
              {
                goto LABEL_18;
              }
            }

            goto LABEL_52;
          }

LABEL_18:
          v10 = v90;
          if (v6 >= v42)
          {
            goto LABEL_21;
          }

          __break(1u);
          goto LABEL_20;
        }
      }

LABEL_6:

      v20 = v89;
      v10 = v90;
      (*v78)(v89, v90);
      ++v31;
      v30 = v77;
      if (v31 == v83)
      {
        v42 = *(*v87 + 16);
        v6 = v42;
        goto LABEL_21;
      }
    }
  }

  else
  {
LABEL_20:
    v42 = 0;
    v6 = 0;
LABEL_21:
    sub_1E1921D14(v42, v6);
    v69(v96, 0);
    v45 = sub_1E1AF3B8C();
    v28 = MEMORY[0x1E69E7CC0];
    v96[0] = MEMORY[0x1E69E7CC0];
    v46 = *(v45 + 16);
    if (!v46)
    {
LABEL_26:

      return sub_1E1AF3B9C();
    }

    v47 = 0;
    v48 = v72;
    v22 = (v72 + 8);
    v6 = v68;
    v49 = v67;
    while (v47 < *(v45 + 16))
    {
      v28 = v86;
      (*(v48 + 16))(v86, v45 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v47, v10);
      sub_1E14A418C(v28, v49, &v95);
      if (v6)
      {
        goto LABEL_62;
      }

      ++v47;
      (*v22)(v28, v10);
      v28 = v96;
      sub_1E1728564(v95);
      if (v46 == v47)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:

  (*v22)(v28, v10);

  __break(1u);

  *v28 = v95;

  __break(1u);
  return result;
}

uint64_t sub_1E14A418C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, size_t *a3@<X8>)
{
  v96 = a2;
  v99 = a3;
  v4 = sub_1E1AF3B5C();
  v5 = *(v4 - 8);
  v102 = v4;
  v103 = v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v92 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v93 = &v84 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v95 = &v84 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB36B0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v101 = &v84 - v15;
  v16 = sub_1E1AF3ABC();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v84 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v84 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v94 = &v84 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v100 = &v84 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v84 - v31;
  sub_1E1AF3B3C();
  v33 = sub_1E1AF3AAC();
  v97 = *(v17 + 8);
  v98 = v17 + 8;
  v97(v32, v16);
  if (*(v33 + 16) && (v34 = sub_1E13018F8(0x707954746E657665, 0xE900000000000065), (v35 & 1) != 0))
  {
    sub_1E137A5C4(*(v33 + 56) + 32 * v34, v106);

    v36 = swift_dynamicCast();
    if (v36)
    {
      v37 = v105[0];
    }

    else
    {
      v37 = 0;
    }

    if (v36)
    {
      v38 = v105[1];
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {

    v37 = 0;
    v38 = 0;
  }

  v39 = v101;
  v91 = v37;
  sub_1E14A4CDC(v96, v37, v38, a1, v101);
  sub_1E14A554C(v39, v14);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {

    sub_1E1308058(v14, &qword_1ECEB36B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2538);
    v40 = v103;
    v41 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1E1B02CC0;
    (*(v40 + 16))(v42 + v41, a1, v102);
    v43 = v39;
LABEL_27:
    result = sub_1E1308058(v43, &qword_1ECEB36B0);
LABEL_28:
    *v99 = v42;
    return result;
  }

  v88 = v38;
  v89 = v17;
  (*(v17 + 32))();
  v44 = *(v103 + 16);
  v45 = v95;
  v96 = v103 + 16;
  v90 = v44;
  v44(v95, a1, v102);
  sub_1E1AF3B3C();
  v87 = sub_1E1AF3A8C();
  *&v86 = v46;
  v47 = v16;
  v48 = v16;
  v49 = v97;
  v97(v26, v47);
  if (sub_1E1AF3A2C())
  {
    v85 = 1;
  }

  else
  {
    sub_1E1AF3B3C();
    v85 = sub_1E1AF3A2C();
    v49(v23, v48);
  }

  v50 = v107;
  sub_1E1AF3B3C();
  v51 = sub_1E1AF3AAC();
  v49(v20, v48);
  v52 = sub_1E1AF3AAC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v106[0] = v51;
  sub_1E14A55BC(v52, sub_1E160785C, 0, isUniquelyReferenced_nonNull_native, v106);
  v107 = v50;
  if (!v50)
  {

    v84 = v106[0];
    sub_1E1AF3B3C();
    v54 = sub_1E1AF3A6C();
    v49(v23, v48);
    v55 = sub_1E1AF3A6C();
    sub_1E15C60CC(v55, v54);
    sub_1E1AF3B3C();
    v56 = sub_1E1AF3A5C();
    v49(v23, v48);
    v57 = sub_1E1AF3A5C();
    sub_1E15C60F8(v57, v56);
    v58 = v94;
    sub_1E1AF3A7C();
    (*(v89 + 16))(v23, v58, v48);
    sub_1E1AF3B4C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2538);
    v59 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v89 = *(v103 + 72);
    v42 = swift_allocObject();
    v86 = xmmword_1E1B02CC0;
    *(v42 + 16) = xmmword_1E1B02CC0;
    v87 = v59;
    v60 = v102;
    v90(v42 + v59, v45, v102);
    v61 = v101;
    v62 = v93;
    v63 = v48;
    if (v88)
    {
      if (v91 == 1701273968 && v88 == 0xE400000000000000)
      {

LABEL_21:
        v65 = v90;
        v90(v62, v45, v60);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB48E8);
        v66 = sub_1E1AF3C1C();
        v67 = *(v66 - 8);
        v68 = (*(v67 + 80) + 32) & ~*(v67 + 80);
        v69 = swift_allocObject();
        *(v69 + 16) = v86;
        if (qword_1EE1D2A08 != -1)
        {
          swift_once();
        }

        v70 = __swift_project_value_buffer(v66, qword_1EE1D2A10);
        (*(v67 + 16))(v69 + v68, v70, v66);
        sub_1E1497880(v69);
        swift_setDeallocating();
        (*(v67 + 8))(v69 + v68, v66);
        swift_deallocClassInstance();
        sub_1E1AF3B0C();
        v106[3] = MEMORY[0x1E69E6158];
        v106[0] = 0x6E61684365676170;
        v106[1] = 0xEA00000000006567;
        v71 = sub_1E1AF3B2C();
        v72 = sub_1E1AF3A9C();
        sub_1E138692C(v106, 0x707954746E657665, 0xE900000000000065);
        v72(v104, 0);
        v71(v105, 0);
        v65(v92, v62, v102);
        v74 = *(v42 + 16);
        v73 = *(v42 + 24);
        v96 = v74 + 1;
        if (v74 >= v73 >> 1)
        {
          v42 = sub_1E172E40C(v73 > 1, v74 + 1, 1, v42);
        }

        v75 = v103;
        v76 = *(v103 + 8);
        v77 = v62;
        v78 = v102;
        v76(v77, v102);
        v79 = v63;
        v80 = v63;
        v81 = v97;
        v97(v94, v79);
        v76(v95, v78);
        v81(v100, v80);
        sub_1E1308058(v101, &qword_1ECEB36B0);
        *(v42 + 16) = v96;
        result = (*(v75 + 32))(v42 + v87 + v74 * v89, v92, v78);
        goto LABEL_28;
      }

      v64 = sub_1E1AF74AC();

      if (v64)
      {
        goto LABEL_21;
      }
    }

    v83 = v97;
    v97(v58, v48);
    (*(v103 + 8))(v45, v60);
    v83(v100, v48);
    v43 = v61;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E14A4CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a4;
  v50 = a5;
  v60 = a3;
  v51 = a2;
  v6 = sub_1E1AF3ABC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v53 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v48 = &v47 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v57 = &v47 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v16 = &v47 - v15;
  v17 = *(a1 + 24);
  v18 = *(v17 + 16);
  v55 = v7;
  v59 = v18;
  if (!v18)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_24:
    if (!v60 || (v51 != 0x6973736572706D69 || v60 != 0xEB00000000736E6FLL) && (sub_1E1AF74AC() & 1) == 0)
    {
      if (*(v20 + 16))
      {
        v40 = v50;
        (*(v7 + 16))(v50, v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

LABEL_58:
        v46 = 0;
      }

      else
      {

        v46 = 1;
        v40 = v50;
      }

      return (*(v7 + 56))(v40, v46, 1, v6);
    }

    v32 = v48;
    sub_1E1AF3B3C();
    v33 = sub_1E1AF3AAC();
    v34 = *(v7 + 8);
    v34(v32, v6);
    if (*(v33 + 16) && (v35 = sub_1E13018F8(0x6973736572706D69, 0xEF65756575516E6FLL), (v36 & 1) != 0))
    {
      sub_1E137A5C4(*(v33 + 56) + 32 * v35, v63);

      result = swift_dynamicCast();
      v37 = v61;
      if (!result)
      {
        v37 = 0;
      }

      v60 = v37;
      if (result)
      {
        v38 = v62;
      }

      else
      {
        v38 = 0;
      }

      v39 = *(v20 + 16);
      if (!v39)
      {
        goto LABEL_54;
      }
    }

    else
    {

      v60 = 0;
      v38 = 0;
      v39 = *(v20 + 16);
      if (!v39)
      {
LABEL_54:

        v46 = 1;
        v40 = v50;
        v7 = v55;
        return (*(v7 + 56))(v40, v46, 1, v6);
      }
    }

    v41 = 0;
    while (1)
    {
      if (v41 >= *(v20 + 16))
      {
        goto LABEL_63;
      }

      (*(v55 + 16))(v53, v20 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v41, v6);
      v42 = sub_1E1AF3AAC();
      if (*(v42 + 16) && (v43 = sub_1E13018F8(0x6973736572706D69, 0xEF65756575516E6FLL), (v44 & 1) != 0))
      {
        sub_1E137A5C4(*(v42 + 56) + 32 * v43, v63);

        if (swift_dynamicCast())
        {
          if (v38)
          {
            if (v61 == v60 && v38 == v62)
            {

LABEL_61:

LABEL_57:
              v7 = v55;
              v40 = v50;
              (*(v55 + 32))(v50, v53, v6);
              goto LABEL_58;
            }

            v45 = sub_1E1AF74AC();

            if (v45)
            {

              goto LABEL_61;
            }
          }

          else
          {
          }

          goto LABEL_43;
        }
      }

      else
      {
      }

      if (!v38)
      {

        goto LABEL_57;
      }

LABEL_43:
      ++v41;
      result = (v34)(v53, v6);
      if (v39 == v41)
      {
        goto LABEL_54;
      }
    }
  }

  v19 = 0;
  v58 = v7 + 16;
  v54 = (v7 + 8);
  v20 = MEMORY[0x1E69E7CC0];
  v56 = (v7 + 32);
  v52 = v6;
  while (v19 < *(v17 + 16))
  {
    v21 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v22 = *(v7 + 72);
    (*(v7 + 16))(v16, v17 + v21 + v22 * v19, v6);
    v23 = sub_1E1AF3AAC();
    if (!*(v23 + 16) || (v24 = sub_1E13018F8(0x707954746E657665, 0xE900000000000065), (v25 & 1) == 0))
    {

LABEL_15:
      if (!v60)
      {
        goto LABEL_16;
      }

      goto LABEL_4;
    }

    sub_1E137A5C4(*(v23 + 56) + 32 * v24, v63);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_15;
    }

    if (v60)
    {
      if (v61 == v51 && v62 == v60)
      {

LABEL_16:
        v26 = *v56;
        (*v56)(v57, v16, v6);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v64 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E135C6C4(0, *(v20 + 16) + 1, 1);
          v20 = v64;
        }

        v29 = *(v20 + 16);
        v28 = *(v20 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1E135C6C4(v28 > 1, v29 + 1, 1);
          v20 = v64;
        }

        *(v20 + 16) = v29 + 1;
        v30 = v20 + v21 + v29 * v22;
        v6 = v52;
        result = (v26)(v30, v57, v52);
        v7 = v55;
        goto LABEL_5;
      }

      v31 = sub_1E1AF74AC();

      if (v31)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

LABEL_4:
    result = (*v54)(v16, v6);
LABEL_5:
    if (v59 == ++v19)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t PageChangeMetrics.deinit()
{

  return v0;
}

uint64_t PageChangeMetrics.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E14A543C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for PageChangeMetrics();
  v7 = swift_allocObject();
  result = PageChangeMetrics.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E14A5508(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E1AF3C1C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E14A554C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB36B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E14A55BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_1E16076FC(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_1E1301CF0(v44, v42);
  v14 = *a5;
  result = sub_1E13018F8(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_1E168807C(v20, a4 & 1);
    result = sub_1E13018F8(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1E1AF757C();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_1E14154D8();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_1E1301CF0(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_1E1301CF0(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_1E16076FC(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_1E1301CF0(v44, v42);
        v32 = *a5;
        result = sub_1E13018F8(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_1E168807C(v36, 1);
          result = sub_1E13018F8(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_1(v31);
          sub_1E1301CF0(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_1E1301CF0(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_1E16076FC(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_1E1337ECC();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t ArcadeButtonNameFieldsProvider.init(arcadeSubscriptionManager:appStateController:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(type metadata accessor for ArcadeButtonNameFieldsProvider() + 24);
  v9 = *MEMORY[0x1E69AB4D8];
  v10 = sub_1E1AF524C();
  result = (*(*(v10 - 8) + 104))(&a4[v8], v9, v10);
  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = a3;
  return result;
}

uint64_t type metadata accessor for ArcadeButtonNameFieldsProvider()
{
  result = qword_1EE1E8420;
  if (!qword_1EE1E8420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArcadeButtonNameFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArcadeButtonNameFieldsProvider() + 24);
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArcadeButtonNameFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v3 = *v1 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  v11 = v4;
  LOBYTE(v12) = v3;
  sub_1E1361A40(v4, v3);
  v5 = MetricsFieldsContext.adamIdString.getter();
  v7 = sub_1E14A5B58(&v11, v5, v6);
  v9 = v8;

  v13 = MEMORY[0x1E69E6158];
  v11 = v7;
  v12 = v9;
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_1E1AF4A1C();
  sub_1E1361A60(v4, v3);
  return __swift_destroy_boxed_opaque_existential_1(&v11);
}

uint64_t sub_1E14A5B58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8) >> 6;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      return sub_1E14A5C2C(a2, a3);
    }

    else
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v4 = *a1;
    if (v3)
    {
      v6 = *(v4 + 16);
      v7 = *(v4 + 24);
      v8 = v6;
      v9 = v7;
      return sub_1E14A5B58(&v8);
    }

    else if (*a1)
    {
      if (*a1 == 1)
      {
        return 7959156;
      }

      else
      {
        return 0x6269726373627573;
      }
    }

    else
    {
      return 0xD000000000000012;
    }
  }
}

uint64_t sub_1E14A5C2C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 2036427888;
  }

  v5 = *(v2 + 16);
  ObjectType = swift_getObjectType();
  v14[0] = a1;
  v14[1] = a2;
  (*(v5 + 56))(v14, ObjectType, v5);
  v8 = v7;
  v9 = swift_getObjectType();
  (*(v8 + 16))(v15, v9, v8);
  v10 = v18 >> 60;
  if ((v18 >> 60) <= 4)
  {
    if (v10 != 2)
    {
      if (v10 == 3)
      {
        sub_1E139CEA8(v15);
        swift_unknownObjectRelease();
        return 0x64616F6C6E776F64;
      }

      goto LABEL_16;
    }

    sub_1E139CEA8(v15);
    swift_unknownObjectRelease();
    return 0x657461647075;
  }

  else if (v10 == 5)
  {
    sub_1E139CEA8(v15);
    swift_unknownObjectRelease();
    return 0x6C65636E6163;
  }

  else
  {
    if (v10 != 7)
    {
      if (v10 == 8)
      {
        if ((v11 = v17 | v19, v12 = v15[3] | v15[2] | v15[1], v18 == 0x8000000000000000) && !(v11 | v15[0] | v16 | v12) || v18 == 0x8000000000000000 && v15[0] == 4 && !(v11 | v16 | v12))
        {
          swift_unknownObjectRelease();
          return 7959906;
        }
      }

LABEL_16:
      sub_1E139CEA8(v15);
      swift_unknownObjectRelease();
      return 0x7379616C70;
    }

    sub_1E139CEA8(v15);
    swift_unknownObjectRelease();
    return 1852141679;
  }
}

uint64_t sub_1E14A5E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1E1AF524C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_1E14A5EE0()
{
  result = type metadata accessor for ArcadeSubscriptionManager();
  if (v1 <= 0x3F)
  {
    result = sub_1E14A5F7C();
    if (v2 <= 0x3F)
    {
      result = sub_1E1AF524C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1E14A5F7C()
{
  result = qword_1EE1E17B0;
  if (!qword_1EE1E17B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE1E17B0);
  }

  return result;
}

uint64_t static OnboardingStep.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = *(a4 + 24);
  v6(v9, a3, a4);
  v6(v8, a3, v4);
  LOBYTE(v4) = MEMORY[0x1E68FFC60](v9, v8);
  sub_1E134B88C(v8);
  sub_1E134B88C(v9);
  return v4 & 1;
}

uint64_t OnboardingStep.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(v4, a2, a3);
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_1E134B88C(v4);
}

AppStoreKit::StyledText::MediaType_optional __swiftcall StyledText.MediaType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StyledText.MediaType.rawValue.getter()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0x72616D2F74786574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x616C702F74786574;
  }
}

uint64_t sub_1E14A61E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000015;
  v4 = 0x80000001E1B561C0;
  if (v2 == 1)
  {
    v5 = 0x80000001E1B561C0;
  }

  else
  {
    v3 = 0x72616D2F74786574;
    v5 = 0xED00006E776F646BLL;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x616C702F74786574;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA00000000006E69;
  }

  v8 = 0xD000000000000015;
  if (*a2 != 1)
  {
    v8 = 0x72616D2F74786574;
    v4 = 0xED00006E776F646BLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x616C702F74786574;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA00000000006E69;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E14A62F8()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E14A63B0()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E14A6454()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E14A6514(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006E69;
  v4 = 0x80000001E1B561C0;
  v5 = 0xD000000000000015;
  if (v2 != 1)
  {
    v5 = 0x72616D2F74786574;
    v4 = 0xED00006E776F646BLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x616C702F74786574;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t StyledText.rawText.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1E14A65C4()
{
  v1 = (v0 + OBJC_IVAR____TtC11AppStoreKit10StyledText____lazy_storage___plainText);
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit10StyledText____lazy_storage___plainText + 8))
  {
    v2 = *v1;
  }

  else
  {
    v2 = sub_1E14A6640(v0);
    *v1 = v2;
    v1[1] = v3;
  }

  return v2;
}

uint64_t sub_1E14A6640(uint64_t a1)
{
  v2 = sub_1E1AEF81C();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AEF82C();
  v45 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AEF84C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B50);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v43 - v13;
  v15 = sub_1E1AEF91C();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v22 = &v43 - v21;
  v23 = *(a1 + 32);
  v24 = *(a1 + 16);
  v25 = *(a1 + 24);
  if (v23)
  {
    if (v23 == 1)
    {
      v26 = objc_opt_self();

      v27 = [v26 systemFontOfSize_];
      v28 = _sSo16NSParagraphStyleC11AppStoreKitE4nqmlABvgZ_0();
      v29 = _sSo16NSParagraphStyleC11AppStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
      v30 = _sSo16NSParagraphStyleC11AppStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

      *&v48 = 10;
      *(&v48 + 1) = 0xE100000000000000;
      v49 = v27;
      v50 = v28;
      v51 = 161644770;
      v52 = 0xA400000000000000;
      v53 = v29;
      v54 = 606245;
      v55 = 0xE300000000000000;
      v56 = v30;
      v31 = objc_allocWithZone(type metadata accessor for NqmlStringGenerator());
      v32 = sub_1E1ADBC74(v24, v25, &v48);
      [*&v32[OBJC_IVAR____TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator_parser] parse];
      v33 = OBJC_IVAR____TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator_accumulator;
      v34 = [*&v32[OBJC_IVAR____TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator_accumulator] mutableString];
      if (qword_1EE1E3468 != -1)
      {
        swift_once();
      }

      sub_1E16E354C(qword_1EE2160F0);

      v35 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];
      v36 = [v35 string];
      v24 = sub_1E1AF5DFC();
    }

    else
    {
      v43 = v20;
      v44 = v19;
      v37 = sub_1E1AEFCCC();
      (*(*(v37 - 8) + 56))(v11, 1, 1, v37);
      (*(v45 + 104))(v7, *MEMORY[0x1E6968750], v5);
      (*(v46 + 104))(v4, *MEMORY[0x1E6968728], v47);

      sub_1E1AEF83C();
      sub_1E1AEF8EC();
      v40 = v43;
      v39 = v44;
      (*(v43 + 56))(v14, 0, 1, v44);
      (*(v40 + 32))(v22, v14, v39);
      sub_1E13006E4(0, &qword_1EE1E3420);
      (*(v40 + 16))(v18, v22, v39);
      v41 = sub_1E1AF69DC();
      v42 = [v41 string];
      v24 = sub_1E1AF5DFC();

      (*(v40 + 8))(v22, v39);
    }
  }

  else
  {
  }

  return v24;
}

uint64_t sub_1E14A6C70(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC11AppStoreKit10StyledText____lazy_storage___plainText);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t (*sub_1E14A6C8C(uint64_t *a1))(void *a1)
{
  a1[2] = v1;
  *a1 = sub_1E14A65C4();
  a1[1] = v3;
  return sub_1E14A6CD4;
}

uint64_t sub_1E14A6CD4(void *a1)
{
  v1 = a1[1];
  v2 = (a1[2] + OBJC_IVAR____TtC11AppStoreKit10StyledText____lazy_storage___plainText);
  *v2 = *a1;
  v2[1] = v1;
}

uint64_t StyledText.__allocating_init(rawText:rawTextType:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = swift_allocObject();
  LOBYTE(a3) = *a3;
  *(v6 + 40) = sub_1E15A0328(MEMORY[0x1E69E7CC0]);
  v7 = OBJC_IVAR____TtC11AppStoreKit10StyledText_cachedAttributedString;
  v8 = sub_1E1AEF91C();
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  v9 = (v6 + OBJC_IVAR____TtC11AppStoreKit10StyledText____lazy_storage___plainText);
  *v9 = 0;
  v9[1] = 0;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  return v6;
}

uint64_t StyledText.init(rawText:rawTextType:)(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  *(v3 + 40) = sub_1E15A0328(MEMORY[0x1E69E7CC0]);
  v7 = OBJC_IVAR____TtC11AppStoreKit10StyledText_cachedAttributedString;
  v8 = sub_1E1AEF91C();
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = (v3 + OBJC_IVAR____TtC11AppStoreKit10StyledText____lazy_storage___plainText);
  *v9 = 0;
  v9[1] = 0;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = v6;
  return v3;
}

uint64_t StyledText.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v29 = a2;
  v3 = v2;
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  sub_1E1AF381C();
  v12 = sub_1E1AF37CC();
  v14 = v13;
  v15 = *(v6 + 8);
  v15(v11, v5);
  if (v14)
  {
    v16 = v12;
    sub_1E1AF381C();
    sub_1E1423CD4();
    sub_1E1AF369C();
    v15(v8, v5);
    v17 = v30;
    type metadata accessor for StyledText();
    v18 = swift_allocObject();
    v19 = sub_1E15A0328(MEMORY[0x1E69E7CC0]);
    v20 = sub_1E1AF39DC();
    (*(*(v20 - 8) + 8))(v29, v20);
    v15(a1, v5);
    *(v18 + 40) = v19;
    v21 = OBJC_IVAR____TtC11AppStoreKit10StyledText_cachedAttributedString;
    v22 = sub_1E1AEF91C();
    (*(*(v22 - 8) + 56))(v18 + v21, 1, 1, v22);
    result = v18;
    v24 = (v18 + OBJC_IVAR____TtC11AppStoreKit10StyledText____lazy_storage___plainText);
    *v24 = 0;
    v24[1] = 0;
    *(v18 + 16) = v16;
    *(v18 + 24) = v14;
    *(v18 + 32) = v17;
  }

  else
  {
    v25 = sub_1E1AF5A7C();
    sub_1E14A7DE0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v26 = 0x74786554776172;
    v26[1] = 0xE700000000000000;
    v26[2] = v3;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x1E69AB690], v25);
    swift_willThrow();
    v27 = sub_1E1AF39DC();
    (*(*(v27 - 8) + 8))(v29, v27);
    return (v15)(a1, v5);
  }

  return result;
}

id sub_1E14A7200(void *a1)
{
  v2 = v1;
  v4 = sub_1E1AEF81C();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AEF82C();
  v68 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AEF84C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v61 - v14;
  swift_beginAccess();
  v16 = *(v1 + 40);

  v17 = a1;
  v18 = sub_1E158EC84(a1, v16);

  if (!v18)
  {
    v62 = v15;
    v63 = v12;
    v64 = v7;
    v65 = v9;
    v66 = v6;
    v19 = v17;
    v20 = _sSo16NSParagraphStyleC11AppStoreKitE4nqmlABvgZ_0();
    v21 = _sSo16NSParagraphStyleC11AppStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
    v22 = _sSo16NSParagraphStyleC11AppStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();
    *&v73 = 10;
    *(&v73 + 1) = 0xE100000000000000;
    v67 = v19;
    *&v74 = v19;
    *(&v74 + 1) = v20;
    *&v75 = 161644770;
    *(&v75 + 1) = 0xA400000000000000;
    *&v76 = v21;
    *(&v76 + 1) = 606245;
    *&v77 = 0xE300000000000000;
    *(&v77 + 1) = v22;
    v23 = v2;
    if (!*(v2 + 32))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB9C0);
      inited = swift_initStackObject();
      v31 = MEMORY[0x1E69DB688];
      *(inited + 16) = xmmword_1E1B02CD0;
      v32 = *v31;
      *(inited + 32) = *v31;
      v33 = *(&v74 + 1);
      v34 = sub_1E13006E4(0, &qword_1EE1E3458);
      *(inited + 40) = v33;
      v35 = *MEMORY[0x1E69DB648];
      *(inited + 64) = v34;
      *(inited + 72) = v35;
      v36 = v74;
      *(inited + 104) = sub_1E13006E4(0, &qword_1EE1E32B0);
      *(inited + 80) = v36;
      v37 = v32;
      v38 = v33;
      v39 = v35;
      v40 = v36;
      v27 = sub_1E159D27C(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB9D0);
      swift_arrayDestroy();
      v28 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v41 = sub_1E1AF5DBC();
      type metadata accessor for Key(0);
      sub_1E14A7DE0(&qword_1EE1E33D0, type metadata accessor for Key);
      v42 = sub_1E1AF5C6C();

      v18 = [v28 initWithString:v41 attributes:v42];

      goto LABEL_8;
    }

    if (*(v2 + 32) != 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB9C0);
      v43 = swift_initStackObject();
      v44 = MEMORY[0x1E69DB688];
      *(v43 + 16) = xmmword_1E1B02CD0;
      v45 = *v44;
      *(v43 + 32) = *v44;
      v46 = *(&v74 + 1);
      v47 = sub_1E13006E4(0, &qword_1EE1E3458);
      *(v43 + 40) = v46;
      v48 = *MEMORY[0x1E69DB648];
      *(v43 + 64) = v47;
      *(v43 + 72) = v48;
      v49 = v74;
      *(v43 + 104) = sub_1E13006E4(0, &qword_1EE1E32B0);
      *(v43 + 80) = v49;
      v50 = v45;
      v51 = v46;
      v52 = v48;
      v53 = v49;
      sub_1E159D27C(v43);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB9D0);
      swift_arrayDestroy();
      sub_1E13006E4(0, &qword_1EE1E3420);
      v28 = *(v23 + 16);
      v54 = sub_1E1AEFCCC();
      (*(*(v54 - 8) + 56))(v62, 1, 1, v54);
      (*(v68 + 104))(v65, *MEMORY[0x1E6968750], v64);
      (*(v69 + 104))(v66, *MEMORY[0x1E6968728], v70);

      v27 = v63;
      sub_1E1AEF83C();
      sub_1E1AF69CC();
      v18 = sub_1E1AF69EC();
      goto LABEL_8;
    }

    v24 = *(v2 + 16);
    v25 = *(v2 + 24);
    v72[2] = v75;
    v72[3] = v76;
    v72[4] = v77;
    v72[0] = v73;
    v72[1] = v74;
    v26 = objc_allocWithZone(type metadata accessor for NqmlStringGenerator());

    sub_1E13E3AC8(&v73, v71);
    v27 = sub_1E1ADBC74(v24, v25, v72);
    [*(v27 + OBJC_IVAR____TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator_parser) parse];
    v28 = OBJC_IVAR____TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator_accumulator;
    v29 = [*(v27 + OBJC_IVAR____TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator_accumulator) mutableString];
    if (qword_1EE1E3468 != -1)
    {
      goto LABEL_18;
    }

    while (1)
    {
      sub_1E16E354C(qword_1EE2160F0);

      v18 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];
LABEL_8:
      swift_beginAccess();
      v55 = *(v23 + 40);
      if ((v55 & 0xC000000000000001) == 0)
      {
        break;
      }

      if (v55 < 0)
      {
        v29 = *(v23 + 40);
      }

      else
      {
        v29 = (v55 & 0xFFFFFFFFFFFFFF8);
      }

      v56 = v18;
      v57 = sub_1E1AF71CC();
      if (!__OFADD__(v57, 1))
      {
        *(v23 + 40) = sub_1E14A7B48(v29, v57 + 1);
        goto LABEL_15;
      }

      __break(1u);
LABEL_18:
      swift_once();
    }

    v58 = v18;
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71[0] = *(v23 + 40);
    sub_1E159A06C(v18, v67, isUniquelyReferenced_nonNull_native);
    *(v23 + 40) = v71[0];
    swift_endAccess();
    sub_1E14A7E28(&v73);
  }

  return v18;
}

uint64_t StyledText.deinit()
{

  sub_1E142E974(v0 + OBJC_IVAR____TtC11AppStoreKit10StyledText_cachedAttributedString);

  return v0;
}

uint64_t StyledText.__deallocating_deinit()
{

  sub_1E142E974(v0 + OBJC_IVAR____TtC11AppStoreKit10StyledText_cachedAttributedString);

  return swift_deallocClassInstance();
}

uint64_t sub_1E14A7B1C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = StyledText.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E14A7B48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3818);
    v2 = sub_1E1AF72BC();
    v19 = v2;
    sub_1E1AF71BC();
    v3 = sub_1E1AF71EC();
    if (v3)
    {
      v4 = v3;
      sub_1E13006E4(0, &qword_1EE1E32B0);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1E13006E4(0, &qword_1EE1E3420);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1E168BE64(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1E1AF6CFC();
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
        v5 = sub_1E1AF71EC();
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

uint64_t type metadata accessor for StyledText()
{
  result = qword_1EE1F7BB0;
  if (!qword_1EE1F7BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E14A7DE0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E14A7E80()
{
  result = qword_1ECEB48F0;
  if (!qword_1ECEB48F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB48F0);
  }

  return result;
}

void sub_1E14A7EDC()
{
  sub_1E148D2D0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

BOOL RestrictionsProtocol.doesAllow(_:properties:)(char *a1, uint64_t a2)
{
  v10 = *a1;
  if (a2)
  {
    v3 = *(a2 + 40);
    v2 = *(a2 + 48);
    v4 = *(a2 + 128);
    v5 = *(a2 + 136);
    if (*(a2 + 16) <= 1u || *(a2 + 16) == 2)
    {
      v6 = sub_1E1AF74AC();
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
    v4 = 0;
    v3 = 0;
    v2 = 0;
    v5 = 1;
  }

  v7.value._countAndFlagsBits = v3;
  v7.value._object = v2;
  v11.value = v4;
  v11.is_nil = v5;
  v8 = RestrictionsProtocol.doesAllow(_:bundleId:contentRating:isArcadeApp:)(&v10, v7, v11, v6 & 1);

  return v8;
}

uint64_t RestrictionsCheckIntent.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

Swift::Bool __swiftcall RestrictionsProtocol.doesAllow(_:bundleId:contentRating:isArcadeApp:)(AppStoreKit::RestrictionsCheckIntent _, Swift::String_optional bundleId, Swift::Int_optional contentRating, Swift::Bool isArcadeApp)
{
  v6 = v5;
  v7 = v4;
  is_nil = contentRating.is_nil;
  value = contentRating.value;
  object = bundleId.value._object;
  countAndFlagsBits = bundleId.value._countAndFlagsBits;
  v13 = *_;
  if (((*(v5 + 24))() & 1) == 0 || ((*(v6 + 40))(v7, v6) & 1) != 0 && !isArcadeApp)
  {
    v14 = 0;
    return v14 & 1;
  }

  if (v13)
  {
    if (is_nil)
    {
      v14 = 1;
      return v14 & 1;
    }

LABEL_11:
    v17.value._countAndFlagsBits = countAndFlagsBits;
    v17.value._object = object;
    v14 = !RestrictionsProtocol.isAgeRestricted(bundleId:contentRating:)(v17, value);
    return v14 & 1;
  }

  v16 = (*(v6 + 48))(v7, v6);
  v14 = v16 ^ 1;
  if ((v16 & 1) == 0 && !is_nil)
  {
    goto LABEL_11;
  }

  return v14 & 1;
}

Swift::Bool __swiftcall RestrictionsProtocol.isAgeRestricted(bundleId:contentRating:)(Swift::String_optional bundleId, Swift::Int contentRating)
{
  v4 = v3;
  v5 = v2;
  object = bundleId.value._object;
  countAndFlagsBits = bundleId.value._countAndFlagsBits;
  if ((*(v3 + 24))())
  {
    if ((*(v4 + 8))(v5, v4) >= contentRating)
    {
      return 0;
    }

    v9 = ASKDeviceTypeGetCurrent();
    v10 = sub_1E1AF5DFC();
    v12 = v11;
    if (v10 == sub_1E1AF5DFC() && v12 == v13)
    {

      return 0;
    }

    v15 = sub_1E1AF74AC();

    if (v15)
    {
      return 0;
    }

    if (object)
    {
      v17 = (*(v4 + 16))(v5, v4);
      if (*(v17 + 16) && (v18 = sub_1E13018F8(countAndFlagsBits, object), (v19 & 1) != 0))
      {
        v20 = *(*(v17 + 56) + 8 * v18);

        if (v20 >= contentRating)
        {
          return 0;
        }
      }

      else
      {
      }
    }
  }

  return 1;
}

unint64_t sub_1E14A851C()
{
  result = qword_1ECEB48F8;
  if (!qword_1ECEB48F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB48F8);
  }

  return result;
}

unint64_t sub_1E14A8574()
{
  result = qword_1ECEB4900;
  if (!qword_1ECEB4900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB4908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4900);
  }

  return result;
}

void sub_1E14A85E8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E1AF5DBC();
  v6 = [v2 arrayForKey_];

  if (v6 && (v7 = sub_1E1AF621C(), v6, v8 = sub_1E1679410(v7), , v8))
  {
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v17[0] = a1;
  v17[1] = a2;
  MEMORY[0x1EEE9AC00](v9);
  v16[2] = v17;
  v10 = sub_1E14F2168(sub_1E14A937C, v16, v8);

  if ((v10 & 1) == 0)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1E130C06C(0, *(v8 + 16) + 1, 1, v8);
    }

    v12 = *(v8 + 16);
    v11 = *(v8 + 24);
    if (v12 >= v11 >> 1)
    {
      v8 = sub_1E130C06C((v11 > 1), v12 + 1, 1, v8);
    }

    *(v8 + 16) = v12 + 1;
    v13 = v8 + 16 * v12;
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;
  }

  v14 = sub_1E1AF620C();

  v15 = sub_1E1AF5DBC();
  [v2 setObject:v14 forKey:v15];
}

uint64_t sub_1E14A87E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *(a1 + 24);
}

uint64_t sub_1E14A8844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1E1AF320C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E1AF324C();
  v12 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(v4 + 16);
  sub_1E13BFF54(a3, v23);
  v15 = swift_allocObject();
  v16 = v23[1];
  *(v15 + 40) = v23[0];
  *(v15 + 16) = v4;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 56) = v16;
  aBlock[4] = sub_1E14A9360;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_19;
  v17 = _Block_copy(aBlock);

  sub_1E1AF322C();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v14, v11, v17);
  _Block_release(v17);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v20);
}

uint64_t sub_1E14A8B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1E13BFF54(a4, &v8);
  if (v9)
  {
    sub_1E1301CF0(&v8, &v10);
  }

  else
  {
    v6 = sub_1E13609A4(MEMORY[0x1E69E7CC0]);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B50);
    *&v10 = v6;
    if (v9)
    {
      sub_1E13E44F8(&v8);
    }
  }

  swift_beginAccess();

  sub_1E138692C(&v10, a2, a3);
  return swift_endAccess();
}

uint64_t sub_1E14A8C00(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1E1AF320C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E1AF324C();
  v12 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v15 = [objc_opt_self() standardUserDefaults];
    sub_1E14A85E8(a1, a2);
  }

  v19[1] = *(v4 + 16);
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = sub_1E14A9370;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_7_0;
  v17 = _Block_copy(aBlock);

  sub_1E1AF322C();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v14, v11, v17);
  _Block_release(v17);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v20);
}

uint64_t sub_1E14A8F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = sub_1E13018F8(a2, a3);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(a1 + 24);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1E14154D8();
    }

    sub_1E1301CF0((*(v10 + 56) + 32 * v8), v12);
    sub_1E1412DF0(v8, v10);
    *(a1 + 24) = v10;
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  swift_endAccess();
  return sub_1E13E44F8(v12);
}

uint64_t sub_1E14A8FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 24);
  if (*(v8 + 16) && (v9 = sub_1E13018F8(a2, a3), (v10 & 1) != 0))
  {
    sub_1E137A5C4(*(v8 + 56) + 32 * v9, &v13);
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  swift_endAccess();
  v11 = *(&v14 + 1) != 0;
  result = sub_1E13E44F8(&v13);
  *a4 = v11;
  return result;
}

uint64_t sub_1E14A9098()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E14A90FC()
{
  v9 = sub_1E1AF68DC();
  v1 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E1361A80();
  v8[0] = "disabledEngagementFeatures";
  v8[1] = v6;
  sub_1E1AF322C();
  v10 = MEMORY[0x1E69E7CC0];
  sub_1E130292C(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90);
  sub_1E1AF6EEC();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v9);
  *(v0 + 16) = sub_1E1AF692C();
  *(v0 + 24) = sub_1E1303A74(MEMORY[0x1E69E7CC0]);
  return v0;
}

uint64_t sub_1E14A939C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1E1AF5DBC();
  v2 = [v0 arrayForKey_];

  if (v2 && (v3 = sub_1E1AF621C(), v2, v4 = sub_1E1679410(v3), , v4))
  {
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1E13C4BB8(v4);

  return v5;
}

uint64_t EditorsChoice.__allocating_init(id:showsBadge:title:notes:isCollapsed:clickAction:impressionMetrics:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v10) = a7;
  v32 = a3;
  v33 = a4;
  v31 = a2;
  v30 = a9;
  v14 = sub_1E1AEFEAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 64) = 0u;
  *(v18 + 80) = 0u;
  *(v18 + 96) = 0;
  sub_1E134FD1C(a1, &v36, &unk_1ECEB5670);
  if (*(&v37 + 1))
  {
    v19 = v37;
    *(v18 + 104) = v36;
    *(v18 + 120) = v19;
    *(v18 + 136) = v38;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v28 = a5;
    v21 = a8;
    v22 = v20;
    v29 = v10;
    v10 = a6;
    v24 = v23;
    (*(v15 + 8))(v17, v14);
    v34 = v22;
    v35 = v24;
    a8 = v21;
    a5 = v28;
    a6 = v10;
    LOBYTE(v10) = v29;
    sub_1E1AF6F6C();
    sub_1E1308058(&v36, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  sub_1E134B7C8(v30, v18 + OBJC_IVAR____TtC11AppStoreKit13EditorsChoice_impressionMetrics);
  *(v18 + 16) = v31 & 1;
  v25 = v33;
  *(v18 + 24) = v32;
  *(v18 + 32) = v25;
  *(v18 + 40) = a5;
  *(v18 + 48) = a6;
  *(v18 + 56) = (v10 == 2) | v10 & 1;
  swift_beginAccess();
  *(v18 + 64) = a8;
  return v18;
}

uint64_t EditorsChoice.init(id:showsBadge:title:notes:isCollapsed:clickAction:impressionMetrics:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  LODWORD(v12) = a7;
  v33 = a3;
  v34 = a4;
  v32 = a2;
  v31 = a9;
  v16 = sub_1E1AEFEAC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v10 + 64) = 0u;
  *(v10 + 96) = 0;
  *(v10 + 80) = 0u;
  sub_1E134FD1C(a1, &v37, &unk_1ECEB5670);
  if (*(&v38 + 1))
  {
    v40 = v37;
    v41 = v38;
    v42 = v39;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v29 = a5;
    v21 = a8;
    v22 = v20;
    v30 = v12;
    v12 = a6;
    v24 = v23;
    (*(v17 + 8))(v19, v16);
    v35 = v22;
    v36 = v24;
    a8 = v21;
    a5 = v29;
    a6 = v12;
    LOBYTE(v12) = v30;
    sub_1E1AF6F6C();
    sub_1E1308058(&v37, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v25 = v41;
  *(v10 + 104) = v40;
  *(v10 + 120) = v25;
  *(v10 + 136) = v42;
  sub_1E134B7C8(v31, v10 + OBJC_IVAR____TtC11AppStoreKit13EditorsChoice_impressionMetrics);
  *(v10 + 16) = v32 & 1;
  v26 = v34;
  *(v10 + 24) = v33;
  *(v10 + 32) = v26;
  *(v10 + 40) = a5;
  *(v10 + 48) = a6;
  *(v10 + 56) = (v12 == 2) | v12 & 1;
  swift_beginAccess();
  *(v10 + 64) = a8;

  return v10;
}

uint64_t EditorsChoice.title.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t EditorsChoice.notes.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t EditorsChoice.deinit()
{

  sub_1E1308058(v0 + 72, &qword_1ECEB2DF0);
  sub_1E134B88C(v0 + 104);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit13EditorsChoice_impressionMetrics, &unk_1ECEB1770);
  return v0;
}

uint64_t EditorsChoice.__deallocating_deinit()
{

  sub_1E1308058(v0 + 72, &qword_1ECEB2DF0);
  sub_1E134B88C(v0 + 104);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit13EditorsChoice_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t sub_1E14A9B20@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1E14A9B88(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E14A9B88(char *a1, uint64_t a2)
{
  v77 = a2;
  v63 = sub_1E1AEFEAC();
  v64 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v67 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v84 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v62 - v8;
  v70 = sub_1E1AF380C();
  v68 = *(v70 - 8);
  v10 = MEMORY[0x1EEE9AC00](v70);
  v72 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v71 = &v62 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v69 = &v62 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v66 = &v62 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v65 = &v62 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v62 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v76 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v62 - v25;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v73 = v5;
  v27 = *(v5 + 16);
  v28 = v9;
  v29 = v77;
  v27(v28, v77, v4);
  v75 = v26;
  v30 = v21;
  sub_1E1AF464C();
  v31 = v29;
  v32 = v65;
  v74 = v4;
  v27(v84, v31, v4);
  v33 = a1;
  sub_1E1AF381C();
  v34 = sub_1E1AF37CC();
  if (v35)
  {
    v36 = v67;
    *&v80 = v34;
    *(&v80 + 1) = v35;
  }

  else
  {
    v37 = v67;
    sub_1E1AEFE9C();
    v38 = sub_1E1AEFE7C();
    v40 = v39;
    v36 = v37;
    (*(v64 + 8))(v37, v63);
    *&v80 = v38;
    *(&v80 + 1) = v40;
  }

  sub_1E1AF6F6C();
  v41 = *(v68 + 8);
  v42 = v32;
  v43 = v70;
  v41(v42, v70);
  v44 = v66;
  sub_1E1AF381C();
  LODWORD(v70) = sub_1E1AF370C();
  v41(v44, v43);
  v45 = v69;
  sub_1E1AF381C();
  v68 = sub_1E1AF37CC();
  v67 = v46;
  v41(v45, v43);
  v47 = v71;
  sub_1E1AF381C();
  v69 = sub_1E1AF37CC();
  v66 = v48;
  v41(v47, v43);
  v49 = v72;
  sub_1E1AF381C();
  LODWORD(v71) = sub_1E1AF370C();
  v41(v49, v43);
  type metadata accessor for Action();
  sub_1E1AF381C();
  v72 = static Action.tryToMakeInstance(byDeserializing:using:)(v30, v84);
  v50 = v43;
  v41(v30, v43);
  sub_1E134FD1C(v75, v76, &unk_1ECEB1770);
  type metadata accessor for EditorsChoice();
  v51 = swift_allocObject();
  *(v51 + 64) = 0u;
  *(v51 + 80) = 0u;
  *(v51 + 96) = 0;
  sub_1E134FD1C(v83, &v80, &unk_1ECEB5670);
  if (*(&v81 + 1))
  {
    v52 = v81;
    *(v51 + 104) = v80;
    *(v51 + 120) = v52;
    *(v51 + 136) = v82;
  }

  else
  {
    v53 = v36;
    sub_1E1AEFE9C();
    v54 = sub_1E1AEFE7C();
    v56 = v55;
    (*(v64 + 8))(v53, v63);
    v78 = v54;
    v79 = v56;
    sub_1E1AF6F6C();
    sub_1E1308058(&v80, &unk_1ECEB5670);
  }

  v57 = v74;
  v58 = *(v73 + 8);
  v58(v77, v74);
  v41(v33, v50);
  sub_1E1308058(v83, &unk_1ECEB5670);
  v58(v84, v57);
  sub_1E1308058(v75, &unk_1ECEB1770);
  sub_1E134B7C8(v76, v51 + OBJC_IVAR____TtC11AppStoreKit13EditorsChoice_impressionMetrics);
  *(v51 + 16) = v70 & 1;
  v59 = v67;
  *(v51 + 24) = v68;
  *(v51 + 32) = v59;
  v60 = v66;
  *(v51 + 40) = v69;
  *(v51 + 48) = v60;
  *(v51 + 56) = (v71 == 2) | v71 & 1;
  swift_beginAccess();
  *(v51 + 64) = v72;
  return v51;
}

unint64_t sub_1E14AA370()
{
  result = qword_1EE1F51E8;
  if (!qword_1EE1F51E8)
  {
    type metadata accessor for EditorsChoice();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1F51E8);
  }

  return result;
}

uint64_t type metadata accessor for EditorsChoice()
{
  result = qword_1EE1F51D8;
  if (!qword_1EE1F51D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E14AA41C()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double ASKBagContract.impressionableThreshold.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - v2;
  v4 = sub_1E1AF3D0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E2FE8 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E69AAFB8], v4);
  sub_1E1AF52AC();
  (*(v5 + 8))(v7, v4);
  sub_1E1AF532C();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

double ASKBagContract.fastImpressionsTimeout.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - v2;
  v4 = sub_1E1AF3D0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1D21E8 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E69AAFB8], v4);
  sub_1E1AF52AC();
  (*(v5 + 8))(v7, v4);
  sub_1E1AF532C();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

uint64_t sub_1E14AAA64(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1E1AF6F2C(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    do
    {
      sub_1E134E724(*(a2 + 48) + 40 * v6, v10);
      v8 = MEMORY[0x1E68FFC60](v10, a1);
      sub_1E134B88C(v10);
      if (v8)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1E14AAB3C(char a1, uint64_t a2)
{
  if (*(a2 + 16) && ((v4 = 7304045, sub_1E1AF762C(), (a1 & 1) != 0) ? (v5 = 0xE300000000000000) : (v4 = 1701736302, v5 = 0xE400000000000000), sub_1E1AF5F0C(), , v6 = sub_1E1AF767C(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(a2 + 48) + v8) ? 7304045 : 1701736302;
      v11 = *(*(a2 + 48) + v8) ? 0xE300000000000000 : 0xE400000000000000;
      if (v10 == v4 && v11 == v5)
      {
        break;
      }

      v13 = sub_1E1AF74AC();

      if ((v13 & 1) == 0)
      {
        v8 = (v8 + 1) & v9;
        if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
        {
          continue;
        }
      }

      return v13 & 1;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1E14AACA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1E1AF762C();
  sub_1E1AF5F0C();
  v6 = sub_1E1AF767C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1E1AF74AC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1E14AADA0(uint64_t a1, int64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_1E1AF762C();
    sub_1E19DC324(v18, a1, a2);
    v6 = sub_1E1AF767C();
    v7 = -1 << *(a3 + 32);
    v8 = v6 & ~v7;
    if ((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v17 = ~v7;
      while (1)
      {
        v9 = (*(a3 + 48) + 16 * v8);
        v10 = *v9;
        v11 = v9[1];
        if (v11 <= 4)
        {
          if (v11 > 1)
          {
            if (v11 == 2)
            {
              v13 = 0xE400000000000000;
              v12 = 1936748641;
              if (a2 > 4)
              {
                goto LABEL_37;
              }
            }

            else if (v11 == 3)
            {
              v13 = 0xE700000000000000;
              v12 = 0x73657461647075;
              if (a2 > 4)
              {
                goto LABEL_37;
              }
            }

            else
            {
              v13 = 0xE600000000000000;
              v12 = 0x686372616573;
              if (a2 > 4)
              {
                goto LABEL_37;
              }
            }

            goto LABEL_56;
          }

          if (!v11)
          {
            v13 = 0xE500000000000000;
            v12 = 0x7961646F74;
            if (a2 > 4)
            {
              goto LABEL_37;
            }

            goto LABEL_56;
          }

          if (v11 == 1)
          {
            v13 = 0xE500000000000000;
            v12 = 0x73656D6167;
            if (a2 > 4)
            {
              goto LABEL_37;
            }

            goto LABEL_56;
          }
        }

        else
        {
          if (v11 <= 7)
          {
            if (v11 == 5)
            {
              v13 = 0xE600000000000000;
              v12 = 0x656461637261;
              if (a2 > 4)
              {
                goto LABEL_37;
              }
            }

            else if (v11 == 6)
            {
              v13 = 0xE800000000000000;
              v12 = 0x6465727574616566;
              if (a2 > 4)
              {
                goto LABEL_37;
              }
            }

            else
            {
              v12 = 0x69726F6765746163;
              v13 = 0xEA00000000007365;
              if (a2 > 4)
              {
                goto LABEL_37;
              }
            }

            goto LABEL_56;
          }

          switch(v11)
          {
            case 8:
              v13 = 0xE600000000000000;
              v12 = 0x737472616863;
              if (a2 > 4)
              {
                goto LABEL_37;
              }

              goto LABEL_56;
            case 9:
              v12 = 0x6573616863727570;
              v13 = 0xE900000000000064;
              if (a2 > 4)
              {
                goto LABEL_37;
              }

              goto LABEL_56;
            case 10:
              v13 = 0xE900000000000073;
              v12 = 0x64616F6C6E776F64;
              if (a2 > 4)
              {
                goto LABEL_37;
              }

              goto LABEL_56;
          }
        }

        v12 = *v9;
        v13 = v9[1];
        if (a2 > 4)
        {
LABEL_37:
          if (a2 <= 7)
          {
            if (a2 == 5)
            {
              v14 = 0xE600000000000000;
              if (v12 != 0x656461637261)
              {
                goto LABEL_73;
              }
            }

            else if (a2 == 6)
            {
              v14 = 0xE800000000000000;
              if (v12 != 0x6465727574616566)
              {
                goto LABEL_73;
              }
            }

            else
            {
              v14 = 0xEA00000000007365;
              if (v12 != 0x69726F6765746163)
              {
                goto LABEL_73;
              }
            }

            goto LABEL_72;
          }

          switch(a2)
          {
            case 8:
              v14 = 0xE600000000000000;
              if (v12 != 0x737472616863)
              {
                goto LABEL_73;
              }

              goto LABEL_72;
            case 9:
              v14 = 0xE900000000000064;
              if (v12 != 0x6573616863727570)
              {
                goto LABEL_73;
              }

              goto LABEL_72;
            case 10:
              v14 = 0xE900000000000073;
              if (v12 != 0x64616F6C6E776F64)
              {
                goto LABEL_73;
              }

              goto LABEL_72;
          }

          goto LABEL_71;
        }

LABEL_56:
        if (a2 <= 1)
        {
          if (!a2)
          {
            v14 = 0xE500000000000000;
            if (v12 != 0x7961646F74)
            {
              goto LABEL_73;
            }

            goto LABEL_72;
          }

          if (a2 == 1)
          {
            v14 = 0xE500000000000000;
            if (v12 != 0x73656D6167)
            {
              goto LABEL_73;
            }

            goto LABEL_72;
          }

LABEL_71:
          v14 = a2;
          if (v12 != a1)
          {
            goto LABEL_73;
          }

          goto LABEL_72;
        }

        if (a2 == 2)
        {
          v14 = 0xE400000000000000;
          if (v12 != 1936748641)
          {
            goto LABEL_73;
          }
        }

        else if (a2 == 3)
        {
          v14 = 0xE700000000000000;
          if (v12 != 0x73657461647075)
          {
            goto LABEL_73;
          }
        }

        else
        {
          v14 = 0xE600000000000000;
          if (v12 != 0x686372616573)
          {
            goto LABEL_73;
          }
        }

LABEL_72:
        if (v13 == v14)
        {
          sub_1E13BC260(v10, v11);
          sub_1E13BC260(a1, a2);

          v15 = 1;
          return v15 & 1;
        }

LABEL_73:
        v15 = sub_1E1AF74AC();
        sub_1E13BC260(v10, v11);
        sub_1E13BC260(a1, a2);

        if ((v15 & 1) == 0)
        {
          v8 = (v8 + 1) & v17;
          if ((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
          {
            continue;
          }
        }

        return v15 & 1;
      }
    }
  }

  v15 = 0;
  return v15 & 1;
}

BOOL sub_1E14AB290(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1E1AF762C();
  MEMORY[0x1E6900360](a1);
  v4 = sub_1E1AF767C();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1E14AB35C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1E1AF5DFC(), sub_1E1AF762C(), sub_1E1AF5F0C(), v3 = sub_1E1AF767C(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = sub_1E1AF5DFC();
      v9 = v8;
      if (v7 == sub_1E1AF5DFC() && v9 == v10)
      {
        break;
      }

      v12 = sub_1E1AF74AC();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1E14AB4B0(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1E1AF762C();
  PageFacets.Facet.Option.hash(into:)();
  v4 = sub_1E1AF767C();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  v29 = a2 + 56;
  if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = a1[1];
    v28 = a1[2];
    v26 = *a1;
    v27 = a1[3];
    v22 = a1[6];
    v23 = a1[4];
    v24 = a1[7];
    v25 = a1[5];
    v9 = *(a2 + 48);
    do
    {
      v10 = (v9 + (v6 << 6));
      v11 = v10[1];
      v12 = v10[2];
      v14 = v10[3];
      v13 = v10[4];
      v15 = v10[5];
      v16 = v10[6];
      v17 = v10[7];
      if (v11)
      {
        if (!v8)
        {
          goto LABEL_5;
        }

        v18 = *v10 == v26 && v11 == v8;
        if (!v18 && (sub_1E1AF74AC() & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else if (v8)
      {
        goto LABEL_5;
      }

      v19 = v12 == v28 && v14 == v27;
      if (!v19 && (sub_1E1AF74AC() & 1) == 0)
      {
        goto LABEL_5;
      }

      if (v15)
      {
        if (!v25)
        {
          goto LABEL_5;
        }

        v20 = v13 == v23 && v15 == v25;
        if (!v20 && (sub_1E1AF74AC() & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else if (v25)
      {
        goto LABEL_5;
      }

      if (v17)
      {
        if (v24 && (v16 == v22 && v17 == v24 || (sub_1E1AF74AC() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v24)
      {
        return 1;
      }

LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v29 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return 0;
}

BOOL sub_1E14AB6C8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_1E1AF761C();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t ASKBagContract.__allocating_init(_:isOfflineBag:bagOfflinePolicy:)(uint64_t a1, char a2, uint64_t *a3)
{
  v6 = swift_allocObject();
  v7 = *a3;
  v8 = a3[1];
  LOBYTE(a3) = *(a3 + 16);
  v9 = OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag;
  v10 = sub_1E1AF539C();
  (*(*(v10 - 8) + 32))(v6 + v9, a1, v10);
  *(v6 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_isOfflineBag) = a2;
  v11 = v6 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bagOfflinePolicy;
  *v11 = v7;
  *(v11 + 8) = v8;
  *(v11 + 16) = a3;
  return v6;
}

uint64_t ASKBagContract.init(_:isOfflineBag:bagOfflinePolicy:)(uint64_t a1, char a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a3 + 16);
  v9 = OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag;
  v10 = sub_1E1AF539C();
  (*(*(v10 - 8) + 32))(v3 + v9, a1, v10);
  *(v3 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_isOfflineBag) = a2;
  v11 = v3 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bagOfflinePolicy;
  *v11 = v6;
  *(v11 + 8) = v7;
  *(v11 + 16) = v8;
  return v3;
}

__n128 ASKBagContract.bagOfflinePolicy.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bagOfflinePolicy + 16);
  result = *(v1 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bagOfflinePolicy);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t ASKBagContract.language.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5F70);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - v2;
  v4 = sub_1E1AEFF8C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEFF4C();
  v8 = sub_1E1AEFF0C();
  if (!v9)
  {
    v8 = sub_1E1AEFEFC();
  }

  v10 = v8;
  v11 = v9;
  if (qword_1EE1E2DE0 != -1)
  {
    swift_once();
  }

  v12 = sub_1E1AF536C();
  MEMORY[0x1EEE9AC00](v12);
  *(&v14 - 2) = v10;
  *(&v14 - 1) = v11;
  sub_1E1AF532C();

  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v14;
}

double ASKBagContract.fetchTimeout.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - v2;
  v4 = sub_1E1AF3D0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E3130 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E69AAFD0], v4);
  sub_1E1AF52AC();
  (*(v5 + 8))(v7, v4);
  sub_1E1AF532C();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

uint64_t ASKBagContract.hideableSystemApps.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4910);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  if (qword_1ECEB12C0 != -1)
  {
    swift_once();
  }

  sub_1E1AF534C();
  sub_1E1AF531C();
  (*(v1 + 8))(v3, v0);
  if (!v7)
  {
    return 0;
  }

  v4 = sub_1E1679524(v7);

  return v4;
}

uint64_t ASKBagContract.tabs.getter()
{
  if (qword_1EE1D2258 != -1)
  {
    swift_once();
  }

  if (qword_1EE1E0F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v1 = ASKBagContract.tabs(withFallback:bagKey:)(v0);

  return v1;
}

uint64_t ASKBagContract.tabs(withFallback:bagKey:)(uint64_t a1)
{
  v54 = a1;
  v1 = sub_1E1AF39DC();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1E1AF380C();
  v4 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v61 = v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4918);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v52 - v9;
  v60 = type metadata accessor for StoreTab();
  v11 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v53 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v52 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v59 = v52 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4910);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v52 - v20;
  sub_1E1AF534C();
  sub_1E1AF532C();
  (*(v19 + 8))(v21, v18);
  v22 = *(v67[0] + 16);
  v56 = v11;
  if (v22)
  {
    v58 = v10;
    v52[1] = v67[0];
    v23 = v67[0] + 32;
    v57 = (v4 + 16);
    v24 = (v4 + 8);
    v25 = (v11 + 48);
    v64 = MEMORY[0x1E69E7CC0];
    v55 = v3;
    v26 = v61;
    do
    {
      sub_1E137A5C4(v23, v67);
      sub_1E137A5C4(v67, v66);
      sub_1E1AF37FC();
      v27 = v63;
      (*v57)(v62, v26, v63);
      sub_1E1AF39CC();
      sub_1E14B16A0();
      v28 = v3;
      v29 = v58;
      v30 = v28;
      v31 = v60;
      sub_1E1AF464C();
      (*v24)(v26, v27);
      __swift_destroy_boxed_opaque_existential_1(v67);
      if ((*v25)(v29, 1, v31) == 1)
      {
        sub_1E1308058(v29, &qword_1ECEB4918);
        v3 = v30;
      }

      else
      {
        sub_1E14B1770(v29, v59);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v32 = v64;
        }

        else
        {
          v32 = sub_1E172E434(0, v64[2] + 1, 1, v64);
        }

        v34 = v32[2];
        v33 = v32[3];
        if (v34 >= v33 >> 1)
        {
          v32 = sub_1E172E434(v33 > 1, v34 + 1, 1, v32);
        }

        v32[2] = v34 + 1;
        v35 = (*(v56 + 80) + 32) & ~*(v56 + 80);
        v64 = v32;
        sub_1E14B1770(v59, v32 + v35 + *(v56 + 72) * v34);
        v3 = v55;
      }

      v23 += 32;
      --v22;
    }

    while (v22);

    v36 = v64;
  }

  else
  {

    v36 = MEMORY[0x1E69E7CC0];
  }

  v37 = v36[2];
  v39 = v53;
  v38 = v54;
  if (v37)
  {
    v66[0] = MEMORY[0x1E69E7CD0];
    v40 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v41 = *(v56 + 72);
    v64 = v36;
    v42 = v36 + v40;
    v38 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1E14B16F8(v42, v15);
      v43 = v66[0];
      v44 = *v15;
      v45 = v15[1];

      LOBYTE(v44) = sub_1E14AADA0(v44, v45, v43);

      if (v44)
      {
        sub_1E14B17D4(v15);
      }

      else
      {
        v46 = *v15;
        v47 = v15[1];
        sub_1E13BC260(*v15, v47);
        sub_1E189507C(v67, v46, v47);
        sub_1E14B175C(v67[0], v67[1]);
        sub_1E14B1770(v15, v39);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E135C708(0, *(v38 + 16) + 1, 1);
          v38 = v65;
        }

        v50 = *(v38 + 16);
        v49 = *(v38 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_1E135C708(v49 > 1, v50 + 1, 1);
          v38 = v65;
        }

        *(v38 + 16) = v50 + 1;
        sub_1E14B1770(v39, v38 + v40 + v50 * v41);
      }

      v42 += v41;
      --v37;
    }

    while (v37);
  }

  else
  {
  }

  return v38;
}

uint64_t ASKBagContract.metricsConfiguration.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4928);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v5 - v2;
  if (qword_1ECEB12F0 != -1)
  {
    swift_once();
  }

  sub_1E1AF529C();
  sub_1E1AF531C();
  (*(v1 + 8))(v3, v0);
  return v5[1];
}

double ASKBagContract.sessionDurationPageRender.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - v2;
  v4 = sub_1E1AF3D0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E2F48 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E69AAFB8], v4);
  sub_1E1AF52AC();
  (*(v5 + 8))(v7, v4);
  sub_1E1AF532C();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

unint64_t ASKBagContract.onboardingCardsMap.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4928);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  if (qword_1EE1D2230 != -1)
  {
    swift_once();
  }

  sub_1E1AF529C();
  sub_1E1AF531C();
  (*(v1 + 8))(v3, v0);
  if (!v7)
  {
    return 0;
  }

  v4 = sub_1E14ACF0C(v7);

  return v4;
}

unint64_t sub_1E14ACF0C(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB60D0);
    v2 = sub_1E1AF72CC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v14 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v14);
        ++v9;
        if (v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v14 = v9;
LABEL_13:
    v15 = __clz(__rbit64(v6)) | (v14 << 6);
    sub_1E134E724(*(v1 + 48) + 40 * v15, v28);
    sub_1E137A5C4(*(v1 + 56) + 32 * v15, v29 + 8);
    v26[0] = v29[0];
    v26[1] = v29[1];
    v27 = v30;
    v25[0] = v28[0];
    v25[1] = v28[1];
    sub_1E134E724(v25, v24);
    if (!swift_dynamicCast())
    {
      sub_1E1308058(v25, &qword_1ECEB4948);

      goto LABEL_22;
    }

    sub_1E137A5C4(v26 + 8, v24);
    sub_1E1308058(v25, &qword_1ECEB4948);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    result = sub_1E13018F8(v22, v23);
    if (v16)
    {
      v10 = v1;
      v11 = 16 * result;
      v12 = (v2[6] + 16 * result);
      *v12 = v22;
      v12[1] = v23;

      v13 = (v2[7] + v11);
      v1 = v10;
      *v13 = v22;
      v13[1] = v23;

      v9 = v14;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v2[6] + 16 * result);
      *v17 = v22;
      v17[1] = v23;
      v18 = (v2[7] + 16 * result);
      *v18 = v22;
      v18[1] = v23;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_26;
      }

      v2[2] = v21;
      v9 = v14;
    }
  }

LABEL_22:

  return 0;
}

unint64_t sub_1E14AD1EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB6020);
    v2 = sub_1E1AF72CC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        sub_1E134E724(*(a1 + 48) + 40 * v11, v24);
        sub_1E137A5C4(*(a1 + 56) + 32 * v11, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_1E134E724(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_1E1308058(v21, &qword_1ECEB4948);

          goto LABEL_23;
        }

        sub_1E137A5C4(v22 + 8, v20);
        sub_1E1308058(v21, &qword_1ECEB4948);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_1E13018F8(v18, v19);
        v12 = result;
        if (v13)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v18;
          v9[1] = v19;

          *(v2[7] + 8 * v12) = v18;

          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v14 = (v2[6] + 16 * result);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * result) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_27;
          }

          v2[2] = v17;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1E14AD4CC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB37D0);
    v2 = sub_1E1AF72CC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_1E134E724(*(a1 + 48) + 40 * v12, v27);
        sub_1E137A5C4(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_1E134E724(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1E137A5C4(v25 + 8, v20);
        sub_1E1308058(v24, &qword_1ECEB4948);
        v21 = v18;
        sub_1E1301CF0(v20, v22);
        v13 = v21;
        sub_1E1301CF0(v22, v23);
        sub_1E1301CF0(v23, &v21);
        result = sub_1E13018F8(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          result = sub_1E1301CF0(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_1E1301CF0(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_1E1308058(v24, &qword_1ECEB4948);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

double ASKBagContract.onboardingCardExpirationThreshold.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - v2;
  v4 = sub_1E1AF3D0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1D2168 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E69AAFB8], v4);
  sub_1E1AF52AC();
  (*(v5 + 8))(v7, v4);
  sub_1E1AF532C();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

uint64_t sub_1E14ADC30(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB47C8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_1E1AF52EC();
  sub_1E1AF531C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ASKBagContract.arcadeProductFamilyId.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5F70);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - v2;
  if (qword_1EE1E3040 != -1)
  {
    swift_once();
  }

  sub_1E1AF536C();
  sub_1E1AF531C();
  v4 = *(v1 + 8);
  v4(v3, v0);
  if (v6[1])
  {
    return v6[0];
  }

  if (qword_1ECEB13E0 != -1)
  {
    swift_once();
  }

  sub_1E1AF536C();
  sub_1E1AF531C();
  v4(v3, v0);
  return v6[0];
}

uint64_t ASKBagContract.arcadeProductId.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5F70);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - v2;
  if (qword_1ECEB13C8 != -1)
  {
    swift_once();
  }

  sub_1E1AF536C();
  sub_1E1AF531C();
  v4 = *(v1 + 8);
  v4(v3, v0);
  if (v6[1])
  {
    return v6[0];
  }

  if (qword_1ECEB13E8 != -1)
  {
    swift_once();
  }

  sub_1E1AF536C();
  sub_1E1AF531C();
  v4(v3, v0);
  return v6[0];
}

uint64_t sub_1E14AE13C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5F70);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_1E1AF536C();
  sub_1E1AF531C();
  result = (*(v5 + 8))(v7, v4);
  v9 = v12;
  if (v12)
  {
    v10 = v11;
  }

  else
  {
    v10 = 0;
  }

  *a2 = v10;
  a2[1] = v9;
  return result;
}

double ASKBagContract.arcadeSubscribePageDismissDelay.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - v2;
  v4 = sub_1E1AF3D0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECEB13F0 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E69AAFD0], v4);
  sub_1E1AF52AC();
  (*(v5 + 8))(v7, v4);
  sub_1E1AF532C();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

unint64_t ASKBagContract.challengeAttemptOptions.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4928);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  if (qword_1ECEB1410 != -1)
  {
    swift_once();
  }

  sub_1E1AF529C();
  sub_1E1AF531C();
  (*(v1 + 8))(v3, v0);
  if (!v7 || (v4 = sub_1E14AD1EC(v7), , !v4))
  {
    v4 = sub_1E15A0538(&unk_1F5C28380);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4930);
    swift_arrayDestroy();
  }

  return v4;
}

uint64_t ASKBagContract.gameActivityPartyStartUrl.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5F70);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  v4 = sub_1E1AF5DBC();
  sub_1E1AF536C();

  sub_1E1AF531C();
  (*(v1 + 8))(v3, v0);
  return v6;
}

double ASKBagContract.playTogetherPlayersGroupTimeThreshold.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - v2;
  v4 = sub_1E1AF3D0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECEB1428 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E69AAFD0], v4);
  sub_1E1AF52AC();
  (*(v5 + 8))(v7, v4);
  sub_1E1AF532C();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

double sub_1E14AED10(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - v4;
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_1E1AF535C();
  sub_1E1AF532C();
  (*(v3 + 8))(v5, v2);
  return *&v7[1];
}

void *ASKBagContract.resilientDeepLinkPatterns.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4910);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  if (qword_1EE1D21C0 != -1)
  {
    swift_once();
  }

  sub_1E1AF534C();
  sub_1E1AF531C();
  (*(v1 + 8))(v3, v0);
  if (v7)
  {
    v4 = sub_1E1679410(v7);

    if (v4)
    {
      return v4;
    }
  }

  return &unk_1F5C283D0;
}

uint64_t ASKBagContract.installAttributionTimerDelaySeconds.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  if (qword_1ECEB1490 != -1)
  {
    swift_once();
  }

  sub_1E1AF535C();
  sub_1E1AF531C();
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_1E14AF2B4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4920);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - v4;
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_1E1AF52DC();
  sub_1E1AF532C();
  (*(v3 + 8))(v5, v2);
  return v7[1];
}

void *ASKBagContract.personalizedAdsScrollRequiredDisabledRegionCodes.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4910);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  if (qword_1ECEB14D0 != -1)
  {
    swift_once();
  }

  sub_1E1AF534C();
  sub_1E1AF531C();
  (*(v1 + 8))(v3, v0);
  if (v7)
  {
    v4 = sub_1E1679410(v7);

    if (v4)
    {
      return v4;
    }
  }

  return &unk_1F5C28400;
}

double ASKBagContract.productPageDownloadingOrderingTimeout.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - v2;
  v4 = sub_1E1AF3D0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E2E08 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E69AAFD0], v4);
  sub_1E1AF52AC();
  (*(v5 + 8))(v7, v4);
  sub_1E1AF532C();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

AppStoreKit::ASKBagContract::AdPlacementBagValue_optional __swiftcall ASKBagContract.AdPlacementBagValue.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ASKBagContract.AdPlacementBagValue.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C2D686372616573;
  v3 = 0x7961646F74;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0xD000000000000021;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x722D686372616573;
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

uint64_t sub_1E14AFA18()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E14AFB14()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E14AFBFC()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E14AFD00(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00676E69646E61;
  v4 = 0x6C2D686372616573;
  v5 = 0xE500000000000000;
  v6 = 0x7961646F74;
  v7 = 0xD000000000000011;
  v8 = 0x80000001E1B56A40;
  if (v2 != 3)
  {
    v7 = 0xD000000000000021;
    v8 = 0x80000001E1B56A60;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x722D686372616573;
    v3 = 0xEE0073746C757365;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

char *ASKBagContract.enabledAdPlacements.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4910);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - v2;
  if (qword_1EE1E30B0 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    sub_1E1AF534C();
    sub_1E1AF531C();
    v4 = *(v1 + 8);
    v1 += 8;
    v4(v3, v0);
    if (!v14)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v0 = sub_1E1679410(v14);

    if (!v0)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v5 = 0;
    v6 = *(v0 + 16);
    v7 = MEMORY[0x1E69E7CC0];
    v3 = &unk_1F5C28460;
LABEL_5:
    v8 = v0 + 40 + 16 * v5;
    while (1)
    {
      if (v6 == v5)
      {

        return v7;
      }

      if (v5 >= *(v0 + 16))
      {
        break;
      }

      ++v5;
      v9 = v8 + 16;

      v1 = sub_1E1AF72FC();

      v8 = v9;
      if (v1 < 5)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1E172E45C(0, *(v7 + 2) + 1, 1, v7);
        }

        v11 = *(v7 + 2);
        v10 = *(v7 + 3);
        if (v11 >= v10 >> 1)
        {
          v7 = sub_1E172E45C((v10 > 1), v11 + 1, 1, v7);
        }

        *(v7 + 2) = v11 + 1;
        v7[v11 + 32] = v1;
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }
}

uint64_t ASKBagContract.downloadProgressDisplayRemainingTime.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4938);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4920);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  if (qword_1EE1E2E38 != -1)
  {
    swift_once();
  }

  sub_1E1AF52DC();
  sub_1E1AF532C();
  (*(v5 + 8))(v7, v4);
  v8 = v18;
  if (qword_1EE1E3A38 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_1EE1E3A40);
  (*(v1 + 16))(v3, v9, v0);
  v10 = ASKBuildTypeGetCurrent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6980);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E1B03760;
  *(v11 + 32) = @"debug";
  *(v11 + 40) = @"convergence";
  *(v11 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v12 = @"debug";
  v13 = @"convergence";
  v14 = @"internal";
  v15 = sub_1E1AF620C();

  IsAnyOf = ASKBuildTypeIsAnyOf(v10, v15);

  if (IsAnyOf)
  {
    sub_1E1AF44CC();
    swift_allocObject();
    sub_1E1AF44AC();
    sub_1E1AF3C8C();

    (*(v1 + 8))(v3, v0);
    if (v19 != 1)
    {
      return v18;
    }
  }

  else
  {
    (*(v1 + 8))(v3, v0);
  }

  return v8;
}

uint64_t ASKBagContract.downloadProgressDisplayWaitTime.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4938);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4920);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  if (qword_1EE1E2EB0 != -1)
  {
    swift_once();
  }

  sub_1E1AF52DC();
  sub_1E1AF532C();
  (*(v5 + 8))(v7, v4);
  v8 = v18;
  if (qword_1EE1E3A60 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_1EE1E3A68);
  (*(v1 + 16))(v3, v9, v0);
  v10 = ASKBuildTypeGetCurrent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6980);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E1B03760;
  *(v11 + 32) = @"debug";
  *(v11 + 40) = @"convergence";
  *(v11 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v12 = @"debug";
  v13 = @"convergence";
  v14 = @"internal";
  v15 = sub_1E1AF620C();

  IsAnyOf = ASKBuildTypeIsAnyOf(v10, v15);

  if (IsAnyOf)
  {
    sub_1E1AF44CC();
    swift_allocObject();
    sub_1E1AF44AC();
    sub_1E1AF3C8C();

    (*(v1 + 8))(v3, v0);
    if (v19 != 1)
    {
      return v18;
    }
  }

  else
  {
    (*(v1 + 8))(v3, v0);
  }

  return v8;
}