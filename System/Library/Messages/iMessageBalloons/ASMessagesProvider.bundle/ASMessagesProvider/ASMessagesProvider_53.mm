uint64_t sub_5F59E4(uint64_t a1)
{
  v47 = a1;
  v36 = sub_766160();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v37 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_75E5F0();
  v3 = *(v46 - 8);
  __chkstk_darwin(v46);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DF10 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = sub_768FF0();
    v48 = sub_BE38(v6, qword_9A0460);
    v7 = sub_BD88(&qword_93FD00);
    v8 = *(sub_7685F0() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v42 = v7;
    v43 = 4 * v9;
    *(swift_allocObject() + 16) = xmmword_782440;
    v38 = v10;
    v45 = v1;
    sub_7685D0();
    v41 = "advertDidExitView";
    sub_768540();
    sub_768540();
    v40 = 2 * v9;
    v11 = sub_75E5D0();
    *(&v51[0] + 1) = &type metadata for String;
    *&v50 = v11;
    *(&v50 + 1) = v12;
    v39 = 3 * v9;
    sub_7685C0();
    sub_10A2C(&v50, &unk_93FBD0);
    v44 = v6;
    sub_768E80();

    v13 = sub_75E5E0();
    v14 = v46;
    (*(v3 + 104))(v5, enum case for SearchAdOpportunity.LifecycleEventType.onScreen(_:), v46);
    if (!*(v13 + 16) || (v15 = sub_6647E8(v5), (v16 & 1) == 0))
    {

      (*(v3 + 8))(v5, v14);
      v52 = 0;
LABEL_19:
      v50 = 0u;
      v51[0] = 0u;
LABEL_20:
      sub_10A2C(&v50, &unk_93FBD0);
LABEL_21:
      *(swift_allocObject() + 16) = xmmword_784250;
      sub_7685D0();
      sub_768540();
      sub_768540();
      sub_768540();
      v31 = sub_75E5D0();
      *(&v51[0] + 1) = &type metadata for String;
      *&v50 = v31;
      *(&v50 + 1) = v32;
      sub_7685C0();
      sub_10A2C(&v50, &unk_93FBD0);
      sub_768EA0();
    }

    v17 = v14;
    v18 = *(*(v13 + 56) + 8 * v15);
    v19 = *(v3 + 8);

    v19(v5, v17);

    v52 = v18;
    if (!v18)
    {
      goto LABEL_19;
    }

    v1 = &v52;
    sub_2062D4(0x6E6174736E496461, 0xEC00000064496563, &v50);
    if (!*(&v51[0] + 1))
    {
      goto LABEL_20;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    sub_766150();
    v20 = v52;
    if (!v52)
    {
      break;
    }

    v21 = 1 << *(v52 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v3 = v22 & *(v52 + 64);
    v23 = (v21 + 63) >> 6;
    v5 = &v50;

    v24 = 0;
    while (v3)
    {
      v25 = v24;
LABEL_16:
      v26 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v27 = v26 | (v25 << 6);
      v28 = (*(v20 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      sub_132B4(*(v20 + 56) + 32 * v27, v51);
      *&v50 = v29;
      *(&v50 + 1) = v30;
      sub_132B4(v51, &v49);
      swift_bridgeObjectRetain_n();
      v1 = v37;
      sub_766170();
      sub_10A2C(&v50, &qword_95DCD8);
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        goto LABEL_24;
      }

      v3 = *(v20 + 64 + 8 * v25);
      ++v24;
      if (v3)
      {
        v24 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_24:
  v34 = v37;
  sub_765F80();
  (*(v35 + 8))(v34, v36);
}

uint64_t sub_5F6074(uint64_t a1)
{
  v47 = a1;
  v36 = sub_7661F0();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v37 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_75E5F0();
  v3 = *(v46 - 8);
  __chkstk_darwin(v46);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DF10 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = sub_768FF0();
    v48 = sub_BE38(v6, qword_9A0460);
    v7 = sub_BD88(&qword_93FD00);
    v8 = *(sub_7685F0() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v42 = v7;
    v43 = 4 * v9;
    *(swift_allocObject() + 16) = xmmword_782440;
    v38 = v10;
    v45 = v1;
    sub_7685D0();
    v41 = "ered undefined threshold";
    sub_768540();
    sub_768540();
    v40 = 2 * v9;
    v11 = sub_75E5D0();
    *(&v51[0] + 1) = &type metadata for String;
    *&v50 = v11;
    *(&v50 + 1) = v12;
    v39 = 3 * v9;
    sub_7685C0();
    sub_10A2C(&v50, &unk_93FBD0);
    v44 = v6;
    sub_768E80();

    v13 = sub_75E5E0();
    v14 = v46;
    (*(v3 + 104))(v5, enum case for SearchAdOpportunity.LifecycleEventType.offScreen(_:), v46);
    if (!*(v13 + 16) || (v15 = sub_6647E8(v5), (v16 & 1) == 0))
    {

      (*(v3 + 8))(v5, v14);
      v52 = 0;
LABEL_19:
      v50 = 0u;
      v51[0] = 0u;
LABEL_20:
      sub_10A2C(&v50, &unk_93FBD0);
LABEL_21:
      *(swift_allocObject() + 16) = xmmword_784250;
      sub_7685D0();
      sub_768540();
      sub_768540();
      sub_768540();
      v31 = sub_75E5D0();
      *(&v51[0] + 1) = &type metadata for String;
      *&v50 = v31;
      *(&v50 + 1) = v32;
      sub_7685C0();
      sub_10A2C(&v50, &unk_93FBD0);
      sub_768EA0();
    }

    v17 = v14;
    v18 = *(*(v13 + 56) + 8 * v15);
    v19 = *(v3 + 8);

    v19(v5, v17);

    v52 = v18;
    if (!v18)
    {
      goto LABEL_19;
    }

    v1 = &v52;
    sub_2062D4(0x6E6174736E496461, 0xEC00000064496563, &v50);
    if (!*(&v51[0] + 1))
    {
      goto LABEL_20;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    sub_7661E0();
    v20 = v52;
    if (!v52)
    {
      break;
    }

    v21 = 1 << *(v52 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v3 = v22 & *(v52 + 64);
    v23 = (v21 + 63) >> 6;
    v5 = &v50;

    v24 = 0;
    while (v3)
    {
      v25 = v24;
LABEL_16:
      v26 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v27 = v26 | (v25 << 6);
      v28 = (*(v20 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      sub_132B4(*(v20 + 56) + 32 * v27, v51);
      *&v50 = v29;
      *(&v50 + 1) = v30;
      sub_132B4(v51, &v49);
      swift_bridgeObjectRetain_n();
      v1 = v37;
      sub_766200();
      sub_10A2C(&v50, &qword_95DCD8);
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        goto LABEL_24;
      }

      v3 = *(v20 + 64 + 8 * v25);
      ++v24;
      if (v3)
      {
        v24 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_24:
  v34 = v37;
  sub_765FA0();
  (*(v35 + 8))(v34, v36);
}

uint64_t sub_5F6704(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v4 = sub_766280();
  v54 = *(v4 - 8);
  v55 = v4;
  __chkstk_darwin(v4);
  v56 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75E5F0();
  v57 = *(v6 - 8);
  v58 = v6;
  __chkstk_darwin(v6);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&qword_95DCE0);
  __chkstk_darwin(v9 - 8);
  v11 = v50 - v10;
  v12 = sub_761970();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5F7BAC(a2, v11);
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    (*(v13 + 104))(v15, enum case for AdvertVisibilityCalculator.VisibilityThreshold.fullyOffScreen(_:), v12);
    if (v16(v11, 1, v12) != 1)
    {
      sub_10A2C(v11, &qword_95DCE0);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  v17 = sub_5F7050();
  v19 = v18;
  result = (*(v13 + 8))(v15, v12);
  if ((v19 & 1) == 0)
  {
    result = sub_5F7050();
    if ((v21 & 1) == 0 && result != v17)
    {
      v53 = result;
      if (qword_93DF10 != -1)
      {
        goto LABEL_34;
      }

      while (1)
      {
        v51 = sub_768FF0();
        v50[10] = sub_BE38(v51, qword_9A0460);
        v22 = sub_BD88(&qword_93FD00);
        v23 = *(sub_7685F0() - 8);
        v24 = *(v23 + 72);
        v25 = *(v23 + 80);
        v26 = (v25 + 32) & ~v25;
        v50[9] = 8 * v24;
        v50[6] = v25;
        v50[8] = v22;
        *(swift_allocObject() + 16) = xmmword_783150;
        v50[7] = v26;
        v52 = v2;
        sub_7685D0();
        v50[5] = "advertWasRemoved";
        sub_768540();
        sub_768540();
        v50[4] = 2 * v24;
        v27 = sub_75E5D0();
        *(&v62[0] + 1) = &type metadata for String;
        *&v61 = v27;
        *(&v61 + 1) = v28;
        v50[3] = 3 * v24;
        sub_7685C0();
        sub_10A2C(&v61, &unk_93FBD0);
        sub_768540();
        v50[2] = 4 * v24;
        *(&v62[0] + 1) = &type metadata for Int;
        *&v61 = v17;
        v50[1] = 5 * v24;
        sub_7685C0();
        sub_10A2C(&v61, &unk_93FBD0);
        sub_768540();
        *(&v62[0] + 1) = &type metadata for Int;
        *&v61 = v53;
        sub_7685C0();
        sub_10A2C(&v61, &unk_93FBD0);
        sub_768E80();

        v29 = sub_75E5E0();
        v31 = v57;
        v30 = v58;
        (*(v57 + 104))(v8, enum case for SearchAdOpportunity.LifecycleEventType.visible(_:), v58);
        if (!*(v29 + 16) || (v32 = sub_6647E8(v8), (v33 & 1) == 0))
        {

          (*(v31 + 8))(v8, v30);
          v63 = 0;
LABEL_26:
          v61 = 0u;
          v62[0] = 0u;
LABEL_27:
          sub_10A2C(&v61, &unk_93FBD0);
LABEL_28:
          *(swift_allocObject() + 16) = xmmword_784250;
          sub_7685D0();
          sub_768540();
          sub_768540();
          sub_768540();
          v47 = sub_75E5D0();
          *(&v62[0] + 1) = &type metadata for String;
          *&v61 = v47;
          *(&v61 + 1) = v48;
          sub_7685C0();
          sub_10A2C(&v61, &unk_93FBD0);
          sub_768EA0();
        }

        v34 = *(*(v29 + 56) + 8 * v32);
        v35 = *(v31 + 8);

        v35(v8, v30);

        v63 = v34;
        if (!v34)
        {
          goto LABEL_26;
        }

        v2 = &v63;
        sub_2062D4(0x6E6174736E496461, 0xEC00000064496563, &v61);
        if (!*(&v62[0] + 1))
        {
          goto LABEL_27;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_28;
        }

        sub_766270();
        v36 = v63;
        if (!v63)
        {
          break;
        }

        v37 = 1 << *(v63 + 32);
        v38 = -1;
        if (v37 < 64)
        {
          v38 = ~(-1 << v37);
        }

        v39 = v38 & *(v63 + 64);
        v40 = (v37 + 63) >> 6;

        v17 = 0;
        v8 = &unk_7A9088;
        while (v39)
        {
          v41 = v17;
LABEL_23:
          v42 = __clz(__rbit64(v39));
          v39 &= v39 - 1;
          v43 = v42 | (v41 << 6);
          v44 = (*(v36 + 48) + 16 * v43);
          v45 = *v44;
          v46 = v44[1];
          sub_132B4(*(v36 + 56) + 32 * v43, v62);
          *&v61 = v45;
          *(&v61 + 1) = v46;
          sub_132B4(v62, &v60);
          swift_bridgeObjectRetain_n();
          v2 = v56;
          sub_766290();
          sub_10A2C(&v61, &qword_95DCD8);
        }

        while (1)
        {
          v41 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v41 >= v40)
          {

            goto LABEL_32;
          }

          v39 = *(v36 + 64 + 8 * v41);
          ++v17;
          if (v39)
          {
            v17 = v41;
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_34:
        swift_once();
      }

LABEL_32:
      v49 = v56;
      sub_765FC0();
      (*(v54 + 8))(v49, v55);
    }
  }

  return result;
}

uint64_t sub_5F7050()
{
  v0 = sub_761970();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v1 + 104);
  v5(v4, enum case for AdvertVisibilityCalculator.VisibilityThreshold.fullyOnScreen(_:), v0, v2);
  sub_5F7C1C(&qword_95DCE8);
  sub_769430();
  sub_769430();
  v6 = *(v1 + 8);
  v6(v4, v0);
  if (v11[1] == v11[0])
  {
    return 100;
  }

  (v5)(v4, enum case for AdvertVisibilityCalculator.VisibilityThreshold.moreThanHalfOnScreen(_:), v0);
  sub_5F7C1C(&qword_95DCF0);
  v8 = sub_7691B0();
  v6(v4, v0);
  if ((v8 & 1) == 0)
  {
    return 50;
  }

  (v5)(v4, enum case for AdvertVisibilityCalculator.VisibilityThreshold.fullyOffScreen(_:), v0);
  v9 = sub_7691B0();
  v6(v4, v0);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  if (qword_93DF10 != -1)
  {
    swift_once();
  }

  v10 = sub_768FF0();
  sub_BE38(v10, qword_9A0460);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_7685D0();
  sub_768540();
  sub_768EA0();

  return 0;
}

uint64_t sub_5F73CC(uint64_t a1)
{
  v47 = a1;
  v37 = sub_7661C0();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v38 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_75E5F0();
  v3 = *(v46 - 8);
  __chkstk_darwin(v46);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DF10 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = sub_768FF0();
    v48 = sub_BE38(v6, qword_9A0460);
    v7 = sub_BD88(&qword_93FD00);
    v8 = *(sub_7685F0() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v42 = v7;
    v43 = 4 * v9;
    *(swift_allocObject() + 16) = xmmword_782440;
    v39 = v10;
    v45 = v1;
    sub_7685D0();
    sub_768540();
    sub_768540();
    v41 = 2 * v9;
    v11 = sub_75E5D0();
    *(&v51[0] + 1) = &type metadata for String;
    *&v50 = v11;
    *(&v50 + 1) = v12;
    v40 = 3 * v9;
    sub_7685C0();
    sub_10A2C(&v50, &unk_93FBD0);
    v44 = v6;
    sub_768E80();

    v13 = sub_75E5E0();
    v14 = v46;
    (*(v3 + 104))(v5, enum case for SearchAdOpportunity.LifecycleEventType.completed(_:), v46);
    if (!*(v13 + 16) || (v15 = sub_6647E8(v5), (v16 & 1) == 0))
    {

      (*(v3 + 8))(v5, v14);
      v52 = 0;
LABEL_19:
      v50 = 0u;
      v51[0] = 0u;
LABEL_20:
      sub_10A2C(&v50, &unk_93FBD0);
LABEL_21:
      *(swift_allocObject() + 16) = xmmword_784250;
      sub_7685D0();
      sub_768540();
      sub_768540();
      sub_768540();
      v31 = sub_75E5D0();
      *(&v51[0] + 1) = &type metadata for String;
      *&v50 = v31;
      *(&v50 + 1) = v32;
      sub_7685C0();
      sub_10A2C(&v50, &unk_93FBD0);
      sub_768EA0();
    }

    v17 = v14;
    v18 = *(*(v13 + 56) + 8 * v15);
    v19 = *(v3 + 8);

    v19(v5, v17);

    v52 = v18;
    if (!v18)
    {
      goto LABEL_19;
    }

    v1 = &v52;
    sub_2062D4(0x6E6174736E496461, 0xEC00000064496563, &v50);
    if (!*(&v51[0] + 1))
    {
      goto LABEL_20;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    sub_7661B0();
    v20 = v52;
    if (!v52)
    {
      break;
    }

    v21 = 1 << *(v52 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v3 = v22 & *(v52 + 64);
    v23 = (v21 + 63) >> 6;
    v5 = &v50;

    v24 = 0;
    while (v3)
    {
      v25 = v24;
LABEL_16:
      v26 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v27 = v26 | (v25 << 6);
      v28 = (*(v20 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      sub_132B4(*(v20 + 56) + 32 * v27, v51);
      *&v50 = v29;
      *(&v50 + 1) = v30;
      sub_132B4(v51, &v49);
      swift_bridgeObjectRetain_n();
      v1 = v38;
      sub_7661D0();
      sub_10A2C(&v50, &qword_95DCD8);
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        goto LABEL_24;
      }

      v3 = *(v20 + 64 + 8 * v25);
      ++v24;
      if (v3)
      {
        v24 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_24:
  v34 = v38;
  sub_765F90();
  (*(v36 + 8))(v34, v37);
}

uint64_t sub_5F7A54()
{

  return swift_deallocClassInstance();
}

uint64_t sub_5F7BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_95DCE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5F7C1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_761970();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_5F7C60()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleCaption2;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightBold];

  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = UIFontTextStyleFootnote;
  v4 = [v0 _preferredFontForTextStyle:v3 weight:UIFontWeightBold];

  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v1;
  v6 = [v0 _preferredFontForTextStyle:v5 weight:UIFontWeightBold];

  if (v6)
  {
    qword_9A04A8 = v2;
    unk_9A04B0 = v4;
    qword_9A04B8 = v6;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_5F7D78()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleTitle3;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightRegular];

  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = UIFontTextStyleBody;
  v4 = [v0 _preferredFontForTextStyle:v3 weight:UIFontWeightRegular];

  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v1;
  v6 = [v0 _preferredFontForTextStyle:v5 weight:UIFontWeightRegular];

  if (v6)
  {
    qword_9A04C0 = v2;
    *algn_9A04C8 = v4;
    qword_9A04D0 = v6;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_5F7E90()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleTitle3;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightBold];

  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v1;
  v4 = [v0 _preferredFontForTextStyle:v3 weight:UIFontWeightBold];

  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v3;
  v6 = [v0 _preferredFontForTextStyle:v5 weight:UIFontWeightBold];

  if (v6)
  {
    qword_9A04D8 = v2;
    unk_9A04E0 = v4;
    qword_9A04E8 = v6;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_5F7F9C()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleFootnote;
  v2 = [v0 preferredFontForTextStyle:v1];

  v3 = UIFontTextStyleSubheadline;
  v4 = [v0 preferredFontForTextStyle:v3];

  v5 = UIFontTextStyleBody;
  v6 = [v0 preferredFontForTextStyle:v5];

  qword_9A04F0 = v2;
  *algn_9A04F8 = v4;
  qword_9A0500 = v6;
}

uint64_t sub_5F8088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  v121 = a2;
  v103 = a4;
  v6 = sub_75B270();
  v105 = *(v6 - 8);
  v106 = v6;
  __chkstk_darwin(v6);
  v104 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_762D10();
  v115 = *(v119 - 8);
  __chkstk_darwin(v119);
  v9 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_756CB0();
  v111 = *(v10 - 8);
  v112 = v10;
  __chkstk_darwin(v10);
  v110 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_75F100();
  v101 = *(v12 - 8);
  v102 = v12;
  __chkstk_darwin(v12);
  v100 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v120 = &v96 - v15;
  v16 = sub_75B240();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v23 = &v96 - v22;
  v122 = [a3 traitCollection];
  sub_75B250();
  (*(v17 + 104))(v19, enum case for BreakoutDetails.BackgroundStyle.material(_:), v16);
  sub_5F9628(&qword_95DD00, &type metadata accessor for BreakoutDetails.BackgroundStyle);
  sub_769430();
  sub_769430();
  if (v144 != v140 || v145 != v141)
  {
    sub_76A950();
  }

  v24 = *(v17 + 8);
  v24(v19, v16);
  v24(v23, v16);

  v25 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_636B98(v121, v120);
  v117 = sub_26F08();
  v118 = v25;
  v26 = sub_769E10();
  v27 = sub_75B290();
  if (!v28)
  {
    v33 = v9;
    v29 = a1;
    goto LABEL_8;
  }

  v29 = a1;
  v144 = v27;
  v145 = v28;
  v30 = v110;
  sub_756C90();
  sub_12EC40();
  sub_76A4C0();
  v32 = v31;
  (*(v111 + 8))(v30, v112);
  if (v32)
  {
    v33 = v9;

LABEL_8:
    v34 = v119;
    goto LABEL_13;
  }

  [v26 lineHeight];
  v36 = v35;

  v38 = ceil(v36 * 1.3);
  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v38 <= -9.22337204e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v38 >= 9.22337204e18)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v33 = v9;
  v34 = v119;
LABEL_13:
  sub_75B290();
  v39 = sub_7653B0();
  v146 = v39;
  v109 = sub_5F9628(&qword_93F9B0, &type metadata accessor for Feature);
  v147 = v109;
  v40 = sub_B1B4(&v144);
  v41 = *(v39 - 8);
  v42 = *(v41 + 104);
  v116 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v113 = v42;
  v114 = v41 + 104;
  (v42)(v40);
  v43 = v26;
  sub_765C30();
  sub_BEB8(&v144);
  v44 = v33;
  v107 = v43;
  sub_762D00();
  sub_762CE0();
  v115 = *(v115 + 8);
  (v115)(v33, v34);
  v45 = sub_769E10();
  v46 = sub_75B200();
  v108 = v44;
  if (!v47)
  {
    v51 = v45;
    goto LABEL_17;
  }

  v140 = v46;
  v141 = v47;
  v48 = v110;
  sub_756C90();
  sub_12EC40();
  sub_76A4C0();
  v50 = v49;
  (*(v111 + 8))(v48, v112);
  if (v50)
  {
    v51 = v45;

LABEL_17:
    v52 = v116;
    goto LABEL_22;
  }

  [v107 lineHeight];
  v54 = v53;

  v55 = ceil(v54 * 1.3);
  v52 = v116;
  if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_45;
  }

  if (v55 <= -9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v55 >= 9.22337204e18)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v51 = v45;
LABEL_22:
  sub_75B200();
  v56 = v109;
  v142 = v39;
  v143 = v109;
  v57 = sub_B1B4(&v140);
  v113(v57, v52, v39);
  v58 = v51;
  v98 = v39;
  v59 = v56;
  v60 = v58;
  sub_765C30();
  sub_BEB8(&v140);
  v61 = v108;
  v97 = v60;
  sub_762D00();
  sub_762CE0();
  v62 = v119;
  (v115)(v61, v119);
  v63 = v104;
  v99 = v29;
  sub_75B280();
  v65 = v105;
  v64 = v106;
  v66 = (*(v105 + 88))(v63, v106);
  if (v66 == enum case for BreakoutDetails.Badge.text(_:))
  {
    (*(v65 + 96))(v63, v64);
    sub_769E10();
    v67 = v98;
    *(&v138 + 1) = v98;
    v139 = v59;
    v68 = sub_B1B4(&v137);
    v69 = v113;
    v113(v68, v116, v67);
    sub_765C30();
    sub_BEB8(&v137);
    sub_762D00();
    sub_762CE0();
    (v115)(v61, v62);
    v70 = *(&v135 + 1);
    v71 = v136;
    v72 = sub_B170(&v134, *(&v135 + 1));
    *(&v138 + 1) = v70;
    v139 = *(v71 + 8);
    v73 = sub_B1B4(&v137);
    (*(*(v70 - 8) + 16))(v73, v72, v70);
    sub_BEB8(&v134);
    v74 = v69;
    if (!sub_75B1F0())
    {
      goto LABEL_39;
    }
  }

  else
  {
    v67 = v98;
    if (v66 != enum case for BreakoutDetails.Badge.wordmark(_:))
    {
      v61 = v108;
      v74 = v113;
      if (v66 == enum case for BreakoutDetails.Badge.none(_:))
      {
        v139 = 0;
        v137 = 0u;
        v138 = 0u;
        if (sub_75B1F0())
        {
          goto LABEL_30;
        }
      }

      else
      {
        v139 = 0;
        v137 = 0u;
        v138 = 0u;
        (*(v65 + 8))(v63, v64);
        if (sub_75B1F0())
        {
          goto LABEL_30;
        }
      }

LABEL_39:
      v136 = 0;
      v134 = 0u;
      v135 = 0u;
      goto LABEL_40;
    }

    v75 = sub_7670D0();
    swift_allocObject();
    v76 = sub_7670B0();
    *(&v138 + 1) = v75;
    v139 = &protocol witness table for LayoutViewPlaceholder;
    *&v137 = v76;
    v61 = v108;
    v74 = v113;
    if (!sub_75B1F0())
    {
      goto LABEL_39;
    }
  }

LABEL_30:
  v77 = sub_769E10();
  v78 = sub_764C60();
  if (!v79)
  {
    goto LABEL_37;
  }

  *&v134 = v78;
  *(&v134 + 1) = v79;
  v80 = v110;
  sub_756C90();
  sub_12EC40();
  sub_76A4C0();
  v82 = v81;
  (*(v111 + 8))(v80, v112);
  if (v82)
  {

    goto LABEL_37;
  }

  [v77 lineHeight];
  v84 = v83;

  v85 = ceil(v84 * 1.3);
  if ((*&v85 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_50;
  }

  if (v85 <= -9.22337204e18)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v85 >= 9.22337204e18)
  {
LABEL_52:
    __break(1u);
    return result;
  }

LABEL_37:
  sub_764C60();
  *(&v135 + 1) = v67;
  v136 = v109;
  v86 = sub_B1B4(&v134);
  v74(v86, v116, v67);
  v87 = v77;
  sub_765C30();
  sub_BEB8(&v134);
  sub_762D00();
  sub_762CE0();

  (v115)(v61, v119);
LABEL_40:
  v88 = v101;
  v89 = v102;
  (*(v101 + 16))(v100, v120, v102);
  sub_134D8(&v144, &v133);
  sub_134D8(&v140, &v132);
  v131 = 0;
  v130 = 0u;
  *&v129[40] = 0u;
  sub_1ED18(&v137, v129, &unk_943B10);
  sub_1ED18(&v134, v123, &qword_9417D0);
  v90 = v124;
  if (v124)
  {
    v91 = v125;
    v92 = sub_B170(v123, v124);
    *(&v127 + 1) = v90;
    v128 = *(v91 + 8);
    v93 = sub_B1B4(&v126);
    (*(*(v90 - 8) + 16))(v93, v92, v90);
    sub_BEB8(v123);
  }

  else
  {
    sub_10A2C(v123, &qword_9417D0);
    v126 = 0u;
    v127 = 0u;
    v128 = 0;
  }

  v94 = sub_75F120();
  v95 = v103;
  v103[3] = v94;
  v95[4] = sub_5F9628(&qword_95DD08, &type metadata accessor for BreakoutDetailsLayout);
  v95[5] = sub_5F9628(&qword_95DD10, &type metadata accessor for BreakoutDetailsLayout);
  sub_B1B4(v95);
  sub_75F110();

  sub_10A2C(&v134, &qword_9417D0);
  sub_BEB8(&v140);
  sub_BEB8(&v144);
  (*(v88 + 8))(v120, v89);
  return sub_10A2C(&v137, &unk_943B10);
}

id sub_5F8FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = a3;
  v40 = a2;
  v41 = sub_75B240();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_75B220();
  v7 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75B270();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  sub_75B280();
  v17 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badge;
  swift_beginAccess();
  (*(v11 + 16))(v13, &v4[v17], v10);
  swift_beginAccess();
  (*(v11 + 24))(&v4[v17], v16, v10);
  swift_endAccess();
  sub_63979C();
  v18 = *(v11 + 8);
  v18(v13, v10);
  v18(v16, v10);
  v19 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_titleLabel];
  sub_75B290();
  if (v20)
  {
    v21 = sub_769210();
  }

  else
  {
    v21 = 0;
  }

  [v19 setText:v21];

  v22 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_descriptionLabel];
  sub_75B200();
  if (v23)
  {
    v24 = sub_769210();
  }

  else
  {
    v24 = 0;
  }

  [v22 setText:v24];

  v25 = sub_75B1F0();
  if (v25)
  {
    v26 = v25;
    sub_764C60();
    v27 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButton];
    if (v28)
    {
      v29 = sub_769210();
    }

    else
    {
      v29 = 0;
    }

    [v27 setTitle:v29 forState:0];

    v32 = swift_allocObject();
    *(v32 + 16) = v37;
    *(v32 + 24) = v26;
    v33 = &v4[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButtonHandler];
    v34 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButtonHandler];
    *v33 = sub_5F9620;
    v33[1] = v32;

    v31 = v34;
  }

  else
  {
    [*&v4[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButton] setTitle:0 forState:0];
    v30 = &v4[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButtonHandler];
    v31 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButtonHandler];
    *v30 = 0;
    *(v30 + 1) = 0;
  }

  sub_F704(v31);
  sub_75B230();
  sub_75B250();
  sub_636764(v40, v9, v6);
  (*(v39 + 8))(v6, v41);
  (*(v7 + 8))(v9, v38);
  return [v4 setNeedsLayout];
}

unint64_t sub_5F9438()
{
  result = qword_95DCF8;
  if (!qword_95DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95DCF8);
  }

  return result;
}

uint64_t sub_5F949C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_BD88(&unk_93F630);
  sub_768860();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10A2C(v6, &unk_93F980);
  }

  sub_32A6C0(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

uint64_t sub_5F95E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5F9628(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_5F9670()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for TitleHeaderView(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = sub_769210();
    v5 = sub_769210();
    [v2 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v4 withReuseIdentifier:v5];
  }
}

void sub_5F9754(void *a1)
{
  v1 = a1;
  sub_5F9670();
}

double sub_5F979C(void *a1)
{
  v1 = a1;
  sub_4FF230(v1);

  return 0.0;
}

id sub_5F97F0()
{
  v1 = v0;
  v2 = sub_75CFF0();
  v174 = *(v2 - 8);
  v175 = v2;
  __chkstk_darwin(v2);
  v173 = &v148 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75CFE0();
  v170 = *(v4 - 8);
  v171 = v4;
  __chkstk_darwin(v4);
  v172 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75CFD0();
  v167 = *(v6 - 8);
  v168 = v6;
  __chkstk_darwin(v6);
  v169 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_75D020();
  v176 = *(v8 - 8);
  __chkstk_darwin(v8);
  v164 = (&v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_762D10();
  v166 = *(v10 - 8);
  __chkstk_darwin(v10);
  v165 = &v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_75D010();
  v191 = *(v12 - 8);
  v192 = v12;
  __chkstk_darwin(v12);
  v153 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v190 = (&v148 - v15);
  __chkstk_darwin(v16);
  v189 = &v148 - v17;
  __chkstk_darwin(v18);
  v20 = &v148 - v19;
  v21 = sub_756CB0();
  v154 = *(v21 - 8);
  v155 = v21;
  __chkstk_darwin(v21);
  v151 = &v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v182);
  v183 = &v148 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_BD88(&qword_947FC0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v150 = &v148 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v186 = (&v148 - v28);
  __chkstk_darwin(v29);
  v185 = &v148 - v30;
  __chkstk_darwin(v31);
  v152 = &v148 - v32;
  __chkstk_darwin(v33);
  v188 = (&v148 - v34);
  __chkstk_darwin(v35);
  v187 = (&v148 - v36);
  __chkstk_darwin(v37);
  v180 = &v148 - v38;
  *&v40 = __chkstk_darwin(v39).n128_u64[0];
  v42 = &v148 - v41;
  result = [v0 collectionView];
  if (result)
  {
    v44 = result;
    v160 = v10;
    v161 = v25;
    v158 = v24;
    v159 = v8;
    v179 = v20;
    [result frame];

    v184 = sub_760AB0();
    v46 = v45;
    v47 = v1;
    if (qword_93CDC8 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for TitleHeaderView.Style(0);
    v49 = sub_BE38(v48, qword_99D498);
    sub_4FF230(v49);
    v50 = [v47 traitCollection];
    v51 = v191 + 56;
    v52 = *(v191 + 56);
    v177 = v42;
    v53 = v42;
    v54 = v192;
    v52(v53, 1, 1, v192);
    v156 = v52;
    v157 = v51;
    v52(v180, 1, 1, v54);
    v222 = 0;
    memset(v221, 0, sizeof(v221));
    v220 = 0;
    memset(v219, 0, sizeof(v219));
    v178 = v48;
    v55 = *(v48 + 20);
    v181 = v49;
    v149 = v55;
    sub_19CE28(v49 + v55, v183, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_26F08();
    v162 = v50;
    v56 = sub_769E10();
    v57 = v46;
    v163 = v47;
    if (!v46)
    {
      v62 = v192;
      goto LABEL_11;
    }

    v58 = v184;
    *&v216 = v184;
    *(&v216 + 1) = v46;

    v59 = v151;
    sub_756C90();
    sub_12EC40();
    sub_76A4C0();
    v61 = v60;
    (v154)[1](v59, v155);

    if (v61)
    {
      v62 = v192;
      goto LABEL_11;
    }

    [v56 lineHeight];
    v64 = ceil(v63 * 1.3);
    v65 = &v200;
    v62 = v192;
    if ((*&v64 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v64 > -9.22337204e18)
    {
      if (v64 < 9.22337204e18)
      {
LABEL_11:
        v218 = 0;
        v216 = 0u;
        v217 = 0u;
        v66 = sub_7653B0();
        v214 = v66;
        v215 = sub_5FB9F0(&qword_93F9B0, &type metadata accessor for Feature);
        v67 = sub_B1B4(v213);
        (*(*(v66 - 8) + 104))(v67, enum case for Feature.measurement_with_labelplaceholder(_:), v66);

        v68 = v56;
        sub_765C30();
        sub_BEB8(v213);
        v69 = v165;
        v154 = v68;
        v155 = v57;
        sub_762D00();
        sub_762CE0();
        (*(v166 + 8))(v69, v160);
        sub_1ED18(&v216, v212, &unk_943B10);
        v70 = v214;
        v71 = v215;
        v72 = sub_B170(v213, v214);
        v211[3] = v70;
        v211[4] = *(v71 + 8);
        v73 = sub_B1B4(v211);
        (*(*(v70 - 8) + 16))(v73, v72, v70);
        v75 = v182;
        v74 = v183;
        v76 = *(v183 + v182[8]);
        v209 = &type metadata for Float;
        v210 = &protocol witness table for Float;
        v208 = v76;
        v77 = v182[9];
        v78 = sub_766CA0();
        v207[3] = v78;
        v207[4] = &protocol witness table for StaticDimension;
        v79 = sub_B1B4(v207);
        v80 = *(*(v78 - 8) + 16);
        v80(v79, v74 + v77, v78);
        v81 = v75[10];
        v206[3] = v78;
        v206[4] = &protocol witness table for StaticDimension;
        v82 = sub_B1B4(v206);
        v80(v82, v74 + v81, v78);
        sub_1ED18(v221, &v200, &qword_9417D0);
        v83 = *(&v201 + 1);
        if (*(&v201 + 1))
        {
          v84 = v202;
          v85 = sub_B170(&v200, *(&v201 + 1));
          *(&v204 + 1) = v83;
          v205 = *(v84 + 8);
          v86 = sub_B1B4(&v203);
          (*(*(v83 - 8) + 16))(v86, v85, v83);
          sub_BEB8(&v200);
        }

        else
        {
          sub_10A2C(&v200, &qword_9417D0);
          v203 = 0u;
          v204 = 0u;
          v205 = 0;
        }

        v87 = v179;
        v88 = v186;
        sub_1ED18(v219, v197, &qword_9417D0);
        v89 = v198;
        if (v198)
        {
          v90 = v199;
          v91 = sub_B170(v197, v198);
          *(&v201 + 1) = v89;
          v202 = *(v90 + 8);
          v92 = sub_B1B4(&v200);
          (*(*(v89 - 8) + 16))(v92, v91, v89);
          sub_BEB8(v197);
        }

        else
        {
          sub_10A2C(v197, &qword_9417D0);
          v200 = 0u;
          v201 = 0u;
          v202 = 0;
        }

        v93 = v182;
        v94 = v183;
        sub_134D8(v183 + v182[12], v197);
        sub_134D8(v94 + v93[13], &v196);
        v194 = &type metadata for Double;
        v195 = &protocol witness table for Double;
        v193 = 0x4020000000000000;
        sub_75D000();
        sub_BEB8(v213);
        sub_10A2C(&v216, &unk_943B10);
        v95 = *(v181 + v178[9]);
        sub_BD88(&qword_947FC8);
        v96 = *(v161 + 72);
        v97 = (*(v161 + 80) + 32) & ~*(v161 + 80);
        if (v95)
        {
          if (v95 == 1)
          {
            v166 = swift_allocObject();
            v98 = (v166 + v97);
            sub_1ED18(v177, v166 + v97, &qword_947FC0);
            v99 = v191 + 16;
            (*(v191 + 16))(&v98[v96], v87, v62);
            v156(&v98[v96], 0, 1, v62);
            sub_1ED18(v180, &v98[2 * v96], &qword_947FC0);
            v100 = (v99 + 32);
            v189 = (v99 + 16);
            v101 = _swiftEmptyArrayStorage;
            v102 = 3;
            v184 = v96;
            v185 = v98;
            v103 = v98;
            v104 = &qword_947FC0;
            v187 = v100;
            do
            {
              v105 = v188;
              sub_1ED18(v103, v188, v104);
              sub_5FB980(v105, v88);
              v106 = v192;
              if ((*v100)(v88, 1, v192) == 1)
              {
                sub_10A2C(v88, v104);
              }

              else
              {
                v107 = v104;
                v108 = *v189;
                (*v189)(v190, v88, v106);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v101 = sub_7B968(0, *(v101 + 2) + 1, 1, v101);
                }

                v110 = *(v101 + 2);
                v109 = *(v101 + 3);
                if (v110 >= v109 >> 1)
                {
                  v101 = sub_7B968(v109 > 1, v110 + 1, 1, v101);
                }

                v100 = v187;
                *(v101 + 2) = v110 + 1;
                v108(v101 + ((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v110, v190, v192);
                v88 = v186;
                v104 = v107;
                v96 = v184;
              }

              v103 += v96;
              --v102;
            }

            while (v102);
            swift_setDeallocating();
            swift_arrayDestroy();
            v65 = v159;
            v52 = v164;
            v62 = v192;
          }

          else
          {
            v123 = swift_allocObject();
            v124 = v123 + v97;
            sub_1ED18(v177, v123 + v97, &qword_947FC0);
            v125 = v191;
            (*(v191 + 16))(v123 + v97 + v96, v87, v62);
            v156((v123 + v97 + v96), 0, 1, v62);
            v126 = v152;
            sub_1ED18(v123 + v97, v152, &qword_947FC0);
            v127 = v150;
            sub_5FB980(v126, v150);
            v128 = *(v125 + 48);
            v129 = (v125 + 32);
            if (v128(v127, 1, v62) == 1)
            {
              sub_10A2C(v127, &qword_947FC0);
              v130 = _swiftEmptyArrayStorage;
            }

            else
            {
              v166 = v123;
              v131 = *v129;
              (*v129)(v153, v127, v62);
              v130 = _swiftEmptyArrayStorage;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v130 = sub_7B968(0, *&_swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
              }

              v133 = *(v130 + 2);
              v132 = *(v130 + 3);
              if (v133 >= v132 >> 1)
              {
                v130 = sub_7B968(v132 > 1, v133 + 1, 1, v130);
              }

              *(v130 + 2) = v133 + 1;
              v134 = v130 + ((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v133;
              v62 = v192;
              v131(v134, v153, v192);
              v127 = v150;
            }

            v135 = v124 + v96;
            v136 = v152;
            sub_1ED18(v135, v152, &qword_947FC0);
            sub_5FB980(v136, v127);
            if (v128(v127, 1, v62) == 1)
            {
              sub_10A2C(v127, &qword_947FC0);
              v65 = v159;
            }

            else
            {
              v137 = *v129;
              (*v129)(v153, v127, v62);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v65 = v159;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v130 = sub_7B968(0, *(v130 + 2) + 1, 1, v130);
              }

              v140 = *(v130 + 2);
              v139 = *(v130 + 3);
              if (v140 >= v139 >> 1)
              {
                v130 = sub_7B968(v139 > 1, v140 + 1, 1, v130);
              }

              *(v130 + 2) = v140 + 1;
              v137(v130 + ((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v140, v153, v62);
            }

            swift_setDeallocating();
            swift_arrayDestroy();
            v52 = v164;
          }
        }

        else
        {
          v166 = swift_allocObject();
          v111 = v166 + v97;
          sub_1ED18(v177, v166 + v97, &qword_947FC0);
          sub_1ED18(v180, v111 + v96, &qword_947FC0);
          v112 = v191 + 16;
          (*(v191 + 16))(v111 + 2 * v96, v87, v62);
          v113 = v62;
          v156((v111 + 2 * v96), 0, 1, v62);
          v186 = (v112 + 32);
          v188 = (v112 + 16);
          v190 = _swiftEmptyArrayStorage;
          v114 = 3;
          v165 = v111;
          v115 = v185;
          do
          {
            v116 = v96;
            v117 = v187;
            sub_1ED18(v111, v187, &qword_947FC0);
            sub_5FB980(v117, v115);
            if ((*v186)(v115, 1, v113) == 1)
            {
              sub_10A2C(v115, &qword_947FC0);
            }

            else
            {
              v118 = *v188;
              (*v188)(v189, v115, v113);
              v119 = v190;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v119 = sub_7B968(0, *(v119 + 2) + 1, 1, v119);
              }

              v121 = *(v119 + 2);
              v120 = *(v119 + 3);
              if (v121 >= v120 >> 1)
              {
                v119 = sub_7B968(v120 > 1, v121 + 1, 1, v119);
              }

              *(v119 + 2) = v121 + 1;
              v122 = (*(v191 + 80) + 32) & ~*(v191 + 80);
              v190 = v119;
              v113 = v192;
              v118(v119 + v122 + *(v191 + 72) * v121, v189);
              v115 = v185;
            }

            v96 = v116;
            v111 += v116;
            --v114;
          }

          while (v114);
          swift_setDeallocating();
          swift_arrayDestroy();
          v65 = v159;
          v52 = v164;
          v62 = v113;
        }

        swift_deallocClassInstance();
        v218 = 0;
        v216 = 0u;
        v217 = 0u;
        sub_1ED18(&v216, v213, &unk_943B10);
        v141 = v178;
        v142 = v181;
        v143 = *(v181 + v178[14]);
        v212[3] = &type metadata for CGFloat;
        v212[4] = &protocol witness table for CGFloat;
        v212[0] = v143;
        (*(v167 + 16))(v169, v181 + v178[10], v168);
        (*(v170 + 16))(v172, v142 + v141[11], v171);
        (*(v174 + 104))(v173, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v175);
        sub_75CFA0();
        sub_769DA0();
        sub_5FB9F0(&unk_947FD0, &type metadata accessor for TitleHeaderLayout);
        sub_7665A0();
        v213[0] = v144;
        v213[1] = v145;
        sub_769DB0();
        if (JUScreenClassGetMain() != 1)
        {

          (*(v176 + 8))(v52, v65);
          (*(v191 + 8))(v179, v62);
          sub_C1DBC(v183);
          sub_10A2C(v219, &qword_9417D0);
          sub_10A2C(v221, &qword_9417D0);
          sub_10A2C(v180, &qword_947FC0);
          sub_10A2C(v177, &qword_947FC0);
          goto LABEL_62;
        }

        v57 = v176;
        v58 = v177;
        v59 = v179;
        if (qword_93DE20 != -1)
        {
          swift_once();
        }

        v146 = sub_BE38(v182, qword_9A0178);
        v61 = v149;
        if (sub_19C62C(v181 + v149, v146))
        {

          (*(v57 + 8))(v52, v65);
          (*(v191 + 8))(v59, v62);
          sub_C1DBC(v183);
          sub_10A2C(v219, &qword_9417D0);
          sub_10A2C(v221, &qword_9417D0);
          sub_10A2C(v180, &qword_947FC0);
          sub_10A2C(v58, &qword_947FC0);
LABEL_62:
          sub_10A2C(&v216, &unk_943B10);
        }

        if (qword_93DE28 == -1)
        {
LABEL_61:
          v147 = sub_BE38(v182, qword_9A0190);
          sub_19C62C(v181 + v61, v147);

          (*(v57 + 8))(v52, v65);
          (*(v191 + 8))(v59, v62);
          sub_C1DBC(v183);
          sub_10A2C(v219, &qword_9417D0);
          sub_10A2C(v221, &qword_9417D0);
          sub_10A2C(v180, &qword_947FC0);
          sub_10A2C(v58, &qword_947FC0);
          goto LABEL_62;
        }

LABEL_66:
        swift_once();
        goto LABEL_61;
      }

LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    __break(1u);
    goto LABEL_65;
  }

  __break(1u);
  return result;
}

id sub_5FB0F8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  if (a2 == 0xD000000000000039 && 0x80000000007D87C0 == a3 || (sub_76A950() & 1) != 0)
  {
    v9 = sub_769210();
    v10 = sub_769210();
    v11.super.isa = sub_757550().super.isa;
    v12 = [a1 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v10 forIndexPath:v11.super.isa];
  }

  else
  {
    v10 = sub_769210();
    v11.super.isa = sub_757550().super.isa;
    v14.receiver = v4;
    v14.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v14, "collectionView:viewForSupplementaryElementOfKind:atIndexPath:", a1, v10, v11.super.isa);
  }

  return v12;
}

id sub_5FB24C(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_757640();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_769240();
  v11 = v10;
  sub_757590();
  v12 = a3;
  v13 = a1;
  v14 = sub_5FB0F8(v12, v9, v11);

  (*(v6 + 8))(v8, v5);

  return v14;
}

void sub_5FB38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 != 0xD000000000000039 || 0x80000000007D87C0 != a4) && (sub_76A950() & 1) == 0)
  {
    v25 = sub_769210();
    isa = sub_757550().super.isa;
    v26.receiver = v5;
    v26.super_class = ObjectType;
    objc_msgSendSuper2(&v26, "collectionView:willDisplaySupplementaryView:forElementKind:atIndexPath:", a1, a2, v25, isa);

    goto LABEL_14;
  }

  type metadata accessor for TitleHeaderView(0);
  v14 = swift_dynamicCastClassUnconditional();
  v15 = sub_4FF230(v14);
  if (v15 > 40.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 40.0;
  }

  [v14 setLayoutMargins:{0.0, v16, 0.0, v16}];
  v17 = (v14 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabelNumberOfLines);
  *v17 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v17[1] = 0;

  v18 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel;
  [*(v14 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel) setNumberOfLines:0];
  [*(v14 + v18) setAllowsDefaultTighteningForTruncation:1];
  v19 = sub_4FF230([*(v14 + v18) setTextAlignment:1]);
  if (v19 <= 40.0)
  {
    v19 = 40.0;
  }

  v20 = (v14 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_separatorInset);
  *v20 = 0.0;
  v20[1] = v19;
  v20[2] = 0.0;
  v20[3] = v19;
  [v14 setNeedsLayout];
  if (qword_93CDC8 != -1)
  {
    swift_once();
  }

  v21 = sub_BE38(v11, qword_99D498);
  sub_19CE28(v21, v13, type metadata accessor for TitleHeaderView.Style);
  (*&stru_1A8.segname[(swift_isaMask & *v14) + 16])(v13);
  sub_760AB0();
  if (v22)
  {
    v23 = *(v14 + v18);
    isa = sub_769210();

    [v23 setText:isa];
LABEL_14:
  }
}

uint64_t sub_5FB6CC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_757640();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_769240();
  v13 = v12;
  sub_757590();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  sub_5FB38C(v14, v15, v11, v13);

  return (*(v8 + 8))(v10, v7);
}

uint64_t type metadata accessor for PrivacyDefinitionsViewController()
{
  result = qword_95DD40;
  if (!qword_95DD40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5FB980(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_947FC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5FB9F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5FBA38()
{
  v1 = v0;
  sub_BD88(&qword_93F1E8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_7A25A0;
  sub_603A70(&qword_95E9D0, &type metadata accessor for SearchLandingDiffablePagePresenter);
  sub_764560();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_764550();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_603A70(&qword_9595A0, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_603A70(&qword_93F1D0, &type metadata accessor for SearchLandingDiffablePagePresenter);
  v5 = *&v1[qword_99E1D8];

  v6 = v1;
  v7 = v5;
  sub_761840();
  sub_764400();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_7643F0();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_BD88(&qword_95E9D8);
  sub_16194(&qword_95E9E0, &qword_95E9D8);
  sub_763A80();
  sub_761840();
  sub_763D10();
  swift_allocObject();
  *(v2 + 80) = sub_763D00();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_764380();
  swift_allocObject();
  *(v2 + 96) = sub_764370();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_764680();
  swift_allocObject();
  *(v2 + 112) = sub_764670();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_763A80();
  sub_764090();
  swift_allocObject();
  *(v2 + 128) = sub_764080();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_9593B8];
  v10 = sub_603A70(&qword_9595A8, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_9593B0];
  v12 = sub_603A70(&unk_9595B0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_603A70(&qword_95E9E8, &type metadata accessor for SearchLandingDiffablePagePresenter);
  sub_7642A0();
  swift_allocObject();

  *(v2 + 176) = sub_764290();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_9593A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_763C20();
  swift_allocObject();

  *(v2 + 208) = sub_763C10();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_603A70(&qword_95E9F0, &type metadata accessor for SearchLandingDiffablePagePresenter);
  sub_7644C0();
  swift_allocObject();
  *(v2 + 224) = sub_7644B0();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_7637E0();
  swift_allocObject();
  return sub_7637D0();
}

uint64_t sub_5FBF50()
{
  v1 = v0;
  sub_BD88(&qword_93F1E8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_7A25A0;
  sub_603A70(&qword_95E9B0, &type metadata accessor for ArcadeDiffablePagePresenter);
  sub_764560();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_764550();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_603A70(&qword_9595A0, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_603A70(&qword_95E9B8, &type metadata accessor for ArcadeDiffablePagePresenter);
  v5 = *&v1[qword_99E1D8];

  v6 = v1;
  v7 = v5;
  sub_761840();
  sub_764400();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_7643F0();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_BD88(&qword_949640);
  sub_16194(&qword_949658, &qword_949640);
  sub_763A80();
  sub_761840();
  sub_763D10();
  swift_allocObject();
  *(v2 + 80) = sub_763D00();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_764380();
  swift_allocObject();
  *(v2 + 96) = sub_764370();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_764680();
  swift_allocObject();
  *(v2 + 112) = sub_764670();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_763A80();
  sub_764090();
  swift_allocObject();
  *(v2 + 128) = sub_764080();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_9593B8];
  v10 = sub_603A70(&qword_9595A8, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_9593B0];
  v12 = sub_603A70(&unk_9595B0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_603A70(&qword_95E9C0, &type metadata accessor for ArcadeDiffablePagePresenter);
  sub_7642A0();
  swift_allocObject();

  *(v2 + 176) = sub_764290();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_9593A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_763C20();
  swift_allocObject();

  *(v2 + 208) = sub_763C10();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_603A70(&qword_95E9C8, &type metadata accessor for ArcadeDiffablePagePresenter);
  sub_7644C0();
  swift_allocObject();
  *(v2 + 224) = sub_7644B0();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_7637E0();
  swift_allocObject();
  return sub_7637D0();
}

uint64_t sub_5FC468()
{
  v1 = v0;
  sub_BD88(&qword_93F1E8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_7A25A0;
  sub_603A70(&qword_95E990, &type metadata accessor for SearchResultsDiffablePagePresenter);
  sub_764560();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_764550();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_603A70(&qword_9595A0, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_603A70(&qword_95E998, &type metadata accessor for SearchResultsDiffablePagePresenter);
  v5 = *&v1[qword_99E1D8];

  v6 = v1;
  v7 = v5;
  sub_761840();
  sub_764400();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_7643F0();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_BD88(&qword_944A80);
  sub_16194(&qword_944A88, &qword_944A80);
  sub_763A80();
  sub_761840();
  sub_763D10();
  swift_allocObject();
  *(v2 + 80) = sub_763D00();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_764380();
  swift_allocObject();
  *(v2 + 96) = sub_764370();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_764680();
  swift_allocObject();
  *(v2 + 112) = sub_764670();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_763A80();
  sub_764090();
  swift_allocObject();
  *(v2 + 128) = sub_764080();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_9593B8];
  v10 = sub_603A70(&qword_9595A8, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_9593B0];
  v12 = sub_603A70(&unk_9595B0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_603A70(&qword_95E9A0, &type metadata accessor for SearchResultsDiffablePagePresenter);
  sub_7642A0();
  swift_allocObject();

  *(v2 + 176) = sub_764290();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_9593A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_763C20();
  swift_allocObject();

  *(v2 + 208) = sub_763C10();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_603A70(&qword_95E9A8, &type metadata accessor for SearchResultsDiffablePagePresenter);
  sub_7644C0();
  swift_allocObject();
  *(v2 + 224) = sub_7644B0();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_7637E0();
  swift_allocObject();
  return sub_7637D0();
}

uint64_t sub_5FC980()
{
  v1 = v0;
  sub_BD88(&qword_93F1E8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_7A25A0;
  sub_603A70(&qword_95E970, &type metadata accessor for ReviewsDiffablePagePresenter);
  sub_764560();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_764550();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_603A70(&qword_9595A0, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_603A70(&qword_948DB8, &type metadata accessor for ReviewsDiffablePagePresenter);
  v5 = *&v1[qword_99E1D8];

  v6 = v1;
  v7 = v5;
  sub_761840();
  sub_764400();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_7643F0();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_BD88(&qword_95E978);
  sub_16194(&qword_95E980, &qword_95E978);
  sub_763A80();
  sub_761840();
  sub_763D10();
  swift_allocObject();
  *(v2 + 80) = sub_763D00();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_764380();
  swift_allocObject();
  *(v2 + 96) = sub_764370();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_764680();
  swift_allocObject();
  *(v2 + 112) = sub_764670();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_763A80();
  sub_764090();
  swift_allocObject();
  *(v2 + 128) = sub_764080();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_9593B8];
  v10 = sub_603A70(&qword_9595A8, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_9593B0];
  v12 = sub_603A70(&unk_9595B0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_603A70(&qword_948DB0, &type metadata accessor for ReviewsDiffablePagePresenter);
  sub_7642A0();
  swift_allocObject();

  *(v2 + 176) = sub_764290();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_9593A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_763C20();
  swift_allocObject();

  *(v2 + 208) = sub_763C10();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_603A70(&qword_95E988, &type metadata accessor for ReviewsDiffablePagePresenter);
  sub_7644C0();
  swift_allocObject();
  *(v2 + 224) = sub_7644B0();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_7637E0();
  swift_allocObject();
  return sub_7637D0();
}

uint64_t sub_5FCE98()
{
  v1 = v0;
  sub_BD88(&qword_93F1E8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_7A25A0;
  sub_603A70(&qword_95E960, &type metadata accessor for ProductDiffablePagePresenter);
  sub_764560();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_764550();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_603A70(&qword_9595A0, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_603A70(&qword_9494F8, &type metadata accessor for ProductDiffablePagePresenter);
  v5 = *&v1[qword_99E1D8];

  v6 = v1;
  v7 = v5;
  sub_761840();
  sub_764400();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_7643F0();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_BD88(&qword_949588);
  sub_16194(&qword_9495B0, &qword_949588);
  sub_763A80();
  sub_761840();
  sub_763D10();
  swift_allocObject();
  *(v2 + 80) = sub_763D00();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_764380();
  swift_allocObject();
  *(v2 + 96) = sub_764370();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_764680();
  swift_allocObject();
  *(v2 + 112) = sub_764670();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_763A80();
  sub_764090();
  swift_allocObject();
  *(v2 + 128) = sub_764080();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_9593B8];
  v10 = sub_603A70(&qword_9595A8, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_9593B0];
  v12 = sub_603A70(&unk_9595B0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_603A70(&qword_9494F0, &type metadata accessor for ProductDiffablePagePresenter);
  sub_7642A0();
  swift_allocObject();

  *(v2 + 176) = sub_764290();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_9593A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_763C20();
  swift_allocObject();

  *(v2 + 208) = sub_763C10();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_603A70(&qword_95E968, &type metadata accessor for ProductDiffablePagePresenter);
  sub_7644C0();
  swift_allocObject();
  *(v2 + 224) = sub_7644B0();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_7637E0();
  swift_allocObject();
  return sub_7637D0();
}

uint64_t sub_5FD3B0()
{
  v1 = v0;
  sub_BD88(&qword_93F1E8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_7A25A0;
  sub_603A70(&qword_95E948, &type metadata accessor for TodayDiffablePagePresenter);
  sub_764560();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_764550();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_603A70(&qword_9595A0, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_603A70(&qword_951BC0, &type metadata accessor for TodayDiffablePagePresenter);
  v5 = *&v1[qword_99E1D8];

  v6 = v1;
  v7 = v5;
  sub_761840();
  sub_764400();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_7643F0();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_BD88(&qword_94AD38);
  sub_16194(&qword_94AD40, &qword_94AD38);
  sub_763A80();
  sub_761840();
  sub_763D10();
  swift_allocObject();
  *(v2 + 80) = sub_763D00();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_764380();
  swift_allocObject();
  *(v2 + 96) = sub_764370();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_764680();
  swift_allocObject();
  *(v2 + 112) = sub_764670();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_763A80();
  sub_764090();
  swift_allocObject();
  *(v2 + 128) = sub_764080();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_9593B8];
  v10 = sub_603A70(&qword_9595A8, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_9593B0];
  v12 = sub_603A70(&unk_9595B0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_603A70(&qword_95E950, &type metadata accessor for TodayDiffablePagePresenter);
  sub_7642A0();
  swift_allocObject();

  *(v2 + 176) = sub_764290();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_9593A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_763C20();
  swift_allocObject();

  *(v2 + 208) = sub_763C10();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_603A70(&qword_95E958, &type metadata accessor for TodayDiffablePagePresenter);
  sub_7644C0();
  swift_allocObject();
  *(v2 + 224) = sub_7644B0();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_7637E0();
  swift_allocObject();
  return sub_7637D0();
}

uint64_t sub_5FD8C8()
{
  v1 = v0;
  sub_BD88(&qword_93F1E8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_7A25A0;
  sub_603A70(&qword_95E920, &type metadata accessor for GenericDiffablePagePresenter);
  sub_764560();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_764550();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_603A70(&qword_9595A0, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_603A70(&qword_959298, &type metadata accessor for GenericDiffablePagePresenter);
  v5 = *&v1[qword_99E1D8];

  v6 = v1;
  v7 = v5;
  sub_761840();
  sub_764400();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_7643F0();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_BD88(&qword_95E928);
  sub_16194(&qword_95E930, &qword_95E928);
  sub_763A80();
  sub_761840();
  sub_763D10();
  swift_allocObject();
  *(v2 + 80) = sub_763D00();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_764380();
  swift_allocObject();
  *(v2 + 96) = sub_764370();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_764680();
  swift_allocObject();
  *(v2 + 112) = sub_764670();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_763A80();
  sub_764090();
  swift_allocObject();
  *(v2 + 128) = sub_764080();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_9593B8];
  v10 = sub_603A70(&qword_9595A8, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_9593B0];
  v12 = sub_603A70(&unk_9595B0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_603A70(&qword_95E938, &type metadata accessor for GenericDiffablePagePresenter);
  sub_7642A0();
  swift_allocObject();

  *(v2 + 176) = sub_764290();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_9593A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_763C20();
  swift_allocObject();

  *(v2 + 208) = sub_763C10();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_603A70(&qword_95E940, &type metadata accessor for GenericDiffablePagePresenter);
  sub_7644C0();
  swift_allocObject();
  *(v2 + 224) = sub_7644B0();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_7637E0();
  swift_allocObject();
  return sub_7637D0();
}

uint64_t sub_5FDDE0()
{
  v1 = v0;
  sub_BD88(&qword_93F1E8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_7A25A0;
  sub_603A70(&qword_95E8F0, &type metadata accessor for SearchFocusDiffablePagePresenter);
  sub_764560();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_764550();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_603A70(&qword_9595A0, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_603A70(&qword_95E8F8, &type metadata accessor for SearchFocusDiffablePagePresenter);
  v5 = *&v1[qword_99E1D8];

  v6 = v1;
  v7 = v5;
  sub_761840();
  sub_764400();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_7643F0();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_BD88(&qword_95E900);
  sub_16194(&qword_95E908, &qword_95E900);
  sub_763A80();
  sub_761840();
  sub_763D10();
  swift_allocObject();
  *(v2 + 80) = sub_763D00();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_764380();
  swift_allocObject();
  *(v2 + 96) = sub_764370();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_764680();
  swift_allocObject();
  *(v2 + 112) = sub_764670();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_763A80();
  sub_764090();
  swift_allocObject();
  *(v2 + 128) = sub_764080();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_9593B8];
  v10 = sub_603A70(&qword_9595A8, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_9593B0];
  v12 = sub_603A70(&unk_9595B0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_603A70(&qword_95E910, &type metadata accessor for SearchFocusDiffablePagePresenter);
  sub_7642A0();
  swift_allocObject();

  *(v2 + 176) = sub_764290();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_9593A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_763C20();
  swift_allocObject();

  *(v2 + 208) = sub_763C10();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_603A70(&qword_95E918, &type metadata accessor for SearchFocusDiffablePagePresenter);
  sub_7644C0();
  swift_allocObject();
  *(v2 + 224) = sub_7644B0();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_7637E0();
  swift_allocObject();
  return sub_7637D0();
}

id sub_5FE2F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_767140();
  __chkstk_darwin(v4 - 8);
  v5 = sub_BD88(&qword_93F1A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v71[-v7];
  (*(v6 + 16))(&v71[-v7], a1, v5);
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v9 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v9 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v59 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
        v60 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
        sub_761930();

        v61 = *&v2[v59];
        *&v2[v59] = 0;

        result = [v2 view];
        if (result)
        {
          v62 = result;
          [result bounds];
          v64 = v63;
          v66 = v65;
          v68 = v67;
          v70 = v69;

          v72 = v64;
          v73 = v66;
          v74 = v68;
          v75 = v70;
          v76 = 0;
          sub_761920();
          return (*(v6 + 8))(v8, v5);
        }

        goto LABEL_19;
      }

      sub_7617E0();
      sub_767130();
      v44 = objc_allocWithZone(sub_767160());
      v45 = sub_767150();
      v46 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
      v47 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
      sub_761930();

      v48 = *&v2[v46];
      *&v2[v46] = v45;
      v49 = v45;

      result = [v2 view];
      if (result)
      {
        v50 = result;
        [result bounds];
        v52 = v51;
        v54 = v53;
        v56 = v55;
        v58 = v57;

        v72 = v52;
        v73 = v54;
        v74 = v56;
        v75 = v58;
        v76 = 0;
        sub_761920();

        sub_763920();
        sub_603A70(&qword_955DC0, &type metadata accessor for SearchLandingDiffablePagePresenter);
        return sub_75EBC0();
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    (*(v6 + 96))(v8, v5);
    v29 = *(v8 + 1);
    sub_767230();
    sub_603A70(&qword_955DC0, &type metadata accessor for SearchLandingDiffablePagePresenter);
    swift_errorRetain();

    sub_F714(v29);
    v30 = sub_7671F0();
    v31 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
    v32 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
    sub_761930();

    v33 = *&v2[v31];
    *&v2[v31] = v30;
    v34 = v30;

    result = [v2 view];
    if (result)
    {
      v35 = result;
      [result bounds];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;

      v72 = v37;
      v73 = v39;
      v74 = v41;
      v75 = v43;
      v76 = 0;
      sub_761920();

      sub_F704(v29);
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v8, v5);
  v2[qword_99E1B0] = 1;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v11 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  sub_761930();

  v12 = *&v2[v10];
  *&v2[v10] = 0;

  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  [result bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v72 = v16;
  v73 = v18;
  v74 = v20;
  v75 = v22;
  v76 = 0;
  sub_761920();
  if (sub_7617F0())
  {
    sub_75CA90();
  }

  v23 = qword_9593C0;
  swift_beginAccess();
  v24 = *&v2[v23];
  if (v24)
  {
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = &v24[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v27 = *&v24[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    *v26 = sub_603ADC;
    *(v26 + 1) = v25;
    v28 = v24;

    sub_F704(v27);
  }

  sub_7617E0();
}

uint64_t sub_5FE984(uint64_t a1)
{
  v2 = v1;
  v4 = sub_767140();
  __chkstk_darwin(v4 - 8);
  v5 = sub_BD88(&qword_942C60);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v22 - v8;
  (*(v6 + 16))(&v22 - v8, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v6 + 8))(v9, v5);
    *(v2 + qword_99E1B0) = 1;
    (*&stru_158.segname[swift_isaMask & *v2])(0);
    if (sub_7617F0())
    {
      sub_75CA90();
    }

    v11 = qword_9593C0;
    swift_beginAccess();
    v12 = *(v2 + v11);
    if (v12)
    {
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = &v12[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v15 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      *v14 = sub_603ADC;
      *(v14 + 1) = v13;
      v16 = v12;

      sub_F704(v15);
    }

    sub_7617E0();
  }

  else if (v10 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v6 + 96))(v9, v5);
    v18 = *(v9 + 1);
    sub_767230();
    sub_603A70(&qword_955E20, &type metadata accessor for ArcadeDiffablePagePresenter);
    swift_errorRetain();

    sub_F714(v18);
    v19 = sub_7671F0();
    (*&stru_158.segname[swift_isaMask & *v2])(v19);
    sub_F704(v18);
  }

  else if (v10 == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    sub_7617E0();
    sub_767130();
    v20 = objc_allocWithZone(sub_767160());
    v21 = sub_767150();
    (*&stru_158.segname[swift_isaMask & *v2])(v21);
    sub_762060();
    sub_603A70(&qword_955E20, &type metadata accessor for ArcadeDiffablePagePresenter);
    return sub_75EBC0();
  }

  else
  {
    (*&stru_158.segname[swift_isaMask & *v2])(0);
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_5FEECC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_767140();
  __chkstk_darwin(v4 - 8);
  v5 = sub_BD88(&qword_943500);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v22 - v8;
  (*(v6 + 16))(&v22 - v8, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v6 + 8))(v9, v5);
    *(v2 + qword_99E1B0) = 1;
    (*&stru_158.segname[swift_isaMask & *v2])(0);
    if (sub_7617F0())
    {
      sub_75CA90();
    }

    v11 = qword_9593C0;
    swift_beginAccess();
    v12 = *(v2 + v11);
    if (v12)
    {
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = &v12[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v15 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      *v14 = sub_603ADC;
      *(v14 + 1) = v13;
      v16 = v12;

      sub_F704(v15);
    }

    sub_7617E0();
  }

  else if (v10 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v6 + 96))(v9, v5);
    v18 = *(v9 + 1);
    sub_767230();
    sub_603A70(&qword_955E90, &type metadata accessor for ArticleDiffablePagePresenter);
    swift_errorRetain();

    sub_F714(v18);
    v19 = sub_7671F0();
    (*&stru_158.segname[swift_isaMask & *v2])(v19);
    sub_F704(v18);
  }

  else if (v10 == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    sub_7617E0();
    sub_767130();
    v20 = objc_allocWithZone(sub_767160());
    v21 = sub_767150();
    (*&stru_158.segname[swift_isaMask & *v2])(v21);
    sub_7625B0();
    sub_603A70(&qword_955E90, &type metadata accessor for ArticleDiffablePagePresenter);
    return sub_75EBC0();
  }

  else
  {
    (*&stru_158.segname[swift_isaMask & *v2])(0);
    return (*(v6 + 8))(v9, v5);
  }
}

id sub_5FF414(uint64_t a1)
{
  v2 = v1;
  v4 = sub_767140();
  __chkstk_darwin(v4 - 8);
  v5 = sub_BD88(&qword_944A68);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v72[-v8];
  (*(v6 + 16))(&v72[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v60 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
        v61 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
        sub_761930();

        v62 = *&v2[v60];
        *&v2[v60] = 0;

        result = [v2 view];
        if (result)
        {
          v63 = result;
          [result bounds];
          v65 = v64;
          v67 = v66;
          v69 = v68;
          v71 = v70;

          v73 = v65;
          v74 = v67;
          v75 = v69;
          v76 = v71;
          v77 = 0;
          sub_761920();
          return (*(v6 + 8))(v9, v5);
        }

        goto LABEL_19;
      }

      sub_7617E0();
      sub_767130();
      v45 = objc_allocWithZone(sub_767160());
      v46 = sub_767150();
      v47 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
      v48 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
      sub_761930();

      v49 = *&v2[v47];
      *&v2[v47] = v46;
      v50 = v46;

      result = [v2 view];
      if (result)
      {
        v51 = result;
        [result bounds];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;

        v73 = v53;
        v74 = v55;
        v75 = v57;
        v76 = v59;
        v77 = 0;
        sub_761920();

        sub_7639B0();
        sub_603A70(&qword_955F80, &type metadata accessor for SearchResultsDiffablePagePresenter);
        return sub_75EBC0();
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    (*(v6 + 96))(v9, v5);
    v30 = *(v9 + 1);
    sub_767230();
    sub_603A70(&qword_955F80, &type metadata accessor for SearchResultsDiffablePagePresenter);
    swift_errorRetain();

    sub_F714(v30);
    v31 = sub_7671F0();
    v32 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
    v33 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
    sub_761930();

    v34 = *&v2[v32];
    *&v2[v32] = v31;
    v35 = v31;

    result = [v2 view];
    if (result)
    {
      v36 = result;
      [result bounds];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;

      v73 = v38;
      v74 = v40;
      v75 = v42;
      v76 = v44;
      v77 = 0;
      sub_761920();

      sub_F704(v30);
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_99E1B0] = 1;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  sub_761930();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v73 = v17;
  v74 = v19;
  v75 = v21;
  v76 = v23;
  v77 = 0;
  sub_761920();
  if (sub_7617F0())
  {
    sub_75CA90();
  }

  v24 = qword_9593C0;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    *v27 = sub_603ADC;
    *(v27 + 1) = v26;
    v29 = v25;

    sub_F704(v28);
  }

  sub_7617E0();
}

uint64_t sub_5FFAA0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_767140();
  __chkstk_darwin(v4 - 8);
  v5 = sub_BD88(&qword_947428);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v22 - v8;
  (*(v6 + 16))(&v22 - v8, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v6 + 8))(v9, v5);
    *(v2 + qword_99E1B0) = 1;
    (*&stru_158.segname[swift_isaMask & *v2])(0);
    if (sub_7617F0())
    {
      sub_75CA90();
    }

    v11 = qword_9593C0;
    swift_beginAccess();
    v12 = *(v2 + v11);
    if (v12)
    {
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = &v12[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v15 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      *v14 = sub_603ADC;
      *(v14 + 1) = v13;
      v16 = v12;

      sub_F704(v15);
    }

    sub_7617E0();
  }

  else if (v10 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v6 + 96))(v9, v5);
    v18 = *(v9 + 1);
    sub_767230();
    sub_603A70(&qword_955E40, &type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter);
    swift_errorRetain();

    sub_F714(v18);
    v19 = sub_7671F0();
    (*&stru_158.segname[swift_isaMask & *v2])(v19);
    sub_F704(v18);
  }

  else if (v10 == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    sub_7617E0();
    sub_767130();
    v20 = objc_allocWithZone(sub_767160());
    v21 = sub_767150();
    (*&stru_158.segname[swift_isaMask & *v2])(v21);
    sub_763F00();
    sub_603A70(&qword_955E40, &type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter);
    return sub_75EBC0();
  }

  else
  {
    (*&stru_158.segname[swift_isaMask & *v2])(0);
    return (*(v6 + 8))(v9, v5);
  }
}

id sub_5FFFE8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_767140();
  __chkstk_darwin(v4 - 8);
  v5 = sub_BD88(&qword_948DD8);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v72[-v8];
  (*(v6 + 16))(&v72[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v60 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
        v61 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
        sub_761930();

        v62 = *&v2[v60];
        *&v2[v60] = 0;

        result = [v2 view];
        if (result)
        {
          v63 = result;
          [result bounds];
          v65 = v64;
          v67 = v66;
          v69 = v68;
          v71 = v70;

          v73 = v65;
          v74 = v67;
          v75 = v69;
          v76 = v71;
          v77 = 0;
          sub_761920();
          return (*(v6 + 8))(v9, v5);
        }

        goto LABEL_19;
      }

      sub_7617E0();
      sub_767130();
      v45 = objc_allocWithZone(sub_767160());
      v46 = sub_767150();
      v47 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
      v48 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
      sub_761930();

      v49 = *&v2[v47];
      *&v2[v47] = v46;
      v50 = v46;

      result = [v2 view];
      if (result)
      {
        v51 = result;
        [result bounds];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;

        v73 = v53;
        v74 = v55;
        v75 = v57;
        v76 = v59;
        v77 = 0;
        sub_761920();

        sub_762A00();
        sub_603A70(&qword_955EB0, &type metadata accessor for ReviewsDiffablePagePresenter);
        return sub_75EBC0();
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    (*(v6 + 96))(v9, v5);
    v30 = *(v9 + 1);
    sub_767230();
    sub_603A70(&qword_955EB0, &type metadata accessor for ReviewsDiffablePagePresenter);
    swift_errorRetain();

    sub_F714(v30);
    v31 = sub_7671F0();
    v32 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
    v33 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
    sub_761930();

    v34 = *&v2[v32];
    *&v2[v32] = v31;
    v35 = v31;

    result = [v2 view];
    if (result)
    {
      v36 = result;
      [result bounds];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;

      v73 = v38;
      v74 = v40;
      v75 = v42;
      v76 = v44;
      v77 = 0;
      sub_761920();

      sub_F704(v30);
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_99E1B0] = 1;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  sub_761930();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v73 = v17;
  v74 = v19;
  v75 = v21;
  v76 = v23;
  v77 = 0;
  sub_761920();
  if (sub_7617F0())
  {
    sub_75CA90();
  }

  v24 = qword_9593C0;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    *v27 = sub_603ADC;
    *(v27 + 1) = v26;
    v29 = v25;

    sub_F704(v28);
  }

  sub_7617E0();
}

id sub_600674(uint64_t a1)
{
  v2 = v1;
  v4 = sub_767140();
  __chkstk_darwin(v4 - 8);
  v5 = sub_BD88(&qword_9494B8);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v72[-v8];
  (*(v6 + 16))(&v72[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v60 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
        v61 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
        sub_761930();

        v62 = *&v2[v60];
        *&v2[v60] = 0;

        result = [v2 view];
        if (result)
        {
          v63 = result;
          [result bounds];
          v65 = v64;
          v67 = v66;
          v69 = v68;
          v71 = v70;

          v73 = v65;
          v74 = v67;
          v75 = v69;
          v76 = v71;
          v77 = 0;
          sub_761920();
          return (*(v6 + 8))(v9, v5);
        }

        goto LABEL_19;
      }

      sub_7617E0();
      sub_767130();
      v45 = objc_allocWithZone(sub_767160());
      v46 = sub_767150();
      v47 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
      v48 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
      sub_761930();

      v49 = *&v2[v47];
      *&v2[v47] = v46;
      v50 = v46;

      result = [v2 view];
      if (result)
      {
        v51 = result;
        [result bounds];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;

        v73 = v53;
        v74 = v55;
        v75 = v57;
        v76 = v59;
        v77 = 0;
        sub_761920();

        sub_762960();
        sub_603A70(&qword_955D98, &type metadata accessor for ProductDiffablePagePresenter);
        return sub_75EBC0();
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    (*(v6 + 96))(v9, v5);
    v30 = *(v9 + 1);
    sub_767230();
    sub_603A70(&qword_955D98, &type metadata accessor for ProductDiffablePagePresenter);
    swift_errorRetain();

    sub_F714(v30);
    v31 = sub_7671F0();
    v32 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
    v33 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
    sub_761930();

    v34 = *&v2[v32];
    *&v2[v32] = v31;
    v35 = v31;

    result = [v2 view];
    if (result)
    {
      v36 = result;
      [result bounds];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;

      v73 = v38;
      v74 = v40;
      v75 = v42;
      v76 = v44;
      v77 = 0;
      sub_761920();

      sub_F704(v30);
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_99E1B0] = 1;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  sub_761930();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v73 = v17;
  v74 = v19;
  v75 = v21;
  v76 = v23;
  v77 = 0;
  sub_761920();
  if (sub_7617F0())
  {
    sub_75CA90();
  }

  v24 = qword_9593C0;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    *v27 = sub_603ADC;
    *(v27 + 1) = v26;
    v29 = v25;

    sub_F704(v28);
  }

  sub_7617E0();
}

id sub_600D00(uint64_t a1)
{
  v2 = v1;
  v4 = sub_767140();
  __chkstk_darwin(v4 - 8);
  v5 = sub_BD88(&qword_951BA0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v72[-v8];
  (*(v6 + 16))(&v72[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v60 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
        v61 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
        sub_761930();

        v62 = *&v2[v60];
        *&v2[v60] = 0;

        result = [v2 view];
        if (result)
        {
          v63 = result;
          [result bounds];
          v65 = v64;
          v67 = v66;
          v69 = v68;
          v71 = v70;

          v73 = v65;
          v74 = v67;
          v75 = v69;
          v76 = v71;
          v77 = 0;
          sub_761920();
          return (*(v6 + 8))(v9, v5);
        }

        goto LABEL_19;
      }

      sub_7617E0();
      sub_767130();
      v45 = objc_allocWithZone(sub_767160());
      v46 = sub_767150();
      v47 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
      v48 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
      sub_761930();

      v49 = *&v2[v47];
      *&v2[v47] = v46;
      v50 = v46;

      result = [v2 view];
      if (result)
      {
        v51 = result;
        [result bounds];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;

        v73 = v53;
        v74 = v55;
        v75 = v57;
        v76 = v59;
        v77 = 0;
        sub_761920();

        sub_761F50();
        sub_603A70(&qword_955E68, &type metadata accessor for TodayDiffablePagePresenter);
        return sub_75EBC0();
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    (*(v6 + 96))(v9, v5);
    v30 = *(v9 + 1);
    sub_767230();
    sub_603A70(&qword_955E68, &type metadata accessor for TodayDiffablePagePresenter);
    swift_errorRetain();

    sub_F714(v30);
    v31 = sub_7671F0();
    v32 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
    v33 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
    sub_761930();

    v34 = *&v2[v32];
    *&v2[v32] = v31;
    v35 = v31;

    result = [v2 view];
    if (result)
    {
      v36 = result;
      [result bounds];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;

      v73 = v38;
      v74 = v40;
      v75 = v42;
      v76 = v44;
      v77 = 0;
      sub_761920();

      sub_F704(v30);
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_99E1B0] = 1;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  sub_761930();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v73 = v17;
  v74 = v19;
  v75 = v21;
  v76 = v23;
  v77 = 0;
  sub_761920();
  if (sub_7617F0())
  {
    sub_75CA90();
  }

  v24 = qword_9593C0;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    *v27 = sub_603ADC;
    *(v27 + 1) = v26;
    v29 = v25;

    sub_F704(v28);
  }

  sub_7617E0();
}

id sub_60138C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_767140();
  __chkstk_darwin(v4 - 8);
  v5 = sub_BD88(&unk_954810);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v72[-v8];
  (*(v6 + 16))(&v72[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v60 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
        v61 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
        sub_761930();

        v62 = *&v2[v60];
        *&v2[v60] = 0;

        result = [v2 view];
        if (result)
        {
          v63 = result;
          [result bounds];
          v65 = v64;
          v67 = v66;
          v69 = v68;
          v71 = v70;

          v73 = v65;
          v74 = v67;
          v75 = v69;
          v76 = v71;
          v77 = 0;
          sub_761920();
          return (*(v6 + 8))(v9, v5);
        }

        goto LABEL_19;
      }

      sub_7617E0();
      sub_767130();
      v45 = objc_allocWithZone(sub_767160());
      v46 = sub_767150();
      v47 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
      v48 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
      sub_761930();

      v49 = *&v2[v47];
      *&v2[v47] = v46;
      v50 = v46;

      result = [v2 view];
      if (result)
      {
        v51 = result;
        [result bounds];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;

        v73 = v53;
        v74 = v55;
        v75 = v57;
        v76 = v59;
        v77 = 0;
        sub_761920();

        sub_764500();
        sub_603A70(&qword_955E00, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter);
        return sub_75EBC0();
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    (*(v6 + 96))(v9, v5);
    v30 = *(v9 + 1);
    sub_767230();
    sub_603A70(&qword_955E00, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter);
    swift_errorRetain();

    sub_F714(v30);
    v31 = sub_7671F0();
    v32 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
    v33 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
    sub_761930();

    v34 = *&v2[v32];
    *&v2[v32] = v31;
    v35 = v31;

    result = [v2 view];
    if (result)
    {
      v36 = result;
      [result bounds];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;

      v73 = v38;
      v74 = v40;
      v75 = v42;
      v76 = v44;
      v77 = 0;
      sub_761920();

      sub_F704(v30);
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_99E1B0] = 1;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  sub_761930();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v73 = v17;
  v74 = v19;
  v75 = v21;
  v76 = v23;
  v77 = 0;
  sub_761920();
  if (sub_7617F0())
  {
    sub_75CA90();
  }

  v24 = qword_9593C0;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    *v27 = sub_603ADC;
    *(v27 + 1) = v26;
    v29 = v25;

    sub_F704(v28);
  }

  sub_7617E0();
}

id sub_601A18(uint64_t a1)
{
  v2 = v1;
  v4 = sub_767140();
  __chkstk_darwin(v4 - 8);
  v5 = sub_BD88(&qword_95E8B8);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v72[-v8];
  (*(v6 + 16))(&v72[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v60 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
        v61 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
        sub_761930();

        v62 = *&v2[v60];
        *&v2[v60] = 0;

        result = [v2 view];
        if (result)
        {
          v63 = result;
          [result bounds];
          v65 = v64;
          v67 = v66;
          v69 = v68;
          v71 = v70;

          v73 = v65;
          v74 = v67;
          v75 = v69;
          v76 = v71;
          v77 = 0;
          sub_761920();
          return (*(v6 + 8))(v9, v5);
        }

        goto LABEL_19;
      }

      sub_7617E0();
      sub_767130();
      v45 = objc_allocWithZone(sub_767160());
      v46 = sub_767150();
      v47 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
      v48 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
      sub_761930();

      v49 = *&v2[v47];
      *&v2[v47] = v46;
      v50 = v46;

      result = [v2 view];
      if (result)
      {
        v51 = result;
        [result bounds];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;

        v73 = v53;
        v74 = v55;
        v75 = v57;
        v76 = v59;
        v77 = 0;
        sub_761920();

        sub_7635F0();
        sub_603A70(&qword_955DE0, &type metadata accessor for SearchFocusDiffablePagePresenter);
        return sub_75EBC0();
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    (*(v6 + 96))(v9, v5);
    v30 = *(v9 + 1);
    sub_767230();
    sub_603A70(&qword_955DE0, &type metadata accessor for SearchFocusDiffablePagePresenter);
    swift_errorRetain();

    sub_F714(v30);
    v31 = sub_7671F0();
    v32 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
    v33 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
    sub_761930();

    v34 = *&v2[v32];
    *&v2[v32] = v31;
    v35 = v31;

    result = [v2 view];
    if (result)
    {
      v36 = result;
      [result bounds];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;

      v73 = v38;
      v74 = v40;
      v75 = v42;
      v76 = v44;
      v77 = 0;
      sub_761920();

      sub_F704(v30);
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_99E1B0] = 1;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  sub_761930();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v73 = v17;
  v74 = v19;
  v75 = v21;
  v76 = v23;
  v77 = 0;
  sub_761920();
  if (sub_7617F0())
  {
    sub_75CA90();
  }

  v24 = qword_9593C0;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    *v27 = sub_603814;
    v27[1] = v26;
    v29 = v25;

    sub_F704(v28);
  }

  sub_7617E0();
}

uint64_t sub_6020A4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    v2 = sub_7617F0();

    if (v2)
    {
      sub_75CA90();
    }
  }

  return result;
}

char *sub_602134(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  *(v2 + qword_9A0508 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_7634F0();
  sub_768900();
  sub_768ED0();
  *(v2 + qword_95E330) = v11;

  v5 = sub_46DBB0(a1, a2);
  v6 = *&v5[qword_99E1D8];
  v7 = v5;
  v8 = v6;

  sub_75FA40();

  sub_BD88(&qword_9477F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_77E280;
  *(v9 + 32) = sub_767B80();
  *(v9 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v9 + 48) = sub_7676E0();
  *(v9 + 56) = &protocol witness table for UITraitLayoutDirection;
  sub_769900();

  swift_unknownObjectRelease();

  return v7;
}

void sub_6022E0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_768C60();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v0;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "viewDidLoad", v9);
  v12 = [v0 collectionView];
  if (v12)
  {
    v13 = v12;
    [v12 setKeyboardDismissMode:1];
  }

  v14 = [v1 collectionView];
  if (v14)
  {
    v15 = v14;
    [v14 setAllowsSelection:1];
  }

  v16 = [v1 collectionView];
  if (v16)
  {
    v17 = v16;
    [v16 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  }

  v18 = [v1 collectionView];
  if (v18)
  {
    v19 = v18;
    memset(v26, 0, sizeof(v26));
    sub_768C20();
    sub_10A2C(v26, &unk_93FBD0);
    sub_769E70();

    (*(v8 + 8))(v11, v7);
    sub_BD88(&qword_9477F0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_77E280;
    *(v20 + 32) = sub_767B80();
    *(v20 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    *(v20 + 48) = sub_7676F0();
    *(v20 + 56) = &protocol witness table for UITraitLegibilityWeight;
    sub_769900();
    swift_unknownObjectRelease();

    if (qword_93DD00 != -1)
    {
      swift_once();
    }

    v21 = sub_766CA0();
    sub_BE38(v21, qword_99FE48);
    sub_766470();
    sub_766700();
    v23 = v22;
    (*(v4 + 8))(v6, v3);
    [v1 additionalSafeAreaInsets];
    [v1 setAdditionalSafeAreaInsets:v23];
    v24 = [v1 view];
    if (v24)
    {
      v25 = v24;
      [v24 setNeedsLayout];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_6026DC(void *a1)
{
  v1 = a1;
  sub_6022E0();
}

void sub_602788(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_7634E0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v14, v12);
  (*(v9 + 104))(v11, *a4, v8);
  sub_7634A0();
  (*(v9 + 8))(v11, v8);
}

void sub_6028D0(void *a1, uint64_t a2, uint64_t a3, const char **a4, unsigned int *a5)
{
  ObjectType = swift_getObjectType();
  v10 = sub_7634E0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = a1;
  v16.super_class = ObjectType;
  v14 = *a4;
  v15 = a1;
  objc_msgSendSuper2(&v16, v14, a3);
  (*(v11 + 104))(v13, *a5, v10);
  sub_7634A0();
  (*(v11 + 8))(v13, v10);
}

void sub_602A34(void *a1)
{
  v1 = a1;
  sub_602A0C();
}

uint64_t sub_602AA4(unsigned int *a1, void (*a2)(void), unsigned int *a3)
{
  v20 = a1;
  v6 = v3;
  v7 = sub_7634E0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7587B0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_13468(v6 + v15, v22);
  if (v23)
  {
    sub_134D8(v22, v21);
    sub_10A2C(v22, &qword_93FED0);
    v18 = a2;
    v19 = v7;
    sub_B170(v21, v21[3]);
    (*(v12 + 104))(v14, *v20, v11);
    a2 = v18;
    v7 = v19;
    sub_7587C0();
    (*(v12 + 8))(v14, v11);
    v16 = sub_BEB8(v21);
  }

  else
  {
    v16 = sub_10A2C(v22, &qword_93FED0);
  }

  a2(v16);
  (*(v8 + 104))(v10, *a3, v7);
  sub_7634A0();
  return (*(v8 + 8))(v10, v7);
}

void sub_602D38(void *a1)
{
  v1 = a1;
  sub_602A7C();
}

id sub_602D80()
{
  v1 = v0;
  swift_getObjectType();
  sub_BD88(&qword_93F1E8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_77DC20;
  sub_BD88(&qword_95E8E0);
  swift_allocObject();
  swift_retain_n();

  v3 = sub_763BB0();
  v4 = sub_16194(&qword_95E8E8, &qword_95E8E0);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  type metadata accessor for BackgroundConfigurationCollectionElementsObserver();
  v5 = swift_allocObject();
  *(v5 + 16) = 1;
  v6 = sub_603A70(&qword_93F200, type metadata accessor for BackgroundConfigurationCollectionElementsObserver);
  *(v2 + 48) = v5;
  *(v2 + 56) = v6;
  sub_603A70(&qword_95E8D0, type metadata accessor for SearchFocusDiffablePageViewController);
  sub_763A80();
  sub_761840();

  result = [v1 collectionView];
  if (result)
  {
    sub_764320();
    swift_allocObject();
    *(v2 + 64) = sub_764310();
    *(v2 + 72) = &protocol witness table for ImpressionsCollectionElementsObserver;
    sub_7637E0();
    swift_allocObject();
    v8 = sub_7637D0();
    sub_5FDDE0();
    if (swift_dynamicCastClass())
    {
      sub_7637B0();
      sub_7637C0();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_603054@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SearchFocusPageShelfLayoutSpacingProvider;
  result = sub_603884();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_603088@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_603A70(&qword_95E8D0, type metadata accessor for SearchFocusDiffablePageViewController);
  sub_763A80();
  v2 = sub_763A60();
  v18[3] = swift_getObjectType();
  v18[0] = v2;
  v3 = sub_763A50();
  v19[3] = swift_getObjectType();
  v19[0] = v3;
  sub_132B4(v18, v17);
  sub_13310(v17, v15);
  sub_BD88(&qword_93F1C8);
  if (swift_dynamicCast() && v16)
  {
    v13 = v16;
    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_7ACBC(0, *&_swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_7ACBC((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    *&v4[2 * v6 + 4] = v13;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_132B4(v19, v17);
  sub_13310(v17, v15);
  sub_BD88(&qword_93F1C8);
  if (swift_dynamicCast() && v16)
  {
    v14 = v16;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_7ACBC(0, *(v4 + 2) + 1, 1, v4);
    }

    v8 = *(v4 + 2);
    v7 = *(v4 + 3);
    v9 = v14;
    if (v8 >= v7 >> 1)
    {
      v12 = sub_7ACBC((v7 > 1), v8 + 1, 1, v4);
      v9 = v14;
      v4 = v12;
    }

    *(v4 + 2) = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  v10 = type metadata accessor for SearchFocusLayoutSectionProvider();
  swift_allocObject();

  result = sub_486154(v20);
  a1[3] = v10;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = result;
  return result;
}

unint64_t sub_603368@<X0>(uint64_t *a1@<X8>)
{
  sub_75A3C0();
  swift_allocObject();
  v2 = sub_75A3B0();
  swift_allocObject();
  v3 = sub_75A3B0();
  swift_allocObject();
  v4 = sub_75A3B0();
  a1[3] = &type metadata for SearchFocusPageGridProvider;
  result = sub_603830();
  a1[4] = result;
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

void sub_603410(void *a1, uint64_t a2, void *a3)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v9.receiver;
  objc_msgSendSuper2(&v9, "scrollViewWillBeginDragging:", v4);
  v6 = &v5[qword_9A0508];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_6034C0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SearchFocusShelfComponentTypeMappingProvider();
  v3 = swift_allocObject();
  type metadata accessor for AppPromotionsShelfComponentTypeMappingProvider();
  *(v3 + 16) = swift_allocObject();
  type metadata accessor for SmallStoryCardShelfComponentTypeMappingProvider();
  *(v3 + 24) = swift_allocObject();
  a1[3] = v2;
  result = sub_603A70(&qword_95E8C0, type metadata accessor for SearchFocusShelfComponentTypeMappingProvider);
  a1[4] = result;
  *a1 = v3;
  return result;
}

void sub_603574(uint64_t a1)
{
  v2 = sub_BD88(&qword_95E8B8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v6 - v4;
  sub_601A18(a1);
  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) == enum case for DiffablePagePresenter.UpdatePhase.initial<A>(_:))
  {
    sub_763480();
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_6036AC()
{

  v1 = v0 + qword_9A0508;

  return sub_13238(v1);
}

uint64_t sub_6036EC(uint64_t a1)
{

  v2 = a1 + qword_9A0508;

  return sub_13238(v2);
}

uint64_t type metadata accessor for SearchFocusDiffablePageViewController()
{
  result = qword_95E360;
  if (!qword_95E360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6037DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_603830()
{
  result = qword_95E8C8;
  if (!qword_95E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95E8C8);
  }

  return result;
}

unint64_t sub_603884()
{
  result = qword_95E8D8;
  if (!qword_95E8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95E8D8);
  }

  return result;
}

void sub_6038D8(void *a1)
{
  v2 = sub_76A920();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DD00 != -1)
  {
    swift_once();
  }

  v6 = sub_766CA0();
  sub_BE38(v6, qword_99FE48);
  sub_766470();
  sub_766700();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  [a1 additionalSafeAreaInsets];
  [a1 setAdditionalSafeAreaInsets:v8];
  v9 = [a1 view];
  if (v9)
  {
    v10 = v9;
    [v9 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_603A70(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_603AE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v11 = a1;
    v12 = v11;
    if ((a5 & 1) != 0 && ([v11 size], v14 = v13, objc_msgSend(v12, "size"), v15 < v14) && (v16 = objc_msgSend(v12, "CGImage")) != 0)
    {
      v17 = v16;
      [v12 scale];
      v19 = [objc_allocWithZone(UIImage) initWithCGImage:v17 scale:2 orientation:v18];
    }

    else
    {
      v19 = v12;
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      swift_beginAccess();
      v22 = *(v21 + 16);
      if ((v22 & 0xC000000000000001) != 0)
      {
        if (v22 < 0)
        {
          v23 = *(v21 + 16);
        }

        else
        {
          v23 = v22 & 0xFFFFFFFFFFFFFF8;
        }

        v24 = v19;
        v25 = sub_76A810();
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          return;
        }

        *(v21 + 16) = sub_603D8C(v23, v25 + 1);
      }

      else
      {
        v26 = v19;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *(v21 + 16);
      sub_45A478(v19, a7, isUniquelyReferenced_nonNull_native);
      *(v21 + 16) = v32;
      swift_endAccess();
    }

    swift_beginAccess();
    v28 = swift_weakLoadStrong();
    if (v28)
    {
      v29 = v28;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v30 = *(v29 + 32);
        ObjectType = swift_getObjectType();
        (*(v30 + 8))(v29, v19, a8, ObjectType, v30);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_603D28()
{

  sub_13238(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_603D8C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_BD88(&unk_9453A0);
    v2 = sub_76A8A0();
    v19 = v2;
    sub_76A800();
    v3 = sub_76A830();
    if (v3)
    {
      v4 = v3;
      sub_765390();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_603FC8();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_457990(v12 + 1, 1);
        }

        v2 = v19;
        sub_604014();
        result = sub_769150();
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
        v5 = sub_76A830();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

unint64_t sub_603FC8()
{
  result = qword_947630;
  if (!qword_947630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_947630);
  }

  return result;
}

unint64_t sub_604014()
{
  result = qword_955908;
  if (!qword_955908)
  {
    sub_765390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_955908);
  }

  return result;
}

double *sub_60406C(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    sub_76A7C0();
    v6 = a1 + 48;
    do
    {

      if (a2)
      {
        sub_7650D0();
      }

      sub_765330();

      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
      v6 += 24;
      --v3;
    }

    while (v3);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

double sub_604180(uint64_t a1, double (*a2)(double, double), double a3, double a4)
{
  v9 = sub_7672E0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v40[-v14];
  __chkstk_darwin(v16);
  v18 = &v40[-v17];
  __chkstk_darwin(v19);
  v21 = &v40[-v20];
  v22 = a2(a3, a4);
  v23 = [v4 traitCollection];
  v24 = [v23 horizontalSizeClass];

  if (v24 == &dword_0 + 2)
  {
    v25 = 635.0;
  }

  else
  {
    v25 = a3;
  }

  if (v25 <= v22)
  {
    sub_134D8(a1, v42);
    *(v21 + 3) = &type metadata for CGFloat;
    *(v21 + 4) = &protocol witness table for CGFloat;
    *v21 = v25;
    v34 = *(v10 + 104);
    v34(v21, enum case for Resize.Rule.replaced(_:), v9);
    v35 = enum case for Resize.Rule.unchanged(_:);
    v34(v18, enum case for Resize.Rule.unchanged(_:), v9);
    v34(v15, v35, v9);
    v34(v12, v35, v9);
    v44 = sub_7672F0();
    v45 = &protocol witness table for Resize;
    sub_B1B4(v43);
    sub_767300();
  }

  else
  {
    sub_766DC0();
    v27 = v26;
    v29 = v28;
    sub_134D8(a1, v42);
    sub_766DC0();
    v31 = v30;
    v33 = v32;
    v44 = sub_7673C0();
    v45 = &protocol witness table for Constrain;
    sub_B1B4(v43);
    v41 = v31 & 1;
    v40[0] = v33 & 1;
    sub_7673D0();
    v42[0] = v27 & 1;
    v41 = v29 & 1;
    sub_766DE0();
  }

  sub_B170(v43, v44);
  v36 = [v4 traitCollection];
  sub_7673F0();
  v38 = v37;

  sub_BEB8(v43);
  return v38;
}

uint64_t sub_60459C(uint64_t a1, uint64_t *a2, void **a3)
{
  v5 = sub_7664A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_766CA0();
  sub_161DC(v9, a2);
  sub_BE38(v9, a2);
  v10 = *a3;
  *v8 = v10;
  (*(v6 + 104))(v8, enum case for FontSource.textStyle(_:), v5);
  v15[3] = v5;
  v15[4] = &protocol witness table for FontSource;
  v11 = sub_B1B4(v15);
  (*(v6 + 16))(v11, v8, v5);
  v12 = v10;
  sub_766CB0();
  return (*(v6 + 8))(v8, v5);
}

char *sub_60470C(double a1, double a2, double a3, double a4)
{
  v9 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v9 - 8);
  v11 = (&v66 - v10);
  v12 = sub_760370();
  __chkstk_darwin(v12 - 8);
  v13 = sub_7603D0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_7602F0();
  v18 = __chkstk_darwin(v17);
  (*(v20 + 104))(&v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v18);
  (*(v14 + 104))(v16, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v13);
  sub_760360();
  sub_760300();
  v21 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_badgeLabel;
  sub_75BB20();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v21] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v23 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_titleLabel;
  *&v4[v23] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v24 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_callToActionLabel;
  *&v4[v24] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v25 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_tapGestureRecognizer;
  *&v4[v25] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v26 = &v4[OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_selectionHandler];
  v27 = type metadata accessor for CarouselItemTextOverlay();
  *v26 = 0;
  *(v26 + 1) = 0;
  v70.receiver = v4;
  v70.super_class = v27;
  v28 = objc_msgSendSuper2(&v70, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v32 = v28;
  [v32 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v32 setOverrideUserInterfaceStyle:2];
  [v32 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v33 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_badgeLabel;
  v34 = qword_93DBC0;
  v35 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_badgeLabel];
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = sub_7666D0();
  v37 = sub_BE38(v36, qword_99FB38);
  v38 = *(v36 - 8);
  v39 = *(v38 + 16);
  v39(v11, v37, v36);
  v68 = *(v38 + 56);
  v68(v11, 0, 1, v36);
  sub_75BA40();

  [*&v32[v33] setNumberOfLines:1];
  v40 = *&v32[v33];
  v41 = objc_opt_self();
  v42 = v40;
  v67 = v41;
  v43 = [v41 secondaryLabelColor];
  v44 = v33;
  v45 = v43;
  [v42 setTextColor:v43];

  v69 = v44;
  v46 = [*&v32[v44] layer];
  [v46 setCompositingFilter:kCAFilterPlusL];

  v47 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_titleLabel;
  v48 = qword_93DBD0;
  v49 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_titleLabel];
  if (v48 != -1)
  {
    swift_once();
  }

  v50 = sub_BE38(v36, qword_99FB68);
  v39(v11, v50, v36);
  v51 = v68;
  v68(v11, 0, 1, v36);
  sub_75BA40();

  [*&v32[v47] setNumberOfLines:2];
  v52 = *&v32[v47];
  v66 = v47;
  v53 = v67;
  v54 = [v67 labelColor];
  [v52 setTextColor:v54];

  v55 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_callToActionLabel;
  v56 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_callToActionLabel];
  *v11 = UIFontTextStyleFootnote;
  v11[1] = UIFontWeightBold;
  (*(v38 + 104))(v11, enum case for FontUseCase.preferredFontDerivative(_:), v36);
  v51(v11, 0, 1, v36);
  v57 = v56;
  v58 = UIFontTextStyleFootnote;
  sub_75BA40();

  [*&v32[v55] setNumberOfLines:1];
  v59 = *&v32[v55];
  v60 = [v53 labelColor];
  [v59 setTextColor:v60];

  v61 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_tapGestureRecognizer;
  [*&v32[OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_tapGestureRecognizer] setEnabled:0];
  v62 = *&v32[v61];
  v63 = v32;
  [v62 addTarget:v63 action:"handleSelection:"];
  v64 = *&v32[v61];
  [v64 setDelegate:v63];

  [v63 addGestureRecognizer:*&v32[v61]];
  [v63 addSubview:*&v32[v69]];
  [v63 addSubview:*&v32[v66]];
  [v63 addSubview:*&v32[v55]];
  sub_605C94();

  return v63;
}

uint64_t sub_605068@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  ObjectType = swift_getObjectType();
  v57 = sub_766950();
  v59 = *(v57 - 8);
  __chkstk_darwin(v57);
  v4 = &v51[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v53 = &v51[-v6];
  __chkstk_darwin(v7);
  v54 = &v51[-v8];
  __chkstk_darwin(v9);
  v55 = &v51[-v10];
  v11 = sub_7602F0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v51[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v51[-v16];
  v18 = sub_7603E0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v51[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v19 + 16))(v21, &v2[v22], v18);
  sub_760310();
  (*(v19 + 8))(v21, v18);
  (*(v12 + 104))(v14, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v11);
  sub_6067BC();
  sub_769430();
  sub_769430();
  if (v60[0] == v63 && v60[1] == v64)
  {
    v52 = 1;
  }

  else
  {
    v52 = sub_76A950();
  }

  v23 = *(v12 + 8);
  v23(v14, v11);
  v23(v17, v11);

  sub_766930();
  v24 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_badgeLabel];
  v25 = sub_75BB20();
  v61 = v25;
  v62 = &protocol witness table for UILabel;
  v60[0] = v24;
  v26 = swift_allocObject();
  v27 = v4;
  v28 = ObjectType;
  *(v26 + 16) = v2;
  *(v26 + 24) = v28;
  v29 = v24;
  v30 = v2;
  v31 = v53;
  sub_766940();

  v32 = *(v59 + 8);
  v33 = v57;
  v32(v27, v57);
  sub_BEB8(v60);
  v34 = *&v30[OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_titleLabel];
  v61 = v25;
  v62 = &protocol witness table for UILabel;
  v60[0] = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = v30;
  *(v35 + 24) = v28;
  v36 = v30;
  v37 = v34;
  v38 = v54;
  sub_766940();

  v32(v31, v33);
  sub_BEB8(v60);
  v39 = *&v36[OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_callToActionLabel];
  v61 = v25;
  v62 = &protocol witness table for UILabel;
  v60[0] = v39;
  v40 = swift_allocObject();
  v41 = ObjectType;
  *(v40 + 16) = v36;
  *(v40 + 24) = v41;
  v42 = v36;
  v43 = v39;
  v44 = v55;
  sub_766940();

  v32(v38, v33);
  sub_BEB8(v60);
  if (v52)
  {
    v61 = v33;
    v62 = &protocol witness table for VerticalStack;
    v45 = sub_B1B4(v60);
    (*(v59 + 16))(v45, v44, v33);
    sub_767270();
    v46 = sub_7672A0();
    v47 = v56;
    v56[3] = v46;
    v47[4] = &protocol witness table for Center;
    sub_B1B4(v47);
    sub_7672B0();
    return (v32)(v44, v33);
  }

  else
  {
    v49 = v56;
    v56[3] = v33;
    v49[4] = &protocol witness table for VerticalStack;
    v50 = sub_B1B4(v49);
    return (*(v59 + 32))(v50, v44, v33);
  }
}

uint64_t sub_60567C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v22 = a6;
  v23 = a5;
  v8 = sub_7602F0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7603E0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v13 + 16))(v15, a2 + v16, v12);
  sub_760310();
  (*(v13 + 8))(v15, v12);
  sub_7602D0();
  (*(v9 + 8))(v11, v8);
  sub_7668E0();
  v17 = sub_766900();
  sub_766920();
  sub_766920();
  if (sub_766920() != v17)
  {
    sub_766920();
  }

  sub_7668D0();
  if (*a4 != -1)
  {
    swift_once();
  }

  v18 = sub_766CA0();
  v19 = sub_BE38(v18, v23);
  v24[3] = v18;
  v24[4] = &protocol witness table for StaticDimension;
  v20 = sub_B1B4(v24);
  (*(*(v18 - 8) + 16))(v20, v19, v18);
  return sub_7668B0();
}

uint64_t sub_605914(uint64_t a1, uint64_t a2)
{
  v3 = sub_7602F0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7603E0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v8 + 16))(v10, a2 + v11, v7);
  sub_760310();
  (*(v8 + 8))(v10, v7);
  sub_7602D0();
  (*(v4 + 8))(v6, v3);
  sub_7668E0();
  sub_BD88(&unk_95B470);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77E280;
  v13 = sub_766900();
  *(inited + 32) = v13;
  v14 = sub_766910();
  *(inited + 40) = v14;
  sub_766920();
  sub_766920();
  if (sub_766920() != v13)
  {
    sub_766920();
  }

  sub_766920();
  if (sub_766920() != v14)
  {
    sub_766920();
  }

  sub_7668D0();
  if (qword_93DF58 != -1)
  {
    swift_once();
  }

  v15 = sub_766CA0();
  v16 = sub_BE38(v15, qword_95EB20);
  v23 = v15;
  v24 = &protocol witness table for StaticDimension;
  v17 = sub_B1B4(v22);
  v18 = *(*(v15 - 8) + 16);
  v18(v17, v16, v15);
  sub_7668B0();
  if (qword_93DF60 != -1)
  {
    swift_once();
  }

  v19 = sub_BE38(v15, qword_95EB38);
  v23 = v15;
  v24 = &protocol witness table for StaticDimension;
  v20 = sub_B1B4(v22);
  v18(v20, v19, v15);
  return sub_7668C0();
}

id sub_605C94()
{
  v1 = v0;
  v47 = sub_760370();
  v55 = *(v47 - 8);
  __chkstk_darwin(v47);
  v50 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v48 = &v45 - v4;
  __chkstk_darwin(v5);
  v45 = &v45 - v6;
  v7 = sub_7602F0();
  v53 = *(v7 - 8);
  v54 = v7;
  __chkstk_darwin(v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7603E0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v49 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v46 = &v45 - v14;
  __chkstk_darwin(v15);
  v52 = &v45 - v16;
  __chkstk_darwin(v17);
  v19 = &v45 - v18;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  v21 = *(v11 + 16);
  (v21)(v19, &v0[v20], v10);
  sub_760310();
  v22 = *(v11 + 8);
  v22(v19, v10);
  v23 = [v0 traitCollection];
  v24 = sub_7602E0();

  v53[1](v9, v54);
  v25 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_badgeLabel];
  v51 = v24;
  [v25 setTextAlignment:v24];
  v53 = v21;
  v54 = v20;
  v26 = &v1[v20];
  v27 = v1;
  v28 = v52;
  (v21)(v52, v26, v10);
  v29 = v45;
  sub_760380();
  v30 = v28;
  v31 = v10;
  v52 = (v11 + 8);
  v22(v30, v10);
  v32 = sub_760340();
  v33 = *(v55 + 8);
  v34 = v47;
  v55 += 8;
  v33(v29, v47);
  if (!v32)
  {
    v32 = [objc_opt_self() secondaryLabelColor];
  }

  [v25 setTextColor:v32];

  v35 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_titleLabel];
  [v35 setTextAlignment:v51];
  v36 = v46;
  v37 = v31;
  (v53)(v46, &v27[v54], v31);
  v38 = v48;
  sub_760380();
  v22(v36, v37);
  v39 = sub_760350();
  v33(v38, v34);
  if (!v39)
  {
    v39 = [objc_opt_self() labelColor];
  }

  [v35 setTextColor:v39];

  v40 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_callToActionLabel];
  [v40 setTextAlignment:v51];
  v41 = v49;
  (v53)(v49, &v27[v54], v37);
  v42 = v50;
  sub_760380();
  v22(v41, v37);
  v43 = sub_760330();
  v33(v42, v34);
  if (!v43)
  {
    v43 = [objc_opt_self() labelColor];
  }

  [v40 setTextColor:v43];

  return [v27 setNeedsLayout];
}

id sub_6062E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselItemTextOverlay();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CarouselItemTextOverlay()
{
  result = qword_95EBA0;
  if (!qword_95EBA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_606434()
{
  result = sub_7603E0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_6064E0(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_selectionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_selectionHandler);
  *v4 = a1;
  v4[1] = a2;
  sub_F714(a1);
  sub_F714(a1);
  sub_F704(v5);
  v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_tapGestureRecognizer);
  if (a1)
  {
    sub_F704(a1);
  }

  [v6 setEnabled:a1 != 0];

  return sub_F704(a1);
}

id sub_606594()
{
  v1 = v0;
  v2 = sub_7603E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7603F0();
  v6 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v3 + 24))(&v1[v6], v5, v2);
  swift_endAccess();
  sub_605C94();
  (*(v3 + 8))(v5, v2);
  v7 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_badgeLabel];
  sub_760450();
  if (v8)
  {
    v9 = sub_769210();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];

  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_titleLabel];
  sub_760460();
  if (v11)
  {
    v12 = sub_769210();
  }

  else
  {
    v12 = 0;
  }

  [v10 setText:v12];

  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_callToActionLabel];
  v14 = sub_760420();
  v16 = sub_57D1A4(v14, v15, [v1 effectiveUserInterfaceLayoutDirection]);

  [v13 setAttributedText:v16];

  return [v1 setNeedsLayout];
}

unint64_t sub_6067BC()
{
  result = qword_95B460;
  if (!qword_95B460)
  {
    sub_7602F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B460);
  }

  return result;
}

uint64_t sub_606814()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_6068CC()
{
  v1 = sub_760370();
  __chkstk_darwin(v1 - 8);
  v2 = sub_7603D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7602F0();
  v7 = __chkstk_darwin(v6);
  (*(v9 + 104))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v7);
  (*(v3 + 104))(v5, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v2);
  sub_760360();
  sub_760300();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_badgeLabel;
  sub_75BB20();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v10) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_titleLabel;
  *(v0 + v12) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_callToActionLabel;
  *(v0 + v13) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_tapGestureRecognizer;
  *(v0 + v14) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v15 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_selectionHandler);
  *v15 = 0;
  v15[1] = 0;
  sub_76A840();
  __break(1u);
}

id WebViewController.protocolDelegate.getter()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider17WebViewController_protocolDelegate;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void WebViewController.protocolDelegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider17WebViewController_protocolDelegate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_606C84(uint64_t a1)
{
  v2 = v1;
  sub_75E770();
  sub_768900();
  sub_768ED0();
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider17WebViewController_protocolDelegate] = v18;
  sub_4A17C();
  sub_768ED0();
  v4 = v18;
  sub_75A920();
  sub_768ED0();
  v5 = sub_75A910();
  v6 = [v18 ams_activeiTunesAccount];
  v17.receiver = v2;
  v17.super_class = type metadata accessor for WebViewController();
  v7 = objc_msgSendSuper2(&v17, "initWithBag:account:clientInfo:", v5, v6, 0);
  swift_unknownObjectRelease();

  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 tableViewAppearance];
  [v9 setAppearance:v10];

  [v9 setDelegate:v9];
  sub_757040(v11);
  v13 = v12;
  v14 = [v9 loadURL:v12];

  v15 = sub_7570A0();
  (*(*(v15 - 8) + 8))(a1, v15);
  return v9;
}

id WebViewController.__allocating_init(bag:account:clientInfo:)(uint64_t a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(v3) initWithBag:a1 account:a2 clientInfo:a3];
  swift_unknownObjectRelease();

  return v6;
}

void sub_607074(char a1, SEL *a2, SEL *a3)
{
  v8.receiver = v3;
  v8.super_class = type metadata accessor for WebViewController();
  objc_msgSendSuper2(&v8, *a2, a1 & 1);
  v7 = [objc_opt_self() sharedCoordinator];
  [v7 *a3];
}

void sub_607108(void *a1, uint64_t a2, uint64_t a3, const char **a4, SEL *a5)
{
  v11.receiver = a1;
  v11.super_class = type metadata accessor for WebViewController();
  v8 = *a4;
  v9 = v11.receiver;
  objc_msgSendSuper2(&v11, v8, a3);
  v10 = [objc_opt_self() sharedCoordinator];
  [v10 *a5];
}

void WebViewController.webViewController(_:handle:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OBJC_IVAR____TtC18ASMessagesProvider17WebViewController_protocolDelegate;
  swift_beginAccess();
  v8 = *(v4 + v7);
  v9 = sub_75E760();

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_607798;
  aBlock[3] = &unk_899E78;
  v10 = _Block_copy(aBlock);

  [v9 addFinishBlock:v10];
  _Block_release(v10);
}

{
  v7 = OBJC_IVAR____TtC18ASMessagesProvider17WebViewController_protocolDelegate;
  swift_beginAccess();
  v8 = *(v4 + v7);
  v9 = sub_75E750();

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_607798;
  aBlock[3] = &unk_899EA0;
  v10 = _Block_copy(aBlock);

  [v9 addFinishBlock:v10];
  _Block_release(v10);
}

uint64_t sub_60729C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_60740C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_756F60();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id WebViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WebViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_607724()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

double sub_6077E4()
{
  v0 = sub_763560();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_7604B0();
  v4 = *(v15 - 8);
  __chkstk_darwin(v15);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7656C0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA20();
  sub_765630();
  (*(v8 + 8))(v10, v7);
  (*(v1 + 104))(v3, enum case for BreakoutDetailsDisplayProperties.DetailPosition.center(_:), v0);
  sub_28FF04(v3, v6);
  (*(v1 + 8))(v3, v0);
  sub_75DA40();
  sub_7604D0();
  sub_607AB4(&unk_94B7F0, &type metadata accessor for LargeHeroBreakoutLayout);
  sub_766ED0();
  v12 = v11;
  swift_unknownObjectRelease();
  (*(v4 + 8))(v6, v15);
  return v12;
}

uint64_t sub_607AB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_607AFC()
{
  sub_BD88(&unk_95D700);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_780120;
  *(inited + 32) = UIActivityTypeAirDrop;
  *(inited + 40) = UIActivityTypeCopyToPasteboard;
  *(inited + 48) = UIActivityTypeMessage;
  *(inited + 56) = UIActivityTypePostToFacebook;
  *(inited + 64) = UIActivityTypePostToTwitter;
  *(inited + 72) = UIActivityTypePostToWeibo;
  v1 = UIActivityTypeAirDrop;
  v2 = UIActivityTypeCopyToPasteboard;
  v3 = UIActivityTypeMessage;
  v4 = UIActivityTypePostToFacebook;
  v5 = UIActivityTypePostToTwitter;
  v6 = UIActivityTypePostToWeibo;
  v7 = sub_1A210C(inited);
  swift_setDeallocating();
  type metadata accessor for ActivityType(0);
  result = swift_arrayDestroy();
  qword_95EC40 = v7;
  return result;
}

id sub_607E64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextActivityItemProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_607F8C()
{
  v1 = v0;
  v2 = sub_767140();
  __chkstk_darwin(v2 - 8);
  v23.receiver = v0;
  v23.super_class = type metadata accessor for PurchasesLoadingViewController();
  objc_msgSendSuper2(&v23, "viewDidLoad");
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    sub_BE70(0, &qword_93E540);
    v5 = sub_76A000();
    [v4 setBackgroundColor:v5];

    sub_60929C(&qword_95ECE8, v6, type metadata accessor for PurchasesLoadingViewController);
    swift_unknownObjectRetain();
    sub_75D970();
    sub_75A160();
    sub_767130();
    v7 = objc_allocWithZone(sub_767160());
    v8 = sub_767150();
    v9 = OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_overlayViewController;
    v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_overlayViewController];
    sub_761930();

    v11 = *&v1[v9];
    *&v1[v9] = v8;
    v12 = v8;

    v13 = [v1 view];
    if (v13)
    {
      v14 = v13;
      [v13 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v24 = v16;
      v25 = v18;
      v26 = v20;
      v27 = v22;
      v28 = 0;
      sub_761920();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_608264()
{
  v43.receiver = v0;
  v43.super_class = type metadata accessor for PurchasesLoadingViewController();
  objc_msgSendSuper2(&v43, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_overlayViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];
        v8 = v7;
        v10 = v9;
        v12 = v11;
        v14 = v13;

        [v4 setFrame:{v8, v10, v12, v14}];
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_5:
  v15 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_familyPurchases];
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v15;
  v17 = [v16 view];
  if (!v17)
  {
    goto LABEL_16;
  }

  v18 = v17;
  v19 = [v0 view];
  if (!v19)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v20 = v19;
  [v19 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [v18 setFrame:{v22, v24, v26, v28}];
LABEL_9:
  v29 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_loggedInUserPurchases];
  if (!v29)
  {
    return;
  }

  v30 = v29;
  v31 = [v30 view];
  if (!v31)
  {
    goto LABEL_18;
  }

  v32 = v31;
  v33 = [v0 view];
  if (!v33)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v34 = v33;
  [v33 bounds];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  [v32 setFrame:{v36, v38, v40, v42}];
}

id sub_6084D8()
{
  v1 = v0;
  v2 = sub_7684B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_overlayViewController;
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_overlayViewController];
  sub_761930();

  v8 = *&v0[v6];
  *&v0[v6] = 0;

  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = result;
  [result bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v46 = v12;
  v47 = v14;
  v48 = v16;
  v49 = v18;
  v50 = 0;
  result = sub_761920();
  v19 = OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_loggedInUserPurchases;
  if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_loggedInUserPurchases])
  {
    return result;
  }

  sub_BD88(&qword_955BF8);
  v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_objectGraph];
  sub_768900();
  sub_768ED0();
  type metadata accessor for ASDPurchaseHistoryContext(0);
  v44[0] = 1;
  sub_768490();
  sub_7688C0();
  v21 = *(v3 + 8);
  v21(v5, v2);
  LOBYTE(v44[0]) = 1;
  sub_768490();
  v22 = sub_7688C0();

  v21(v5, v2);
  v43[0] = v22;
  v43[1] = sub_1362C(v22);
  v43[2] = v23;
  sub_BE70(0, &qword_959CF0);

  sub_768ED0();
  sub_134D8(v45, v44);
  sub_BD88(&qword_955CB0);
  v24 = sub_75ED10();
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_77E280;
  v29 = v28 + v27;
  v30 = *(v25 + 104);
  v30(v29, enum case for PurchasesContentMode.all(_:), v24);
  v30(v29 + v26, enum case for PurchasesContentMode.notOnDevice(_:), v24);
  sub_7616C0();
  swift_allocObject();
  swift_unknownObjectRetain();
  v31 = sub_761610();
  v32 = sub_60929C(&qword_955CB8, 255, &type metadata accessor for PurchasesContentPresenter);

  v33 = sub_6A0B30(v20, v31, v32, _swiftEmptyArrayStorage, 0xD000000000000014, 0x80000000007EDBB0);
  v34 = objc_allocWithZone(type metadata accessor for PurchasesViewController());
  sub_5AB0B4(v31, v33);
  v35 = *&v1[v19];
  *&v1[v19] = v36;
  v37 = v36;

  v38 = v37;
  [v38 willMoveToParentViewController:v1];
  [v1 addChildViewController:v38];
  result = [v1 view];
  if (!result)
  {
    goto LABEL_8;
  }

  v39 = result;
  result = [v38 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v40 = result;
  [v39 addSubview:result];

  [v38 didMoveToParentViewController:v1];
  v41 = [v38 title];

  [v1 setTitle:v41];
  v42 = [v38 collectionView];
  [v1 setContentScrollView:v42 forEdge:15];
  swift_unknownObjectRelease();

  return sub_BEB8(v45);
}

id sub_608A9C()
{
  v1 = v0;
  v2 = sub_768E70();
  __chkstk_darwin(v2);
  v3 = OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_overlayViewController;
  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_overlayViewController];
  sub_761930();

  v5 = *&v0[v3];
  *&v0[v3] = 0;

  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  [result bounds];

  result = sub_761920();
  v8 = OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_familyPurchases;
  if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_familyPurchases])
  {
    return result;
  }

  v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_objectGraph];
  sub_768900();

  sub_768ED0();
  sub_760C10();
  swift_allocObject();
  v10 = sub_760B80();
  v11 = sub_60929C(&qword_95ECE0, 255, &type metadata accessor for FamilyPurchasesPresenter);

  v12 = sub_6A0B30(v9, v10, v11, _swiftEmptyArrayStorage, 0xD000000000000013, 0x80000000007EDB90);
  v13 = objc_allocWithZone(type metadata accessor for FamilyPurchasesViewController());
  v14 = sub_2CB40(v10, v12);
  v15 = *&v1[v8];
  *&v1[v8] = v14;
  v16 = v14;

  v17 = v16;
  [v17 willMoveToParentViewController:v1];
  [v1 addChildViewController:v17];
  result = [v1 view];
  if (!result)
  {
    goto LABEL_8;
  }

  v18 = result;
  result = [v17 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v19 = result;
  [v18 addSubview:result];

  [v17 didMoveToParentViewController:v1];
  v20 = [v17 title];

  [v1 setTitle:v20];
  v21 = [v17 collectionView];
  [v1 setContentScrollView:v21 forEdge:15];
}

void sub_608E24()
{
  v1 = v0;
  v2 = sub_767140();
  __chkstk_darwin(v2 - 8);
  sub_767130();
  v3 = objc_allocWithZone(sub_767160());
  v4 = sub_767150();
  v5 = OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_overlayViewController;
  v6 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_overlayViewController];
  sub_761930();

  v7 = *&v1[v5];
  *&v1[v5] = v4;
  v8 = v4;

  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];

    sub_761920();
  }

  else
  {
    __break(1u);
  }
}

id sub_608F7C()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_overlayViewController];
  sub_761930();

  v3 = *&v0[v1];
  *&v0[v1] = 0;

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];

    return sub_761920();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_609074()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PurchasesLoadingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_6091B0(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_loggedInUserPurchases] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_familyPurchases] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_overlayViewController] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_objectGraph] = a2;
  sub_75A110();
  sub_768900();

  sub_768ED0();
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_artworkLoader] = v6;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_presenter] = a1;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for PurchasesLoadingViewController();

  return objc_msgSendSuper2(&v5, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_60929C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_6092F8()
{
  result = qword_94FBB0;
  if (!qword_94FBB0)
  {
    sub_759240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94FBB0);
  }

  return result;
}

uint64_t sub_609350()
{
  v0 = sub_7687C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&qword_94DDC0);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return sub_768F30();
}

void sub_609438()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong collectionView];
    if (v2)
    {
      v3 = v2;
      isa = sub_757550().super.isa;
      [v1 collectionView:v3 didSelectItemAtIndexPath:isa];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_609500()
{
  v1 = v0;
  v46 = swift_isaMask & *v0;
  v2 = sub_768380();
  v53 = *(v2 - 8);
  v54 = v2;
  __chkstk_darwin(v2);
  v51 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_7683C0();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_7683E0();
  v48 = *(v55 - 8);
  __chkstk_darwin(v55);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v47 = &v45 - v8;
  v9 = sub_757640();
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  __chkstk_darwin(v9);
  v45 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v58 = &v45 - v12;
  v13 = sub_762BD0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_9593C8;
  result = swift_beginAccess();
  v19 = *(v0 + v17);
  if (!v19)
  {
    return result;
  }

  v20 = v19;
  aBlock[6] = sub_761DA0();
  aBlock[7] = v21;
  sub_76A6E0();
  sub_762BE0();
  sub_762D70();
  v23 = v22;

  result = (*(v14 + 8))(v16, v13);
  if (v23)
  {
    return result;
  }

  sub_761D90();
  v24 = v58;
  sub_7575B0();
  result = [v1 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v25 = result;
  v26.super.isa = sub_757550().super.isa;
  result = [v1 collectionView];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v27 = result;
  [result contentInset];
  v29 = v28;

  [v25 _scrollToItemAtIndexPath:v26.super.isa atScrollPosition:1 additionalInsets:1 animated:{16.0 - v29, 0.0, 0.0, 0.0}];
  if (sub_761D80())
  {
    sub_761D90();
    if ((v30 & 1) == 0)
    {
      sub_12EA98();
      v31 = sub_769970();
      sub_7683D0();
      v32 = v47;
      sub_768450();
      v48 = *(v48 + 8);
      (v48)(v6, v55);
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = v56;
      v34 = v57;
      v36 = v45;
      (*(v56 + 16))(v45, v58, v57);
      v37 = (*(v35 + 80) + 80) & ~*(v35 + 80);
      v38 = swift_allocObject();
      v39 = v46;
      *(v38 + 16) = *(v46 + 560);
      *(v38 + 24) = *(v39 + 568);
      *(v38 + 40) = *(v39 + 584);
      *(v38 + 48) = *(v39 + 592);
      *(v38 + 64) = *(v39 + 608);
      *(v38 + 72) = v33;
      (*(v35 + 32))(v38 + v37, v36, v34);
      aBlock[4] = sub_609D40;
      aBlock[5] = v38;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23F0CC;
      aBlock[3] = &unk_899FE8;
      v40 = _Block_copy(aBlock);

      v41 = v49;
      sub_7683A0();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_4C81C();
      sub_BD88(&qword_940350);
      sub_4C874();
      v42 = v51;
      v43 = v54;
      sub_76A5A0();
      sub_769930();
      _Block_release(v40);

      (*(v53 + 8))(v42, v43);
      v44 = v41;
      v24 = v58;
      (*(v50 + 8))(v44, v52);
      (v48)(v32, v55);
    }
  }

  return (*(v56 + 8))(v24, v57);
}

uint64_t sub_609C44()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_609C7C()
{
  v1 = sub_757640();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_609DEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t AXArcadeSubscribePageLayout.init(metrics:headerView:contentView:detailsView:offerButton:dismissButton:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  memcpy(a7, __src, 0x190uLL);
  v13 = *(a2 + 16);
  *(a7 + 400) = *a2;
  *(a7 + 416) = v13;
  *(a7 + 432) = *(a2 + 32);
  v14 = *(a3 + 16);
  *(a7 + 440) = *a3;
  *(a7 + 456) = v14;
  *(a7 + 472) = *(a3 + 32);
  sub_10914(a4, a7 + 480);
  sub_10914(a5, a7 + 520);

  return sub_10914(a6, a7 + 560);
}

uint64_t AXArcadeSubscribePageLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v80 = a2;
  v81 = sub_7664F0();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_76A920();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170(v6 + 10, v6[13]);
  sub_33964();
  sub_766700();
  v73 = v18;
  v19 = *(v15 + 8);
  v19(v17, v14);
  sub_B170(v7, v7[3]);
  sub_33964();
  sub_766700();
  v21 = v20;
  v19(v17, v14);
  sub_B170(v7 + 5, v7[8]);
  sub_33964();
  sub_766700();
  v23 = v22;
  *&v78[0] = v19;
  v19(v17, v14);
  ObjectType = swift_getObjectType();
  v24 = sub_60BBA8(a1, v6, ObjectType, a5, a6);
  if (v21 > v24)
  {
    v24 = v21;
  }

  if (v24 >= v23)
  {
    v24 = v23;
  }

  v71 = v24;
  sub_6D310((v6 + 50), &v87);
  v25 = v89;
  if (v89)
  {
    sub_10914(&v87, v82);
    sub_B170(v82, v83);
    sub_7665B0();
    v27 = v26;
    v29 = v28;
    v95.origin.x = a3;
    v95.origin.y = a4;
    v95.size.width = a5;
    v95.size.height = a6;
    v30 = CGRectGetMidX(v95) + v27 * -0.5;
    v96.origin.x = a3;
    v96.origin.y = a4;
    v96.size.width = a5;
    v96.size.height = a6;
    MinY = CGRectGetMinY(v96);
    sub_B170(v82, v83);
    sub_769D20();
    sub_766530();
    sub_BEB8(v82);
  }

  else
  {
    sub_10A2C(&v87, &unk_943B10);
    v30 = 0.0;
    MinY = 0.0;
    v27 = 0.0;
    v29 = 0.0;
  }

  *&v75 = v6 + 35;
  sub_6D310((v6 + 55), &v87);
  v74 = a6;
  if (v89)
  {
    sub_10914(&v87, v82);
    if (v25)
    {
      v97.origin.x = v30;
      v97.origin.y = MinY;
      v97.size.width = v27;
      v97.size.height = v29;
      MaxY = CGRectGetMaxY(v97);
    }

    else
    {
      v98.origin.x = a3;
      v98.origin.y = a4;
      v98.size.width = a5;
      v98.size.height = a6;
      MaxY = CGRectGetMinY(v98);
    }

    v40 = v73 + MaxY;
    v99.origin.x = a3;
    v99.origin.y = a4;
    v99.size.width = a5;
    v99.size.height = a6;
    MinX = CGRectGetMinX(v99);
    v100.origin.x = a3;
    v100.origin.y = a4;
    v100.size.width = a5;
    v100.size.height = a6;
    Width = CGRectGetWidth(v100);
    sub_B170(v82, v83);
    v34 = a5;
    v35 = a4;
    v72 = Width;
    v73 = v40;
    v38 = v71;
    sub_769D20();
    sub_766530();
    sub_BEB8(v82);
  }

  else
  {
    sub_10A2C(&v87, &unk_943B10);
    if (v25)
    {
      v33 = v30;
    }

    else
    {
      v33 = a3;
    }

    v34 = a5;
    v35 = a4;
    if (v25)
    {
      v36 = MinY;
    }

    else
    {
      v36 = a4;
    }

    if (v25)
    {
      v37 = v27;
    }

    else
    {
      v37 = 0.0;
    }

    v72 = v37;
    v73 = v36;
    if (v25)
    {
      v38 = v29;
    }

    else
    {
      v38 = 0.0;
    }

    MinX = v33;
  }

  v71 = MinX;
  sub_B170(v6 + 20, v6[23]);
  sub_33964();
  sub_766700();
  v43 = v42;
  v44 = v78[0];
  (*&v78[0])(v17, v14);
  sub_B170(v6 + 15, v6[18]);
  sub_33964();
  sub_766700();
  v46 = v45;
  (*&v44)(v17, v14);
  sub_B170(v6 + 25, v6[28]);
  sub_33964();
  sub_766700();
  v48 = v47;
  (*&v44)(v17, v14);
  sub_134D8((v6 + 30), v90);
  v49 = *(v75 + 32);
  v50 = *(v75 + 16);
  *v78 = *v75;
  v75 = v50;
  sub_134D8((v6 + 40), &v93);
  sub_134D8((v6 + 45), &v94);
  *&v87 = v46;
  *(&v87 + 1) = v43;
  v88 = v48;
  v89 = v43;
  v91 = v75;
  *&v90[40] = *v78;
  v92 = v49;
  sub_23A450(&v87, v82);
  sub_134D8((v6 + 60), &v84);
  sub_134D8((v6 + 65), &v85);
  sub_134D8((v6 + 70), &v86);
  v101.origin.x = a3;
  v101.origin.y = v35;
  v101.size.width = v34;
  v51 = v34;
  v52 = v74;
  v101.size.height = v74;
  v53 = CGRectGetMinX(v101);
  v102.origin.x = MinX;
  v55 = v72;
  v54 = v73;
  v102.origin.y = v73;
  v102.size.width = v72;
  v102.size.height = v38;
  v70 = CGRectGetMaxY(v102);
  v103.origin.x = a3;
  v103.origin.y = v35;
  v103.size.width = v51;
  v103.size.height = v52;
  v56 = CGRectGetWidth(v103);
  v78[0] = a3;
  v104.origin.x = a3;
  v57 = v53;
  v58 = v56;
  *&v75 = v35;
  v104.origin.y = v35;
  v104.size.width = v51;
  v104.size.height = v52;
  v59 = CGRectGetMaxY(v104);
  v105.size.height = v38;
  v60 = v59;
  v105.origin.y = v54;
  v105.size.width = v55;
  v61 = v70;
  v105.origin.x = v71;
  v62 = v60 - CGRectGetMaxY(v105);
  sub_60BF54(v58, a1, v82);
  v64 = v63;
  v106.origin.x = v57;
  v106.origin.y = v61;
  v106.size.width = v58;
  v106.size.height = v62;
  if (v64 <= CGRectGetHeight(v106))
  {
    v65 = v77;
    sub_60A934(v77, v57, v61, v58, v62);
  }

  else
  {
    v65 = v77;
    sub_60AE40(a1, v77, v57, v61, v58, v62);
  }

  sub_7664E0();
  sub_7664D0();
  v66 = v78[0];
  v107.origin.x = v78[0];
  v67 = *&v75;
  *&v107.origin.y = v75;
  v107.size.width = v51;
  v107.size.height = v52;
  CGRectGetHeight(v107);
  v108.origin.x = v66;
  v108.origin.y = v67;
  v108.size.width = v51;
  v108.size.height = v52;
  CGRectGetMinX(v108);
  v109.origin.x = v66;
  v109.origin.y = v67;
  v109.size.width = v51;
  v109.size.height = v52;
  CGRectGetMinY(v109);
  v110.origin.x = v66;
  v110.origin.y = v67;
  v110.size.width = v51;
  v110.size.height = v52;
  CGRectGetWidth(v110);
  sub_7664B0();
  (*(v79 + 8))(v65, v81);
  sub_23AABC(v82);
  return sub_23AB10(&v87);
}

double AXArcadeSubscribePageLayout.contentViewSize(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v7 = sub_76A920();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170(v3, v3[3]);
  sub_33964();
  sub_766700();
  v11 = *(v8 + 8);
  v11(v10, v7);
  ObjectType = swift_getObjectType();
  sub_60BBA8(a1, v3, ObjectType, a2, a3);
  sub_B170(v3 + 5, v3[8]);
  sub_33964();
  sub_766700();
  v11(v10, v7);
  return a2;
}

void AXArcadeSubscribePageLayout.Metrics.offerButtonMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[35] = a1;
  v4[36] = a2;
  v4[37] = a3;
  v4[38] = a4;
}

uint64_t sub_60A934@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v6 = v5;
  v22[3] = a1;
  v11 = sub_76A920();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 + 8);
  v16 = *(v5 + 24);
  sub_B170((v5 + 112), *(v5 + 136));
  sub_33964();
  sub_766700();
  v22[1] = v17;
  v18 = *(v12 + 8);
  v18(v14, v11);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  v19 = CGRectGetWidth(v23) - v15 - v16;
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetHeight(v24);
  sub_B170(v6 + 24, v6[27]);
  *&v22[2] = v19;
  sub_7665B0();
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  CGRectGetMidX(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  CGRectGetMinY(v26);
  sub_B170(v6 + 24, v6[27]);
  sub_769D20();
  sub_766530();
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  CGRectGetMaxY(v27);
  sub_B170(v6 + 19, v6[22]);
  sub_33964();
  sub_766700();
  v18(v14, v11);
  sub_B170(v6 + 34, v6[37]);
  v20 = sub_766540();
  sub_B170(v6 + 34, v6[37]);
  if ((v20 & 1) == 0)
  {
    sub_7665B0();
    v28.origin.x = a2;
    v28.origin.y = a3;
    v28.size.width = a4;
    v28.size.height = a5;
    CGRectGetMidX(v28);
    sub_B170((v5 + 272), *(v5 + 296));
    sub_769D20();
  }

  sub_766530();
  sub_B170((v5 + 232), *(v5 + 256));
  if (sub_766540())
  {
    sub_B170((v5 + 232), *(v5 + 256));
  }

  else
  {
    v29.origin.x = a2;
    v29.origin.y = a3;
    v29.size.width = a4;
    v29.size.height = a5;
    CGRectGetWidth(v29);
    sub_B170((v5 + 32), *(v5 + 56));
    sub_33964();
    sub_766700();
    v18(v14, v11);
    v30.origin.x = a2;
    v30.origin.y = a3;
    v30.size.width = a4;
    v30.size.height = a5;
    CGRectGetMidX(v30);
    sub_B170((v5 + 232), *(v5 + 256));
    sub_769D20();
  }

  sub_766530();
  return sub_7664B0();
}

uint64_t sub_60AE40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v60 = a1;
  v66 = a2;
  v83 = sub_75E800();
  v75 = *(v83 - 8);
  v88 = v75;
  __chkstk_darwin(v83);
  v57 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_75E820();
  v87 = *(v85 - 8);
  __chkstk_darwin(v85);
  v55 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_75E840();
  v89 = *(v86 - 8);
  __chkstk_darwin(v86);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v15;
  v65 = sub_75E870();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_76A920();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v6;
  v61 = *(v6 + 8);
  v21 = v61;
  v23 = *(v6 + 16);
  v24 = *(v6 + 24);
  v98.origin.x = a3;
  v98.origin.y = a4;
  v98.size.width = a5;
  v98.size.height = a6;
  v62 = CGRectGetWidth(v98) - v21 - v24;
  v99.origin.x = a3;
  v99.origin.y = a4;
  v99.size.width = a5;
  v99.size.height = a6;
  CGRectGetWidth(v99);
  sub_B170((v6 + 32), *(v6 + 56));
  sub_33964();
  sub_766700();
  (*(v18 + 8))(v20, v17);
  sub_BD88(&qword_9417D8);
  v25 = *(sub_75E850() - 8);
  v56 = *(v25 + 72);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v58 = 2 * v56;
  v27 = swift_allocObject();
  v84 = xmmword_77DC20;
  v59 = v27;
  *(v27 + 16) = xmmword_77DC20;
  v68 = v27 + v26;
  v80 = enum case for _VerticalFlowLayout.Child.Placement.top(_:);
  v28 = *(v89 + 104);
  v81 = v89 + 104;
  v82 = v28;
  v28(v15);
  v79 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.center(_:);
  v29 = v87;
  v30 = *(v87 + 104);
  v77 = v87 + 104;
  v78 = v30;
  v31 = v55;
  v32 = v85;
  v30(v55);
  v96 = &type metadata for CGFloat;
  v97 = &protocol witness table for CGFloat;
  v95 = v22;
  v93 = &type metadata for CGFloat;
  v94 = &protocol witness table for CGFloat;
  v92 = v23;
  v76 = sub_BD88(&qword_9417E0);
  v67 = *(v75 + 72);
  v33 = v88;
  v75 = *(v88 + 80);
  v54 = (v75 + 32) & ~v75;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_77B6D0;
  sub_75E7D0();
  v91 = v34;
  v73 = sub_3718CC();
  v72 = sub_BD88(&qword_9417F0);
  v74 = sub_7DCC8();
  v35 = v57;
  v36 = v83;
  sub_76A5A0();
  v37 = v52;
  sub_75E830();
  v38 = *(v33 + 8);
  v88 = v33 + 8;
  v69 = v38;
  v39 = v35;
  v38(v35, v36);
  v40 = *(v29 + 8);
  v87 = v29 + 8;
  v71 = v40;
  v40(v31, v32);
  v41 = *(v89 + 8);
  v89 += 8;
  v70 = v41;
  v42 = v86;
  v41(v37, v86);
  sub_10A2C(&v92, &unk_93F9C0);
  sub_BEB8(&v95);
  sub_B170((v7 + 232), *(v7 + 256));
  sub_766580();
  v82(v37, v80, v42);
  v78(v31, v79, v32);
  v53 = sub_766970();
  v93 = v53;
  v94 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v92);
  sub_766960();
  sub_134D8(v7 + 112, &v91);
  v43 = swift_allocObject();
  *(v43 + 16) = v84;
  sub_75E7F0();
  sub_75E7D0();
  sub_75E7E0();
  v90 = v43;
  v44 = v39;
  v45 = v83;
  sub_76A5A0();
  sub_75E830();
  v69(v44, v45);
  sub_10A2C(&v91, &unk_93F9C0);
  v46 = v85;
  v71(v31, v85);
  v47 = v86;
  v70(v37, v86);
  sub_BEB8(&v95);
  sub_BEB8(&v92);
  v82(v37, v80, v47);
  v78(v31, v79, v46);
  v96 = v53;
  v97 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v95);
  sub_766960();
  sub_134D8(v7 + 152, &v92);
  v48 = swift_allocObject();
  *(v48 + 16) = v84;
  sub_75E7F0();
  sub_75E7D0();
  sub_75E7E0();
  v91 = v48;
  sub_76A5A0();
  sub_75E830();
  v69(v44, v45);
  sub_10A2C(&v92, &unk_93F9C0);
  v71(v31, v85);
  v70(v37, v86);
  sub_BEB8(&v95);
  v49 = v63;
  sub_75E810();
  v100.origin.x = a3;
  v100.origin.y = a4;
  v100.size.width = a5;
  v100.size.height = a6;
  CGRectGetMinX(v100);
  v101.origin.x = a3;
  v101.origin.y = a4;
  v101.size.width = a5;
  v101.size.height = a6;
  CGRectGetMinY(v101);
  v102.origin.x = a3;
  v102.origin.y = a4;
  v102.size.width = a5;
  v102.size.height = a6;
  CGRectGetHeight(v102);
  sub_75E7C0();
  return (*(v64 + 8))(v49, v65);
}

uint64_t sub_60BA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>, CGFloat a6@<D3>)
{
  swift_getObjectType();
  sub_60BF54(a5, a1, v6);
  v14 = v13;
  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a5;
  v17.size.height = a6;
  if (v14 <= CGRectGetHeight(v17))
  {

    return sub_60A934(a2, a3, a4, a5, a6);
  }

  else
  {

    return sub_60AE40(a1, a2, a3, a4, a5, a6);
  }
}

double sub_60BB4C(uint64_t a1, double a2)
{
  swift_getObjectType();

  return sub_60BF54(a2, a1, v2);
}

double sub_60BBA8(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v34 = a3;
  *&v33 = a2 + 35;
  v9 = sub_76A920();
  v32 = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170(a2 + 20, a2[23]);
  sub_33964();
  sub_766700();
  v14 = v13;
  v15 = *(v10 + 8);
  v15(v12, v9);
  sub_B170(a2 + 15, a2[18]);
  sub_33964();
  v16 = a1;
  sub_766700();
  v18 = v17;
  v19 = v32;
  v15(v12, v32);
  sub_B170(a2 + 25, a2[28]);
  sub_33964();
  sub_766700();
  v21 = v20;
  v15(v12, v19);
  sub_134D8((a2 + 30), v43);
  v22 = *(v33 + 32);
  v23 = *(v33 + 16);
  v31 = *v33;
  v33 = v23;
  sub_134D8((a2 + 40), &v46);
  sub_134D8((a2 + 45), &v47);
  v42[0] = v18;
  v42[1] = v14;
  v42[2] = v21;
  v42[3] = v14;
  v44 = v33;
  *&v43[40] = v31;
  v45 = v22;
  sub_23A450(v42, v38);
  sub_134D8((a2 + 60), &v39);
  sub_134D8((a2 + 65), &v40);
  sub_134D8((a2 + 70), &v41);
  sub_B170(a2 + 10, a2[13]);
  sub_33964();
  sub_766700();
  v25 = v24;
  v15(v12, v19);
  sub_60BF54(a4, v16, v38);
  v27 = a5 - v25 - v26;
  sub_6D310((a2 + 50), &v35);
  if (v36)
  {
    sub_10914(&v35, v37);
    sub_B170(v37, v37[3]);
    sub_7665B0();
    v29 = v28;
    sub_23AABC(v38);
    sub_23AB10(v42);
    v27 = v27 - v29;
    sub_BEB8(v37);
  }

  else
  {
    sub_23AABC(v38);
    sub_23AB10(v42);
    sub_10A2C(&v35, &unk_943B10);
  }

  return v27;
}

double sub_60BF54(double a1, uint64_t a2, void *a3)
{
  v5 = sub_76A920();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170(a3 + 24, a3[27]);
  sub_7665B0();
  sub_B170(a3 + 19, a3[22]);
  sub_33964();
  sub_766700();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_B170(a3 + 29, a3[32]);
  if ((sub_766540() & 1) == 0)
  {
    sub_B170(a3 + 4, a3[7]);
    sub_33964();
    sub_766700();
    v9(v8, v5);
  }

  sub_B170(a3 + 34, a3[37]);
  if ((sub_766540() & 1) == 0)
  {
    sub_B170(a3 + 34, a3[37]);
    sub_7665B0();
  }

  sub_B170(a3 + 29, a3[32]);
  if ((sub_766540() & 1) == 0)
  {
    sub_B170(a3 + 34, a3[37]);
    if ((sub_766540() & 1) == 0)
    {
      sub_B170(a3 + 14, a3[17]);
      sub_33964();
      sub_766700();
      v9(v8, v5);
    }
  }

  return a1;
}

uint64_t sub_60C29C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 600))
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

uint64_t sub_60C2E4(uint64_t result, int a2, int a3)
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
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 600) = 1;
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

    *(result + 600) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_60C3D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 400))
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

uint64_t sub_60C420(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
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
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 400) = 1;
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

    *(result + 400) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_60C4E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 312))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_60C528(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

__n128 sub_60C5C8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_60C5FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_60C644(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double *sub_60C6C4(uint64_t a1, int *a2)
{
  v3 = sub_6C330C(a1, a2);
  sub_60CAE8();
  sub_769440();
  if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  return v3;
}

void sub_60C75C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for SeparatorSupplementaryView();
  if (sub_769BC0() == a1 && v10 == a2)
  {

    goto LABEL_10;
  }

  v12 = sub_76A950();

  if (v12)
  {
LABEL_10:
    a5[3] = sub_BD88(&qword_94C620);
    a5[4] = sub_27FE44();
    sub_B1B4(a5);

    sub_769BD0();
    sub_763760();
    return;
  }

  sub_6BED78(a1, a2, a3, a4, a5);
}

uint64_t sub_60C8A4(uint64_t a1)
{
  v2 = sub_75D3C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75D400();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v17 - v12;
  (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.top(_:), v2, v11);
  sub_75D3D0();
  (*(v7 + 16))(v9, v13, v6);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  (*(v7 + 24))(a1 + v14, v9, v6);
  swift_endAccess();
  sub_31D6C4();
  v15 = *(v7 + 8);
  v15(v9, v6);
  return (v15)(v13, v6);
}

id sub_60CAE8()
{
  v20 = sub_76A920();
  v0 = *(v20 - 8);
  __chkstk_darwin(v20);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_75B680();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75B670();
  v7 = objc_opt_self();
  v8 = [v7 fractionalWidthDimension:1.0];
  v9 = sub_75DA30();
  sub_75D3F0();
  v11 = v10;

  v12 = [v7 absoluteDimension:v11];
  v13 = [objc_opt_self() sizeWithWidthDimension:v8 heightDimension:v12];

  type metadata accessor for SeparatorSupplementaryView();
  sub_769BC0();
  sub_75DA40();
  sub_766470();
  sub_2A8548();
  sub_766700();
  v15 = v14;
  swift_unknownObjectRelease();
  (*(v0 + 8))(v2, v20);
  v16 = sub_769210();

  v17 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v13 elementKind:v16 alignment:1 absoluteOffset:{0.0, v15}];

  (*(v4 + 8))(v6, v3);
  return v17;
}

uint64_t sub_60CDF8(uint64_t a1)
{
  v2 = sub_7656C0();
  v55 = *(v2 - 8);
  __chkstk_darwin(v2);
  v54 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_7649E0();
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v51 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_BD88(&unk_94F1F0);
  v6 = *(v49 - 8);
  __chkstk_darwin(v49);
  v8 = &v42 - v7;
  v9 = sub_75ECD0();
  v47 = *(v9 - 8);
  v48 = v9;
  __chkstk_darwin(v9);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_948720);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  v17 = sub_766690();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v50 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v56 = &v42 - v21;
  sub_75BEC0();
  sub_60D56C(&qword_940008, &type metadata accessor for ProductMediaItem);
  result = sub_75C750();
  if (v57)
  {
    v44 = a1;
    if (sub_75BEA0())
    {
      sub_765260();
      sub_7666A0();

      v23 = *(v18 + 56);
      v23(v13, 0, 1, v17);
      (*(v18 + 32))(v16, v13, v17);
      v23(v16, 0, 1, v17);
      v24 = (*(v18 + 48))(v16, 1, v17);
    }

    else
    {
      v43 = v6;
      v45 = v2;
      v25 = *(v18 + 56);
      v26 = 1;
      v25(v13, 1, 1, v17);
      if (sub_75BEB0())
      {
        sub_764BC0();

        sub_765260();
        sub_7666A0();

        v26 = 0;
      }

      v25(v16, v26, 1, v17);
      v27 = *(v18 + 48);
      if (v27(v13, 1, v17) != 1)
      {
        sub_9C2A0(v13);
      }

      v2 = v45;
      v6 = v43;
      v24 = v27(v16, 1, v17);
    }

    if (v24 == 1)
    {

      return sub_9C2A0(v16);
    }

    v45 = v2;
    (*(v18 + 32))(v56, v16, v17);
    swift_getKeyPath();
    sub_75C7B0();

    swift_getKeyPath();
    v28 = v51;
    v29 = v49;
    sub_768750();

    (*(v6 + 8))(v8, v29);
    v31 = v52;
    v30 = v53;
    if ((*(v52 + 88))(v28, v53) == enum case for Shelf.ContentsMetadata.productMedia(_:))
    {
      (*(v31 + 96))(v28, v30);
      v32 = v46;
      v33 = v47;
      v34 = v28;
      v35 = v48;
      (*(v47 + 32))(v46, v34, v48);
      v36 = sub_75EC70();
      (*(v33 + 8))(v32, v35);
      v37 = v50;
      v38 = v56;
      v39 = v45;
      if ((v36 & 1) != 0 && (sub_7665E0() & 1) == 0)
      {
        sub_766620();
LABEL_18:
        swift_getKeyPath();
        v40 = v54;
        sub_75C7B0();

        sub_765560();
        (*(v55 + 8))(v40, v39);
        sub_766660();

        v41 = *(v18 + 8);
        v41(v37, v17);
        return (v41)(v38, v17);
      }
    }

    else
    {
      (*(v31 + 8))(v28, v30);
      v37 = v50;
      v38 = v56;
      v39 = v45;
    }

    (*(v18 + 16))(v37, v38, v17);
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_60D56C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_60D5C0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_76A820();

    if (v3)
    {
      sub_BE70(0, &qword_947630);
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_664244(a1);
    if (v6)
    {
      v7 = *(*(a2 + 56) + 8 * v5);
      v8 = v7;
      return v7;
    }
  }

  return 0;
}

id sub_60D688(char a1)
{
  v3 = sub_757640();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ScreenshotsGalleryViewController();
  v15.receiver = v1;
  v15.super_class = v7;
  result = objc_msgSendSuper2(&v15, "viewWillAppear:", a1 & 1);
  v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_selectedIndex];
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_artworks];
    if (v10 >> 62)
    {
      result = sub_76A860();
      if (v9 >= result)
      {
        return result;
      }
    }

    else
    {
      result = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
      if (v9 >= result)
      {
        return result;
      }
    }

    result = [v1 view];
    if (result)
    {
      v11 = result;
      [result layoutIfNeeded];

      sub_7575B0();
      v12 = [v1 collectionView];
      if (v12)
      {
        v13 = v12;
        isa = sub_757550().super.isa;
        [v13 scrollToItemAtIndexPath:isa atScrollPosition:16 animated:0];
      }

      return (*(v4 + 8))(v6, v3);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_60D8A4()
{
  v1 = v0;
  v44.receiver = v0;
  v44.super_class = type metadata accessor for ScreenshotsGalleryViewController();
  objc_msgSendSuper2(&v44, "viewDidLoad");
  v2 = [objc_allocWithZone(UISwipeGestureRecognizer) initWithTarget:v0 action:"swipeStateChangedOn:"];
  [v2 setDirection:8];
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    [v3 addGestureRecognizer:v2];

    v5 = [v0 collectionView];
    if (v5)
    {
      v6 = v5;
      sub_BE70(0, &qword_93E540);
      v7 = sub_76A000();
      [v6 setBackgroundColor:v7];
    }

    v8 = [v1 collectionView];
    if (v8)
    {
      v9 = v8;
      [v8 setAlwaysBounceHorizontal:1];
    }

    v10 = [v1 collectionView];
    if (v10)
    {
      v11 = v10;
      [v10 setShowsHorizontalScrollIndicator:0];
    }

    v12 = [v1 collectionView];
    if (v12)
    {
      v13 = v12;
      [v12 setDecelerationRate:UIScrollViewDecelerationRateFast];
    }

    v14 = [v1 collectionView];
    if (v14)
    {
      v15 = v14;
      [v14 setRemembersLastFocusedIndexPath:1];
    }

    v16 = [v1 collectionView];
    if (v16)
    {
      v17 = v16;
      [v16 setContentInsetAdjustmentBehavior:2];
    }

    v18 = [v1 collectionView];
    if (v18)
    {
      v19 = v18;
      type metadata accessor for ScreenshotGalleryCollectionViewCell();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_769BD0();
      v21 = sub_769210();

      [v19 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v21];
    }

    v22 = [v1 collectionView];
    if (!v22)
    {

      return;
    }

    v37 = v22;
    [v22 bounds];
    sub_60EDFC(v23, v24);
    v26 = v25;
    v41 = sub_75A310() & 1;
    v27 = sub_60406C(v26, v41);
    v28 = v27;
    v40 = *(v26 + 16);
    if (!v40)
    {
LABEL_30:

      return;
    }

    v29 = 0;
    v30 = (v26 + 48);
    v38 = v27 & 0xC000000000000001;
    v39 = v27 >> 62;
    while (v29 < *(v26 + 16))
    {
      v31 = *(v30 - 2);
      v32 = *(v30 - 1);
      v33 = *v30;
      if (v39)
      {
        v34 = sub_76A860();
      }

      else
      {
        v34 = *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8));
      }

      if (v29 == v34)
      {
        goto LABEL_30;
      }

      if (v38)
      {

        sub_76A770();
      }

      else
      {
        if (v29 >= *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_33;
        }
      }

      v43 = 0;
      memset(v42, 0, sizeof(v42));
      v35 = swift_allocObject();
      swift_weakInit();
      v36 = swift_allocObject();
      *(v36 + 16) = v41;
      *(v36 + 24) = v35;
      *(v36 + 32) = v31;
      *(v36 + 40) = v32;
      *(v36 + 48) = v33;
      *(v36 + 56) = v29;

      sub_75A040();

      sub_10A2C(v42, &unk_9443A0);

      v30 += 3;
      if (v40 == ++v29)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  __break(1u);
}

void sub_60DDD4(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ScreenshotsGalleryViewController();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 collectionViewLayout];

    [v5 invalidateLayout];
  }

  v6 = [v1 collectionView];
  if (v6)
  {
    v7 = v6;
    [v6 setNeedsLayout];
  }
}

void sub_60DF08(void *a1, double a2, double a3)
{
  v15.receiver = v3;
  v15.super_class = type metadata accessor for ScreenshotsGalleryViewController();
  objc_msgSendSuper2(&v15, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = [v3 collectionView];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 collectionViewLayout];

    [v9 invalidateLayout];
  }

  v10 = [v3 collectionView];
  if (v10)
  {
    v11 = v10;
    [v10 setNeedsLayout];
  }

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14[4] = sub_61037C;
  v14[5] = v12;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_6C6800;
  v14[3] = &unk_89A298;
  v13 = _Block_copy(v14);

  [a1 animateAlongsideTransition:v13 completion:0];
  _Block_release(v13);
}

void sub_60E0A0()
{
  v0 = sub_757640();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *&Strong[OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_selectedIndex];

    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = [v6 collectionView];

      if (v8)
      {
        sub_BD88(&qword_95B250);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_77E280;
        *(v9 + 32) = 0;
        *(v9 + 40) = v5;
        sub_757540();
        isa = sub_757550().super.isa;
        (*(v1 + 8))(v3, v0);
        [v8 scrollToItemAtIndexPath:isa atScrollPosition:16 animated:1];
      }
    }
  }
}

uint64_t sub_60E384(void *a1)
{
  v2 = v1;
  type metadata accessor for ScreenshotGalleryCollectionViewCell();
  sub_769BD0();
  v4 = sub_769210();

  isa = sub_757550().super.isa;
  v6 = [a1 dequeueReusableCellWithReuseIdentifier:v4 forIndexPath:isa];

  v7 = swift_dynamicCastClassUnconditional();
  *(*(v7 + OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_platform) = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_platform);
  swift_retain_n();
  v8 = v6;

  sub_4FD578();

  return v7;
}

double sub_60E9F8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, SEL *a6)
{
  v8 = a4;
  v9 = a1;
  v10 = [v9 traitCollection];
  v11 = sub_7699E0();

  if (v11)
  {
    v12 = 30.0;
  }

  else
  {
    v12 = 15.0;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = v8;
    [v14 *a6];
  }

  return v12;
}

uint64_t sub_60EAC0(void *a1)
{
  v2 = v1;
  v4 = sub_BD88(&unk_94EE60);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = sub_757640();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 contentOffset];
  v16 = v15;
  [a1 bounds];
  Width = CGRectGetWidth(v25);
  [a1 bounds];
  Height = CGRectGetHeight(v26);
  v19 = [v2 collectionView];
  if (!v19)
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    return sub_10A2C(v9, &unk_94EE60);
  }

  v20 = v19;
  v21 = [v19 indexPathForItemAtPoint:{v16 + Width * 0.5, Height * 0.5}];

  if (v21)
  {
    sub_757590();

    (*(v11 + 56))(v6, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v6, 1, 1, v10);
  }

  sub_2F8C4C(v6, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_10A2C(v9, &unk_94EE60);
  }

  (*(v11 + 32))(v14, v9, v10);
  v23 = sub_7575C0();
  result = (*(v11 + 8))(v14, v10);
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_selectedIndex] = v23;
  return result;
}

void sub_60EDFC(double a1, double a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_artworks);
  if (v3 >> 62)
  {
    v29 = a2;
    v30 = a1;
    v31 = sub_76A860();
    a1 = v30;
    a2 = v29;
    v4 = v31;
    if (!v31)
    {
      return;
    }
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    if (a1 > a2)
    {
      v6 = a1;
    }

    else
    {
      v6 = a2;
    }

    v7 = _swiftEmptyArrayStorage;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = sub_76A770();
      }

      else
      {
        v8 = *(v3 + 8 * v5 + 32);
      }

      v9 = sub_765150();
      sub_765260();
      v11 = v10;
      v13 = v12;
      sub_765260();
      v15 = v14;
      v17 = v16;
      sub_765260();
      if (v11 >= v6)
      {
        v20 = v6;
      }

      else
      {
        v20 = v11;
      }

      v21 = v17 * v20 / v18;
      if (v13 >= v6)
      {
        v22 = v6;
      }

      else
      {
        v22 = v13;
      }

      v23 = v15 * v22 / v19;
      if (v9)
      {
        v24 = v22;
      }

      else
      {
        v24 = v21;
      }

      if (v9)
      {
        v25 = v23;
      }

      else
      {
        v25 = v20;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_7B0D8(0, *(v7 + 2) + 1, 1, v7);
      }

      v27 = *(v7 + 2);
      v26 = *(v7 + 3);
      if (v27 >= v26 >> 1)
      {
        v7 = sub_7B0D8((v26 > 1), v27 + 1, 1, v7);
      }

      *(v7 + 2) = v27 + 1;
      v28 = &v7[3 * v27];
      *(v28 + 4) = v8;
      ++v5;
      v28[5] = v25;
      v28[6] = v24;
    }

    while (v4 != v5);
  }
}

void sub_60EFC0()
{

  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_galleryLayout);
}

id sub_60F040()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenshotsGalleryViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_60F130(objc_class *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_757640();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v3 collectionView];
  if (v11)
  {
    v12 = v11;
    sub_BD88(&qword_95B250);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_77E280;
    *(v13 + 32) = 0;
    *(v13 + 40) = a2;
    sub_757540();
    isa = sub_757550().super.isa;
    (*(v7 + 8))(v10, v6);
    v15 = [v12 cellForItemAtIndexPath:isa];

    if (v15)
    {
      type metadata accessor for ScreenshotGalleryCollectionViewCell();
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = *(*(v16 + OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
        v20.value.super.isa = a1;
        v20.is_nil = 0;
        sub_7591D0(v20, v18);

        v15 = v17;
      }
    }
  }
}

unint64_t sub_60F2E4()
{
  v1 = v0;
  v2 = sub_758720();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_766690();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScreenshotGalleryCollectionViewCell();
  v10 = swift_dynamicCastClassUnconditional();
  v11 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_artworks];
  result = sub_7575C0();
  v53 = v2;
  v54 = v6;
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = sub_76A770();
LABEL_5:
    v52 = OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_borderedScreenshotView;
    v14 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_borderedScreenshotView] + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_displayConfiguration;
    swift_beginAccess();
    v15 = *(v14 + 64);
    v16 = *(v14 + 80);
    type metadata accessor for BorderedScreenshotView();
    sub_75D650();
    Width = CGRectGetWidth(v55);
    v18 = v15 + v16;
    sub_75D650();
    CGRectGetHeight(v56);
    v19 = [v0 traitCollection];
    v20 = sub_7699E0();

    if (sub_75A310())
    {
      sub_765150();
    }

    sub_765260();
    sub_765260();
    sub_7666A0();
    v21 = Width - v18;

    sub_75A300();

    v22 = v53;
    if ((*(v3 + 88))(v5, v53) != enum case for AppPlatform.watch(_:))
    {
      (*(v3 + 8))(v5, v22, 0.0);
    }

    sub_766650();
    v24 = v23;
    v25 = (v21 - v23) * 0.5;
    if (v20)
    {
      v26 = v52;
      v27 = v54;
      if (v25 >= 60.0)
      {
        goto LABEL_15;
      }

      v28 = 120.0;
    }

    else
    {
      v26 = v52;
      v27 = v54;
      if (v25 >= 30.0)
      {
        goto LABEL_15;
      }

      v28 = 60.0;
    }

    v24 = v21 - v28;
LABEL_15:
    sub_765260();
    if (v29 < v24)
    {
      v24 = v29;
    }

    sub_766660();
    v31 = v30;
    (*(v7 + 8))(v9, v27);
    v32 = &v10[OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_artworkDisplaySize];
    *v32 = v24;
    *(v32 + 1) = v31;
    v32[16] = 0;
    [v10 setNeedsLayout];
    v33 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_fullScreenshotFetcher];
    swift_beginAccess();
    v34 = *(v33 + 16);

    v35 = sub_60D5C0(v13, v34);

    if (v35)
    {
      v36 = *(*&v10[v26] + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
      v37 = v35;
      v38 = v36;
      v39 = sub_759180();

      if (v39)
      {
        sub_BE70(0, &qword_947630);
        v41 = v37;
        v42 = sub_76A1C0();

        v43 = v42 ^ 1;
      }

      else
      {
        v43 = 1;
      }

      v49.is_nil = v43 & 1;
      v49.value.super.isa = v35;
    }

    else
    {
      v44 = sub_60D5C0(v13, *&v1[OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_placeholderImages]);
      if (!v44)
      {
      }

      v37 = v44;
      v45 = *(*&v10[v26] + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
      v46 = sub_759180();

      if (v46)
      {
        sub_BE70(0, &qword_947630);
        v47 = v37;
        v48 = sub_76A1C0();

        if (v48)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v50 = v37;
      }

      v38 = *(*&v10[v26] + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
      v49.value.super.isa = v37;
      v49.is_nil = 1;
    }

    sub_7591D0(v49, v40);

    v47 = v37;
LABEL_29:
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
  {
    v13 = *(v11 + 8 * result + 32);

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_60F8A0(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_758720();
  v76 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v70[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v70[-v10];
  v75 = sub_766690();
  __chkstk_darwin(v75);
  v13 = &v70[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v17 = &v70[-v16];
  v18 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_artworks];
  v19 = v18 >> 62;
  if (v18 >> 62)
  {
    v77 = v15;
    result = sub_76A860();
    v15 = v77;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      return result;
    }
  }

  v74 = a2;
  v77 = v15;
  if ((v18 & 0xC000000000000001) != 0)
  {
    v78 = sub_76A770();
    v21 = v18 & 0xFFFFFFFFFFFFFF8;
    if (!v19)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!*(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_67;
    }

    v78 = *(v18 + 32);

    v21 = v18 & 0xFFFFFFFFFFFFFF8;
    if (!v19)
    {
LABEL_6:
      v22 = *(v21 + 16);
      if (v22)
      {
        goto LABEL_7;
      }
    }
  }

  v22 = sub_76A860();
  if (!v22)
  {
  }

LABEL_7:
  v23 = __OFSUB__(v22, 1);
  result = v22 - 1;
  if (v23)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if ((v18 & 0xC000000000000001) != 0)
  {
    v73 = sub_76A770();
    goto LABEL_13;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_68;
  }

  if (result >= *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_69:
    __break(1u);
    return result;
  }

  v73 = *(v18 + 8 * result + 32);

LABEL_13:
  [a1 bounds];
  v25 = v24;
  v27 = v26;
  v28 = [v3 traitCollection];
  v29 = sub_7699E0();

  if (sub_75A310())
  {
    sub_765150();
  }

  sub_765260();
  sub_765260();
  sub_7666A0();
  if (v29)
  {
    v30 = 123.0;
  }

  else
  {
    v30 = 101.0;
  }

  sub_75A300();

  v72 = *(v76 + 88);
  v31 = v72(v11, v6);
  v71 = enum case for AppPlatform.watch(_:);
  if (v31 != enum case for AppPlatform.watch(_:))
  {
    (*(v76 + 8))(v11, v6, 0.0);
  }

  v32 = v27 - v30;
  sub_766650();
  v34 = v33;
  v35 = (v25 - v33) * 0.5;
  if (v29)
  {
    v36 = &selRef_setTextAlignment_;
    if (v35 >= 60.0)
    {
      goto LABEL_26;
    }

    v37 = 120.0;
  }

  else
  {
    v36 = &selRef_setTextAlignment_;
    if (v35 >= 30.0)
    {
      goto LABEL_26;
    }

    v37 = 60.0;
  }

  v34 = v25 - v37;
LABEL_26:
  sub_765260();
  if (v38 < v34)
  {
    v34 = v38;
  }

  sub_766660();
  v40 = v39;
  v41 = *(v77 + 8);
  v42 = v17;
  v43 = v75;
  v77 += 8;
  v41(v42, v75);
  v44 = v27 - (v40 + 71.0);
  if (v44 <= 71.0)
  {
    v45 = v27 - (v40 + 71.0);
  }

  else
  {
    v45 = (v32 - v40) * 0.5;
  }

  if (v44 <= 71.0)
  {
    v46 = 71.0;
  }

  else
  {
    v46 = (v32 - v40) * 0.5;
  }

  v47 = [v3 v36[23]];
  v48 = sub_7699E0();

  if (sub_75A310())
  {
    sub_765150();
  }

  sub_765260();
  sub_765260();
  sub_7666A0();
  if (v48)
  {
    v49 = 123.0;
  }

  else
  {
    v49 = 101.0;
  }

  sub_75A300();

  v50 = v72(v8, v6);
  if (v50 != v71)
  {
    (*(v76 + 8))(v8, v6, 0.0);
  }

  v51 = v25 - v34;
  v52 = v27 - v49;
  sub_766650();
  v54 = v53;
  v55 = (v25 - v53) * 0.5;
  if (v48)
  {
    v56 = v74;
    if (v55 < 60.0)
    {
      v57 = 120.0;
LABEL_46:
      v54 = v25 - v57;
    }
  }

  else
  {
    v56 = v74;
    if (v55 < 30.0)
    {
      v57 = 60.0;
      goto LABEL_46;
    }
  }

  v58 = v51 * 0.5;
  sub_765260();
  if (v59 < v54)
  {
    v54 = v59;
  }

  sub_766660();
  v61 = v60;
  v41(v13, v43);
  v62 = 71.0;
  v63 = v27 - (v61 + 71.0);
  if (v63 > 71.0)
  {
    v63 = (v52 - v61) * 0.5;
    v62 = v63;
  }

  v64 = (v25 - v54) * 0.5;
  if (v62 >= v46)
  {
    v65 = v46;
  }

  else
  {
    v65 = v62;
  }

  if (v63 >= v45)
  {
    v66 = v45;
  }

  else
  {
    v66 = v63;
  }

  objc_opt_self();
  v67 = swift_dynamicCastObjCClass();
  if (v67)
  {
    v68 = v67;
    v69 = v56;
    [v68 setSectionInset:{v65, v58, v66, v64}];
  }
}

void sub_60FF8C(void *a1)
{
  v2 = v1;
  v4 = sub_758720();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_766690();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 bounds];
  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_artworks];
  v14 = sub_7575C0();
  v19 = v8;
  if ((v13 & 0xC000000000000001) != 0)
  {
    sub_76A770();
    goto LABEL_5;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v14 >= *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_12:
    __break(1u);
    return;
  }

LABEL_5:
  v15 = [v1 traitCollection];
  sub_7699E0();

  if (sub_75A310())
  {
    sub_765150();
  }

  sub_765260();
  sub_765260();
  sub_7666A0();

  sub_75A300();

  if ((*(v5 + 88))(v7, v4) != enum case for AppPlatform.watch(_:))
  {
    (*(v5 + 8))(v7, v4, 0.0);
  }

  sub_766650();
  v16 = v19;
  sub_765260();
  sub_766660();

  (*(v9 + 8))(v12, v16);
  v17 = [v2 traitCollection];
  sub_7699E0();
}

uint64_t sub_610344()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_610384(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_61039C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6103D4()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_610414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v21 = a4;
  v22 = a2;
  v25 = sub_764A60();
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_75FA00();
  v6 = *(v20 - 8);
  __chkstk_darwin(v20);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_BD88(&unk_944D90);
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v18 - v10;
  v12 = sub_BD88(&unk_959540);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - v14;
  sub_75C7E0();
  sub_768760();
  (*(v13 + 8))(v15, v12);
  sub_75C790();
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  v16 = sub_527DE4();
  (*(*(v21 + 8) + 80))(v26, v11, v22, v8, v5, v16, v24);
  swift_unknownObjectRelease();
  (*(v23 + 8))(v5, v25);
  (*(v6 + 8))(v8, v20);
  (*(v9 + 8))(v11, v19);
  return sub_BEB8(v26);
}

void sub_61080C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_757640();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v5 collectionView];
  if (!v15)
  {
    goto LABEL_17;
  }

  v16 = v15;
  v17 = &selRef_setSpeed_;
  [v16 bounds];
  v18 = [v5 layoutAttributesForElementsInRect:?];
  if (!v18 || ((v19 = v18, sub_E59C4(), v20 = sub_769460(), v19, v20 >> 62) ? (v21 = sub_76A860()) : (v21 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8))), , !v21))
  {

LABEL_17:
    v52 = type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout();
    v57.receiver = v5;
    v57.super_class = v52;
    objc_msgSendSuper2(&v57, "targetContentOffsetForProposedContentOffset:withScrollingVelocity:", a1, a2, a3, a4);
    return;
  }

  v22 = type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout();
  v56.receiver = v5;
  v56.super_class = v22;
  objc_msgSendSuper2(&v56, "targetContentOffsetForProposedContentOffset:withScrollingVelocity:", a1, a2, a3, a4);
  [v16 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v58.origin.x = v24;
  v58.origin.y = v26;
  v58.size.width = v28;
  v58.size.height = v30;
  Width = CGRectGetWidth(v58);
  [v5 collectionViewContentSize];
  if (a1 <= 0.0 || floor(v32) <= Width + a1)
  {
LABEL_15:

    return;
  }

  v33 = [v16 numberOfItemsInSection:0];
  if ((v33 & 0x8000000000000000) == 0)
  {
    if (v33)
    {
      v53 = a3;
      v34 = 0;
      v54 = (v11 + 8);
      v35 = 0.0;
      v55 = xmmword_77E280;
      do
      {
        v37 = v33;
        v38 = v17;
        sub_BD88(&qword_95B250);
        v39 = swift_allocObject();
        *(v39 + 16) = v55;
        *(v39 + 32) = 0;
        *(v39 + 40) = v34;
        sub_757540();
        isa = sub_757550().super.isa;
        (*v54)(v14, v10);
        v41 = [v5 layoutAttributesForItemAtIndexPath:isa];

        if (!v41)
        {
          break;
        }

        v17 = v38;
        [v41 v38[366]];
        v43 = v42;
        v45 = v44;
        v47 = v46;
        v49 = v48;

        v59.origin.x = v43;
        v59.origin.y = v45;
        v59.size.width = v47;
        v59.size.height = v49;
        v50 = CGRectGetWidth(v59);
        [v5 minimumLineSpacing];
        if (v35 < a1 && v35 + v50 + v51 > a1)
        {
          break;
        }

        ++v34;
        [v5 minimumLineSpacing];
        v35 = v35 + v50 + v36;
        v33 = v37;
      }

      while (v37 != v34);
    }

    goto LABEL_15;
  }

  __break(1u);
}

id sub_610C88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_610CE0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = *a1;
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();

  return sub_271EC(v9, v7, a6, ObjectType);
}

id sub_610D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_75B370();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;

    sub_27484(v6, a3);
  }

  else
  {
    sub_765860();
    v7 = swift_dynamicCastClass();
    if (!v7)
    {
      goto LABEL_6;
    }

    v8 = v7;

    sub_27698(v8, a3);
  }

LABEL_6:

  return [v3 setNeedsLayout];
}

uint64_t sub_610F60(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_610FA8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v8 = v7;
  v9 = [a4 traitCollection];
  v10 = [v9 preferredContentSizeCategory];
  v11 = sub_769B50();

  if ((v11 & 1) == 0)
  {
    if (qword_93C808 != -1)
    {
      swift_once();
    }

    sub_53DA04(&unk_99BE98, a4);
    if (qword_93C6C8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
    v16 = sub_BE38(v15, qword_99B9A0);
    sub_6FE2C(v16, a4);
    goto LABEL_28;
  }

  v12 = _swiftEmptyArrayStorage;
  v27 = _swiftEmptyArrayStorage;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = a1 + 32;
    do
    {
      sub_134D8(v14, v26);
      sub_10914(v26, v25);
      sub_BD88(&unk_944DA0);
      sub_7587A0();
      if ((swift_dynamicCast() & 1) != 0 && v25[5])
      {
        sub_769440();
        if (*(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v27 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
        v12 = v27;
      }

      v14 += 40;
      --v13;
    }

    while (v13);
  }

  if (!(v12 >> 62))
  {
    v17 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
    if (v17)
    {
      goto LABEL_17;
    }

LABEL_27:

LABEL_28:
    v23 = objc_opt_self();
    PageTraitEnvironment.pageColumnWidth.getter();
    v24 = [v23 absoluteDimension:?];
    sub_75F970();

    return;
  }

  v17 = sub_76A860();
  if (!v17)
  {
    goto LABEL_27;
  }

LABEL_17:
  if (v17 >= 1)
  {
    v18 = 0;
    v19 = 0.0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v20 = sub_76A770();
      }

      else
      {
        v20 = *(v12 + 8 * v18 + 32);
      }

      ++v18;
      sub_271EC(v8, v20, a4, ObjectType);
      v22 = v21;

      if (v19 <= v22)
      {
        v19 = v22;
      }
    }

    while (v17 != v18);
    goto LABEL_27;
  }

  __break(1u);
}

uint64_t sub_61131C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider27ParagraphCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &unk_93F620);
}

uint64_t sub_611388(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider27ParagraphCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_611450()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider27ParagraphCollectionViewCell_expandableTextView];
  sub_1A5114(0, 0);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_hasMoreButton) = 0;
  sub_1A5974();
  v2 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler);
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler);
  *v2 = 0;
  v2[1] = 0;
  sub_F704(v3);
  return [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton) setUserInteractionEnabled:0];
}

uint64_t sub_6114FC(void **a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_765920();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v112 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v111 = &v107 - v8;
  __chkstk_darwin(v9);
  v11 = &v107 - v10;
  __chkstk_darwin(v12);
  v14 = &v107 - v13;
  v15 = sub_BD88(&qword_952410);
  __chkstk_darwin(v15 - 8);
  v116 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v123 = &v107 - v18;
  __chkstk_darwin(v19);
  v115 = &v107 - v20;
  __chkstk_darwin(v21);
  v23 = &v107 - v22;
  v24 = sub_BD88(&qword_946810);
  __chkstk_darwin(v24 - 8);
  v121 = &v107 - v25;
  v125 = sub_BD88(&qword_93F730);
  v26 = *(v125 - 8);
  __chkstk_darwin(v125);
  v124 = &v107 - v27;
  v119 = sub_765900();
  v127 = *(v119 - 8);
  __chkstk_darwin(v119);
  v122 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v126 = &v107 - v30;
  sub_765940();
  sub_3B0DA4();
  v128 = a1;
  result = sub_75C750();
  v32 = aBlock;
  if (aBlock)
  {
    v108 = v11;
    v109 = v23;
    v110 = v14;
    v113 = v26;
    v118 = v5;
    v114 = v4;
    v33 = [v1 contentView];
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    [v33 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

    v37 = sub_7658D0();
    swift_getKeyPath();
    sub_75C7B0();

    v38 = v135;
    v39 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v37];
    v40 = [v37 length];
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v41 + 24) = v38;
    *(v41 + 32) = v39;
    *(v41 + 40) = 1;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_119AC;
    *(v42 + 24) = v41;
    v133 = sub_2636C;
    v134 = v42;
    aBlock = _NSConcreteStackBlock;
    v130 = 1107296256;
    v131 = sub_10C1C;
    v132 = &unk_89A3C8;
    v43 = _Block_copy(&aBlock);
    v44 = v38;
    v45 = v39;

    [v37 enumerateAttributesInRange:0 options:v40 usingBlock:{0x100000, v43}];

    _Block_release(v43);
    LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

    if (v43)
    {
      __break(1u);
      goto LABEL_53;
    }

    v46 = [v2 contentView];
    sub_BE70(0, &qword_93E550);
    sub_75D650();
    v48 = v47;
    v50 = v49;

    v51 = sub_527DE4();
    swift_getObjectType();
    v117 = v45;
    v52 = sub_3B0EB0(v45, v51, UIEdgeInsetsZero.top, left, bottom, right, v48, v50);
    swift_unknownObjectRelease();
    v53 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider27ParagraphCollectionViewCell_expandableTextView];
    v54 = v126;
    sub_765910();
    v55 = v127;
    v56 = v122;
    v57 = v54;
    v58 = v119;
    (*(v127 + 16))(v122, v57, v119);
    v59 = (*(v55 + 88))(v56, v58);
    v60 = v2;
    v61 = v118;
    v62 = v32;
    if (v59 != enum case for Paragraph.Style.standard(_:))
    {
      if (v59 == enum case for Paragraph.Style.article(_:))
      {
        sub_BE70(0, &qword_93E540);
        v63 = sub_769FF0();
        goto LABEL_7;
      }

      if (v59 != enum case for Paragraph.Style.caption(_:) && v59 != enum case for Paragraph.Style.todayCardOverlay(_:) && v59 != enum case for Paragraph.Style.privacyDefinitions(_:))
      {
        sub_BE70(0, &qword_93E540);
        v64 = sub_769FD0();
        v98 = v58;
        v99 = *(v127 + 8);
        v99(v126, v98);
        v99(v122, v98);
        goto LABEL_8;
      }
    }

    sub_BE70(0, &qword_93E540);
    v63 = sub_769FD0();
LABEL_7:
    v64 = v63;
    (*(v127 + 8))(v126, v58);
LABEL_8:
    v127 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel;
    [*&v53[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel] setTextColor:v64];

    sub_75C800();
    sub_769060();
    sub_280A0();
    sub_769030();
    v65 = aBlock;
    if (aBlock == 2)
    {
      v65 = sub_765890();
    }

    if ((v65 & v52 & 1) == 0)
    {
      v90 = v117;
      v91 = v123;
      sub_765930();
      v92 = v114;
      (*(v61 + 56))(v91, 0, 1, v114);
      v93 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
      v94 = v53[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed];
      v53[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed] = 0;
      v95 = *&v53[v127];
      v96 = v90;
      [v95 setNumberOfLines:0];
      if (v94 != v53[v93])
      {
        sub_1A5974();
      }

      v85 = v96;
      sub_1A532C(v96);
      v53[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
      v97 = v116;
      sub_1ED18(v123, v116, &qword_952410);
      if ((*(v61 + 48))(v97, 1, v92) == 1)
      {
        sub_41E198(v97);
        v89 = v117;
      }

      else
      {
        v100 = v111;
        (*(v61 + 32))(v111, v97, v92);
        v101 = v112;
        (*(v61 + 16))(v112, v100, v92);
        v102 = (*(v61 + 88))(v101, v92);
        if (v102 == enum case for Paragraph.Alignment.left(_:))
        {
          v103 = 0;
          v89 = v117;
        }

        else
        {
          v89 = v117;
          if (v102 == enum case for Paragraph.Alignment.center(_:))
          {
            v103 = 1;
          }

          else if (v102 == enum case for Paragraph.Alignment.right(_:))
          {
            v103 = 2;
          }

          else if (v102 == enum case for Paragraph.Alignment.justified(_:))
          {
            v103 = 3;
          }

          else if (v102 == enum case for Paragraph.Alignment.localized(_:))
          {
            v103 = 4;
          }

          else
          {
            (*(v61 + 8))(v112, v92);
            v103 = 0;
          }
        }

        [*&v53[v127] setTextAlignment:v103];
        (*(v61 + 8))(v100, v92);
      }

      [v53 setNeedsLayout];
      v77 = v123;
      goto LABEL_50;
    }

    v126 = v2;
    v66 = sub_7658A0();
    swift_getKeyPath();
    sub_75C7B0();

    v67 = v135;
    v68 = v62;
    v69 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v66];
    v70 = [v66 length];
    v71 = swift_allocObject();
    *(v71 + 16) = 0;
    *(v71 + 24) = v67;
    *(v71 + 32) = v69;
    *(v71 + 40) = 1;
    v72 = swift_allocObject();
    *(v72 + 16) = sub_266A8;
    *(v72 + 24) = v71;
    v133 = sub_26694;
    v134 = v72;
    aBlock = _NSConcreteStackBlock;
    v130 = 1107296256;
    v131 = sub_10C1C;
    v132 = &unk_89A440;
    v73 = _Block_copy(&aBlock);
    v74 = v67;
    v75 = v69;

    [v66 enumerateAttributesInRange:0 options:v70 usingBlock:{0x100000, v73}];

    _Block_release(v73);
    LOBYTE(v66) = swift_isEscapingClosureAtFileLocation();

    if ((v66 & 1) == 0)
    {
      v76 = v75;
      v128 = v68;
      v77 = v109;
      sub_765930();
      v78 = v118;
      v79 = v114;
      (*(v118 + 56))(v77, 0, 1, v114);
      v80 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
      v81 = v53[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed];
      v53[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed] = 1;
      v82 = *&v53[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines];
      v83 = *&v53[v127];
      v84 = v76;
      [v83 setNumberOfLines:v82];
      if (v81 != v53[v80])
      {
        sub_1A5974();
      }

      v85 = v84;
      sub_1A532C(v84);
      v53[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
      v86 = v115;
      sub_1ED18(v77, v115, &qword_952410);
      v87 = (*(v78 + 48))(v86, 1, v79);
      v60 = v126;
      v88 = v110;
      v89 = v117;
      if (v87 == 1)
      {
        sub_41E198(v86);
      }

      else
      {
        (*(v78 + 32))(v110, v86, v79);
        v104 = v108;
        (*(v78 + 16))(v108, v88, v79);
        v105 = (*(v78 + 88))(v104, v79);
        if (v105 == enum case for Paragraph.Alignment.left(_:))
        {
          v106 = 0;
        }

        else if (v105 == enum case for Paragraph.Alignment.center(_:))
        {
          v106 = 1;
        }

        else if (v105 == enum case for Paragraph.Alignment.right(_:))
        {
          v106 = 2;
        }

        else if (v105 == enum case for Paragraph.Alignment.justified(_:))
        {
          v106 = 3;
        }

        else if (v105 == enum case for Paragraph.Alignment.localized(_:))
        {
          v106 = 4;
        }

        else
        {
          (*(v78 + 8))(v108, v79);
          v106 = 0;
        }

        [v83 setTextAlignment:v106];
        (*(v78 + 8))(v88, v79);
      }

      [v53 setNeedsLayout];

LABEL_50:
      sub_41E198(v77);
      [v60 setNeedsLayout];

      return (*(v113 + 8))(v124, v125);
    }

LABEL_53:
    __break(1u);
  }

  return result;
}