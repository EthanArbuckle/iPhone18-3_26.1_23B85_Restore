uint64_t sub_1E404(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_8F680();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E448(uint64_t a1, uint64_t a2)
{
  v4 = sub_3A90(&qword_C4C60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4B8()
{
  result = qword_C4F80;
  if (!qword_C4F80)
  {
    sub_3D20(&qword_C4F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4F80);
  }

  return result;
}

uint64_t sub_1E51C(int a1)
{
  v49 = a1;
  v2 = sub_8F390();
  __chkstk_darwin(v2 - 8);
  v48[1] = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_90540();
  __chkstk_darwin(v4 - 8);
  v48[0] = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_8FA90();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = *(v7 + 2);
  if (v8)
  {
    v52 = _swiftEmptyArrayStorage;
    sub_1CA68(0, v8, 0);
    v9 = 0;
    v10 = v52;
    while (v9 < *(v7 + 2))
    {
      v50 = v7[v9 + 4];
      sub_1EAB0(&v50, v51);
      v1 = v51[0];
      v11 = v51[1];
      v52 = v10;
      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      if (v13 >= v12 >> 1)
      {
        sub_1CA68((v12 > 1), v13 + 1, 1);
        v10 = v52;
      }

      ++v9;
      *(v10 + 2) = v13 + 1;
      v14 = &v10[2 * v13];
      *(v14 + 4) = v1;
      *(v14 + 5) = v11;
      if (v8 == v9)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
LABEL_12:
    v17 = *(v10 + 2);
    v18 = (v10 + 5);
    v19 = v17 + 1;
    while (--v19)
    {
      v21 = *(v18 - 1);
      v20 = *v18;
      v18 += 2;
      v22 = v21 & 0xFFFFFFFFFFFFLL;
      if ((v20 & 0x2000000000000000) != 0)
      {
        v23 = HIBYTE(v20) & 0xF;
      }

      else
      {
        v23 = v22;
      }

      if (!v23)
      {
        v24 = 0;
        v25 = 0;
        while (1)
        {
          v26 = v10[v24 + 5];
          v27 = (*&v26 & 0x2000000000000000) != 0 ? HIBYTE(*&v26) & 0xFLL : *&v10[v24 + 4] & 0xFFFFFFFFFFFFLL;
          if (!v27)
          {
            break;
          }

          ++v25;
          v24 += 2;
          if (v17 == v25)
          {
            v28 = *(v10 + 2);
            v25 = v28;
            goto LABEL_30;
          }
        }

        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          return result;
        }

        if (v28 == v17)
        {
          v28 = *(v10 + 2);
LABEL_28:
          if (v28 < v25)
          {
            __break(1u);
          }

          else if ((v25 & 0x8000000000000000) == 0)
          {
LABEL_30:
            v27 = v25 - v28;
            v1 = v25;
            if (!__OFADD__(v28, v25 - v28))
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v51[0] = v10;
              if (!isUniquelyReferenced_nonNull_native || v25 > *(v10 + 3) >> 1)
              {
                if (v28 <= v25)
                {
                  v30 = v25;
                }

                else
                {
                  v30 = v28;
                }

                v10 = sub_174F0(isUniquelyReferenced_nonNull_native, v30, 1, v10);
                v51[0] = v10;
              }

              sub_20FAC(v25, v28, 0);
              sub_904E0();
              sub_8F380();
              result = sub_905B0();
              v1 = *(v10 + 2);
              v27 = *(v10 + 3);
              v17 = v1 + 1;
              if (v1 < v27 >> 1)
              {
                goto LABEL_38;
              }

              goto LABEL_68;
            }

LABEL_67:
            __break(1u);
LABEL_68:
            v45 = result;
            v46 = v16;
            v47 = sub_174F0((v27 > 1), v17, 1, v10);
            v16 = v46;
            v10 = v47;
            result = v45;
LABEL_38:
            *(v10 + 2) = v17;
            v31 = &v10[2 * v1];
            *(v31 + 4) = result;
            *(v31 + 5) = v16;
            break;
          }

          __break(1u);
          goto LABEL_67;
        }

        while (v28 < v17)
        {
          v41 = v10[v24 + 6];
          v40 = v10[v24 + 7];
          v27 = HIBYTE(*&v40) & 0xFLL;
          if ((*&v40 & 0x2000000000000000) == 0)
          {
            v27 = *&v41 & 0xFFFFFFFFFFFFLL;
          }

          if (v27)
          {
            if (v28 != v25)
            {
              if (v25 >= v17)
              {
                goto LABEL_62;
              }

              v42 = &v10[2 * v25 + 4];
              v1 = *v42;
              v43 = v42[1];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v10 = sub_20E50(v10);
              }

              v44 = &v10[2 * v25];
              v44[4] = v41;
              v44[5] = v40;

              if (v28 >= *(v10 + 2))
              {
                goto LABEL_63;
              }

              v39 = &v10[v24];
              *(v39 + 6) = v1;
              *(v39 + 7) = v43;
            }

            ++v25;
          }

          ++v28;
          v17 = *(v10 + 2);
          v24 += 2;
          if (v28 == v17)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_61;
      }
    }

    if ((v49 & 1) != 0 && v17 >= 3)
    {
      v33 = *(v10 + 4);
      v32 = *(v10 + 5);
      v35 = *(v10 + 6);
      v34 = *(v10 + 7);

      if (qword_C39E0 != -1)
      {
        swift_once();
      }

      sub_3A90(&qword_C5008);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_98750;
      *(v36 + 56) = &type metadata for String;
      v37 = sub_2106C();
      *(v36 + 32) = v33;
      *(v36 + 40) = v32;
      *(v36 + 96) = &type metadata for String;
      *(v36 + 104) = v37;
      *(v36 + 64) = v37;
      *(v36 + 72) = v35;
      *(v36 + 80) = v34;
      v38 = sub_90560();
      goto LABEL_59;
    }

    v52 = v10;
    if (qword_C39D8 != -1)
    {
      goto LABEL_64;
    }
  }

  sub_3A90(&qword_C4830);
  sub_175FC();
  v38 = sub_90480();
LABEL_59:

  return v38;
}

uint64_t sub_1EAB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_8F390();
  __chkstk_darwin(v4 - 8);
  v5 = sub_90540();
  __chkstk_darwin(v5 - 8);
  switch(*a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xALL:
    case 0xBLL:
    case 0xCLL:
    case 0xDLL:
    case 0xELL:
    case 0xFLL:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1ALL:
    case 0x1BLL:
    case 0x1CLL:
    case 0x1DLL:
    case 0x1ELL:
    case 0x1FLL:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x25:
    case 0x26:
      sub_904E0();
      sub_8F380();
      result = sub_905B0();
      break;
    default:
      result = 0;
      v7 = 0xE000000000000000;
      break;
  }

  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_1F85C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1F908(int a1)
{
  v49 = a1;
  v2 = sub_8F390();
  __chkstk_darwin(v2 - 8);
  v48[1] = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_90540();
  __chkstk_darwin(v4 - 8);
  v48[0] = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_8FAA0();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = *(v7 + 2);
  if (v8)
  {
    v52 = _swiftEmptyArrayStorage;
    sub_1CA68(0, v8, 0);
    v9 = 0;
    v10 = v52;
    while (v9 < *(v7 + 2))
    {
      v50 = v7[v9 + 4];
      sub_1FE9C(&v50, v51);
      v1 = v51[0];
      v11 = v51[1];
      v52 = v10;
      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      if (v13 >= v12 >> 1)
      {
        sub_1CA68((v12 > 1), v13 + 1, 1);
        v10 = v52;
      }

      ++v9;
      *(v10 + 2) = v13 + 1;
      v14 = &v10[2 * v13];
      *(v14 + 4) = v1;
      *(v14 + 5) = v11;
      if (v8 == v9)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
LABEL_12:
    v17 = *(v10 + 2);
    v18 = (v10 + 5);
    v19 = v17 + 1;
    while (--v19)
    {
      v21 = *(v18 - 1);
      v20 = *v18;
      v18 += 2;
      v22 = v21 & 0xFFFFFFFFFFFFLL;
      if ((v20 & 0x2000000000000000) != 0)
      {
        v23 = HIBYTE(v20) & 0xF;
      }

      else
      {
        v23 = v22;
      }

      if (!v23)
      {
        v24 = 0;
        v25 = 0;
        while (1)
        {
          v26 = v10[v24 + 5];
          v27 = (*&v26 & 0x2000000000000000) != 0 ? HIBYTE(*&v26) & 0xFLL : *&v10[v24 + 4] & 0xFFFFFFFFFFFFLL;
          if (!v27)
          {
            break;
          }

          ++v25;
          v24 += 2;
          if (v17 == v25)
          {
            v28 = *(v10 + 2);
            v25 = v28;
            goto LABEL_30;
          }
        }

        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          return result;
        }

        if (v28 == v17)
        {
          v28 = *(v10 + 2);
LABEL_28:
          if (v28 < v25)
          {
            __break(1u);
          }

          else if ((v25 & 0x8000000000000000) == 0)
          {
LABEL_30:
            v27 = v25 - v28;
            v1 = v25;
            if (!__OFADD__(v28, v25 - v28))
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v51[0] = v10;
              if (!isUniquelyReferenced_nonNull_native || v25 > *(v10 + 3) >> 1)
              {
                if (v28 <= v25)
                {
                  v30 = v25;
                }

                else
                {
                  v30 = v28;
                }

                v10 = sub_174F0(isUniquelyReferenced_nonNull_native, v30, 1, v10);
                v51[0] = v10;
              }

              sub_20FAC(v25, v28, 0);
              sub_904E0();
              sub_8F380();
              result = sub_905B0();
              v1 = *(v10 + 2);
              v27 = *(v10 + 3);
              v17 = v1 + 1;
              if (v1 < v27 >> 1)
              {
                goto LABEL_38;
              }

              goto LABEL_68;
            }

LABEL_67:
            __break(1u);
LABEL_68:
            v45 = result;
            v46 = v16;
            v47 = sub_174F0((v27 > 1), v17, 1, v10);
            v16 = v46;
            v10 = v47;
            result = v45;
LABEL_38:
            *(v10 + 2) = v17;
            v31 = &v10[2 * v1];
            *(v31 + 4) = result;
            *(v31 + 5) = v16;
            break;
          }

          __break(1u);
          goto LABEL_67;
        }

        while (v28 < v17)
        {
          v41 = v10[v24 + 6];
          v40 = v10[v24 + 7];
          v27 = HIBYTE(*&v40) & 0xFLL;
          if ((*&v40 & 0x2000000000000000) == 0)
          {
            v27 = *&v41 & 0xFFFFFFFFFFFFLL;
          }

          if (v27)
          {
            if (v28 != v25)
            {
              if (v25 >= v17)
              {
                goto LABEL_62;
              }

              v42 = &v10[2 * v25 + 4];
              v1 = *v42;
              v43 = v42[1];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v10 = sub_20E50(v10);
              }

              v44 = &v10[2 * v25];
              v44[4] = v41;
              v44[5] = v40;

              if (v28 >= *(v10 + 2))
              {
                goto LABEL_63;
              }

              v39 = &v10[v24];
              *(v39 + 6) = v1;
              *(v39 + 7) = v43;
            }

            ++v25;
          }

          ++v28;
          v17 = *(v10 + 2);
          v24 += 2;
          if (v28 == v17)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_61;
      }
    }

    if ((v49 & 1) != 0 && v17 >= 3)
    {
      v33 = *(v10 + 4);
      v32 = *(v10 + 5);
      v35 = *(v10 + 6);
      v34 = *(v10 + 7);

      if (qword_C39E0 != -1)
      {
        swift_once();
      }

      sub_3A90(&qword_C5008);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_98750;
      *(v36 + 56) = &type metadata for String;
      v37 = sub_2106C();
      *(v36 + 32) = v33;
      *(v36 + 40) = v32;
      *(v36 + 96) = &type metadata for String;
      *(v36 + 104) = v37;
      *(v36 + 64) = v37;
      *(v36 + 72) = v35;
      *(v36 + 80) = v34;
      v38 = sub_90560();
      goto LABEL_59;
    }

    v52 = v10;
    if (qword_C39D8 != -1)
    {
      goto LABEL_64;
    }
  }

  sub_3A90(&qword_C4830);
  sub_175FC();
  v38 = sub_90480();
LABEL_59:

  return v38;
}

uint64_t sub_1FE9C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_8F390();
  __chkstk_darwin(v4 - 8);
  v5 = sub_90540();
  __chkstk_darwin(v5 - 8);
  switch(*a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xALL:
    case 0xBLL:
    case 0xCLL:
    case 0xDLL:
    case 0xELL:
    case 0xFLL:
    case 0x10:
    case 0x11:
    case 0x12:
      sub_904E0();
      sub_8F380();
      result = sub_905B0();
      break;
    default:
      result = 0;
      v7 = 0xE000000000000000;
      break;
  }

  *a2 = result;
  a2[1] = v7;
  return result;
}

id sub_205B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateOfMindAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StateOfMindAsset()
{
  result = qword_C4FB8;
  if (!qword_C4FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_206BC()
{
  v1 = sub_8F390();
  __chkstk_darwin(v1 - 8);
  v47[2] = v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_90540();
  __chkstk_darwin(v3 - 8);
  v47[1] = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3A90(&qword_C4808);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v47 - v9;
  v11 = sub_8FFF0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3A90(&qword_C49D0);
  __chkstk_darwin(v15 - 8);
  v17 = v47 - v16;
  v18 = sub_8FAB0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47[0] = v0;
  sub_10F54(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_8EF0(v17, &qword_C49D0);
    return 0;
  }

  (*(v19 + 32))(v21, v17, v18);
  v22 = sub_1E51C(0);
  v24 = v23;

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
    (*(v19 + 8))(v21, v18);
    return 0;
  }

  sub_8FF70();
  v26 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_8FF50().super.isa;
  v28 = [v26 initWithContentType:isa];

  (*(v12 + 8))(v14, v11);
  sub_1E51C(0);
  v29 = sub_90550();

  [v28 setDisplayName:v29];

  sub_1F908(0);
  v30 = sub_90550();

  [v28 setContentDescription:v30];

  sub_8FA80();
  v31 = sub_8F2F0();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  if (v33(v8, 1, v31) == 1)
  {
    v34 = *(v47[0] + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
    if (v34)
    {
      v47[0] = v33;
      v35 = [v34 entry];
      if (v35)
      {
        v36 = v35;
        sub_8F500();

        v37 = 0;
      }

      else
      {
        v37 = 1;
      }

      v33 = v47[0];
    }

    else
    {
      v37 = 1;
    }

    (*(v32 + 56))(v10, v37, 1, v31);
    if (v33(v8, 1, v31) != 1)
    {
      sub_8EF0(v8, &qword_C4808);
    }
  }

  else
  {
    (*(v32 + 32))(v10, v8, v31);
    (*(v32 + 56))(v10, 0, 1, v31);
  }

  sub_904E0();
  sub_8F380();
  v38 = sub_905C0();
  v40 = v39;
  sub_3A90(&qword_C4840);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_98740;
  v42 = sub_577BC(v38, v40, v10);
  v44 = v43;

  *(v41 + 32) = v42;
  *(v41 + 40) = v44;
  v45 = sub_90730().super.isa;

  [v28 setAlternateNames:v45];

  sub_8EF0(v10, &qword_C4808);
  (*(v19 + 8))(v21, v18);
  return v28;
}

uint64_t sub_20DD0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_8FAB0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_20FAC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_2106C()
{
  result = qword_C5010;
  if (!qword_C5010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5010);
  }

  return result;
}

id sub_210C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnknownAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for UnknownAsset()
{
  result = qword_C5040;
  if (!qword_C5040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_21184()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceholderAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PlaceholderAsset()
{
  result = qword_C5078;
  if (!qword_C5078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_21220()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutIconAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WorkoutIconAsset()
{
  result = qword_C50B0;
  if (!qword_C50B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_21328()
{
  v1 = sub_8F390();
  __chkstk_darwin(v1 - 8);
  v3 = &v117 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_90540();
  __chkstk_darwin(v4 - 8);
  v131 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3A90(&qword_C4C60);
  __chkstk_darwin(v6 - 8);
  v132 = &v117 - v7;
  v8 = sub_8FCC0();
  v127 = *(v8 - 8);
  v128 = v8;
  __chkstk_darwin(v8);
  v126 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3A90(&qword_C4808);
  v11 = __chkstk_darwin(v10 - 8);
  v133 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v130 = &v117 - v14;
  __chkstk_darwin(v13);
  v16 = &v117 - v15;
  v17 = sub_8FFF0();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_3A90(&qword_C49F8);
  __chkstk_darwin(v21 - 8);
  v23 = &v117 - v22;
  v24 = sub_8FB50();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = v0;
  if (!*(v0 + OBJC_IVAR____TtC15JournalSettings16WorkoutIconAsset_metadata))
  {
    (*(v25 + 56))(v23, 1, 1, v24);
    goto LABEL_6;
  }

  sub_15B90(v23);

  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
LABEL_6:
    sub_8EF0(v23, &qword_C49F8);
    return 0;
  }

  v122 = v24;
  v123 = v3;
  v121 = v25;
  v28 = *(v25 + 32);
  v29 = v27;
  v28(v27, v23);
  sub_8FF70();
  v30 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_8FF50().super.isa;
  v32 = [v30 initWithContentType:isa];

  (*(v18 + 8))(v20, v17);
  v33 = sub_8FB00();
  if (!v34)
  {
    v35 = v33;
    v36 = [objc_opt_self() mainBundle];
    v116._countAndFlagsBits = 0x8000000000093E40;
    v137._countAndFlagsBits = 0x74756F6B726F57;
    v137._object = 0xE700000000000000;
    v138.value._countAndFlagsBits = v35;
    v138.value._object = 0;
    v37.super.isa = v36;
    v139._countAndFlagsBits = 0;
    v139._object = 0xE000000000000000;
    sub_8EE70(v137, v138, v37, v139, v116);
  }

  v38 = v132;
  v39 = v133;
  v40 = sub_90550();

  [v32 setDisplayName:v40];

  sub_8FB40();
  v41 = sub_8F2F0();
  v42 = *(v41 - 8);
  v124 = *(v42 + 48);
  v125 = v41;
  v119 = v42 + 48;
  v43 = 0;
  if (v124(v16, 1) != 1)
  {
    v43 = sub_8F270().super.isa;
    (*(v42 + 8))(v16, v125);
  }

  [v32 setTimestamp:v43];

  v44 = sub_8FAD0();
  v120 = v42;
  if ((v45 & 1) == 0)
  {
    v52 = v44;
    if (qword_C39F0 != -1)
    {
      swift_once();
    }

    sub_3A90(&qword_C5008);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_98740;
    *(v53 + 56) = &type metadata for Int;
    *(v53 + 64) = &protocol witness table for Int;
    *(v53 + 32) = v52;
    sub_90560();

    v54 = sub_90550();

    [v32 setDisplayName:v54];

    v46 = sub_2215C(v29, &WorkoutIconAssetMetadata.totalGroupWorkoutCaloriesBurntWithUnit.getter, &WorkoutIconAssetMetadata.totalGroupWorkoutCaloriesBurnt.getter);
    v118 = v55;
    v50 = sub_8FAC0();
    goto LABEL_16;
  }

  v46 = sub_2215C(v29, &WorkoutIconAssetMetadata.calories.getter, &WorkoutIconAssetMetadata.caloriesBurnt.getter);
  v118 = v47;
  v48 = sub_8FB30();
  if (v49)
  {
    sub_22660();
LABEL_16:
    v56 = *&v50;
    v57 = v51;
    goto LABEL_18;
  }

  v56 = *&v48;
  v57 = 0;
LABEL_18:
  v58 = sub_8FB20();
  if (v59)
  {
    v60 = v58;
    v61 = v59;
    v62 = HIBYTE(v59) & 0xF;
    if ((v59 & 0x2000000000000000) == 0)
    {
      v62 = v58 & 0xFFFFFFFFFFFFLL;
    }

    if (v62)
    {
      v117 = v32;
      v63 = v29;
      v64 = v38;
      v65 = v46;
      v66 = sub_174F0(0, 1, 1, _swiftEmptyArrayStorage);
      v68 = *(v66 + 2);
      v67 = *(v66 + 3);
      if (v68 >= v67 >> 1)
      {
        v66 = sub_174F0((v67 > 1), v68 + 1, 1, v66);
      }

      *(v66 + 2) = v68 + 1;
      v69 = &v66[2 * v68];
      *(v69 + 4) = v60;
      *(v69 + 5) = v61;
      v39 = v133;
      v46 = v65;
      v38 = v64;
      v29 = v63;
      v32 = v117;
      if (v57)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
    }
  }

  v66 = _swiftEmptyArrayStorage;
  if (v57)
  {
    goto LABEL_35;
  }

LABEL_28:
  if (v56 > 0.0)
  {
    v70 = v39;
    sub_91290();
    v71 = sub_91260();
    v73 = v72;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v129;
    v76 = v46;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v66 = sub_174F0(0, *(v66 + 2) + 1, 1, v66);
    }

    v78 = *(v66 + 2);
    v77 = *(v66 + 3);
    if (v78 >= v77 >> 1)
    {
      v66 = sub_174F0((v77 > 1), v78 + 1, 1, v66);
    }

    *(v66 + 2) = v78 + 1;
    v79 = &v66[2 * v78];
    *(v79 + 4) = v71;
    *(v79 + 5) = v73;
    v46 = v76;
    v39 = v70;
    v38 = v132;
    v80 = v118;
    if (!v118)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }

LABEL_35:
  v75 = v129;
  v80 = v118;
  if (v118)
  {
LABEL_36:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_174F0(0, *(v66 + 2) + 1, 1, v66);
    }

    v82 = *(v66 + 2);
    v81 = *(v66 + 3);
    if (v82 >= v81 >> 1)
    {
      v66 = sub_174F0((v81 > 1), v82 + 1, 1, v66);
    }

    *(v66 + 2) = v82 + 1;
    v83 = &v66[2 * v82];
    *(v83 + 4) = v46;
    *(v83 + 5) = v80;
  }

LABEL_41:
  v84 = sub_8FAE0();
  if ((v85 & 1) == 0 || (v84 = sub_8FAF0(), (v86 & 1) == 0))
  {
    v134 = v84;
    v87 = v126;
    sub_8EC90();
    sub_23640();
    sub_23B74(&qword_C5108, &type metadata accessor for WorkoutHeartRateFormatStyle);
    v88 = v128;
    sub_90430();
    (*(v127 + 8))(v87, v88);
    v89 = v135;
    v90 = v136;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_174F0(0, *(v66 + 2) + 1, 1, v66);
    }

    v92 = *(v66 + 2);
    v91 = *(v66 + 3);
    if (v92 >= v91 >> 1)
    {
      v66 = sub_174F0((v91 > 1), v92 + 1, 1, v66);
    }

    *(v66 + 2) = v92 + 1;
    v93 = &v66[2 * v92];
    *(v93 + 4) = v89;
    *(v93 + 5) = v90;
  }

  sub_22B64(0, 1, v38);
  v94 = sub_8EFE0();
  v95 = *(v94 - 8);
  v97 = 0;
  if ((*(v95 + 48))(v38, 1, v94) != 1)
  {
    sub_8EF90(v96);
    v97 = v98;
    (*(v95 + 8))(v38, v94);
  }

  [v32 setThumbnailURL:v97];

  v135 = v66;
  sub_3A90(&qword_C4830);
  sub_236E0(&qword_C4838, &qword_C4830);
  sub_90480();

  v99 = sub_90550();

  [v32 setContentDescription:v99];

  sub_8FB40();
  v100 = v125;
  if ((v124)(v39, 1, v125) == 1)
  {
    v101 = *(v75 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
    v102 = v130;
    if (v101 && (v103 = [v101 entry]) != 0)
    {
      v104 = v103;
      sub_8F500();

      v105 = 0;
    }

    else
    {
      v105 = 1;
    }

    (*(v120 + 56))(v102, v105, 1, v100);
    if ((v124)(v39, 1, v100) != 1)
    {
      sub_8EF0(v39, &qword_C4808);
    }
  }

  else
  {
    v106 = v120;
    v102 = v130;
    (*(v120 + 32))(v130, v39, v100);
    (*(v106 + 56))(v102, 0, 1, v100);
  }

  sub_904E0();
  sub_8F380();
  v107 = sub_905C0();
  v109 = v108;
  sub_3A90(&qword_C4840);
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_98740;
  v111 = sub_577BC(v107, v109, v102);
  v113 = v112;

  *(v110 + 32) = v111;
  *(v110 + 40) = v113;
  v114 = sub_90730().super.isa;

  [v32 setAlternateNames:v114];

  sub_8EF0(v102, &qword_C4808);
  (*(v121 + 8))(v29, v122);
  return v32;
}

uint64_t sub_2215C(uint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t))
{
  v41 = a3;
  v42 = a2;
  v3 = sub_8F390();
  __chkstk_darwin(v3 - 8);
  v40 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3A90(&qword_C5110);
  __chkstk_darwin(v5 - 8);
  v39 = &v31 - v6;
  v7 = sub_3A90(&qword_C5118);
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_3A90(&qword_C5120);
  v36 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v13 = sub_3A90(&qword_C5128);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31 - v15;
  v17 = sub_3A90(&qword_C5130);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v31 - v20;
  result = v42(v19);
  if (!v23)
  {
    v32 = v21;
    v33 = v16;
    v34 = v18;
    v35 = v14;
    v42 = v10;
    v24 = v39;
    v41(result);
    if (v25)
    {
      return 0;
    }

    else
    {
      v26 = [objc_opt_self() kilocalories];
      sub_23694();
      v27 = v32;
      sub_8ECD0();
      sub_8ECE0();
      sub_8EF00();
      sub_8F360();
      sub_23640();
      sub_8EED0();
      v28 = sub_3A90(&qword_C5140);
      (*(*(v28 - 8) + 56))(v24, 0, 1, v28);
      v29 = v33;
      sub_8ECA0();
      sub_8EF0(v24, &qword_C5110);
      (*(v37 + 8))(v9, v38);
      (*(v36 + 8))(v12, v42);
      sub_236E0(&qword_C5148, &qword_C5128);
      sub_8ECF0();
      (*(v35 + 8))(v29, v13);
      v30 = sub_905F0();

      (*(v34 + 8))(v27, v17);
      return v30;
    }
  }

  return result;
}

double sub_22660()
{
  v0 = sub_8F410();
  v31 = *(v0 - 8);
  v32 = v0;
  __chkstk_darwin(v0);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_8EE20();
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3A90(&qword_C4808);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v11 = sub_8F2F0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v27 - v16;
  sub_8FB40();
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    sub_8F2E0();
    if (v18(v10, 1, v11) != 1)
    {
      sub_8EF0(v10, &qword_C4808);
    }
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
  }

  sub_8FB10();
  if (v18(v8, 1, v11) == 1)
  {
    sub_8F2E0();
    if (v18(v8, 1, v11) != 1)
    {
      sub_8EF0(v8, &qword_C4808);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v8, v11);
  }

  sub_8F3F0();
  sub_3A90(&qword_C5160);
  v19 = sub_8F400();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_98740;
  (*(v20 + 104))(v22 + v21, enum case for Calendar.Component.second(_:), v19);
  sub_23854(v22);
  swift_setDeallocating();
  (*(v20 + 8))(v22 + v21, v19);
  swift_deallocClassInstance();
  v23 = v28;
  sub_8F3A0();

  (*(v31 + 8))(v2, v32);
  v24 = sub_8EE10();
  (*(v29 + 8))(v23, v30);
  v25 = *(v12 + 8);
  v25(v15, v11);
  v25(v17, v11);
  return v24;
}

uint64_t sub_22B64@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v83 = a1;
  v66 = a3;
  v5 = sub_3A90(&qword_C5150);
  __chkstk_darwin(v5 - 8);
  v70 = &v56[-v6];
  v69 = sub_8FFF0();
  v7 = *(v69 - 8);
  v8 = __chkstk_darwin(v69);
  v68 = &v56[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v61 = &v56[-v10];
  v65 = sub_8F930();
  v11 = *(v65 - 8);
  __chkstk_darwin(v65);
  v64 = &v56[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v75 = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v13 = __chkstk_darwin(v75);
  v15 = &v56[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v80 = &v56[-v16];
  v17 = sub_3A90(&qword_C4C60);
  __chkstk_darwin(v17 - 8);
  v79 = &v56[-v18];
  v81 = sub_8EFE0();
  v72 = *(v81 - 8);
  __chkstk_darwin(v81);
  v20 = &v56[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = type metadata accessor for AssetAttachment.AssetType(0);
  v22 = __chkstk_darwin(v21);
  v82 = &v56[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v25 = &v56[-v24];
  v26 = *(v3 + OBJC_IVAR____TtC15JournalSettings5Asset_attachments);
  if (v26 >> 62)
  {
LABEL_47:
    v27 = sub_90FA0();
  }

  else
  {
    v27 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
  }

  v28 = v81;
  if (v27)
  {
    v29 = v11;
    v11 = 0;
    v87 = v26 & 0xFFFFFFFFFFFFFF8;
    v88 = v26 & 0xC000000000000001;
    v77 = (v72 + 56);
    v60 = (v29 + 8);
    v73 = (v72 + 32);
    v76 = (v72 + 48);
    v63 = (v7 + 48);
    v59 = (v7 + 32);
    v58 = (v7 + 8);
    v62 = (v72 + 8);
    v78 = a2;
    v74 = v15;
    v67 = v20;
    v84 = v21;
    v85 = v27;
    v86 = v26;
    while (1)
    {
      if (v88)
      {
        v7 = sub_90EC0();
        v30 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }
      }

      else
      {
        if (v11 >= *(v87 + 16))
        {
          __break(1u);
          goto LABEL_47;
        }

        v7 = *(v26 + 8 * v11 + 32);

        v30 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_40;
        }
      }

      v31 = OBJC_IVAR____TtC15JournalSettings15AssetAttachment_assetType;
      sub_237EC(v7 + OBJC_IVAR____TtC15JournalSettings15AssetAttachment_assetType, v25, type metadata accessor for AssetAttachment.AssetType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v33 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
      if (EnumCaseMultiPayload > 1)
      {
        break;
      }

      if (EnumCaseMultiPayload)
      {
        v33 = type metadata accessor for AssetAttachment.AssetType;
      }

      sub_23728(v25, v33);
      if (a2)
      {
LABEL_42:

LABEL_43:
        sub_59058(v66);
      }

      v41 = *(v7 + 16);
LABEL_20:
      if (v41 == v83)
      {
        goto LABEL_42;
      }

      v21 = v84;
LABEL_6:
      v26 = v86;
      ++v11;
      if (v30 == v85)
      {
        goto LABEL_41;
      }
    }

    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {

      sub_23728(v25, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      goto LABEL_6;
    }

    v34 = v82;
    sub_237EC(v7 + v31, v82, type metadata accessor for AssetAttachment.AssetType);
    v35 = swift_getEnumCaseMultiPayload();
    v36 = v35;
    if (v35 <= 1)
    {
      v38 = v34;
      v39 = v80;
      if (v36)
      {
        sub_23728(v82, type metadata accessor for AssetAttachment.AssetType);
        v46 = 1;
        v42 = v79;
LABEL_27:
        (*v77)(v42, v46, 1, v28);
        v47 = *(sub_3A90(&qword_C5158) + 48);
        if ((*v76)(v42, 1, v28) == 1)
        {

          sub_8EF0(v42, &qword_C4C60);
          v21 = v84;
          goto LABEL_37;
        }

        v71 = v47;
        (*v73)(v20, v42, v28);
        sub_8EF70();
        v48 = v68;
        sub_8FF60();
        v49 = v70;
        sub_8FF30();
        v50 = v69;
        if ((*v63)(v49, 1, v69) == 1)
        {

          v28 = v81;
          (*v62)(v20, v81);
          sub_8EF0(v49, &qword_C5150);
          goto LABEL_36;
        }

        v51 = v61;
        (*v59)(v61, v49, v50);
        sub_8FF90();
        v57 = sub_8FFD0();
        v52 = *v58;
        (*v58)(v48, v50);
        v53 = v51;
        v20 = v67;
        v52(v53, v50);
        v28 = v81;
        (*v62)(v20, v81);
        if ((v57 & 1) == 0)
        {

LABEL_36:
          v15 = v74;
          v21 = v84;
          v47 = v71;
LABEL_37:
          sub_23728(&v25[v47], type metadata accessor for AssetAttachment.AssetType.FilePathType);
          a2 = v78;
          goto LABEL_6;
        }

        v15 = v74;
        v54 = v71;
        if (v78)
        {

          sub_23728(&v25[v54], type metadata accessor for AssetAttachment.AssetType.FilePathType);
          goto LABEL_43;
        }

        v41 = *(v7 + 16);
        sub_23728(&v25[v71], type metadata accessor for AssetAttachment.AssetType.FilePathType);
        a2 = v78;
        goto LABEL_20;
      }
    }

    else
    {
      v37 = v35 - 2;
      v38 = v34;
      v39 = v80;
      if (v37 >= 2)
      {
        v40 = v82;

        v38 = &v40[*(sub_3A90(&qword_C5158) + 48)];
      }
    }

    sub_23788(v38, v39);
    sub_237EC(v39, v15, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23728(v39, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v42 = v79;
      (*v73)(v79, v15, v28);
    }

    else
    {
      v43 = v64;
      sub_8F920();
      v44 = v79;
      sub_8F900();
      v28 = v81;

      v45 = v43;
      v15 = v74;
      (*v60)(v45, v65);
      v42 = v44;
      v20 = v67;
      sub_23728(v39, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    }

    v46 = 0;
    goto LABEL_27;
  }

LABEL_41:

  return (*(v72 + 56))(v66, 1, 1, v28);
}

unint64_t sub_23640()
{
  result = qword_C5100;
  if (!qword_C5100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5100);
  }

  return result;
}

unint64_t sub_23694()
{
  result = qword_C5138;
  if (!qword_C5138)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C5138);
  }

  return result;
}

uint64_t sub_236E0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_3D20(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23728(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_23854(uint64_t a1)
{
  v2 = sub_8F400();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_3A90(&qword_C5168);
    v9 = sub_90E80();
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
      sub_23B74(&qword_C5170, &type metadata accessor for Calendar.Component);
      v16 = sub_90460();
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
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_23B74(&qword_C5178, &type metadata accessor for Calendar.Component);
          v23 = sub_904D0();
          v24 = *v15;
          (*v15)(v6, v2);
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

  return &_swiftEmptySetSingleton;
}

uint64_t sub_23B74(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int sub_23BBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3A90(&qword_C5180);
    v3 = sub_90E80();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_91180();
      sub_91190(v10);
      result = sub_911D0();
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

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_23CF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3A90(&qword_C5188);
    v3 = sub_90E80();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_91180();

      sub_90630();
      result = sub_911D0();
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
          result = sub_910F0();
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
    return &_swiftEmptySetSingleton;
  }

  return result;
}

id sub_23E70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StreakEventAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StreakEventAsset()
{
  result = qword_C51B8;
  if (!qword_C51B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23FB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_8F560();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_24034()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThirdPartyMediaAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ThirdPartyMediaAsset()
{
  result = qword_C5238;
  if (!qword_C5238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2413C()
{
  v1 = sub_3A90(&qword_C4808);
  v2 = __chkstk_darwin(v1 - 8);
  v73 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v65 - v4;
  v6 = sub_8F570();
  v71 = *(v6 - 8);
  v72 = v6;
  __chkstk_darwin(v6);
  v70 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3A90(&qword_C4C60);
  __chkstk_darwin(v8 - 8);
  v10 = &v65 - v9;
  v11 = sub_8FFF0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3A90(&qword_C4A18);
  __chkstk_darwin(v15 - 8);
  v17 = &v65 - v16;
  v18 = sub_8FD60();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v0;
  sub_11194(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_8EF0(v17, &qword_C4A18);
    return 0;
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    sub_8FF80();
    v23 = objc_allocWithZone(CSSearchableItemAttributeSet);
    isa = sub_8FF50().super.isa;
    v22 = [v23 initWithContentType:isa];

    (*(v12 + 8))(v14, v11);
    sub_8FD10();
    v67 = v18;
    v68 = v5;
    if (v25 || (sub_8FD30(), v26))
    {
      v27 = sub_90550();
    }

    else
    {
      v27 = 0;
    }

    [v22 setDisplayName:v27];

    v75 = sub_8FD30();
    v76[0] = v28;
    v29 = 0;
    v76[1] = sub_8FD00();
    v76[2] = v30;
    v31 = _swiftEmptyArrayStorage;
    v66 = v19;
LABEL_7:
    v32 = &v76[2 * v29];
    while (++v29 != 3)
    {
      v33 = v32 + 2;
      v34 = *v32;
      v32 += 2;
      if (v34)
      {
        v35 = *(v33 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_174F0(0, *(v31 + 2) + 1, 1, v31);
        }

        v37 = *(v31 + 2);
        v36 = *(v31 + 3);
        if (v37 >= v36 >> 1)
        {
          v31 = sub_174F0((v36 > 1), v37 + 1, 1, v31);
        }

        *(v31 + 2) = v37 + 1;
        v38 = &v31[2 * v37];
        *(v38 + 4) = v35;
        *(v38 + 5) = v34;
        goto LABEL_7;
      }
    }

    sub_3A90(&qword_C4828);
    swift_arrayDestroy();
    v74 = v31;
    sub_3A90(&qword_C4830);
    sub_175FC();
    sub_90480();

    v39 = sub_90550();

    [v22 setContentDescription:v39];

    sub_8FD20();
    v40 = sub_8EFE0();
    v41 = *(v40 - 8);
    v43 = 0;
    if ((*(v41 + 48))(v10, 1, v40) != 1)
    {
      sub_8EF90(v42);
      v43 = v44;
      (*(v41 + 8))(v10, v40);
    }

    [v22 setThumbnailURL:v43];

    v45 = v70;
    sub_8FD40();
    v46 = sub_CE88();
    v48 = v47;
    (*(v71 + 8))(v45, v72);
    v49 = v73;
    sub_8FD50();
    v50 = v49;
    v51 = sub_8F2F0();
    v52 = *(v51 - 8);
    v53 = *(v52 + 48);
    if (v53(v49, 1, v51) == 1)
    {
      v54 = *(v69 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
      if (v54)
      {
        v55 = [v54 entry];
        if (v55)
        {
          v56 = v55;
          v57 = v68;
          sub_8F500();

          v58 = 0;
        }

        else
        {
          v58 = 1;
          v57 = v68;
        }

        v50 = v73;
      }

      else
      {
        v58 = 1;
        v57 = v68;
      }

      (*(v52 + 56))(v57, v58, 1, v51);
      if (v53(v50, 1, v51) != 1)
      {
        sub_8EF0(v50, &qword_C4808);
      }
    }

    else
    {
      v57 = v68;
      (*(v52 + 32))(v68, v50, v51);
      (*(v52 + 56))(v57, 0, 1, v51);
    }

    sub_3A90(&qword_C4840);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_98740;
    v60 = sub_577BC(v46, v48, v57);
    v62 = v61;

    *(v59 + 32) = v60;
    *(v59 + 40) = v62;
    v63 = sub_90730().super.isa;

    [v22 setAlternateNames:v63];

    sub_8EF0(v57, &qword_C4808);
    (*(v66 + 8))(v21, v67);
  }

  return v22;
}

uint64_t sub_24A10(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_8FD60();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_24A54()
{
  result = [objc_allocWithZone(type metadata accessor for OperationsManager()) init];
  qword_C5288 = result;
  return result;
}

id sub_24A84()
{
  v1 = &v0[OBJC_IVAR____TtC15JournalSettings17OperationsManager_mapTableFileAttachmentsQueue];
  v2 = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
  *v1 = 0;
  *(v1 + 1) = v2;
  v3 = &v0[OBJC_IVAR____TtC15JournalSettings17OperationsManager_mapTableAssetMetadataQueue];
  v4 = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
  *v3 = 0;
  *(v3 + 1) = v4;
  v5 = [objc_allocWithZone(NSOperationQueue) init];
  v6 = OBJC_IVAR____TtC15JournalSettings17OperationsManager_cacheQueueLowPriority;
  *&v0[OBJC_IVAR____TtC15JournalSettings17OperationsManager_cacheQueueLowPriority] = v5;
  v7 = qword_C3A28;
  v8 = v5;
  if (v7 != -1)
  {
    swift_once();
  }

  [v8 setUnderlyingQueue:qword_D05A8];

  v9 = *&v0[v6];
  v10 = sub_90550();
  [v9 setName:v10];

  [*&v0[v6] setMaxConcurrentOperationCount:6];
  [*&v0[v6] setQualityOfService:9];
  v11 = [objc_allocWithZone(NSOperationQueue) init];
  v12 = OBJC_IVAR____TtC15JournalSettings17OperationsManager_cacheQueueRegularPriority;
  *&v0[OBJC_IVAR____TtC15JournalSettings17OperationsManager_cacheQueueRegularPriority] = v11;
  v13 = qword_C3A30;
  v14 = v11;
  if (v13 != -1)
  {
    swift_once();
  }

  [v14 setUnderlyingQueue:qword_D05B0];

  v15 = *&v0[v12];
  v16 = sub_90550();
  [v15 setName:v16];

  [*&v0[v12] setMaxConcurrentOperationCount:6];
  [*&v0[v12] setQualityOfService:-1];
  v17 = [objc_allocWithZone(NSOperationQueue) init];
  v18 = OBJC_IVAR____TtC15JournalSettings17OperationsManager_cacheQueueHighPriority;
  *&v0[OBJC_IVAR____TtC15JournalSettings17OperationsManager_cacheQueueHighPriority] = v17;
  v19 = qword_C3A38;
  v20 = v17;
  if (v19 != -1)
  {
    swift_once();
  }

  [v20 setUnderlyingQueue:qword_D05B8];

  v21 = *&v0[v18];
  v22 = sub_90550();
  [v21 setName:v22];

  [*&v0[v18] setMaxConcurrentOperationCount:2];
  [*&v0[v18] setQualityOfService:33];
  v23 = [objc_allocWithZone(NSOperationQueue) init];
  v24 = OBJC_IVAR____TtC15JournalSettings17OperationsManager_fileAttachmentsQueue;
  *&v0[OBJC_IVAR____TtC15JournalSettings17OperationsManager_fileAttachmentsQueue] = v23;
  v25 = qword_C3918;
  v26 = v23;
  if (v25 != -1)
  {
    swift_once();
  }

  [v26 setUnderlyingQueue:qword_D03C0];

  v27 = *&v0[v24];
  v28 = sub_90550();
  [v27 setName:v28];

  [*&v0[v24] setMaxConcurrentOperationCount:2];
  [*&v0[v24] setQualityOfService:-1];
  v29 = [objc_allocWithZone(NSOperationQueue) init];
  v30 = OBJC_IVAR____TtC15JournalSettings17OperationsManager_assetMetadataQueue;
  *&v0[OBJC_IVAR____TtC15JournalSettings17OperationsManager_assetMetadataQueue] = v29;
  v31 = qword_C3920;
  v32 = v29;
  if (v31 != -1)
  {
    swift_once();
  }

  [v32 setUnderlyingQueue:qword_D03C8];

  v33 = *&v0[v30];
  v34 = sub_90550();
  [v33 setName:v34];

  [*&v0[v30] setMaxConcurrentOperationCount:2];
  [*&v0[v30] setQualityOfService:-1];
  v35 = [objc_allocWithZone(NSOperationQueue) init];
  v36 = OBJC_IVAR____TtC15JournalSettings17OperationsManager_batchRecordDownloadQueue;
  *&v0[OBJC_IVAR____TtC15JournalSettings17OperationsManager_batchRecordDownloadQueue] = v35;
  v37 = qword_C3928;
  v38 = v35;
  if (v37 != -1)
  {
    swift_once();
  }

  [v38 setUnderlyingQueue:qword_D03D0];

  v39 = *&v0[v36];
  v40 = sub_90550();
  [v39 setName:v40];

  [*&v0[v36] setMaxConcurrentOperationCount:1];
  [*&v0[v36] setQualityOfService:9];
  v42.receiver = v0;
  v42.super_class = type metadata accessor for OperationsManager();
  return objc_msgSendSuper2(&v42, "init");
}

id sub_25078()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OperationsManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_25184()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_3A90(&qword_C52F8);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

void sub_251B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  if (qword_C3940 != -1)
  {
LABEL_31:
    swift_once();
  }

  v5 = qword_C5288;
  sub_3A90(&qword_C4BD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_998A0;
  v7 = *(v5 + OBJC_IVAR____TtC15JournalSettings17OperationsManager_cacheQueueHighPriority);
  *(inited + 32) = v7;
  v31 = inited + 32;
  v8 = *(v5 + OBJC_IVAR____TtC15JournalSettings17OperationsManager_cacheQueueRegularPriority);
  *(inited + 40) = v8;
  v9 = *(v5 + OBJC_IVAR____TtC15JournalSettings17OperationsManager_cacheQueueLowPriority);
  *(inited + 48) = v9;
  v10 = inited & 0xC000000000000001;
  v29 = inited & 0xFFFFFFFFFFFFFF8;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = 0;
  v30 = v10;
  do
  {
    v32 = v14;
    if (v10)
    {
      v15 = sub_90EC0();
    }

    else
    {
      if (v14 >= *(v29 + 16))
      {
        goto LABEL_30;
      }

      v15 = *(v31 + 8 * v14);
    }

    v33 = v15;
    v16 = [v15 operations];
    sub_2561C(0, &qword_C5300);
    v17 = sub_90740();

    if (v17 >> 62)
    {
      v18 = sub_90FA0();
      if (v18)
      {
LABEL_10:
        v19 = 0;
        while (1)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v20 = sub_90EC0();
          }

          else
          {
            if (v19 >= *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_29;
            }

            v20 = *(v17 + 8 * v19 + 32);
          }

          v21 = v20;
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          type metadata accessor for ThumbnailCacheOperation();
          v23 = swift_dynamicCastClass();
          if (v23)
          {
            v24 = v23;
            v25 = *(v23 + qword_C7530) == a1 && *(v23 + qword_C7530 + 8) == a2;
            if (v25 || (sub_910F0() & 1) != 0)
            {
              v26 = v21;

              swift_setDeallocating();
              swift_arrayDestroy();
              v27 = v26;
              [v24 setQueuePriority:v28];

              return;
            }
          }

          ++v19;
          if (v22 == v18)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    else
    {
      v18 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
      if (v18)
      {
        goto LABEL_10;
      }
    }

LABEL_3:
    v14 = v32 + 1;

    v10 = v30;
  }

  while (v32 != 2);
  swift_setDeallocating();
  swift_arrayDestroy();
}

id sub_254D0(uint64_t a1)
{
  if (qword_C3940 != -1)
  {
    swift_once();
  }

  v2 = qword_C5288;
  sub_2561C(0, &qword_C5308);
  if (qword_C3A28 != -1)
  {
    swift_once();
  }

  if (sub_90CB0())
  {
    v3 = &OBJC_IVAR____TtC15JournalSettings17OperationsManager_cacheQueueLowPriority;
  }

  else
  {
    if (qword_C3A38 != -1)
    {
      swift_once();
    }

    v4 = sub_90CB0();
    v3 = &OBJC_IVAR____TtC15JournalSettings17OperationsManager_cacheQueueRegularPriority;
    if (v4)
    {
      v3 = &OBJC_IVAR____TtC15JournalSettings17OperationsManager_cacheQueueHighPriority;
    }
  }

  v5 = *(v2 + *v3);

  return [v5 addOperation:a1];
}

uint64_t sub_2561C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *sub_25664(uint64_t a1, uint64_t a2)
{
  if (qword_C3940 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v4 = qword_C5288;
    sub_2561C(0, &qword_C5308);
    if (qword_C3A28 != -1)
    {
      swift_once();
    }

    if (sub_90CB0())
    {
      v5 = &OBJC_IVAR____TtC15JournalSettings17OperationsManager_cacheQueueLowPriority;
    }

    else
    {
      if (qword_C3A38 != -1)
      {
        swift_once();
      }

      v6 = sub_90CB0();
      v5 = &OBJC_IVAR____TtC15JournalSettings17OperationsManager_cacheQueueRegularPriority;
      if (v6)
      {
        v5 = &OBJC_IVAR____TtC15JournalSettings17OperationsManager_cacheQueueHighPriority;
      }
    }

    v7 = [*(v4 + *v5) operations];
    sub_2561C(0, &qword_C5300);
    v8 = sub_90740();

    if (v8 >> 62)
    {
      break;
    }

    v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      goto LABEL_32;
    }

LABEL_12:
    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = sub_90EC0();
      }

      else
      {
        if (v10 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_29;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      type metadata accessor for ThumbnailCacheOperation();
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        v15 = v14;
        v16 = *(v14 + qword_C7530) == a1 && *(v14 + qword_C7530 + 8) == a2;
        if (v16 || (sub_910F0()) && ![v15 isCancelled])
        {

          return v15;
        }
      }

      ++v10;
      if (v13 == v9)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }

  v9 = sub_90FA0();
  if (v9)
  {
    goto LABEL_12;
  }

LABEL_32:

  return 0;
}

void sub_25904(uint64_t a1, uint64_t a2)
{
  if (qword_C3940 != -1)
  {
    swift_once();
  }

  v4 = qword_C5288;
  sub_3A90(&qword_C4BD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_998A0;
  v6 = *(v4 + OBJC_IVAR____TtC15JournalSettings17OperationsManager_cacheQueueHighPriority);
  *(inited + 32) = v6;
  v7 = *(v4 + OBJC_IVAR____TtC15JournalSettings17OperationsManager_cacheQueueRegularPriority);
  *(inited + 40) = v7;
  v8 = *(v4 + OBJC_IVAR____TtC15JournalSettings17OperationsManager_cacheQueueLowPriority);
  *(inited + 48) = v8;
  v9 = inited & 0xC000000000000001;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  if ((inited & 0xC000000000000001) != 0)
  {
    v13 = sub_90EC0();
  }

  else
  {
    if (!*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_26;
    }

    v13 = v10;
  }

  v14 = v13;
  v15 = [v13 underlyingQueue];
  if (v15)
  {
    v16 = v15;
    v17 = sub_25664(a1, a2);

    if (v17)
    {
      goto LABEL_23;
    }

    v14 = v16;
  }

  if (v9)
  {
    v18 = sub_90EC0();
  }

  else
  {
    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 2uLL)
    {
      goto LABEL_26;
    }

    v18 = *(inited + 40);
  }

  v19 = v18;
  v20 = [v18 underlyingQueue];
  if (v20)
  {
    v21 = v20;
    v22 = sub_25664(a1, a2);

    if (!v22)
    {
      v19 = v21;
      goto LABEL_17;
    }

LABEL_23:

    return;
  }

LABEL_17:

  if (!v9)
  {
    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) >= 3uLL)
    {
      v23 = *(inited + 48);
      goto LABEL_21;
    }

LABEL_26:
    __break(1u);
    return;
  }

  v23 = sub_90EC0();
LABEL_21:
  v24 = v23;
  v25 = [v23 underlyingQueue];
  if (v25)
  {
    v26 = v25;
    v27 = sub_25664(a1, a2);

    if (v27)
    {
      goto LABEL_23;
    }

    v24 = v26;
  }
}

id sub_25B5C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC15JournalSettings16JournalAssetView_fallbackView;
  type metadata accessor for CanvasFallbackAssetView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4[OBJC_IVAR____TtC15JournalSettings16JournalAssetView_hasCalledSizeTypeUpdated] = 0;
  v4[OBJC_IVAR____TtC15JournalSettings16JournalAssetView_sizeType] = 6;
  *&v4[OBJC_IVAR____TtC15JournalSettings16JournalAssetView_loadingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC15JournalSettings16JournalAssetView_isAssetFinishedLoading] = 0;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for JournalAssetView();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

id sub_25C54(void *a1)
{
  v3 = OBJC_IVAR____TtC15JournalSettings16JournalAssetView_fallbackView;
  type metadata accessor for CanvasFallbackAssetView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1[OBJC_IVAR____TtC15JournalSettings16JournalAssetView_hasCalledSizeTypeUpdated] = 0;
  v1[OBJC_IVAR____TtC15JournalSettings16JournalAssetView_sizeType] = 6;
  *&v1[OBJC_IVAR____TtC15JournalSettings16JournalAssetView_loadingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC15JournalSettings16JournalAssetView_isAssetFinishedLoading] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for JournalAssetView();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_25D48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalAssetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_25E14()
{

  v1 = OBJC_IVAR____TtC15JournalSettings31CustomAttributeProviderConcrete_logger;
  v2 = sub_900D0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustomAttributeProviderConcrete()
{
  result = qword_C5388;
  if (!qword_C5388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F0C()
{
  result = sub_900D0();
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

uint64_t sub_25FA8@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  result = sub_900C0();
  *a1 = v2;
  return result;
}

id sub_26038()
{
  v0 = [objc_opt_self() labelColor];

  return v0;
}

void sub_26078(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9)
{
  v10 = COERCE_DOUBLE(&_swiftEmptyDictionarySingleton);
  v127 = COERCE_DOUBLE(&_swiftEmptyDictionarySingleton);
  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  v124 = v11;
  if (!v14)
  {
    goto LABEL_8;
  }

  while (2)
  {
    while (2)
    {
      v22 = v16;
LABEL_16:
      v25 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v26 = v25 | (v22 << 6);
      v27 = *(*(a1 + 48) + 8 * v26);
      sub_7F40(*(a1 + 56) + 32 * v26, &v129);
      *&v131 = v27;
      sub_C8E4(&v129, (&v131 + 8));
      v28 = v27;
LABEL_17:
      v134 = v131;
      v135 = v132;
      v136 = v133;
      v29 = v131;
      if (!v131)
      {

        if (*(*&v10 + 16))
        {
          v102 = sub_7B4F0(NSForegroundColorAttributeName);
          v104 = a9;
          v103 = a3;
          v105 = a2;
          if (v106)
          {
            sub_7F40(*(*&v10 + 56) + 32 * v102, &v134);
            sub_26E74(&v134);
            if (!*(*&v10 + 16))
            {
              goto LABEL_89;
            }

LABEL_87:
            v109 = sub_7B4F0(NSFontAttributeName);
            if (v110)
            {
              sub_7F40(*(*&v10 + 56) + 32 * v109, &v134);
              sub_26E74(&v134);
LABEL_92:
              sub_79FA8(NSAdaptiveImageGlyphAttributeName, &v134);
              sub_26E74(&v134);
              type metadata accessor for Key(0);
              sub_26EDC();
              isa = sub_90440().super.isa;
              [v104 setAttributes:isa range:{v105, v103}];

              return;
            }

LABEL_89:
            v134 = 0u;
            v135 = 0u;
            sub_26E74(&v134);
            v111 = a8;
            *(&v135 + 1) = sub_2561C(0, &qword_C5420);
            if (!a8)
            {
              v111 = a6;
            }

            *&v134 = v111;
            sub_C8E4(&v134, &v131);
            v112 = v111;
            v113 = v127;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v129 = v113;
            sub_85E94(&v131, NSFontAttributeName, isUniquelyReferenced_nonNull_native);
            v127 = *&v129;
            goto LABEL_92;
          }

          v10 = v127;
        }

        else
        {
          v104 = a9;
          v103 = a3;
          v105 = a2;
        }

        v134 = 0u;
        v135 = 0u;
        sub_26E74(&v134);
        *(&v135 + 1) = sub_2561C(0, &qword_C3FD8);
        *&v134 = a7;
        sub_C8E4(&v134, &v131);
        v107 = a7;
        v108 = swift_isUniquelyReferenced_nonNull_native();
        *&v129 = v10;
        sub_85E94(&v131, NSForegroundColorAttributeName, v108);
        v10 = *&v129;
        v127 = *&v129;
        if (!*(v129 + 16))
        {
          goto LABEL_89;
        }

        goto LABEL_87;
      }

      sub_C8E4((&v134 + 8), &v131);
      v30 = sub_90590();
      v32 = v31;
      if (v30 == sub_90590() && v32 == v33)
      {

        v34 = &stru_BB000;
      }

      else
      {
        v35 = sub_910F0();

        v34 = &stru_BB000;
        if ((v35 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      sub_7F40(&v131, &v129);
      v36 = sub_2561C(0, &qword_C5420);
      if (swift_dynamicCast())
      {
        v122 = v128[0];
        v37 = [v122 fontDescriptor];
        v38 = v34;
        v39 = [v37 *&v34[75].align];

        if (v39 && (v40 = [a6 fontDescriptor], v41 = objc_msgSend(a6, "fontDescriptor"), v42 = objc_msgSend(v41, *&v38[75].align), v41, v43 = objc_msgSend(v40, "fontDescriptorWithSymbolicTraits:", v42 | v39), v40, v43))
        {
          v44 = [objc_opt_self() fontWithDescriptor:v43 size:0.0];

          v45 = v122;
        }

        else
        {
          v45 = v122;

          v44 = a6;
        }

        v130 = v36;
        *&v129 = v44;
        sub_C8E4(&v129, v128);
        v69 = v44;
        v70 = v127;
        v71 = swift_isUniquelyReferenced_nonNull_native();
        v126 = v70;
        v73 = sub_7B4F0(v29);
        v74 = *(*&v70 + 16);
        v75 = (v72 & 1) == 0;
        v76 = v74 + v75;
        if (__OFADD__(v74, v75))
        {
          goto LABEL_94;
        }

        v77 = v72;
        if (*(*&v70 + 24) < v76)
        {
          sub_85510(v76, v71);
          v78 = sub_7B4F0(v29);
          if ((v77 & 1) != (v79 & 1))
          {
            goto LABEL_100;
          }

          v73 = v78;
          v10 = v126;
          if ((v77 & 1) == 0)
          {
            goto LABEL_68;
          }

LABEL_56:
          v80 = (*(*&v10 + 56) + 32 * v73);
          sub_7FA4(v80);
          sub_C8E4(v128, v80);

          sub_7FA4(&v131);
LABEL_70:
          v127 = v10;
          goto LABEL_78;
        }

        if (v71)
        {
          v10 = v126;
          if (v72)
          {
            goto LABEL_56;
          }
        }

        else
        {
          sub_8674C();
          v10 = v126;
          if (v77)
          {
            goto LABEL_56;
          }
        }

LABEL_68:
        *(*&v10 + 8 * (v73 >> 6) + 64) |= 1 << v73;
        *(*(*&v10 + 48) + 8 * v73) = v29;
        sub_C8E4(v128, (*(*&v10 + 56) + 32 * v73));

        sub_7FA4(&v131);
        v93 = *(*&v10 + 16);
        v65 = __OFADD__(v93, 1);
        v94 = v93 + 1;
        if (v65)
        {
          goto LABEL_96;
        }

        *(*&v10 + 16) = v94;
        goto LABEL_70;
      }

LABEL_26:
      v46 = sub_90590();
      v48 = v47;
      if (v46 == sub_90590() && v48 == v49)
      {
      }

      else
      {
        v50 = sub_910F0();

        if ((v50 & 1) == 0)
        {
LABEL_38:
          v54 = sub_90590();
          v56 = v55;
          if (v54 == sub_90590() && v56 == v57)
          {
          }

          else
          {
            v58 = sub_910F0();

            if ((v58 & 1) == 0)
            {
              goto LABEL_43;
            }
          }

          sub_7F40(&v131, &v129);
          sub_2561C(0, &qword_C5428);
          if (swift_dynamicCast())
          {
            v17 = v128[0];
            v18 = sub_573DC();
            [v18 setParagraphSpacingBefore:a4];
            sub_CA88();
            v130 = sub_2561C(0, &qword_C5430);
            *&v129 = v18;
            sub_C8E4(&v129, v128);
            v19 = v18;
            v20 = v127;
            v21 = swift_isUniquelyReferenced_nonNull_native();
            v126 = v20;
            sub_85E94(v128, NSParagraphStyleAttributeName, v21);

            sub_7FA4(&v131);
            v10 = v126;
            goto LABEL_6;
          }

LABEL_43:
          sub_7F40(&v131, &v129);
          v59 = v127;
          v60 = swift_isUniquelyReferenced_nonNull_native();
          v128[0] = *&v59;
          v61 = sub_7B4F0(v29);
          v63 = *(*&v59 + 16);
          v64 = (v62 & 1) == 0;
          v65 = __OFADD__(v63, v64);
          v66 = v63 + v64;
          if (v65)
          {
            goto LABEL_95;
          }

          v67 = v62;
          if (*(*&v59 + 24) >= v66)
          {
            if ((v60 & 1) == 0)
            {
              v95 = v61;
              sub_8674C();
              v61 = v95;
              v10 = *v128;
              if (v67)
              {
                goto LABEL_59;
              }

              goto LABEL_72;
            }
          }

          else
          {
            sub_85510(v66, v60);
            v61 = sub_7B4F0(v29);
            if ((v67 & 1) != (v68 & 1))
            {
              goto LABEL_100;
            }
          }

          v10 = *v128;
          if (v67)
          {
LABEL_59:
            v81 = (*(*&v10 + 56) + 32 * v61);
            sub_7FA4(v81);
            sub_C8E4(&v129, v81);

            sub_7FA4(&v131);
LABEL_6:
            v127 = v10;
            v11 = v124;
            if (v14)
            {
              continue;
            }

            goto LABEL_8;
          }

LABEL_72:
          *(*&v10 + 8 * (v61 >> 6) + 64) |= 1 << v61;
          *(*(*&v10 + 48) + 8 * v61) = v29;
          sub_C8E4(&v129, (*(*&v10 + 56) + 32 * v61));
          sub_7FA4(&v131);
          v96 = *(*&v10 + 16);
          v65 = __OFADD__(v96, 1);
          v97 = v96 + 1;
          if (v65)
          {
            goto LABEL_97;
          }

          *(*&v10 + 16) = v97;
          goto LABEL_6;
        }
      }

      break;
    }

    sub_7F40(&v131, &v129);
    v51 = sub_2561C(0, &qword_C3FD8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_38;
    }

    v52 = v128[0];
    *&v129 = 0;
    v128[0] = 0;
    v125 = 0;
    v126 = 0.0;
    [v52 getRed:&v129 green:v128 blue:&v126 alpha:&v125];
    v53 = *&v129;
    if (*&v129 > 0.001 || (v53 = *v128, *v128 > 0.001) || (v53 = v126, v126 > 0.001))
    {
      *&v129 = 0;
      v128[0] = 0;
      v125 = 0;
      v126 = 0.0;
      [v52 getRed:&v129 green:v128 blue:&v126 alpha:{&v125, v53}];
      if (*&v129 < 0.99 || *v128 < 0.99 || v126 < 0.99)
      {

        goto LABEL_38;
      }
    }

    v130 = v51;
    *&v129 = a7;
    sub_C8E4(&v129, v128);
    v82 = a7;
    v83 = v127;
    v84 = swift_isUniquelyReferenced_nonNull_native();
    v126 = v83;
    v85 = sub_7B4F0(NSForegroundColorAttributeName);
    v87 = *(*&v83 + 16);
    v88 = (v86 & 1) == 0;
    v65 = __OFADD__(v87, v88);
    v89 = v87 + v88;
    if (v65)
    {
      goto LABEL_98;
    }

    v90 = v86;
    if (*(*&v83 + 24) >= v89)
    {
      if ((v84 & 1) == 0)
      {
        v98 = v85;
        sub_8674C();
        v85 = v98;
        v10 = v126;
        if (v90)
        {
          goto LABEL_66;
        }

        goto LABEL_75;
      }

LABEL_65:
      v10 = v126;
      if (v90)
      {
LABEL_66:
        v92 = (*(*&v10 + 56) + 32 * v85);
        sub_7FA4(v92);
        sub_C8E4(v128, v92);

        sub_7FA4(&v131);
LABEL_77:
        v127 = v10;
LABEL_78:
        v11 = v124;
        if (v14)
        {
          continue;
        }

LABEL_8:
        if (v15 <= v16 + 1)
        {
          v23 = v16 + 1;
        }

        else
        {
          v23 = v15;
        }

        v24 = v23 - 1;
        while (1)
        {
          v22 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v22 >= v15)
          {
            v14 = 0;
            v133 = 0;
            v16 = v24;
            v131 = 0u;
            v132 = 0u;
            goto LABEL_17;
          }

          v14 = *(v11 + 8 * v22);
          ++v16;
          if (v14)
          {
            v16 = v22;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
      }

LABEL_75:
      *(*&v10 + 8 * (v85 >> 6) + 64) |= 1 << v85;
      *(*(*&v10 + 48) + 8 * v85) = NSForegroundColorAttributeName;
      sub_C8E4(v128, (*(*&v10 + 56) + 32 * v85));
      v99 = NSForegroundColorAttributeName;

      sub_7FA4(&v131);
      v100 = *(*&v10 + 16);
      v65 = __OFADD__(v100, 1);
      v101 = v100 + 1;
      if (v65)
      {
        goto LABEL_99;
      }

      *(*&v10 + 16) = v101;
      goto LABEL_77;
    }

    break;
  }

  sub_85510(v89, v84);
  v85 = sub_7B4F0(NSForegroundColorAttributeName);
  if ((v90 & 1) == (v91 & 1))
  {
    goto LABEL_65;
  }

LABEL_100:
  type metadata accessor for Key(0);
  sub_91120();
  __break(1u);
}

id sub_26CAC(void *a1)
{
  if ([a1 horizontalSizeClass] == &dword_0 + 2 || objc_msgSend(a1, "userInterfaceIdiom") == &dword_4 + 1)
  {
    v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle3 compatibleWithTraitCollection:a1];

    return v2;
  }

  else
  {
    v4 = sub_7B27C(UIFontTextStyleBody, &off_B3658, a1);
    sub_26D70(&unk_B3678);
    return v4;
  }
}

id sub_26DC4(void *a1)
{
  v2 = &off_B3690;
  v3 = &unk_B36B0;
  if ([a1 horizontalSizeClass] == &dword_0 + 2)
  {
    v4 = &UIFontTextStyleTitle3;
  }

  else
  {
    v5 = [a1 userInterfaceIdiom];
    v4 = &UIFontTextStyleTitle3;
    if (v5 != &dword_4 + 1)
    {
      v4 = &UIFontTextStyleHeadline;
      v2 = &off_B36C8;
      v3 = &unk_B36E8;
    }
  }

  v6 = sub_7B27C(*v4, v2, a1);
  sub_26D70(v3);
  return v6;
}

uint64_t sub_26E74(uint64_t a1)
{
  v2 = sub_3A90(&qword_C5418);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26EDC()
{
  result = qword_C3D20;
  if (!qword_C3D20)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3D20);
  }

  return result;
}

uint64_t sub_26F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_3A90(&qword_C5470);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v20 - v9;
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  switch(a1)
  {
    case 1:
      v13 = &enum case for MergeableWritingDirection.rightToLeft(_:);
      goto LABEL_7;
    case 0:
      v13 = &enum case for MergeableWritingDirection.leftToRight(_:);
      goto LABEL_7;
    case -1:
      v13 = &enum case for MergeableWritingDirection.natural(_:);
LABEL_7:
      v14 = *v13;
      v15 = sub_8FB60();
      v16 = *(v15 - 8);
      (*(v16 + 104))(v10, v14, v15);
      (*(v16 + 56))(v10, 0, 1, v15);
      goto LABEL_9;
  }

  v15 = sub_8FB60();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
LABEL_9:
  sub_17F0C(v10, v12, &qword_C5470);
  sub_17F0C(v12, v7, &qword_C5470);
  sub_8FB60();
  v17 = *(v15 - 8);
  if ((*(v17 + 48))(v7, 1, v15) == 1)
  {
    sub_8EF0(v7, &qword_C5470);
    v18 = 1;
  }

  else
  {
    (*(v17 + 32))(a2, v7, v15);
    v18 = 0;
  }

  return (*(v17 + 56))(a2, v18, 1, v15);
}

uint64_t sub_27204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_3A90(&qword_C5468);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v20 - v9;
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  if (a1 <= 1)
  {
    if (!a1)
    {
      v13 = &enum case for MergeableTextAlignment.left(_:);
      goto LABEL_12;
    }

    if (a1 == 1)
    {
      v13 = &enum case for MergeableTextAlignment.center(_:);
      goto LABEL_12;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v13 = &enum case for MergeableTextAlignment.right(_:);
        goto LABEL_12;
      case 3:
        v13 = &enum case for MergeableTextAlignment.justified(_:);
        goto LABEL_12;
      case 4:
        v13 = &enum case for MergeableTextAlignment.natural(_:);
LABEL_12:
        v14 = *v13;
        v15 = sub_8F940();
        v16 = *(v15 - 8);
        (*(v16 + 104))(v10, v14, v15);
        (*(v16 + 56))(v10, 0, 1, v15);
        goto LABEL_13;
    }
  }

  v15 = sub_8F940();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
LABEL_13:
  sub_17F0C(v10, v12, &qword_C5468);
  sub_17F0C(v12, v7, &qword_C5468);
  sub_8F940();
  v17 = *(v15 - 8);
  if ((*(v17 + 48))(v7, 1, v15) == 1)
  {
    sub_8EF0(v7, &qword_C5468);
    v18 = 1;
  }

  else
  {
    (*(v17 + 32))(a2, v7, v15);
    v18 = 0;
  }

  return (*(v17 + 56))(a2, v18, 1, v15);
}

size_t sub_27504@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = sub_8F6C0();
  v4 = *(v29 - 8);
  v5 = __chkstk_darwin(v29);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v26 - v8;
  v10 = sub_90380();
  __chkstk_darwin(v10 - 8);
  if (!(a1 >> 62))
  {
    v11 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_16:

    sub_90370();
    return sub_8F700();
  }

  v11 = sub_90FA0();
  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_3:
  v12 = a1;
  v30 = _swiftEmptyArrayStorage;
  result = sub_1CA88(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v26[1] = a2;
    v14 = v30;
    v15 = v12;
    v28 = v12;
    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = 0;
      v27 = v4 + 32;
      do
      {
        v17 = sub_90EC0();
        v18 = [swift_unknownObjectRetain() markerFormat];
        sub_90590();

        [v17 startingItemNumber];
        sub_90370();
        sub_8F6A0();
        swift_unknownObjectRelease_n();
        v30 = v14;
        v20 = *(v14 + 2);
        v19 = *(v14 + 3);
        if (v20 >= v19 >> 1)
        {
          sub_1CA88(v19 > 1, v20 + 1, 1);
          v14 = v30;
        }

        ++v16;
        *(v14 + 2) = v20 + 1;
        (*(v4 + 32))(v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, v9, v29);
      }

      while (v11 != v16);
    }

    else
    {
      v27 = v4 + 32;
      v21 = 32;
      do
      {
        v22 = *(v15 + v21);
        v23 = [v22 markerFormat];
        sub_90590();

        [v22 startingItemNumber];
        sub_90370();
        sub_8F6A0();

        v30 = v14;
        v25 = *(v14 + 2);
        v24 = *(v14 + 3);
        if (v25 >= v24 >> 1)
        {
          sub_1CA88(v24 > 1, v25 + 1, 1);
          v14 = v30;
        }

        *(v14 + 2) = v25 + 1;
        (*(v4 + 32))(v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v25, v7, v29);
        v21 += 8;
        --v11;
        v15 = v28;
      }

      while (v11);
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_278E0()
{
  v1 = v0;
  v2 = sub_8F620();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3A90(&qword_C5438);
  v5 = __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_8FE30();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_8F5F0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, v1, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for MergeableColor.sRGB(_:))
  {
    (*(v15 + 96))(v17, v14);
    (*(v11 + 32))(v13, v17, v10);
    v19 = sub_8FE20();
    (*(v11 + 8))(v13, v10);
    return v19;
  }

  if (v18 == enum case for MergeableColor.catalogColor(_:))
  {
    (*(v15 + 96))(v17, v14);
    sub_17F0C(v17, v9, &qword_C5438);
    sub_27D8C(v9, v7);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_8EF0(v9, &qword_C5438);
      sub_8EF0(v7, &qword_C5438);
      return 0;
    }

    else
    {
      v22 = v28;
      v23 = v29;
      v24 = v30;
      (*(v29 + 32))(v28, v7, v30);
      sub_8F610();
      v25 = sub_90550();

      v19 = [objc_opt_self() colorNamed:v25];

      (*(v23 + 8))(v22, v24);
      sub_8EF0(v9, &qword_C5438);
    }

    return v19;
  }

  if (v18 == enum case for MergeableColor.unknown(_:))
  {
    (*(v15 + 96))(v17, v14);
    v20 = *(sub_3A90(&qword_C5440) + 48);
    v21 = sub_90300();
    (*(*(v21 - 8) + 8))(&v17[v20], v21);
    return 0;
  }

  result = sub_910E0();
  __break(1u);
  return result;
}

uint64_t sub_27D8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3A90(&qword_C5438);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27DFC(char a1)
{
  v2 = sub_8F5A0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v12 - v7;
  v12[1] = 0;
  sub_28290(&qword_C5448);
  result = sub_912C0();
  if (a1)
  {
    sub_8F590();
    sub_27FA8(v8, v6);
    v10 = *(v3 + 8);
    v10(v6, v2);
    result = (v10)(v8, v2);
  }

  if ((a1 & 2) != 0)
  {
    sub_8F580();
    sub_27FA8(v8, v6);
    v11 = *(v3 + 8);
    v11(v6, v2);
    return (v11)(v8, v2);
  }

  return result;
}

uint64_t sub_27FA8(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = sub_3A90(&qword_C5450);
  v5 = __chkstk_darwin(v4);
  v26 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  v9 = sub_8F5A0();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  v16 = *(v10 + 16);
  v25 = v2;
  v16(v13, v2, v9);
  v23 = sub_28290(&qword_C5458);
  sub_90DA0();
  sub_28290(&qword_C5460);
  v24 = a2;
  v17 = sub_904D0();
  v27 = v4;
  v18 = *(v4 + 48);
  *v8 = (v17 & 1) == 0;
  if (v17)
  {
    (*(v10 + 32))(&v8[v18], v15, v9);
  }

  else
  {
    (*(v10 + 8))(v15, v9);
    v19 = v24;
    v16(&v8[v18], v24, v9);
    v16(v13, v19, v9);
    sub_90DB0();
  }

  v20 = v26;
  sub_17F0C(v8, v26, &qword_C5450);
  v21 = *v20;
  (*(v10 + 32))(v28, &v20[*(v27 + 48)], v9);
  return v21;
}

uint64_t sub_28290(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_8F5A0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_282D4()
{
  v0 = sub_900D0();
  sub_8F9C(v0, qword_C5478);
  v1 = sub_7FF0(v0, qword_C5478);
  if (qword_C3A98 != -1)
  {
    swift_once();
  }

  v2 = sub_7FF0(v0, qword_D0798);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_2839C()
{
  if (qword_C39C8 != -1)
  {
    swift_once();
  }

  v1 = qword_D04D0;
  qword_D0450 = qword_D04D0;

  return v1;
}

void sub_28400(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v132 = a3;
  v7 = sub_3A90(&qword_C54E8);
  __chkstk_darwin(v7 - 8);
  v122 = v112 - v8;
  v9 = sub_3A90(&qword_C54D8);
  __chkstk_darwin(v9 - 8);
  v121 = v112 - v10;
  v11 = sub_3A90(&qword_C54E0);
  __chkstk_darwin(v11 - 8);
  v131 = v112 - v12;
  v13 = sub_3A90(&qword_C54C8);
  __chkstk_darwin(v13 - 8);
  v115 = v112 - v14;
  v15 = sub_3A90(&qword_C5468);
  __chkstk_darwin(v15 - 8);
  v118 = v112 - v16;
  v120 = sub_8F940();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v114 = v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_3A90(&qword_C54C0);
  __chkstk_darwin(v18 - 8);
  v117 = v112 - v19;
  v20 = sub_3A90(&qword_C5470);
  __chkstk_darwin(v20 - 8);
  v128 = v112 - v21;
  v22 = sub_8FB60();
  v129 = *(v22 - 8);
  v130 = v22;
  __chkstk_darwin(v22);
  v116 = v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_3A90(&qword_C54D0);
  __chkstk_darwin(v24 - 8);
  v126 = v112 - v25;
  v127 = sub_8F720();
  v125 = *(v127 - 8);
  __chkstk_darwin(v127);
  v124 = v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_90380();
  __chkstk_darwin(v27 - 8);
  v28 = sub_8F5A0();
  v123.i64[0] = *(v28 - 8);
  v29 = __chkstk_darwin(v28);
  v31 = v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = v112 - v32;
  v34 = sub_3A90(&qword_C54F0);
  __chkstk_darwin(v34 - 8);
  v36 = v112 - v35;
  sub_8FC60();
  sub_2CB38(&qword_C54A8, &type metadata accessor for MergeableTextAttributeScope);
  v37 = a4;
  sub_90340();
  if (!*(a1 + 16) || (v38 = sub_7B4F0(NSFontAttributeName), (v39 & 1) == 0) || (sub_7F40(*(a1 + 56) + 32 * v38, v135), sub_2561C(0, &qword_C5420), (swift_dynamicCast() & 1) == 0))
  {
LABEL_8:
    v48 = v37;
    if (!*(a1 + 16))
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v113 = a2;
  v40 = *&v134[0];
  v41 = [*&v134[0] fontDescriptor];
  v42 = [v41 symbolicTraits];

  if ((v42 & 3) == 0)
  {

    a2 = v113;
    goto LABEL_8;
  }

  v112[1] = swift_getKeyPath();
  v43 = v40;
  v44 = [v43 fontDescriptor];
  v45 = [v44 symbolicTraits];

  sub_27DFC(v45);
  v46 = v123.i64[0];
  (*(v123.i64[0] + 16))(v31, v33, v28);
  sub_90370();
  sub_8F5B0();

  (*(v46 + 8))(v33, v28);
  v47 = sub_8F5D0();
  (*(*(v47 - 8) + 56))(v36, 0, 1, v47);
  sub_3A90(&qword_C54F8);
  sub_2CB38(&qword_C5500, &type metadata accessor for MergeableTextAttributeScope.FontAttribute);
  v48 = v37;
  sub_90330();

  a2 = v113;
  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

LABEL_9:
  v49 = sub_7B4F0(NSUnderlineStyleAttributeName);
  if (v50)
  {
    sub_7F40(*(a1 + 56) + 32 * v49, v135);
    if (swift_dynamicCast())
    {
      v51 = *&v134[0];
      if (*&v134[0])
      {
        swift_getKeyPath();
        *&v135[0] = v51;
        BYTE8(v135[0]) = 0;
        sub_3A90(&qword_C54F8);
        sub_2CB38(&qword_C5518, &type metadata accessor for MergeableTextAttributeScope.UnderlineAttribute);
        sub_90330();
      }
    }
  }

LABEL_13:
  if (*(a1 + 16))
  {
    v52 = sub_7B4F0(NSStrikethroughStyleAttributeName);
    if (v53)
    {
      sub_7F40(*(a1 + 56) + 32 * v52, v135);
      if (swift_dynamicCast())
      {
        v54 = *&v134[0];
        if (*&v134[0])
        {
          swift_getKeyPath();
          *&v135[0] = v54;
          BYTE8(v135[0]) = 0;
          sub_3A90(&qword_C54F8);
          sub_2CB38(&qword_C5520, &type metadata accessor for MergeableTextAttributeScope.StrikethroughAttribute);
          sub_90330();
        }
      }
    }
  }

  if (*(a1 + 16))
  {
    v55 = sub_7B4F0(NSParagraphStyleAttributeName);
    if (v56)
    {
      sub_7F40(*(a1 + 56) + 32 * v55, v135);
      sub_2561C(0, &qword_C5428);
      if (swift_dynamicCast())
      {
        v57 = a2;
        v58 = *&v134[0];
        [*&v134[0] firstLineHeadIndent];
        *v60.i64 = *v59.i64 - trunc(*v59.i64);
        v61.f64[0] = NAN;
        v61.f64[1] = NAN;
        v123 = vnegq_f64(v61);
        v62 = *vbslq_s8(v123, v60, v59).i64 + -0.1;
        [v58 headIndent];
        if (fabs(v62) < 0.01)
        {
          *v64.i64 = *v63.i64 - trunc(*v63.i64);
          if (fabs(*vbslq_s8(v123, v64, v63).i64 + -0.1) < 0.01)
          {
            swift_getKeyPath();
            LOBYTE(v135[0]) = 1;
            sub_3A90(&qword_C54F8);
            sub_2CB38(&qword_C5510, &type metadata accessor for MergeableTextAttributeScope.BlockQuoteAttribute);
            sub_90330();
          }
        }

        v65 = [v58 textLists];
        sub_2561C(0, &qword_C5560);
        v66 = sub_90740();

        if (v66 >> 62)
        {
          v111 = sub_90FA0();

          if (!v111)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v67 = *(&dword_10 + (v66 & 0xFFFFFFFFFFFFFF8));

          if (!v67)
          {
LABEL_27:
            a2 = v57;
            if ([v58 baseWritingDirection] != -1)
            {
              v74 = [v58 baseWritingDirection];
              v75 = v128;
              sub_26F34(v74, v128);
              v77 = v129;
              v76 = v130;
              if ((*(v129 + 48))(v75, 1, v130) == 1)
              {
                sub_8EF0(v75, &qword_C5470);
              }

              else
              {
                v78 = v116;
                (*(v77 + 32))(v116, v75, v76);
                swift_getKeyPath();
                v79 = v117;
                (*(v77 + 16))(v117, v78, v76);
                v80 = sub_3A90(&qword_C5558);
                swift_storeEnumTagMultiPayload();
                (*(*(v80 - 8) + 56))(v79, 0, 1, v80);
                sub_3A90(&qword_C54F8);
                sub_2CB38(&qword_C5550, &type metadata accessor for MergeableTextAttributeScope.WritingDirectionAttribute);
                a2 = v57;
                sub_90330();
                (*(v77 + 8))(v78, v76);
              }
            }

            if ([v58 alignment] == &dword_4)
            {
            }

            else
            {
              v81 = [v58 alignment];
              v82 = v118;
              sub_27204(v81, v118);
              v83 = v119;
              v84 = v120;
              if ((*(v119 + 48))(v82, 1, v120) == 1)
              {

                sub_8EF0(v82, &qword_C5468);
              }

              else
              {
                v85 = v114;
                (*(v83 + 32))(v114, v82, v84);
                swift_getKeyPath();
                v86 = v115;
                (*(v83 + 16))(v115, v85, v84);
                v87 = sub_3A90(&qword_C5548);
                swift_storeEnumTagMultiPayload();
                (*(*(v87 - 8) + 56))(v86, 0, 1, v87);
                sub_3A90(&qword_C54F8);
                sub_2CB38(&qword_C5540, &type metadata accessor for MergeableTextAttributeScope.AlignmentAttribute);
                a2 = v57;
                sub_90330();

                (*(v83 + 8))(v85, v84);
              }
            }

            goto LABEL_36;
          }
        }

        v68 = [v58 textLists];
        v69 = sub_90740();

        v70 = v124;
        sub_27504(v69, v124);
        swift_getKeyPath();
        v72 = v125;
        v71 = v126;
        v73 = v127;
        (*(v125 + 16))(v126, v70, v127);
        (*(v72 + 56))(v71, 0, 1, v73);
        sub_3A90(&qword_C54F8);
        sub_2CB38(&qword_C5538, &type metadata accessor for MergeableTextAttributeScope.TextListsAttribute);
        sub_90330();
        (*(v72 + 8))(v70, v73);
        goto LABEL_27;
      }
    }
  }

LABEL_36:
  if (!*(a1 + 16) || (v88 = sub_7B4F0(NSParagraphAttachmentAttributeName), (v89 & 1) == 0) || (sub_7F40(*(a1 + 56) + 32 * v88, v135), sub_2561C(0, &qword_C5568), (swift_dynamicCast() & 1) == 0))
  {
LABEL_42:
    if (!*(a1 + 16))
    {
      goto LABEL_50;
    }

    goto LABEL_43;
  }

  v90 = *&v134[0];
  v91 = [*&v134[0] textAttachment];
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v91)
  {
    swift_getKeyPath();
    v92 = a2;
    v93 = v91;
    v94 = v131;
    sub_8FCD0();
    v95 = sub_8FCF0();
    (*(*(v95 - 8) + 56))(v94, 0, 1, v95);
    sub_3A90(&qword_C54F8);
    sub_2CB38(&qword_C5528, &type metadata accessor for MergeableTextAttributeScope.AssetTextAttachmentAttribute);
    sub_90330();

    a2 = v92;
    goto LABEL_42;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_50;
  }

LABEL_43:
  v96 = sub_7B4F0(NSAttachmentAttributeName);
  if (v97)
  {
    sub_7F40(*(a1 + 56) + 32 * v96, v134);
    sub_C8E4(v134, v135);
    sub_7F40(v135, v134);
    sub_3A90(&qword_C5570);
    if (swift_dynamicCast())
    {
      v98 = v133;
      swift_getKeyPath();
      v99 = a2;
      v100 = v98;
      v101 = v131;
      sub_8FCD0();
      v102 = sub_8FCF0();
      (*(*(v102 - 8) + 56))(v101, 0, 1, v102);
      sub_3A90(&qword_C54F8);
      v103 = &qword_C5528;
      v104 = &type metadata accessor for MergeableTextAttributeScope.AssetTextAttachmentAttribute;
    }

    else
    {
      sub_7F40(v135, v134);
      sub_3A90(&qword_C5578);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_49:
        sub_7FA4(v135);
        goto LABEL_50;
      }

      v105 = v133;
      swift_getKeyPath();
      v99 = a2;
      v100 = v105;
      v106 = v121;
      sub_8FDB0();
      v107 = sub_8FDD0();
      (*(*(v107 - 8) + 56))(v106, 0, 1, v107);
      sub_3A90(&qword_C54F8);
      v103 = &unk_C5530;
      v104 = &type metadata accessor for MergeableTextAttributeScope.FollowUpPromptAttachmentAttribute;
    }

    sub_2CB38(v103, v104);
    a2 = v99;
    sub_90330();

    goto LABEL_49;
  }

LABEL_50:
  if (!*(a1 + 16) || (v108 = sub_7B4F0(NSForegroundColorAttributeName), (v109 & 1) == 0))
  {

    goto LABEL_56;
  }

  sub_7F40(*(a1 + 56) + 32 * v108, v135);

  sub_2561C(0, &qword_C3FD8);
  if (swift_dynamicCast())
  {
    v110 = *&v134[0];
    if (sub_299E4(*&v134[0], v48, v132))
    {
      swift_getKeyPath();
      sub_8F5E0();
      sub_3A90(&qword_C54F8);
      sub_2CB38(&qword_C5508, &type metadata accessor for MergeableTextAttributeScope.ColorAttribute);
      sub_90330();

LABEL_56:
      sub_7FA4(v132);
      return;
    }

    sub_7FA4(v132);
  }

  else
  {
    sub_7FA4(v132);
  }
}

BOOL sub_299E4(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getKeyPath();
  sub_3A90(&qword_C54F8);
  sub_2CB38(&qword_C5510, &type metadata accessor for MergeableTextAttributeScope.BlockQuoteAttribute);
  sub_90320();

  if (v8 == 2 || (v8 & 1) == 0)
  {
    sub_FCAC(a3, a3[3]);
    v4 = sub_903C0();
  }

  else
  {
    if (qword_C3950 != -1)
    {
      swift_once();
    }

    v4 = qword_D0450;
  }

  v5 = v4;
  sub_2561C(0, &qword_C3FD8);
  v6 = sub_90CB0();

  return (v6 & 1) == 0;
}

void sub_29B48(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t))
{
  a4(0);
  v6 = __chkstk_darwin();
  a5(v6);
  __break(1u);
}

uint64_t sub_29BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_29C80(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_3A90(&qword_C54C0);
  __chkstk_darwin(v5 - 8);
  v191 = &v163[-v6];
  v7 = sub_3A90(&qword_C54C8);
  __chkstk_darwin(v7 - 8);
  v175 = &v163[-v8];
  v170 = sub_8F6C0();
  v169 = *(v170 - 8);
  __chkstk_darwin(v170);
  v168 = &v163[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_3A90(&qword_C54D0);
  __chkstk_darwin(v10 - 8);
  v173 = &v163[-v11];
  v178 = sub_8F720();
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v174 = &v163[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_3A90(&qword_C54D8);
  __chkstk_darwin(v13 - 8);
  v190 = &v163[-v14];
  v15 = sub_8FDD0();
  v16 = *(v15 - 8);
  v183 = v15;
  v184 = v16;
  v17 = __chkstk_darwin(v15);
  v172 = &v163[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v187 = &v163[-v19];
  v167 = sub_8F350();
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v165 = &v163[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_3A90(&qword_C54E0);
  __chkstk_darwin(v21 - 8);
  v180 = &v163[-v22];
  v23 = sub_8FCF0();
  v188 = *(v23 - 8);
  v189 = v23;
  v24 = __chkstk_darwin(v23);
  v171 = &v163[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v182 = &v163[-v26];
  v27 = sub_3A90(&qword_C54E8);
  __chkstk_darwin(v27 - 8);
  v185 = &v163[-v28];
  v29 = sub_8F5A0();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v33 = &v163[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v31);
  v35 = &v163[-v34];
  v36 = sub_3A90(&qword_C54F0);
  __chkstk_darwin(v36 - 8);
  v38 = &v163[-v37];
  v179 = sub_7AD64(_swiftEmptyArrayStorage);
  v39 = a2[3];
  v192 = a2;
  sub_FCAC(a2, v39);
  v40 = sub_903B0();
  swift_getKeyPath();
  v41 = sub_3A90(&qword_C54F8);
  sub_2CB38(&qword_C5500, &type metadata accessor for MergeableTextAttributeScope.FontAttribute);
  v186 = v41;
  sub_90320();

  v42 = sub_8F5D0();
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(v38, 1, v42) == 1)
  {
    sub_8EF0(v38, &qword_C54F0);
    v44 = v191;
  }

  else
  {
    sub_8F5C0();
    (*(v43 + 8))(v38, v42);
    sub_8F590();
    sub_2CB38(&qword_C5458, &type metadata accessor for MergeableFont.Traits);
    v45 = sub_90D90();
    v46 = *(v30 + 8);
    v46(v33, v29);
    v176 = v3;
    sub_8F580();
    v47 = sub_90D90();
    v46(v33, v29);
    v46(v35, v29);
    if (v47)
    {
      v48 = v45 & 1 | 2;
    }

    else
    {
      v48 = v45 & 1;
    }

    v44 = v191;
    v3 = v176;
    v49 = sub_79420(v48);

    v40 = v49;
  }

  v196 = sub_2561C(0, &qword_C5420);
  *&v195 = v40;
  sub_C8E4(&v195, &v194);
  v181 = v40;
  v50 = v179;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v193 = v50;
  sub_85E94(&v194, NSFontAttributeName, isUniquelyReferenced_nonNull_native);
  v52 = v193;
  swift_getKeyPath();
  sub_2CB38(&qword_C5508, &type metadata accessor for MergeableTextAttributeScope.ColorAttribute);
  v53 = v185;
  sub_90320();

  v54 = sub_8F5F0();
  v55 = *(v54 - 8);
  v56 = (*(v55 + 48))(v53, 1, v54);
  v57 = v187;
  if (v56 == 1)
  {
    sub_8EF0(v53, &qword_C54E8);
  }

  else
  {
    v58 = sub_278E0();
    (*(v55 + 8))(v53, v54);
    if (v58)
    {
      goto LABEL_17;
    }
  }

  swift_getKeyPath();
  sub_2CB38(&qword_C5510, &type metadata accessor for MergeableTextAttributeScope.BlockQuoteAttribute);
  sub_90320();

  if (v195 == 2 || (v195 & 1) == 0)
  {
    sub_FCAC(v192, v192[3]);
    v59 = sub_903C0();
  }

  else
  {
    if (qword_C3950 != -1)
    {
      swift_once();
    }

    v59 = qword_D0450;
  }

  v58 = v59;
LABEL_17:
  v196 = sub_2561C(0, &qword_C3FD8);
  *&v195 = v58;
  sub_C8E4(&v195, &v194);
  v60 = v58;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v193 = v52;
  sub_85E94(&v194, NSForegroundColorAttributeName, v61);
  v62 = v193;
  swift_getKeyPath();
  sub_2CB38(&qword_C5518, &type metadata accessor for MergeableTextAttributeScope.UnderlineAttribute);
  sub_90320();

  if (BYTE8(v195))
  {
    v63 = v190;
  }

  else
  {
    v63 = v190;
    if (v195)
    {
      v196 = &type metadata for Int;
      sub_C8E4(&v195, &v194);
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v193 = v62;
      sub_85E94(&v194, NSUnderlineStyleAttributeName, v64);
      v62 = v193;
    }
  }

  v65 = v44;
  swift_getKeyPath();
  sub_2CB38(&qword_C5520, &type metadata accessor for MergeableTextAttributeScope.StrikethroughAttribute);
  sub_90320();

  if (BYTE8(v195))
  {
    v66 = v60;
  }

  else
  {
    v66 = v60;
    if (v195)
    {
      v67 = v57;
      v196 = &type metadata for Int;
      sub_C8E4(&v195, &v194);
      v68 = swift_isUniquelyReferenced_nonNull_native();
      v193 = v62;
      sub_85E94(&v194, NSStrikethroughStyleAttributeName, v68);
      v62 = v193;
      goto LABEL_26;
    }
  }

  v67 = v57;
LABEL_26:
  swift_getKeyPath();
  sub_2CB38(&qword_C5528, &type metadata accessor for MergeableTextAttributeScope.AssetTextAttachmentAttribute);
  v69 = v180;
  sub_90320();

  v71 = v188;
  v70 = v189;
  if ((*(v188 + 48))(v69, 1, v189) == 1)
  {
    sub_8EF0(v69, &qword_C54E0);
    v72 = v67;
LABEL_37:
    v100 = v66;
    v101 = v65;
    v89 = v183;
    goto LABEL_38;
  }

  v185 = v62;
  (*(v71 + 32))(v182, v69, v70);
  sub_FCAC(v192, v192[3]);
  v73 = sub_903A0();
  if (v73)
  {
    v74 = v73;
    ObjectType = swift_getObjectType();
    v76 = sub_903E0();
    v72 = v67;
    if (v77)
    {
      v196 = ObjectType;
      *&v195 = v74;
      sub_C8E4(&v195, &v194);
      v78 = v74;
      v79 = v185;
      v80 = swift_isUniquelyReferenced_nonNull_native();
      v193 = v79;
      sub_85E94(&v194, NSAttachmentAttributeName, v80);
    }

    else
    {
      v102 = [objc_allocWithZone(NSTextParagraphAnchoredAttachment) initWithTextAttachment:v74 position:v76];
      v103 = NSParagraphAttachmentAttributeName;
      v196 = sub_2561C(0, &qword_C5568);
      *&v195 = v102;
      sub_C8E4(&v195, &v194);
      v104 = v102;
      v105 = v185;
      v106 = swift_isUniquelyReferenced_nonNull_native();
      v193 = v105;
      sub_85E94(&v194, v103, v106);
    }

    (*(v188 + 8))(v182, v189);
    v62 = v193;
    v63 = v190;
    goto LABEL_37;
  }

  v180 = v66;
  v72 = v67;
  if (qword_C3948 != -1)
  {
    swift_once();
  }

  v81 = sub_900D0();
  sub_7FF0(v81, qword_C5478);
  v82 = v188;
  v83 = v189;
  v84 = v171;
  v85 = v182;
  (*(v188 + 16))(v171, v182, v189);
  v86 = sub_900B0();
  v87 = sub_90A70();
  v88 = os_log_type_enabled(v86, v87);
  v89 = v183;
  if (v88)
  {
    v90 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    *&v195 = v179;
    *v90 = 136315138;
    v91 = v165;
    v164 = v87;
    sub_8FCE0();
    sub_2CB38(&qword_C4E78, &type metadata accessor for UUID);
    v92 = v167;
    v93 = sub_910B0();
    v95 = v94;
    (*(v166 + 8))(v91, v92);
    v176 = v3;
    v96 = *(v82 + 8);
    v96(v84, v83);
    v97 = sub_76D20(v93, v95, &v195);
    v98 = v180;
    v89 = v183;

    *(v90 + 4) = v97;
    _os_log_impl(&dword_0, v86, v164, "Attachment not found for ID: %s", v90, 0xCu);
    sub_7FA4(v179);

    v99 = v83;
    v100 = v98;
    v96(v182, v99);
    v63 = v190;
    v101 = v191;
    v3 = v176;
    v72 = v187;
    v62 = v185;
  }

  else
  {

    v131 = *(v82 + 8);
    v131(v84, v83);
    v131(v85, v83);
    v62 = v185;
    v63 = v190;
    v101 = v191;
    v100 = v180;
  }

LABEL_38:
  swift_getKeyPath();
  sub_2CB38(&qword_C5530, &type metadata accessor for MergeableTextAttributeScope.FollowUpPromptAttachmentAttribute);
  sub_90320();

  v107 = v184;
  if ((*(v184 + 48))(v63, 1, v89) == 1)
  {
    sub_8EF0(v63, &qword_C54D8);
  }

  else
  {
    v185 = v62;
    (*(v107 + 32))(v72, v63, v89);
    sub_FCAC(v192, v192[3]);
    v108 = sub_903D0();
    if (v108)
    {
      v109 = v108;
      v196 = swift_getObjectType();
      *&v195 = v109;
      sub_C8E4(&v195, &v194);
      v110 = v109;
      v111 = v185;
      v112 = swift_isUniquelyReferenced_nonNull_native();
      v193 = v111;
      sub_85E94(&v194, NSAttachmentAttributeName, v112);

      (*(v107 + 8))(v72, v89);
      v62 = v193;
    }

    else
    {
      v113 = v100;
      if (qword_C3948 != -1)
      {
        swift_once();
      }

      v114 = sub_900D0();
      sub_7FF0(v114, qword_C5478);
      v115 = v184;
      v116 = v172;
      v117 = v187;
      (*(v184 + 16))(v172, v187, v89);
      v118 = sub_900B0();
      v119 = sub_90A70();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        *&v195 = v121;
        *v120 = 136315138;
        v122 = sub_8FDC0();
        v123 = v89;
        v124 = v113;
        v126 = v125;
        v176 = v3;
        v127 = *(v115 + 8);
        v128 = v116;
        v129 = v123;
        v127(v128, v123);
        v130 = sub_76D20(v122, v126, &v195);

        *(v120 + 4) = v130;
        _os_log_impl(&dword_0, v118, v119, "Attachment not found for prompt: %s", v120, 0xCu);
        sub_7FA4(v121);

        v127(v187, v129);
        v100 = v124;
        v101 = v191;
        v3 = v176;
        v62 = v185;
      }

      else
      {

        v132 = *(v115 + 8);
        v132(v116, v89);
        v132(v117, v89);
        v101 = v191;
        v62 = v185;
        v100 = v113;
      }
    }
  }

  v133 = sub_2561C(0, &qword_C5430);
  v134 = sub_CA38();
  if (sub_2B7DC())
  {
    swift_getKeyPath();
    sub_2CB38(&qword_C5510, &type metadata accessor for MergeableTextAttributeScope.BlockQuoteAttribute);
    sub_90320();

    if (v195 != 2 && (v195 & 1) != 0)
    {
      v135 = [objc_allocWithZone(NSMutableParagraphStyle) init];
      [v135 setParagraphStyle:v134];
      [v135 setFirstLineHeadIndent:14.1];
      [v135 setHeadIndent:14.1];

      v134 = v135;
    }

    swift_getKeyPath();
    sub_2CB38(&qword_C5538, &type metadata accessor for MergeableTextAttributeScope.TextListsAttribute);
    v136 = v173;
    sub_90320();
    v137 = v136;

    v138 = v177;
    v139 = v136;
    v140 = v178;
    if ((*(v177 + 48))(v139, 1, v178) == 1)
    {
      sub_8EF0(v137, &qword_C54D0);
    }

    else
    {
      v190 = v133;
      v180 = v100;
      (*(v138 + 32))(v174, v137, v140);
      v141 = sub_8F710();
      v142 = *(v141 + 16);
      if (v142)
      {
        v189 = v134;
        v185 = v62;
        v176 = v3;
        *&v195 = _swiftEmptyArrayStorage;
        sub_90F50();
        v192 = *(v169 + 16);
        v143 = *(v169 + 80);
        v188 = v141;
        v144 = v141 + ((v143 + 32) & ~v143);
        v145 = *(v169 + 72);
        v146 = (v169 + 8);
        v147 = v170;
        v148 = v168;
        do
        {
          (v192)(v148, v144, v147);
          sub_8F690();
          v149 = sub_90550();

          [objc_allocWithZone(NSTextList) initWithMarkerFormat:v149 options:0 startingItemNumber:sub_8F6B0()];

          (*v146)(v148, v147);
          sub_90F30();
          sub_90F60();
          sub_90F70();
          sub_90F40();
          v144 += v145;
          --v142;
        }

        while (v142);

        v101 = v191;
        v62 = v185;
        v134 = v189;
      }

      else
      {
      }

      sub_2561C(0, &qword_C5560);
      isa = sub_90730().super.isa;

      [v134 setTextLists:isa];

      (*(v177 + 8))(v174, v178);
      v100 = v180;
      v133 = v190;
    }

    swift_getKeyPath();
    sub_2CB38(&qword_C5540, &type metadata accessor for MergeableTextAttributeScope.AlignmentAttribute);
    v151 = v175;
    sub_90320();

    v152 = sub_3A90(&qword_C5548);
    if ((*(*(v152 - 8) + 48))(v151, 1, v152) == 1)
    {
      sub_8EF0(v151, &qword_C54C8);
    }

    else
    {
      v153 = sub_2BCF0();
      v155 = v154;
      sub_8EF0(v151, &qword_C5548);
      if ((v155 & 1) == 0)
      {
        [v134 setAlignment:v153];
      }
    }

    swift_getKeyPath();
    sub_2CB38(&qword_C5550, &type metadata accessor for MergeableTextAttributeScope.WritingDirectionAttribute);
    sub_90320();

    v156 = sub_3A90(&qword_C5558);
    if ((*(*(v156 - 8) + 48))(v101, 1, v156) == 1)
    {
      sub_8EF0(v101, &qword_C54C0);
    }

    else
    {
      v157 = sub_2BF88();
      v159 = v158;
      sub_8EF0(v101, &qword_C5558);
      if ((v159 & 1) == 0)
      {
        [v134 setBaseWritingDirection:v157];
      }
    }
  }

  v196 = v133;
  *&v195 = v134;
  sub_C8E4(&v195, &v194);
  v160 = v134;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v193 = v62;
  sub_85E94(&v194, NSParagraphStyleAttributeName, v161);

  return v193;
}

uint64_t sub_2B7DC()
{
  v0 = sub_3A90(&qword_C54D8);
  __chkstk_darwin(v0 - 8);
  v2 = &v21[-v1];
  v3 = sub_3A90(&qword_C54C8);
  __chkstk_darwin(v3 - 8);
  v5 = &v21[-v4];
  v6 = sub_3A90(&qword_C54C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21[-v7];
  v9 = sub_3A90(&qword_C54D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v21[-v10];
  swift_getKeyPath();
  sub_3A90(&qword_C54F8);
  sub_2CB38(&qword_C5510, &type metadata accessor for MergeableTextAttributeScope.BlockQuoteAttribute);
  sub_90320();

  if (v21[15] != 2)
  {
    return 1;
  }

  swift_getKeyPath();
  sub_2CB38(&qword_C5538, &type metadata accessor for MergeableTextAttributeScope.TextListsAttribute);
  sub_90320();

  v12 = sub_8F720();
  v13 = 1;
  v14 = (*(*(v12 - 8) + 48))(v11, 1, v12);
  sub_8EF0(v11, &qword_C54D0);
  if (v14 == 1)
  {
    swift_getKeyPath();
    sub_2CB38(&qword_C5550, &type metadata accessor for MergeableTextAttributeScope.WritingDirectionAttribute);
    sub_90320();

    v15 = sub_3A90(&qword_C5558);
    v16 = (*(*(v15 - 8) + 48))(v8, 1, v15);
    sub_8EF0(v8, &qword_C54C0);
    if (v16 == 1)
    {
      swift_getKeyPath();
      sub_2CB38(&qword_C5540, &type metadata accessor for MergeableTextAttributeScope.AlignmentAttribute);
      sub_90320();

      v17 = sub_3A90(&qword_C5548);
      v18 = (*(*(v17 - 8) + 48))(v5, 1, v17);
      sub_8EF0(v5, &qword_C54C8);
      if (v18 == 1)
      {
        swift_getKeyPath();
        sub_2CB38(&qword_C5530, &type metadata accessor for MergeableTextAttributeScope.FollowUpPromptAttachmentAttribute);
        sub_90320();

        v19 = sub_8FDD0();
        v13 = (*(*(v19 - 8) + 48))(v2, 1, v19) != 1;
        sub_8EF0(v2, &qword_C54D8);
      }
    }
  }

  return v13;
}

uint64_t sub_2BCF0()
{
  v1 = sub_3A90(&qword_C5548);
  __chkstk_darwin(v1);
  v3 = &v14 - v2;
  v4 = sub_8F940();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  sub_17DF4(v0, v3, &qword_C5548);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_8EF0(v3, &qword_C5548);
    return 0;
  }

  (*(v5 + 32))(v10, v3, v4);
  (*(v5 + 16))(v8, v10, v4);
  v12 = (*(v5 + 88))(v8, v4);
  if (v12 == enum case for MergeableTextAlignment.natural(_:))
  {
    v11 = 4;
LABEL_13:
    (*(v5 + 8))(v10, v4);
    return v11;
  }

  if (v12 == enum case for MergeableTextAlignment.left(_:))
  {
    v11 = 0;
    goto LABEL_13;
  }

  if (v12 == enum case for MergeableTextAlignment.right(_:))
  {
    v11 = 2;
    goto LABEL_13;
  }

  if (v12 == enum case for MergeableTextAlignment.center(_:))
  {
    v11 = 1;
    goto LABEL_13;
  }

  if (v12 == enum case for MergeableTextAlignment.justified(_:))
  {
    v11 = 3;
    goto LABEL_13;
  }

  result = sub_910E0();
  __break(1u);
  return result;
}

uint64_t sub_2BF88()
{
  v1 = sub_3A90(&qword_C5558);
  __chkstk_darwin(v1);
  v3 = &v14 - v2;
  v4 = sub_8FB60();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  sub_17DF4(v0, v3, &qword_C5558);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_8EF0(v3, &qword_C5558);
    return 0;
  }

  (*(v5 + 32))(v10, v3, v4);
  (*(v5 + 16))(v8, v10, v4);
  v12 = (*(v5 + 88))(v8, v4);
  if (v12 == enum case for MergeableWritingDirection.natural(_:))
  {
    v11 = -1;
LABEL_9:
    (*(v5 + 8))(v10, v4);
    return v11;
  }

  if (v12 == enum case for MergeableWritingDirection.leftToRight(_:))
  {
    v11 = 0;
    goto LABEL_9;
  }

  if (v12 == enum case for MergeableWritingDirection.rightToLeft(_:))
  {
    v11 = 1;
    goto LABEL_9;
  }

  result = sub_910E0();
  __break(1u);
  return result;
}

void protocol witness for static AttributeConverter.crAttributes(from:traitCollection:customAttributeProvider:) in conformance MergeableTextAttributeScope(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2C24C(a3, v7);

  sub_28400(a1, a2, v7, a4);
}

uint64_t sub_2C24C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t protocol witness for static AttributeConverter.preferredAttributeProvider.getter in conformance MergeableTextAttributeScope()
{
  v0 = type metadata accessor for CustomAttributeProviderConcrete();
  sub_2CB38(&qword_C5490, type metadata accessor for CustomAttributeProviderConcrete);
  return v0;
}

uint64_t protocol witness for static AttributeConverter.crAttributes(from:traitCollection:customAttributeProvider:) in conformance MergeableTitleAttributeScope()
{
  sub_2CB38(&qword_C5498, &type metadata accessor for MergeableTitleAttributeScope);

  return sub_90340();
}

unint64_t _s13JournalShared28MergeableTitleAttributeScopeV0A2UI0E9Converter0A8SettingsAdEP12nsAttributes4from15traitCollection06customE8ProviderSDySo21NSAttributedStringKeyaypG9Coherence012CRAttributedR0V0K0Vyx_G_So07UITraitN0CAD06CustomeP0_ptFZTW_0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_3A90(&qword_C54B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_98750;
  *(inited + 32) = NSFontAttributeName;
  sub_FCAC(a3, a3[3]);
  v5 = NSFontAttributeName;
  v6 = sub_903B0();
  v7 = sub_2561C(0, &qword_C5420);
  *(inited + 40) = v6;
  *(inited + 64) = v7;
  *(inited + 72) = NSForegroundColorAttributeName;
  sub_FCAC(a3, a3[3]);
  v8 = NSForegroundColorAttributeName;
  v9 = sub_903C0();
  *(inited + 104) = sub_2561C(0, &qword_C3FD8);
  *(inited + 80) = v9;
  v10 = sub_7AD64(inited);
  swift_setDeallocating();
  sub_3A90(&qword_C54B8);
  swift_arrayDestroy();
  return v10;
}

unint64_t sub_2C544()
{
  result = qword_C54A0;
  if (!qword_C54A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C54A0);
  }

  return result;
}

uint64_t sub_2CB38(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2CB80()
{
  if (qword_C39B8 != -1)
  {
    swift_once();
  }

  v1 = qword_D04C0;
  qword_D0458 = qword_D04C0;

  return v1;
}

char *sub_2CBE4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC15JournalSettings23CanvasFallbackAssetView_symbolImageView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) init];
  v27.receiver = v4;
  v27.super_class = type metadata accessor for CanvasFallbackAssetView();
  v10 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  [v10 setContentMode:2];
  if (qword_C3958 != -1)
  {
    swift_once();
  }

  v11 = qword_D0458;
  [v10 setBackgroundColor:qword_D0458];
  v12 = OBJC_IVAR____TtC15JournalSettings23CanvasFallbackAssetView_symbolImageView;
  [*&v10[OBJC_IVAR____TtC15JournalSettings23CanvasFallbackAssetView_symbolImageView] setContentMode:2];
  [*&v10[v12] setTintColor:v11];
  [v10 addSubview:*&v10[v12]];
  v13 = *&v10[v12];
  v14 = [v13 superview];
  v15 = &stru_BB000;
  if (v14)
  {
    v16 = v14;
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [v13 centerYAnchor];
    v18 = [v16 centerYAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];

    [v19 setConstant:0.0];
    if (v19)
    {
      [v19 setActive:1];
    }

    v15 = &stru_BB000;
  }

  else
  {
    v19 = 0;
    v16 = v13;
  }

  v20 = *&v10[v12];
  v21 = [v20 superview];
  if (v21)
  {
    v22 = v21;
    [v20 v15[81].name];
    v23 = [v22 centerXAnchor];
    v24 = [v20 centerXAnchor];
    v25 = [v24 constraintEqualToAnchor:v23];

    [v25 setConstant:0.0];
    if (v25)
    {
      [v25 setActive:1];
    }
  }

  else
  {
    v25 = 0;
    v22 = v20;
  }

  return v10;
}

uint64_t sub_2CFA0()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

id sub_2CFEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasFallbackAssetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_2D078(unsigned __int8 a1)
{
  v2 = sub_8F4D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 mainScreen];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v42.origin.x = v9;
  v42.origin.y = v11;
  v42.size.width = v13;
  v42.size.height = v15;
  v16 = CGRectGetWidth(v42) + -40.0 + -4.0;
  v17 = v16 * 0.25 + -2.0;
  v18 = [v6 mainScreen];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v43.origin.x = v20;
  v43.origin.y = v22;
  v43.size.width = v24;
  v43.size.height = v26;
  Width = CGRectGetWidth(v43);
  v28 = [v6 mainScreen];
  [v28 bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v44.origin.x = v30;
  v44.origin.y = v32;
  v44.size.width = v34;
  v44.size.height = v36;
  v37 = CGRectGetWidth(v44);
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 != 6)
      {
        v17 = v37 + -90.0;
        v38 = Width + -40.0;
        (*(v3 + 104))(v5, enum case for JournalFeatureFlags.fullScreenViewer(_:), v2);
        v39 = sub_8F4C0();
        (*(v3 + 8))(v5, v2);
        if ((v39 & 1) == 0)
        {
          return v38;
        }
      }
    }

    else if (a1 == 4)
    {
      return v16 * 0.5 + -4.0;
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      return v16;
    }

    else
    {
      return v16 * 0.5 + -4.0;
    }
  }

  else
  {
    return v16;
  }

  return v17;
}

char *sub_2D340(int a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v12 = sub_3A90(&qword_C41A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v19 - v13;
  v15 = objc_allocWithZone(type metadata accessor for WorkoutRouteThumbnailCacheOperation());
  sub_FD58(v14);
  sub_2EDE4(v14, v15 + qword_D03B0);
  v16 = sub_90B40();
  v17 = v6;

  return sub_5C308(v17, a1, a2, a3 & 1, a4, a5, v16);
}

uint64_t sub_2D470(uint64_t a1, unsigned __int8 a2)
{
  sub_8F350();
  sub_2ED9C(&qword_C4E78, &type metadata accessor for UUID);
  v14._countAndFlagsBits = sub_910B0();
  sub_90640(v14);

  v15._countAndFlagsBits = 45;
  v15._object = 0xE100000000000000;
  sub_90640(v15);
  v16._countAndFlagsBits = sub_910B0();
  sub_90640(v16);

  v17._countAndFlagsBits = 45;
  v17._object = 0xE100000000000000;
  sub_90640(v17);
  v3 = 0x656772614C78;
  v4 = 0xE500000000000000;
  v5 = 0x6C6C616D73;
  if (a2 != 6)
  {
    v5 = 0x657263536C6C7566;
    v4 = 0xEA00000000006E65;
  }

  v6 = 0xE600000000000000;
  v7 = 0x6D756964656DLL;
  if (a2 != 4)
  {
    v7 = 0x61546D756964656DLL;
    v6 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xEA00000000006564;
  v9 = 0x69576D756964656DLL;
  if (a2 != 2)
  {
    v9 = 0x656772616CLL;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v10 = 0xE600000000000000;
  }

  else
  {
    v3 = 0x6154656772614C78;
    v10 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 1u)
  {
    v8 = v10;
  }

  else
  {
    v3 = v9;
  }

  if (a2 <= 3u)
  {
    v11._countAndFlagsBits = v3;
  }

  else
  {
    v11._countAndFlagsBits = v5;
  }

  if (a2 <= 3u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v4;
  }

  v11._object = v12;
  sub_90640(v11);

  v18._countAndFlagsBits = sub_910B0();
  sub_90640(v18);

  v19._countAndFlagsBits = 45;
  v19._object = 0xE100000000000000;
  sub_90640(v19);

  return 0x2D626D756874;
}

id sub_2D6FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutRouteAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WorkoutRouteAsset()
{
  result = qword_C56A8;
  if (!qword_C56A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2D804()
{
  v1 = sub_90540();
  __chkstk_darwin(v1 - 8);
  v133 = &v112 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_8F390();
  __chkstk_darwin(v3 - 8);
  v136 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3A90(&qword_C5110);
  __chkstk_darwin(v5 - 8);
  v126 = &v112 - v6;
  v7 = sub_3A90(&qword_C5118);
  v124 = *(v7 - 8);
  v125 = v7;
  __chkstk_darwin(v7);
  v122 = &v112 - v8;
  v121 = sub_3A90(&qword_C5120);
  v119 = *(v121 - 8);
  __chkstk_darwin(v121);
  v117 = &v112 - v9;
  v123 = sub_3A90(&qword_C5128);
  v120 = *(v123 - 8);
  __chkstk_darwin(v123);
  v118 = &v112 - v10;
  v135 = sub_3A90(&qword_C5130);
  v132 = *(v135 - 8);
  __chkstk_darwin(v135);
  v134 = &v112 - v11;
  v12 = sub_8FCC0();
  v127 = *(v12 - 8);
  v128 = v12;
  __chkstk_darwin(v12);
  v14 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3A90(&qword_C4808);
  v16 = __chkstk_darwin(v15 - 8);
  v130 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v131 = &v112 - v19;
  __chkstk_darwin(v18);
  v21 = &v112 - v20;
  v22 = sub_8FFF0();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_3A90(&qword_C41A0);
  __chkstk_darwin(v26 - 8);
  v28 = &v112 - v27;
  v29 = sub_8FC30();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = v0;
  if (!*(v0 + OBJC_IVAR____TtC15JournalSettings17WorkoutRouteAsset_metadata))
  {
    (*(v30 + 56))(v28, 1, 1, v29);
    goto LABEL_6;
  }

  sub_13384(v28);

  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
LABEL_6:
    sub_8EF0(v28, &qword_C41A0);
    return 0;
  }

  v113 = v30;
  v33 = *(v30 + 32);
  v114 = v29;
  v33(v32, v28);
  sub_8FF70();
  v34 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_8FF50().super.isa;
  v36 = [v34 initWithContentType:isa];

  (*(v23 + 8))(v25, v22);
  v37 = sub_8FBC0();
  if (!v38)
  {
    v39 = v37;
    v40 = [objc_opt_self() mainBundle];
    v111._countAndFlagsBits = 0x8000000000093E40;
    v140._countAndFlagsBits = 0x74756F6B726F57;
    v140._object = 0xE700000000000000;
    v141.value._countAndFlagsBits = v39;
    v141.value._object = 0;
    v41.super.isa = v40;
    v142._countAndFlagsBits = 0;
    v142._object = 0xE000000000000000;
    sub_8EE70(v140, v141, v41, v142, v111);
  }

  v42 = sub_90550();

  [v36 setDisplayName:v42];

  sub_8FC20();
  v43 = sub_8F2F0();
  v44 = *(v43 - 8);
  v45 = *(v44 + 48);
  v116 = v44 + 48;
  v115 = v45;
  v46 = 0;
  if (v45(v21, 1, v43) != 1)
  {
    v46 = sub_8F270().super.isa;
    (*(v44 + 8))(v21, v43);
  }

  [v36 setTimestamp:v46];

  v47 = sub_8FC00();
  if (v48)
  {
    v49 = v47;
    v50 = v48;
    v51 = sub_174F0(0, 1, 1, _swiftEmptyArrayStorage);
    v53 = *(v51 + 2);
    v52 = *(v51 + 3);
    if (v53 >= v52 >> 1)
    {
      v51 = sub_174F0((v52 > 1), v53 + 1, 1, v51);
    }

    *(v51 + 2) = v53 + 1;
    v54 = &v51[2 * v53];
    *(v54 + 4) = v49;
    *(v54 + 5) = v50;
  }

  else
  {
    v51 = _swiftEmptyArrayStorage;
  }

  sub_8FC10();
  if (v55)
  {
    sub_2E7E8();
  }

  sub_91290();
  v56 = sub_91260();
  v58 = v57;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v51 = sub_174F0(0, *(v51 + 2) + 1, 1, v51);
  }

  v60 = *(v51 + 2);
  v59 = *(v51 + 3);
  if (v60 >= v59 >> 1)
  {
    v51 = sub_174F0((v59 > 1), v60 + 1, 1, v51);
  }

  v112 = v44;
  *(v51 + 2) = v60 + 1;
  v61 = &v51[2 * v60];
  *(v61 + 4) = v56;
  *(v61 + 5) = v58;
  v62 = sub_8FBB0();
  if (v63)
  {
    v64 = v135;
  }

  else
  {
    v137 = v62;
    sub_8EC90();
    sub_23640();
    sub_2ED9C(&qword_C5108, &type metadata accessor for WorkoutHeartRateFormatStyle);
    v65 = v128;
    sub_90430();
    (*(v127 + 8))(v14, v65);
    v66 = v138;
    v67 = v139;
    v69 = *(v51 + 2);
    v68 = *(v51 + 3);
    v64 = v135;
    if (v69 >= v68 >> 1)
    {
      v51 = sub_174F0((v68 > 1), v69 + 1, 1, v51);
    }

    *(v51 + 2) = v69 + 1;
    v70 = &v51[2 * v69];
    *(v70 + 4) = v66;
    *(v70 + 5) = v67;
  }

  sub_8FBA0();
  v71 = [objc_opt_self() kilocalories];
  sub_23694();
  v72 = v134;
  sub_8ECD0();
  v73 = sub_8FBF0();
  if (!v74)
  {
    v75 = v117;
    sub_8ECE0();
    v76 = v122;
    sub_8EF00();
    sub_8F360();
    sub_23640();
    v77 = v126;
    sub_8EED0();
    v78 = sub_3A90(&qword_C5140);
    (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
    v79 = v43;
    v80 = v118;
    sub_8ECA0();
    sub_8EF0(v77, &qword_C5110);
    (*(v124 + 8))(v76, v125);
    v81 = v75;
    v64 = v135;
    (*(v119 + 8))(v81, v121);
    sub_236E0(&qword_C5148, &qword_C5128);
    v82 = v123;
    sub_8ECF0();
    v83 = v80;
    v43 = v79;
    (*(v120 + 8))(v83, v82);
    v84 = sub_905F0();
    v86 = v85;

    v74 = v86;
    v73 = v84;
  }

  v88 = *(v51 + 2);
  v87 = *(v51 + 3);
  if (v88 >= v87 >> 1)
  {
    v108 = v73;
    v109 = v74;
    v110 = sub_174F0((v87 > 1), v88 + 1, 1, v51);
    v74 = v109;
    v72 = v134;
    v51 = v110;
    v73 = v108;
  }

  *(v51 + 2) = v88 + 1;
  v89 = &v51[2 * v88];
  *(v89 + 4) = v73;
  *(v89 + 5) = v74;
  v138 = v51;
  sub_3A90(&qword_C4830);
  sub_236E0(&qword_C4838, &qword_C4830);
  sub_90480();

  v90 = sub_90550();

  [v36 setContentDescription:v90];

  v91 = v130;
  sub_8FC20();
  if (v115(v91, 1, v43) == 1)
  {
    v92 = *(v129 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
    v93 = v131;
    if (v92 && (v94 = [v92 entry]) != 0)
    {
      v95 = v94;
      sub_8F500();

      v96 = 0;
    }

    else
    {
      v96 = 1;
    }

    (*(v112 + 56))(v93, v96, 1, v43);
    if (v115(v91, 1, v43) != 1)
    {
      sub_8EF0(v91, &qword_C4808);
    }
  }

  else
  {
    v97 = v112;
    v93 = v131;
    (*(v112 + 32))(v131, v91, v43);
    (*(v97 + 56))(v93, 0, 1, v43);
  }

  sub_904E0();
  sub_8F380();
  v98 = sub_905C0();
  v100 = v99;
  sub_3A90(&qword_C4840);
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_98740;
  v102 = sub_577BC(v98, v100, v93);
  v103 = v93;
  v105 = v104;

  *(v101 + 32) = v102;
  *(v101 + 40) = v105;
  v106 = sub_90730().super.isa;

  [v36 setAlternateNames:v106];

  sub_8EF0(v103, &qword_C4808);
  (*(v132 + 8))(v72, v64);
  (*(v113 + 8))(v32, v114);
  return v36;
}

double sub_2E7E8()
{
  v0 = sub_8F410();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_8EE20();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3A90(&qword_C4808);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v28 - v9;
  v11 = sub_8F2F0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v28 - v16;
  sub_8FC20();
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    sub_8F2E0();
    if (v18(v10, 1, v11) != 1)
    {
      sub_8EF0(v10, &qword_C4808);
    }
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
  }

  sub_8FBE0();
  if (v18(v8, 1, v11) == 1)
  {
    sub_8F2E0();
    if (v18(v8, 1, v11) != 1)
    {
      sub_8EF0(v8, &qword_C4808);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v8, v11);
  }

  sub_8F3F0();
  sub_3A90(&qword_C5160);
  v19 = sub_8F400();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_98740;
  (*(v20 + 104))(v22 + v21, enum case for Calendar.Component.second(_:), v19);
  sub_23854(v22);
  swift_setDeallocating();
  (*(v20 + 8))(v22 + v21, v19);
  swift_deallocClassInstance();
  v23 = v29;
  sub_8F3A0();

  (*(v32 + 8))(v2, v33);
  v24 = sub_8EE10();
  LOBYTE(v22) = v25;
  (*(v30 + 8))(v23, v31);
  v26 = *(v12 + 8);
  v26(v15, v11);
  v26(v17, v11);
  result = v24;
  if (v22)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_2ED9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2EDE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_3A90(&qword_C41A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2EE54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2EEA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

int *sub_2EEFC()
{
  result = sub_7AD88(&off_B3550);
  off_C56F8[0] = result;
  return result;
}

int *sub_2EF24()
{
  result = sub_7AD88(&off_B34C0);
  off_C5700 = result;
  return result;
}

uint64_t sub_2EF4C(unsigned __int8 a1, uint64_t a2, char a3)
{
  if (a2 > 1 || (a3 & 1) != 0)
  {
    if (qword_C3968 != -1)
    {
      v7 = a1;
      swift_once();
      a1 = v7;
    }

    v3 = off_C5700;
    if (!*(&dword_10 + off_C5700))
    {
      return 0;
    }
  }

  else
  {
    if (qword_C3960 != -1)
    {
      v8 = a1;
      swift_once();
      a1 = v8;
    }

    v3 = off_C56F8[0];
    if (!*(off_C56F8[0] + &dword_10))
    {
      return 0;
    }
  }

  v4 = sub_79D64(a1);
  if (v5)
  {
    return *(*&stru_20.segname[v3 + 16] + 8 * v4);
  }

  return 0;
}

double sub_2F030(__int16 a1, uint64_t a2, int a3, double a4)
{
  v8 = COERCE_DOUBLE(sub_2EF4C(a1, a2, a3 & 1));
  v9 = 0.0;
  v10 = 0.0;
  if ((v11 & 1) == 0)
  {
    if ((a2 > 1 || (a3 & 1) != 0 || (a3 & 0x10000) != 0 && (a1 & 0x100) == 0) && (a3 & 0x100) != 0)
    {
      v12 = v8 * 0.45;
      v13 = (v8 - v8 * 0.45) * 0.5;
      v14 = v13;
    }

    else
    {
      v13 = v8 * 0.55 * 0.5;
      v12 = v8 * 0.45;
      v14 = a4;
    }

    nullsub_1(v13, v14, v12, v12);
    v10 = v15;
  }

  v16 = COERCE_DOUBLE(sub_2EF4C(a1, a2, a3 & 1));
  if ((v17 & 1) == 0)
  {
    if ((a2 > 1 || (a3 & 1) != 0 || (a3 & 0x10000) != 0 && (a1 & 0x100) == 0) && (a3 & 0x100) != 0)
    {
      v18 = v16 * 0.45;
      v19 = (v16 - v16 * 0.45) * 0.5;
      v20 = v19;
    }

    else
    {
      v19 = v16 * 0.55 * 0.5;
      v18 = v16 * 0.45;
      v20 = a4;
    }

    v9 = nullsub_1(v19, v20, v18, v18);
  }

  v21 = COERCE_DOUBLE(sub_2EF4C(a1, a2, a3 & 1));
  v22 = 0.0;
  if ((v23 & 1) == 0)
  {
    if ((a2 > 1 || (a3 & 1) != 0 || (a3 & 0x10000) != 0 && (a1 & 0x100) == 0) && (a3 & 0x100) != 0)
    {
      v24 = v21 * 0.45;
      v25 = (v21 - v21 * 0.45) * 0.5;
      v26 = v25;
    }

    else
    {
      v25 = v21 * 0.55 * 0.5;
      v24 = v21 * 0.45;
      v26 = a4;
    }

    nullsub_1(v25, v26, v24, v24);
  }

  v27 = v10 * 0.15 * 0.5;
  v28 = v22 - v27;

  return nullsub_1(v9 - v27, v28, v10 * 1.15, v10 * 1.15);
}

void *sub_2F254(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_timeObserver];
  *v9 = 0u;
  v9[1] = 0u;
  *&v4[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_playerStatusObserver] = 0;
  *&v4[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_playerTimeControlStatusObserver] = 0;
  v10 = OBJC_IVAR____TtC15JournalSettings14VideoAssetView_thumbnailView;
  *&v4[v10] = [objc_allocWithZone(UIImageView) init];
  *&v4[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_playerView] = 0;
  v11 = &v4[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_finishPlayingAction];
  *v11 = 0;
  v11[1] = 0;
  v4[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_isLoaded] = 0;
  v4[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_didThumbnailFinishLoading] = 0;
  *&v4[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_videoAsset] = 0;
  *&v4[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_thumbnailOverride] = 0;
  v12 = OBJC_IVAR____TtC15JournalSettings14VideoAssetView_latestImageRequestID;
  v13 = sub_8F350();
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  v4[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_isAutoPlaying] = 0;
  v14 = CADynamicRangeHigh;
  *&v4[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_preferredVideoDynamicRange] = CADynamicRangeHigh;
  *&v4[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_resourceConservationLevelWhilePaused] = 0;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for VideoAssetView();
  v15 = v14;
  v16 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v17 = *(&stru_248.reserved2 + (swift_isaMask & *v16));
  v18 = v16;
  v17(v18, v19);

  return v18;
}

void *sub_2F47C(void *a1)
{
  *&v1[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_timeObserver];
  *v3 = 0u;
  v3[1] = 0u;
  *&v1[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_playerStatusObserver] = 0;
  *&v1[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_playerTimeControlStatusObserver] = 0;
  v4 = OBJC_IVAR____TtC15JournalSettings14VideoAssetView_thumbnailView;
  *&v1[v4] = [objc_allocWithZone(UIImageView) init];
  *&v1[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_playerView] = 0;
  v5 = &v1[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_finishPlayingAction];
  *v5 = 0;
  v5[1] = 0;
  v1[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_isLoaded] = 0;
  v1[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_didThumbnailFinishLoading] = 0;
  *&v1[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_videoAsset] = 0;
  *&v1[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_thumbnailOverride] = 0;
  v6 = OBJC_IVAR____TtC15JournalSettings14VideoAssetView_latestImageRequestID;
  v7 = sub_8F350();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v1[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_isAutoPlaying] = 0;
  v8 = CADynamicRangeHigh;
  *&v1[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_preferredVideoDynamicRange] = CADynamicRangeHigh;
  *&v1[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_resourceConservationLevelWhilePaused] = 0;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for VideoAssetView();
  v9 = v8;
  v10 = objc_msgSendSuper2(&v16, "initWithCoder:", a1);
  v11 = v10;
  if (v10)
  {
    v12 = *(&stru_248.reserved2 + (swift_isaMask & *v10));
    v13 = v10;
    v12(v13, v14);
  }

  return v11;
}

void sub_2F688()
{
  [v0 addSubview:*&v0[OBJC_IVAR____TtC15JournalSettings16JournalAssetView_fallbackView]];
  v1 = *&v0[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_thumbnailView];
  [v0 addSubview:v1];
  [v1 setContentMode:2];
  [v1 setAlpha:0.0];
  [v0 setIsAccessibilityElement:1];
  v2 = sub_90550();
  [v0 setAccessibilityIdentifier:v2];

  [v0 setAccessibilityIgnoresInvertColors:1];
  [v0 setClipsToBounds:0];
  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  [v4 addObserver:v0 selector:"autoPlayEnabledStatusDidChange" name:UIAccessibilityVideoAutoplayStatusDidChangeNotification object:0];

  v5 = [v3 defaultCenter];
  [v5 addObserver:v0 selector:"autoPlayEnabledStatusDidChange" name:UIAccessibilityReduceMotionStatusDidChangeNotification object:0];

  v6 = [v0 traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == &dword_4 + 1)
  {
    v8 = [v3 defaultCenter];
    v9 = sub_90BD0();
    [v8 addObserver:v0 selector:"autoPlayEnabledStatusDidChange" name:v9 object:0];
  }
}

void sub_2F8D0()
{
  sub_25DEC(v0 + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_delegate);
  sub_8EF0(v0 + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_timeObserver, &qword_C5418);

  sub_31D8C(*(v0 + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_finishPlayingAction));
  sub_8EF0(v0 + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_latestImageRequestID, &qword_C57E0);
  v1 = *(v0 + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_preferredVideoDynamicRange);
}

id sub_2F9C4()
{
  sub_2FC48();
  sub_31868();
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v2 = *&v0[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_playerView];
  *&v0[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_playerView] = 0;

  v4.receiver = v0;
  v4.super_class = type metadata accessor for VideoAssetView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for VideoAssetView()
{
  result = qword_C5798;
  if (!qword_C5798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2FC48()
{
  v1 = (v0 + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_finishPlayingAction);
  v2 = *(v0 + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_finishPlayingAction);
  *v1 = 0;
  v1[1] = 0;
  sub_31D8C(v2);
  v3 = OBJC_IVAR____TtC15JournalSettings14VideoAssetView_playerView;
  v4 = *(v0 + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_playerView);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 layer];
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (!v7)
    {
    }

    v8 = [v7 player];

    [v8 pause];
    v9 = *(v0 + v3);
    if (v9)
    {
      v10 = v9;
      v11 = [v10 layer];
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (!v12)
      {
      }

      v13 = [v12 player];

      if (v13)
      {
        [v13 replaceCurrentItemWithPlayerItem:0];
      }

      v14 = *(v0 + v3);
      if (v14)
      {
        v15 = v14;
        v16 = [v15 layer];
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (!v17)
        {
        }

        [v17 setPlayer:0];
      }
    }
  }

  *(v0 + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_isLoaded) = 0;
  *(v0 + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_isAutoPlaying) = 0;
}

uint64_t sub_2FE18()
{
  v1 = v0;
  v2 = sub_3A90(&qword_C57E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v52 - v3;
  v5 = sub_8F350();
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  v7 = __chkstk_darwin(v5);
  v57 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v52 - v8;
  v10 = sub_8F2F0();
  v58 = *(v10 - 8);
  v59 = v10;
  v11 = *(v58 + 64);
  v12 = __chkstk_darwin(v10);
  v56 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v62 = &v52 - v13;
  v14 = sub_8F4D0();
  v15 = *(v14 - 8);
  result = __chkstk_darwin(v14);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *&v1[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_videoAsset];
  if (v19 && !*&v1[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_thumbnailOverride])
  {
    (*(v15 + 104))(v18, enum case for JournalFeatureFlags.debug(_:), v14);
    v20 = v19;
    v21 = v1;
    v22 = sub_8F4C0();
    (*(v15 + 8))(v18, v14);
    if (v22)
    {
      v23 = *&v20[OBJC_IVAR____TtC15JournalSettings10VideoAsset_metadata];
      v24 = [v21 layer];
      v25 = v24;
      if (v23)
      {
        [v24 setBorderColor:0];
        v26 = 0.0;
      }

      else
      {
        v27 = [objc_opt_self() redColor];
        v28 = [v27 CGColor];

        [v25 setBorderColor:v28];
        v26 = 5.0;
        v25 = v28;
      }

      v29 = [v21 layer];
      [v29 setBorderWidth:v26];
    }

    sub_8F2E0();
    v52 = OBJC_IVAR____TtC15JournalSettings16JournalAssetView_sizeType;
    v30 = v21[OBJC_IVAR____TtC15JournalSettings16JournalAssetView_sizeType];
    v55 = v20;
    if (v30 > 6)
    {
    }

    else
    {
      v31 = sub_910F0();

      if ((v31 & 1) == 0)
      {
        v32 = v21;
        if (qword_C3A30 != -1)
        {
          swift_once();
        }

        v33 = &qword_D05B0;
LABEL_17:
        v34 = *v33;
        v53 = v9;
        v54 = v34;
        sub_8F340();
        v36 = v60;
        v35 = v61;
        v37 = *(v60 + 16);
        v37(v4, v9, v61);
        (*(v36 + 56))(v4, 0, 1, v35);
        v38 = OBJC_IVAR____TtC15JournalSettings14VideoAssetView_latestImageRequestID;
        swift_beginAccess();
        sub_17E5C(v4, &v32[v38], &qword_C57E0);
        swift_endAccess();
        LODWORD(v52) = v32[v52];
        v39 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v40 = v57;
        v37(v57, v9, v35);
        v41 = v58;
        v42 = v59;
        v43 = v56;
        (*(v58 + 16))(v56, v62, v59);
        v44 = (*(v36 + 80) + 24) & ~*(v36 + 80);
        v45 = (v6 + *(v41 + 80) + v44) & ~*(v41 + 80);
        v46 = swift_allocObject();
        *(v46 + 16) = v39;
        v47 = v61;
        (*(v36 + 32))(v46 + v44, v40, v61);
        (*(v41 + 32))(v46 + v45, v43, v42);
        v48 = objc_opt_self();

        v49 = [v48 currentTraitCollection];
        v50 = v54;
        v51 = v55;
        sub_61DAC(v52, 0, 1, v54, v49, sub_31F24, v46);

        (*(v36 + 8))(v53, v47);
        (*(v41 + 8))(v62, v42);
      }
    }

    v32 = v21;
    if (qword_C3A38 != -1)
    {
      swift_once();
    }

    v33 = &qword_D05B8;
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_305A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v34 = a1;
  v37 = sub_90230();
  v40 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_902A0();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v35 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_8F2F0();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v30);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_8F350();
  v28 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2561C(0, &qword_C4360);
  v33 = sub_90B10();
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v10 + 16))(v12, v31, v9);
  v15 = v29;
  v16 = v30;
  (*(v7 + 16))(v29, v32, v30);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = (v11 + *(v7 + 80) + v17) & ~*(v7 + 80);
  v19 = swift_allocObject();
  v20 = v34;
  *(v19 + 16) = v13;
  *(v19 + 24) = v20;
  (*(v10 + 32))(v19 + v17, v12, v28);
  (*(v7 + 32))(v19 + v18, v15, v16);
  aBlock[4] = sub_32154;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_7E2E8;
  aBlock[3] = &unk_B4A88;
  v21 = _Block_copy(aBlock);
  v22 = v20;

  v23 = v35;
  sub_90250();
  v41 = _swiftEmptyArrayStorage;
  sub_322A8(&qword_C57E8, &type metadata accessor for DispatchWorkItemFlags);
  sub_3A90(&qword_C57F0);
  sub_3223C();
  v25 = v36;
  v24 = v37;
  sub_90DD0();
  v26 = v33;
  sub_90B20();
  _Block_release(v21);

  (*(v40 + 8))(v25, v24);
  (*(v38 + 8))(v23, v39);
}

void sub_30A84(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v68 = a4;
  v6 = sub_8F2F0();
  v69 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v65 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = &v60 - v9;
  v10 = sub_3A90(&qword_C4808);
  v11 = __chkstk_darwin(v10 - 8);
  v66 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v70 = &v60 - v13;
  v14 = sub_8F350();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v67 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A90(&qword_C5800);
  __chkstk_darwin(v17);
  v19 = &v60 - v18;
  v20 = sub_3A90(&qword_C57E0);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v60 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v61 = v6;
      v62 = a2;
      v27 = Strong;
      (*(v15 + 16))(v25, a3, v14);
      (*(v15 + 56))(v25, 0, 1, v14);
      v28 = OBJC_IVAR____TtC15JournalSettings14VideoAssetView_latestImageRequestID;
      swift_beginAccess();
      v29 = *(v17 + 48);
      sub_17DF4(v25, v19, &qword_C57E0);
      v63 = v27;
      sub_17DF4(&v27[v28], &v19[v29], &qword_C57E0);
      v30 = *(v15 + 48);
      if (v30(v19, 1, v14) == 1)
      {
        v31 = v62;
        v32 = v62;
        sub_8EF0(v25, &qword_C57E0);
        if (v30(&v19[v29], 1, v14) == 1)
        {
          sub_8EF0(v19, &qword_C57E0);
          goto LABEL_15;
        }
      }

      else
      {
        sub_17DF4(v19, v23, &qword_C57E0);
        v36 = v30(&v19[v29], 1, v14);
        v31 = v62;
        if (v36 != 1)
        {
          v38 = &v19[v29];
          v39 = v67;
          (*(v15 + 32))(v67, v38, v14);
          sub_322A8(&qword_C5808, &type metadata accessor for UUID);
          v40 = v31;
          v41 = sub_904D0();
          v42 = *(v15 + 8);
          v42(v39, v14);
          sub_8EF0(v25, &qword_C57E0);
          v42(v23, v14);
          v31 = v62;
          sub_8EF0(v19, &qword_C57E0);
          if ((v41 & 1) == 0)
          {

            return;
          }

LABEL_15:
          v43 = v63;
          [*&v63[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_thumbnailView] setImage:v31];
          v44 = 1;
          (*&stru_248.segname[(swift_isaMask & *v43) - 8])(1);
          v45 = swift_allocObject();
          swift_unknownObjectWeakInit();
          if (*(v43 + OBJC_IVAR____TtC15JournalSettings16JournalAssetView_sizeType) > 3u)
          {
            v47 = v69;
            v46 = v70;
            v48 = v61;
            if (*(v43 + OBJC_IVAR____TtC15JournalSettings16JournalAssetView_sizeType) > 5u && *(v43 + OBJC_IVAR____TtC15JournalSettings16JournalAssetView_sizeType) != 6)
            {
LABEL_22:

              (*(v47 + 16))(v46, v68, v48);
              (*(v47 + 56))(v46, 0, 1, v48);
              if (v44)
              {
                goto LABEL_23;
              }

              v52 = v66;
              sub_17DF4(v46, v66, &qword_C4808);
              if ((*(v47 + 48))(v52, 1, v48) == 1)
              {
                sub_8EF0(v52, &qword_C4808);
              }

              else
              {
                v53 = v64;
                (*(v47 + 32))(v64, v52, v48);
                v54 = v65;
                sub_8F2C0();
                sub_8F1D0();
                v56 = v55;
                v57 = *(v47 + 8);
                v57(v54, v48);
                v57(v53, v48);
                if (v56 < 0.1)
                {
LABEL_23:
                  swift_beginAccess();
                  v49 = swift_unknownObjectWeakLoadStrong();
                  if (v49)
                  {
                    v50 = v49;
                    v51 = *(v49 + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_thumbnailView);

                    [v51 setAlpha:1.0];

LABEL_30:
                    sub_8EF0(v46, &qword_C4808);

                    return;
                  }

LABEL_29:

                  goto LABEL_30;
                }
              }

              v58 = objc_opt_self();
              aBlock[4] = sub_322A0;
              aBlock[5] = v45;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_7E2E8;
              aBlock[3] = &unk_B4AB0;
              v59 = _Block_copy(aBlock);

              [v58 animateWithDuration:0x10000 delay:v59 options:0 animations:0.1 completion:0.0];
              _Block_release(v59);
              goto LABEL_29;
            }
          }

          else
          {
            v47 = v69;
            v46 = v70;
            v48 = v61;
          }

          v44 = sub_910F0();
          goto LABEL_22;
        }

        v37 = v62;
        sub_8EF0(v25, &qword_C57E0);
        (*(v15 + 8))(v23, v14);
      }

      sub_8EF0(v19, &qword_C5800);

      return;
    }
  }

  swift_beginAccess();
  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v33[OBJC_IVAR____TtC15JournalSettings16JournalAssetView_isAssetFinishedLoading] = 1;
  }

  swift_beginAccess();
  v34 = swift_unknownObjectWeakLoadStrong();
  if (v34)
  {
    v35 = v34;
    (*&stru_248.segname[(swift_isaMask & *v34) - 8])(0);
  }
}

void sub_31524()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_thumbnailView);

    [v2 setAlpha:1.0];
  }
}

void sub_315A0()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for VideoAssetView();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC15JournalSettings16JournalAssetView_fallbackView];
  [v0 bounds];
  [v1 setFrame:?];

  v2 = *&v0[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_thumbnailView];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = *&v0[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_playerView];
  if (v3)
  {
    v4 = v3;
    [v0 bounds];
    [v4 setFrame:?];
  }
}

void sub_316C4()
{
  v1 = OBJC_IVAR____TtC15JournalSettings14VideoAssetView_isAutoPlaying;
  if (v0[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_isAutoPlaying] == 1)
  {
    if ((sub_60FFC(v0[OBJC_IVAR____TtC15JournalSettings16JournalAssetView_sizeType]) & 1) == 0 || !UIAccessibilityIsVideoAutoplayEnabled() || UIAccessibilityIsReduceMotionEnabled() || (v6 = [v0 traitCollection], v7 = objc_msgSend(v6, "userInterfaceIdiom"), v6, v7 == &dword_4 + 1) && (sub_90BC0() & 1) == 0)
    {
      v0[v1] = 0;
      v2 = *&v0[OBJC_IVAR____TtC15JournalSettings14VideoAssetView_playerView];
      if (v2)
      {
        v3 = v2;
        v4 = [v3 layer];
        objc_opt_self();
        v5 = swift_dynamicCastObjCClass();
        if (!v5)
        {
        }

        v8 = [v5 player];

        [v8 pause];
      }
    }
  }
}

uint64_t sub_31868()
{
  v1 = *(v0 + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_playerStatusObserver);
  *(v0 + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_playerStatusObserver) = 0;

  v2 = *(v0 + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_playerTimeControlStatusObserver);
  *(v0 + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_playerTimeControlStatusObserver) = 0;

  v3 = OBJC_IVAR____TtC15JournalSettings14VideoAssetView_timeObserver;
  swift_beginAccess();
  sub_17DF4(v0 + v3, &v10, &qword_C5418);
  if (!*(&v11 + 1))
  {
    return sub_8EF0(&v10, &qword_C5418);
  }

  sub_C8E4(&v10, &v12);
  v4 = *(v0 + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_playerView);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 layer];
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (!v7)
    {
    }

    v8 = [v7 player];

    if (v8)
    {
      sub_FCAC(&v12, v13);
      [v8 removeTimeObserver:sub_910D0()];

      swift_unknownObjectRelease();
    }
  }

  v10 = 0u;
  v11 = 0u;
  swift_beginAccess();
  sub_17E5C(&v10, v0 + v3, &qword_C5418);
  swift_endAccess();
  return sub_7FA4(&v12);
}

void sub_31ABC()
{
  sub_31BAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_31BAC()
{
  if (!qword_C57A8)
  {
    sub_8F350();
    v0 = sub_90D10();
    if (!v1)
    {
      atomic_store(v0, &qword_C57A8);
    }
  }
}

id sub_31D30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoPlayerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_31D8C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_31D9C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_31DD4()
{
  v1 = sub_8F350();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_8F2F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_31F24(void *a1)
{
  v3 = *(sub_8F350() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_8F2F0() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_305A0(a1, v7, v1 + v4, v8);
}

uint64_t sub_31FFC()
{
  v1 = sub_8F350();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_8F2F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

void sub_32154()
{
  v1 = *(sub_8F350() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_8F2F0() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_30A84(v5, v6, v0 + v2, v7);
}

uint64_t sub_32224(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_3223C()
{
  result = qword_C57F8;
  if (!qword_C57F8)
  {
    sub_3D20(&qword_C57F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C57F8);
  }

  return result;
}

uint64_t sub_322A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_322F0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetContentType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_32464()
{
  result = qword_C5810;
  if (!qword_C5810)
  {
    sub_3D20(&qword_C5818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5810);
  }

  return result;
}

uint64_t sub_324C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1802465122;
  v6 = 0xE200000000000000;
  v7 = 30324;
  if (a1 != 4)
  {
    v7 = 0xD000000000000010;
    v6 = 0x8000000000092940;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x74736163646F70;
  if (a1 != 1)
  {
    v8 = 0x656C6369747261;
  }

  if (a1)
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v8 = 0x636973756DLL;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xE400000000000000;
      if (v9 != 1802465122)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE200000000000000;
      if (v9 != 30324)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0x8000000000092940;
      if (v9 != 0xD000000000000010)
      {
LABEL_34:
        v12 = sub_910F0();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE700000000000000;
    if (a2 == 1)
    {
      if (v9 != 0x74736163646F70)
      {
        goto LABEL_34;
      }
    }

    else if (v9 != 0x656C6369747261)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v11 = 0xE500000000000000;
    if (v9 != 0x636973756DLL)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

uint64_t sub_3267C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C6172656E6567;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x79636176697270;
    }

    else
    {
      v4 = 0x796C616E41707061;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEC00000073636974;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6163696669746F6ELL;
    }

    else
    {
      v4 = 0x6C6172656E6567;
    }

    if (v3)
    {
      v5 = 0xED0000736E6F6974;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x79636176697270;
  if (a2 != 2)
  {
    v8 = 0x796C616E41707061;
    v7 = 0xEC00000073636974;
  }

  if (a2)
  {
    v2 = 0x6163696669746F6ELL;
    v6 = 0xED0000736E6F6974;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_910F0();
  }

  return v11 & 1;
}

uint64_t sub_327E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006C6CLL;
  v3 = 0x6154656772614C78;
  v4 = a1;
  v5 = 0xE500000000000000;
  v6 = 0x6C6C616D73;
  if (a1 != 6)
  {
    v6 = 0x657263536C6C7566;
    v5 = 0xEA00000000006E65;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (a1 != 4)
  {
    v8 = 0x61546D756964656DLL;
    v7 = 0xEA00000000006C6CLL;
  }

  if (a1 > 5u)
  {
    v7 = v5;
  }

  else
  {
    v6 = v8;
  }

  v9 = 0x69576D756964656DLL;
  v10 = 0xE500000000000000;
  if (a1 == 2)
  {
    v10 = 0xEA00000000006564;
  }

  else
  {
    v9 = 0x656772616CLL;
  }

  v11 = 0xE600000000000000;
  v12 = 0x656772614C78;
  if (!a1)
  {
    v12 = 0x6154656772614C78;
    v11 = 0xEA00000000006C6CLL;
  }

  if (a1 <= 1u)
  {
    v9 = v12;
    v10 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v6;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v7;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE500000000000000;
        if (v13 != 0x6C6C616D73)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v2 = 0xEA00000000006E65;
        if (v13 != 0x657263536C6C7566)
        {
          goto LABEL_43;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE600000000000000;
      if (v13 != 0x6D756964656DLL)
      {
        goto LABEL_43;
      }
    }

    else if (v13 != 0x61546D756964656DLL)
    {
      goto LABEL_43;
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEA00000000006564;
        if (v13 != 0x69576D756964656DLL)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }

      v2 = 0xE500000000000000;
      v3 = 0x656772616CLL;
    }

    else if (a2)
    {
      v2 = 0xE600000000000000;
      if (v13 != 0x656772614C78)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    if (v13 != v3)
    {
LABEL_43:
      v15 = sub_910F0();
      goto LABEL_44;
    }
  }

LABEL_40:
  if (v14 != v2)
  {
    goto LABEL_43;
  }

  v15 = 1;
LABEL_44:

  return v15 & 1;
}

uint64_t sub_32A28()
{
  v0 = sub_8F390();
  __chkstk_darwin(v0 - 8);
  v1 = sub_90540();
  __chkstk_darwin(v1 - 8);
  sub_904E0();
  sub_8F380();
  return sub_905C0();
}

Swift::Int sub_32C70()
{
  sub_91180();
  sub_90630();

  return sub_911D0();
}

uint64_t sub_32D64()
{
  sub_90630();
}

Swift::Int sub_32E84()
{
  sub_91180();
  sub_90630();

  return sub_911D0();
}

Swift::Int sub_32FB8()
{
  sub_91180();
  sub_90630();

  return sub_911D0();
}

uint64_t sub_330BC()
{
  sub_90630();
}

uint64_t sub_331A0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_332E4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_331D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x636973756DLL;
  v5 = 0xE400000000000000;
  v6 = 1802465122;
  v7 = 0xE200000000000000;
  v8 = 30324;
  if (v2 != 4)
  {
    v8 = 0xD000000000000010;
    v7 = 0x8000000000092940;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x74736163646F70;
  if (v2 != 1)
  {
    v9 = 0x656C6369747261;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_33290()
{
  result = qword_C5820;
  if (!qword_C5820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5820);
  }

  return result;
}

uint64_t sub_332E4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B3728;
  v6._object = a2;
  v4 = sub_90FF0(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

char *sub_33330(uint64_t a1, __int16 a2, uint64_t a3, int a4, void *a5, void *a6, double a7)
{
  v14 = OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_basePOICircleView;
  v46 = a2 & 0x100;
  v47 = a4 & 0x10000;
  *&v7[v14] = [objc_allocWithZone(UIImageView) init];
  v15 = OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_downArrowView;
  *&v7[v15] = [objc_allocWithZone(UIImageView) init];
  v16 = OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_clusterCountLabel;
  *&v7[v16] = [objc_allocWithZone(UILabel) init];
  v17 = OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_borderBackgroundView;
  *&v7[v17] = [objc_allocWithZone(UIView) init];
  v18 = &v7[OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_configuration];
  *v18 = a2;
  v18[1] = HIBYTE(a2) & 1;
  *(v18 + 1) = a3;
  v18[16] = a4 & 1;
  v18[17] = BYTE1(a4) & 1;
  v18[18] = BYTE2(a4) & 1;
  *(v18 + 3) = a7;
  v49.receiver = v7;
  v49.super_class = _s19MOPOIAnnotationViewCMa();
  v19 = objc_msgSendSuper2(&v49, "initWithAnnotation:reuseIdentifier:", a1, 0);
  v20 = sub_2EF4C(a2, a3, a4 & 1);
  v21 = 0.0;
  v22 = 0.0;
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  if ((v26 & 1) == 0)
  {
    v22 = nullsub_1(0.0, 0.0, *&v20, *&v20);
  }

  [v19 setFrame:{v22, v23, v24, v25}];
  v27 = &v19[OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_basePOICircleView];
  v28 = *&v19[OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_basePOICircleView];
  v29 = COERCE_DOUBLE(sub_2EF4C(a2, a3, a4 & 1));
  v30 = 0.0;
  v31 = 0.0;
  v32 = 0.0;
  if ((v33 & 1) == 0)
  {
    if ((a3 > 1 || (a4 & 1) != 0 || v47 && !v46) && (a4 & 0x100) != 0)
    {
      v34 = v29 * 0.45;
      v35 = (v29 - v29 * 0.45) * 0.5;
      v36 = v35;
    }

    else
    {
      v35 = v29 * 0.55 * 0.5;
      v34 = v29 * 0.45;
      v36 = a7;
    }

    v21 = nullsub_1(v35, v36, v34, v34);
  }

  [v28 setFrame:{v21, v30, v31, v32}];

  sub_33BD8(a5, a6);
  if (a3 <= 1)
  {
    if (a4)
    {
      sub_3401C();
      [v19 addSubview:*&v19[OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_borderBackgroundView]];
    }

    else if (!v47 || v46)
    {
      sub_3376C();
      [v19 addSubview:*&v19[OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_downArrowView]];
    }
  }

  else
  {
    sub_3401C();
    sub_3390C();
    [v19 addSubview:*&v19[OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_borderBackgroundView]];
    v27 = &v19[OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_clusterCountLabel];
  }

  [v19 addSubview:*v27];
  v37 = OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_borderBackgroundView;
  v38 = [*&v19[OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_borderBackgroundView] layer];
  v39 = [objc_opt_self() secondarySystemBackgroundColor];
  v40 = [v39 CGColor];

  [v38 setShadowColor:v40];
  v41 = [*&v19[v37] layer];
  LODWORD(v42) = 0.5;
  [v41 setShadowOpacity:v42];

  v43 = [*&v19[v37] layer];
  [v43 setShadowRadius:5.0];

  v44 = [*&v19[v37] layer];
  [v44 setShadowPathIsBounds:1];

  sub_33FDC(a5, a6);
  swift_unknownObjectRelease();
  return v19;
}

void sub_3376C()
{
  v1 = v0 + OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_configuration;
  v2 = *(v0 + OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_configuration + 8);
  v3 = *(v0 + OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_configuration + 16);
  v4 = v2 <= 1 && v3 == 0;
  if (v4 && ((*(v1 + 18) ^ 1 | *(v1 + 1)) & 1) != 0)
  {
    v5 = *(v0 + OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_downArrowView);
    v6 = *(v1 + 24);
    v7 = COERCE_DOUBLE(sub_2EF4C(*v1, v2, v3));
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    if ((v12 & 1) == 0)
    {
      v8 = nullsub_1(v7 * 0.4, v6 + v7 * 0.3, v7 * 0.2, v7 * 0.2);
    }

    [v5 setFrame:{v8, v9, v10, v11}];
    v13 = sub_90550();
    v14 = [objc_opt_self() systemImageNamed:v13];

    [v5 setImage:v14];

    [v5 setContentMode:2];
  }
}

void sub_3390C()
{
  v1 = v0 + OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_configuration;
  v2 = *(v0 + OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_configuration + 8);
  if (v2 >= 2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_clusterCountLabel);
    v4 = *(v1 + 17);
    v5 = *(v1 + 24);
    v6 = COERCE_DOUBLE(sub_2EF4C(*v1, v2, *(v1 + 16)));
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    if ((v11 & 1) == 0)
    {
      if (v4)
      {
        v12 = v6 * 0.45;
        v13 = (v6 - v6 * 0.45) * 0.5;
        v14 = v13;
      }

      else
      {
        v13 = v6 * 0.55 * 0.5;
        v12 = v6 * 0.45;
        v14 = v5;
      }

      v7 = nullsub_1(v13, v14, v12, v12);
    }

    [v3 setFrame:{v7, v8, v9, v10}];
    sub_910B0();
    v15 = sub_90550();

    [v3 setText:v15];

    [v3 setTextAlignment:1];
    v16 = [objc_opt_self() whiteColor];
    [v3 setTextColor:v16];

    v17 = COERCE_DOUBLE(sub_2EF4C(*v1, *(v1 + 8), *(v1 + 16)));
    v18 = 15.0;
    if ((v19 & 1) == 0)
    {
      v18 = v17 / 6.0;
    }

    v20 = [objc_opt_self() boldSystemFontOfSize:v18];
    [v3 setFont:v20];

    [v3 setAdjustsFontSizeToFitWidth:1];
    [v3 setClipsToBounds:1];
    v21 = [v3 layer];
    [v3 frame];
    [v21 setCornerRadius:CGRectGetWidth(v22) * 0.5];
  }
}

void sub_33BD8(void *a1, void *a2)
{
  if (a1)
  {
    v4 = *(v2 + OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_basePOICircleView);
    v19 = a1;
    v5 = a2;
    [v4 setImage:v5];
    [*(v2 + OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_downArrowView) setTintColor:v19];
    [*(v2 + OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_clusterCountLabel) setBackgroundColor:v19];
  }

  else
  {
    v6 = *(v2 + OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_basePOICircleView);
    [v6 frame];
    v7 = CGRectGetWidth(v21) * 0.25;
    [v6 frame];
    v8 = CGRectGetHeight(v22) * 0.23;
    [v6 frame];
    v9 = CGRectGetWidth(v23) * 0.5;
    [v6 frame];
    Height = CGRectGetHeight(v24);
    v11 = nullsub_1(v7, v8, v9, Height * 0.5);
    v15 = [objc_allocWithZone(UIImageView) initWithFrame:{v11, v12, v13, v14}];
    v19 = v15;
    if (qword_C3A08 != -1)
    {
      swift_once();
      v15 = v19;
    }

    [v15 setImage:qword_D0540];
    v16 = [objc_opt_self() systemWhiteColor];
    [v19 setTintColor:v16];

    if (qword_C39C0 != -1)
    {
      swift_once();
    }

    v17 = qword_D04C8;
    [v6 setBackgroundColor:qword_D04C8];
    [*(v2 + OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_downArrowView) setTintColor:v17];
    [*(v2 + OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_clusterCountLabel) setBackgroundColor:v17];
    v18 = [v6 layer];
    [v6 frame];
    [v18 setCornerRadius:CGRectGetHeight(v25) * 0.5];

    [v6 addSubview:v19];
  }
}

id sub_33F18()
{
  v2.receiver = v0;
  v2.super_class = _s19MOPOIAnnotationViewCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_33FDC(void *a1, void *a2)
{
  if (a1)
  {
  }
}

void sub_3401C()
{
  v1 = *(v0 + OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_borderBackgroundView);
  if (*(v0 + OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_configuration + 1))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (*(v0 + OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_configuration + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | *(v0 + OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_configuration + 16);
  if (*(v0 + OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_configuration + 18))
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  [v1 setFrame:{sub_2F030(v2 | *(v0 + OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_configuration), *(v0 + OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_configuration + 8), v4 | v5, *(v0 + OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_configuration + 24))}];
  v6 = [v1 layer];
  v7 = [objc_opt_self() whiteColor];
  v8 = [v7 CGColor];

  [v6 setBackgroundColor:v8];
  [v1 setClipsToBounds:1];
  v9 = [v1 layer];
  [v1 frame];
  [v9 setCornerRadius:CGRectGetWidth(v11) * 0.5];
}

void sub_341A8()
{
  v1 = OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_basePOICircleView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  v2 = OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_downArrowView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_clusterCountLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtCC15JournalSettings10MapManager19MOPOIAnnotationView_borderBackgroundView;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  sub_90F90();
  __break(1u);
}

uint64_t sub_3428C()
{
  v0 = sub_900D0();
  sub_8F9C(v0, qword_C5878);
  sub_7FF0(v0, qword_C5878);
  return sub_900C0();
}

id sub_3430C(void *a1, char a2, char a3, char a4, void *a5)
{
  if (!a1)
  {
LABEL_17:
    if ((a2 & 1) != 0 && (v31 = [objc_opt_self() workStyleAttributes]) != 0)
    {
      v20 = v31;
      if (qword_C3970 != -1)
      {
        swift_once();
      }

      v32 = sub_900D0();
      sub_7FF0(v32, qword_C5878);
      v33 = sub_900B0();
      v34 = sub_90A80();
      if (!os_log_type_enabled(v33, v34))
      {
        goto LABEL_31;
      }

      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "[POIClustering] [RENDERING] Work";
    }

    else
    {
      if ((a3 & 1) != 0 || (a4 & 1) == 0 || (v37 = [objc_allocWithZone(GEOPlace) initWithLatitude:4 longitude:0.0 placeType:0.0], v20 = objc_msgSend(objc_opt_self(), "styleAttributesForPlace:", v37), v37, !v20))
      {
        if (qword_C3970 != -1)
        {
          swift_once();
        }

        v39 = sub_900D0();
        sub_7FF0(v39, qword_C5878);
        v40 = a1;
        v41 = sub_900B0();
        v42 = sub_90A80();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = 7104878;
          v44 = swift_slowAlloc();
          v76[0] = swift_slowAlloc();
          *v44 = 136315394;
          if (a1)
          {
            v45 = [v40 name];
            if (v45)
            {
              v46 = v45;
              v47 = sub_90590();
              v49 = v48;
            }

            else
            {
              v49 = 0xE300000000000000;
              v47 = 7104878;
            }

            v52 = sub_76D20(v47, v49, v76);

            *(v44 + 4) = v52;
            *(v44 + 12) = 2080;
            v53 = [v40 pointOfInterestCategory];
            if (v53)
            {
              v54 = v53;
              v43 = sub_90590();
              v50 = v55;
            }

            else
            {
              v50 = 0xE300000000000000;
            }
          }

          else
          {
            v50 = 0xE300000000000000;
            v51 = sub_76D20(7104878, 0xE300000000000000, v76);

            *(v44 + 4) = v51;
            *(v44 + 12) = 2080;
          }

          v56 = sub_76D20(v43, v50, v76);

          *(v44 + 14) = v56;
          _os_log_impl(&dword_0, v41, v42, "[POIClustering] [RENDERING] Fallback, mkMapItem.name=%s, mkMapItem.poiCategory=%s", v44, 0x16u);
          swift_arrayDestroy();
        }

        return 0;
      }

      if (qword_C3970 != -1)
      {
        swift_once();
      }

      v38 = sub_900D0();
      sub_7FF0(v38, qword_C5878);
      v33 = sub_900B0();
      v34 = sub_90A80();
      if (!os_log_type_enabled(v33, v34))
      {
        goto LABEL_31;
      }

      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "[POIClustering] [RENDERING] City";
    }

    _os_log_impl(&dword_0, v33, v34, v36, v35, 2u);

LABEL_31:

    goto LABEL_49;
  }

  v10 = a1;
  v11 = [v10 pointOfInterestCategory];
  if (v11)
  {
    v12 = v11;
    v13 = sub_90590();
    v15 = v14;
    if (v13 == sub_90590() && v15 == v16)
    {

      goto LABEL_16;
    }

    v18 = sub_910F0();

    if (v18)
    {
      goto LABEL_14;
    }
  }

  v19 = [v10 _styleAttributes];
  if (!v19)
  {
LABEL_14:
    v12 = v10;
LABEL_16:

    goto LABEL_17;
  }

  v20 = v19;
  if (qword_C3970 != -1)
  {
    swift_once();
  }

  v21 = sub_900D0();
  sub_7FF0(v21, qword_C5878);
  v22 = v10;
  v23 = sub_900B0();
  v24 = sub_90A80();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v77 = v26;
    *v25 = 134218242;
    v27 = [v22 name];
    if (v27)
    {
      v28 = v27;
      sub_90590();
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v76[1] = v30;
    sub_3A90(&qword_C4828);
    v57 = sub_90D20();

    *(v25 + 4) = v57;

    *(v25 + 12) = 2080;
    v76[0] = [v22 pointOfInterestCategory];
    sub_3A90(&unk_C5890);
    v58 = sub_90D00();
    v60 = v59;

    v61 = sub_76D20(v58, v60, &v77);

    *(v25 + 14) = v61;
    _os_log_impl(&dword_0, v23, v24, "[POIClustering] [RENDERING] POI mapItemName=%ld, mapItemPOICategory=%s", v25, 0x16u);
    sub_7FA4(v26);
  }

  else
  {
  }

LABEL_49:
  v62 = v20;
  [a5 displayScale];
  v64 = v63;
  v65 = [objc_allocWithZone(VKIconModifiers) init];
  [v65 setNightMode:{objc_msgSend(a5, "userInterfaceStyle") == &dword_0 + 2}];
  result = [objc_opt_self() iconManager];
  if (!result)
  {
    __break(1u);
    goto LABEL_57;
  }

  v67 = result;
  v68 = v64;
  v69 = sub_90550();
  *&v70 = v68;
  v71 = [v67 imageForStyleAttributes:v62 withStylesheetName:v69 contentScale:7 sizeGroup:v65 modifiers:v70];

  if (!v71)
  {

    return 0;
  }

  result = [v71 fillColor];
  if (result)
  {
    v72 = result;
    v73 = [objc_allocWithZone(UIColor) initWithCGColor:v72];

    result = [v71 image];
    if (result)
    {
      v74 = result;
      [v71 contentScale];
      [objc_allocWithZone(UIImage) initWithCGImage:v74 scale:0 orientation:v75];

      return v73;
    }

    goto LABEL_58;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_34BC8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_34C10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_34D84()
{
  v2.receiver = v0;
  v2.super_class = _s15MOMapAnnotationCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_34DF0()
{
  v0 = sub_900D0();
  sub_8F9C(v0, qword_C59A0);
  v1 = sub_7FF0(v0, qword_C59A0);
  if (qword_C3A88 != -1)
  {
    swift_once();
  }

  v2 = sub_7FF0(v0, qword_D0768);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_34EB8()
{
  sub_91180();
  sub_8F350();
  sub_37394(&qword_C5AD8, &type metadata accessor for UUID);
  sub_90470();
  return sub_911D0();
}

uint64_t sub_34F54()
{
  sub_8F350();
  sub_37394(&qword_C5AD8, &type metadata accessor for UUID);
  return sub_90470();
}

Swift::Int sub_34FD4()
{
  sub_91180();
  sub_8F350();
  sub_37394(&qword_C5AD8, &type metadata accessor for UUID);
  sub_90470();
  return sub_911D0();
}

size_t sub_3507C(uint64_t a1, double a2)
{
  v5 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v2[OBJC_IVAR____TtCC15JournalSettings10MapManager30MOSuggestionAssetMapsClusterer_skipRows] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtCC15JournalSettings10MapManager30MOSuggestionAssetMapsClusterer_skipColumns] = &_swiftEmptySetSingleton;
  v8 = &off_C5000;
  *&v2[OBJC_IVAR____TtCC15JournalSettings10MapManager30MOSuggestionAssetMapsClusterer_inputClusters] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtCC15JournalSettings10MapManager30MOSuggestionAssetMapsClusterer_results] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtCC15JournalSettings10MapManager30MOSuggestionAssetMapsClusterer_separationThreshold] = a2;
  v9 = _s30MOSuggestionAssetMapsClustererCMa();
  v52.receiver = v2;
  v52.super_class = v9;
  v10 = objc_msgSendSuper2(&v52, "init");
  v11 = v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v51 = _swiftEmptyArrayStorage;
    v38 = v10;
    v13 = v10;
    result = sub_1CA08(0, v12, 0);
    v15 = 0;
    v16 = v51;
    v17 = a1 + 48;
    v39 = v12;
    v40 = a1;
    while (v15 < *(a1 + 16))
    {
      v18 = *(v17 - 16);
      v19 = *(v17 - 8);
      v21 = *v17;
      v20 = *(v17 + 8);
      v22 = *(v17 + 16);
      v23 = *(v17 + 32);
      v45 = *(v17 + 24);
      v46 = *(v17 + 40);
      v24 = *(v17 + 48);
      if (v22)
      {
        v20 = 1;
      }

      v43 = v21;
      v44 = v20;
      v48 = v15;
      v25 = v21;

      v49 = sub_910B0();
      v50 = v26;
      v53._countAndFlagsBits = 95;
      v53._object = 0xE100000000000000;
      sub_90640(v53);
      v47 = v16;
      v27 = v49;
      v28 = v50;
      v29 = v42;
      v30 = v25;

      sub_8F340();

      *v7 = v18;
      v7[1] = v19;
      v32 = v43;
      v31 = v44;
      v7[2] = 0;
      v7[3] = v31;
      v7[4] = v27;
      v7[5] = v28;
      v16 = v47;
      *(v7 + v29[9]) = v32;
      v33 = (v7 + v29[10]);
      *v33 = v45;
      v33[1] = v23;
      *(v7 + v29[11]) = v46;
      *(v7 + v29[12]) = v24;
      v51 = v16;
      v35 = *(v16 + 2);
      v34 = *(v16 + 3);
      if (v35 >= v34 >> 1)
      {
        sub_1CA08(v34 > 1, v35 + 1, 1);
        v16 = v51;
      }

      ++v15;
      *(v16 + 2) = v35 + 1;
      result = sub_39B78(v7, v16 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v35);
      v17 += 72;
      a1 = v40;
      if (v39 == v15)
      {

        v8 = &off_C5000;
        v11 = v38;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = v10;

    v16 = _swiftEmptyArrayStorage;
LABEL_11:
    *(v8[313] + v11) = v16;

    return v11;
  }

  return result;
}

uint64_t sub_35394()
{
  v1 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v115 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v114 = v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v113 = v105 - v5;
  v6 = __chkstk_darwin(v4);
  v112 = v105 - v7;
  v8 = __chkstk_darwin(v6);
  v110 = v105 - v9;
  v10 = __chkstk_darwin(v8);
  v11 = __chkstk_darwin(v10);
  v111 = v105 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = v105 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = v105 - v17;
  result = __chkstk_darwin(v16);
  v22 = v105 - v21;
  v23 = *(v0 + OBJC_IVAR____TtCC15JournalSettings10MapManager30MOSuggestionAssetMapsClusterer_inputClusters);
  v130[0] = v23;
  v24 = *(v23 + 16);
  if (!v24)
  {
LABEL_108:
    __break(1u);
    return result;
  }

  v117 = v24 - 1;
  if (v24 != 1)
  {
    v106 = v20;
    v105[0] = result;
    v127 = v0;
    v109 = OBJC_IVAR____TtCC15JournalSettings10MapManager30MOSuggestionAssetMapsClusterer_separationThreshold;
    v107 = OBJC_IVAR____TtCC15JournalSettings10MapManager30MOSuggestionAssetMapsClusterer_results;
    v125 = OBJC_IVAR____TtCC15JournalSettings10MapManager30MOSuggestionAssetMapsClusterer_skipColumns;
    v126 = OBJC_IVAR____TtCC15JournalSettings10MapManager30MOSuggestionAssetMapsClusterer_skipRows;

    v25 = 0;
    v108 = 0;
    v121 = v18;
    v123 = v22;
    v116 = v15;
    while (2)
    {
      v122 = v23;
      v119 = v25 + 1;
      result = sub_39308(v130);
      v26 = 0;
      v27 = result + 32;
      v120 = result;
      v28 = *(result + 16);
      v124 = -1;
      v29 = 1.79769313e308;
      v30 = -1;
      v31 = v127;
LABEL_7:
      v32 = v26;
      while (v28 != v32)
      {
        if (v32 >= v28)
        {
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        v26 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_93;
        }

        v33 = *(v27 + 8 * v32);
        v34 = *(v33 + 16);
        ++v32;
        if (v34)
        {
          v35 = 0;
          v36 = v33 + 32;
          v37 = v32 - 1;
          while (1)
          {
            v38 = *(v36 + 8 * v35);
            v39 = *(v31 + v126);
            if (*(v39 + 16))
            {
              result = sub_91170();
              v40 = -1 << *(v39 + 32);
              v41 = result & ~v40;
              if ((*(v39 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
              {
                v42 = ~v40;
                v31 = v127;
                while (*(*(v39 + 48) + 8 * v41) + 1 != v32)
                {
                  v41 = (v41 + 1) & v42;
                  if (((*(v39 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
                  {
                    goto LABEL_21;
                  }
                }

                goto LABEL_13;
              }

              v31 = v127;
            }

LABEL_21:
            v43 = *(v31 + v125);
            if (*(v43 + 16))
            {
              result = sub_91170();
              v44 = -1 << *(v43 + 32);
              v45 = result & ~v44;
              if ((*(v43 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
              {
                v46 = ~v44;
                v31 = v127;
                while (*(*(v43 + 48) + 8 * v45) != v35)
                {
                  v45 = (v45 + 1) & v46;
                  if (((*(v43 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
                  {
                    goto LABEL_26;
                  }
                }

                goto LABEL_13;
              }

              v31 = v127;
              if (v28 >= 2)
              {
LABEL_29:
                if (v35 < v37 && v37 >= 1)
                {
                  if (v38 >= v29)
                  {
                    v47 = v29;
                  }

                  else
                  {
                    v47 = v38;
                  }

                  v48 = v124;
                  if (v38 >= v29)
                  {
                    v49 = v124;
                  }

                  else
                  {
                    v49 = v35;
                  }

                  if (v38 >= v29)
                  {
                    v50 = v30;
                  }

                  else
                  {
                    v50 = v32 - 1;
                  }

                  if (v35 < v28)
                  {
                    v29 = v47;
                    v48 = v49;
                  }

                  v124 = v48;
                  if (v35 < v28)
                  {
                    v30 = v50;
                  }
                }
              }
            }

            else
            {
LABEL_26:
              if (v28 >= 2)
              {
                goto LABEL_29;
              }
            }

LABEL_13:
            if (++v35 == v34)
            {
              v18 = v121;
              v22 = v123;
              goto LABEL_7;
            }
          }
        }
      }

      v51 = v116;
      v52 = v124;
      if (v30 == -1 && v124 == -1)
      {

LABEL_5:
        v23 = v122;
        v25 = v119;
        if (v119 != v117)
        {
          continue;
        }
      }

      break;
    }

    v53 = v122;
    if ((v30 & 0x8000000000000000) != 0)
    {
      goto LABEL_95;
    }

    v54 = *(v122 + 16);
    if (v30 >= v54)
    {
LABEL_96:
      __break(1u);
    }

    else
    {
      v55 = (*(v115 + 80) + 32) & ~*(v115 + 80);
      v56 = *(v115 + 72);
      result = sub_39BDC(v122 + v55 + v56 * v30, v22);
      if (v52 < v54)
      {
        v118 = v56;
        v57 = sub_39BDC(v53 + v55 + v56 * v52, v18);
        if (v29 >= *(v127 + v109) * *(v127 + v109))
        {

          v61 = v114;
          sub_39BDC(v22, v114);
          swift_beginAccess();
          v62 = v113;
          sub_6B2D8(v113, v61);
          sub_39C94(v62);
          sub_39BDC(v18, v61);
          sub_6B2D8(v62, v61);
          sub_39C94(v62);
          swift_endAccess();
LABEL_74:
          sub_39C94(v18);
          sub_39C94(v22);
          goto LABEL_5;
        }

        __chkstk_darwin(v57);
        v105[-2] = v22;
        v105[-1] = v18;
        v58 = v108;
        result = sub_38558(sub_39D5C, &v105[-4], v53);
        v108 = v58;
        v105[1] = v105;
        if (v59)
        {
          v124 = *(v53 + 16);
          v60 = v105[0];
        }

        else
        {
          v63 = result + 1;
          v60 = v105[0];
          v64 = v118;
          if (__OFADD__(result, 1))
          {
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          v124 = result;
          v66 = (v53 + 16);
          v65 = *(v53 + 16);
          if (v63 != v65)
          {
            v99 = v55 + v118 * v63;
            while (v63 < v65)
            {
              sub_39BDC(v53 + v99, v51);
              if (sub_8F320())
              {
                result = sub_39C94(v51);
              }

              else
              {
                v100 = sub_8F320();
                result = sub_39C94(v51);
                if ((v100 & 1) == 0)
                {
                  v101 = v124;
                  if (v63 != v124)
                  {
                    if (v124 < 0)
                    {
                      goto LABEL_103;
                    }

                    v102 = v55;
                    v103 = *v66;
                    if (v124 >= *v66)
                    {
                      goto LABEL_104;
                    }

                    v104 = v124 * v118;
                    result = sub_39BDC(v53 + v102 + v124 * v118, v106);
                    if (v63 >= v103)
                    {
                      goto LABEL_105;
                    }

                    sub_39BDC(v53 + v99, v110);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v53 = sub_20E3C(v53);
                    }

                    v55 = v102;
                    result = sub_39CF8(v110, v53 + v102 + v104);
                    if (v63 >= *(v53 + 16))
                    {
                      goto LABEL_106;
                    }

                    result = sub_39CF8(v106, v53 + v99);
                    v64 = v118;
                    v101 = v124;
                  }

                  v124 = v101 + 1;
                }
              }

              ++v63;
              v66 = (v53 + 16);
              v65 = *(v53 + 16);
              v99 += v64;
              if (v63 == v65)
              {
                goto LABEL_57;
              }
            }

            goto LABEL_94;
          }
        }

LABEL_57:

        v67 = *(v53 + 16);
        v68 = v124 - v67;
        if (v124 <= v67)
        {
          if ((v124 & 0x8000000000000000) == 0)
          {
            v69 = *(v53 + 16);
            if (v69 >= v67)
            {
              v70 = v69 + v68;
              if (!__OFADD__(v69, v68))
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v130[0] = v53;
                if (isUniquelyReferenced_nonNull_native && v70 <= *(v53 + 24) >> 1)
                {
                  v122 = v53;
                }

                else
                {
                  if (v69 <= v70)
                  {
                    v72 = v70;
                  }

                  else
                  {
                    v72 = v69;
                  }

                  v122 = sub_174C8(isUniquelyReferenced_nonNull_native, v72, 1, v53);
                  v130[0] = v122;
                }

                result = sub_20E64(v124, v67, 0);
                v73 = v60[9];
                v74 = v123;
                v75 = *&v123[v73];
                v76 = v75;
                v77 = v121;
                if (!v75)
                {
                  v76 = *&v121[v73];
                  result = v76;
                }

                v78 = *(v74 + 3);
                v79 = *(v77 + 3);
                v80 = v78 + v79;
                if (!__OFADD__(v78, v79))
                {
                  v81 = (*(v74 + 1) + *(v77 + 1)) * 0.5;
                  v82 = (*v74 + *v77) * 0.5;
                  v83 = *(v74 + 4);
                  v84 = *(v74 + 5);
                  v85 = *(v77 + 4);
                  v86 = *(v77 + 5);
                  v128 = v83;
                  v129 = v84;
                  v87 = v75;

                  v131._countAndFlagsBits = v85;
                  v131._object = v86;
                  sub_90640(v131);
                  v88 = v128;
                  v89 = v129;
                  v90 = v111;
                  sub_8F340();
                  *v90 = v82;
                  *(v90 + 8) = v81;
                  *(v90 + 16) = v29;
                  *(v90 + 24) = v80;
                  *(v90 + 32) = v88;
                  *(v90 + 40) = v89;
                  *(v90 + v60[9]) = v76;
                  v91 = (v90 + v60[10]);
                  *v91 = 0;
                  v91[1] = 0xE000000000000000;
                  *(v90 + v60[11]) = 0;
                  *(v90 + v60[12]) = 0;
                  sub_39BDC(v90, v112);
                  v92 = v122;
                  v94 = *(v122 + 16);
                  v93 = *(v122 + 24);
                  if (v94 >= v93 >> 1)
                  {
                    v92 = sub_174C8(v93 > 1, v94 + 1, 1, v122);
                  }

                  v95 = v118;
                  *(v92 + 16) = v94 + 1;
                  sub_39B78(v112, v92 + v55 + v94 * v95);
                  v122 = v92;
                  v130[0] = v92;
                  v96 = v111;
                  v97 = v114;
                  sub_39BDC(v111, v114);
                  swift_beginAccess();
                  v98 = v113;
                  sub_6B2D8(v113, v97);
                  sub_39C94(v98);
                  swift_endAccess();
                  sub_39C94(v96);
                  v18 = v121;
                  v22 = v123;
                  goto LABEL_74;
                }

                goto LABEL_102;
              }

LABEL_101:
              __break(1u);
LABEL_102:
              __break(1u);
LABEL_103:
              __break(1u);
LABEL_104:
              __break(1u);
LABEL_105:
              __break(1u);
LABEL_106:
              __break(1u);
              goto LABEL_107;
            }

LABEL_100:
            __break(1u);
            goto LABEL_101;
          }

LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

LABEL_98:
        __break(1u);
        goto LABEL_99;
      }
    }

    __break(1u);
    goto LABEL_98;
  }

  return result;
}

uint64_t sub_35DA8()
{
  _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  if (sub_8F320())
  {
    return 1;
  }

  else
  {
    return sub_8F320() & 1;
  }
}

double *sub_35E24()
{
  v120 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v122 = *(v120 - 1);
  v0 = __chkstk_darwin(v120);
  v125 = v105 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __chkstk_darwin(v0);
  v4 = v105 - v3;
  v5 = __chkstk_darwin(v2);
  v114 = v105 - v6;
  v7 = __chkstk_darwin(v5);
  v108 = v105 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = v105 - v10;
  __chkstk_darwin(v9);
  v13 = (v105 - v12);
  v131 = 0;
  v132 = 0xE000000000000000;
  if (qword_C3978 != -1)
  {
    goto LABEL_103;
  }

LABEL_2:
  v14 = sub_900D0();
  sub_7FF0(v14, qword_C59A0);
  v15 = sub_900B0();
  v16 = sub_90A80();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = 0x3FE0000000000000;
    _os_log_impl(&dword_0, v15, v16, "[MOSuggestionAssetMapsClusterer] using POI penalty: %f", v17, 0xCu);
  }

  v18 = OBJC_IVAR____TtCC15JournalSettings10MapManager30MOSuggestionAssetMapsClusterer_results;
  v19 = v121;
  swift_beginAccess();
  v20 = *(v18 + v19);
  v21 = &off_C5000;
  if (*(v20 + 16))
  {
    v126 = v18;
    v22 = 1 << *(v20 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v20 + 56);
    v25 = (v22 + 63) >> 6;

    v26 = 0;
    v27 = 0.0;
LABEL_10:
    if (v24)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        swift_once();
        goto LABEL_2;
      }

      if (v29 >= v25)
      {
        break;
      }

      v24 = *(v20 + 56 + 8 * v29);
      ++v26;
      if (v24)
      {
        v26 = v29;
LABEL_15:
        sub_39BDC(*(v20 + 48) + *(v122 + 72) * (__clz(__rbit64(v24)) | (v26 << 6)), v13);
        v30 = v13[2];
        v31 = *(v13 + v120[9]);
        v32 = v31;
        sub_39C94(v13);
        if (v31)
        {

          v28 = 0.5;
        }

        else
        {
          v28 = -0.5;
        }

        v24 &= v24 - 1;
        v27 = v27 + v30 * (1.0 - v28);
        goto LABEL_10;
      }
    }

    v33 = *(v126 + v121);
    v34 = v33[2];
    if (v34)
    {
      v35 = sub_373DC(v33[2], 0);
      v126 = sub_39044(&v127, v35 + ((*(v122 + 80) + 32) & ~*(v122 + 80)), v34, v33);
      swift_bridgeObjectRetain_n();
      sub_39CF0();
      if (v126 != v34)
      {
        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {

      v35 = _swiftEmptyArrayStorage;
    }

    v127 = v35;
    v13 = 0;
    sub_374D8(&v127);

    v37 = v127;
    v38 = *(v127 + 16);
    if (v38)
    {
      v39 = 0;
      v40 = v27 / v34;
      v117 = OBJC_IVAR____TtCC15JournalSettings10MapManager30MOSuggestionAssetMapsClusterer_inputClusters;
      v36 = v122;
      v116 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v41 = v127 + v116;
      v105[2] = MKPointOfInterestCategoryReligiousSite;
      v126 = _swiftEmptyArrayStorage;
      v113 = v127;
      v112 = v38;
      v111 = v127 + v116;
      v119 = v11;
      while (1)
      {
        if (v39 >= *(v37 + 16))
        {
          goto LABEL_99;
        }

        v42 = *(v36 + 72);
        sub_39BDC(v41 + v42 * v39, v11);
        v43 = *(v11 + 2);
        if (v43 >= v40)
        {
          goto LABEL_26;
        }

        v123 = v42;
        v127 = v131;
        v128 = v132;
        v13 = *(v11 + 4);
        v11 = *(v11 + 5);
        v129 = v13;
        v130 = v11;
        sub_39C40();
        if (sub_90D70())
        {
          v11 = v119;
          goto LABEL_25;
        }

        v118 = v13;
        v127 = v13;
        v128 = v11;
        v129 = 95;
        v130 = 0xE100000000000000;
        v44 = sub_90D40();
        if (!*(v44 + 16))
        {
          goto LABEL_101;
        }

        v45 = v44;
        v13 = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_20E50(v45);
        }

        v11 = v119;
        v46 = *(v45 + 2);
        if (!v46)
        {
          goto LABEL_102;
        }

        *(v45 + 2) = v46 - 1;

        v47 = *(v45 + 2);
        if (!v47)
        {

          v52 = 0;
          goto LABEL_83;
        }

        v48 = 0;
        v115 = 0;
        v124 = 0;
        v49 = (v45 + 5);
        v50 = 0.0;
        v51 = 0.0;
        do
        {
          v54 = *(v49 - 1);
          v55 = *v49;
          if (v54)
          {
            v56 = 0;
          }

          else
          {
            v56 = v55 == 0xE000000000000000;
          }

          if (!v56 && (sub_910F0() & 1) == 0)
          {

            v57 = sub_36BC8(v54, v55);
            if ((v58 & 1) == 0 && (v57 & 0x8000000000000000) == 0)
            {
              v59 = *(v121 + v117);
              if (v57 < *(v59 + 16))
              {
                v60 = (v59 + v116 + v57 * v123);
                v62 = *v60;
                v61 = v60[1];
                v63 = *(v60 + v120[9]);
                if (v63)
                {
                  v64 = v63;
                  if (v115 <= 0)
                  {
                    v109 = v64;
                    v65 = [v109 pointOfInterestCategory];
                    v110 = v13;
                    if (v65)
                    {
                      v66 = v65;
                      v106 = sub_90590();
                      v68 = v67;
                      v69 = sub_90590();
                      v107 = v68;
                      if (v106 == v69 && v68 == v70)
                      {

                        v13 = v110;
                        goto LABEL_38;
                      }

                      v105[1] = v70;
                      LODWORD(v106) = sub_910F0();

                      v13 = v110;
                      if (v106)
                      {
                        v66 = v109;
                        goto LABEL_38;
                      }
                    }

                    v66 = v109;
                    v72 = [v109 _styleAttributes];
                    if (v72)
                    {

                      v73 = v120;
                      v74 = &v11[v120[10]];
                      v75 = v74[1];
                      v115 = *v74;
                      v109 = v75;
                      v107 = v120[8];

                      v76 = v108;
                      sub_8F340();
                      *v76 = v62;
                      *(v76 + 8) = v61;
                      *(v76 + 16) = v43;
                      *(v76 + 24) = 1;
                      v77 = v110;
                      *(v76 + 32) = v118;
                      *(v76 + 40) = v77;
                      *(v76 + v73[9]) = v63;
                      v78 = (v76 + v73[10]);
                      v79 = v109;
                      *v78 = v115;
                      v78[1] = v79;
                      *(v76 + v73[11]) = 0;
                      *(v76 + v73[12]) = 0;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v126 = sub_174C8(0, *(v126 + 2) + 1, 1, v126);
                      }

                      v81 = *(v126 + 2);
                      v80 = *(v126 + 3);
                      if (v81 >= v80 >> 1)
                      {
                        v126 = sub_174C8(v80 > 1, v81 + 1, 1, v126);
                      }

                      v82 = v126;
                      *(v126 + 2) = v81 + 1;
                      sub_39B78(v108, v82 + v116 + v81 * v123);
                      if (v51 != 0.0)
                      {
                        v51 = v51 + (v51 - v62) / 7.0;
                      }

                      v13 = v110;
                      if (v50 != 0.0)
                      {
                        v50 = v50 + (v50 - v61) / 7.0;
                      }

                      v115 = 1;
LABEL_46:
                      v124 = v63;
                      goto LABEL_47;
                    }

LABEL_38:
                  }
                }

                if (v51 == 0.0)
                {
                  v51 = v62;
                }

                else
                {
                  v51 = (v51 + v62) * 0.5;
                }

                if (v50 == 0.0)
                {
                  v50 = v61;
                }

                else
                {
                  v50 = (v50 + v61) * 0.5;
                }

                if (__OFADD__(v48++, 1))
                {
                  goto LABEL_100;
                }

                goto LABEL_46;
              }
            }
          }

LABEL_47:
          v49 += 2;
          --v47;
        }

        while (v47);

        v41 = v111;
        if (v48 < 1)
        {
          v37 = v113;
          v38 = v112;
        }

        else
        {
          v83 = v120;
          v84 = &v11[v120[10]];
          v85 = v84[1];
          v115 = *v84;
          v86 = v124;
          v87 = v124;

          v88 = v114;
          sub_8F340();
          *v88 = v51;
          *(v88 + 8) = v50;
          *(v88 + 16) = v43;
          v89 = v118;
          *(v88 + 24) = v48;
          *(v88 + 32) = v89;
          *(v88 + 40) = v13;
          *(v88 + v83[9]) = v86;
          v90 = (v88 + v83[10]);
          *v90 = v115;
          v90[1] = v85;
          *(v88 + v83[11]) = 0;
          *(v88 + v83[12]) = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v126 = sub_174C8(0, *(v126 + 2) + 1, 1, v126);
          }

          v92 = *(v126 + 2);
          v91 = *(v126 + 3);
          v37 = v113;
          v38 = v112;
          v11 = v119;
          if (v92 >= v91 >> 1)
          {
            v126 = sub_174C8(v91 > 1, v92 + 1, 1, v126);
          }

          v93 = v126;
          *(v126 + 2) = v92 + 1;
          sub_39B78(v114, v93 + v116 + v92 * v123);
        }

        v52 = v124;
LABEL_83:
        v133._countAndFlagsBits = v118;
        v133._object = v13;
        sub_90640(v133);

LABEL_25:
        v36 = v122;
LABEL_26:
        ++v39;
        sub_39C94(v11);
        if (v39 == v38)
        {

          goto LABEL_86;
        }
      }
    }

    v126 = _swiftEmptyArrayStorage;
    v36 = v122;
LABEL_86:
    v21 = &off_C5000;
  }

  else
  {
LABEL_20:
    v126 = _swiftEmptyArrayStorage;
    v36 = v122;
  }

  v94 = *(v21[313] + v121);
  v95 = *(v94 + 16);
  if (v95)
  {
    v96 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v97 = v94 + v96;
    v98 = *(v36 + 72);
    v124 = *(v21[313] + v121);

    do
    {
      sub_39BDC(v97, v4);
      v127 = v131;
      v128 = v132;
      v100 = *(v4 + 4);
      v101 = *(v4 + 5);
      v129 = v100;
      v130 = v101;
      sub_39C40();
      if ((sub_90D70() & 1) == 0)
      {
        sub_39BDC(v4, v125);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v126 = sub_174C8(0, *(v126 + 2) + 1, 1, v126);
        }

        v103 = *(v126 + 2);
        v102 = *(v126 + 3);
        if (v103 >= v102 >> 1)
        {
          v126 = sub_174C8(v102 > 1, v103 + 1, 1, v126);
        }

        v99 = v126;
        *(v126 + 2) = v103 + 1;
        sub_39B78(v125, v99 + v96 + v103 * v98);
        v134._countAndFlagsBits = v100;
        v134._object = v101;
        sub_90640(v134);
      }

      sub_39C94(v4);
      v97 += v98;
      --v95;
    }

    while (v95);
  }

  return v126;
}