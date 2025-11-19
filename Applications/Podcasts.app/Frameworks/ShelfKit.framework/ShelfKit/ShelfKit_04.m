uint64_t HttpTemplateAction.body.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8ShelfKit18HttpTemplateAction_body + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC8ShelfKit18HttpTemplateAction_body);
  a1[1] = v2;
}

uint64_t HttpTemplateAction.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit18HttpTemplateAction_message);

  return v1;
}

char *HttpTemplateAction.makeAction(with:actionMetrics:)(uint64_t *a1, uint64_t a2)
{
  v4 = v2;
  v48 = a2;
  v6 = sub_3EC1F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3E5DC4();
  __chkstk_darwin(v10 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  v16 = a1[2];
  v15 = a1[3];
  v50 = *a1;
  v51 = v13;
  v46 = v16;
  v52 = v16;
  v53 = v15;
  v47 = v15;
  v54 = v4;
  sub_65BC0(v4 + OBJC_IVAR____TtC8ShelfKit18HttpTemplateAction_url, v12);
  if (!v3)
  {
    v17 = *(v7 + 16);
    v18 = v48;
    v48 = 0;
    v17(v9, v18, v6);
    type metadata accessor for HttpAction();
    swift_allocObject();
    v9 = HttpAction.init(url:presentationStyle:actionMetrics:)(v12, 0, v9);
    v19 = v54;
    v20 = *(v54 + OBJC_IVAR____TtC8ShelfKit18HttpTemplateAction_method);
    v21 = OBJC_IVAR____TtC8ShelfKit10HttpAction_method;
    swift_beginAccess();
    v9[v21] = v20;
    v50 = v14;
    v51 = v13;
    v22 = v46;
    v23 = v47;
    v52 = v46;
    v53 = v47;
    v24 = sub_667B8(*(v19 + OBJC_IVAR____TtC8ShelfKit18HttpTemplateAction_headers));
    v25 = OBJC_IVAR____TtC8ShelfKit10HttpAction_headers;
    swift_beginAccess();
    *&v9[v25] = v24;

    v50 = v14;
    v51 = v13;
    v52 = v22;
    v53 = v23;
    v26 = *(v19 + OBJC_IVAR____TtC8ShelfKit18HttpTemplateAction_body + 8);
    v49[0] = *(v19 + OBJC_IVAR____TtC8ShelfKit18HttpTemplateAction_body);
    v49[1] = v26;

    v27 = v48;
    sub_669F8(v49);
    v29 = v28;
    v31 = v30;

    v48 = v27;
    if (v27)
    {
    }

    else
    {
      v33 = &v9[OBJC_IVAR____TtC8ShelfKit10HttpAction_body];
      swift_beginAccess();
      *v33 = v29;
      *(v33 + 1) = v31;

      v34 = v54;
      v35 = *(v54 + OBJC_IVAR____TtC8ShelfKit18HttpTemplateAction_isStoreRequest);
      v36 = OBJC_IVAR____TtC8ShelfKit10HttpAction_isStoreRequest;
      swift_beginAccess();
      v9[v36] = v35;
      v37 = *(v34 + OBJC_IVAR____TtC8ShelfKit18HttpTemplateAction_needsAuthentication);
      v38 = OBJC_IVAR____TtC8ShelfKit10HttpAction_needsAuthentication;
      swift_beginAccess();
      v9[v38] = v37;
      v39 = *(v34 + OBJC_IVAR____TtC8ShelfKit18HttpTemplateAction_retryCount);
      v40 = OBJC_IVAR____TtC8ShelfKit10HttpAction_retryCount;
      swift_beginAccess();
      *&v9[v40] = v39;
      LOBYTE(v39) = *(v34 + OBJC_IVAR____TtC8ShelfKit18HttpTemplateAction_disableCache);
      v41 = OBJC_IVAR____TtC8ShelfKit10HttpAction_disableCache;
      swift_beginAccess();
      v9[v41] = v39;
      v42 = v23;
      if (!v23)
      {
        v42 = *(v54 + OBJC_IVAR____TtC8ShelfKit18HttpTemplateAction_successAction);
      }

      v43 = OBJC_IVAR____TtC8ShelfKit10HttpAction_successAction;
      swift_beginAccess();
      *&v9[v43] = v42;

      v44 = *(v54 + OBJC_IVAR____TtC8ShelfKit18HttpTemplateAction_failureAction);
      v45 = OBJC_IVAR____TtC8ShelfKit10HttpAction_failureAction;
      swift_beginAccess();
      *&v9[v45] = v44;
    }
  }

  return v9;
}

uint64_t sub_67F94()
{
  v1 = OBJC_IVAR____TtC8ShelfKit18HttpTemplateAction_url;
  v2 = sub_3E5DC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t HttpTemplateAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  v3 = OBJC_IVAR____TtC8ShelfKit18HttpTemplateAction_url;
  v4 = sub_3E5DC4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t HttpTemplateAction.__deallocating_deinit()
{
  HttpTemplateAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_681FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_68210(a1, a2);
  }

  return a1;
}

uint64_t sub_68210(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_68264()
{
  result = qword_4EC498;
  if (!qword_4EC498)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4EC498);
  }

  return result;
}

uint64_t sub_682B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_3EE264() + 1) & ~v5;
    do
    {
      sub_3EE954();

      sub_3ED394();
      v9 = sub_3EE9A4();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_68460(int64_t a1, uint64_t a2)
{
  v38 = sub_3E5FC4();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_3EE264();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_69A04(&qword_4EBA78, &type metadata accessor for UUID);
      v22 = sub_3ED114();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + a1);
          v28 = (v26 + v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

void sub_68780(int64_t a1, uint64_t a2)
{
  v38 = sub_3E5DC4();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_3EE264();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_69A04(&qword_4EBA98, &type metadata accessor for URL);
      v22 = sub_3ED114();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

void sub_68AA0(int64_t a1, uint64_t a2)
{
  v39 = sub_3E5FC4();
  v4 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v40 = v5;
    v11 = sub_3EE264();
    v12 = v39;
    v5 = v40;
    v13 = v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v36 = (v11 + 1) & v10;
    v37 = v15;
    v16 = *(v14 + 56);
    v34 = (v14 - 8);
    v35 = a2 + 64;
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v38;
      v20 = v13;
      v21 = v14;
      v37(v38, *(v5 + 48) + v16 * v9, v12);
      sub_69A04(&qword_4EBA78, &type metadata accessor for UUID);
      v22 = sub_3ED114();
      (*v34)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v40;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v40 + 48) + v17 * a1 >= (*(v40 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v40;
            v16 = v17;
            v13 = v20;
            v7 = v35;
          }

          else
          {
            v7 = v35;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v40;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = v26 + 24 * a1;
          v28 = (v26 + 24 * v9);
          if (a1 != v9 || v27 >= v28 + 24)
          {
            v29 = *v28;
            *(v27 + 16) = *(v28 + 2);
            *v27 = v29;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v35;
      v16 = v17;
      v5 = v40;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v30 = *(v5 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v32;
    ++*(v5 + 36);
  }
}

unint64_t sub_68DC4()
{
  result = qword_4EC4A0;
  if (!qword_4EC4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EC4A0);
  }

  return result;
}

unint64_t sub_68E18(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_68E68(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_68EC8(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_3E5FC4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_68F98(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_69054(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = sub_3E5FC4();
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = (a6[7] + 24 * a1);
  *v15 = a3;
  v15[1] = a4;
  v15[2] = a5;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

_OWORD *sub_6912C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1FB90(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t _s8ShelfKit21HttpTemplateParameterV6TargetO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B0388;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t _s8ShelfKit21HttpTemplateParameterV9InputTypeO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B03F0;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_6922C()
{
  result = qword_4EC4A8;
  if (!qword_4EC4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EC4A8);
  }

  return result;
}

unint64_t sub_69280()
{
  result = qword_4EC4B0;
  if (!qword_4EC4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EC4B0);
  }

  return result;
}

unint64_t sub_692D4()
{
  result = qword_4EC4C0;
  if (!qword_4EC4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EC4C0);
  }

  return result;
}

unint64_t sub_69328()
{
  result = qword_4EC4C8;
  if (!qword_4EC4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EC4C8);
  }

  return result;
}

unint64_t sub_6937C()
{
  result = qword_4EC4D8;
  if (!qword_4EC4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4EC4D0);
    sub_69400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EC4D8);
  }

  return result;
}

unint64_t sub_69400()
{
  result = qword_4EC4E0;
  if (!qword_4EC4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EC4E0);
  }

  return result;
}

unint64_t sub_69458()
{
  result = qword_4EC4E8;
  if (!qword_4EC4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EC4E8);
  }

  return result;
}

unint64_t sub_694B0()
{
  result = qword_4EC4F0;
  if (!qword_4EC4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EC4F0);
  }

  return result;
}

unint64_t sub_69508()
{
  result = qword_4EC4F8;
  if (!qword_4EC4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EC4F8);
  }

  return result;
}

uint64_t sub_69580(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_695CC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_69634(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_6967C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChannelOfferType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ChannelOfferType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_6983C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_69884(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t type metadata accessor for HttpTemplateAction()
{
  result = qword_4EC528;
  if (!qword_4EC528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_69928()
{
  result = sub_3E5DC4();
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

uint64_t sub_69A04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_69A4C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t LibraryEpisodeContextAction.episodeUuid.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit27LibraryEpisodeContextAction_episodeUuid);

  return v1;
}

uint64_t LibraryEpisodeContextAction.stationUuid.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit27LibraryEpisodeContextAction_stationUuid);

  return v1;
}

uint64_t LibraryEpisodeContextAction.__allocating_init(episodeUuid:stationUuid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v6 = sub_3E5FC4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3EC1F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v14 - 8);
  v16 = &v26 - v15;
  v17 = swift_allocObject();
  v18 = (v17 + OBJC_IVAR____TtC8ShelfKit27LibraryEpisodeContextAction_episodeUuid);
  *v18 = a1;
  v18[1] = a2;
  v19 = (v17 + OBJC_IVAR____TtC8ShelfKit27LibraryEpisodeContextAction_stationUuid);
  v20 = v27;
  *v19 = v26;
  v19[1] = v20;
  v21 = sub_3EC634();
  (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v22 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v24 = v23;
  (*(v7 + 8))(v9, v6);
  *(v17 + 16) = v22;
  *(v17 + 24) = v24;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0;
  *(v17 + 48) = 32;
  (*(v11 + 32))(v17 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v13, v10);
  sub_14A10(v16, v17 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v17;
}

uint64_t LibraryEpisodeContextAction.init(episodeUuid:stationUuid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a3;
  v28 = a4;
  v8 = sub_3E5FC4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3EC1F4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v16 - 8);
  v18 = &v27 - v17;
  v19 = (v5 + OBJC_IVAR____TtC8ShelfKit27LibraryEpisodeContextAction_episodeUuid);
  *v19 = a1;
  v19[1] = a2;
  v20 = (v5 + OBJC_IVAR____TtC8ShelfKit27LibraryEpisodeContextAction_stationUuid);
  v21 = v28;
  *v20 = v27;
  v20[1] = v21;
  v22 = sub_3EC634();
  (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v23 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v25 = v24;
  (*(v9 + 8))(v11, v8);
  *(v5 + 16) = v23;
  *(v5 + 24) = v25;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 32;
  (*(v13 + 32))(v5 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v15, v12);
  sub_14A10(v18, v5 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v5;
}

uint64_t sub_6A100()
{
}

uint64_t LibraryEpisodeContextAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

  return v0;
}

uint64_t LibraryEpisodeContextAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LibraryEpisodeContextAction()
{
  result = qword_4EC660;
  if (!qword_4EC660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LibraryEpisodeOfferAction.episodeUuid.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit25LibraryEpisodeOfferAction_episodeUuid);

  return v1;
}

uint64_t LibraryEpisodeOfferAction.__allocating_init(episodeUuid:contentId:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v27 = a4;
  v28 = sub_3E5FC4();
  v7 = *(v28 - 8);
  __chkstk_darwin(v28);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_3EC1F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v14 - 8);
  v16 = &v26[-v15];
  v17 = swift_allocObject();
  v18 = (v17 + OBJC_IVAR____TtC8ShelfKit25LibraryEpisodeOfferAction_episodeUuid);
  *v18 = a1;
  v18[1] = a2;
  if ((v27 & 1) != 0 || sub_3E9484() == a3)
  {
    a3 = 0;
    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  v20 = v17 + OBJC_IVAR____TtC8ShelfKit25LibraryEpisodeOfferAction_contentId;
  *v20 = a3;
  *(v20 + 8) = v19;
  v21 = sub_3EC634();
  (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v22 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v24 = v23;
  (*(v7 + 8))(v9, v28);
  *(v17 + 16) = v22;
  *(v17 + 24) = v24;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0;
  *(v17 + 48) = 32;
  (*(v11 + 32))(v17 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v13, v10);
  sub_14A10(v16, v17 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v17;
}

uint64_t LibraryEpisodeOfferAction.init(episodeUuid:contentId:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v28 = a4;
  v29 = sub_3E5FC4();
  v9 = *(v29 - 8);
  __chkstk_darwin(v29);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_3EC1F4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v16 - 8);
  v18 = &v27[-v17];
  v19 = (v5 + OBJC_IVAR____TtC8ShelfKit25LibraryEpisodeOfferAction_episodeUuid);
  *v19 = a1;
  v19[1] = a2;
  if ((v28 & 1) != 0 || sub_3E9484() == a3)
  {
    a3 = 0;
    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  v21 = v5 + OBJC_IVAR____TtC8ShelfKit25LibraryEpisodeOfferAction_contentId;
  *v21 = a3;
  *(v21 + 8) = v20;
  v22 = sub_3EC634();
  (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v23 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v25 = v24;
  (*(v9 + 8))(v11, v29);
  *(v5 + 16) = v23;
  *(v5 + 24) = v25;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 32;
  (*(v13 + 32))(v5 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v15, v12);
  sub_14A10(v18, v5 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v5;
}

uint64_t LibraryEpisodeOfferAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

  return v0;
}

uint64_t LibraryEpisodeOfferAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LibraryEpisodeOfferAction()
{
  result = qword_4EC758;
  if (!qword_4EC758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LibraryFollowAction.podcastUuid.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit19LibraryFollowAction_podcastUuid);

  return v1;
}

uint64_t LibraryFollowAction.__allocating_init(podcastUuid:displaySuccessHUD:)(uint64_t a1, uint64_t a2, int a3)
{
  v24 = a3;
  v5 = sub_3E5FC4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_3EC1F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v13 - 8);
  v15 = &v23[-v14];
  v16 = swift_allocObject();
  v17 = (v16 + OBJC_IVAR____TtC8ShelfKit19LibraryFollowAction_podcastUuid);
  *v17 = a1;
  v17[1] = a2;
  *(v16 + OBJC_IVAR____TtC8ShelfKit19LibraryFollowAction_displaySuccessHUD) = v24;
  v18 = sub_3EC634();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v19 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v21 = v20;
  (*(v6 + 8))(v8, v5);
  *(v16 + 16) = v19;
  *(v16 + 24) = v21;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  *(v16 + 48) = 32;
  (*(v10 + 32))(v16 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v12, v9);
  sub_14A10(v15, v16 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v16;
}

uint64_t LibraryFollowAction.init(podcastUuid:displaySuccessHUD:)(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v25 = a3;
  v7 = sub_3E5FC4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_3EC1F4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v15 - 8);
  v17 = &v24[-v16];
  v18 = (v4 + OBJC_IVAR____TtC8ShelfKit19LibraryFollowAction_podcastUuid);
  *v18 = a1;
  v18[1] = a2;
  *(v4 + OBJC_IVAR____TtC8ShelfKit19LibraryFollowAction_displaySuccessHUD) = v25;
  v19 = sub_3EC634();
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v20 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v22 = v21;
  (*(v8 + 8))(v10, v7);
  *(v4 + 16) = v20;
  *(v4 + 24) = v22;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 32;
  (*(v12 + 32))(v4 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v14, v11);
  sub_14A10(v17, v4 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v4;
}

uint64_t LibraryFollowAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

  return v0;
}

uint64_t LibraryFollowAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LibraryFollowAction()
{
  result = qword_4EC848;
  if (!qword_4EC848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LibraryPodcastContextAction.podcastUuid.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_podcastUuid);

  return v1;
}

uint64_t sub_6B560(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t LibraryPodcastContextAction.__allocating_init(podcastUuid:groupedEpisodeListType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = sub_3E5FC4();
  v6 = *(v26 - 8);
  __chkstk_darwin(v26);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = sub_3EC1F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v13 - 8);
  v15 = &v27[-v14 - 8];
  v16 = swift_allocObject();
  v17 = (v16 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_podcastUuid);
  *v17 = a1;
  v17[1] = a2;
  v18 = v16 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_groupedEpisodeListType;
  *(v18 + 64) = *(a3 + 64);
  v19 = *(a3 + 48);
  *(v18 + 32) = *(a3 + 32);
  *(v18 + 48) = v19;
  v20 = *(a3 + 16);
  *v18 = *a3;
  *(v18 + 16) = v20;
  v21 = sub_3EC634();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  sub_6B560(a3, v27);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v22 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v24 = v23;
  sub_FCF8(a3, &qword_4EC910);
  (*(v6 + 8))(v8, v26);
  *(v16 + 16) = v22;
  *(v16 + 24) = v24;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  *(v16 + 48) = 32;
  (*(v10 + 32))(v16 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v12, v9);
  sub_14A10(v15, v16 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v16;
}

uint64_t LibraryPodcastContextAction.init(podcastUuid:groupedEpisodeListType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = sub_3E5FC4();
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = sub_3EC1F4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v15 - 8);
  v17 = &v28[-v16 - 8];
  v18 = (v4 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_podcastUuid);
  *v18 = a1;
  v18[1] = a2;
  v19 = v4 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_groupedEpisodeListType;
  v20 = *(a3 + 48);
  *(v19 + 32) = *(a3 + 32);
  *(v19 + 48) = v20;
  *(v19 + 64) = *(a3 + 64);
  v21 = *(a3 + 16);
  *v19 = *a3;
  *(v19 + 16) = v21;
  v22 = sub_3EC634();
  (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
  sub_6B560(a3, v28);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v23 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v25 = v24;
  sub_FCF8(a3, &qword_4EC910);
  (*(v8 + 8))(v10, v27);
  *(v4 + 16) = v23;
  *(v4 + 24) = v25;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 32;
  (*(v12 + 32))(v4 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v14, v11);
  sub_14A10(v17, v4 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v4;
}

uint64_t LibraryPodcastContextAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);

  sub_6BE30(*(v0 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_groupedEpisodeListType), *(v0 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_groupedEpisodeListType + 8), *(v0 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_groupedEpisodeListType + 16), *(v0 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_groupedEpisodeListType + 24), *(v0 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_groupedEpisodeListType + 32), *(v0 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_groupedEpisodeListType + 40), *(v0 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_groupedEpisodeListType + 48), *(v0 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_groupedEpisodeListType + 56), *(v0 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_groupedEpisodeListType + 64));
  return v0;
}

uint64_t LibraryPodcastContextAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);

  sub_6BE30(*(v0 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_groupedEpisodeListType), *(v0 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_groupedEpisodeListType + 8), *(v0 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_groupedEpisodeListType + 16), *(v0 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_groupedEpisodeListType + 24), *(v0 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_groupedEpisodeListType + 32), *(v0 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_groupedEpisodeListType + 40), *(v0 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_groupedEpisodeListType + 48), *(v0 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_groupedEpisodeListType + 56), *(v0 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_groupedEpisodeListType + 64));

  return swift_deallocClassInstance();
}

void sub_6BE30(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  if (a9 != 255)
  {
    sub_6BE48(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

void sub_6BE48(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  if (a9 <= 3u)
  {
    if (a9 >= 4u)
    {
      return;
    }

    goto LABEL_12;
  }

  if (a9 <= 6u)
  {
    if (a9 != 4)
    {
      if (a9 != 5)
      {
        return;
      }
    }

    goto LABEL_12;
  }

  if (a9 == 7)
  {
LABEL_12:

    return;
  }

  if (a9 != 8)
  {
    if (a9 != 9)
    {
      return;
    }

    goto LABEL_12;
  }

  sub_6BF60(a3, a4);
}

uint64_t sub_6BF60(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t type metadata accessor for LibraryPodcastContextAction()
{
  result = qword_4EC940;
  if (!qword_4EC940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of LibraryPodcastContextAction.__allocating_init(podcastUuid:groupedEpisodeListType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 64);
  v5 = *(v3 + 152);
  v6 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v6;
  v7 = *(a3 + 48);
  v9[2] = *(a3 + 32);
  v9[3] = v7;
  v10 = v4;
  return v5(a1, a2, v9);
}

uint64_t LibraryPodcastOfferAction.podcastUuid.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit25LibraryPodcastOfferAction_podcastUuid);

  return v1;
}

uint64_t LibraryPodcastOfferAction.__allocating_init(podcast:displaySuccessHUD:)(uint64_t a1, int a2)
{
  swift_allocObject();
  v4 = sub_6C3CC(a1, a2);

  return v4;
}

uint64_t LibraryPodcastOfferAction.init(podcast:displaySuccessHUD:)(uint64_t a1, int a2)
{
  v2 = sub_6C3CC(a1, a2);

  return v2;
}

uint64_t LibraryPodcastOfferAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  sub_6C938(v0 + OBJC_IVAR____TtC8ShelfKit18PodcastOfferAction_podcastOffer);

  return v0;
}

uint64_t LibraryPodcastOfferAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  sub_6C938(v0 + OBJC_IVAR____TtC8ShelfKit18PodcastOfferAction_podcastOffer);

  return swift_deallocClassInstance();
}

uint64_t sub_6C3CC(uint64_t a1, int a2)
{
  v3 = v2;
  v59 = a2;
  v5 = sub_3E5FC4();
  v65 = *(v5 - 8);
  v66 = v5;
  __chkstk_darwin(v5);
  v62 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EC1F4();
  v63 = *(v7 - 8);
  v64 = v7;
  __chkstk_darwin(v7);
  v61 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v9 - 8);
  v60 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v11 - 8);
  v13 = &v49 - v12;
  v14 = type metadata accessor for ShowOffer();
  __chkstk_darwin(v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 40);
  v18 = (v2 + OBJC_IVAR____TtC8ShelfKit25LibraryPodcastOfferAction_podcastUuid);
  *v18 = *(a1 + 32);
  v18[1] = v17;
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);

  v21 = v19;
  v57 = v20;
  if (v20 == 1)
  {
    v21 = sub_3E9484();
  }

  v22 = *(a1 + 56);
  v58 = v19;
  v55 = v21;
  v56 = v22;
  if (v22)
  {
    v23 = *(a1 + 48);
    v53 = v22;
    v54 = v23;
  }

  else
  {
    v53 = 0xE000000000000000;
    v54 = 0;
  }

  sub_FBD0(a1 + OBJC_IVAR____TtC8ShelfKit7Podcast_artwork, v13, &qword_4F1D50);
  v24 = *(a1 + 96);
  v52 = *(a1 + 88);
  v50 = v24;
  if (*(a1 + OBJC_IVAR____TtC8ShelfKit7Podcast_isExplicit))
  {
    v25 = 1;
  }

  else
  {
    v25 = 2;
  }

  v51 = v25;
  v26 = v14[13];
  v27 = sub_3E5DC4();
  v28 = *(*(v27 - 8) + 56);
  v28(&v16[v26], 1, 1, v27);
  v30 = *(a1 + 104);
  v29 = *(a1 + 112);
  v28(&v16[v14[16]], 1, 1, v27);
  sub_FBD0(a1 + OBJC_IVAR____TtC8ShelfKit7Podcast_storeUrl, &v16[v14[17]], &unk_4E9EE0);
  v31 = v54;
  *v16 = v55;
  *(v16 + 1) = v31;
  *(v16 + 2) = v53;
  v16[24] = 0;
  sub_FACC(v13, &v16[v14[7]], &qword_4F1D50);
  v32 = &v16[v14[8]];
  v33 = v50;
  *v32 = v52;
  *(v32 + 1) = v33;
  v34 = &v16[v14[9]];
  *v34 = 0;
  *(v34 + 1) = 0;
  v16[v14[10]] = v51;
  v35 = &v16[v14[11]];
  *v35 = 0;
  *(v35 + 1) = 0;
  v36 = &v16[v14[12]];
  *v36 = 0;
  *(v36 + 1) = 0;
  v37 = &v16[v14[14]];
  *v37 = v30;
  *(v37 + 1) = v29;
  v38 = &v16[v14[15]];
  *v38 = 0;
  *(v38 + 1) = 0;
  v16[v14[18]] = 2;

  v39 = v58;
  if (v57)
  {
    v39 = sub_3E9484();
  }

  sub_6CA58(v16, v3 + OBJC_IVAR____TtC8ShelfKit18PodcastOfferAction_podcastOffer);
  v40 = v3 + OBJC_IVAR____TtC8ShelfKit18PodcastOfferAction_adamId;
  *v40 = v39;
  *(v40 + 8) = 0;
  *(v3 + OBJC_IVAR____TtC8ShelfKit18PodcastOfferAction_displaySuccessHUD) = v59 & 1;
  v41 = sub_3EC634();
  v42 = v60;
  (*(*(v41 - 8) + 56))(v60, 1, 1, v41);
  v43 = v61;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v44 = v62;
  sub_3E5FB4();
  v45 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v47 = v46;
  sub_6C938(v16);
  (*(v65 + 8))(v44, v66);
  *(v3 + 16) = v45;
  *(v3 + 24) = v47;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 48;
  (*(v63 + 32))(v3 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v43, v64);
  sub_FACC(v42, v3 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  return v3;
}

uint64_t sub_6C938(uint64_t a1)
{
  v2 = type metadata accessor for ShowOffer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for LibraryPodcastOfferAction()
{
  result = qword_4ECA30;
  if (!qword_4ECA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6CA58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowOffer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t LibraryPodcastUnfollowAction.podcastUuid.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit28LibraryPodcastUnfollowAction_podcastUuid);

  return v1;
}

uint64_t sub_6CB2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t LibraryPodcastUnfollowAction.__allocating_init(podcastUuid:source:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = sub_3E5FC4();
  v6 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3EC1F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v13 - 8);
  v15 = &v23 - v14;
  v16 = swift_allocObject();
  v17 = (v16 + OBJC_IVAR____TtC8ShelfKit28LibraryPodcastUnfollowAction_podcastUuid);
  *v17 = a1;
  v17[1] = a2;
  sub_6CB2C(a3, v16 + OBJC_IVAR____TtC8ShelfKit28LibraryPodcastUnfollowAction_source);
  v18 = sub_3EC634();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v19 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v21 = v20;
  sub_FCF8(a3, &qword_4EB5B8);
  (*(v6 + 8))(v8, v24);
  *(v16 + 16) = v19;
  *(v16 + 24) = v21;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  *(v16 + 48) = 32;
  (*(v10 + 32))(v16 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v12, v9);
  sub_14A10(v15, v16 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v16;
}

uint64_t LibraryPodcastUnfollowAction.init(podcastUuid:source:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = sub_3E5FC4();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3EC1F4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v15 - 8);
  v17 = &v24 - v16;
  v18 = (v4 + OBJC_IVAR____TtC8ShelfKit28LibraryPodcastUnfollowAction_podcastUuid);
  *v18 = a1;
  v18[1] = a2;
  sub_6CB2C(a3, v4 + OBJC_IVAR____TtC8ShelfKit28LibraryPodcastUnfollowAction_source);
  v19 = sub_3EC634();
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v20 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v22 = v21;
  sub_FCF8(a3, &qword_4EB5B8);
  (*(v8 + 8))(v10, v25);
  *(v4 + 16) = v20;
  *(v4 + 24) = v22;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 32;
  (*(v12 + 32))(v4 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v14, v11);
  sub_14A10(v17, v4 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v4;
}

uint64_t LibraryPodcastUnfollowAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit28LibraryPodcastUnfollowAction_source, &qword_4EB5B8);
  return v0;
}

uint64_t LibraryPodcastUnfollowAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit28LibraryPodcastUnfollowAction_source, &qword_4EB5B8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LibraryPodcastUnfollowAction()
{
  result = qword_4ECB50;
  if (!qword_4ECB50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6D3E8()
{
  sub_5AC70();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t LibraryStationEpisodeOfferAction.stationUuid.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit32LibraryStationEpisodeOfferAction_stationUuid);

  return v1;
}

uint64_t LibraryStationEpisodeOfferAction.__allocating_init(episodeUuid:stationUuid:contentId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v32 = a6;
  v30 = a1;
  v31 = a2;
  v33 = sub_3E5FC4();
  v9 = *(v33 - 8);
  __chkstk_darwin(v33);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3EC1F4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v16 - 8);
  v18 = &v30 - v17;
  v19 = swift_allocObject();
  v20 = (v19 + OBJC_IVAR____TtC8ShelfKit32LibraryStationEpisodeOfferAction_stationUuid);
  *v20 = a3;
  v20[1] = a4;
  v21 = (v19 + OBJC_IVAR____TtC8ShelfKit25LibraryEpisodeOfferAction_episodeUuid);
  v22 = v31;
  *v21 = v30;
  v21[1] = v22;
  if ((v32 & 1) != 0 || sub_3E9484() == a5)
  {
    a5 = 0;
    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  v24 = v19 + OBJC_IVAR____TtC8ShelfKit25LibraryEpisodeOfferAction_contentId;
  *v24 = a5;
  *(v24 + 8) = v23;
  v25 = sub_3EC634();
  (*(*(v25 - 8) + 56))(v18, 1, 1, v25);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v26 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v28 = v27;
  (*(v9 + 8))(v11, v33);
  *(v19 + 16) = v26;
  *(v19 + 24) = v28;
  *(v19 + 32) = 0;
  *(v19 + 40) = 0;
  *(v19 + 48) = 32;
  (*(v13 + 32))(v19 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v15, v12);
  sub_14A10(v18, v19 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v19;
}

uint64_t LibraryStationEpisodeOfferAction.init(episodeUuid:stationUuid:contentId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v33 = a6;
  v31 = a1;
  v32 = a2;
  v34 = sub_3E5FC4();
  v11 = *(v34 - 8);
  __chkstk_darwin(v34);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_3EC1F4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v18 - 8);
  v20 = &v31 - v19;
  v21 = (v7 + OBJC_IVAR____TtC8ShelfKit32LibraryStationEpisodeOfferAction_stationUuid);
  *v21 = a3;
  v21[1] = a4;
  v22 = (v7 + OBJC_IVAR____TtC8ShelfKit25LibraryEpisodeOfferAction_episodeUuid);
  v23 = v32;
  *v22 = v31;
  v22[1] = v23;
  if ((v33 & 1) != 0 || sub_3E9484() == a5)
  {
    a5 = 0;
    v24 = 1;
  }

  else
  {
    v24 = 0;
  }

  v25 = v7 + OBJC_IVAR____TtC8ShelfKit25LibraryEpisodeOfferAction_contentId;
  *v25 = a5;
  *(v25 + 8) = v24;
  v26 = sub_3EC634();
  (*(*(v26 - 8) + 56))(v20, 1, 1, v26);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v27 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v29 = v28;
  (*(v11 + 8))(v13, v34);
  *(v7 + 16) = v27;
  *(v7 + 24) = v29;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 32;
  (*(v15 + 32))(v7 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v17, v14);
  sub_14A10(v20, v7 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v7;
}

uint64_t LibraryStationEpisodeOfferAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

  return v0;
}

uint64_t LibraryStationEpisodeOfferAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LibraryStationEpisodeOfferAction()
{
  result = qword_4ECC40;
  if (!qword_4ECC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void __swiftcall LoadingAction.Configuration.init(title:showsLoadingIndicator:dismissAfter:)(ShelfKit::LoadingAction::Configuration *__return_ptr retstr, Swift::String title, Swift::Bool showsLoadingIndicator, Swift::Double_optional dismissAfter)
{
  retstr->title = title;
  retstr->showsLoadingIndicator = showsLoadingIndicator;
  *(&retstr->dismissAfter.value + 7) = *&dismissAfter.is_nil;
  LOBYTE(retstr[1].title._countAndFlagsBits) = v4 & 1;
}

void sub_6DDF8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0xE000000000000000;
  v6._object = 0x8000000000425350;
  v6._countAndFlagsBits = 0xD00000000000001CLL;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_3E5A74(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_4ECD18 = v2;
  unk_4ECD20 = v4;
  byte_4ECD28 = 1;
  qword_4ECD30 = 0;
  byte_4ECD38 = 1;
}

uint64_t static LoadingAction.Configuration.oauthStartingConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_4E8900 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = unk_4ECD20;
  v3 = byte_4ECD28;
  v4 = qword_4ECD30;
  v5 = byte_4ECD38;
  *a1 = qword_4ECD18;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

void sub_6DF38()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0xE000000000000000;
  v6._object = 0x8000000000425320;
  v6._countAndFlagsBits = 0xD000000000000029;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_3E5A74(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_4ECD40 = v2;
  *algn_4ECD48 = v4;
  byte_4ECD50 = 0;
  qword_4ECD58 = 0x4000000000000000;
  byte_4ECD60 = 0;
}

uint64_t static LoadingAction.Configuration.oauthSuccessConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_4E8908 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = *algn_4ECD48;
  v3 = byte_4ECD50;
  v4 = qword_4ECD58;
  v5 = byte_4ECD60;
  *a1 = qword_4ECD40;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t LoadingAction.ViewToken.init(for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = a1;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t LoadingAction.config.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8ShelfKit13LoadingAction_config + 8);
  v3 = *(v1 + OBJC_IVAR____TtC8ShelfKit13LoadingAction_config + 16);
  v4 = *(v1 + OBJC_IVAR____TtC8ShelfKit13LoadingAction_config + 24);
  v5 = *(v1 + OBJC_IVAR____TtC8ShelfKit13LoadingAction_config + 32);
  *a1 = *(v1 + OBJC_IVAR____TtC8ShelfKit13LoadingAction_config);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t LoadingAction.updateHandler.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit13LoadingAction_updateHandler);

  return v1;
}

uint64_t LoadingAction.__allocating_init(config:updateHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = sub_3E5FC4();
  v6 = *(v29 - 8);
  __chkstk_darwin(v29);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3EC1F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v13 - 8);
  v15 = &v28 - v14;
  v16 = swift_allocObject();
  v17 = *(a1 + 8);
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  v20 = *(a1 + 32);
  v21 = v16 + OBJC_IVAR____TtC8ShelfKit13LoadingAction_config;
  *v21 = *a1;
  *(v21 + 8) = v17;
  *(v21 + 16) = v18;
  *(v21 + 24) = v19;
  *(v21 + 32) = v20;
  v22 = (v16 + OBJC_IVAR____TtC8ShelfKit13LoadingAction_updateHandler);
  *v22 = a2;
  v22[1] = a3;
  v23 = sub_3EC634();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);

  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v24 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v26 = v25;

  (*(v6 + 8))(v8, v29);
  *(v16 + 16) = v24;
  *(v16 + 24) = v26;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  *(v16 + 48) = 32;
  (*(v10 + 32))(v16 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v12, v9);
  sub_14A10(v15, v16 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v16;
}

uint64_t LoadingAction.init(config:updateHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = sub_3E5FC4();
  v8 = *(v30 - 8);
  __chkstk_darwin(v30);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3EC1F4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v15 - 8);
  v17 = &v29 - v16;
  v18 = *(a1 + 8);
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  v21 = *(a1 + 32);
  v22 = v4 + OBJC_IVAR____TtC8ShelfKit13LoadingAction_config;
  *v22 = *a1;
  *(v22 + 8) = v18;
  *(v22 + 16) = v19;
  *(v22 + 24) = v20;
  *(v22 + 32) = v21;
  v23 = (v4 + OBJC_IVAR____TtC8ShelfKit13LoadingAction_updateHandler);
  *v23 = a2;
  v23[1] = a3;
  v24 = sub_3EC634();
  (*(*(v24 - 8) + 56))(v17, 1, 1, v24);

  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v25 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v27 = v26;

  (*(v8 + 8))(v10, v30);
  *(v4 + 16) = v25;
  *(v4 + 24) = v27;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 32;
  (*(v12 + 32))(v4 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v14, v11);
  sub_14A10(v17, v4 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v4;
}

uint64_t sub_6E720()
{
}

uint64_t LoadingAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

  return v0;
}

uint64_t LoadingAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LoadingAction()
{
  result = qword_4ECD90;
  if (!qword_4ECD90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_6EA28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_6EA70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_6EAC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_6EB10(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

uint64_t MarkAsPlayedEpisodeAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MarkAsPlayedEpisodeAction() + 20);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MarkAsPlayedEpisodeAction()
{
  result = qword_4ECEB0;
  if (!qword_4ECEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id MarkAsUnplayedEpisodeAction.intent.getter@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1C10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_3F5630;
  v5 = *v1;
  v4 = *(v1 + 8);
  *(v3 + 32) = *v1;
  *(v3 + 40) = v4;
  v6 = *(v1 + 16);
  *(v3 + 48) = v6;
  *a1 = v3;

  return sub_3DE90(v5, v4, v6);
}

uint64_t MarkAsPlayedEpisodeAction.init(episodeID:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v7 = *(type metadata accessor for MarkAsPlayedEpisodeAction() + 20);
  v8 = sub_3EC1F4();
  v9 = *(*(v8 - 8) + 32);

  return v9(a5 + v7, a4, v8);
}

uint64_t sub_6ED74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 16);
    if (v4 > 2)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_3EC1F4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_6EE2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = sub_3EC1F4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_6EED0()
{
  result = qword_4ECEE8;
  if (!qword_4ECEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4ECEE8);
  }

  return result;
}

uint64_t MarkAsUnplayedEpisodeAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MarkAsUnplayedEpisodeAction() + 20);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MarkAsUnplayedEpisodeAction()
{
  result = qword_4ECF48;
  if (!qword_4ECF48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MarkAsUnplayedEpisodeAction.init(episodeID:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v7 = *(type metadata accessor for MarkAsUnplayedEpisodeAction() + 20);
  v8 = sub_3EC1F4();
  v9 = *(*(v8 - 8) + 32);

  return v9(a5 + v7, a4, v8);
}

uint64_t sub_6F0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 16);
    if (v4 > 2)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_3EC1F4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_6F15C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = sub_3EC1F4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_6F200()
{
  result = qword_4ECF80;
  if (!qword_4ECF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4ECF80);
  }

  return result;
}

uint64_t NavigateBackAction.animationBehavior.getter()
{
  v1 = OBJC_IVAR____TtC8ShelfKit18NavigateBackAction_animationBehavior;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t NavigateBackAction.animationBehavior.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit18NavigateBackAction_animationBehavior;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t NavigateBackAction.__allocating_init(animationBehavior:)(char a1)
{
  v2 = sub_3E5FC4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3EC1F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - v11;
  v13 = swift_allocObject();
  *(v13 + OBJC_IVAR____TtC8ShelfKit18NavigateBackAction_animationBehavior) = a1;
  v14 = sub_3EC634();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v15 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v17 = v16;
  (*(v3 + 8))(v5, v2);
  *(v13 + 16) = v15;
  *(v13 + 24) = v17;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  *(v13 + 48) = 32;
  (*(v7 + 32))(v13 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v9, v6);
  sub_14A10(v12, v13 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v13;
}

uint64_t NavigateBackAction.init(animationBehavior:)(char a1)
{
  v2 = v1;
  v4 = sub_3E5FC4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3EC1F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v12 - 8);
  v14 = &v20 - v13;
  *(v2 + OBJC_IVAR____TtC8ShelfKit18NavigateBackAction_animationBehavior) = a1;
  v15 = sub_3EC634();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v16 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v18 = v17;
  (*(v5 + 8))(v7, v4);
  *(v2 + 16) = v16;
  *(v2 + 24) = v18;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 32;
  (*(v9 + 32))(v2 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v11, v8);
  sub_14A10(v14, v2 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v2;
}

uint64_t type metadata accessor for NavigateBackAction()
{
  result = qword_4ECFB0;
  if (!qword_4ECFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OAuthAction.oAuthAdamId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit11OAuthAction_oAuthAdamId);

  return v1;
}

uint64_t OAuthAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v68 = a2;
  v65 = v4;
  v6 = *v4;
  v61 = v3;
  v62 = v6;
  v7 = sub_3EBF94();
  v66 = *(v7 - 8);
  v67 = v7;
  __chkstk_darwin(v7);
  v60 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v9 - 8);
  v57 = &v55 - v10;
  v11 = sub_3EBDF4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v59 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v63 = &v55 - v15;
  __chkstk_darwin(v16);
  v18 = &v55 - v17;
  __chkstk_darwin(v19);
  v21 = &v55 - v20;
  v22 = 0x80000000004253F0;
  v23 = a1;
  sub_3EBE04();
  sub_3EBDC4();
  v25 = v24;
  v58 = v12;
  v26 = v21;
  v27 = *(v12 + 8);
  v27(v26, v11);
  v69 = v11;
  if (!v25)
  {
    v45 = 0xD000000000000010;
    v46 = v65;
LABEL_8:
    v47 = sub_3ECEE4();
    sub_4D38C();
    swift_allocError();
    v48 = *v46;
    *v49 = v45;
    v49[1] = v22;
    v49[2] = v48;
    (*(*(v47 - 8) + 104))(v49, enum case for JSONError.missingProperty(_:), v47);
    swift_willThrow();
    (*(v66 + 8))(v68, v67);
    v27(v23, v69);
    swift_deallocPartialClassInstance();
    return v47;
  }

  v22 = 0xEB0000000064496DLL;
  sub_3EBE04();
  v28 = sub_3EBDC4();
  v29 = v27;
  v31 = v30;
  v64 = v29;
  v29(v18, v11);
  if (!v31)
  {
    v45 = 0x616441687475416FLL;

    v27 = v64;
    v46 = v65;
    goto LABEL_8;
  }

  v32 = v57;
  sub_3E5D94();

  v33 = v65;
  sub_1893C(v32, v65 + OBJC_IVAR____TtC8ShelfKit11OAuthAction_authorizationURL);
  v34 = (v33 + OBJC_IVAR____TtC8ShelfKit11OAuthAction_oAuthAdamId);
  *v34 = v28;
  v34[1] = v31;
  v35 = v63;
  v56 = v23;
  sub_3EBE04();
  sub_3EBDC4();
  v37 = v36;
  if (v36)
  {
    v38 = v61;
    v39 = sub_3E9494();
    v40 = v38;
    v41 = v67;
    v42 = v68;
    v43 = v66;
    if (v38)
    {

      v44 = sub_3E9484();

      v64(v63, v69);
      v40 = 0;
    }

    else
    {
      v44 = v39;
      v64(v63, v69);
    }
  }

  else
  {
    v64(v35, v69);
    v44 = 0;
    v41 = v67;
    v42 = v68;
    v43 = v66;
    v40 = v61;
  }

  v50 = v33 + OBJC_IVAR____TtC8ShelfKit11OAuthAction_showAdamId;
  *v50 = v44;
  *(v50 + 8) = v37 == 0;
  v51 = v59;
  v52 = v56;
  (*(v58 + 16))(v59, v56, v69);
  v47 = v60;
  (*(v43 + 16))(v60, v42, v41);
  v53 = Action.init(deserializing:using:)(v51, v47);
  if (!v40)
  {
    v47 = v53;
  }

  (*(v43 + 8))(v42, v41);
  v64(v52, v69);
  return v47;
}

uint64_t sub_7007C()
{
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit11OAuthAction_authorizationURL, &unk_4E9EE0);
}

uint64_t OAuthAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit11OAuthAction_authorizationURL, &unk_4E9EE0);

  return v0;
}

uint64_t OAuthAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  v3 = OBJC_IVAR____TtC8ShelfKit11OAuthAction_authorizationURL;

  sub_FCF8(v0 + v3, &unk_4E9EE0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OAuthAction()
{
  result = qword_4ED098;
  if (!qword_4ED098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_7030C()
{
  sub_1F630();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t OpenExternalAppAction.__allocating_init(bundleID:requiresSignedInUser:actionMetrics:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v25 = a3;
  v26 = sub_3E5FC4();
  v7 = *(v26 - 8);
  __chkstk_darwin(v26);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v10 - 8);
  v12 = &v24[-v11];
  v13 = sub_3EC1F4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = swift_allocObject();
  v18 = (v17 + OBJC_IVAR____TtC8ShelfKit21OpenExternalAppAction_bundleID);
  *v18 = a1;
  v18[1] = a2;
  *(v17 + OBJC_IVAR____TtC8ShelfKit21OpenExternalAppAction_requiresSignedInUser) = v25;
  (*(v14 + 16))(v16, a4, v13);
  v19 = sub_3EC634();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  sub_3E5FB4();
  v20 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v22 = v21;
  (*(v14 + 8))(a4, v13);
  (*(v7 + 8))(v9, v26);
  *(v17 + 16) = v20;
  *(v17 + 24) = v22;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0;
  *(v17 + 48) = 32;
  (*(v14 + 32))(v17 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v16, v13);
  sub_14A10(v12, v17 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v17;
}

uint64_t OpenExternalAppAction.init(bundleID:requiresSignedInUser:actionMetrics:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v27 = a3;
  v28 = sub_3E5FC4();
  v9 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v12 - 8);
  v14 = &v26[-v13];
  v15 = sub_3EC1F4();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v26[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = (v5 + OBJC_IVAR____TtC8ShelfKit21OpenExternalAppAction_bundleID);
  *v20 = a1;
  v20[1] = a2;
  *(v5 + OBJC_IVAR____TtC8ShelfKit21OpenExternalAppAction_requiresSignedInUser) = v27;
  (*(v16 + 16))(v19, a4, v15, v17);
  v21 = sub_3EC634();
  (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  sub_3E5FB4();
  v22 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v24 = v23;
  (*(v16 + 8))(a4, v15);
  (*(v9 + 8))(v11, v28);
  *(v5 + 16) = v22;
  *(v5 + 24) = v24;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 32;
  (*(v16 + 32))(v5 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v19, v15);
  sub_14A10(v14, v5 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v5;
}

uint64_t OpenExternalAppAction.bundleID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit21OpenExternalAppAction_bundleID);

  return v1;
}

uint64_t OpenExternalAppAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

  return v0;
}

uint64_t OpenExternalAppAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OpenExternalAppAction()
{
  result = qword_4ED188;
  if (!qword_4ED188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OverflowAction.__allocating_init(model:cellType:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = sub_3E5FC4();
  v6 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_3EC1F4();
  v9 = *(v21 - 8);
  __chkstk_darwin(v21);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  v15 = swift_allocObject();
  sub_1F958(a1, v15 + OBJC_IVAR____TtC8ShelfKit14OverflowAction_model);
  *(v15 + OBJC_IVAR____TtC8ShelfKit14OverflowAction_cellType) = a2;
  *(v15 + OBJC_IVAR____TtC8ShelfKit14OverflowAction_objectGraph) = a3;
  v16 = sub_3EC634();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);

  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v17 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v19 = v18;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  (*(v6 + 8))(v8, v22);
  *(v15 + 16) = v17;
  *(v15 + 24) = v19;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  *(v15 + 48) = 32;
  (*(v9 + 32))(v15 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v11, v21);
  sub_14A10(v14, v15 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v15;
}

uint64_t OverflowAction.init(model:cellType:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = sub_3E5FC4();
  v8 = *(v23 - 8);
  __chkstk_darwin(v23);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_3EC1F4();
  v11 = *(v22 - 8);
  __chkstk_darwin(v22);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v14 - 8);
  v16 = &v22 - v15;
  sub_1F958(a1, v4 + OBJC_IVAR____TtC8ShelfKit14OverflowAction_model);
  *(v4 + OBJC_IVAR____TtC8ShelfKit14OverflowAction_cellType) = a2;
  *(v4 + OBJC_IVAR____TtC8ShelfKit14OverflowAction_objectGraph) = a3;
  v17 = sub_3EC634();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);

  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v18 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v20 = v19;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  (*(v8 + 8))(v10, v23);
  *(v4 + 16) = v18;
  *(v4 + 24) = v20;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 32;
  (*(v11 + 32))(v4 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v13, v22);
  sub_14A10(v16, v4 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v4;
}

uint64_t sub_7128C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC8ShelfKit14OverflowAction_model);
}

uint64_t OverflowAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC8ShelfKit14OverflowAction_model);

  return v0;
}

uint64_t OverflowAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  v3 = OBJC_IVAR____TtC8ShelfKit14OverflowAction_model;

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + v3);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OverflowAction()
{
  result = qword_4ED278;
  if (!qword_4ED278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PodcastContextAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v45 = a2;
  v43 = *v3;
  v46 = sub_3EBF94();
  v49 = *(v46 - 8);
  __chkstk_darwin(v46);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  v9 = type metadata accessor for ShowOffer();
  __chkstk_darwin(v9 - 8);
  v42 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_3EBDF4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v38 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  sub_3EBE04();
  sub_3EBDC4();
  if (v20)
  {
    v44 = v12;
    v47 = v11;
    v48 = a1;
    v21 = v45;
    v22 = v41;
    v23 = sub_3E9494();
    if (v22)
    {

      v24 = sub_3E9484();

      v41 = *(v44 + 8);
      v41(v19, v47);
    }

    else
    {
      v24 = v23;
      v41 = *(v44 + 8);
      v41(v19, v47);
    }

    v40 = v3;
    *(v3 + OBJC_IVAR____TtC8ShelfKit20PodcastContextAction_adamId) = v24;
    sub_3EBE04();
    v29 = *(v49 + 16);
    v30 = v21;
    v31 = v21;
    v32 = v46;
    v29(v8, v31, v46);
    v33 = v42;
    ShowOffer.init(deserializing:using:)(v16, v8, v42);
    sub_71B8C(v33, v40 + OBJC_IVAR____TtC8ShelfKit20PodcastContextAction_podcastOffer);
    v35 = v38;
    (*(v44 + 16))(v38, v48, v47);
    v36 = v39;
    v29(v39, v30, v32);
    v26 = Action.init(deserializing:using:)(v35, v36);
    (*(v49 + 8))(v30, v32);
    v41(v48, v47);
  }

  else
  {
    v25 = *(v12 + 8);
    v25(v19, v11);
    v26 = sub_3ECEE4();
    sub_4D38C();
    swift_allocError();
    v27 = *v3;
    *v28 = 0x64496D616461;
    v28[1] = 0xE600000000000000;
    v28[2] = v27;
    (*(*(v26 - 8) + 104))(v28, enum case for JSONError.missingProperty(_:), v26);
    swift_willThrow();
    (*(v49 + 8))(v45, v46);
    v25(a1, v11);
    swift_deallocPartialClassInstance();
  }

  return v26;
}

uint64_t sub_71B8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowOffer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PodcastContextAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  sub_6C938(v0 + OBJC_IVAR____TtC8ShelfKit20PodcastContextAction_podcastOffer);
  return v0;
}

uint64_t PodcastContextAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  sub_6C938(v0 + OBJC_IVAR____TtC8ShelfKit20PodcastContextAction_podcastOffer);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PodcastContextAction()
{
  result = qword_4ED370;
  if (!qword_4ED370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_71DF0()
{
  result = type metadata accessor for ShowOffer();
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

uint64_t PodcastOfferAction.init(podcastOffer:adamId:displaySuccessHUD:)(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v5 = v4;
  v26 = a4;
  v27 = sub_3E5FC4();
  v9 = *(v27 - 8);
  __chkstk_darwin(v27);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_3EC1F4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v16 - 8);
  v18 = &v25[-v17];
  sub_6CA58(a1, v5 + OBJC_IVAR____TtC8ShelfKit18PodcastOfferAction_podcastOffer);
  v19 = v5 + OBJC_IVAR____TtC8ShelfKit18PodcastOfferAction_adamId;
  *v19 = a2;
  *(v19 + 8) = a3 & 1;
  *(v5 + OBJC_IVAR____TtC8ShelfKit18PodcastOfferAction_displaySuccessHUD) = v26;
  v20 = sub_3EC634();
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v21 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v23 = v22;
  sub_6C938(a1);
  (*(v9 + 8))(v11, v27);
  *(v5 + 16) = v21;
  *(v5 + 24) = v23;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 48;
  (*(v13 + 32))(v5 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v15, v12);
  sub_14A10(v18, v5 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v5;
}

uint64_t PodcastOfferAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  sub_6C938(v0 + OBJC_IVAR____TtC8ShelfKit18PodcastOfferAction_podcastOffer);
  return v0;
}

uint64_t sub_72208()
{
  v1 = OBJC_IVAR____TtC8ShelfKit18PodcastOfferAction_displaySuccessHUD;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_7224C(char a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit18PodcastOfferAction_displaySuccessHUD;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t PodcastOfferAction.__allocating_init(podcastOffer:adamId:displaySuccessHUD:)(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v25 = a4;
  v26 = sub_3E5FC4();
  v7 = *(v26 - 8);
  __chkstk_darwin(v26);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_3EC1F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v14 - 8);
  v16 = &v24[-v15];
  v17 = swift_allocObject();
  sub_6CA58(a1, v17 + OBJC_IVAR____TtC8ShelfKit18PodcastOfferAction_podcastOffer);
  v18 = v17 + OBJC_IVAR____TtC8ShelfKit18PodcastOfferAction_adamId;
  *v18 = a2;
  *(v18 + 8) = a3 & 1;
  *(v17 + OBJC_IVAR____TtC8ShelfKit18PodcastOfferAction_displaySuccessHUD) = v25;
  v19 = sub_3EC634();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v20 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v22 = v21;
  sub_6C938(a1);
  (*(v7 + 8))(v9, v26);
  *(v17 + 16) = v20;
  *(v17 + 24) = v22;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0;
  *(v17 + 48) = 48;
  (*(v11 + 32))(v17 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v13, v10);
  sub_14A10(v16, v17 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v17;
}

uint64_t PodcastOfferAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v45 = a2;
  v43 = sub_3EBF94();
  v47 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v40 - v7;
  v9 = type metadata accessor for ShowOffer();
  __chkstk_darwin(v9 - 8);
  v11 = (&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_3EBDF4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  __chkstk_darwin(v18);
  v20 = &v40 - v19;
  v49 = a1;
  sub_3EBE04();
  sub_3EBDC4();
  v22 = v21;
  v46 = v12;
  v48 = v13;
  if (v21)
  {
    v23 = v50;
    v24 = sub_3E9494();
    if (v23)
    {

      v25 = sub_3E9484();

      v44 = *(v48 + 8);
      v44(v20, v12);
    }

    else
    {
      v25 = v24;
      v44 = *(v48 + 8);
      v44(v20, v12);
    }

    v50 = 0;
  }

  else
  {
    v44 = *(v13 + 8);
    v44(v20, v12);
    v25 = 0;
  }

  v26 = v47;
  v27 = v3 + OBJC_IVAR____TtC8ShelfKit18PodcastOfferAction_adamId;
  *v27 = v25;
  *(v27 + 8) = v22 == 0;
  v28 = v17;
  sub_3EBE04();
  v29 = v26 + 16;
  v30 = *(v26 + 16);
  v31 = v8;
  v32 = v8;
  v33 = v45;
  v34 = v43;
  v30(v32, v45, v43);
  v35 = v50;
  ShowOffer.init(deserializing:using:)(v28, v31, v11);
  if (v35)
  {
    (*(v26 + 8))(v33, v34);
    v44(v49, v46);
    type metadata accessor for PodcastOfferAction();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_71B8C(v11, v3 + OBJC_IVAR____TtC8ShelfKit18PodcastOfferAction_podcastOffer);
    *(v3 + OBJC_IVAR____TtC8ShelfKit18PodcastOfferAction_displaySuccessHUD) = 1;
    v36 = v49;
    v37 = v41;
    (*(v48 + 16))(v41, v49, v46);
    v38 = v42;
    v30(v42, v33, v34);
    v29 = Action.init(deserializing:using:)(v37, v38);
    (*(v47 + 8))(v33, v34);
    v44(v36, v46);
  }

  return v29;
}

uint64_t PodcastOfferAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  sub_6C938(v0 + OBJC_IVAR____TtC8ShelfKit18PodcastOfferAction_podcastOffer);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PodcastOfferAction()
{
  result = qword_4ED458;
  if (!qword_4ED458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_72C4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8ShelfKit18PodcastOfferAction_displaySuccessHUD;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_72CA4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8ShelfKit18PodcastOfferAction_displaySuccessHUD;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_72D00()
{
  result = type metadata accessor for ShowOffer();
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

uint64_t PopoverAction.__allocating_init(title:presentationStyle:flowAction:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_73110(a1, a2, a3, a4);

  return v8;
}

uint64_t PopoverAction.init(title:presentationStyle:flowAction:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = sub_73110(a1, a2, a3, a4);

  return v4;
}

uint64_t PopoverAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

  return v0;
}

uint64_t PopoverAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t sub_73110(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v27 = a3;
  v25 = a1;
  v26 = a2;
  v7 = sub_3E5FC4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3EC1F4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v15 - 8);
  v17 = &v24 - v16;
  *(v5 + OBJC_IVAR____TtC8ShelfKit13PopoverAction_flowAction) = a4;
  v18 = sub_3EC634();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);

  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v19 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v21 = v20;
  (*(v8 + 8))(v10, v7);
  *(v5 + 16) = v19;
  *(v5 + 24) = v21;
  v22 = v26;
  *(v5 + 32) = v25;
  *(v5 + 40) = v22;
  *(v5 + 48) = v27;
  (*(v12 + 32))(v5 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v14, v11);
  sub_14A10(v17, v5 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v5;
}

uint64_t type metadata accessor for PopoverAction()
{
  result = qword_4ED568;
  if (!qword_4ED568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PopToRootAction.animationBehavior.getter()
{
  v1 = OBJC_IVAR____TtC8ShelfKit15PopToRootAction_animationBehavior;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PopToRootAction.animationBehavior.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit15PopToRootAction_animationBehavior;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t PopToRootAction.__allocating_init(title:animationBehavior:presentationStyle:)(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v8 = swift_allocObject();
  PopToRootAction.init(title:animationBehavior:presentationStyle:)(a1, a2, a3, a4);
  return v8;
}

uint64_t PopToRootAction.init(title:animationBehavior:presentationStyle:)(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v5 = v4;
  v27 = a4;
  v25 = a1;
  v26 = a2;
  v7 = sub_3E5FC4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3EC1F4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v15 - 8);
  v17 = &v24 - v16;
  *(v5 + OBJC_IVAR____TtC8ShelfKit15PopToRootAction_animationBehavior) = a3;
  v18 = sub_3EC634();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v19 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v21 = v20;
  (*(v8 + 8))(v10, v7);
  *(v5 + 16) = v19;
  *(v5 + 24) = v21;
  v22 = v26;
  *(v5 + 32) = v25;
  *(v5 + 40) = v22;
  *(v5 + 48) = v27;
  (*(v12 + 32))(v5 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v14, v11);
  sub_14A10(v17, v5 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v5;
}

uint64_t PopToRootAction.__allocating_init(animationBehavior:)(char a1)
{
  v2 = sub_3E5FC4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3EC1F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - v11;
  v13 = swift_allocObject();
  *(v13 + OBJC_IVAR____TtC8ShelfKit15PopToRootAction_animationBehavior) = a1;
  v14 = sub_3EC634();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v15 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v17 = v16;
  (*(v3 + 8))(v5, v2);
  *(v13 + 16) = v15;
  *(v13 + 24) = v17;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  *(v13 + 48) = 32;
  (*(v7 + 32))(v13 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v9, v6);
  sub_14A10(v12, v13 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v13;
}

uint64_t PopToRootAction.init(animationBehavior:)(char a1)
{
  v2 = v1;
  v4 = sub_3E5FC4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3EC1F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v12 - 8);
  v14 = &v20 - v13;
  *(v2 + OBJC_IVAR____TtC8ShelfKit15PopToRootAction_animationBehavior) = a1;
  v15 = sub_3EC634();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v16 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v18 = v17;
  (*(v5 + 8))(v7, v4);
  *(v2 + 16) = v16;
  *(v2 + 24) = v18;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 32;
  (*(v9 + 32))(v2 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v11, v8);
  sub_14A10(v14, v2 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v2;
}

uint64_t type metadata accessor for PopToRootAction()
{
  result = qword_4ED650;
  if (!qword_4ED650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PresentNowPlayingAction.__allocating_init()()
{
  v0 = sub_3E5FC4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3EC1F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = swift_allocObject();
  v12 = sub_3EC634();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v13 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v15 = v14;
  (*(v1 + 8))(v3, v0);
  *(v11 + 16) = v13;
  *(v11 + 24) = v15;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = 32;
  (*(v5 + 32))(v11 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v7, v4);
  sub_14A10(v10, v11 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v11;
}

uint64_t PresentNowPlayingAction.init()()
{
  v1 = v0;
  v2 = sub_3E5FC4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3EC1F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_3EC634();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v14 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v16 = v15;
  (*(v3 + 8))(v5, v2);
  *(v1 + 16) = v14;
  *(v1 + 24) = v16;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 32;
  (*(v7 + 32))(v1 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v9, v6);
  sub_14A10(v12, v1 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v1;
}

uint64_t type metadata accessor for PresentNowPlayingAction()
{
  result = qword_4ED740;
  if (!qword_4ED740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RefreshRecommendationsAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ShelfKit28RefreshRecommendationsAction_actionMetrics;
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RefreshRecommendationsAction.__allocating_init(actionMetrics:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC8ShelfKit28RefreshRecommendationsAction_actionMetrics;
  v4 = sub_3EC1F4();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t RefreshRecommendationsAction.init(actionMetrics:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit28RefreshRecommendationsAction_actionMetrics;
  v4 = sub_3EC1F4();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t RefreshRecommendationsAction.deinit()
{
  v1 = OBJC_IVAR____TtC8ShelfKit28RefreshRecommendationsAction_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t RefreshRecommendationsAction.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8ShelfKit28RefreshRecommendationsAction_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_746E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8ShelfKit28RefreshRecommendationsAction_actionMetrics;
  v5 = sub_3EC1F4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t type metadata accessor for RefreshRecommendationsAction()
{
  result = qword_4ED820;
  if (!qword_4ED820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_747B8()
{
  result = sub_3EC1F4();
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

uint64_t ResumeOAuthAction.redirectURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ShelfKit17ResumeOAuthAction_redirectURL;
  v4 = sub_3E5DC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ResumeOAuthAction.__allocating_init(redirectURL:)(uint64_t a1)
{
  v2 = sub_3E5FC4();
  v22 = *(v2 - 8);
  v23 = v2;
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_3EC1F4();
  v5 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtC8ShelfKit17ResumeOAuthAction_redirectURL;
  v13 = sub_3E5DC4();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v11 + v12, a1, v13);
  v15 = sub_3EC634();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v16 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v18 = v17;
  (*(v14 + 8))(a1, v13);
  (*(v22 + 8))(v4, v23);
  *(v11 + 16) = v16;
  *(v11 + 24) = v18;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = 32;
  (*(v5 + 32))(v11 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v7, v21);
  sub_14A10(v10, v11 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v11;
}

uint64_t ResumeOAuthAction.init(redirectURL:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_3E5FC4();
  v23 = *(v4 - 8);
  v24 = v4;
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_3EC1F4();
  v7 = *(v22 - 8);
  __chkstk_darwin(v22);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v10 - 8);
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC8ShelfKit17ResumeOAuthAction_redirectURL;
  v14 = sub_3E5DC4();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v2 + v13, a1, v14);
  v16 = sub_3EC634();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v17 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v19 = v18;
  (*(v15 + 8))(a1, v14);
  (*(v23 + 8))(v6, v24);
  *(v2 + 16) = v17;
  *(v2 + 24) = v19;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 32;
  (*(v7 + 32))(v2 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v9, v22);
  sub_14A10(v12, v2 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v2;
}

uint64_t sub_74F0C()
{
  v1 = OBJC_IVAR____TtC8ShelfKit17ResumeOAuthAction_redirectURL;
  v2 = sub_3E5DC4();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t ResumeOAuthAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  v3 = OBJC_IVAR____TtC8ShelfKit17ResumeOAuthAction_redirectURL;
  v4 = sub_3E5DC4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t ResumeOAuthAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  v3 = OBJC_IVAR____TtC8ShelfKit17ResumeOAuthAction_redirectURL;
  v4 = sub_3E5DC4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ResumeOAuthAction()
{
  result = qword_4ED8D0;
  if (!qword_4ED8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_75194()
{
  result = sub_3E5DC4();
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

uint64_t ShareSheetAction.actionMetrics.setter(uint64_t a1)
{
  v3 = sub_3EC1F4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ShareSheetAction.shareSheetContentSource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShareSheetAction(0) + 20);

  return sub_7533C(v3, a1);
}

uint64_t sub_7533C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareSheetContentSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ShareSheetAction.init(shareSheetContentSource:referenceTime:playerTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for ShareSheetAction(0);
  sub_7533C(a1, a6 + v12[5]);
  v13 = a6 + v12[6];
  *v13 = a2;
  *(v13 + 8) = a3 & 1;
  v14 = a6 + v12[7];
  *v14 = a4;
  *(v14 + 8) = a5 & 1;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();

  return sub_754C4(a1);
}

uint64_t sub_754C4(uint64_t a1)
{
  v2 = type metadata accessor for ShareSheetContentSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_75534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3EC1F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for ShareSheetContentSource(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_75638(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3EC1F4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for ShareSheetContentSource(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_75734()
{
  sub_3EC1F4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ShareSheetContentSource(319);
    if (v1 <= 0x3F)
    {
      sub_757D0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_757D0()
{
  if (!qword_4ED9F8)
  {
    v0 = sub_3EE0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_4ED9F8);
    }
  }
}

void sub_75820()
{
  sub_758CC(319, &qword_4EDAB0, type metadata accessor for EpisodeOffer);
  if (v0 <= 0x3F)
  {
    sub_758CC(319, &unk_4EDAB8, sub_75918);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_758CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_75918()
{
  result = qword_4F1C30;
  if (!qword_4F1C30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4F1C30);
  }

  return result;
}

uint64_t SheetAction.__allocating_init(title:sheetTitle:message:actions:cancellable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v36 = a8;
  v34 = a5;
  v35 = a6;
  v33 = a4;
  v37 = a1;
  v38 = a2;
  v10 = sub_3E5FC4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_3EC1F4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v18 - 8);
  v20 = &v33 - v19;
  v21 = swift_allocObject();
  *(v21 + OBJC_IVAR____TtC8ShelfKit11SheetAction_actions) = a7;
  v22 = (v21 + OBJC_IVAR____TtC8ShelfKit11SheetAction_sheetTitle);
  v23 = v33;
  v24 = v34;
  *v22 = a3;
  v22[1] = v23;
  v25 = (v21 + OBJC_IVAR____TtC8ShelfKit11SheetAction_message);
  v26 = v35;
  *v25 = v24;
  v25[1] = v26;
  *(v21 + OBJC_IVAR____TtC8ShelfKit11SheetAction_isCancelable) = v36;
  v27 = sub_3EC634();
  (*(*(v27 - 8) + 56))(v20, 1, 1, v27);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v28 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v30 = v29;
  (*(v11 + 8))(v13, v10);
  *(v21 + 16) = v28;
  *(v21 + 24) = v30;
  v31 = v38;
  *(v21 + 32) = v37;
  *(v21 + 40) = v31;
  *(v21 + 48) = 32;
  (*(v15 + 32))(v21 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v17, v14);
  sub_14A10(v20, v21 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v21;
}

uint64_t SheetAction.init(title:sheetTitle:message:actions:cancellable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = v8;
  v37 = a8;
  v35 = a5;
  v36 = a6;
  v34 = a4;
  v38 = a1;
  v39 = a2;
  v12 = sub_3E5FC4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_3EC1F4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v20 - 8);
  v22 = &v34 - v21;
  *(v9 + OBJC_IVAR____TtC8ShelfKit11SheetAction_actions) = a7;
  v23 = (v9 + OBJC_IVAR____TtC8ShelfKit11SheetAction_sheetTitle);
  v24 = v34;
  v25 = v35;
  *v23 = a3;
  v23[1] = v24;
  v26 = (v9 + OBJC_IVAR____TtC8ShelfKit11SheetAction_message);
  v27 = v36;
  *v26 = v25;
  v26[1] = v27;
  *(v9 + OBJC_IVAR____TtC8ShelfKit11SheetAction_isCancelable) = v37;
  v28 = sub_3EC634();
  (*(*(v28 - 8) + 56))(v22, 1, 1, v28);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v29 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v31 = v30;
  (*(v13 + 8))(v15, v12);
  *(v9 + 16) = v29;
  *(v9 + 24) = v31;
  v32 = v39;
  *(v9 + 32) = v38;
  *(v9 + 40) = v32;
  *(v9 + 48) = 32;
  (*(v17 + 32))(v9 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v19, v16);
  sub_14A10(v22, v9 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v9;
}

uint64_t SheetAction.sheetTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit11SheetAction_sheetTitle);

  return v1;
}

uint64_t SheetAction.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit11SheetAction_message);

  return v1;
}

uint64_t sub_75FF4()
{
}

uint64_t SheetAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

  return v0;
}

uint64_t SheetAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SheetAction()
{
  result = qword_4EDB10;
  if (!qword_4EDB10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SuggestLessInterestAction()
{
  result = qword_4EDC40;
  if (!qword_4EDC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SuggestLessInterestAction.init(adamID:force:actionMetrics:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_3EC1F4();
  (*(*(v8 - 8) + 32))(a4, a3, v8);
  result = type metadata accessor for SuggestLessInterestAction();
  *(a4 + *(result + 24)) = a2;
  *(a4 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_7644C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3EC1F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_7652C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_3EC1F4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_765E4()
{
  result = sub_3EC1F4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t TabChangeAction.__allocating_init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, char a6, char a7, int a8, uint64_t a9)
{
  v34 = a8;
  v32 = a1;
  v33 = a2;
  v14 = sub_3E5FC4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v19 = v18;
  *(v18 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_navigationTab) = a3;
  v20 = _swiftEmptyArrayStorage;
  if (a4)
  {
    v20 = a4;
  }

  *(v18 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_actions) = v20;
  *(v18 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_popToRoot) = a5;
  *(v18 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_userInitiated) = a6;
  *(v18 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_suppressMetrics) = a7;
  v21 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v22 = sub_3EC1F4();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v19 + v21, a9, v22);
  v24 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
  v25 = sub_3EC634();
  (*(*(v25 - 8) + 56))(v19 + v24, 1, 1, v25);
  sub_29EA4(a3);
  sub_3E5FB4();
  v26 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v28 = v27;
  sub_29EB8(a3);
  (*(v23 + 8))(a9, v22);
  (*(v15 + 8))(v17, v14);
  *(v19 + 16) = v26;
  *(v19 + 24) = v28;
  v29 = v33;
  *(v19 + 32) = v32;
  *(v19 + 40) = v29;
  *(v19 + 48) = v34;
  return v19;
}

void *sub_768C0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_3EE5A4();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v16 = _swiftEmptyArrayStorage;
  result = sub_41A94(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = sub_3EE3F4();
        v16 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_41A94((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for Action();
        v15 = sub_7A228(&qword_4EDDF8, type metadata accessor for Action);
        *&v13 = v6;
        v3[2] = v8 + 1;
        sub_1D4F0(&v13, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = v3[2];
        v12 = v3[3];

        if (v11 >= v12 >> 1)
        {
          sub_41A94((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for Action();
        v15 = sub_7A228(&qword_4EDDF8, type metadata accessor for Action);
        *&v13 = v10;
        v3[2] = v11 + 1;
        sub_1D4F0(&v13, &v3[5 * v11 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_76AE0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_3EE5A4();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_41B68(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_3EE3F4();
        sub_132A0();
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_41B68((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_1FB90(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_132A0();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_41B68((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_1FB90(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_76CAC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_3EE5A4();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v16 = _swiftEmptyArrayStorage;
  result = sub_41C0C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = sub_3EE3F4();
        v16 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_41C0C((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for LibraryEpisodeLockup();
        v15 = sub_7A228(&qword_4EDDC0, type metadata accessor for LibraryEpisodeLockup);
        *&v13 = v6;
        v3[2] = v8 + 1;
        sub_1D4F0(&v13, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = v3[2];
        v12 = v3[3];

        if (v11 >= v12 >> 1)
        {
          sub_41C0C((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for LibraryEpisodeLockup();
        v15 = sub_7A228(&qword_4EDDC0, type metadata accessor for LibraryEpisodeLockup);
        *&v13 = v10;
        v3[2] = v11 + 1;
        sub_1D4F0(&v13, &v3[5 * v11 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_76ECC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_3EE5A4();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v16 = _swiftEmptyArrayStorage;
  result = sub_41C0C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = sub_3EE3F4();
        v16 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_41C0C((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for LegacyChannelLockup();
        v15 = sub_7A228(&qword_4EDDF0, type metadata accessor for LegacyChannelLockup);
        *&v13 = v6;
        v3[2] = v8 + 1;
        sub_1D4F0(&v13, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = v3[2];
        v12 = v3[3];

        if (v11 >= v12 >> 1)
        {
          sub_41C0C((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for LegacyChannelLockup();
        v15 = sub_7A228(&qword_4EDDF0, type metadata accessor for LegacyChannelLockup);
        *&v13 = v10;
        v3[2] = v11 + 1;
        sub_1D4F0(&v13, &v3[5 * v11 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_770EC(uint64_t a1)
{
  v2 = type metadata accessor for Information();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_41C0C(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_7A160(v8, v5, type metadata accessor for Information);
      v17 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_41C0C((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_7A228(&qword_4EDDE8, type metadata accessor for Information);
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v14);
      sub_7A160(v5, boxed_opaque_existential_0Tm, type metadata accessor for Information);
      v7[2] = v11 + 1;
      sub_1D4F0(&v14, &v7[5 * v11 + 4]);
      sub_7A1C8(v5, type metadata accessor for Information);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_772E0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_3EE5A4();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v16 = _swiftEmptyArrayStorage;
  result = sub_41C0C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = sub_3EE3F4();
        v16 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_41C0C((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for LibraryShowLockup();
        v15 = sub_7A228(&qword_4EDDD0, type metadata accessor for LibraryShowLockup);
        *&v13 = v6;
        v3[2] = v8 + 1;
        sub_1D4F0(&v13, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = v3[2];
        v12 = v3[3];

        if (v11 >= v12 >> 1)
        {
          sub_41C0C((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for LibraryShowLockup();
        v15 = sub_7A228(&qword_4EDDD0, type metadata accessor for LibraryShowLockup);
        *&v13 = v10;
        v3[2] = v11 + 1;
        sub_1D4F0(&v13, &v3[5 * v11 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_77500(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_3EE5A4();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v16 = _swiftEmptyArrayStorage;
  result = sub_41C0C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = sub_3EE3F4();
        v16 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_41C0C((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for LegacyLockup();
        v15 = sub_7A228(&qword_4EDDD8, type metadata accessor for LegacyLockup);
        *&v13 = v6;
        v3[2] = v8 + 1;
        sub_1D4F0(&v13, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = v3[2];
        v12 = v3[3];

        if (v11 >= v12 >> 1)
        {
          sub_41C0C((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for LegacyLockup();
        v15 = sub_7A228(&qword_4EDDD8, type metadata accessor for LegacyLockup);
        *&v13 = v10;
        v3[2] = v11 + 1;
        sub_1D4F0(&v13, &v3[5 * v11 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_77720(uint64_t a1)
{
  v2 = type metadata accessor for CategoryListItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_41C0C(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_7A160(v8, v5, type metadata accessor for CategoryListItem);
      v17 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_41C0C((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_7A228(&qword_4EDDE0, type metadata accessor for CategoryListItem);
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v14);
      sub_7A160(v5, boxed_opaque_existential_0Tm, type metadata accessor for CategoryListItem);
      v7[2] = v11 + 1;
      sub_1D4F0(&v14, &v7[5 * v11 + 4]);
      sub_7A1C8(v5, type metadata accessor for CategoryListItem);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_77914(uint64_t a1)
{
  v2 = type metadata accessor for Link();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_41C0C(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_7A160(v8, v5, type metadata accessor for Link);
      v17 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_41C0C((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_7A228(&qword_4EDDC8, type metadata accessor for Link);
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v14);
      sub_7A160(v5, boxed_opaque_existential_0Tm, type metadata accessor for Link);
      v7[2] = v11 + 1;
      sub_1D4F0(&v14, &v7[5 * v11 + 4]);
      sub_7A1C8(v5, type metadata accessor for Link);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t NavigationTab.init(intValue:)(uint64_t a1)
{
  if (qword_4E8910 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = off_4EDC80;
  if (!*(&dword_10 + off_4EDC80))
  {
    return 19;
  }

  v2 = sub_5544C(a1);
  if ((v3 & 1) == 0)
  {
    return 19;
  }

  v4 = *(*&stru_20.segname[v1 + 16] + 8 * v2);
  sub_29EA4(v4);
  return v4;
}

uint64_t NavigationTab.metricsPageContext.getter(uint64_t a1)
{
  v1 = a1 - 1;
  result = 0;
  switch(v1)
  {
    case 0:
      result = sub_3E8724();
      break;
    case 1:
      result = sub_3E8784();
      break;
    case 2:
      result = sub_3E86E4();
      break;
    case 3:
      result = sub_3E86F4();
      break;
    case 4:
    case 5:
      result = sub_3E87A4();
      break;
    case 6:
      result = sub_3E8764();
      break;
    case 7:
      result = sub_3E8744();
      break;
    case 8:
      result = sub_3E8734();
      break;
    case 9:
    case 10:
    case 12:
    case 13:
    case 17:
      return result;
    case 11:
      result = sub_3E8754();
      break;
    case 14:
      result = sub_3E8794();
      break;
    case 15:
      result = sub_3E8704();
      break;
    case 16:
      result = sub_3E8714();
      break;
    default:
      result = sub_3E8774();
      break;
  }

  return result;
}

uint64_t NavigationTab.metricsTargetID.getter(uint64_t a1)
{
  v1 = a1 - 1;
  result = 0;
  switch(v1)
  {
    case 0:
      result = sub_3E8154();
      break;
    case 1:
      result = sub_3E81E4();
      break;
    case 2:
      result = sub_3E80B4();
      break;
    case 3:
      result = sub_3E80C4();
      break;
    case 4:
    case 5:
      result = sub_3E81F4();
      break;
    case 6:
      result = sub_3E81C4();
      break;
    case 7:
      result = sub_3E8184();
      break;
    case 8:
      result = sub_3E8164();
      break;
    case 9:
    case 10:
    case 12:
    case 13:
    case 17:
      return result;
    case 11:
      result = sub_3E81A4();
      break;
    case 14:
      result = sub_3E8144();
      break;
    case 15:
      result = sub_3E80F4();
      break;
    case 16:
      result = sub_3E8104();
      break;
    default:
      result = sub_3E81D4();
      break;
  }

  return result;
}

uint64_t NavigationTab.intValue.getter(uint64_t a1)
{
  v1 = a1 - 1;
  result = 1;
  switch(v1)
  {
    case 0:
      result = 7;
      break;
    case 1:
      result = 8;
      break;
    case 2:
      result = 9;
      break;
    case 3:
      result = 10;
      break;
    case 4:
      result = 11;
      break;
    case 5:
      result = 12;
      break;
    case 6:
      result = 5;
      break;
    case 7:
      result = 4;
      break;
    case 8:
      result = 6;
      break;
    case 9:
      result = 2;
      break;
    case 10:
      return result;
    case 11:
      result = 3;
      break;
    case 12:
      result = sub_3E5774();
      break;
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
      result = a1;
      break;
    default:
      result = 13;
      break;
  }

  return result;
}

int *sub_77EE8()
{
  result = sub_77F08();
  off_4EDC80 = result;
  return result;
}

void *sub_77F08()
{
  v8 = _swiftEmptyArrayStorage;
  sub_41B48(0, 19, 0);
  v0 = &stru_20;
  v1 = _swiftEmptyArrayStorage;
  do
  {
    v2 = *(&off_4B0470 + v0);
    v3 = 1;
    switch(v2)
    {
      case 1:
        v3 = 7;
        break;
      case 2:
        v3 = 8;
        break;
      case 3:
        v3 = 9;
        break;
      case 4:
        v3 = 10;
        break;
      case 5:
        v3 = 11;
        break;
      case 6:
        v3 = 12;
        break;
      case 7:
        v3 = 5;
        break;
      case 8:
        v3 = 4;
        break;
      case 9:
        v3 = 6;
        break;
      case 10:
        v3 = 2;
        break;
      case 11:
        break;
      case 12:
        v3 = 3;
        break;
      case 13:
        v3 = sub_3E5774();
        break;
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
        v3 = *(&off_4B0470 + v0);
        break;
      default:
        v3 = 13;
        break;
    }

    sub_29EA4(v2);
    v8 = v1;
    v5 = v1[2];
    v4 = v1[3];
    if (v5 >= v4 >> 1)
    {
      sub_41B48((v4 > 1), v5 + 1, 1);
      v1 = v8;
    }

    v1[2] = v5 + 1;
    v6 = &v1[2 * v5];
    v6[4] = v3;
    v6[5] = v2;
    v0 += 8;
  }

  while (v0 != 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBB00);
  v8 = sub_3EE5F4();
  sub_7928C(v1, 1, &v8);
  return v8;
}

void sub_78118()
{
  v0 = [objc_allocWithZone(UISearchTab) initWithViewControllerProvider:0];
  v1 = [v0 identifier];

  v2 = sub_3ED244();
  v4 = v3;

  qword_4EDC88 = v2;
  unk_4EDC90 = v4;
}

uint64_t NavigationTab.station.getter(uint64_t a1)
{
  if ((a1 - 1) >= 0x12)
  {
  }

  else
  {
    return 0;
  }
}

unint64_t sub_781DC(uint64_t a1)
{
  v1 = a1 - 1;
  result = 0x73776F6873;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 0x736C656E6E616863;
      break;
    case 2:
      result = 0x69726F6765746163;
      break;
    case 3:
      result = 0x64616F6C6E776F64;
      break;
    case 4:
      result = 0x7472616843706F74;
      break;
    case 5:
      result = 0x6F546E7265646F6DLL;
      break;
    case 6:
      result = 0x7972617262696CLL;
      break;
    case 7:
      result = 0x6E657473696CLL;
      break;
    case 8:
      result = 0x676F6C61746163;
      break;
    case 9:
      result = 0x7265666E69;
      break;
    case 10:
      result = 0x64657463656C6573;
      break;
    case 11:
      result = 0x686372616573;
      break;
    case 12:
      result = 0x676E6964616F6CLL;
      break;
    case 13:
      result = 0x79616C50696E696DLL;
      break;
    case 14:
      result = 0x6B72616D6B6F6F62;
      break;
    case 15:
      result = 0x704574736574616CLL;
      break;
    case 16:
      result = 0x796C746E65636572;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    default:
      result = 0x6E6F6974617473;
      break;
  }

  return result;
}

uint64_t NavigationTab.init(deserializing:)(uint64_t a1)
{
  v2 = sub_3EBDC4();
  if (v3)
  {
    v4 = _s8ShelfKit13NavigationTabO11stringValueACSS_tcfC_0(v2, v3);
  }

  else
  {
    v4 = 11;
  }

  v5 = sub_3EBDF4();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

void NavigationTab.hash(into:)(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 1:
      v2 = 0;
      goto LABEL_22;
    case 2:
      v2 = 1;
      goto LABEL_22;
    case 3:
      v2 = 2;
      goto LABEL_22;
    case 4:
      v2 = 3;
      goto LABEL_22;
    case 5:
      v2 = 4;
      goto LABEL_22;
    case 6:
      v2 = 5;
      goto LABEL_22;
    case 7:
      v2 = 7;
      goto LABEL_22;
    case 8:
      v2 = 8;
      goto LABEL_22;
    case 9:
      v2 = 9;
      goto LABEL_22;
    case 10:
      v2 = 10;
      goto LABEL_22;
    case 11:
      v2 = 11;
      goto LABEL_22;
    case 12:
      v2 = 12;
      goto LABEL_22;
    case 13:
      v2 = 13;
      goto LABEL_22;
    case 14:
      v2 = 14;
      goto LABEL_22;
    case 15:
      v2 = 15;
      goto LABEL_22;
    case 16:
      v2 = 16;
      goto LABEL_22;
    case 17:
      v2 = 17;
      goto LABEL_22;
    case 18:
      v2 = 18;
LABEL_22:
      sub_3EE964(v2);
      break;
    default:
      sub_3EE964(6uLL);
      if (a2)
      {
        sub_3EE974(1u);
        sub_3ED394();
        sub_3ED394();
        sub_3EE964(*(a2 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount));
        sub_3EE994(*(a2 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount));
      }

      else
      {
        sub_3EE974(0);
      }

      break;
  }
}

Swift::Int NavigationTab.hashValue.getter(uint64_t a1)
{
  sub_3EE954();
  NavigationTab.hash(into:)(v3, a1);
  return sub_3EE9A4();
}

Swift::Int sub_78694()
{
  v1 = *v0;
  sub_3EE954();
  NavigationTab.hash(into:)(v3, v1);
  return sub_3EE9A4();
}

Swift::Int sub_786E4()
{
  v1 = *v0;
  sub_3EE954();
  NavigationTab.hash(into:)(v3, v1);
  return sub_3EE9A4();
}

uint64_t TabChangeAction.navigationTab.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_navigationTab);
  sub_29EA4(v1);
  return v1;
}

uint64_t TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, int a6, int a7, int a8, uint64_t a9)
{
  v10 = v9;
  v39 = a8;
  v33 = a6;
  v34 = a7;
  v37 = a1;
  v38 = a2;
  v14 = sub_3E5FC4();
  v35 = *(v14 - 8);
  v36 = v14;
  __chkstk_darwin(v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v17 - 8);
  v19 = &v33 - v18;
  v20 = sub_3EC1F4();
  v21 = *(v20 - 8);
  v22.n128_f64[0] = __chkstk_darwin(v20);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v10 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_navigationTab) = a3;
  v25 = _swiftEmptyArrayStorage;
  if (a4)
  {
    v25 = a4;
  }

  *(v10 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_actions) = v25;
  *(v10 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_popToRoot) = a5;
  v26 = v34;
  *(v10 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_userInitiated) = v33;
  *(v10 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_suppressMetrics) = v26;
  (*(v21 + 16))(v24, a9, v20, v22);
  v27 = sub_3EC634();
  (*(*(v27 - 8) + 56))(v19, 1, 1, v27);
  sub_29EA4(a3);
  sub_3E5FB4();
  v28 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v30 = v29;
  sub_29EB8(a3);
  (*(v21 + 8))(a9, v20);
  (*(v35 + 8))(v16, v36);
  *(v10 + 16) = v28;
  *(v10 + 24) = v30;
  v31 = v38;
  *(v10 + 32) = v37;
  *(v10 + 40) = v31;
  *(v10 + 48) = v39;
  (*(v21 + 32))(v10 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v24, v20);
  sub_14A10(v19, v10 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v10;
}

uint64_t TabChangeAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v58 = a2;
  v3 = sub_3EBF94();
  v55 = *(v3 - 8);
  v56 = v3;
  __chkstk_darwin(v3);
  v52 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDC98);
  __chkstk_darwin(v5 - 8);
  v7 = &v48 - v6;
  v8 = sub_3EBDF4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v49 = &v48 - v12;
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  __chkstk_darwin(v16);
  v18 = &v48 - v17;
  v19 = sub_3ECED4();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  sub_3EBE04();
  sub_3EBD54();
  v50 = v9;
  v23 = *(v9 + 8);
  v48 = v8;
  v23(v18, v8);
  v24 = v23;
  if ((*(v20 + 48))(v7, 1, v19) == 1)
  {
    sub_FCF8(v7, &qword_4EDC98);
    v25 = _swiftEmptyArrayStorage;
  }

  else
  {
    (*(v20 + 32))(v22, v7, v19);
    v26 = type metadata accessor for Action();
    __chkstk_darwin(v26);
    v27 = v58;
    *(&v48 - 2) = v28;
    *(&v48 - 1) = v27;
    v29 = v57;
    v30 = sub_3ECE94();
    v57 = v29;
    v25 = sub_768C0(v30);

    (*(v20 + 8))(v22, v19);
  }

  v32 = v53;
  v31 = v54;
  *(v53 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_actions) = v25;
  sub_3EBE04();
  v33 = sub_3EBDC4();
  v35 = v55;
  if (v34)
  {
    v36 = _s8ShelfKit13NavigationTabO11stringValueACSS_tcfC_0(v33, v34);
  }

  else
  {
    v36 = 11;
  }

  v37 = v48;
  v38 = v24;
  v24(v15, v48);
  *(v32 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_navigationTab) = v36;
  v39 = v49;
  sub_3EBE04();
  v40 = sub_3EBD24();
  v41 = v39;
  v42 = v37;
  v38(v41, v37);
  *(v32 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_popToRoot) = v40 & 1;
  *(v32 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_userInitiated) = 0;
  *(v32 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_suppressMetrics) = 0;
  v43 = v51;
  (*(v50 + 16))(v51, v31, v37);
  v44 = v52;
  v45 = v56;
  (*(v35 + 16))(v52, v58, v56);
  v46 = Action.init(deserializing:using:)(v43, v44);
  v38(v31, v42);
  (*(v35 + 8))(v58, v45);
  return v46;
}

uint64_t sub_79088()
{
  sub_29EB8(*(v0 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_navigationTab));
}

uint64_t TabChangeAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  sub_29EB8(*(v0 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_navigationTab));

  return v0;
}

uint64_t TabChangeAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  v3 = *(v0 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_navigationTab);

  sub_29EB8(v3);

  return swift_deallocClassInstance();
}

uint64_t sub_7928C(void *a1, char a2, void *a3)
{
  v40 = a1[2];
  if (!v40)
  {
  }

  v6 = a1[4];
  v5 = a1[5];
  v7 = *a3;
  v8 = sub_5544C(v6);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = v8;
  v14 = v9;
  v15 = v7[3];
  sub_29EA4(v5);
  if (v15 >= v12)
  {
    if (a2)
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_58E3C();
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    swift_allocError();
    swift_willThrow();

    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_29EB8(v5);
    }

    goto LABEL_29;
  }

  sub_5610C(v12, a2 & 1);
  v16 = sub_5544C(v6);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_28:
    sub_3EE894();
    __break(1u);
LABEL_29:
    sub_3EE3C4(30);
    v42._object = 0x80000000004259F0;
    v42._countAndFlagsBits = 0xD00000000000001BLL;
    sub_3ED3D4(v42);
    sub_3EE554();
    v43._countAndFlagsBits = 39;
    v43._object = 0xE100000000000000;
    sub_3ED3D4(v43);
    result = sub_3EE574();
    __break(1u);
    return result;
  }

  v13 = v16;
  if (v14)
  {
    goto LABEL_9;
  }

LABEL_12:
  v19 = *a3;
  *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
  *(v19[6] + 8 * v13) = v6;
  *(v19[7] + 8 * v13) = v5;
  v20 = v19[2];
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v19[2] = v22;
  if (v40 != 1)
  {
    v23 = a1 + 7;
    v24 = 1;
    while (v24 < a1[2])
    {
      v25 = *(v23 - 1);
      v5 = *v23;
      v26 = *a3;
      v27 = sub_5544C(v25);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v31 = v29 + v30;
      if (__OFADD__(v29, v30))
      {
        goto LABEL_25;
      }

      v32 = v27;
      v33 = v28;
      v34 = v26[3];
      sub_29EA4(v5);
      if (v34 < v31)
      {
        sub_5610C(v31, 1);
        v35 = sub_5544C(v25);
        if ((v33 & 1) != (v36 & 1))
        {
          goto LABEL_28;
        }

        v32 = v35;
      }

      if (v33)
      {
        goto LABEL_9;
      }

      v37 = *a3;
      *(*a3 + 8 * (v32 >> 6) + 64) |= 1 << v32;
      *(v37[6] + 8 * v32) = v25;
      *(v37[7] + 8 * v32) = v5;
      v38 = v37[2];
      v21 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v21)
      {
        goto LABEL_26;
      }

      ++v24;
      v37[2] = v39;
      v23 += 2;
      if (v40 == v24)
      {
      }
    }

    goto LABEL_27;
  }
}

BOOL _s8ShelfKit13NavigationTabO2eeoiySbAC_ACtFZ_0(unint64_t a1, int *a2)
{
  switch(a1)
  {
    case 1uLL:
      if (a2 != (&dword_0 + 1))
      {
        goto LABEL_42;
      }

      result = 1;
      break;
    case 2uLL:
      if (a2 != (&dword_0 + 2))
      {
        goto LABEL_42;
      }

      result = 1;
      break;
    case 3uLL:
      if (a2 != (&dword_0 + 3))
      {
        goto LABEL_42;
      }

      result = 1;
      break;
    case 4uLL:
      if (a2 != &dword_4)
      {
        goto LABEL_42;
      }

      result = 1;
      break;
    case 5uLL:
      if (a2 != (&dword_4 + 1))
      {
        goto LABEL_42;
      }

      result = 1;
      break;
    case 6uLL:
      if (a2 != (&dword_4 + 2))
      {
        goto LABEL_42;
      }

      result = 1;
      break;
    case 7uLL:
      if (a2 != (&dword_4 + 3))
      {
        goto LABEL_42;
      }

      result = 1;
      break;
    case 8uLL:
      if (a2 != &dword_8)
      {
        goto LABEL_42;
      }

      result = 1;
      break;
    case 9uLL:
      if (a2 != (&dword_8 + 1))
      {
        goto LABEL_42;
      }

      result = 1;
      break;
    case 0xAuLL:
      if (a2 != (&dword_8 + 2))
      {
        goto LABEL_42;
      }

      result = 1;
      break;
    case 0xBuLL:
      if (a2 != (&dword_8 + 3))
      {
        goto LABEL_42;
      }

      result = 1;
      break;
    case 0xCuLL:
      if (a2 != &dword_C)
      {
        goto LABEL_42;
      }

      result = 1;
      break;
    case 0xDuLL:
      if (a2 != (&dword_C + 1))
      {
        goto LABEL_42;
      }

      result = 1;
      break;
    case 0xEuLL:
      if (a2 != (&dword_C + 2))
      {
        goto LABEL_42;
      }

      result = 1;
      break;
    case 0xFuLL:
      if (a2 != (&dword_C + 3))
      {
        goto LABEL_42;
      }

      result = 1;
      break;
    case 0x10uLL:
      if (a2 != &dword_10)
      {
        goto LABEL_42;
      }

      result = 1;
      break;
    case 0x11uLL:
      if (a2 != (&dword_10 + 1))
      {
        goto LABEL_42;
      }

      result = 1;
      break;
    case 0x12uLL:
      if (a2 != (&dword_10 + 2))
      {
        goto LABEL_42;
      }

      result = 1;
      break;
    default:
      if (a2 - 1 < 0x12)
      {
LABEL_42:
        result = 0;
      }

      else
      {
        result = (a1 | a2) == 0;
        if (a1)
        {
          if (a2)
          {
            result = _s8ShelfKit13StationDetailC2eeoiySbAC_ACtFZ_0(a1, a2);
          }
        }
      }

      break;
  }

  return result;
}

uint64_t _s8ShelfKit13NavigationTabO11stringValueACSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73776F6873 && a2 == 0xE500000000000000;
  if (v4 || (sub_3EE804() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736C656E6E616863 && a2 == 0xE800000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365 || (sub_3EE804() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEA00000000006465 || (sub_3EE804() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7472616843706F74 && a2 == 0xE900000000000073 || (sub_3EE804() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F546E7265646F6DLL && a2 == 0xEF73747261684370 || (sub_3EE804() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F6974617473 && a2 == 0xE700000000000000 || (sub_3EE804() & 1) != 0 || a1 == 0xD000000000000020 && 0x8000000000425980 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972617262696CLL && a2 == 0xE700000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E657473696CLL && a2 == 0xE600000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x676F6C61746163 && a2 == 0xE700000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7265666E69 && a2 == 0xE500000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xE800000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 11;
  }

  else
  {
    if (a1 == 0x686372616573 && a2 == 0xE600000000000000 || (sub_3EE804() & 1) != 0)
    {
      goto LABEL_62;
    }

    if (qword_4E8918 != -1)
    {
      swift_once();
    }

    if (qword_4EDC88 == a1 && unk_4EDC90 == a2 || (sub_3EE804() & 1) != 0)
    {
LABEL_62:

      return 12;
    }

    else if (a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000 || (sub_3EE804() & 1) != 0)
    {

      return 13;
    }

    else if (a1 == 0x79616C50696E696DLL && a2 == 0xEA00000000007265 || (sub_3EE804() & 1) != 0)
    {

      return 14;
    }

    else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xE900000000000073 || (sub_3EE804() & 1) != 0)
    {

      return 15;
    }

    else if (a1 == 0x704574736574616CLL && a2 == 0xEE007365646F7369 || (sub_3EE804() & 1) != 0)
    {

      return 16;
    }

    else if (a1 == 0x796C746E65636572 && a2 == 0xEF64657461647055 || (sub_3EE804() & 1) != 0)
    {

      return 17;
    }

    else if (a1 == 0xD000000000000014 && 0x80000000004258E0 == a2)
    {

      return 18;
    }

    else
    {
      v6 = sub_3EE804();

      if (v6)
      {
        return 18;
      }

      else
      {
        return 11;
      }
    }
  }
}

unint64_t sub_79E6C()
{
  result = qword_4EDCA0;
  if (!qword_4EDCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EDCA0);
  }

  return result;
}

unint64_t sub_79EC4()
{
  result = qword_4EDCA8;
  if (!qword_4EDCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4EDCB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EDCA8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8ShelfKit13NavigationTabO(uint64_t *a1)
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

uint64_t sub_79F88(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFEC && *(a1 + 8))
  {
    return (*a1 + 2147483629);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 0x13)
  {
    return (v3 - 18);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_79FE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFED)
  {
    *result = 0;
    *result = a2 - 2147483629;
    if (a3 >= 0x7FFFFFED)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFED)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 18;
    }
  }

  return result;
}

void *sub_7A038(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t type metadata accessor for TabChangeAction()
{
  result = qword_4EDCE0;
  if (!qword_4EDCE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7A160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_7A1C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_7A228(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t GroupedSearchResultsPage.Result.init(id:name:page:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t TextFieldAlertAction.CancelButton.init(title:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_3EC1F4();
  __chkstk_darwin(v8 - 8);
  if (!a2)
  {
    v9 = [objc_opt_self() mainBundle];
    v13._countAndFlagsBits = 0xE000000000000000;
    v19._countAndFlagsBits = 0x435F4E4F49544341;
    v19._object = 0xED00004C45434E41;
    v20.value._countAndFlagsBits = a1;
    v20.value._object = 0;
    v10.super.isa = v9;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    a1 = sub_3E5A74(v19, v20, v10, v21, v13);
    a2 = v11;
  }

  *a4 = a1;
  a4[1] = a2;
  sub_7A45C(a3, &v14);
  if (v15)
  {
    sub_FCF8(a3, &qword_4EDE00);
    sub_1D4F0(&v14, &v16);
  }

  else
  {
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    v17 = sub_3EBEC4();
    v18 = &protocol witness table for EmptyAction;
    __swift_allocate_boxed_opaque_existential_0Tm(&v16);
    sub_3EBEB4();
    sub_FCF8(a3, &qword_4EDE00);
    if (v15)
    {
      sub_FCF8(&v14, &qword_4EDE00);
    }
  }

  return sub_1D4F0(&v16, (a4 + 2));
}

uint64_t sub_7A45C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDE00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TextFieldAlertAction.CancelButton.init(title:closure:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = sub_3EC1F4();
  __chkstk_darwin(v10 - 8);
  if (a3)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = a4;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_7A678;
    *(v12 + 24) = v11;
    sub_7A6C8(a3);

    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    *(&v15 + 1) = sub_3EC224();
    v16 = &protocol witness table for ClosureAction;
    __swift_allocate_boxed_opaque_existential_0Tm(&v14);
    sub_3EC214();
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
  }

  TextFieldAlertAction.CancelButton.init(title:action:)(a1, a2, &v14, a5);
  return sub_16AC0(a3);
}

uint64_t sub_7A640()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_7A6C8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t PopoverTipPresentationRequest.tip.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 16);

  return sub_1D4F0(a1, v1 + 16);
}

uint64_t TextFieldAlertAction.SubmitButton.init(title:factory:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_7A730(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 16) = sub_7C034;
  *(a2 + 24) = v5;
  return result;
}

uint64_t MultiSelectableExtension.shouldDisplayMultiSelectUI.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TextFieldAlertAction.SubmitButton.factory.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t TextFieldAlertAction.init(title:message:textField:cancelButton:submitButton:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v11 = *(a5 + 16);
  *(a9 + 32) = *a5;
  *(a9 + 48) = v11;
  v12 = *(a6 + 16);
  *(a9 + 72) = *a6;
  v13 = *(a5 + 32);
  v14 = *a7;
  v15 = a7[3];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 64) = v13;
  *(a9 + 88) = v12;
  *(a9 + 104) = *(a6 + 32);
  *(a9 + 120) = *(a6 + 48);
  *(a9 + 128) = v14;
  *(a9 + 136) = *(a7 + 1);
  *(a9 + 152) = v15;
  v16 = *(type metadata accessor for TextFieldAlertAction() + 36);
  v17 = sub_3EC1F4();
  v18 = *(*(v17 - 8) + 32);

  return v18(a9 + v16, a8, v17);
}

uint64_t type metadata accessor for TextFieldAlertAction()
{
  result = qword_4EDE60;
  if (!qword_4EDE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TextFieldAlertAction.textField.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 32);
  *(a1 + 8) = *(v1 + 40);
  *(a1 + 24) = *(v1 + 56);
}

__n128 TextFieldAlertAction.textField.setter(uint64_t a1)
{
  v3 = *(a1 + 32);

  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v5;
  *(v1 + 64) = v3;
  return result;
}

uint64_t TextFieldAlertAction.submitButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  *a1 = *(v1 + 128);
  *(a1 + 8) = *(v1 + 136);
  *(a1 + 24) = v2;
}

__n128 TextFieldAlertAction.submitButton.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[3];

  *(v1 + 128) = v3;
  result = *(a1 + 1);
  *(v1 + 136) = result;
  *(v1 + 152) = v4;
  return result;
}

uint64_t TextFieldAlertAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TextFieldAlertAction() + 36);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TextFieldAlertAction.actionMetrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TextFieldAlertAction() + 36);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_7AC6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_3EC1F4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t static TextFieldAlertAction.followShowByURL(initialText:then:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = sub_3EC1F4();
  __chkstk_darwin(v7 - 8);
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v32._countAndFlagsBits = 0xE000000000000000;
  v52._countAndFlagsBits = 0x63646F5020646441;
  v52._object = 0xEB00000000747361;
  v57.value._countAndFlagsBits = 0;
  v57.value._object = 0;
  v10.super.isa = v9;
  v62._countAndFlagsBits = 0;
  v62._object = 0xE000000000000000;
  v11 = sub_3E5A74(v52, v57, v10, v62, v32);
  v40 = v12;
  v41 = v11;

  v13 = [v8 mainBundle];
  v33._countAndFlagsBits = 0xE000000000000000;
  v53._object = 0x8000000000425A10;
  v53._countAndFlagsBits = 0xD000000000000013;
  v58.value._countAndFlagsBits = 0;
  v58.value._object = 0;
  v14.super.isa = v13;
  v63._countAndFlagsBits = 0;
  v63._object = 0xE000000000000000;
  v39 = sub_3E5A74(v53, v58, v14, v63, v33);
  v38 = v15;

  v16 = [v8 mainBundle];
  v34._countAndFlagsBits = 0xE000000000000000;
  v54._countAndFlagsBits = 0xD000000000000017;
  v54._object = 0x8000000000425A30;
  v59.value._countAndFlagsBits = 0;
  v59.value._object = 0;
  v17.super.isa = v16;
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  v37 = sub_3E5A74(v54, v59, v17, v64, v34);
  v19 = v18;

  v51 = 0;
  memset(v50, 0, sizeof(v50));

  v20 = [v8 mainBundle];
  v35._countAndFlagsBits = 0xE000000000000000;
  v55._countAndFlagsBits = 0x435F4E4F49544341;
  v55._object = 0xED00004C45434E41;
  v60.value._countAndFlagsBits = 0;
  v60.value._object = 0;
  v21.super.isa = v20;
  v65._countAndFlagsBits = 0;
  v65._object = 0xE000000000000000;
  v22 = sub_3E5A74(v55, v60, v21, v65, v35);
  v24 = v23;

  a5[9] = v22;
  a5[10] = v24;
  sub_7A45C(v50, &v45);
  if (v46)
  {
    sub_FCF8(v50, &qword_4EDE00);
    sub_1D4F0(&v45, &v47);
  }

  else
  {
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    v48 = sub_3EBEC4();
    v49 = &protocol witness table for EmptyAction;
    __swift_allocate_boxed_opaque_existential_0Tm(&v47);
    sub_3EBEB4();
    sub_FCF8(v50, &qword_4EDE00);
    if (v46)
    {
      sub_FCF8(&v45, &qword_4EDE00);
    }
  }

  sub_1D4F0(&v47, (a5 + 11));
  v25 = [v8 mainBundle];
  v36._countAndFlagsBits = 0xE000000000000000;
  v56._countAndFlagsBits = 0x425F574F4C4C4F46;
  v56._object = 0xED00004E4F545455;
  v61.value._countAndFlagsBits = 0;
  v61.value._object = 0;
  v26.super.isa = v25;
  v66._countAndFlagsBits = 0;
  v66._object = 0xE000000000000000;
  v27 = sub_3E5A74(v56, v61, v26, v66, v36);
  v29 = v28;

  v30 = swift_allocObject();
  *(v30 + 16) = a3;
  *(v30 + 24) = a4;
  type metadata accessor for TextFieldAlertAction();
  sub_7A6C8(a3);
  result = _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  *a5 = v41;
  a5[1] = v40;
  a5[2] = v39;
  a5[3] = v38;
  a5[4] = v37;
  a5[5] = v19;
  a5[6] = a1;
  a5[7] = a2;
  a5[8] = 3;
  a5[16] = v27;
  a5[17] = v29;
  a5[18] = sub_7B51C;
  a5[19] = v30;
  return result;
}

uint64_t sub_7B0E4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v24[2] = a2;
  v5 = sub_3EC1F4();
  __chkstk_darwin(v5 - 8);
  v24[1] = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v24[3] = v24 - v8;
  v9 = type metadata accessor for FollowShowByURLAction();
  __chkstk_darwin(v9);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v12 - 8);
  v14 = v24 - v13;
  v15 = sub_3E5DC4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E5D94();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    result = sub_FCF8(v14, &unk_4E9EE0);
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0;
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    (*(v16 + 16))(v11, v18, v15);
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    v11[*(v9 + 20)] = 1;
    if (a1)
    {
      v24[0] = a1;

      _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9E28);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_3F5310;
      *(v20 + 56) = v9;
      *(v20 + 64) = sub_7C09C(&qword_4E9E78, type metadata accessor for FollowShowByURLAction);
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v20 + 32));
      sub_7C14C(v11, boxed_opaque_existential_0Tm, type metadata accessor for FollowShowByURLAction);
      _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
      *(v20 + 96) = sub_3EC224();
      *(v20 + 104) = &protocol witness table for ClosureAction;
      __swift_allocate_boxed_opaque_existential_0Tm((v20 + 72));

      v22 = v24[0];
      sub_3EC214();
      *(a3 + 24) = sub_3EC314();
      *(a3 + 32) = &protocol witness table for CompoundAction;
      __swift_allocate_boxed_opaque_existential_0Tm(a3);
      sub_3EC304();
      sub_16AC0(v22);
      sub_7C1B4(v11, type metadata accessor for FollowShowByURLAction);
    }

    else
    {
      *(a3 + 24) = v9;
      *(a3 + 32) = sub_7C09C(&qword_4E9E78, type metadata accessor for FollowShowByURLAction);
      v23 = __swift_allocate_boxed_opaque_existential_0Tm(a3);
      sub_7C0E4(v11, v23, type metadata accessor for FollowShowByURLAction);
    }

    return (*(v16 + 8))(v18, v15);
  }

  return result;
}

uint64_t static TextFieldAlertAction.newStation(then:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_3EC1F4();
  __chkstk_darwin(v6 - 8);
  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v28._countAndFlagsBits = 0xE000000000000000;
  v42._countAndFlagsBits = 0x544154535F57454ELL;
  v42._object = 0xEB000000004E4F49;
  v46.value._countAndFlagsBits = 0;
  v46.value._object = 0;
  v9.super.isa = v8;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  v10 = sub_3E5A74(v42, v46, v9, v50, v28);
  v33 = v11;
  v34 = v10;

  v12 = [v7 mainBundle];
  v29._countAndFlagsBits = 0xE000000000000000;
  v43._object = 0x8000000000425A50;
  v43._countAndFlagsBits = 0xD00000000000001DLL;
  v47.value._countAndFlagsBits = 0;
  v47.value._object = 0;
  v13.super.isa = v12;
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  v14 = sub_3E5A74(v43, v47, v13, v51, v29);
  v32 = v15;

  v41 = 0;
  memset(v40, 0, sizeof(v40));
  v16 = [v7 mainBundle];
  v30._countAndFlagsBits = 0xE000000000000000;
  v44._countAndFlagsBits = 0x435F4E4F49544341;
  v44._object = 0xED00004C45434E41;
  v48.value._countAndFlagsBits = 0;
  v48.value._object = 0;
  v17.super.isa = v16;
  v52._countAndFlagsBits = 0;
  v52._object = 0xE000000000000000;
  v18 = sub_3E5A74(v44, v48, v17, v52, v30);
  v20 = v19;

  a3[9] = v18;
  a3[10] = v20;
  sub_7A45C(v40, &v35);
  if (v36)
  {
    sub_FCF8(v40, &qword_4EDE00);
    sub_1D4F0(&v35, &v37);
  }

  else
  {
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    v38 = sub_3EBEC4();
    v39 = &protocol witness table for EmptyAction;
    __swift_allocate_boxed_opaque_existential_0Tm(&v37);
    sub_3EBEB4();
    sub_FCF8(v40, &qword_4EDE00);
    if (v36)
    {
      sub_FCF8(&v35, &qword_4EDE00);
    }
  }

  sub_1D4F0(&v37, (a3 + 11));
  v21 = [v7 mainBundle];
  v31._countAndFlagsBits = 0xE000000000000000;
  v45._countAndFlagsBits = 0x4154535F45564153;
  v45._object = 0xEC0000004E4F4954;
  v49.value._countAndFlagsBits = 0;
  v49.value._object = 0;
  v22.super.isa = v21;
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  v23 = sub_3E5A74(v45, v49, v22, v53, v31);
  v25 = v24;

  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  type metadata accessor for TextFieldAlertAction();
  sub_7A6C8(a1);
  result = _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  *a3 = v34;
  a3[1] = v33;
  a3[2] = 0;
  a3[3] = 0;
  a3[4] = v14;
  a3[5] = v32;
  a3[7] = 0;
  a3[8] = 0;
  a3[6] = 0;
  a3[16] = v23;
  a3[17] = v25;
  a3[18] = sub_7BB74;
  a3[19] = v26;
  return result;
}

uint64_t sub_7B88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_3EC1F4();
  __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v9);
  StationAction = type metadata accessor for CreateStationAction();
  __chkstk_darwin(StationAction);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  *v12 = a1;
  v12[1] = a2;
  if (a3)
  {

    sub_7A6C8(a3);
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9E28);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_3F5310;
    *(v13 + 56) = StationAction;
    *(v13 + 64) = sub_7C09C(&qword_4E9E38, type metadata accessor for CreateStationAction);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v13 + 32));
    sub_7C14C(v12, boxed_opaque_existential_0Tm, type metadata accessor for CreateStationAction);
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    *(v13 + 96) = sub_3EC224();
    *(v13 + 104) = &protocol witness table for ClosureAction;
    __swift_allocate_boxed_opaque_existential_0Tm((v13 + 72));

    sub_3EC214();
    a4[3] = sub_3EC314();
    a4[4] = &protocol witness table for CompoundAction;
    __swift_allocate_boxed_opaque_existential_0Tm(a4);
    sub_3EC304();
    sub_16AC0(a3);
    return sub_7C1B4(v12, type metadata accessor for CreateStationAction);
  }

  else
  {
    a4[3] = StationAction;
    a4[4] = sub_7C09C(&qword_4E9E38, type metadata accessor for CreateStationAction);
    v16 = __swift_allocate_boxed_opaque_existential_0Tm(a4);
    sub_7C0E4(v12, v16, type metadata accessor for CreateStationAction);
  }
}

uint64_t objectdestroy_6Tm()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_7BB7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_7C06C;
  a2[1] = v5;
}

uint64_t sub_7BC00(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_3EC1F4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_7BCC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_3EC1F4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_7BD64()
{
  sub_1972C();
  if (v0 <= 0x3F)
  {
    sub_3EC1F4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_7BE14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_7BE70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_7BEF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_7BF40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_7BF9C(uint64_t a1, int a2)
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

uint64_t sub_7BFE4(uint64_t result, int a2, int a3)
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

uint64_t sub_7C034(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t sub_7C09C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_7C0E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_7C14C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_7C1B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_7C2AC@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t TranscriptDetail.__allocating_init(transcriptRequestInformation:playerTime:referenceTime:pageMetrics:episodeLockup:episodeOffer:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v17 = OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_transcriptRequestInformation;
  v18 = sub_3E9354();
  (*(*(v18 - 8) + 32))(v16 + v17, a1, v18);
  v19 = v16 + OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_playerTime;
  *v19 = a2;
  *(v19 + 8) = a3 & 1;
  v20 = v16 + OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_referenceTime;
  *v20 = a4;
  *(v20 + 8) = a5 & 1;
  v21 = OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_pageMetrics;
  v22 = sub_3EC164();
  (*(*(v22 - 8) + 32))(v16 + v21, a6, v22);
  *(v16 + OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_episodeLockup) = a7;
  sub_7D22C(a8, v16 + OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_episodeOffer);
  return v16;
}

uint64_t TranscriptDetail.init(transcriptRequestInformation:playerTime:referenceTime:pageMetrics:episodeLockup:episodeOffer:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_transcriptRequestInformation;
  v18 = sub_3E9354();
  (*(*(v18 - 8) + 32))(v8 + v17, a1, v18);
  v19 = v8 + OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_playerTime;
  *v19 = a2;
  *(v19 + 8) = a3 & 1;
  v20 = v8 + OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_referenceTime;
  *v20 = a4;
  *(v20 + 8) = a5 & 1;
  v21 = OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_pageMetrics;
  v22 = sub_3EC164();
  (*(*(v22 - 8) + 32))(v8 + v21, a6, v22);
  *(v8 + OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_episodeLockup) = a7;
  sub_7D22C(a8, v8 + OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_episodeOffer);
  return v8;
}

uint64_t TranscriptDetail.deinit()
{
  v1 = OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_transcriptRequestInformation;
  v2 = sub_3E9354();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_pageMetrics;
  v4 = sub_3EC164();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_7D29C(v0 + OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_episodeOffer);
  return v0;
}

uint64_t TranscriptDetail.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_transcriptRequestInformation;
  v2 = sub_3E9354();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_pageMetrics;
  v4 = sub_3EC164();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_7D29C(v0 + OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_episodeOffer);

  return swift_deallocClassInstance();
}

uint64_t sub_7C78C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_7C83C(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_7C7C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_pageMetrics;
  v5 = sub_3EC164();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_7C83C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDEA8);
  v5 = __chkstk_darwin(v4 - 8);
  v84 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v81 = (&v70 - v7);
  v80 = sub_3EC164();
  v82 = *(v80 - 8);
  v8 = __chkstk_darwin(v80);
  v83 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v89 = &v70 - v10;
  v11 = sub_3EBF94();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v79 = (&v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v13);
  v77 = &v70 - v16;
  v17 = __chkstk_darwin(v15);
  v86 = &v70 - v18;
  __chkstk_darwin(v17);
  v20 = &v70 - v19;
  v95 = sub_3EBDF4();
  v90 = *(v95 - 1);
  v21 = __chkstk_darwin(v95);
  v78 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v76 = &v70 - v24;
  v25 = __chkstk_darwin(v23);
  v75 = &v70 - v26;
  v27 = __chkstk_darwin(v25);
  v74 = &v70 - v28;
  v29 = __chkstk_darwin(v27);
  v85 = (&v70 - v30);
  __chkstk_darwin(v29);
  v32 = &v70 - v31;
  v33 = sub_3E9354();
  v87 = *(v33 - 8);
  v88 = v33;
  v34 = __chkstk_darwin(v33);
  v36 = &v70 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = &v70 - v37;
  v91 = a1;
  sub_3EBE04();
  v39 = a2;
  v40 = v12;
  v41 = v12 + 16;
  v42 = *(v12 + 16);
  v42(v20, v39, v11);
  v43 = v92;
  TranscriptRequestInformation.init(deserializing:using:)(v32, v20, v38);
  if (v43)
  {
    (*(v40 + 8))(v39, v11);
    (*(v90 + 8))(v91, v95);
  }

  else
  {
    v73 = v38;
    v71 = v36;
    v72 = v40;
    v92 = v39;
    v44 = v91;
    sub_3EBE04();
    v42(v86, v92, v11);
    sub_3EC0E4();
    v85 = v42;
    v70 = v41;
    v86 = v11;
    v46 = v74;
    sub_3EBE04();
    v47 = sub_3EBDB4();
    v48 = *(v90 + 8);
    v49 = v46;
    v50 = v95;
    v51 = v44;
    v48(v49, v95);
    if (v47)
    {
      v93 = 0;
      v94 = 1;
      sub_3ED784();

      v74 = v93;
      LODWORD(v90) = v94;
    }

    else
    {
      LODWORD(v90) = 1;
      v74 = 0;
    }

    v52 = v78;
    v53 = v75;
    sub_3EBE04();
    v54 = sub_3EBDB4();
    v55 = v53;
    v56 = v48;
    v48(v55, v50);
    if (v54)
    {
      v93 = 0;
      v94 = 1;
      sub_3ED784();

      v75 = v93;
      LODWORD(v78) = v94;
    }

    else
    {
      LODWORD(v78) = 1;
      v75 = 0;
    }

    v57 = v79;
    v58 = v76;
    sub_3EBE04();
    v59 = v77;
    v85(v77, v92, v86);
    type metadata accessor for LegacyEpisodeLockup();
    swift_allocObject();
    v79 = LegacyEpisodeLockup.init(deserializing:using:)(v58, v59);
    v60 = v51;
    sub_3EBE04();
    v85(v57, v92, v86);
    v61 = v81;
    EpisodeOffer.init(deserializing:using:)(v52, v57, v81);
    v62 = v82;
    v63 = v88;
    (*(v72 + 8))(v92, v86);
    v56(v60, v95);
    v64 = type metadata accessor for EpisodeOffer();
    (*(*(v64 - 8) + 56))(v61, 0, 1, v64);
    v65 = *(v87 + 32);
    v66 = v71;
    v65(v71, v73, v63);
    v95 = *(v62 + 32);
    v67 = v80;
    (v95)(v83, v89, v80);
    sub_7D22C(v61, v84);
    type metadata accessor for TranscriptDetail();
    v11 = swift_allocObject();
    v65((v11 + OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_transcriptRequestInformation), v66, v63);
    v68 = v11 + OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_playerTime;
    *v68 = v74;
    *(v68 + 8) = v90;
    v69 = v11 + OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_referenceTime;
    *v69 = v75;
    *(v69 + 8) = v78;
    (v95)(v11 + OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_pageMetrics, v83, v67);
    *(v11 + OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_episodeLockup) = v79;
    sub_7D22C(v84, v11 + OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_episodeOffer);
  }

  return v11;
}

uint64_t sub_7D1BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDEA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7D22C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDEA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_7D29C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDEA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for TranscriptDetail()
{
  result = qword_4EDED8;
  if (!qword_4EDED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_7D358()
{
  sub_3E9354();
  if (v0 <= 0x3F)
  {
    sub_3EC164();
    if (v1 <= 0x3F)
    {
      sub_7D4CC();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_7D4CC()
{
  if (!qword_4EDEE8)
  {
    type metadata accessor for EpisodeOffer();
    v0 = sub_3EE0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_4EDEE8);
    }
  }
}

uint64_t UnbookmarkEpisodeAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnbookmarkEpisodeAction() + 20);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for UnbookmarkEpisodeAction()
{
  result = qword_4EDFF0;
  if (!qword_4EDFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UnbookmarkEpisodeAction.actionMetrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnbookmarkEpisodeAction() + 20);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnbookmarkEpisodeAction.intent.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1C10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_3F5630;
  v2 = *v0;
  v3 = *(v0 + 8);
  *(v1 + 32) = *v0;
  *(v1 + 40) = v3;
  v4 = *(v0 + 16);
  *(v1 + 48) = v4;
  sub_3DE90(v2, v3, v4);

  return sub_3E70C4();
}

uint64_t UnbookmarkEpisodeAction.init(episodeID:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v7 = *(type metadata accessor for UnbookmarkEpisodeAction() + 20);
  v8 = sub_3EC1F4();
  v9 = *(*(v8 - 8) + 32);

  return v9(a5 + v7, a4, v8);
}

uint64_t sub_7D7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 16);
    if (v4 > 2)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_3EC1F4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_7D8A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = sub_3EC1F4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_7D948()
{
  result = qword_4F1DD0;
  if (!qword_4F1DD0)
  {
    sub_3E70E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1DD0);
  }

  return result;
}

uint64_t type metadata accessor for UndoSuggestLessInterestAction()
{
  result = qword_4EE080;
  if (!qword_4EE080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UndoSuggestLessInterestAction.init(adamID:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_3EC1F4();
  (*(*(v6 - 8) + 32))(a3, a2, v6);
  result = type metadata accessor for UndoSuggestLessInterestAction();
  *(a3 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_7DAA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_7DB20(uint64_t a1, uint64_t a2)
{
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_7DB90()
{
  result = sub_3EC1F4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for UnfavoriteInterestAction()
{
  result = qword_4EE110;
  if (!qword_4EE110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UnfavoriteInterestAction.init(adamID:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_3EC1F4();
  (*(*(v6 - 8) + 32))(a3, a2, v6);
  result = type metadata accessor for UnfavoriteInterestAction();
  *(a3 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_7DD04(uint64_t a1, uint64_t a2)
{
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_7DD84(uint64_t a1, uint64_t a2)
{
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t UnfollowShowAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnfollowShowAction() + 20);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for UnfollowShowAction()
{
  result = qword_4EE1A0;
  if (!qword_4EE1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UnfollowShowAction.actionMetrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnfollowShowAction() + 20);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnfollowShowAction.notice.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for UnfollowShowAction() + 24);

  return sub_5F2B0(v3, a1);
}

uint64_t UnfollowShowAction.notice.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for UnfollowShowAction() + 24);

  return sub_5F358(a1, v3);
}

uint64_t UnfollowShowAction.intent.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_3DE90(v1, v2, v3);

  return UnfollowShowIntent.init(showID:)(v1, v2, v3);
}

uint64_t UnfollowShowAction.init(showID:notice:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  v9 = type metadata accessor for UnfollowShowAction();
  v10 = *(v9 + 20);
  v11 = sub_3EC1F4();
  (*(*(v11 - 8) + 32))(a6 + v10, a5, v11);
  v12 = a6 + *(v9 + 24);

  return sub_5F5E0(a4, v12);
}

uint64_t sub_7E188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 16);
    if (v4 > 2)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_3EC1F4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for NoticeModel();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_7E2B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v8 = sub_3EC1F4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for NoticeModel();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_7E3D8()
{
  result = sub_3EC1F4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NoticeModel();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_7E470()
{
  result = qword_4F1DF0;
  if (!qword_4F1DF0)
  {
    sub_3E7014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1DF0);
  }

  return result;
}

uint64_t UpsellDismissingAction.__allocating_init(uniqueId:title:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v28 = a1;
  v10 = sub_3E5FC4();
  v27 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v13 - 8);
  v15 = &v26 - v14;
  v16 = sub_3EC1F4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  (*(v17 + 16))(v19, a6, v16);
  sub_7EA24(a7, v15);
  if (a2)
  {
    sub_3D9DC(a7);
    (*(v17 + 8))(a6, v16);
    v21 = v28;
  }

  else
  {
    sub_3E5FB4();
    v22 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v28 = v10;
    v21 = v22;
    a2 = v23;
    sub_3D9DC(a7);
    (*(v17 + 8))(a6, v16);
    (*(v27 + 8))(v12, v28);
  }

  *(v20 + 16) = v21;
  *(v20 + 24) = a2;
  v24 = v30;
  *(v20 + 32) = v29;
  *(v20 + 40) = v24;
  *(v20 + 48) = v31;
  (*(v17 + 32))(v20 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v19, v16);
  sub_14A10(v15, v20 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v20;
}

uint64_t UpsellDismissingAction.init(uniqueId:title:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v33 = a5;
  v31 = a3;
  v32 = a4;
  v30 = a1;
  v12 = sub_3E5FC4();
  v29 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v15 - 8);
  v17 = &v28 - v16;
  v18 = sub_3EC1F4();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, a6, v18, v20);
  sub_7EA24(a7, v17);
  if (a2)
  {
    sub_3D9DC(a7);
    (*(v19 + 8))(a6, v18);
    v23 = v30;
  }

  else
  {
    sub_3E5FB4();
    v24 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v30 = v12;
    v23 = v24;
    a2 = v25;
    sub_3D9DC(a7);
    (*(v19 + 8))(a6, v18);
    (*(v29 + 8))(v14, v30);
  }

  *(v8 + 16) = v23;
  *(v8 + 24) = a2;
  v26 = v32;
  *(v8 + 32) = v31;
  *(v8 + 40) = v26;
  *(v8 + 48) = v33;
  (*(v19 + 32))(v8 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v22, v18);
  sub_14A10(v17, v8 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v8;
}

uint64_t sub_7EA24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t UpsellDismissingAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_3EBF94();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3EBDF4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = Action.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

uint64_t UpsellDismissingAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_3EBF94();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3EBDF4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v17 = a1;
  v13(v12, a1, v8, v10);
  (*(v5 + 16))(v7, a2, v4);
  v14 = Action.init(deserializing:using:)(v12, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v17, v8);
  return v14;
}

uint64_t type metadata accessor for UpsellDismissingAction()
{
  result = qword_4EE208;
  if (!qword_4EE208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void ActionOrigin.init(context:sender:view:)(uint64_t a1@<X0>, _OWORD *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for ActionOrigin();
  swift_unknownObjectWeakInit();
  v8 = sub_3E6434();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = (a4 + *(v7 + 20));
  v10 = a2[1];
  *v9 = *a2;
  v9[1] = v10;
  swift_unknownObjectWeakAssign();
}

uint64_t type metadata accessor for ActionOrigin()
{
  result = qword_4EE310;
  if (!qword_4EE310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActionOrigin.context.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3E6434();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ActionOrigin.sender.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ActionOrigin() + 20);

  return sub_7F06C(v3, a1);
}

uint64_t sub_7F06C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_501090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7F0DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ActionOrigin();
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7F4A0(a1, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = sub_7F504(v6);
  *a2 = Strong;
  return result;
}

uint64_t ActionOrigin.view.getter()
{
  type metadata accessor for ActionOrigin();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t static ActionOrigin.empty.getter@<X0>(uint64_t a1@<X8>)
{
  sub_3E63F4();
  v2 = (a1 + *(type metadata accessor for ActionOrigin() + 20));
  *v2 = 0u;
  v2[1] = 0u;
  swift_unknownObjectWeakInit();

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_7F218()
{
  type metadata accessor for ActionOrigin();

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_7F274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3E6434();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_7F354(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_3E6434();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

void sub_7F410()
{
  sub_3E6434();
  if (v0 <= 0x3F)
  {
    sub_1F688();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_7F4A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionOrigin();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7F504(uint64_t a1)
{
  v2 = type metadata accessor for ActionOrigin();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ActionRunner.perform(_:withMetrics:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  sub_3ED6B4();
  v7[9] = sub_3ED6A4();
  v9 = sub_3ED684();
  v7[10] = v9;
  v7[11] = v8;

  return _swift_task_switch(sub_7F604, v9, v8);
}

uint64_t sub_7F604()
{
  *(v0 + 96) = ActionRunner.perform(_:withMetrics:asPartOf:)(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);
  v2 = sub_23F78();
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_7F6E4;
  v4 = *(v0 + 16);

  return dispatch thunk of Future.then()(v4, v1, v2);
}

uint64_t sub_7F6E4()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_7F8A0;
  }

  else
  {
    v5 = sub_7F83C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_7F83C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_7F8A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ActionRunner.perform(_:withMetrics:asPartOf:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = a4;
  v61 = a5;
  v58 = a1;
  v59 = a3;
  v6 = sub_3EC204();
  v52 = *(v6 - 8);
  v53 = v6;
  __chkstk_darwin(v6);
  v51 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3EBE74();
  __chkstk_darwin(v8 - 8);
  v54 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3ECE84();
  v56 = *(v10 - 8);
  v57 = v10;
  __chkstk_darwin(v10);
  v55 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE350);
  __chkstk_darwin(v12 - 8);
  v14 = &v48 - v13;
  v15 = sub_3EC794();
  v16 = *(v15 - 8);
  v49 = v15;
  v50 = v16;
  __chkstk_darwin(v15);
  v48 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v48 - v19;
  v21 = sub_3E6654();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_3EBC24();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = (&v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_801B4();
  *v28 = sub_3EDBC4();
  (*(v26 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v25);
  v29 = sub_3EBC34();
  result = (*(v26 + 8))(v28, v25);
  if (v29)
  {
    sub_3EC4B4();
    v31 = *(v22 + 16);
    v31(v24, a2, v21);
    v32 = (*(v22 + 88))(v24, v21);
    if (v32 == enum case for ActionMetricsBehavior.notProcessed(_:))
    {
      return (*(v61 + 8))(v58, v59, v60);
    }

    else if (v32 == enum case for ActionMetricsBehavior.fromAction(_:))
    {
      v33 = v49;
      v34 = v59;
      sub_3EC364();
      v35 = v50;
      if ((*(v50 + 48))(v14, 1, v33) == 1)
      {
        sub_FCF8(v14, &qword_4EE350);
        v36 = v55;
        sub_3ECE34();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
        sub_3EBE94();
        *(swift_allocObject() + 16) = xmmword_3F5630;
        sub_3EBE64();
        v64._countAndFlagsBits = 0xD000000000000033;
        v64._object = 0x8000000000425B50;
        sub_3EBE54(v64);
        v37 = v58;
        v38 = v58[3];
        v39 = __swift_project_boxed_opaque_existential_1(v58, v38);
        v63 = v38;
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v62);
        (*(*(v38 - 8) + 16))(boxed_opaque_existential_0Tm, v39, v38);
        sub_3EBE44();
        sub_FCF8(v62, &unk_501090);
        v65._countAndFlagsBits = 46;
        v65._object = 0xE100000000000000;
        sub_3EBE54(v65);
        sub_3EBE84();
        v41 = v57;
        sub_3ECBA4();

        (*(v56 + 8))(v36, v41);
        v20 = v48;
        sub_3EC784();
      }

      else
      {
        (*(v35 + 32))(v20, v14, v33);
        v37 = v58;
      }

      v47 = v60;
      v46 = v61;
      (*(v61 + 16))(v37, v20, v34, v60, v61);
      (*(v35 + 8))(v20, v33);
      return (*(v46 + 8))(v37, v34, v47);
    }

    else
    {
      v42 = v55;
      sub_3ECE34();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
      sub_3EBE94();
      *(swift_allocObject() + 16) = xmmword_3F5630;
      sub_3EBE64();
      v66._object = 0x8000000000425B30;
      v66._countAndFlagsBits = 0xD00000000000001DLL;
      sub_3EBE54(v66);
      v63 = v21;
      v43 = __swift_allocate_boxed_opaque_existential_0Tm(v62);
      v31(v43, a2, v21);
      sub_3EBE34();
      sub_FCF8(v62, &unk_501090);
      v67._countAndFlagsBits = 33;
      v67._object = 0xE100000000000000;
      sub_3EBE54(v67);
      sub_3EBE84();
      v44 = v57;
      sub_3ECB94();

      (*(v56 + 8))(v42, v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);
      (*(v52 + 104))(v51, enum case for ActionOutcome.unsupported(_:), v53);
      v45 = sub_3ECDB4();
      (*(v22 + 8))(v24, v21);
      return v45;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_801B4()
{
  result = qword_4F10B0;
  if (!qword_4F10B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4F10B0);
  }

  return result;
}

uint64_t ActionRunnerOptions.withActionOrigin(context:sender:view:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = sub_3E6434();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE358);
  __chkstk_darwin(v15 - 8);
  v17 = &v22 - v16;
  sub_FBD0(a1, v10, &qword_5005B0);
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    if (a3)
    {
      sub_3EDE34();
      (*(v12 + 56))(v7, 0, 1, v11);
      (*(v12 + 32))(v14, v7, v11);
    }

    else
    {
      (*(v12 + 56))(v7, 1, 1, v11);
      sub_3E63F4();
      if (v18(v7, 1, v11) != 1)
      {
        sub_FCF8(v7, &qword_5005B0);
      }
    }

    if (v18(v10, 1, v11) != 1)
    {
      sub_FCF8(v10, &qword_5005B0);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  v19 = type metadata accessor for ActionOrigin();
  sub_FBD0(v22, &v17[*(v19 + 20)], &unk_501090);
  swift_unknownObjectWeakInit();
  (*(v12 + 32))(v17, v14, v11);
  swift_unknownObjectWeakAssign();
  (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
  v20 = _s8ShelfKit19ActionRunnerOptionsC04withC6OriginyACXDAA0cG0VSgF_0(v17);
  sub_FCF8(v17, &qword_4EE358);
  return v20;
}

uint64_t _s8ShelfKit19ActionRunnerOptionsC04withC6OriginyACXDAA0cG0VSgF_0(uint64_t a1)
{
  v2 = sub_3EBCA4();
  v17 = *(v2 - 8);
  v18 = v2;
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE358);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for ActionOrigin();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v17 - v13;
  sub_FBD0(a1, v7, &qword_4EE358);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_FCF8(v7, &qword_4EE358);
    return sub_3EC3D4();
  }

  else
  {
    sub_80DE8(v7, v14);
    sub_7F4A0(v14, v11);
    sub_3EBC94();
    v16 = sub_3EC404();
    (*(v17 + 8))(v4, v18);
    sub_7F504(v14);
    return v16;
  }
}

uint64_t ActionRunnerOptions.__allocating_init(name:dependencies:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_3EC6B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v7, a3, v4);
  v8 = sub_3EC3E4();
  (*(v5 + 8))(a3, v4);
  return v8;
}

uint64_t ActionRunnerOptions.init(name:dependencies:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_3EC6B4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  (*(v5 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v4, v6);
  v8 = sub_3EC3E4();
  (*(v5 + 8))(a3, v4);
  return v8;
}

uint64_t ActionRunnerOptions.__deallocating_deinit()
{
  _s8ShelfKit19ActionRunnerOptionsCfd_0();

  return swift_deallocClassInstance();
}

uint64_t ActionRunnerOptions.withFlowTransitionSource(_:)(uint64_t a1)
{
  v2 = sub_3EBCA4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FlowTransitionSource();
  if (a1)
  {
    v8[1] = a1;

    sub_3EBC94();
    v6 = sub_3EC404();
    (*(v3 + 8))(v5, v2);
    return v6;
  }

  else
  {

    return sub_3EC3D4();
  }
}

uint64_t ActionRunnerOptions.withFlowTransitionSource(view:)(void *a1)
{
  v3 = sub_3EBCA4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    type metadata accessor for FlowTransitionSource();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v10 = v7;
    v8 = a1;

    sub_3EBC94();
    v1 = sub_3EC404();
    (*(v4 + 8))(v6, v3);
  }

  else
  {
  }

  return v1;
}

uint64_t type metadata accessor for ActionRunnerOptions()
{
  result = qword_4EE360;
  if (!qword_4EE360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_80DE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionOrigin();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id UIResponder.nearestActionRunner.getter()
{
  swift_getObjectType();
  v1 = swift_conformsToProtocol2();
  if (v1)
  {
    if (v0)
    {
      v2 = v1;
      ObjectType = swift_getObjectType();
      v4 = *(v2 + 8);
      v5 = v0;
      v6 = v4(ObjectType, v2);

      if (v6)
      {
        return v6;
      }
    }
  }

  result = [v0 nextResponder];
  if (result)
  {
    v8 = result;
    v9 = UIResponder.nearestActionRunner.getter();

    return v9;
  }

  return result;
}

uint64_t sub_80F54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE408);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_3F9E70;
  *(inited + 32) = 0x7463417472656C41;
  *(inited + 40) = 0xEB000000006E6F69;
  *(inited + 48) = sub_3ECC44();
  *(inited + 56) = &protocol witness table for Models.AlertAction;
  strcpy((inited + 64), "CompoundAction");
  *(inited + 79) = -18;
  *(inited + 80) = sub_3EC314();
  *(inited + 88) = &protocol witness table for CompoundAction;
  *(inited + 96) = 0x7463417974706D45;
  *(inited + 104) = 0xEB000000006E6F69;
  *(inited + 112) = sub_3EBEC4();
  *(inited + 120) = &protocol witness table for EmptyAction;
  *(inited + 128) = 0xD000000000000018;
  *(inited + 136) = 0x8000000000425BE0;
  v1 = type metadata accessor for ChannelOfferAction();
  v2 = sub_82380(&qword_4EE410, type metadata accessor for ChannelOfferAction);
  *(inited + 144) = v1;
  *(inited + 152) = v2;
  *(inited + 160) = 0xD00000000000001ELL;
  *(inited + 168) = 0x8000000000425C00;
  v3 = type metadata accessor for ChannelPowerSwooshAction(0);
  v4 = sub_82380(&qword_4EE418, type metadata accessor for ChannelPowerSwooshAction);
  *(inited + 176) = v3;
  *(inited + 184) = v4;
  *(inited + 192) = 0xD00000000000001ALL;
  *(inited + 200) = 0x8000000000425C20;
  v5 = type metadata accessor for EpisodeContextAction();
  v6 = sub_82380(&qword_4EE420, type metadata accessor for EpisodeContextAction);
  *(inited + 208) = v5;
  *(inited + 216) = v6;
  *(inited + 224) = 0xD000000000000018;
  *(inited + 232) = 0x8000000000425C40;
  v7 = type metadata accessor for EpisodeOfferAction();
  v8 = sub_82380(&qword_4EE428, type metadata accessor for EpisodeOfferAction);
  *(inited + 240) = v7;
  *(inited + 248) = v8;
  *(inited + 256) = 0xD000000000000017;
  *(inited + 264) = 0x8000000000425C60;
  v9 = type metadata accessor for ExternalUrlAction();
  v10 = sub_82380(&qword_4EE430, type metadata accessor for ExternalUrlAction);
  *(inited + 272) = v9;
  *(inited + 280) = v10;
  *(inited + 288) = 0xD000000000000010;
  *(inited + 296) = 0x8000000000425C80;
  v11 = type metadata accessor for FlowAction(0);
  v12 = sub_82380(&qword_4F8A40, type metadata accessor for FlowAction);
  *(inited + 304) = v11;
  *(inited + 312) = v12;
  *(inited + 320) = 0xD000000000000018;
  *(inited + 328) = 0x8000000000425CA0;
  v13 = type metadata accessor for HttpTemplateAction();
  v14 = sub_82380(&qword_4EE438, type metadata accessor for HttpTemplateAction);
  *(inited + 336) = v13;
  *(inited + 344) = v14;
  *(inited + 352) = 0xD000000000000011;
  *(inited + 360) = 0x8000000000425CC0;
  v15 = type metadata accessor for OAuthAction();
  v16 = sub_82380(&qword_4EE440, type metadata accessor for OAuthAction);
  *(inited + 368) = v15;
  *(inited + 376) = v16;
  *(inited + 384) = 0xD000000000000010;
  *(inited + 392) = 0x8000000000425CE0;
  v17 = type metadata accessor for PlayAction();
  v18 = sub_82380(&qword_4EA308, type metadata accessor for PlayAction);
  *(inited + 400) = v17;
  *(inited + 408) = v18;
  *(inited + 416) = 0xD000000000000015;
  *(inited + 424) = 0x8000000000425D00;
  v19 = type metadata accessor for PlayQueueAction();
  v20 = sub_82380(&qword_4EA9A8, type metadata accessor for PlayQueueAction);
  *(inited + 432) = v19;
  *(inited + 440) = v20;
  *(inited + 448) = 0xD00000000000001ALL;
  *(inited + 456) = 0x8000000000425D20;
  v21 = type metadata accessor for PodcastContextAction();
  v22 = sub_82380(&qword_4EE448, type metadata accessor for PodcastContextAction);
  *(inited + 464) = v21;
  *(inited + 472) = v22;
  *(inited + 480) = 0xD000000000000018;
  *(inited + 488) = 0x8000000000425D40;
  v23 = type metadata accessor for PodcastOfferAction();
  v24 = sub_82380(&qword_4EE450, type metadata accessor for PodcastOfferAction);
  *(inited + 496) = v23;
  *(inited + 504) = v24;
  *(inited + 512) = 0xD000000000000017;
  *(inited + 520) = 0x8000000000425D60;
  v25 = type metadata accessor for PodcastPlayAction();
  v26 = sub_82380(&qword_4EAD68, type metadata accessor for PodcastPlayAction);
  *(inited + 528) = v25;
  *(inited + 536) = v26;
  *(inited + 544) = 0xD000000000000012;
  *(inited + 552) = 0x8000000000425D80;
  v27 = sub_3E6E34();
  v28 = sub_82380(&qword_4EE458, &type metadata accessor for SearchAction);
  *(inited + 560) = v27;
  *(inited + 568) = v28;
  *(inited + 576) = 0xD000000000000015;
  *(inited + 584) = 0x8000000000425DA0;
  v29 = type metadata accessor for TabChangeAction();
  v30 = sub_82380(&unk_501110, type metadata accessor for TabChangeAction);
  *(inited + 592) = v29;
  *(inited + 600) = v30;
  v31 = sub_61D80(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE460);
  result = swift_arrayDestroy();
  qword_4EE3B0 = v31;
  return result;
}

uint64_t static ActionKinds.table.getter()
{
  if (qword_4E8920 != -1)
  {
    swift_once();
  }
}

unint64_t static ActionKinds._table.getter()
{
  if (qword_4E8920 != -1)
  {
    swift_once();
  }

  v1 = qword_4EE3B0;

  return sub_815F0(v1);
}

unint64_t sub_815F0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE3F0);
    v2 = sub_3EE5F4();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE3F8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE400);
        swift_dynamicCast();
        result = sub_552A8(v15, v14);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v15;
          v9[1] = v14;
          v10 = result;

          *(v2[7] + 8 * v10) = v21;
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
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v15;
          v17[1] = v14;
          *(v2[7] + 8 * result) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_21;
          }

          v2[2] = v20;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_8181C()
{
  result = qword_4EE3B8;
  if (!qword_4EE3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EE3B8);
  }

  return result;
}

uint64_t sub_81870(uint64_t a1)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE3C8);
  __chkstk_darwin(v57);
  v56 = &v45 - v2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE3D0);
  __chkstk_darwin(v55);
  v54 = &v45 - v3;
  v4 = sub_3EE564();
  v58 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE3D8);
  __chkstk_darwin(v52);
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v50 = &v45 - v9;
  v59 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE3E0);
    v10 = sub_3EE5F4();
  }

  else
  {
    v10 = _swiftEmptyDictionarySingleton;
  }

  v11 = v59 + 64;
  v12 = 1 << *(v59 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v59 + 64);
  v15 = (v12 + 63) >> 6;
  v48 = v58 + 16;
  v61 = v58 + 32;
  v16 = v10 + 8;

  v18 = 0;
  v46 = v11;
  v47 = v15;
  v53 = v6;
  v49 = v10;
  while (v14)
  {
LABEL_15:
    v21 = __clz(__rbit64(v14)) | (v18 << 6);
    v22 = v58;
    v23 = v59;
    v24 = *(v59 + 48);
    v60 = *(v58 + 72);
    v25 = v50;
    (*(v58 + 16))(v50, v24 + v60 * v21, v4);
    v26 = *(v23 + 56) + 32 * v21;
    v27 = v52;
    sub_2F4AC(v26, v25 + *(v52 + 48));
    v28 = v51;
    sub_82310(v25, v51);
    v29 = *(v27 + 48);
    v30 = *(v57 + 48);
    v31 = *(v22 + 32);
    v32 = v4;
    v33 = v56;
    v31(v56, v28, v32);
    sub_1FB90((v28 + v29), v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE3E8);
    swift_dynamicCast();
    v34 = v54;
    v35 = *(v55 + 48);
    v31(v54, v33, v32);
    v36 = &v33[v30];
    v4 = v32;
    sub_1FB90(v36, &v34[v35]);
    v37 = v53;
    v31(v53, v34, v32);
    sub_1FB90(&v34[v35], v62);
    v10 = v49;
    result = sub_3ED114();
    v38 = -1 << *(v10 + 32);
    v39 = result & ~v38;
    v40 = v39 >> 6;
    if (((-1 << v39) & ~v16[v39 >> 6]) == 0)
    {
      v41 = 0;
      v42 = (63 - v38) >> 6;
      v15 = v47;
      while (++v40 != v42 || (v41 & 1) == 0)
      {
        v43 = v40 == v42;
        if (v40 == v42)
        {
          v40 = 0;
        }

        v41 |= v43;
        v44 = v16[v40];
        if (v44 != -1)
        {
          v19 = __clz(__rbit64(~v44)) + (v40 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v19 = __clz(__rbit64((-1 << v39) & ~v16[v39 >> 6])) | v39 & 0x7FFFFFFFFFFFFFC0;
    v15 = v47;
LABEL_9:
    v14 &= v14 - 1;
    *(v16 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v31((v10[6] + v19 * v60), v37, v4);
    result = sub_1FB90(v62, (v10[7] + 32 * v19));
    ++v10[2];
    v11 = v46;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v15)
    {

      return v10;
    }

    v14 = *(v11 + 8 * v20);
    ++v18;
    if (v14)
    {
      v18 = v20;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_81D9C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA1B8);
    v2 = sub_3EE5F4();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_1FB90(&v22, v24);
        sub_1FB90(v24, v25);
        sub_1FB90(v25, &v23);
        result = sub_552A8(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1Tm(v11);
          result = sub_1FB90(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_1FB90(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_81FF4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBA68);
    v1 = sub_3EE5F4();
  }

  else
  {
    v1 = _swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 8;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v26 = *(*(a1 + 56) + v11);
    v13 = v26;
    sub_822C4();
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_1FB90((v27 + 8), v25);
    sub_1FB90(v25, v27);
    sub_3ED244();
    sub_3EE954();
    sub_3ED394();
    v16 = sub_3EE9A4();

    v17 = -1 << *(v1 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v6[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v6[v19];
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~v6[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v9) = v14;
    result = sub_1FB90(v27, (v1[7] + 32 * v9));
    ++v1[2];
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_822C4()
{
  result = qword_4EE3C0;
  if (!qword_4EE3C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4EE3C0);
  }

  return result;
}

uint64_t sub_82310(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE3D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_82380(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_823CC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t static ProfilePictureButton.Dimension.default.getter@<X0>(_BYTE *a1@<X8>)
{
  result = _UISolariumEnabled();
  *a1 = result;
  return result;
}

void ProfilePictureButton.Dimension.init(rawValue:)(char *a1@<X8>, double a2@<D0>)
{
  if (a2 == 44.0)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (a2 == 32.0)
  {
    v2 = 0;
  }

  *a1 = v2;
}