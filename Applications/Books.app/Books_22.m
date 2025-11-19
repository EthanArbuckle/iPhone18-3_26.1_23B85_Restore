uint64_t sub_10035668C()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);

  *(v0 + 168) = v1;
  sub_1001F1160(&unk_100AD67F0);
  sub_10000A7C4(0, &qword_100ADA6D0);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = *(v0 + 176);
    sub_10079AC84();
    v5 = v4;
    v6 = sub_10079ACC4();
    v7 = sub_1007A29B4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error gathering engagement analytics metadata %@", v8, 0xCu);
      sub_100007840(v9, &unk_100AD9480);
    }

    else
    {
      v10 = v6;
      v6 = v5;
    }

    v12 = *(v0 + 216);
    v11 = *(v0 + 224);
    v13 = *(v0 + 208);

    (*(v12 + 8))(v11, v13);

    v17 = *(v0 + 200);
    v18 = *(v17 + *(v0 + 288));
    if (!v18)
    {
      __break(1u);
      return Manager.getProperties(propertyName:assetIDs:)(v14, v15, v16);
    }

    v19 = *(v18 + OBJC_IVAR___BKEngagementManagerAnalyticsHelper_sampleCapableProperties);
    *(v0 + 352) = v19;
    v20 = *(v19 + 32);
    *(v0 + 424) = v20;
    v21 = -1;
    v22 = -1 << v20;
    if (-(-1 << v20) < 64)
    {
      v21 = ~(-1 << -v22);
    }

    v23 = v21 & *(v19 + 56);
    *(v0 + 360) = _swiftEmptyDictionarySingleton;
    swift_bridgeObjectRetain_n();
    if (v23)
    {
      v24 = 0;
LABEL_14:
      *(v0 + 368) = v23;
      *(v0 + 376) = v24;
      v26 = *(v0 + 304);
      v27 = (*(v19 + 48) + ((v24 << 10) | (16 * __clz(__rbit64(v23)))));
      v28 = *v27;
      *(v0 + 384) = *v27;
      v29 = v27[1];
      *(v0 + 392) = v29;
      v30 = *(v17 + v26);
      *(v0 + 400) = v30;

      v30;
      v31 = swift_task_alloc();
      *(v0 + 408) = v31;
      *v31 = v0;
      v31[1] = sub_100355A80;
      v14 = v28;
      v15 = v29;
      v16 = 0;

      return Manager.getProperties(propertyName:assetIDs:)(v14, v15, v16);
    }

    v25 = 0;
    while (((63 - v22) >> 6) - 1 != v25)
    {
      v24 = v25 + 1;
      v23 = *(v19 + 8 * v25++ + 64);
      if (v23)
      {
        goto LABEL_14;
      }
    }

    if (_swiftEmptyDictionarySingleton[2])
    {
      v32 = *(v0 + 200);
      v33 = OBJC_IVAR___BKEngagementManager_metadata;
      swift_beginAccess();
      v34 = *(v32 + v33);
      v35 = OBJC_IVAR___BKEngagementManagerMetadata_propertyCounts;
      swift_beginAccess();
      *(v34 + v35) = _swiftEmptyDictionarySingleton;
    }

    v36 = *(v0 + 272);
    v37 = *(v0 + 280);
    v38 = *(v0 + 248);
    v39 = *(v0 + 256);
    sub_10079AC84();
    (*(v39 + 16))(v36, v37, v38);
    v40 = sub_10079ACC4();
    v41 = sub_1007A2994();
    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v0 + 272);
    if (v42)
    {
      v45 = *(v0 + 256);
      v44 = *(v0 + 264);
      v46 = *(v0 + 248);
      v47 = swift_slowAlloc();
      *v47 = 134217984;
      sub_100796BA4();
      sub_100796B44();
      v49 = v48;
      v50 = *(v45 + 8);
      v50(v44, v46);
      sub_100796B44();
      v52 = v51;
      v50(v43, v46);
      *(v47 + 4) = v49 - v52;
      _os_log_impl(&_mh_execute_header, v40, v41, "Time to calculate engagement manager property metadata %fs", v47, 0xCu);
    }

    else
    {
      v53 = *(v0 + 248);
      v54 = *(v0 + 256);

      v50 = *(v54 + 8);
      v50(v43, v53);
    }

    v55 = *(v0 + 280);
    v56 = *(v0 + 248);
    (*(*(v0 + 216) + 8))(*(v0 + 232), *(v0 + 208));
    v50(v55, v56);

    v57 = *(v0 + 8);

    return v57();
  }

  return result;
}

void sub_100356C50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *&Strong[OBJC_IVAR___BKEngagementManager_updateMetadataGeneration];

    if (v8 != a2)
    {
      return;
    }

    goto LABEL_3;
  }

  if (!a2)
  {
LABEL_3:
    v9 = sub_1007A2744();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    sub_1007A26F4();

    v10 = sub_1007A26E4();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = a1;
    sub_100345AA0(0, 0, v6, &unk_10081CA58, v11);
  }
}

uint64_t sub_100356DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1007A26F4();
  v4[7] = sub_1007A26E4();
  v6 = sub_1007A2694();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_100356E54, v6, v5);
}

uint64_t sub_100356E54()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_100356F58;

    return sub_100355238();
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_100356F58()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_100357098, v4, v3);
}

uint64_t sub_100357098()
{

  **(v0 + 40) = *(v0 + 80) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100357268(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = a1[5];
  v5 = a1[6];
  sub_10000E3E8(a1 + 2, v4);

  v6 = a3(v4, v5);

  return v6;
}

uint64_t sub_1003572D8()
{
  sub_1000074E0(v0 + 16);

  return swift_deallocClassInstance();
}

id sub_100357310()
{
  result = [*(*v0 + 16) dataType];
  if (result)
  {
    v2 = result;
    v3 = sub_1007A2254();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100357374()
{
  v1 = [*(*v0 + 16) historyToken];

  return v1;
}

void *sub_100357400(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_100357EC8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

Swift::Int sub_100357490(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10078598C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1003574FC(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1003574FC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1007A3A64(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_1007A2634();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1003576C4(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_1003575F4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1003575F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_1007A3AB4(), (result & 1) == 0))
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

uint64_t sub_1003576C4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
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
      result = sub_100784A7C(v8);
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
        sub_100357CA0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
  v8 = _swiftEmptyArrayStorage;
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
        result = sub_1007A3AB4();
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
            result = sub_1007A3AB4();
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
      result = sub_10066B274(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_10066B274((v39 > 1), v40 + 1, 1, v8);
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
        sub_100357CA0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100784A7C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1007849F0(v44);
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
    if (v37 || (result = sub_1007A3AB4(), (result & 1) == 0))
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

uint64_t sub_100357CA0(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_1007A3AB4() & 1) != 0)
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
      if (!v21 && (sub_1007A3AB4() & 1) != 0)
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

uint64_t sub_100357EC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_10062642C(v21, a2, v22, v19);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10035803C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100358130;

  return v5(v2 + 32);
}

uint64_t sub_100358130()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10035824C(uint64_t a1)
{
  v3 = *(sub_100796AD4() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100009A34;

  return sub_10034B03C(a1, v5, v6, v7, v8, v9, v1 + v4, v10);
}

void sub_1003583B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() defaultBag];
  v6 = [objc_allocWithZone(AMSEngagement) initWithBag:v5];

  v7 = objc_allocWithZone(AMSEngagementMessageEvent);
  v8 = sub_1007A2214();
  isa = sub_1007A2824().super.isa;
  v10 = [v7 initWithServiceType:v8 placements:isa];

  v11 = [v6 enqueueMessageEvent:v10];
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v14[4] = sub_100359B58;
  v14[5] = v12;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1002332B0;
  v14[3] = &unk_100A16BA0;
  v13 = _Block_copy(v14);

  [v11 addFinishBlock:v13];
  _Block_release(v13);
}

uint64_t _s5Books17EngagementManagerC19fetchDialogRequests3for10completionyShySSG_ySDySSSo16AMSDialogRequestCG_s5Error_pSgtcSgtF_0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return result;
  }

  v4 = a2;
  v5 = result;
  v6 = objc_opt_self();

  v7 = [v6 standardUserDefaults];
  v8 = sub_1007A2214();
  v9 = [v7 BOOLForKey:v8];

  if (v9)
  {
    if (qword_100AD1B10 == -1)
    {
LABEL_4:
      v10 = swift_allocObject();
      *(v10 + 16) = v4;
      *(v10 + 24) = a3;

      _s5Books23BKMessagesDebugProviderC19fetchDialogRequests3for10completionyShySSG_ySDySSSo16AMSDialogRequestCG_s5Error_pSgtcSgtF_0(v5, sub_100359B30);
      sub_100007020(v4);
    }

LABEL_43:
    swift_once();
    goto LABEL_4;
  }

  v58 = v4;
  v59 = a3;
  v11 = *(v5 + 32);
  v12 = v11 & 0x3F;
  v13 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v13;

  if (v12 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    v60 = v57;
    v61 = v13;
    __chkstk_darwin(isStackAllocationSafe);
    v16 = v57 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v16, v14);
    v62 = 0;
    v17 = 0;
    v4 = v5 + 56;
    v18 = 1 << *(v5 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    a3 = v19 & *(v5 + 56);
    v20 = (v18 + 63) >> 6;
    while (a3)
    {
      v21 = __clz(__rbit64(a3));
      a3 &= a3 - 1;
LABEL_18:
      v24 = v21 | (v17 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];

      v28._rawValue = &off_100A0CAD8;
      v64._countAndFlagsBits = v26;
      v64._object = v27;
      v29 = sub_1007A3964(v28, v64);

      if (v29 <= 2)
      {
        *&v16[(v24 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v24;
        v30 = __OFADD__(v62++, 1);
        if (v30)
        {
          __break(1u);
LABEL_22:
          v31 = sub_10062642C(v16, v61, v62, v5);
          goto LABEL_23;
        }
      }
    }

    v22 = v17;
    while (1)
    {
      v17 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v17 >= v20)
      {
        goto LABEL_22;
      }

      v23 = *(v4 + 8 * v17);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        a3 = (v23 - 1) & v23;
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  v55 = swift_slowAlloc();
  v31 = sub_100357400(v55, v13, v5, sub_100662634);

LABEL_23:
  v32 = *(v5 + 32);
  a3 = v32 & 0x3F;
  v33 = ((1 << v32) + 63) >> 6;
  v34 = 8 * v33;

  if (a3 <= 0xD || (v35 = swift_stdlib_isStackAllocationSafe(), (v35 & 1) != 0))
  {
    v60 = v33;
    v61 = v31;
    v57[1] = 0;
    v57[2] = v57;
    __chkstk_darwin(v35);
    v36 = v57 - ((v34 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v36, v34);
    v62 = 0;
    v37 = 0;
    v4 = v5 + 56;
    v38 = 1 << *(v5 + 32);
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v40 = v39 & *(v5 + 56);
    v41 = (v38 + 63) >> 6;
    while (v40)
    {
      v42 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
LABEL_34:
      a3 = v42 | (v37 << 6);
      v45 = (*(v5 + 48) + 16 * a3);
      v47 = *v45;
      v46 = v45[1];

      v48._rawValue = &off_100A0CB40;
      v65._countAndFlagsBits = v47;
      v65._object = v46;
      v49 = sub_1007A3964(v48, v65);

      if (v49 >= 3)
      {
        *&v36[(a3 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << a3;
        v30 = __OFADD__(v62++, 1);
        if (v30)
        {
          __break(1u);
LABEL_38:
          v50 = sub_10062642C(v36, v60, v62, v5);
          v31 = v61;
          goto LABEL_39;
        }
      }
    }

    v43 = v37;
    while (1)
    {
      v37 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v37 >= v41)
      {
        goto LABEL_38;
      }

      v44 = *(v4 + 8 * v37);
      ++v43;
      if (v44)
      {
        v42 = __clz(__rbit64(v44));
        v40 = (v44 - 1) & v44;
        goto LABEL_34;
      }
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v56 = swift_slowAlloc();
  v50 = sub_100357400(v56, v33, v5, sub_100662694);

LABEL_39:
  v51 = sub_1006626FC(v31);
  v52 = swift_allocObject();
  v54 = v58;
  v53 = v59;
  v52[2] = v51;
  v52[3] = v54;
  v52[4] = v53;
  sub_1000260E8(v54);
  sub_1003583B0(v50, sub_100359B24, v52);
  sub_100007020(v54);
}

void sub_100358B8C(void *a1)
{
  v3 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v60 - v4;
  v6 = sub_100796AD4();
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100796BB4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v66 = v7;
    v62 = v5;
    v67 = a1;
    v14 = [v67 storeID];
    if (v14)
    {
      v15 = v14;
      v16 = [v67 purchaseResponseItems];
      v61 = v1;
      v64 = v11;
      v65 = v10;
      if (v16)
      {
        v17 = v16;
        sub_10000A7C4(0, &qword_100ADD580);
        v18 = sub_1007A25E4();

        if (v18 >> 62)
        {
          if (sub_1007A38D4())
          {
            goto LABEL_6;
          }
        }

        else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_6:
          if ((v18 & 0xC000000000000001) != 0)
          {
            v19 = sub_1007A3784();
          }

          else
          {
            if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_57;
            }

            v19 = *(v18 + 32);
          }

          v20 = v19;

          LODWORD(v63) = [v20 isPurchaseRedownload];

LABEL_16:
          v22 = 0x6F6F626F69647561;
          v23 = [v67 metadata];
          if (v23)
          {
            v24 = v23;
            v25 = sub_1007A2044();

            *&v72 = 0x7473696C79616C70;
            *(&v72 + 1) = 0xEA00000000006449;
            sub_1007A36B4();
            if (*(v25 + 16))
            {
              v26 = sub_10000E2A4(v68);
              if (v27)
              {
                sub_100007484(*(v25 + 56) + 32 * v26, &v74);
                sub_10002899C(v68);

                if (*(&v75 + 1))
                {
                  sub_100007840(&v74, &unk_100AD5B40);
                  v28 = 0xE90000000000006BLL;
                  v29 = v67;
                  goto LABEL_26;
                }

LABEL_23:
                sub_100007840(&v74, &unk_100AD5B40);
                v30 = objc_opt_self();
                v31 = [v67 purchaseParameters];
                LODWORD(v30) = [v30 isAudioBookFromBuyParameters:v31];

                v29 = v67;
                if (v30)
                {
                  v28 = 0xE90000000000006BLL;
                }

                else
                {
                  v22 = 1802465122;
                  v28 = 0xE400000000000000;
                }

LABEL_26:
                v32 = [v29 metadata];
                if (v32)
                {
                  v33 = v32;
                  v34 = sub_1007A2044();

                  *&v74 = 0x6449747369747261;
                  *(&v74 + 1) = 0xE800000000000000;
                  sub_1007A36B4();
                  if (*(v34 + 16))
                  {
                    v35 = sub_10000E2A4(v68);
                    if (v36)
                    {
                      sub_100007484(*(v34 + 56) + 32 * v35, &v74);
                      sub_10002899C(v68);

                      goto LABEL_32;
                    }
                  }

                  sub_10002899C(v68);
                }

                v74 = 0u;
                v75 = 0u;
LABEL_32:
                v37 = [v67 metadata];
                if (v37)
                {
                  v38 = v37;
                  v39 = sub_1007A2044();

                  strcpy(&v72, "seriesAdamId");
                  BYTE13(v72) = 0;
                  HIWORD(v72) = -5120;
                  sub_1007A36B4();
                  if (*(v39 + 16))
                  {
                    v40 = sub_10000E2A4(v68);
                    v41 = v63;
                    if (v42)
                    {
                      sub_100007484(*(v39 + 56) + 32 * v40, &v72);
                      sub_10002899C(v68);
                    }

                    else
                    {

                      sub_10002899C(v68);
                      v72 = 0u;
                      v73 = 0u;
                    }

LABEL_39:
                    v43 = objc_opt_self();
                    v44 = [v67 purchaseParameters];
                    v45 = [v43 isPreOrderFromBuyParameters:v44];

                    sub_100796BA4();
                    if (v41)
                    {

LABEL_53:

                      (*(v64 + 8))(v13, v65);
                      sub_100007840(&v72, &unk_100AD5B40);
                      sub_100007840(&v74, &unk_100AD5B40);
                      return;
                    }

                    sub_1001F1160(&unk_100ADE550);
                    inited = swift_initStackObject();
                    *(inited + 16) = xmmword_100815060;
                    *(inited + 32) = 0x49746375646F7270;
                    *(inited + 40) = 0xE900000000000064;
                    v47 = sub_10000A7C4(0, &qword_100AD6750);
                    *(inited + 48) = v15;
                    *(inited + 72) = v47;
                    *(inited + 80) = 1702125924;
                    *(inited + 88) = 0xE400000000000000;
                    v63 = v15;
                    sub_1007963F4();
                    *(inited + 120) = &type metadata for String;
                    sub_1000228AC(&qword_100ADD570, 255, &type metadata accessor for Date.ISO8601FormatStyle);
                    sub_100796B94();
                    (*(v66 + 8))(v9, v6);
                    *(inited + 128) = 0x54746375646F7270;
                    *(inited + 136) = 0xEB00000000657079;
                    *(inited + 144) = v60;
                    *(inited + 152) = v28;
                    *(inited + 168) = &type metadata for String;
                    *(inited + 176) = 0x64726F6572507369;
                    *(inited + 184) = 0xEA00000000007265;
                    *(inited + 216) = &type metadata for Bool;
                    *(inited + 192) = v45;
                    v17 = sub_100019158(inited);
                    swift_setDeallocating();
                    sub_1001F1160(&unk_100ADD560);
                    swift_arrayDestroy();
                    sub_1000077D8(&v74, &v70, &unk_100AD5B40);
                    if (v71)
                    {
                      sub_1000076D4(&v70, v68);
                      sub_100007484(v68, &v70);
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v69 = v17;
                      sub_1002F4B78(&v70, 0x6449747369747261, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
                      sub_1000074E0(v68);
                      v17 = v69;
                    }

                    else
                    {
                      sub_100007840(&v70, &unk_100AD5B40);
                    }

                    v11 = v61;
                    sub_1000077D8(&v72, &v70, &unk_100AD5B40);
                    if (v71)
                    {
                      sub_1000076D4(&v70, v68);
                      sub_100007484(v68, &v70);
                      v49 = swift_isUniquelyReferenced_nonNull_native();
                      v69 = v17;
                      sub_1002F4B78(&v70, 0x6449736569726573, 0xE800000000000000, v49);
                      sub_1000074E0(v68);
                      v17 = v69;
                    }

                    else
                    {
                      sub_100007840(&v70, &unk_100AD5B40);
                    }

                    v50 = *(v11 + OBJC_IVAR___BKEngagementManager_manager);
                    v51 = sub_1007999E4();

                    v52 = v63;
                    if (!v51)
                    {
LABEL_52:
                      v59 = *(v11 + OBJC_IVAR___BKEngagementManager_eventController);
                      sub_10079E994();

                      goto LABEL_53;
                    }

                    type metadata accessor for SessionDonor();
                    v53 = swift_dynamicCastClass();
                    if (!v53)
                    {
LABEL_51:
                      swift_unknownObjectRelease();
                      goto LABEL_52;
                    }

                    v6 = v53;
                    v54 = sub_1007A2744();
                    v15 = v62;
                    (*(*(v54 - 8) + 56))(v62, 1, 1, v54);
                    v55 = qword_100AD1478;
                    swift_unknownObjectRetain();

                    if (v55 == -1)
                    {
LABEL_50:
                      v56 = qword_100ADE1B0;
                      v57 = sub_1000228AC(&qword_100ADD578, 255, type metadata accessor for PropertyValueActor.ActorType);
                      v58 = swift_allocObject();
                      v58[2] = v56;
                      v58[3] = v57;
                      v58[4] = v6;
                      v58[5] = v17;

                      sub_1003457A0(0, 0, v15, &unk_10081C980, v58);

                      [v6 propertyDidChange:v6 propertyConfiguration:*(v6 + OBJC_IVAR___BKSessionDonor_sessionConfiguration)];
                      v52 = v63;
                      goto LABEL_51;
                    }

LABEL_57:
                    swift_once();
                    goto LABEL_50;
                  }

                  sub_10002899C(v68);
                }

                v72 = 0u;
                v73 = 0u;
                v41 = v63;
                goto LABEL_39;
              }
            }

            sub_10002899C(v68);
          }

          v74 = 0u;
          v75 = 0u;
          goto LABEL_23;
        }
      }

      LODWORD(v63) = 0;
      goto LABEL_16;
    }

    v21 = v67;
  }
}

void sub_100359720()
{
  sub_10001399C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100359830(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009A34;

  return sub_10035803C(a1, v4);
}

uint64_t sub_1003598E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009A34;

  return sub_10035803C(a1, v4);
}

uint64_t sub_1003599BC()
{

  return swift_deallocObject();
}

uint64_t sub_100359A64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002812C;

  return sub_100375C74(a1, v4, v5, v7, v6);
}

uint64_t sub_100359C10(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100009A34;

  return sub_10034BF14(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_100359CEC(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100359CF8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100796544() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_100796AD4() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v7);
  v14 = *(v1 + v10);
  v15 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_100009A34;

  return sub_10034CAA4(a1, v11, v12, v1 + v6, v13, v1 + v9, v14, v15);
}

id sub_100359EBC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_100796AD4() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + 16);
  v11 = *(v3 + v9);
  v12 = *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10034DB0C(a1, a2, a3, v10, v3 + v8, v11, v12);
}

uint64_t sub_100359F80()
{
  v1 = *(sub_100796544() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_1001F1160(&qword_100ADD5B8) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v3);
  v10 = *(v0 + v4);
  v11 = *(v0 + v7);
  v12 = *(v0 + v8);
  v13 = *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10034F3A8(v0 + v2, v9, v10, v0 + v6, v11, v12, v13);
}

uint64_t sub_10035A0B8(int a1, char a2, uint64_t a3)
{
  v7 = *(sub_1001F1160(&qword_100ADD5B8) - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = v3[2];
  v10 = v3[3];
  v11 = v3[4];
  v12 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100350818(a1, a2, a3, v9, v10, v11, v3 + v8, v12);
}

void sub_10035A194(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_10035A1A8()
{
  result = qword_100ADD680;
  if (!qword_100ADD680)
  {
    sub_10000A7C4(255, &qword_100AD3C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD680);
  }

  return result;
}

uint64_t sub_10035A238(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t sub_10035A280(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_100356DBC(a1, v4, v5, v6);
}

uint64_t sub_10035A334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != 1)
  {
    if (a6 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10035A3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != 1)
  {
    if (a6 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10035A44C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();
}

uint64_t sub_10035A4C4()
{
  v1 = OBJC_IVAR____TtC5Books16HistoryViewModel__history;
  v2 = sub_1001F1160(&qword_100AF2830);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HistoryViewModel()
{
  result = qword_100ADD7A0;
  if (!qword_100ADD7A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10035A5C0()
{
  sub_10035A650();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10035A650()
{
  if (!qword_100ADD7B0)
  {
    type metadata accessor for HistoryModel(255);
    v0 = sub_10079B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADD7B0);
    }
  }
}

uint64_t sub_10035A6A8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HistoryViewModel();
  result = sub_10079B8B4();
  *a1 = result;
  return result;
}

uint64_t sub_10035A6E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();
}

uint64_t sub_10035A764(uint64_t a1)
{
  v2 = type metadata accessor for HistoryModel(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_10035A860(a1, &v9 - v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10035A860(v7, v4);

  sub_10079B9B4();
  return sub_10035A8C4(v7);
}

uint64_t sub_10035A860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoryModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10035A8C4(uint64_t a1)
{
  v2 = type metadata accessor for HistoryModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10035A94C()
{

  swift_unknownObjectRelease();
  sub_10002B130(v0 + 80);

  return swift_deallocClassInstance();
}

__n128 sub_10035A9E0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10035A9F4(uint64_t a1, int a2)
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

uint64_t sub_10035AA3C(uint64_t result, int a2, int a3)
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

void *sub_10035AA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = 0;
  swift_unknownObjectWeakInit();
  v6 = sub_10079ECA4();
  v8 = v7;
  v9 = sub_10079EC64();
  v11 = v10;
  v12 = sub_10079EC74();
  v3[2] = v6;
  v3[3] = v8;
  v3[4] = v9;
  v3[5] = v11;
  v3[6] = v12;
  v3[7] = v13;
  v3[8] = a2;
  v3[9] = a3;
  return v3;
}

void *sub_10035AB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SampleHeaderDataManager();
  swift_allocObject();
  return sub_10035AA98(a1, a2, a3);
}

uint64_t type metadata accessor for ThemePreviewWebView()
{
  result = qword_100ADD9E8;
  if (!qword_100ADD9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10035AC28()
{
  type metadata accessor for BE_WKPaginationMode(319);
  if (v0 <= 0x3F)
  {
    sub_100308DA8();
    if (v1 <= 0x3F)
    {
      sub_10035AD20();
      if (v2 <= 0x3F)
      {
        sub_10079EF54();
        if (v3 <= 0x3F)
        {
          sub_10035AD78();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10035AD20()
{
  if (!qword_100ADDA00)
  {
    sub_1007A07E4();
    v0 = sub_1007A3454();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADDA00);
    }
  }
}

unint64_t sub_10035AD78()
{
  result = qword_100ADDA08;
  if (!qword_100ADDA08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100ADDA08);
  }

  return result;
}

id sub_10035ADC4(void *a1)
{
  v2 = v1;
  v4 = sub_1007A07D4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 scrollView];
  [v9 be_configureForBooks];

  sub_10035B028();
  v10 = sub_1007A2214();

  [a1 setBe_textZoomFactor:*(v2 + 24)];
  v11 = *(v2 + 48);
  if (*(v2 + 56))
  {
    [*(v2 + *(type metadata accessor for ThemePreviewWebView() + 48)) useNewTextStyling];
    sub_1007A07C4();
    v12 = sub_1007A0784();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_opt_self();
  type metadata accessor for ThemePreviewWebView();
  sub_10079ED34();
  v14 = sub_1007A2214();

  [v13 updateThemePreviewWebView:a1 styleManager:v11 stylesheetSet:v12 fontFamily:v14];

  sub_1007A3424();
  [a1 setBe_paginationMode:*(v2 + 40)];
  return [a1 setBe_gapBetweenPages:10.0];
}

uint64_t sub_10035B028()
{
  sub_1007A3744(381);
  v29._countAndFlagsBits = 0xD0000000000000F1;
  v29._object = 0x80000001008CC970;
  sub_1007A23D4(v29);
  if (*(v0 + 16))
  {
    v1._countAndFlagsBits = 0x6C61636974726576;
  }

  else
  {
    v1._countAndFlagsBits = 0x746E6F7A69726F68;
  }

  if (*(v0 + 16))
  {
    v2 = 0xEB000000006C722DLL;
  }

  else
  {
    v2 = 0xED000062742D6C61;
  }

  v1._object = v2;
  sub_1007A23D4(v1);

  v30._countAndFlagsBits = 0xD000000000000041;
  v30._object = 0x80000001008CCA70;
  sub_1007A23D4(v30);
  v3 = *(v0 + *(type metadata accessor for ThemePreviewWebView() + 48));
  v4 = [v3 overrideFontFamily];
  v5 = v4 == 0;
  if (v4)
  {
    v6._countAndFlagsBits = 0xD00000000000001DLL;
  }

  else
  {
    v6._countAndFlagsBits = 0;
  }

  if (v5)
  {
    v7 = 0xE000000000000000;
  }

  else
  {
    v7 = 0x80000001008CCB90;
  }

  v6._object = v7;
  sub_1007A23D4(v6);

  v31._countAndFlagsBits = 0x202020200ALL;
  v31._object = 0xE500000000000000;
  sub_1007A23D4(v31);
  v8 = [v3 overrideFontWeight];
  v9 = v8 == 0;
  if (v8)
  {
    v10._countAndFlagsBits = 0xD00000000000001DLL;
  }

  else
  {
    v10._countAndFlagsBits = 0;
  }

  if (v9)
  {
    v11 = 0xE000000000000000;
  }

  else
  {
    v11 = 0x80000001008CCB70;
  }

  v10._object = v11;
  sub_1007A23D4(v10);

  v32._countAndFlagsBits = 0x202020200ALL;
  v32._object = 0xE500000000000000;
  sub_1007A23D4(v32);
  v12 = [v3 overrideLineHeight];
  v13 = v12 == 0;
  if (v12)
  {
    v14._countAndFlagsBits = 0xD00000000000001DLL;
  }

  else
  {
    v14._countAndFlagsBits = 0;
  }

  if (v13)
  {
    v15 = 0xE000000000000000;
  }

  else
  {
    v15 = 0x80000001008CCB50;
  }

  v14._object = v15;
  sub_1007A23D4(v14);

  v33._countAndFlagsBits = 0x202020200ALL;
  v33._object = 0xE500000000000000;
  sub_1007A23D4(v33);
  v16 = [v3 overrideLetterSpacing];
  v17 = v16 == 0;
  if (v16)
  {
    v18._countAndFlagsBits = 0xD000000000000020;
  }

  else
  {
    v18._countAndFlagsBits = 0;
  }

  if (v17)
  {
    v19 = 0xE000000000000000;
  }

  else
  {
    v19 = 0x80000001008CCB20;
  }

  v18._object = v19;
  sub_1007A23D4(v18);

  v34._countAndFlagsBits = 0x202020200ALL;
  v34._object = 0xE500000000000000;
  sub_1007A23D4(v34);
  v20 = [v3 overrideWordSpacing];
  v21 = v20 == 0;
  if (v20)
  {
    v22._countAndFlagsBits = 0xD00000000000001ELL;
  }

  else
  {
    v22._countAndFlagsBits = 0;
  }

  if (v21)
  {
    v23 = 0xE000000000000000;
  }

  else
  {
    v23 = 0x80000001008CCB00;
  }

  v22._object = v23;
  sub_1007A23D4(v22);

  v35._countAndFlagsBits = 0x202020200ALL;
  v35._object = 0xE500000000000000;
  sub_1007A23D4(v35);
  v24 = [v3 overrideTextAlign];
  v25 = v24 == 0;
  if (v24)
  {
    v26._countAndFlagsBits = 0xD00000000000001CLL;
  }

  else
  {
    v26._countAndFlagsBits = 0;
  }

  if (v25)
  {
    v27 = 0xE000000000000000;
  }

  else
  {
    v27 = 0x80000001008CCAE0;
  }

  v26._object = v27;
  sub_1007A23D4(v26);

  v36._countAndFlagsBits = 0x200A3E202020200ALL;
  v36._object = 0xEE003E703C202020;
  sub_1007A23D4(v36);
  sub_1007A23D4(*v0);
  v37._countAndFlagsBits = 0xD000000000000014;
  v37._object = 0x80000001008CCAC0;
  sub_1007A23D4(v37);
  return 0;
}

id sub_10035B36C()
{
  v0 = [objc_opt_self() viewConfiguredForThemePreview];

  return v0;
}

uint64_t sub_10035B3BC(uint64_t a1, char a2, int a3, int a4, id a5)
{
  if ((a2 & 1) == 0)
  {
    [a5 setBe_pageLength:ceil((*&a1 + (*(v5 + 32) + -1.0) * -10.0) / *(v5 + 32))];
  }

  return 0;
}

uint64_t sub_10035B42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10035B5A4(&unk_100ADDA60);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10035B4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10035B5A4(&unk_100ADDA60);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10035B52C()
{
  sub_10035B5A4(&unk_100ADDA60);
  sub_10079CC64();
  __break(1u);
}

uint64_t sub_10035B5A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ThemePreviewWebView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10035B5E8(unint64_t a1)
{
  v2 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v3 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v2))
  {
    v4 = swift_slowAlloc();
    v17[0] = swift_slowAlloc();
    *v4 = 136315394;
    swift_getObjectType();
    v5 = sub_1007A3D34();
    v7 = sub_1000070F4(v5, v6, v17);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_1000070F4(0xD00000000000001DLL, 0x80000001008CD1D0, v17);
    _os_log_impl(&_mh_execute_header, v3, v2, "%s %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  if (a1 >> 62)
  {
    if (sub_1007A38D4())
    {
      goto LABEL_7;
    }

    return _swiftEmptyArrayStorage;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_7:
  sub_1001F1160(&unk_100AD8160);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100811390;
  if (a1 >> 62)
  {

    sub_1001F1160(&qword_100ADDB58);
    v12 = sub_1007A38C4();

    a1 = v12;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFFF8;

    sub_1007A3AD4();
    sub_1001F1160(&qword_100ADDB58);
    if (!swift_dynamicCastMetatype())
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        v11 = v9 + 32;
        while (1)
        {
          v17[1] = &OBJC_PROTOCOL___CPListTemplateItem;
          if (!swift_dynamicCastObjCProtocolConditional())
          {
            break;
          }

          v11 += 8;
          if (!--v10)
          {
            goto LABEL_15;
          }
        }

        a1 = v9 | 1;
      }
    }
  }

LABEL_15:
  v13 = objc_allocWithZone(CPListSection);
  sub_100502464(a1);

  isa = sub_1007A25D4().super.isa;

  v15 = [v13 initWithItems:isa];

  *(v8 + 32) = v15;
  return v8;
}

id sub_10035B8E0(uint64_t a1)
{
  LOBYTE(v2) = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v3 = qword_100AE15E0;
    if (os_log_type_enabled(qword_100AE15E0, v2))
    {
      v4 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v4 = 136315394;
      swift_getObjectType();
      v5 = sub_1007A3D34();
      v7 = sub_1000070F4(v5, v6, aBlock);

      *(v4 + 4) = v7;
      *(v4 + 12) = 2080;
      *(v4 + 14) = sub_1000070F4(0xD000000000000022, 0x80000001008CD1A0, aBlock);
      _os_log_impl(&_mh_execute_header, v3, v2, "%s %s", v4, 0x16u);
      swift_arrayDestroy();
    }

    v54 = _swiftEmptyArrayStorage;
    v8 = OBJC_IVAR____TtC5Books20CarPlayAudiobookData_chapters;
    aBlock[0] = *(a1 + OBJC_IVAR____TtC5Books20CarPlayAudiobookData_chapters);
    sub_1001F1160(&qword_100ADDB60);
    sub_1003631CC();
    if ((sub_1007A28A4() & 1) == 0)
    {
      sub_1007A29B4();
      sub_10079AB44();
      if (!(_swiftEmptyArrayStorage >> 62))
      {
        v40 = _swiftEmptyArrayStorage;
        sub_1007A3944();
        goto LABEL_41;
      }

LABEL_47:
      sub_1001F1160(&qword_100ADDB58);
      v40 = sub_1007A38C4();
      goto LABEL_41;
    }

    v9 = *(a1 + v8);
    if (!(v9 >> 62))
    {
      v2 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }

    v46 = sub_1007A38D4();
    if (v46 < 0)
    {
      __break(1u);
      goto LABEL_47;
    }

    v2 = v46;
LABEL_7:
    v10 = OBJC_IVAR____TtC5Books20CarPlayAudiobookData_firstChapterIndex;
    v11 = *(a1 + OBJC_IVAR____TtC5Books20CarPlayAudiobookData_firstChapterIndex);
    v12 = [objc_opt_self() maximumItemCount];
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v13 = (v11 + v12);
    if (__CFADD__(v11, v12))
    {
      goto LABEL_49;
    }

    if (v13 >= v2)
    {
      v13 = v2;
    }

    v14 = v13 - 1;
    if (!v13)
    {
      goto LABEL_50;
    }

    v15 = *(a1 + v10);
    if (v14 < v15)
    {
      goto LABEL_51;
    }

    v52 = objc_opt_self();
    if ((v15 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
  }

  v47 = OBJC_IVAR____TtC5Books20CarPlayAudiobookData_sessionStartIndex;
  v48 = OBJC_IVAR____TtC5Books20CarPlayAudiobookData_currentIndex;
  v16 = v15 == *(a1 + OBJC_IVAR____TtC5Books20CarPlayAudiobookData_sessionStartIndex);
  v17 = v15 == *(a1 + OBJC_IVAR____TtC5Books20CarPlayAudiobookData_currentIndex);
  v50 = OBJC_IVAR____TtC5Books20CarPlayAudiobookData_playbackRate;
  v49 = v8;
  v51 = a1;
  while (1)
  {
    v2 = *(a1 + v8);
    if ((v2 & 0xC000000000000001) != 0)
    {

      v18 = sub_1007A3784();

      if (v16)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v15 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v18 = *(v2 + 8 * v15 + 32);
      swift_unknownObjectRetain();
      if (v16)
      {
LABEL_18:
        v19 = sub_10035E848();
        goto LABEL_21;
      }
    }

    v19 = 0;
LABEL_21:
    [v18 duration];
    v21 = v20;
    v22 = *(a1 + v50);
    v23 = [v18 title];
    if (v23)
    {
      v24 = v23;
      sub_1007A2254();
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = [v52 stringWithDuration:v21 / v22];
    if (v27)
    {
      v28 = v27;
      sub_1007A2254();
      v30 = v29;

      if (v26)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v30 = 0;
      if (v26)
      {
LABEL_26:
        v31 = v19;
        v32 = sub_1007A2214();

        if (v30)
        {
          goto LABEL_27;
        }

        goto LABEL_30;
      }
    }

    v34 = v19;
    v32 = 0;
    if (v30)
    {
LABEL_27:
      v33 = sub_1007A2214();

      goto LABEL_31;
    }

LABEL_30:
    v33 = 0;
LABEL_31:
    v35 = [objc_allocWithZone(CPListItem) initWithText:v32 detailText:v33 image:0 accessoryImage:v19 accessoryType:0];

    [v35 setPlaying:v17];
    [v35 setPlayingIndicatorLocation:1];
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    *(v37 + 24) = v15;
    aBlock[4] = sub_100363230;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10035C154;
    aBlock[3] = &unk_100A173D0;
    v38 = _Block_copy(aBlock);

    [v35 setHandler:v38];
    _Block_release(v38);
    v39 = v35;
    sub_1007A25C4();
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1007A2614();
    }

    v2 = &v54;
    sub_1007A2644();

    swift_unknownObjectRelease();
    a1 = v51;
    if (v14 == v15)
    {
      break;
    }

    ++v15;
    v8 = v49;
    v17 = v15 == *(v51 + v48);
    v16 = v15 == *(v51 + v47);
    if ((v15 & 0x8000000000000000) != 0)
    {
      goto LABEL_42;
    }
  }

  v41 = v54;
  if (!(v54 >> 62))
  {

    sub_1007A3AD4();
    v40 = v41;
    goto LABEL_40;
  }

LABEL_52:

  sub_1001F1160(&qword_100ADDB58);
  v40 = sub_1007A38C4();

LABEL_40:

LABEL_41:
  v42 = objc_allocWithZone(CPListSection);
  sub_100502464(v40);

  isa = sub_1007A25D4().super.isa;

  v44 = [v42 initWithItems:isa];

  return v44;
}

void sub_10035C01C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [*(*(*(Strong + OBJC_IVAR____TtC5Books16CarPlayPresenter_interactor) + OBJC_IVAR____TtC5Books17CarPlayInteractor_dataManager) + OBJC_IVAR____TtC5Books18CarPlayDataManager_player) playChapterAtIndex:a5];
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      sub_10000A7C4(0, &qword_100AD1E10);
      *(swift_allocObject() + 16) = v10;
      swift_unknownObjectRetain();
      sub_1007A2CD4();
      swift_unknownObjectRelease();
    }

    a2(v9);
  }
}

uint64_t sub_10035C154(uint64_t a1, int a2, void *aBlock)
{
  v3 = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v6 = swift_unknownObjectRetain();
  v3(v6, sub_1002427EC, v5);

  return swift_unknownObjectRelease();
}

uint64_t sub_10035C204(unint64_t a1, float a2)
{
  *&v70 = sub_100796CF4();
  v4 = *(v70 - 8);
  __chkstk_darwin(v70);
  v6 = &v66[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v66[-v8];
  v10 = sub_1007A21D4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v66[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v66[-v15];
  v17 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v18 = qword_100AE15E0;
  v19 = os_log_type_enabled(qword_100AE15E0, v17);
  v71 = a1;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v69 = v10;
    v21 = v20;
    v68 = swift_slowAlloc();
    aBlock = v68;
    *v21 = 136315394;
    swift_getObjectType();
    v22 = sub_1007A3D34();
    v24 = sub_1000070F4(v22, v23, &aBlock);
    v67 = v17;
    v25 = v16;
    v26 = v13;
    v27 = v11;
    v28 = v9;
    v29 = v4;
    v30 = v6;
    v31 = v24;

    *(v21 + 4) = v31;
    v6 = v30;
    v4 = v29;
    v9 = v28;
    v11 = v27;
    v13 = v26;
    v16 = v25;
    a1 = v71;
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_1000070F4(0xD000000000000019, 0x80000001008CD160, &aBlock);
    _os_log_impl(&_mh_execute_header, v18, v67, "%s %s", v21, 0x16u);
    swift_arrayDestroy();

    v10 = v69;
  }

  sub_1007A2154();
  sub_100796C94();
  (*(v11 + 16))(v13, v16, v10);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v34 = v70;
  (*(v4 + 16))(v6, v9, v70);
  v35 = sub_1007A22D4();
  v37 = v36;
  (*(v4 + 8))(v9, v34);
  result = (*(v11 + 8))(v16, v10);
  v78 = _swiftEmptyArrayStorage;
  v39 = a1;
  if (!(a1 >> 62))
  {
    v40 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v40)
    {
      goto LABEL_7;
    }

LABEL_21:
    v60 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_18:

      sub_1007A3AD4();
      v61 = v60;
LABEL_19:

      v62 = objc_allocWithZone(CPListSection);
      sub_100502464(v61);

      isa = sub_1007A25D4().super.isa;

      v64 = sub_1007A2214();

      v65 = [v62 initWithItems:isa header:v64 sectionIndexTitle:0];

      return v65;
    }

LABEL_22:

    sub_1001F1160(&qword_100ADDB58);
    v61 = sub_1007A38C4();

    goto LABEL_19;
  }

  result = sub_1007A38D4();
  v39 = a1;
  v40 = result;
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_7:
  if (v40 >= 1)
  {
    v68 = v35;
    v69 = v37;
    v41 = 0;
    v42 = v39 & 0xC000000000000001;
    v43 = a2;
    v70 = xmmword_10080B690;
    do
    {
      if (v42)
      {
        v44 = sub_1007A3784();
      }

      else
      {
        v44 = *(v39 + 8 * v41 + 32);
      }

      v45 = v44;
      sub_1001F1160(&unk_100AD5090);
      v46 = swift_allocObject();
      *(v46 + 16) = v70;
      [v45 floatValue];
      *(v46 + 56) = &type metadata for Float;
      *(v46 + 64) = &protocol witness table for Float;
      *(v46 + 32) = v47;
      aBlock = sub_1007A2284();
      v73 = v48;
      v79._countAndFlagsBits = 38851;
      v79._object = 0xA200000000000000;
      sub_1007A23D4(v79);
      v49 = objc_allocWithZone(CPListItem);
      v50 = sub_1007A2214();

      v51 = [v49 initWithText:v50 detailText:0];

      [v45 floatValue];
      if (vabdd_f64(v52, v43) < 0.00999999978)
      {
        v53 = sub_1007A2214();
        v54 = [objc_opt_self() systemImageNamed:v53];

        [v51 setAccessoryImage:v54];
      }

      v55 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v56 = swift_allocObject();
      *(v56 + 16) = v55;
      *(v56 + 24) = v45;
      v76 = sub_1003631BC;
      v77 = v56;
      aBlock = _NSConcreteStackBlock;
      v73 = 1107296256;
      v74 = sub_10035C154;
      v75 = &unk_100A17358;
      v57 = _Block_copy(&aBlock);
      v58 = v45;

      [v51 setHandler:v57];
      _Block_release(v57);
      v59 = v51;
      sub_1007A25C4();
      if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1007A2614();
      }

      ++v41;
      sub_1007A2644();

      v39 = v71;
    }

    while (v40 != v41);
    v60 = v78;
    if (!(v78 >> 62))
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  __break(1u);
  return result;
}

void sub_10035CA34(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC5Books16CarPlayPresenter_interactor);
    v9 = Strong;
    sub_10000A7C4(0, &qword_100AD1E10);
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = a5;
    swift_unknownObjectRetain_n();
    v11 = a5;
    sub_1007A2CD4();
    swift_unknownObjectRelease();

    a2(v12);
  }
}

id sub_10035CB38(uint64_t a1, uint64_t a2, unint64_t a3)
{
  LOBYTE(v4) = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v5 = qword_100AE15E0;
    v38 = a3;
    if (os_log_type_enabled(qword_100AE15E0, v4))
    {
      v6 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v6 = 136315394;
      swift_getObjectType();
      v7 = sub_1007A3D34();
      v9 = sub_1000070F4(v7, v8, &aBlock);

      *(v6 + 4) = v9;
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_1000070F4(0xD00000000000001ALL, 0x80000001008CD0D0, &aBlock);
      _os_log_impl(&_mh_execute_header, v5, v4, "%s %s", v6, 0x16u);
      swift_arrayDestroy();
    }

    v45 = _swiftEmptyArrayStorage;
    if (!(a3 >> 62))
    {
      v10 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        break;
      }

      goto LABEL_6;
    }

    v10 = sub_1007A38D4();
    if (!v10)
    {
      break;
    }

LABEL_6:
    v11 = objc_opt_self();
    v12 = 0;
    v13 = a3 & 0xC000000000000001;
    v37 = a3 & 0xFFFFFFFFFFFFFF8;
    v14 = _swiftEmptyArrayStorage;
    while (v13)
    {
      v15 = sub_1007A3784();
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_26;
      }

LABEL_13:
      if (swift_unknownObjectWeakLoadStrong())
      {
        v17 = sub_100502150();
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 1.0;
      }

      [v11 maximumImageSize];
      v19 = v17 * v18;
      [v11 maximumImageSize];
      v21 = sub_10035E39C(v15, v19, v17 * v20);
      if (v21)
      {
        v22 = v21;
        sub_1007A25C4();
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1007A2614();
        }

        sub_1007A2644();

        v14 = v45;
        a3 = v38;
      }

      if (v14 >> 62)
      {
        v4 = sub_1007A38D4();
      }

      else
      {
        v4 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      swift_unknownObjectRelease();
      if (v4 != 8)
      {
        ++v12;
        if (v16 != v10)
        {
          continue;
        }
      }

      goto LABEL_30;
    }

    if (v12 >= *(v37 + 16))
    {
      goto LABEL_27;
    }

    v15 = *(a3 + 8 * v12 + 32);
    swift_unknownObjectRetain();
    v16 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      goto LABEL_13;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
  }

LABEL_30:
  v23 = objc_allocWithZone(CPListImageRowItem);
  v24 = a3;
  v25 = sub_1007A2214();
  sub_10000A7C4(0, &qword_100ADDB48);
  isa = sub_1007A25D4().super.isa;

  v27 = [v23 initWithText:v25 images:isa];

  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = v24;
  v29[4] = a1;
  v29[5] = a2;
  v43 = sub_100363150;
  v44 = v29;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v41 = sub_10035C154;
  v42 = &unk_100A17240;
  v30 = _Block_copy(&aBlock);

  [v27 setHandler:v30];
  _Block_release(v30);
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = v24;
  v43 = sub_1003631AC;
  v44 = v32;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v41 = sub_10035D270;
  v42 = &unk_100A17290;
  v33 = _Block_copy(&aBlock);

  [v27 setListImageRowHandler:v33];
  _Block_release(v33);
  return v27;
}

uint64_t sub_10035D0BC(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1003629A8(a5);
  }

  return a2();
}

uint64_t sub_10035D138(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    if ((a6 & 0xC000000000000001) == 0)
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*((a6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
      {
        v12 = *(a6 + 8 * a2 + 32);
        swift_unknownObjectRetain();
LABEL_6:
        v13 = swift_allocObject();
        v13[2] = v11;
        v13[3] = a3;
        v13[4] = a4;
        swift_unknownObjectRetain();
        v14 = v11;

        sub_100307594(v12, sub_10036340C, v13);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      __break(1u);
      return result;
    }

    v12 = sub_1007A3784();
    goto LABEL_6;
  }

  return result;
}

void sub_10035D270(uint64_t a1, void *a2, int a3, void *aBlock)
{
  v5 = *(a1 + 32);
  v6 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v6;

  v7 = a2;
  v5();
}

id sub_10035D334(void *a1, char a2, void *a3)
{
  v6 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v7 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v6))
  {
    v8 = swift_slowAlloc();
    v39[0] = swift_slowAlloc();
    *v8 = 136315394;
    swift_getObjectType();
    v9 = sub_1007A3D34();
    v11 = sub_1000070F4(v9, v10, v39);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_1000070F4(0xD00000000000002DLL, 0x80000001008CCF70, v39);
    _os_log_impl(&_mh_execute_header, v7, v6, "%s %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = sub_100502150();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 1.0;
  }

  v13 = objc_opt_self();
  [v13 maximumImageSize];
  v15 = v12 * v14;
  [v13 maximumImageSize];
  v17 = sub_10035E39C(a1, v15, v12 * v16);
  sub_100361E90(a1, a2 & 1, a3);
  if ([a1 isLocal])
  {
    v18 = 0;
  }

  else
  {
    v18 = 2;
  }

  v19 = [a1 title];
  v20 = objc_allocWithZone(CPListItem);
  v21 = v17;
  v22 = sub_1007A2214();

  v23 = [v20 initWithText:v19 detailText:v22 image:v21 accessoryImage:0 accessoryType:v18];

  [v23 setUserInfo:a1];
  v24 = [a1 readingProgress];
  if (v24)
  {
    v25 = v24;
    [v24 floatValue];
    v27 = v26;

    v28 = v27;
  }

  else
  {
    v28 = 0.0;
  }

  if (fabs(v28) >= 0.00999999978)
  {
    v29 = [a1 isFinished];
    v30 = 1.0;
    if ((v29 & 1) == 0)
    {
      [a3 floatValue];
      v30 = v31;
    }

    [v23 setPlaybackProgress:v30];
  }

  v32 = [a1 isExplicit];
  if (v32)
  {
    v33 = v32;
    v34 = [v32 BOOLValue];
  }

  else
  {
    v34 = 0;
  }

  [v23 setExplicitContent:v34];
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = a1;
  v39[4] = sub_100363114;
  v39[5] = v36;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 1107296256;
  v39[2] = sub_10035C154;
  v39[3] = &unk_100A17178;
  v37 = _Block_copy(v39);
  swift_unknownObjectRetain();

  [v23 setHandler:v37];
  _Block_release(v37);

  return v23;
}

uint64_t sub_10035D7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a2;
    v10[4] = a3;
    swift_unknownObjectRetain();
    v11 = v9;

    sub_100307594(a5, sub_10036311C, v10);

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_10035D89C(uint64_t a1, void (*a2)(double), uint64_t a3)
{
  v6 = sub_100796CF4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v62 - v11;
  v13 = sub_1007A21D4();
  v14 = a1;
  v15 = *(v13 - 8);
  __chkstk_darwin(v14);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v62 - v20;
  if (v22)
  {
    v66 = a2;
    v67 = a3;
    v23 = sub_1007967C4();
    sub_1007A2154();
    sub_100796C94();
    v74 = *(v15 + 16);
    v75 = v15 + 16;
    v74(v17, v21, v13);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v72 = objc_opt_self();
    v73 = ObjCClassFromMetadata;
    v25 = [v72 bundleForClass:ObjCClassFromMetadata];
    v70 = *(v7 + 16);
    v71 = v7 + 16;
    v70(v9, v12, v6);
    v26 = sub_1007A22D4();
    v78 = v27;
    v28 = *(v7 + 8);
    v68 = v26;
    v69 = v28;
    v65 = v7 + 8;
    v28(v12, v6);
    v29 = *(v15 + 8);
    v64 = v15 + 8;
    v29(v21, v13);
    v77 = v23;
    v30 = [v23 domain];
    v31 = sub_1007A2254();
    v33 = v32;

    if (v31 == 0xD00000000000001ELL && 0x80000001008CA890 == v33)
    {
    }

    else
    {
      v34 = sub_1007A3AB4();

      if ((v34 & 1) == 0)
      {
        v38 = v9;
        goto LABEL_15;
      }
    }

    v35 = [v77 code];
    v63 = v29;
    if (v35 == 2)
    {

      sub_1007A2154();
      sub_100796C94();
      v74(v17, v21, v13);
      v36 = [v72 bundleForClass:v73];
      v70(v9, v12, v6);
      v38 = v9;
      v68 = sub_1007A22D4();
      v78 = v37;
    }

    else
    {
      if (v35 != 1)
      {
        v38 = v9;
        v29 = v63;
        goto LABEL_15;
      }

      [objc_opt_self() deviceClass];
      sub_1007A2154();
      sub_100796C94();
      v74(v17, v21, v13);
      [v72 bundleForClass:v73];
      v70(v9, v12, v6);
      v38 = v9;
      v68 = sub_1007A22D4();
      v78 = v39;
    }

    v69(v12, v6);
    v29 = v63;
    v63(v21, v13);
LABEL_15:
    sub_1007A2154();
    sub_100796C94();
    v74(v17, v21, v13);
    v40 = [v72 bundleForClass:v73];
    v70(v38, v12, v6);
    sub_1007A22D4();
    v69(v12, v6);
    v29(v21, v13);
    v41 = swift_allocObject();
    v42 = v76;
    v44 = v66;
    v43 = v67;
    v41[2] = v76;
    v41[3] = v44;
    v41[4] = v43;
    v45 = objc_allocWithZone(CPAlertAction);
    v46 = v42;
    sub_1000260E8(v44);
    v47 = sub_1007A2214();

    aBlock[4] = sub_1003630F8;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10036343C;
    aBlock[3] = &unk_100A170B0;
    v48 = _Block_copy(aBlock);
    v49 = [v45 initWithTitle:v47 style:0 handler:v48];

    _Block_release(v48);

    sub_1001F1160(&unk_100AE0B30);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_10080B690;
    v51 = v78;
    *(v50 + 32) = v68;
    *(v50 + 40) = v51;
    sub_1001F1160(&unk_100AD8160);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_100811390;
    *(v52 + 32) = v49;
    v53 = objc_allocWithZone(CPAlertTemplate);
    v54 = v49;
    isa = sub_1007A25D4().super.isa;

    sub_10000A7C4(0, &qword_100ADDB30);
    v56 = sub_1007A25D4().super.isa;

    v57 = [v53 initWithTitleVariants:isa actions:v56];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v59 = Strong;
      sub_10000A7C4(0, &qword_100AD1E10);
      v60 = swift_allocObject();
      *(v60 + 16) = v59;
      *(v60 + 24) = v57;
      swift_unknownObjectRetain();
      v61 = v57;
      sub_1007A2CD4();

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return;
  }

  if (a2)
  {
    a2(v19);
  }
}

uint64_t sub_10035E2D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_10000A7C4(0, &qword_100AD1E10);
    *(swift_allocObject() + 16) = v5;
    swift_unknownObjectRetain();
    sub_1007A2CD4();
    swift_unknownObjectRelease();
  }

  if (a3)
  {
    return a3(result);
  }

  return result;
}

id sub_10035E39C(void *a1, double a2, double a3)
{
  v7 = sub_1007A1CC4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = v30 - v13;
  result = [a1 assetID];
  if (result)
  {
    v16 = result;
    v17 = dispatch_semaphore_create(0);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    v31 = (v18 + 16);
    v19 = [objc_opt_self() describedImageWithIdentifier:v16 size:0 processingOptions:{a2, a3}];

    [v19 setPriority:6];
    [v19 setRequestOptions:2];
    v30[1] = v3;
    v20 = *(v3 + OBJC_IVAR____TtC5Books16CarPlayPresenter_coverCache);
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    *(v21 + 24) = v17;
    aBlock[4] = sub_1003630E8;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100569BDC;
    aBlock[3] = &unk_100A17060;
    v22 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v32 = v18;

    v23 = v17;

    [v20 fetchCGImageFor:v19 forRequest:v19 timeOut:1 waitForNonGeneric:v22 completion:4.0];
    _Block_release(v22);
    swift_unknownObjectRelease();
    sub_1007A1CB4();
    sub_1007A1D24();
    v24 = *(v8 + 8);
    v24(v10, v7);
    sub_1007A2EC4();
    v24(v14, v7);
    if (sub_1007A1C34())
    {
      sub_1007A29B4();
      if (qword_100AD1530 != -1)
      {
        swift_once();
      }

      sub_10079AB44();
    }

    v25 = v31;
    swift_beginAccess();
    if (*v25)
    {
      v26 = *v25;
      v27 = [v26 CGImage];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v28 = sub_100502150();
        swift_unknownObjectRelease();
      }

      else
      {
        v28 = 1.0;
      }

      v29 = [objc_allocWithZone(UIImage) initWithCGImage:v27 scale:0 orientation:v28];

      swift_unknownObjectRelease();

      return v29;
    }

    else
    {

      swift_unknownObjectRelease();

      return 0;
    }
  }

  return result;
}

Swift::Int sub_10035E7D4(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [a1 image];
    swift_beginAccess();
    v4 = *(a2 + 16);
    *(a2 + 16) = v3;
  }

  return sub_1007A2ED4();
}

UIImage *sub_10035E848()
{
  v0 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v1 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v0))
  {
    v2 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v2 = 136315394;
    swift_getObjectType();
    v3 = sub_1007A3D34();
    v5 = sub_1000070F4(v3, v4, &v27);

    *(v2 + 4) = v5;
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_1000070F4(0x6B72616D6B6F6F62, 0xEF29286567616D49, &v27);
    _os_log_impl(&_mh_execute_header, v1, v0, "%s %s", v2, 0x16u);
    swift_arrayDestroy();
  }

  v6 = objc_opt_self();
  v7 = [v6 labelColor];
  v28.width = 9.0;
  v28.height = 9.0;
  UIGraphicsBeginImageContextWithOptions(v28, 0, 0.0);
  [v7 set];
  v8 = [objc_allocWithZone(UIBezierPath) init];
  [v8 addArcWithCenter:1 radius:4.5 startAngle:4.5 endAngle:3.0 clockwise:{0.0, 6.28318531}];
  [v8 closePath];
  [v8 fill];
  v26 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  v9 = [v6 whiteColor];
  v29.width = 9.0;
  v29.height = 9.0;
  UIGraphicsBeginImageContextWithOptions(v29, 0, 0.0);
  [v9 set];
  v10 = [objc_allocWithZone(UIBezierPath) init];
  [v10 addArcWithCenter:1 radius:4.5 startAngle:4.5 endAngle:3.0 clockwise:{0.0, 6.28318531}];
  [v10 closePath];
  [v10 fill];
  v11 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v13 = *(Strong + OBJC_IVAR___BKCarPlayController_interfaceController);
  if (!v13)
  {
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v14 = v13;
  v15 = [v14 carTraitCollection];

  swift_unknownObjectRelease();
  if (!v15)
  {
LABEL_14:
    v22 = [v6 grayColor];
    v30.width = 9.0;
    v30.height = 9.0;
    UIGraphicsBeginImageContextWithOptions(v30, 0, 0.0);
    [v22 set];
    v23 = [objc_allocWithZone(UIBezierPath) init];
    [v23 addArcWithCenter:1 radius:4.5 startAngle:4.5 endAngle:3.0 clockwise:{0.0, 6.28318531}];
    [v23 closePath];
    [v23 fill];
    v24 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    v21 = v24;
    sub_1007A29B4();
    sub_10079AB44();
    v19 = v11;
    v11 = v26;
    v20 = v21;
    goto LABEL_15;
  }

  v16 = sub_1007A2DF4();
  v17 = sub_1007A2DF4();
  v18 = [objc_allocWithZone(UIImageAsset) init];
  v19 = v18;
  v20 = v26;
  if (v26)
  {
    [(UIImage *)v18 registerImage:v26 withTraitCollection:v16];
  }

  if (v11)
  {
    [(UIImage *)v19 registerImage:v11 withTraitCollection:v17];
  }

  v21 = [(UIImage *)v19 imageWithTraitCollection:v15];

LABEL_15:
  return v21;
}

id sub_10035EDF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarPlayPresenter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10035EEC4(void *a1, unint64_t a2)
{
  v3 = [a1 sections];
  sub_10000A7C4(0, &qword_100ADDB28);
  v4 = sub_1007A25E4();

  if (v4 >> 62)
  {
LABEL_45:
    if (!sub_1007A38D4())
    {
      goto LABEL_50;
    }
  }

  else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_50;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = sub_1007A3784();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;

  v7 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v8 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v7))
  {
    v9 = swift_slowAlloc();
    *&v54[0] = swift_slowAlloc();
    *v9 = 136315394;
    swift_getObjectType();
    v10 = sub_1007A3D34();
    v12 = sub_1000070F4(v10, v11, v54);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_1000070F4(0xD000000000000022, 0x80000001008CD2D0, v54);
    _os_log_impl(&_mh_execute_header, v8, v7, "%s %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v4 = [v6 items];
  sub_1001F1160(&qword_100ADDB58);
  v13 = sub_1007A25E4();

  if (v13 >> 62)
  {
    v14 = sub_1007A38D4();
    if (v14)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_49:

LABEL_50:

    return;
  }

LABEL_12:
  oslog = v8;
  v48 = v6;
  v15 = a2;
  a2 = 0;
  v46 = v15;
  v16 = v13 & 0xFFFFFFFFFFFFFF8;
  v49 = (v15 + OBJC_IVAR____TtC5Books20CarPlayListenNowData_assetID);
  while (1)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      sub_1007A3784();
      v17 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (a2 >= *(v16 + 16))
      {
        goto LABEL_44;
      }

      swift_unknownObjectRetain();
      v17 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      break;
    }

    swift_unknownObjectRelease();
LABEL_14:
    ++a2;
    if (v17 == v14)
    {

      return;
    }
  }

  v19 = v18;
  swift_unknownObjectRetain();
  v20 = [v19 userInfo];
  if (v20)
  {
    v4 = v20;
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
  }

  v54[0] = v52;
  v54[1] = v53;
  if (!*(&v53 + 1))
  {
    swift_unknownObjectRelease_n();
    sub_1000230BC(v54);
    goto LABEL_14;
  }

  sub_1001F1160(&qword_100ADDB80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease_n();
    goto LABEL_14;
  }

  v21 = [v51 assetID];
  if (!v21 || (v4 = v21, v22 = sub_1007A2254(), v24 = v23, v4, !v24))
  {
LABEL_32:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease_n();
    v16 = v13 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_14;
  }

  if (v22 != *v49 || v24 != v49[1])
  {
    v4 = sub_1007A3AB4();

    if (v4)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

LABEL_37:

  v25 = *(v46 + OBJC_IVAR____TtC5Books20CarPlayListenNowData_updatedReadingProgress);
  sub_100361E90(v51, 1, v25);
  v27 = v26;
  v29 = v28;

  v30 = sub_1007A29D4();
  v31 = v48;
  if (os_log_type_enabled(oslog, v30))
  {
    v50 = v27;
    v32 = swift_slowAlloc();
    *&v54[0] = swift_slowAlloc();
    *v32 = 136316162;
    swift_getObjectType();
    v33 = sub_1007A3D34();
    v35 = sub_1000070F4(v33, v34, v54);

    *(v32 + 4) = v35;
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_1000070F4(0xD000000000000022, 0x80000001008CD2D0, v54);
    *(v32 + 22) = 2080;
    v36 = [v19 detailText];
    if (v36)
    {
      v37 = v36;
      v38 = sub_1007A2254();
      v40 = v39;
    }

    else
    {
      v40 = 0xE500000000000000;
      v38 = 0x3E6C696E3CLL;
    }

    v41 = sub_1000070F4(v38, v40, v54);

    *(v32 + 24) = v41;
    *(v32 + 32) = 2080;
    *(v32 + 34) = sub_1000070F4(v50, v29, v54);
    *(v32 + 42) = 2080;
    v42 = *v49;
    v43 = v49[1];

    v44 = sub_1000070F4(v42, v43, v54);

    *(v32 + 44) = v44;
    _os_log_impl(&_mh_execute_header, oslog, v30, "%s %s: received update -- changing text from %s to %s for asset %s", v32, 0x34u);
    swift_arrayDestroy();

    v31 = v48;
  }

  v45 = sub_1007A2214();

  [v19 setDetailText:v45];
  swift_unknownObjectRelease_n();
  swift_unknownObjectRelease();
}

void sub_10035F60C(void *a1, uint64_t a2)
{
  LOBYTE(v3) = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v4 = qword_100AE15E0;
    if (os_log_type_enabled(qword_100AE15E0, v3))
    {
      v5 = swift_slowAlloc();
      *&v33[0] = swift_slowAlloc();
      *v5 = 136315394;
      swift_getObjectType();
      v6 = sub_1007A3D34();
      v8 = sub_1000070F4(v6, v7, v33);

      *(v5 + 4) = v8;
      *(v5 + 12) = 2080;
      *(v5 + 14) = sub_1000070F4(0xD000000000000020, 0x80000001008CD300, v33);
      _os_log_impl(&_mh_execute_header, v4, v3, "%s %s", v5, 0x16u);
      swift_arrayDestroy();
    }

    v9 = [a1 sections];
    sub_10000A7C4(0, &qword_100ADDB28);
    v10 = sub_1007A25E4();

    if (v10 >> 62)
    {
      if (!sub_1007A38D4())
      {
        goto LABEL_45;
      }
    }

    else if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_45;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = sub_1007A3784();
    }

    else
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v11 = *(v10 + 32);
    }

    v12 = v11;

    v13 = [v12 items];
    sub_1001F1160(&qword_100ADDB58);
    v3 = sub_1007A25E4();

    if (!(v3 >> 62))
    {
      v14 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        break;
      }

      goto LABEL_11;
    }

    v14 = sub_1007A38D4();
    if (!v14)
    {
      break;
    }

LABEL_11:
    v27 = v12;
    v15 = 0;
    v28 = (a2 + OBJC_IVAR____TtC5Books20CarPlayListenNowData_assetID);
    v16 = v3 & 0xC000000000000001;
    v17 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v16)
      {
        sub_1007A3784();
        a1 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
          break;
        }

        goto LABEL_20;
      }

      if (v15 >= *(v17 + 16))
      {
        goto LABEL_38;
      }

      swift_unknownObjectRetain();
      a1 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

LABEL_20:
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        v19 = v18;
        swift_unknownObjectRetain();
        if ([v19 userInfo])
        {
          sub_1007A3504();
          swift_unknownObjectRelease();
        }

        else
        {
          v31 = 0u;
          v32 = 0u;
        }

        v33[0] = v31;
        v33[1] = v32;
        if (*(&v32 + 1))
        {
          sub_1001F1160(&qword_100ADDB80);
          if (swift_dynamicCast())
          {
            v20 = [v30 assetID];
            if (v20)
            {
              v21 = v20;
              v22 = sub_1007A2254();
              v24 = v23;

              if (v24)
              {
                if (v22 == *v28 && v24 == v28[1])
                {

LABEL_36:

                  [*(a2 + OBJC_IVAR____TtC5Books20CarPlayListenNowData_updatedReadingProgress) floatValue];
                  [v19 setPlaybackProgress:v26];
                  swift_unknownObjectRelease_n();
                  swift_unknownObjectRelease();

                  return;
                }

                v25 = sub_1007A3AB4();

                if (v25)
                {
                  goto LABEL_36;
                }
              }
            }

            swift_unknownObjectRelease();
            swift_unknownObjectRelease_n();
            v17 = v3 & 0xFFFFFFFFFFFFFF8;
            v16 = v3 & 0xC000000000000001;
          }

          else
          {
            swift_unknownObjectRelease_n();
          }
        }

        else
        {
          swift_unknownObjectRelease_n();
          sub_1000230BC(v33);
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v15;
      if (a1 == v14)
      {

        return;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

LABEL_45:
}

void sub_10035FB54()
{
  v1 = v0;
  v2 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v3 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v2))
  {
    v4 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v4 = 136315394;
    swift_getObjectType();
    v5 = sub_1007A3D34();
    v7 = sub_1000070F4(v5, v6, &aBlock);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_1000070F4(0xD00000000000001DLL, 0x80000001008CD350, &aBlock);
    _os_log_impl(&_mh_execute_header, v3, v2, "%s %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v8 = [objc_opt_self() sharedTemplate];
  v9 = sub_1007A2214();
  v10 = objc_opt_self();
  v11 = [v10 systemImageNamed:v9];

  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = sub_1007A2214();
  v13 = [v10 systemImageNamed:v12];

  if (!v13)
  {

LABEL_11:
    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = objc_allocWithZone(CPNowPlayingPlaybackRateButton);
    v52 = sub_1003632F4;
    v53 = v40;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_10036343C;
    v51 = &unk_100A17498;
    v42 = _Block_copy(&aBlock);

    v43 = [v41 initWithHandler:v42];
    _Block_release(v42);

    sub_1001F1160(&unk_100AD8160);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_100811390;
    *(v44 + 32) = v43;
    sub_10000A7C4(0, &qword_100ADDB88);
    v37 = v43;
    v39.super.isa = sub_1007A25D4().super.isa;

    [v8 updateNowPlayingButtons:v39.super.isa];
    goto LABEL_12;
  }

  v47 = v11;
  v14 = v13;
  v15 = sub_1003602E8();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = objc_allocWithZone(CPNowPlayingImageButton);
  v52 = sub_10036332C;
  v53 = v16;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_10036343C;
  v51 = &unk_100A174C0;
  v18 = _Block_copy(&aBlock);

  v19 = [v17 initWithImage:v15 handler:v18];
  _Block_release(v18);

  v20 = OBJC_IVAR____TtC5Books16CarPlayPresenter_decrementButton;
  v21 = *(v1 + OBJC_IVAR____TtC5Books16CarPlayPresenter_decrementButton);
  *(v1 + OBJC_IVAR____TtC5Books16CarPlayPresenter_decrementButton) = v19;

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = objc_allocWithZone(CPNowPlayingPlaybackRateButton);
  v52 = sub_100363364;
  v53 = v22;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_10036343C;
  v51 = &unk_100A174E8;
  v24 = _Block_copy(&aBlock);

  v25 = [v23 initWithHandler:v24];
  _Block_release(v24);

  v46 = v14;
  v26 = sub_1003602E8();
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = objc_allocWithZone(CPNowPlayingImageButton);
  v52 = sub_10036336C;
  v53 = v27;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_10036343C;
  v51 = &unk_100A17510;
  v29 = _Block_copy(&aBlock);

  v30 = [v28 initWithImage:v26 handler:v29];
  _Block_release(v29);

  v31 = OBJC_IVAR____TtC5Books16CarPlayPresenter_incrementButton;
  v32 = *(v1 + OBJC_IVAR____TtC5Books16CarPlayPresenter_incrementButton);
  *(v1 + OBJC_IVAR____TtC5Books16CarPlayPresenter_incrementButton) = v30;

  sub_1001F1160(&unk_100AD8160);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100811370;
  v34 = *(v1 + v20);
  if (v34)
  {
    *(v33 + 32) = v34;
    *(v33 + 40) = v25;
    v35 = *(v1 + v31);
    if (v35)
    {
      *(v33 + 48) = v35;
      sub_10000A7C4(0, &qword_100ADDB88);
      v36 = v34;
      v37 = v25;
      v38 = v35;
      v39.super.isa = sub_1007A25D4().super.isa;

      [v8 updateNowPlayingButtons:v39.super.isa];

LABEL_12:
      [v8 setUpNextButtonEnabled:1];
      v45 = sub_1007A2214();
      [v8 setUpNextTitle:v45];

      [v8 setAlbumArtistButtonEnabled:0];
      [v8 addObserver:v1];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1003602E8()
{
  [v0 size];
  sub_1007A3074();
  v2 = v1;
  v4 = v3;
  v5 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v1, v3}];
  v6 = swift_allocObject();
  *(v6 + 2) = v0;
  v6[3] = v2;
  v6[4] = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1003633BC;
  *(v7 + 24) = v6;
  v12[4] = sub_1002C70B8;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1004091A8;
  v12[3] = &unk_100A17600;
  v8 = _Block_copy(v12);
  v9 = v0;

  v10 = [v5 imageWithActions:v8];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v10;
  }

  __break(1u);
  return result;
}

void sub_1003604B8()
{
  v0 = objc_allocWithZone(CPListTemplate);
  sub_10000A7C4(0, &qword_100ADDB28);
  isa = sub_1007A25D4().super.isa;
  v2 = [v0 initWithTitle:0 sections:isa];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v4 = Strong, v5 = swift_unknownObjectWeakLoadStrong(), v4, v5))
  {
    sub_10000A7C4(0, &qword_100AD1E10);
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v2;
    swift_unknownObjectRetain();
    v7 = v2;
    sub_1007A2CD4();

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_100360604()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC5Books16CarPlayPresenter_interactor);
    v2 = result;
    swift_unknownObjectRetain();

    sub_10000A7C4(0, &qword_100AD1E10);
    *(swift_allocObject() + 16) = v1;
    swift_unknownObjectRetain();
    sub_1007A2CD4();
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1003606DC(void *a1, unint64_t a2, float a3)
{
  v4 = sub_10035C204(a2, a3);
  sub_1001F1160(&unk_100AD8160);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100811390;
  *(v5 + 32) = v4;
  sub_10000A7C4(0, &qword_100ADDB28);
  v6 = v4;
  isa = sub_1007A25D4().super.isa;

  [a1 updateSections:isa];
}

uint64_t sub_100360814()
{
  v0 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v1 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v0))
  {
    v2 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v2 = 136315394;
    swift_getObjectType();
    v3 = sub_1007A3D34();
    v5 = sub_1000070F4(v3, v4, &v11);

    *(v2 + 4) = v5;
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_1000070F4(0xD000000000000013, 0x80000001008CCFA0, &v11);
    _os_log_impl(&_mh_execute_header, v1, v0, "%s %s", v2, 0x16u);
    swift_arrayDestroy();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = [objc_opt_self() sharedTemplate];
    sub_10000A7C4(0, &qword_100AD1E10);
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    swift_unknownObjectRetain();
    v10 = v8;
    sub_1007A2CD4();

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100360A64(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100796CF4();
  v102 = *(v6 - 8);
  v103 = v6;
  __chkstk_darwin(v6);
  v99 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v100 = &v90 - v9;
  v101 = sub_1007A21D4();
  v98 = *(v101 - 8);
  __chkstk_darwin(v101);
  v96 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v97 = &v90 - v12;
  LODWORD(v13) = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
LABEL_45:
    swift_once();
  }

  v14 = qword_100AE15E0;
  v15 = os_log_type_enabled(qword_100AE15E0, v13);
  v16 = a1;
  v17 = a1 >> 62;
  v104 = a2 >> 62;
  v105 = v14;
  v106 = a2;
  v107 = v16;
  if (v15)
  {
    v93 = v13;
    v18 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v109[0] = v92;
    *v18 = 136315906;
    swift_getObjectType();
    v19 = sub_1007A3D34();
    v21 = sub_1000070F4(v19, v20, v109);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_1000070F4(0xD00000000000002FLL, 0x80000001008CD250, v109);
    v94 = v17;
    v95 = v18;
    *(v18 + 22) = 2080;
    v22 = v107;
    v23 = v107 & 0xFFFFFFFFFFFFFF8;
    if (v17)
    {
      v24 = sub_1007A38D4();
    }

    else
    {
      v24 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = v3;
    a1 = &selRef__setupSizeRestrictionsForWindowScene_sceneType_;
    if (v24)
    {
      a2 = 0;
      v26 = v22 & 0xC000000000000001;
      v3 = _swiftEmptyArrayStorage;
      while (2)
      {
        v13 = a2;
        while (1)
        {
          if (v26)
          {
            v27 = sub_1007A3784();
            a2 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              goto LABEL_41;
            }
          }

          else
          {
            if (v13 >= *(v23 + 16))
            {
              goto LABEL_42;
            }

            v27 = *(v22 + 8 * v13 + 32);
            swift_unknownObjectRetain();
            a2 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
LABEL_43:
              __break(1u);
LABEL_44:
              __break(1u);
              goto LABEL_45;
            }
          }

          v28 = [v27 assetID];
          if (v28)
          {
            break;
          }

          swift_unknownObjectRelease();
          ++v13;
          if (a2 == v24)
          {
            goto LABEL_22;
          }
        }

        v29 = v28;
        v30 = sub_1007A2254();
        v91 = v31;

        swift_unknownObjectRelease();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_10000B3D8(0, *(v3 + 2) + 1, 1, v3);
        }

        v33 = *(v3 + 2);
        v32 = *(v3 + 3);
        if (v33 >= v32 >> 1)
        {
          v3 = sub_10000B3D8((v32 > 1), v33 + 1, 1, v3);
        }

        *(v3 + 2) = v33 + 1;
        v34 = &v3[16 * v33];
        v35 = v91;
        *(v34 + 4) = v30;
        *(v34 + 5) = v35;
        v22 = v107;
        if (a2 != v24)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
    v36 = sub_1007A25F4();
    v38 = v37;

    v39 = sub_1000070F4(v36, v38, v109);

    v40 = v95;
    *(v95 + 24) = v39;
    *(v40 + 32) = 2080;
    if (v104)
    {
      v41 = v106 & 0xFFFFFFFFFFFFFF8;
      v42 = sub_1007A38D4();
      if (v42)
      {
LABEL_24:
        a2 = 0;
        v43 = v106 & 0xC000000000000001;
        v3 = _swiftEmptyArrayStorage;
        do
        {
          v13 = a2;
          while (1)
          {
            if (v43)
            {
              v44 = sub_1007A3784();
              a2 = v13 + 1;
              if (__OFADD__(v13, 1))
              {
                goto LABEL_43;
              }
            }

            else
            {
              if (v13 >= *(v41 + 16))
              {
                goto LABEL_44;
              }

              v44 = *(v106 + 8 * v13 + 32);
              swift_unknownObjectRetain();
              a2 = v13 + 1;
              if (__OFADD__(v13, 1))
              {
                goto LABEL_43;
              }
            }

            v45 = [v44 assetID];
            if (v45)
            {
              break;
            }

            swift_unknownObjectRelease();
            ++v13;
            if (a2 == v42)
            {
              goto LABEL_48;
            }
          }

          v46 = v45;
          v47 = sub_1007A2254();
          v91 = v48;

          swift_unknownObjectRelease();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_10000B3D8(0, *(v3 + 2) + 1, 1, v3);
          }

          v50 = *(v3 + 2);
          v49 = *(v3 + 3);
          if (v50 >= v49 >> 1)
          {
            v3 = sub_10000B3D8((v49 > 1), v50 + 1, 1, v3);
          }

          *(v3 + 2) = v50 + 1;
          v51 = &v3[16 * v50];
          v52 = v91;
          *(v51 + 4) = v47;
          *(v51 + 5) = v52;
        }

        while (a2 != v42);
      }
    }

    else
    {
      v41 = v106 & 0xFFFFFFFFFFFFFF8;
      v42 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v42)
      {
        goto LABEL_24;
      }
    }

LABEL_48:
    v53 = sub_1007A25F4();
    v55 = v54;

    v56 = sub_1000070F4(v53, v55, v109);

    v57 = v95;
    *(v95 + 34) = v56;
    v14 = v105;
    _os_log_impl(&_mh_execute_header, v105, v93, "%s %s topLevel: %s, library: %s", v57, 0x2Au);
    swift_arrayDestroy();

    v3 = v25;
    a2 = v106;
    v16 = v107;
    v17 = v94;
  }

  v109[0] = _swiftEmptyArrayStorage;
  if (v17)
  {
    v88 = v16;
    v89 = sub_1007A38D4();
    v16 = v88;
    v58 = v89;
    if (v89)
    {
LABEL_51:
      if (v58 < 1)
      {
        __break(1u);
        goto LABEL_75;
      }

      v59 = v3;
      v60 = 0;
      v61 = v16 & 0xC000000000000001;
      do
      {
        if (v61)
        {
          v62 = sub_1007A3784();
        }

        else
        {
          v62 = *(v16 + 8 * v60 + 32);
          swift_unknownObjectRetain();
        }

        isa = [v62 readingProgress];
        if (!isa)
        {
          sub_10000A7C4(0, &qword_100AD6750);
          isa = sub_1007A3154(0).super.super.isa;
        }

        v64 = sub_10035D334(v62, 1, isa);

        v65 = v64;
        sub_1007A25C4();
        if (*((v109[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1007A2614();
        }

        ++v60;
        sub_1007A2644();

        swift_unknownObjectRelease();
        v16 = v107;
      }

      while (v58 != v60);
      v66 = v109[0];
      v3 = v59;
      v14 = v105;
      a2 = v106;
      if (!v104)
      {
        goto LABEL_62;
      }

      goto LABEL_72;
    }
  }

  else
  {
    v58 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v58)
    {
      goto LABEL_51;
    }
  }

  v66 = _swiftEmptyArrayStorage;
  if (!v104)
  {
LABEL_62:
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_65;
    }

LABEL_63:
    v107 = v3;
    v67 = v97;
    sub_1007A2154();
    v68 = v100;
    sub_100796C94();
    v69 = v98;
    v70 = v101;
    (*(v98 + 16))(v96, v67, v101);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v72 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v74 = v102;
    v73 = v103;
    (*(v102 + 16))(v99, v68, v103);
    v75 = sub_1007A22D4();
    v77 = v76;
    (*(v74 + 8))(v68, v73);
    (*(v69 + 8))(v67, v70);
    sub_10035CB38(v75, v77, a2);

    swift_unknownObjectRetain();
    sub_1007A25C4();
    if (*((v109[0] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v109[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_64:
      sub_1007A2644();
      swift_unknownObjectRelease();
      v66 = v109[0];
      v14 = v105;
      goto LABEL_65;
    }

LABEL_75:
    sub_1007A2614();
    goto LABEL_64;
  }

LABEL_72:
  if (sub_1007A38D4())
  {
    goto LABEL_63;
  }

LABEL_65:
  v78 = sub_10035B5E8(v66);

  v79 = sub_1007A29D4();
  if (os_log_type_enabled(v14, v79))
  {
    v80 = swift_slowAlloc();
    v108[0] = swift_slowAlloc();
    *v80 = 136315394;
    swift_getObjectType();
    v81 = sub_1007A3D34();
    v83 = sub_1000070F4(v81, v82, v108);

    *(v80 + 4) = v83;
    *(v80 + 12) = 2080;
    *(v80 + 14) = sub_1000070F4(0xD00000000000002FLL, 0x80000001008CD250, v108);
    _os_log_impl(&_mh_execute_header, v14, v79, "%s %s about to update listen now sections on delegate", v80, 0x16u);
    swift_arrayDestroy();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v85 = Strong;
  sub_10000A7C4(0, &qword_100AD1E10);
  v86 = swift_allocObject();
  *(v86 + 16) = v85;
  *(v86 + 24) = v78;
  swift_unknownObjectRetain();
  sub_1007A2CD4();
  swift_unknownObjectRelease();
}

void sub_100361594(uint64_t a1)
{
  v2 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v3 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v2))
  {
    v4 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v4 = 136315394;
    swift_getObjectType();
    v5 = sub_1007A3D34();
    v7 = sub_1000070F4(v5, v6, &v19);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_1000070F4(0xD00000000000002ALL, 0x80000001008CCC40, &v19);
    _os_log_impl(&_mh_execute_header, v3, v2, "%s %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v8 = sub_10035B8E0(a1);
  sub_1001F1160(&unk_100AD8160);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100811390;
  *(v9 + 32) = v8;
  v10 = objc_allocWithZone(CPListTemplate);

  v18 = v8;
  v11 = sub_1007A2214();

  sub_10000A7C4(0, &qword_100ADDB28);
  isa = sub_1007A25D4().super.isa;

  v13 = [v10 initWithTitle:v11 sections:isa];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    sub_10000A7C4(0, &qword_100AD1E10);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = v13;
    swift_unknownObjectRetain();
    v17 = v13;
    sub_1007A2CD4();

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1003618C0(void *a1)
{
  sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  sub_1001F1160(&unk_100AD5090);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10080B690;
  *(v2 + 56) = type metadata accessor for CarPlayAudiobookData();
  *(v2 + 64) = sub_100363290();
  *(v2 + 32) = a1;
  v3 = a1;
  sub_10079AB44();

  v11 = sub_10035B8E0(v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v7 = *&v3[OBJC_IVAR____TtC5Books20CarPlayAudiobookData_title];
    v6 = *&v3[OBJC_IVAR____TtC5Books20CarPlayAudiobookData_title + 8];
    sub_1001F1160(&unk_100AD8160);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100811390;
    *(v8 + 32) = v11;
    sub_10000A7C4(0, &qword_100AD1E10);
    v9 = swift_allocObject();
    v9[2] = v5;
    v9[3] = v7;
    v9[4] = v6;
    v9[5] = v8;

    v10 = v11;
    swift_unknownObjectRetain();
    sub_1007A2CD4();
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_100361AEC(unint64_t a1, float a2)
{
  sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  sub_1001F1160(&unk_100AD5090);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10080B690;
  *(v5 + 56) = &type metadata for Float;
  *(v5 + 64) = &protocol witness table for Float;
  *(v5 + 32) = a2;
  sub_10079AB44();

  v33 = sub_10035C204(a1, a2);
  v6 = *(v2 + OBJC_IVAR____TtC5Books16CarPlayPresenter_incrementButton);
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = *(v2 + OBJC_IVAR____TtC5Books16CarPlayPresenter_decrementButton);
  if (!v7)
  {
    goto LABEL_20;
  }

  if (!(a1 >> 62))
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_18:
    v21 = v6;
    v22 = v7;
    v20 = 0.0;
    v15 = 0.0;
    goto LABEL_19;
  }

  v8 = sub_1007A38D4();
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_7:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v31 = v6;
    v32 = v7;
    v12 = sub_1007A3784();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v9 = *(a1 + 32);
    v10 = v6;
    v11 = v7;
    v12 = v9;
  }

  v13 = v12;
  sub_1007A3164();
  v15 = v14;

  v16 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
    goto LABEL_29;
  }

  if ((a1 & 0xC000000000000001) == 0)
  {
    if ((v16 & 0x8000000000000000) == 0)
    {
      if (v16 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v17 = *(a1 + 8 * v16 + 32);
        goto LABEL_16;
      }

LABEL_31:
      __break(1u);
      return;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v17 = sub_1007A3784();
LABEL_16:
  v18 = v17;
  sub_1007A3164();
  v20 = v19;

LABEL_19:
  v23 = a2;
  v24 = v7;
  [v24 setEnabled:{vabdd_f64(v15, v23) >= 0.00999999978}];

  v25 = v6;
  [v25 setEnabled:{vabdd_f64(v20, v23) >= 0.00999999978}];

LABEL_20:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    sub_1001F1160(&unk_100AD8160);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100811390;
    *(v28 + 32) = v33;
    sub_10000A7C4(0, &qword_100AD1E10);
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    *(v29 + 24) = v28;
    v30 = v33;
    swift_unknownObjectRetain();
    sub_1007A2CD4();
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_100361E90(void *a1, char a2, void *a3)
{
  v6 = sub_100796DA4();
  v87 = *(v6 - 8);
  v88 = v6;
  __chkstk_darwin(v6);
  v8 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100796CF4();
  v90 = *(v9 - 8);
  v91 = v9;
  __chkstk_darwin(v9);
  v89 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v83 - v12;
  v14 = sub_1007A21D4();
  v92 = *(v14 - 1);
  v93 = v14;
  __chkstk_darwin(v14);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v83 - v19;
  v21 = [a1 author];
  if (v21)
  {
    v22 = v21;
    sub_1007A2254();
  }

  [a3 doubleValue];
  if (a2)
  {
    v24 = v23;
    if (([a1 isFinished] & 1) != 0 || fabs(v24 + -1.0) < 0.01)
    {

      sub_1007A2154();
      sub_100796C94();
      v26 = v92;
      v25 = v93;
      (*(v92 + 16))(v16, v20, v93);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v28 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v29 = v90;
      v30 = v91;
      (*(v90 + 16))(v89, v13, v91);
      sub_1007A22D4();
      (*(v29 + 8))(v13, v30);
      (*(v26 + 8))(v20, v25);
      return;
    }

    v31 = [a1 assetID];
    if (v31)
    {
      v32 = v31;
      sub_1007A2254();
      v34 = v33;
    }

    else
    {
      v34 = 0xE000000000000000;
    }

    v35 = [a1 title];
    if (v35)
    {
      v86 = v34;
      v36 = v35;
      sub_1007A2254();
    }

    v37 = sub_1007A2214();

    v38 = sub_1007A2214();

    v39 = [objc_opt_self() identifierFromAssetID:v37 albumTitle:v38];

    v86 = v39;
    v40 = [v39 audiobookQuery];
    if (v40)
    {
      v41 = v40;
      v42 = [v40 collections];
      v43 = v93;
      if (v42)
      {
        v44 = v42;
        sub_10000A7C4(0, &qword_100ADDB38);
        v45 = sub_1007A25E4();

        if (v45 >> 62)
        {
          if (sub_1007A38D4())
          {
LABEL_17:
            if ((v45 & 0xC000000000000001) != 0)
            {
              v46 = sub_1007A3784();
            }

            else
            {
              if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_57;
              }

              v46 = *(v45 + 32);
            }

            v47 = v46;

            v48 = [v47 bk_cloudRepresentativeItem];
            v84 = v47;
            if (v48)
            {
              v49 = v48;
              [v48 playbackDuration];
              v51 = v50;

              v45 = v92;
LABEL_37:

              v52 = 1.0;
              v66 = 0.0;
              if (1.0 - v24 > 0.0)
              {
                v66 = 1.0 - v24;
              }

              if (1.0 - v24 <= 1.0)
              {
                v52 = v66;
              }

              goto LABEL_49;
            }

            v54 = [v47 bk_localItems];
            sub_10000A7C4(0, &qword_100ADDB40);
            v55 = sub_1007A25E4();

            v56 = v55;
            v57 = v55 >> 62;
            v45 = v92;
            v85 = v56;
            if (!v57)
            {
              v58 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v59 = v84;
              if (v58)
              {
LABEL_30:
                v83 = v41;
                if (v58 < 1)
                {
                  __break(1u);
                  return;
                }

                v60 = 0;
                v61 = v56 & 0xC000000000000001;
                v51 = 0.0;
                do
                {
                  if (v61)
                  {
                    v62 = sub_1007A3784();
                  }

                  else
                  {
                    v62 = *(v56 + 8 * v60 + 32);
                  }

                  v63 = v62;
                  ++v60;
                  [v62 playbackDuration];
                  v65 = v64;

                  v51 = v51 + v65;
                  v56 = v85;
                }

                while (v58 != v60);

                v45 = v92;
                v43 = v93;
                v49 = v83;
                goto LABEL_37;
              }

LABEL_58:

              v52 = 1.0;
              v51 = 0.0;
              v82 = 0.0;
              if (1.0 - v24 > 0.0)
              {
                v82 = 1.0 - v24;
              }

              if (1.0 - v24 <= 1.0)
              {
                v52 = v82;
              }

              v43 = v93;
              goto LABEL_49;
            }

LABEL_57:
            v81 = sub_1007A38D4();
            v56 = v85;
            v58 = v81;
            v59 = v84;
            if (v81)
            {
              goto LABEL_30;
            }

            goto LABEL_58;
          }
        }

        else if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }
      }

      else
      {
      }

      v52 = 1.0;
      v51 = 0.0;
      v67 = 0.0;
      if (1.0 - v24 > 0.0)
      {
        v67 = 1.0 - v24;
      }

      if (1.0 - v24 <= 1.0)
      {
        v52 = v67;
      }
    }

    else
    {
      v52 = 1.0;
      v51 = 0.0;
      v53 = 0.0;
      if (1.0 - v24 > 0.0)
      {
        v53 = 1.0 - v24;
      }

      if (1.0 - v24 <= 1.0)
      {
        v52 = v53;
      }

      v43 = v93;
    }

    v45 = v92;
LABEL_49:
    v68 = v52 * v51;
    v69 = [objc_allocWithZone(NSDateComponentsFormatter) init];
    sub_100796D64();
    isa = sub_100796D44().super.isa;
    (*(v87 + 8))(v8, v88);
    [v69 setCalendar:isa];

    [v69 setUnitsStyle:2];
    if (v68 <= 60.0)
    {
      v71 = 128;
    }

    else
    {
      v71 = 96;
    }

    [v69 setAllowedUnits:v71];
    [v69 setMaximumUnitCount:2];
    [v69 setFormattingContext:5];
    v72 = [v69 stringFromTimeInterval:v68];
    if (v72)
    {
      v73 = v72;
      v93 = v69;

      v92 = sub_1007A2254();
      v75 = v74;

      sub_1007A2154();
      sub_100796C94();
      (*(v45 + 16))(v16, v20, v43);
      type metadata accessor for BundleFinder();
      v76 = swift_getObjCClassFromMetadata();
      [objc_opt_self() bundleForClass:v76];
      v77 = v90;
      v78 = v43;
      v79 = v91;
      (*(v90 + 16))(v89, v13, v91);
      sub_1007A22D4();
      (*(v77 + 8))(v13, v79);
      (*(v45 + 8))(v20, v78);
      sub_1001F1160(&unk_100AD5090);
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_10080B690;
      *(v80 + 56) = &type metadata for String;
      *(v80 + 64) = sub_10000E4C4();
      *(v80 + 32) = v92;
      *(v80 + 40) = v75;
      sub_1007A2284();
    }

    else
    {
    }
  }
}

void sub_1003629A8(unint64_t a1)
{
  LOBYTE(v2) = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v3 = qword_100AE15E0;
    if (os_log_type_enabled(qword_100AE15E0, v2))
    {
      v4 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v4 = 136315394;
      swift_getObjectType();
      v5 = sub_1007A3D34();
      v7 = sub_1000070F4(v5, v6, &v29);

      *(v4 + 4) = v7;
      *(v4 + 12) = 2080;
      *(v4 + 14) = sub_1000070F4(0xD000000000000020, 0x80000001008CD0F0, &v29);
      _os_log_impl(&_mh_execute_header, v3, v2, "%s %s", v4, 0x16u);
      swift_arrayDestroy();
    }

    v29 = _swiftEmptyArrayStorage;
    if (!(a1 >> 62))
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        break;
      }

      goto LABEL_6;
    }

    v8 = sub_1007A38D4();
    if (!v8)
    {
      break;
    }

LABEL_6:
    v9 = 0;
    v28 = a1 & 0xFFFFFFFFFFFFFF8;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v10 = sub_1007A3784();
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_23;
      }

LABEL_13:
      isa = [v10 readingProgress];
      if (!isa)
      {
        sub_10000A7C4(0, &qword_100AD6750);
        isa = sub_1007A3154(0).super.super.isa;
      }

      v13 = sub_10035D334(v10, 0, isa);

      v14 = v13;
      sub_1007A25C4();
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1007A2614();
      }

      sub_1007A2644();
      v15 = v29;
      if (v29 >> 62)
      {
        v2 = sub_1007A38D4();
      }

      else
      {
        v2 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      swift_unknownObjectRelease();

      if (v2 <= 49)
      {
        ++v9;
        if (v11 != v8)
        {
          continue;
        }
      }

      goto LABEL_28;
    }

    if (v9 >= *(v28 + 16))
    {
      goto LABEL_24;
    }

    v10 = *(a1 + 8 * v9 + 32);
    swift_unknownObjectRetain();
    v11 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_13;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  v15 = _swiftEmptyArrayStorage;
LABEL_28:
  if (v15 >> 62)
  {

    sub_1001F1160(&qword_100ADDB58);
    v27 = sub_1007A38C4();
    swift_bridgeObjectRelease_n();
    v15 = v27;
  }

  else
  {
    v16 = v15 & 0xFFFFFFFFFFFFFF8;

    sub_1007A3AD4();
    sub_1001F1160(&qword_100ADDB58);
    if (swift_dynamicCastMetatype() || (v25 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_30:
    }

    else
    {
      v26 = v16 + 32;
      while (swift_dynamicCastObjCProtocolConditional())
      {
        v26 += 8;
        if (!--v25)
        {
          goto LABEL_30;
        }
      }

      v15 = v16 | 1;
    }
  }

  v17 = objc_allocWithZone(CPListSection);
  sub_100502464(v15);

  v18 = sub_1007A25D4().super.isa;

  v19 = [v17 initWithItems:v18];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    sub_1001F1160(&unk_100AD8160);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100811390;
    *(v22 + 32) = v19;
    sub_10000A7C4(0, &qword_100AD1E10);
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;
    v24 = v19;
    swift_unknownObjectRetain();
    sub_1007A2CD4();
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_100362EE4()
{
  v0 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v1 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v0))
  {
    v2 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v2 = 136315394;
    swift_getObjectType();
    v3 = sub_1007A3D34();
    v5 = sub_1000070F4(v3, v4, &v8);

    *(v2 + 4) = v5;
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_1000070F4(0xD000000000000028, 0x80000001008CCC10, &v8);
    _os_log_impl(&_mh_execute_header, v1, v0, "%s %s", v2, 0x16u);
    swift_arrayDestroy();
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = sub_100607A38();
  swift_unknownObjectRelease();
  if (v6)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100361594(v6);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10036315C(void (*a1)(void))
{

  a1(*(v1 + 24));

  return swift_deallocObject();
}

unint64_t sub_1003631CC()
{
  result = qword_100ADDB68;
  if (!qword_100ADDB68)
  {
    sub_1001F1234(&qword_100ADDB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDB68);
  }

  return result;
}

uint64_t sub_100363248()
{

  return swift_deallocObject();
}

unint64_t sub_100363290()
{
  result = qword_100ADDB70;
  if (!qword_100ADDB70)
  {
    type metadata accessor for CarPlayAudiobookData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDB70);
  }

  return result;
}

uint64_t sub_100363440()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    sub_10079B9B4();
  }

  return result;
}

uint64_t sub_1003634EC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (!swift_unknownObjectWeakLoadStrong() || (v4 = *(v3 + 40), ObjectType = swift_getObjectType(), (*(v4 + 40))(ObjectType, v4), swift_unknownObjectRelease(), swift_getKeyPath(), swift_getKeyPath(), sub_10079B9A4(), , , , v6))
    {
      sub_100363910();
    }

    sub_100363D04(v1);
  }

  return result;
}

uint64_t sub_1003635F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(result + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = v7;
    sub_10079B9B4();
    ObjectType = swift_getObjectType();
    (*(a4 + 40))(ObjectType, a4);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    sub_100363D04(v5);
  }

  return result;
}

uint64_t OrientationLockHintController.deinit()
{
  v2[3] = type metadata accessor for OrientationLockHintController();
  v2[0] = v0;

  sub_1007A2B34();
  sub_1000074E0(v2);

  sub_10002B130(v0 + 32);

  return v0;
}

uint64_t OrientationLockHintController.__deallocating_deinit()
{
  OrientationLockHintController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1003637F4()
{
  v1 = *(v0 + 16);
  sub_1007A2B24();
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_10079B9B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (v4 == 1)
  {
    return sub_100363910();
  }

  return result;
}

uint64_t sub_100363910()
{
  v1 = v0;
  v18[0] = sub_1007A1CC4();
  v2 = *(v18[0] - 8);
  __chkstk_darwin(v18[0]);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v18 - v6;
  v8 = sub_1007A1C54();
  __chkstk_darwin(v8);
  if (*(v0 + 56))
  {

    sub_1007A1CE4();
  }

  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100364164;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A17688;
  _Block_copy(aBlock);
  v18[1] = _swiftEmptyArrayStorage;
  sub_100265BDC();

  sub_1001F1160(&unk_100AD7CA0);
  sub_100234698();
  sub_1007A3594();
  sub_1007A1CF4();
  swift_allocObject();
  v10 = sub_1007A1CD4();

  *(v1 + 56) = v10;

  v11 = *(v1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 1;
  v12 = v11;
  sub_10079B9B4();
  sub_1007A1CB4();
  sub_1007A1D24();
  v13 = *(v2 + 8);
  v14 = v4;
  v15 = v18[0];
  v13(v14, v18[0]);
  if (*(v1 + 56))
  {

    if (sub_1007A2B24())
    {
      v13(v7, v15);
    }

    sub_100017E74();
    v17 = sub_1007A2D74();
    sub_1007A2D14();
  }

  return (v13)(v7, v15);
}

uint64_t sub_100363C70()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_10079B9B4();
  }

  return result;
}

uint64_t sub_100363D04(uint64_t a1)
{
  v2 = v1;
  v4 = v1[2];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if ((v18 & 1) == 0)
  {
    if (a1)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = v1[5];
        ObjectType = swift_getObjectType();
        (*(v5 + 40))(ObjectType, v5);
        swift_unknownObjectRelease();
        swift_getKeyPath();
        swift_getKeyPath();
        sub_10079B9A4();

        if (*&v18 != 0.0)
        {
          if (!swift_unknownObjectWeakLoadStrong() || (v7 = sub_100025674(a1), v8 = v1[5], v9 = swift_getObjectType(), (*(v8 + 40))(v9, v8), swift_unknownObjectRelease(), swift_getKeyPath(), swift_getKeyPath(), sub_10079B9A4(), , , , sub_100025674(v18) != v7))
          {
            v10 = *(v1[3] + OBJC_IVAR___BKEngagementManager_eventController);
            sub_10079E994();
          }
        }
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v11 = 0.0;
  if (v18 == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v13 = v2[5];
    v14 = swift_getObjectType();
    (*(v13 + 40))(v14, v13);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    swift_unknownObjectRelease();

    v15 = 0.0;
    v16 = 0.0;
    if ((v18 - 2) <= 2)
    {
      v16 = dbl_10081D048[v18 - 2];
    }

    if ((a1 - 2) <= 2)
    {
      v15 = dbl_10081D048[a1 - 2];
    }

    v11 = v16 - v15;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (*&v18 != v11)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = v4;
    return sub_10079B9B4();
  }

  return result;
}

uint64_t sub_1003640BC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for OrientationLockHintController();
  result = sub_10079B8B4();
  *a1 = result;
  return result;
}

Swift::Void __swiftcall OrientationLockHintController.toggleOrientationLock()()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    (*(*(v1 + 8) + 8))(ObjectType);

    swift_unknownObjectRelease();
  }
}

double sub_10036417C(_OWORD *a1, void (*a2)(__int128 *__return_ptr))
{
  a2(&v4);
  result = *&v4;
  *a1 = v4;
  return result;
}

double sub_1003641BC@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_1003641C8(_OWORD *a1, void (*a2)(_OWORD *__return_ptr))
{
  a2(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  return result;
}

uint64_t sub_100364208@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10079DDC4();
  result = sub_10079BEB4();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_100364248@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10079CE04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10079DDC4();
  sub_10079CF84();
  sub_10079BEC4();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = v14;
  return result;
}

void sub_100364380()
{
  sub_100364AD0(319, &qword_100ADDD30, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_100364AD0(319, &qword_100AD6F18, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100364458(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_10079CAE4() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v6 + 64);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v13 <= 8)
  {
    v16 = 8;
  }

  else
  {
    v16 = *(v6 + 64);
  }

  if (v12 <= 0xFE)
  {
    v17 = 254;
  }

  else
  {
    v17 = v12;
  }

  if (v8)
  {
    v18 = v13;
  }

  else
  {
    v18 = v13 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v18 + v14;
  v20 = *(v7 + 80) & 0xF8 | 7;
  if (a2 > v17)
  {
    v21 = v16 + ((v15 + v20 + (v19 & ~v14)) & ~v20) + 1;
    v22 = 8 * v21;
    if (v21 > 3)
    {
      goto LABEL_19;
    }

    v24 = ((a2 - v17 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v24))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v24 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v24 >= 2)
    {
LABEL_19:
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_39;
      }

LABEL_26:
      v25 = (v23 - 1) << v22;
      if (v21 > 3)
      {
        v25 = 0;
      }

      if (v16 + ((v15 + v20 + (v19 & ~v14)) & ~v20) == -1)
      {
        v27 = 0;
      }

      else
      {
        if (v21 <= 3)
        {
          v26 = v16 + ((v15 + v20 + (v19 & ~v14)) & ~v20) + 1;
        }

        else
        {
          v26 = 4;
        }

        if (v26 > 2)
        {
          if (v26 == 3)
          {
            v27 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v27 = *a1;
          }
        }

        else if (v26 == 1)
        {
          v27 = *a1;
        }

        else
        {
          v27 = *a1;
        }
      }

      return v17 + (v27 | v25) + 1;
    }
  }

LABEL_39:
  if (v9 == v17)
  {
    if (v8 < 2)
    {
      return 0;
    }

    v31 = (*(v7 + 48))(a1);
    if (v31 >= 2)
    {
      return v31 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v29 = (a1 + v19) & ~v14;
    if (v11 == v17)
    {
      v30 = *(*(*(a3 + 16) - 8) + 48);

      return v30(v29, v11);
    }

    else
    {
      v32 = *(((v29 + v15 + v20) & ~v20) + v16);
      if (v32 >= 2)
      {
        return (v32 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_100364700(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(sub_10079CAE4() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v9 + 64);
  v16 = *(v13 + 80);
  v17 = *(v13 + 64);
  if (v14 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = *(v13 + 84);
  }

  v19 = 8;
  if (v15 > 8)
  {
    v19 = v15;
  }

  if (v18 <= 0xFE)
  {
    v18 = 254;
  }

  if (!v11)
  {
    ++v15;
  }

  v20 = v15 + v16;
  v21 = (v15 + v16) & ~v16;
  v22 = *(v10 + 80) & 0xF8 | 7;
  v23 = v19 + 1;
  v24 = ((v17 + v22 + v21) & ~v22) + v19 + 1;
  if (a3 <= v18)
  {
    goto LABEL_24;
  }

  if (v24 <= 3)
  {
    v25 = ((a3 - v18 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
    if (HIWORD(v25))
    {
      v8 = 4;
      if (v18 >= a2)
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    if (v25 >= 2)
    {
      v8 = v26;
    }

    else
    {
      v8 = 0;
    }

LABEL_24:
    if (v18 >= a2)
    {
      goto LABEL_34;
    }

    goto LABEL_25;
  }

  v8 = 1;
  if (v18 >= a2)
  {
LABEL_34:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v24] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_41;
      }

      *&a1[v24] = 0;
    }

    else if (v8)
    {
      a1[v24] = 0;
      if (!a2)
      {
        return;
      }

LABEL_41:
      if (v12 == v18)
      {
        v30 = *(v10 + 56);

        v30(a1, (a2 + 1));
      }

      else
      {
        v31 = &a1[v20] & ~v16;
        if (v14 == v18)
        {
          v32 = *(v13 + 56);

          v32(v31, a2, v14);
        }

        else
        {
          v33 = (v31 + v17 + v22) & ~v22;
          if (a2 > 0xFE)
          {
            if (v23 <= 3)
            {
              v34 = ~(-1 << (8 * v23));
            }

            else
            {
              v34 = -1;
            }

            if (v19 != -1)
            {
              v35 = v34 & (a2 - 255);
              if (v23 <= 3)
              {
                v36 = v19 + 1;
              }

              else
              {
                v36 = 4;
              }

              bzero(((v31 + v17 + v22) & ~v22), v23);
              if (v36 > 2)
              {
                if (v36 == 3)
                {
                  *v33 = v35;
                  *(v33 + 2) = BYTE2(v35);
                }

                else
                {
                  *v33 = v35;
                }
              }

              else if (v36 == 1)
              {
                *v33 = v35;
              }

              else
              {
                *v33 = v35;
              }
            }
          }

          else
          {
            *(v33 + v19) = -a2;
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

LABEL_25:
  v27 = ~v18 + a2;
  if (v24 >= 4)
  {
    bzero(a1, v24);
    *a1 = v27;
    v28 = 1;
    if (v8 > 1)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  v28 = (v27 >> (8 * v24)) + 1;
  if (!v24)
  {
LABEL_54:
    if (v8 > 1)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  v29 = v27 & ~(-1 << (8 * v24));
  bzero(a1, v24);
  if (v24 == 3)
  {
    *a1 = v29;
    a1[2] = BYTE2(v29);
    goto LABEL_54;
  }

  if (v24 == 2)
  {
    *a1 = v29;
    if (v8 > 1)
    {
LABEL_58:
      if (v8 == 2)
      {
        *&a1[v24] = v28;
      }

      else
      {
        *&a1[v24] = v28;
      }

      return;
    }
  }

  else
  {
    *a1 = v27;
    if (v8 > 1)
    {
      goto LABEL_58;
    }
  }

LABEL_55:
  if (v8)
  {
    a1[v24] = v28;
  }
}

void sub_100364AD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_10079CAE4();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_100364B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10079C824();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001F1160(&unk_100ADB4E0);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_1000077D8(v2 + *(a1 + 40), &v15 - v10, &unk_100ADB4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_10079CAE4();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1007A29C4();
    v14 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100364D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001F1160(&qword_100ADBC20);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_10079CAE4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  sub_1000077D8(v2, v7, &qword_100ADBC20);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    v29 = a2;
    v28 = *(v9 + 32);
    v28(v14, v7, v8);
    v27 = a1;
    sub_100364B74(a1, v11);
    v15 = sub_10079CAD4();
    v16 = sub_100259D78(v11, v15);
    v18 = v17;

    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16;
    }

    v20 = sub_10079CAD4();
    v21 = sub_100259D78(v14, v20);
    v23 = v22;

    v24 = *(v9 + 8);
    v24(v11, v8);
    if (v23)
    {
      if (v19 > 0)
      {
        return (v28)(v29, v14, v8);
      }
    }

    else if (v21 < v19)
    {
      return (v28)(v29, v14, v8);
    }

    v24(v14, v8);
    a2 = v29;
    a1 = v27;
    return sub_100364B74(a1, a2);
  }

  sub_10022448C(v7);
  return sub_100364B74(a1, a2);
}

uint64_t sub_100364FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = sub_10079CAE4();
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(a1 + 16);
  sub_1001F1234(&qword_100ADBC68);
  v6 = sub_10079C2A4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v18 - v11;
  swift_getKeyPath();
  sub_100364D78(a1, v5);
  v13 = *(a1 + 24);
  sub_10079D6D4();

  (*(v3 + 8))(v5, v19);
  v14 = sub_100365254();
  v21 = v13;
  v22 = v14;
  WitnessTable = swift_getWitnessTable();
  sub_10039232C(v9, v6, WitnessTable);
  v16 = *(v7 + 8);
  v16(v9, v6);
  sub_10039232C(v12, v6, WitnessTable);
  return (v16)(v12, v6);
}

unint64_t sub_100365254()
{
  result = qword_100ADBCA8;
  if (!qword_100ADBCA8)
  {
    sub_1001F1234(&qword_100ADBC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADBCA8);
  }

  return result;
}

id sub_1003652C0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
  v4 = v3;

  if (v4)
  {
    v5 = sub_1007A2214();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_10036545C()
{
  sub_1001F1160(&unk_100AD8160);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100811390;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v21 = sub_10036579C;
  v22 = v2;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_1003652C0;
  v20 = &unk_100A17770;
  v3 = _Block_copy(&v17);
  v4 = objc_opt_self();
  v5 = v0;
  v6 = [v4 modelWithDetailLineBreakMode:0 detailTextBlock:v3];
  _Block_release(v3);

  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = v5;
  v9 = sub_1007A2214();
  v21 = sub_1003657AC;
  v22 = v7;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10065CD28;
  v20 = &unk_100A177C0;
  v10 = _Block_copy(&v17);

  v11 = [objc_opt_self() entryWithTitle:v9 model:v6 action:v10];
  _Block_release(v10);

  *(v1 + 32) = v11;
  v12 = objc_allocWithZone(BKDebugViewSection);
  v13 = sub_1007A2214();
  sub_1003657D0();
  isa = sub_1007A25D4().super.isa;

  v15 = [v12 initWithHeaderTitle:v13 entries:isa footerTitle:0];

  return v15;
}

uint64_t sub_1003656FC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1007A2A24();

  v2 = sub_1007A3A74();
  v3._countAndFlagsBits = 0x2973286D65746920;
  v3._object = 0xE800000000000000;
  sub_1007A23D4(v3);
  return v2;
}

unint64_t sub_1003657D0()
{
  result = qword_100AD8B50;
  if (!qword_100AD8B50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD8B50);
  }

  return result;
}

void sub_10036581C()
{
  v1 = v0;
  v2 = _s23MultilineTextEditorViewVMa(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_1007A2A24();

  *&v19 = v7;
  sub_1001F1160(&unk_100AD61F0);
  sub_100005920(&qword_100AEB190, &unk_100AD61F0);
  v8 = sub_1007A20B4();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  v12 = objc_allocWithZone(_s29MultilineTextEditorControllerCMa(0));
  *&v5[*(v3 + 40)] = swift_getKeyPath();
  sub_1001F1160(&qword_100AD8B60);
  swift_storeEnumTagMultiPayload();
  v18[1] = v8;
  v18[2] = v10;
  v13 = v1;

  sub_10079DFE4();
  v14 = v20;
  *v5 = v19;
  *(v5 + 2) = v14;
  *(v5 + 3) = 0;
  *(v5 + 4) = 0xE000000000000000;
  *(v5 + 5) = sub_100365A5C;
  *(v5 + 6) = 0;
  *(v5 + 7) = sub_100365F3C;
  *(v5 + 8) = v11;
  v15 = sub_10079CBC4();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    [Strong present:v15 :1];
  }
}

uint64_t sub_100365A5C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1001F1160(&qword_100ADDD68);
  __chkstk_darwin(v4 - 8);
  v46 = &v36 - v5;
  v45 = sub_1001F1160(&qword_100AD5318);
  v6 = *(v45 - 8);
  __chkstk_darwin(v45);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  result = sub_1003665B8(a1, a2);
  v16 = *(result + 16);
  v17 = v8;
  v38 = "Watched Key Paths";
  v39 = (v6 + 8);
  v18 = result + 40;
  v41 = -v16;
  v42 = result;
  v19 = -1;
  v37 = v14;
  while (1)
  {
    v40 = v41 + v19;
    if (v41 + v19 == -1)
    {
      goto LABEL_8;
    }

    v20 = v19 + 1;
    if (v20 >= *(v42 + 16))
    {
      break;
    }

    v43 = v20;

    v21 = sub_1007996B4();
    v44 = 0;
    __chkstk_darwin(v21);
    *(&v36 - 2) = v14;
    sub_100005920(&qword_100AD5328, &qword_100AD5318);
    sub_1007996C4();
    v22 = v17;
    sub_100799694();
    sub_1007A24B4();
    v23 = v44;
    sub_1007996E4();
    if (v23)
    {

      v31 = *v39;
      v32 = v45;
      (*v39)(v22, v45);
      v31(v11, v32);
      v33 = sub_1001F1160(&qword_100ADDD70);
      v34 = v46;
      (*(*(v33 - 8) + 56))(v46, 1, 1, v33);
      sub_100007840(v34, &qword_100ADDD68);
      v31(v37, v32);

LABEL_8:
      v35 = v40 == -1;

      return v35;
    }

    v18 += 16;

    v24 = *v39;
    v25 = v45;
    (*v39)(v22, v45);
    v24(v11, v25);
    v26 = sub_1001F1160(&qword_100ADDD70);
    v27 = v46;
    v28 = (*(*(v26 - 8) + 48))(v46, 1, v26);
    sub_100007840(v27, &qword_100ADDD68);
    v29 = v22;
    v30 = v37;
    v24(v37, v25);

    v14 = v30;
    v17 = v29;
    v19 = v43;
    if (v28 == 1)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100365F64(uint64_t a1, unint64_t a2)
{
  v4 = sub_1001F1160(&qword_100ADDD68);
  __chkstk_darwin(v4 - 8);
  v48 = &v36 - v5;
  v6 = sub_1001F1160(&qword_100AD5318);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v47 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = &v36 - v10;
  __chkstk_darwin(v11);
  v13 = &v36 - v12;
  result = sub_1003665B8(a1, a2);
  v15 = result;
  v16 = *(result + 16);
  if (v16)
  {
    v17 = 0;
    v42 = (v7 + 8);
    v43 = "Watched Key Paths";
    v18 = result + 40;
    v37 = v16 - 1;
    v39 = _swiftEmptyArrayStorage;
    v40 = v16;
    v44 = result;
    v38 = result + 40;
    v41 = v13;
    do
    {
      v19 = (v18 + 16 * v17);
      v20 = v17;
      while (1)
      {
        if (v20 >= *(v15 + 16))
        {
          __break(1u);
          return result;
        }

        v45 = v20;
        v22 = *(v19 - 1);
        v21 = *v19;

        v23 = sub_1007996B4();
        __chkstk_darwin(v23);
        *(&v36 - 2) = v13;
        sub_100005920(&qword_100AD5328, &qword_100AD5318);
        sub_1007996C4();
        v24 = v49;
        sub_100799694();
        v46 = v21;
        sub_1007A24B4();
        sub_1007996E4();

        v25 = *v42;
        (*v42)(v47, v6);
        (v25)(v24, v6);
        v26 = sub_1001F1160(&qword_100ADDD70);
        v27 = v48;
        v28 = (*(*(v26 - 8) + 48))(v48, 1, v26);
        sub_100007840(v27, &qword_100ADDD68);
        v29 = v41;
        v25();
        if (v28 != 1)
        {
          break;
        }

        v15 = v44;
        v13 = v29;
        v20 = v45 + 1;

        v19 += 2;
        if (v40 == v20)
        {
          goto LABEL_15;
        }
      }

      v30 = v39;
      result = swift_isUniquelyReferenced_nonNull_native();
      v50 = v30;
      if ((result & 1) == 0)
      {
        result = sub_1003BD0CC(0, v30[2] + 1, 1);
        v30 = v50;
      }

      v31 = v45;
      v33 = v30[2];
      v32 = v30[3];
      if (v33 >= v32 >> 1)
      {
        result = sub_1003BD0CC((v32 > 1), v33 + 1, 1);
        v30 = v50;
      }

      v17 = v31 + 1;
      v30[2] = v33 + 1;
      v39 = v30;
      v34 = &v30[2 * v33];
      v35 = v46;
      v34[4] = v22;
      v34[5] = v35;
      v18 = v38;
      v15 = v44;
      v13 = v29;
    }

    while (v37 != v31);
  }

  else
  {
    v39 = _swiftEmptyArrayStorage;
  }

LABEL_15:

  return v39;
}

void sub_1003664D8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1007A2A34();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong tableView];

    if (v3)
    {
      [v3 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_1003665B8(uint64_t a1, unint64_t a2)
{

  v5 = sub_1003666F4(0x7FFFFFFFFFFFFFFFLL, 1, a1, a2, v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    sub_1003BD0CC(0, v6, 0);
    v7 = v5 + 56;
    do
    {

      v8 = sub_1007A2334();
      v10 = v9;

      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_1003BD0CC((v11 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      v13 = &_swiftEmptyArrayStorage[2 * v12];
      v13[4] = v8;
      v13[5] = v10;
      v7 += 32;
      --v6;
    }

    while (v6);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1003666F4@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X8>)
{
  if (result < 0)
  {
    __break(1u);
LABEL_45:
    result = sub_10066B39C((a5 > 1), v6, 1, result);
LABEL_37:
    *(result + 16) = v6;
    v32 = (result + 32 * v5);
    v32[4] = v7;
    v32[5] = v8;
    v32[6] = v9;
    v32[7] = v10;
    return result;
  }

  v11 = a3;
  v12 = HIBYTE(a4) & 0xF;
  if (!result || ((a4 & 0x2000000000000000) != 0 ? (v13 = HIBYTE(a4) & 0xF) : (v13 = a3 & 0xFFFFFFFFFFFFLL), !v13))
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      v12 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = sub_1007A24B4();
    v8 = v29;
    v9 = v30;
    v10 = v31;

    result = sub_10066B39C(0, 1, 1, _swiftEmptyArrayStorage);
    v5 = *(result + 16);
    a5 = *(result + 24);
    v6 = v5 + 1;
    if (v5 < a5 >> 1)
    {
      goto LABEL_37;
    }

    goto LABEL_45;
  }

  v14 = 4 * v13;
  v43 = _swiftEmptyArrayStorage;
  v15 = 15;
  v16 = 0xE100000000000000;
  v42 = result;
  do
  {
    v17 = v15 >> 14;
    if (v15 >> 14 == v14)
    {
      break;
    }

    while (1)
    {
      v10 = v15;
      while (1)
      {
        v9 = sub_1007A2494();
        v19 = v18;
        if ((sub_1007A2094() & 1) != 0 || v9 == 44 && v19 == 0xE100000000000000)
        {
          break;
        }

        v9 = sub_1007A3AB4();

        if (v9)
        {
          goto LABEL_17;
        }

        v10 = sub_1007A23B4();
        v17 = v10 >> 14;
        if (v10 >> 14 == v14)
        {
          goto LABEL_33;
        }
      }

LABEL_17:
      if (v15 >> 14 != v17 || (a2 & 1) == 0)
      {
        break;
      }

      v15 = sub_1007A23B4();
      v17 = v15 >> 14;
      if (v15 >> 14 == v14)
      {
        goto LABEL_33;
      }
    }

    if (v17 < v15 >> 14)
    {
      __break(1u);
      return result;
    }

    v20 = sub_1007A24B4();
    v40 = v21;
    v41 = v20;
    v23 = v22;
    v39 = v24;
    v25 = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_10066B39C(0, *(v43 + 2) + 1, 1, v43);
    }

    v27 = *(v25 + 2);
    v26 = *(v25 + 3);
    v43 = v25;
    if (v27 >= v26 >> 1)
    {
      v43 = sub_10066B39C((v26 > 1), v27 + 1, 1, v25);
    }

    v9 = v43;
    *(v43 + 2) = v27 + 1;
    v28 = &v43[32 * v27];
    *(v28 + 4) = v41;
    *(v28 + 5) = v23;
    *(v28 + 6) = v40;
    *(v28 + 7) = v39;
    v15 = sub_1007A23B4();
  }

  while (*(v43 + 2) != v42);
LABEL_33:
  if (v15 >> 14 == v14 && (a2 & 1) != 0)
  {

    return v43;
  }

  if (v14 < v15 >> 14)
  {
    __break(1u);
    goto LABEL_47;
  }

  v11 = sub_1007A24B4();
  v16 = v33;
  v9 = v34;
  v10 = v35;

  v14 = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_47:
    result = sub_10066B39C(0, *(v14 + 16) + 1, 1, v14);
    goto LABEL_41;
  }

  result = v43;
LABEL_41:
  v37 = *(result + 16);
  v36 = *(result + 24);
  if (v37 >= v36 >> 1)
  {
    result = sub_10066B39C((v36 > 1), v37 + 1, 1, result);
  }

  *(result + 16) = v37 + 1;
  v38 = (result + 32 * v37);
  v38[4] = v11;
  v38[5] = v16;
  v38[6] = v9;
  v38[7] = v10;
  return result;
}

uint64_t sub_100366AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v42 = sub_100799684();
  v44 = *(v42 - 8);
  __chkstk_darwin(v42);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100ADDD78);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v38 = sub_1001F1160(&qword_100ADDD80);
  v43 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v40 = &v31 - v10;
  v11 = sub_1001F1160(&qword_100AD5318);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v37 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  __chkstk_darwin(v17);
  v19 = &v31 - v18;
  __chkstk_darwin(v20);
  v41 = &v31 - v21;
  sub_100005920(&qword_100AD5328, &qword_100AD5318);
  sub_100797BF4();
  v22 = sub_1007996A4();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
  sub_100797C24();
  sub_10036703C(a1, v16);
  sub_100799664();
  v23 = *(v12 + 8);
  v34 = v12 + 8;
  v23(v16, v11);
  v24 = *(v44 + 8);
  v44 += 8;
  v35 = v24;
  v24(v4, v42);
  sub_100007840(v7, &qword_100ADDD78);
  v25 = v36;
  sub_100797C14();
  sub_100005920(qword_100ADDD88, &qword_100ADDD80);
  v26 = v38;
  sub_100797BF4();
  v27 = *(v43 + 8);
  v43 += 8;
  v33 = v27;
  v27(v25, v26);
  v32 = v19;
  sub_100797C04();
  sub_100797C24();
  sub_100799674();
  v28 = v37;
  v29 = v40;
  sub_100799674();
  sub_100799654();
  v23(v28, v11);
  v23(v16, v11);
  v35(v4, v42);
  v23(v32, v11);
  v33(v29, v26);
  return (v23)(v41, v11);
}

uint64_t sub_10036703C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[0] = a1;
  v20[1] = a2;
  v2 = sub_100799684();
  v21 = *(v2 - 8);
  v22 = v2;
  __chkstk_darwin(v2);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100AD5318);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v20 - v10;
  __chkstk_darwin(v12);
  v14 = v20 - v13;
  __chkstk_darwin(v15);
  v17 = v20 - v16;
  v23 = 46;
  v24 = 0xE100000000000000;
  sub_100367368();
  sub_100797BF4();
  sub_100005920(&qword_100AD5328, &qword_100AD5318);
  sub_100797BF4();
  v23 = v25;
  v24 = v26;
  sub_100797C04();

  sub_100797C24();
  sub_100799674();
  sub_100799674();
  sub_100799654();
  v18 = *(v6 + 8);
  v18(v8, v5);
  v18(v11, v5);
  (*(v21 + 8))(v4, v22);
  v18(v14, v5);
  return (v18)(v17, v5);
}

unint64_t sub_100367368()
{
  result = qword_100ADFAE0;
  if (!qword_100ADFAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADFAE0);
  }

  return result;
}

void sub_100367410()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor:v3];
  }

  else
  {
    __break(1u);
  }
}

void sub_1003674B4(void *a1)
{
  v1 = a1;
  sub_100367410();
}

uint64_t sub_1003674FC(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1003677A4(a1);
  (*(*(*(v2 + qword_100B23080) - 8) + 8))(a1);
  return v5;
}

void *sub_1003675C0(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_100B23080);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(a1);
  (*(v5 + 16))(&v12 - v7, v6);
  v8 = sub_10079CBA4();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id sub_1003676F8(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_1003677A4(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  (*(v3 + 16))(&v5 - v2, v1);
  return sub_10079CBC4();
}

uint64_t sub_10036788C(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return _swift_task_switch(sub_1003678AC, 0, 0);
}

uint64_t sub_1003678AC()
{
  v2 = v0[5];
  v1 = v0[6];
  v0[4] = *(v1 + 32);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_100798C84();

  sub_1001F1160(&qword_100ADDEF0);
  sub_100798DC4();

  v4 = v0[3];
  v0[7] = v4;
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = sub_1007A1EE4();
  v7 = sub_1001F1160(&unk_100AD67F0);
  *v5 = v0;
  v5[1] = sub_100367A18;

  return Task.value.getter(v0 + 2, v4, v6, v7, &protocol self-conformance witness table for Error);
}

uint64_t sub_100367A18()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100367B94;
  }

  else
  {
    v2 = sub_100367B2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100367B2C()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100367B94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100367BF8(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return _swift_task_switch(sub_100367C18, 0, 0);
}

uint64_t sub_100367C18()
{
  v2 = v0[5];
  v1 = v0[6];
  v0[4] = *(v1 + 32);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_100798C84();

  sub_1001F1160(&qword_100ADDEF8);
  sub_100798DC4();

  v4 = v0[3];
  v0[7] = v4;
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = sub_10036D570();
  v7 = sub_1001F1160(&unk_100AD67F0);
  *v5 = v0;
  v5[1] = sub_100367D84;

  return Task.value.getter(v0 + 2, v4, v6, v7, &protocol self-conformance witness table for Error);
}

uint64_t sub_100367D84()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10036D9B4;
  }

  else
  {
    v2 = sub_10036D9B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100367E98(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return _swift_task_switch(sub_100367EB8, 0, 0);
}

uint64_t sub_100367EB8()
{
  v2 = v0[5];
  v1 = v0[6];
  v0[4] = *(v1 + 32);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_100798C84();

  sub_1001F1160(&qword_100ADDF00);
  sub_100798DC4();

  v4 = v0[3];
  v0[7] = v4;
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = sub_1001F1160(&qword_100ADDF08);
  v7 = sub_1001F1160(&unk_100AD67F0);
  *v5 = v0;
  v5[1] = sub_100367D84;

  return Task.value.getter(v0 + 2, v4, v6, v7, &protocol self-conformance witness table for Error);
}

uint64_t sub_100368064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, char *, uint64_t, void *))
{
  v9 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  if (*(a1 + 40))
  {
    v12 = *(a1 + 40);
  }

  else
  {
    v13 = sub_1007A2744();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v11, a2, v13);
    (*(v14 + 56))(v11, 0, 1, v13);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a1;

    v12 = a5(0, 0, v11, a4, v15);
    *(a1 + 40) = v12;
  }

  return v12;
}

uint64_t sub_1003681F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100368218, 0, 0);
}

uint64_t sub_100368218()
{
  v4 = (*(v0[3] + 16) + **(v0[3] + 16));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10036830C;
  v2 = v0[2];

  return v4(v2);
}

uint64_t sub_10036830C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100368400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  v6 = sub_1007A3C44();
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
    if (v11 || (sub_1007A3AB4() & 1) != 0)
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

BOOL sub_1003684F8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_1007A3BF4();
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

uint64_t sub_1003685A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10079A144();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10036D89C(&qword_100AD36C8, &type metadata accessor for ClusteringOptions.MediaType), v7 = sub_1007A2074(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_10036D89C(&qword_100AD36D0, &type metadata accessor for ClusteringOptions.MediaType);
      v15 = sub_1007A2124();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1003687B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10079A9B4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10036D89C(&qword_100ADDF10, &type metadata accessor for EventType), v7 = sub_1007A2074(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_10036D89C(&qword_100ADDF18, &type metadata accessor for EventType);
      v15 = sub_1007A2124();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1003689D0()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100B23090);
  sub_100008B98(v0, qword_100B23090);
  return sub_10079ACD4();
}

uint64_t sub_100368A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v88 = a2;
  v5 = sub_1001F1160(&qword_100AD6738);
  __chkstk_darwin(v5 - 8);
  v7 = &v70 - v6;
  v8 = sub_1001F1160(&qword_100AD6730);
  __chkstk_darwin(v8 - 8);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = (&v70 - v12);
  v14 = sub_10079A734();
  v81 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v70 - v18;
  if (!*(a1 + 16))
  {
    goto LABEL_25;
  }

  v20 = sub_10000E53C(25705, 0xE200000000000000);
  if ((v21 & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_1000077D8(*(a1 + 56) + 32 * v20, &v84, &unk_100AD5B40);
  v86 = v84;
  v87 = v85;
  if (!*(&v85 + 1))
  {

    sub_100007840(&v86, &unk_100AD5B40);
    goto LABEL_26;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_25:

LABEL_26:
    sub_10036D348();
    swift_allocError();
    *v33 = 0;
    return swift_willThrow();
  }

  v24 = v82;
  v23 = v83;
  v25 = HIBYTE(v83) & 0xF;
  v26 = v82 & 0xFFFFFFFFFFFFLL;
  if ((v83 & 0x2000000000000000) != 0)
  {
    v27 = HIBYTE(v83) & 0xF;
  }

  else
  {
    v27 = v82 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {
LABEL_72:

    goto LABEL_25;
  }

  v80 = v83;
  if ((v83 & 0x1000000000000000) != 0)
  {

    v77 = v24;
    v78 = sub_10063E4AC(v24, v23, 10);
    v44 = v43;

    v24 = v77;
    v29 = v78;
    if (v44)
    {
      goto LABEL_72;
    }

    goto LABEL_75;
  }

  if ((v83 & 0x2000000000000000) != 0)
  {
    *&v86 = v82;
    *(&v86 + 1) = v83 & 0xFFFFFFFFFFFFFFLL;
    if (v82 == 43)
    {
      if (v25)
      {
        if (--v25)
        {
          v29 = 0;
          v38 = &v86 + 1;
          while (1)
          {
            v39 = *v38 - 48;
            if (v39 > 9)
            {
              break;
            }

            if (!is_mul_ok(v29, 0xAuLL))
            {
              break;
            }

            v32 = __CFADD__(10 * v29, v39);
            v29 = 10 * v29 + v39;
            if (v32)
            {
              break;
            }

            ++v38;
            if (!--v25)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

LABEL_111:
      __break(1u);
      return result;
    }

    if (v82 != 45)
    {
      if (v25)
      {
        v29 = 0;
        v41 = &v86;
        while (1)
        {
          v42 = *v41 - 48;
          if (v42 > 9)
          {
            break;
          }

          if (!is_mul_ok(v29, 0xAuLL))
          {
            break;
          }

          v32 = __CFADD__(10 * v29, v42);
          v29 = 10 * v29 + v42;
          if (v32)
          {
            break;
          }

          ++v41;
          if (!--v25)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    if (v25)
    {
      if (--v25)
      {
        v29 = 0;
        v34 = &v86 + 1;
        while (1)
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            break;
          }

          if (!is_mul_ok(v29, 0xAuLL))
          {
            break;
          }

          v32 = 10 * v29 >= v35;
          v29 = 10 * v29 - v35;
          if (!v32)
          {
            break;
          }

          ++v34;
          if (!--v25)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    goto LABEL_109;
  }

  if ((v82 & 0x1000000000000000) != 0)
  {
    result = (v83 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v77 = v82;
    result = sub_1007A37B4();
    v24 = v77;
  }

  v28 = *result;
  if (v28 == 43)
  {
    if (v26 >= 1)
    {
      v25 = v26 - 1;
      if (v26 != 1)
      {
        v29 = 0;
        if (result)
        {
          v36 = (result + 1);
          while (1)
          {
            v37 = *v36 - 48;
            if (v37 > 9)
            {
              goto LABEL_70;
            }

            if (!is_mul_ok(v29, 0xAuLL))
            {
              goto LABEL_70;
            }

            v32 = __CFADD__(10 * v29, v37);
            v29 = 10 * v29 + v37;
            if (v32)
            {
              goto LABEL_70;
            }

            ++v36;
            if (!--v25)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_62;
      }

      goto LABEL_70;
    }

    goto LABEL_110;
  }

  if (v28 == 45)
  {
    if (v26 >= 1)
    {
      v25 = v26 - 1;
      if (v26 != 1)
      {
        v29 = 0;
        if (result)
        {
          v30 = (result + 1);
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              goto LABEL_70;
            }

            if (!is_mul_ok(v29, 0xAuLL))
            {
              goto LABEL_70;
            }

            v32 = 10 * v29 >= v31;
            v29 = 10 * v29 - v31;
            if (!v32)
            {
              goto LABEL_70;
            }

            ++v30;
            if (!--v25)
            {
              goto LABEL_71;
            }
          }
        }

LABEL_62:
        LOBYTE(v25) = 0;
        goto LABEL_71;
      }

      goto LABEL_70;
    }

    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  if (v26)
  {
    v29 = 0;
    if (result)
    {
      while (1)
      {
        v40 = *result - 48;
        if (v40 > 9)
        {
          goto LABEL_70;
        }

        if (!is_mul_ok(v29, 0xAuLL))
        {
          goto LABEL_70;
        }

        v32 = __CFADD__(10 * v29, v40);
        v29 = 10 * v29 + v40;
        if (v32)
        {
          goto LABEL_70;
        }

        ++result;
        if (!--v26)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_62;
  }

LABEL_70:
  v29 = 0;
  LOBYTE(v25) = 1;
LABEL_71:
  LOBYTE(v84) = v25;
  if (v25)
  {
    goto LABEL_72;
  }

LABEL_75:
  v77 = v24;
  v78 = v29;
  if (*(a1 + 16))
  {
    v45 = sub_10000E53C(1701869940, 0xE400000000000000);
    if (v46)
    {
      sub_1000077D8(*(a1 + 56) + 32 * v45, &v84, &unk_100AD5B40);
      v86 = v84;
      v87 = v85;
      if (*(&v85 + 1))
      {
        v47 = swift_dynamicCast();
        v48 = v47 == 0;
        if (v47)
        {
          v49 = v82;
        }

        else
        {
          v49 = 0;
        }

        if (v48)
        {
          v50 = 0;
        }

        else
        {
          v50 = v83;
        }

        goto LABEL_86;
      }

      sub_100007840(&v86, &unk_100AD5B40);
    }
  }

  v49 = 0;
  v50 = 0;
LABEL_86:
  sub_10036C038(v49, v50, v19);
  if (v3)
  {
  }

  if (!*(a1 + 16))
  {
    goto LABEL_100;
  }

  v51 = sub_10000E53C(0x7475626972747461, 0xEA00000000007365);
  if ((v52 & 1) == 0)
  {
    goto LABEL_100;
  }

  sub_1000077D8(*(a1 + 56) + 32 * v51, &v84, &unk_100AD5B40);
  v86 = v84;
  v87 = v85;
  if (!*(&v85 + 1))
  {
    goto LABEL_98;
  }

  sub_1001F1160(&qword_100ADDEC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_100;
  }

  v53 = v82;
  if (!v82)
  {
    goto LABEL_100;
  }

  if (!*(v82 + 16) || (v54 = sub_10000E53C(1701667182, 0xE400000000000000), (v55 & 1) == 0))
  {

    goto LABEL_100;
  }

  sub_1000077D8(*(v53 + 56) + 32 * v54, &v84, &unk_100AD5B40);

  v86 = v84;
  v87 = v85;
  if (!*(&v85 + 1))
  {
LABEL_98:
    sub_100007840(&v86, &unk_100AD5B40);
    goto LABEL_100;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_100:
    v79 = 0xE700000000000000;
    v73 = 0x6E776F6E6B6E75;
    goto LABEL_101;
  }

  v73 = v82;
  v79 = v83;
LABEL_101:
  v74 = v10;
  v75 = v7;
  if (qword_100AD1448 != -1)
  {
    swift_once();
  }

  v56 = sub_10079ACE4();
  sub_100008B98(v56, qword_100B23090);

  v57 = v79;

  v76 = sub_10079ACC4();
  v58 = sub_1007A2994();
  v79 = v57;

  v72 = v58;
  v59 = v76;
  if (os_log_type_enabled(v76, v58))
  {
    v60 = swift_slowAlloc();
    v62 = v79;
    v61 = v80;
    v63 = v60;
    v71 = swift_slowAlloc();
    *&v86 = v71;
    *v63 = 136315394;
    v77 = sub_1000070F4(v77, v61, &v86);

    *(v63 + 4) = v77;
    *(v63 + 12) = 2080;
    v64 = sub_1000070F4(v73, v62, &v86);

    *(v63 + 14) = v64;
    v65 = v76;
    _os_log_impl(&_mh_execute_header, v76, v72, "    storeID: %s title: %s", v63, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v67 = v74;
  v66 = v75;
  sub_10036C174(a1, v19, v13);

  v68 = v81;
  (*(v81 + 16))(v16, v19, v14);
  v69 = sub_10079A774();
  (*(*(v69 - 8) + 56))(v66, 1, 1, v69);
  sub_1000077D8(v13, v67, &qword_100AD6730);
  sub_10079A5E4();
  sub_100007840(v13, &qword_100AD6730);
  return (*(v68 + 8))(v19, v14);
}

uint64_t sub_1003694AC(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = sub_1007A2744();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_100369570, 0, 0);
}

uint64_t sub_100369570()
{
  sub_1007A2724();
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_10036962C;
  v2 = *(v0 + 120);

  return sub_10036788C(v2);
}

uint64_t sub_10036962C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    (*(v3[14] + 8))(v3[15], v3[13]);

    return _swift_task_switch(sub_100369B98, 0, 0);
  }

  else
  {
    (*(v3[14] + 8))(v3[15], v3[13]);
    sub_1001F1160(&qword_100ADDEE0);
    v5 = swift_task_alloc();
    v3[19] = v5;
    *v5 = v4;
    v5[1] = sub_100369804;

    return BaseObjectGraph.inject<A>(_:)(v3 + 2);
  }
}

uint64_t sub_100369804()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_100369BFC;
  }

  else
  {
    v2 = sub_100369918;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100369918()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[5];
  v4 = v0[6];
  sub_10000E3E8(v0 + 2, v3);
  v0[7] = v2;
  v0[8] = v1;
  v5 = swift_task_alloc();
  v0[21] = v5;
  v6 = sub_10036D39C();
  *v5 = v0;
  v5[1] = sub_100369A04;
  v7 = v0[17];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 9, v0 + 7, v7, &type metadata for PersonalRecommendationIntent, v6, v3, v4);
}

uint64_t sub_100369A04()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_100369C68;
  }

  else
  {
    v2 = sub_100369B18;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100369B18()
{

  v1 = *(v0 + 72);
  sub_1000074E0(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100369B98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100369BFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100369C68()
{

  sub_1000074E0(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100369CDC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_10079A734();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100369D9C, 0, 0);
}

uint64_t sub_100369D9C()
{
  v1 = sub_100799A94();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_100369E48;

  return sub_1003694AC(&off_100A0CC10, v1);
}

uint64_t sub_100369E48(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 72) = a1;

    return _swift_task_switch(sub_100369FA0, 0, 0);
  }
}

uint64_t sub_100369FA0()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  sub_100799AB4();
  v6 = sub_100799AA4();
  sub_10036C8C8(v1, 0xD00000000000001ALL, 0x80000001008BFCE0, v3, v6);
  (*(v4 + 8))(v3, v5);

  if (v2)
  {

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = sub_1007A2624();

    v10 = v0[1];

    return v10(v9);
  }
}

uint64_t sub_10036A104(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10036D9C0;

  return sub_100369CDC(a1);
}

uint64_t sub_10036A19C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_10079A734();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10036A25C, 0, 0);
}

uint64_t sub_10036A25C()
{
  v1 = sub_100799A54();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_10036A308;

  return sub_1003694AC(&off_100A0CC40, v1);
}

uint64_t sub_10036A308(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 72) = a1;

    return _swift_task_switch(sub_10036A460, 0, 0);
  }
}

uint64_t sub_10036A460()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  sub_100799A84();
  v6 = sub_100799A64();
  sub_10036C8C8(v1, 0xD000000000000014, 0x80000001008BFD00, v3, v6);
  (*(v4 + 8))(v3, v5);

  if (v2)
  {

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = sub_1007A2624();

    v10 = v0[1];

    return v10(v9);
  }
}

uint64_t sub_10036A5C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10036D9C0;

  return sub_10036A19C(a1);
}

uint64_t sub_10036A65C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_10079A734();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10036A71C, 0, 0);
}

uint64_t sub_10036A71C()
{
  v1 = sub_100799FC4();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_10036A7C8;

  return sub_1003694AC(&off_100A0CC70, v1);
}

uint64_t sub_10036A7C8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 72) = a1;

    return _swift_task_switch(sub_10036A920, 0, 0);
  }
}

uint64_t sub_10036A920()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  sub_100799FE4();
  v6 = sub_100799FD4();
  sub_10036C8C8(v1, 0x756F792D726F66, 0xE700000000000000, v3, v6);
  (*(v4 + 8))(v3, v5);

  if (v2)
  {

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = sub_1007A2624();

    v10 = v0[1];

    return v10(v9);
  }
}

uint64_t sub_10036AA74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10036D9C0;

  return sub_10036A65C(a1);
}

uint64_t sub_10036AB0C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_10079A734();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10036ABCC, 0, 0);
}

uint64_t sub_10036ABCC()
{
  v1 = sub_10079A2B4();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_10036AC78;

  return sub_1003694AC(&off_100A0CCA0, v1);
}

uint64_t sub_10036AC78(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 72) = a1;

    return _swift_task_switch(sub_10036ADD0, 0, 0);
  }
}

uint64_t sub_10036ADD0()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  (*(v4 + 104))(v3, enum case for Book.MediaType.ebook(_:), v5);
  v6 = sub_10079A2C4();
  sub_10036C8C8(v1, 0xD000000000000014, 0x80000001008BFD20, v3, v6);
  (*(v4 + 8))(v3, v5);

  if (v2)
  {

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = sub_1007A2624();

    v10 = v0[1];

    return v10(v9);
  }
}

uint64_t sub_10036AF54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1002104D8;

  return sub_10036AB0C(a1);
}

uint64_t sub_10036AFEC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_10079A734();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10036B0AC, 0, 0);
}

uint64_t sub_10036B0AC()
{
  v1 = sub_10079A354();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_10036B158;

  return sub_1003694AC(&off_100A0CCD0, v1);
}

uint64_t sub_10036B158(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 72) = a1;

    return _swift_task_switch(sub_10036B2B0, 0, 0);
  }
}

uint64_t sub_10036B2B0()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  sub_10079A384();
  v6 = sub_10079A364();
  sub_10036C8C8(v1, 0xD000000000000016, 0x80000001008BFD40, v3, v6);
  (*(v4 + 8))(v3, v5);

  if (v2)
  {

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = sub_1007A2624();

    v10 = v0[1];

    return v10(v9);
  }
}

uint64_t sub_10036B414(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10036D9C0;

  return sub_10036AFEC(a1);
}

uint64_t sub_10036B4AC(uint64_t a1)
{
  v2 = sub_100798DB4();
  __chkstk_darwin(v2);
  v4 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v85 = &v84 - v6;
  __chkstk_darwin(v7);
  v90 = &v84 - v8;
  __chkstk_darwin(v9);
  v12 = (&v84 - v11);
  v13 = a1 + 64;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 64);
  v17 = (v14 + 63) >> 6;
  v93 = (v10 + 4);
  v87 = enum case for JSON.number(_:);
  v94 = (v10 + 13);
  v89 = enum case for JSON.false(_:);
  v88 = enum case for JSON.true(_:);
  v92 = enum case for JSON.string(_:);
  v99 = (v10 + 2);
  v97 = v10 + 1;
  v98 = v10;
  v91 = v10 + 5;

  v19 = 0;
  v86 = 0;
  v20 = _swiftEmptyDictionarySingleton;
  v100 = a1;
  v96 = a1 + 64;
  for (i = v17; ; v17 = i)
  {
    if (!v16)
    {
      while (1)
      {
        v23 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v23 >= v17)
        {
          goto LABEL_39;
        }

        v16 = *(v13 + 8 * v23);
        ++v19;
        if (v16)
        {
          v19 = v23;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_49:
      v75 = v18;

      v86 = sub_1007967D4();

      swift_willThrow();

      sub_1000074E0(&v108);
LABEL_51:
      if (qword_100AD1448 != -1)
      {
        swift_once();
      }

      v76 = sub_10079ACE4();
      sub_100008B98(v76, qword_100B23090);
      swift_errorRetain();
      v77 = sub_10079ACC4();
      v78 = sub_1007A29B4();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *&v108 = v80;
        *v79 = 136315138;
        swift_getErrorValue();
        v81 = sub_1007A3B84();
        v83 = sub_1000070F4(v81, v82, &v108);

        *(v79 + 4) = v83;
        _os_log_impl(&_mh_execute_header, v77, v78, "Failed to encode or decode JSON: %s", v79, 0xCu);
        sub_1000074E0(v80);
      }

      else
      {
      }

      return 0;
    }

LABEL_11:
    v24 = __clz(__rbit64(v16)) | (v19 << 6);
    v25 = *(a1 + 56);
    v26 = (*(a1 + 48) + 16 * v24);
    v27 = v26[1];
    v103 = *v26;
    sub_1000077D8(v25 + 32 * v24, &v108, &unk_100AD5B40);
    v102 = v109;
    v101 = v108;

    v104 = v27;
    if (!v27)
    {
LABEL_39:

      if (v20[2] || !*(a1 + 16))
      {
        return v20;
      }

      return 0;
    }

    v107[0] = v101;
    v107[1] = v102;
    if (!*(&v102 + 1))
    {

      sub_100007840(v107, &unk_100AD5B40);
      if (qword_100AD1448 == -1)
      {
LABEL_43:
        v70 = sub_10079ACE4();
        sub_100008B98(v70, qword_100B23090);
        v71 = sub_10079ACC4();
        v72 = sub_1007A29B4();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          _os_log_impl(&_mh_execute_header, v71, v72, "Failed to encode or decode JSON", v73, 2u);
        }

        return 0;
      }

LABEL_58:
      swift_once();
      goto LABEL_43;
    }

    sub_1000076D4(v107, &v108);
    sub_100007484(&v108, v107);
    if (swift_dynamicCast())
    {
      v28 = v4;
      v29 = v20;
      v30 = v105;
      v31 = v106;
      v32 = swift_allocObject();
      *(v32 + 16) = v30;
      *(v32 + 24) = v31;
      *v12 = v32;
      (*v94)(v12, v92, v2);
      goto LABEL_25;
    }

    sub_100007484(&v108, v107);
    if (swift_dynamicCast())
    {
      v28 = v4;
      v29 = v20;
      if (v105)
      {
        v33 = v88;
      }

      else
      {
        v33 = v89;
      }

      v34 = v90;
      (*v94)(v90, v33, v2);
      (*v93)(v12, v34, v2);
      goto LABEL_25;
    }

    sub_100007484(&v108, v107);
    if (swift_dynamicCast())
    {
      v28 = v4;
      v29 = v20;
      v35 = v105;
      v36 = swift_allocObject();
      *&v107[0] = v35;
      v37 = sub_1007A3A74();
LABEL_24:
      *(v36 + 16) = v37;
      *(v36 + 24) = v38;
      *v12 = v36;
      (*v94)(v12, v87, v2);
      goto LABEL_25;
    }

    sub_100007484(&v108, v107);
    if (swift_dynamicCast())
    {
      v28 = v4;
      v29 = v20;
      v36 = swift_allocObject();
      v37 = sub_1007A27C4();
      goto LABEL_24;
    }

    v61 = objc_opt_self();
    sub_10000E3E8(&v108, *(&v109 + 1));
    v62 = sub_1007A3AA4();
    *&v107[0] = 0;
    v63 = [v61 dataWithJSONObject:v62 options:0 error:v107];
    swift_unknownObjectRelease();
    v18 = *&v107[0];
    if (!v63)
    {
      goto LABEL_49;
    }

    v64 = sub_1007969D4();
    v66 = v65;

    sub_100796464();
    swift_allocObject();
    sub_100796454();
    sub_10036D89C(&qword_100ADDED8, &type metadata accessor for JSON);
    v67 = v85;
    *&v102 = v64;
    v68 = v86;
    sub_100796444();
    v86 = v68;
    if (v68)
    {

      sub_10000ADCC(v102, v66);

      sub_1000074E0(&v108);

      goto LABEL_51;
    }

    v69 = v66;
    v28 = v4;
    v29 = v20;
    sub_10000ADCC(v102, v69);

    (*v93)(v12, v67, v2);
LABEL_25:
    v39 = v28;
    v40 = v28;
    v41 = v12;
    v42 = v12;
    v43 = v2;
    (*v99)(v39, v42, v2);
    v44 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v107[0] = v44;
    v47 = sub_10000E53C(v103, v104);
    v48 = v44[2];
    v49 = (v46 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v51 = v46;
    if (v44[3] < v50)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v4 = v40;
      if (v46)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1002F171C();
      v4 = v40;
      if (v51)
      {
LABEL_4:

        v20 = *&v107[0];
        v21 = v98;
        v22 = *(*&v107[0] + 56) + v98[9] * v47;
        v2 = v43;
        (v98)[5](v22, v4, v43);
        v12 = v41;
        (v21[1])(v41, v2);
        goto LABEL_5;
      }
    }

LABEL_32:
    v20 = *&v107[0];
    *(*&v107[0] + 8 * (v47 >> 6) + 64) |= 1 << v47;
    v54 = (v20[6] + 16 * v47);
    v55 = v104;
    *v54 = v103;
    v54[1] = v55;
    v56 = v98;
    v57 = v20[7] + v98[9] * v47;
    v2 = v43;
    (v98)[4](v57, v4, v43);
    v12 = v41;
    (v56[1])(v41, v2);
    v58 = v20[2];
    v59 = __OFADD__(v58, 1);
    v60 = v58 + 1;
    if (v59)
    {
      goto LABEL_57;
    }

    v20[2] = v60;
LABEL_5:
    v16 &= v16 - 1;
    v18 = sub_1000074E0(&v108);
    a1 = v100;
    v13 = v96;
  }

  sub_1003D500C(v50, isUniquelyReferenced_nonNull_native);
  v52 = sub_10000E53C(v103, v104);
  if ((v51 & 1) == (v53 & 1))
  {
    v47 = v52;
    v4 = v40;
    if (v51)
    {
      goto LABEL_4;
    }

    goto LABEL_32;
  }

  result = sub_1007A3B24();
  __break(1u);
  return result;
}