void sub_10041E124(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = type metadata accessor for MediaMoment();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          sub_100429104(&qword_1008ED058, &type metadata accessor for MediaMoment);
          LOBYTE(v34) = dispatch thunk of static Comparable.< infix(_:_:)();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        v45(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        sub_100429104(&qword_1008ED058, &type metadata accessor for MediaMoment);
        LOBYTE(v21) = dispatch thunk of static Comparable.< infix(_:_:)();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= v43 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = v43 + a4;
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  sub_1004ABA0C(&v54, &v53, &v52);
}

uint64_t sub_10041E718(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v62 = type metadata accessor for Recommendation();
  v8 = *(v62 - 8);
  v9 = __chkstk_darwin(v62);
  v59 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v58 = &v48 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v65 = a1;
  v64 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v32 = a4 + v18;
    if (v18 >= 1)
    {
      v33 = -v14;
      v52 = a4;
      v53 = (v8 + 16);
      v51 = (v8 + 8);
      v34 = v32;
      v61 = a1;
      v54 = v33;
      do
      {
        v49 = v32;
        v35 = a2;
        v36 = a2 + v33;
        v37 = a3;
        v55 = v35;
        v56 = v36;
        while (1)
        {
          if (v35 <= a1)
          {
            v65 = v35;
            v63 = v49;
            goto LABEL_58;
          }

          v38 = v37;
          v50 = v32;
          v60 = v37 + v33;
          v39 = v34 + v33;
          v40 = *v53;
          v41 = v58;
          v42 = v34 + v33;
          v43 = v34;
          v44 = v62;
          (*v53)(v58, v42, v62);
          v45 = v59;
          (v40)(v59, v36, v44);
          v57 = Recommendation.index.getter();
          v46 = Recommendation.index.getter();
          v47 = *v51;
          (*v51)(v45, v44);
          v47(v41, v44);
          if (v57 < v46)
          {
            break;
          }

          v32 = v39;
          v37 = v60;
          if (v38 < v43 || v60 >= v43)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v56;
            a1 = v61;
          }

          else
          {
            v36 = v56;
            a1 = v61;
            if (v38 != v43)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v34 = v39;
          v33 = v54;
          v35 = v55;
          if (v39 <= v52)
          {
            a2 = v55;
            goto LABEL_57;
          }
        }

        v34 = v43;
        if (v38 < v55 || v60 >= v55)
        {
          a3 = v60;
          a2 = v56;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v61;
          v32 = v50;
          v33 = v54;
        }

        else
        {
          a3 = v60;
          a2 = v56;
          a1 = v61;
          v32 = v50;
          v33 = v54;
          if (v38 != v55)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v34 > v52);
    }

LABEL_57:
    v65 = a2;
    v63 = v32;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v57 = a4 + v17;
    v63 = a4 + v17;
    v60 = a3;
    if (v17 >= 1 && a2 < a3)
    {
      v20 = *(v8 + 16);
      v55 = v14;
      v56 = v8 + 16;
      v53 = (v8 + 8);
      v54 = v20;
      do
      {
        v61 = a1;
        v21 = v58;
        v22 = v62;
        v23 = v54;
        v54(v58, a2, v62);
        v24 = v59;
        v23(v59, a4, v22);
        v25 = a2;
        v26 = Recommendation.index.getter();
        v27 = Recommendation.index.getter();
        v28 = *v53;
        (*v53)(v24, v22);
        v28(v21, v22);
        if (v26 >= v27)
        {
          v29 = v55;
          v31 = a4 + v55;
          v30 = v61;
          if (v61 < a4 || v61 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v25;
          }

          else
          {
            a2 = v25;
            if (v61 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v64 = v31;
          a4 += v29;
        }

        else
        {
          v29 = v55;
          a2 = v25 + v55;
          v30 = v61;
          if (v61 < v25 || v61 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v61 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v30 + v29;
        v65 = a1;
      }

      while (a4 < v57 && a2 < v60);
    }
  }

LABEL_58:
  sub_1004ABA24(&v65, &v64, &v63);
  return 1;
}

uint64_t sub_10041EE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17[1] = a7;
  v10 = a4(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v17 - v12;
  (*(v11 + 16))(v17 - v12, a1, v10);
  v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  (*(v11 + 32))(v15 + v14, v13, v10);

  return Promise.init(asyncOperation:)();
}

uint64_t sub_10041EFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ShelfLockupDescriptor();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  (*(v7 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6, v9);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  (*(v7 + 32))(v11 + v10, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  type metadata accessor for NavigationRequest();

  return Promise.init(asyncOperation:)();
}

uint64_t sub_10041F15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  swift_errorRetain();

  return Promise.init(asyncOperation:)();
}

uint64_t sub_10041F1F4(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v8, a5);
  v6 = v8;
  v8 = v8;
  v9 = 0;
  a1(&v8);

  return sub_1000A7360(v6, 0);
}

uint64_t sub_10041F2D4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *), uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = sub_100140278(a7);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v22 - v17;
  if (a2)
  {
    a5(a1);
    v19 = Promise.operation.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = a3;
    *(v20 + 24) = a4;

    v19(a10, v20);

    return (*(v16 + 8))(v18, v15);
  }

  else
  {
    v22 = a1;
    v23 = 0;
    return a3(&v22);
  }
}

uint64_t sub_10041F448(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v8, a5);
  v6 = v8;
  v8 = v8;
  v9 = 0;
  a1(&v8);

  return sub_1000A7360(v6, 0);
}

uint64_t sub_10041F4DC(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v8, a5);
  v6 = v8;
  v9 = 0;
  a1(&v8);

  return sub_1000A7360(v6, 0);
}

uint64_t sub_10041F570(void (*a1)(_BYTE *), uint64_t a2, void (*a3)(uint64_t, __n128), uint64_t a4, uint64_t a5)
{
  v8 = sub_100140278(&qword_1008ED010);
  __chkstk_darwin(v8);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v19[-v12];
  v15 = __chkstk_darwin(v14);
  v17 = &v19[-v16];
  a3(a5, v15);
  swift_storeEnumTagMultiPayload();
  sub_100015E80(v10, v13, &qword_1008ED010);
  sub_100015E80(v13, v17, &qword_1008ED010);
  a1(v17);
  return sub_10000EA04(v17, &qword_1008ED010);
}

uint64_t sub_10041FBC4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a4;
  v23 = a5;
  v19[1] = a3;
  v20 = a2;
  v6 = sub_100140278(&unk_1008F2010);
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  v9 = type metadata accessor for TrainerDetail();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&qword_1008ED008);
  __chkstk_darwin(v13);
  v15 = (v19 - v14);
  sub_10001B104(a1, v19 - v14, &qword_1008ED008);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v15;
    v25 = 1;
    swift_errorRetain();
    v22(&v24);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v20(v12);
    v17 = Promise.operation.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = v22;
    *(v18 + 24) = v23;

    v17(sub_10042C67C, v18);

    (*(v21 + 8))(v8, v6);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_10041FEA4(uint64_t a1, char a2, void (*a3)(uint64_t *), uint64_t a4, void (*a5)(uint64_t *), uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = sub_100140278(a7);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v24 - v17;
  v24 = a1;
  if (a2)
  {
    v25 = 1;
    swift_errorRetain();
    a5(&v24);
    v19 = a1;
    v20 = 1;
  }

  else
  {

    a3(&v24);
    v21 = Promise.operation.getter();
    v22 = swift_allocObject();
    *(v22 + 16) = a5;
    *(v22 + 24) = a6;

    v21(a10, v22);

    (*(v16 + 8))(v18, v15);
    v19 = a1;
    v20 = 0;
  }

  return sub_10042C468(v19, v20);
}

uint64_t sub_100420044(uint64_t a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v11 = sub_100140278(&unk_1008F2010);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v19 - v14;
  if (a2)
  {
    v19 = a1;
    v20 = 1;
    swift_errorRetain();
    a5(&v19);
    return sub_1000A7360(a1, 1);
  }

  else
  {
    a3(v13);
    v17 = Promise.operation.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_10042C67C, v18);

    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_1004201E4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a4;
  v23 = a5;
  v19[1] = a3;
  v20 = a2;
  v6 = sub_100140278(&unk_1008F2010);
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  v9 = type metadata accessor for NoticePrivacyPreference();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&qword_1008ED088);
  __chkstk_darwin(v13);
  v15 = (v19 - v14);
  sub_10001B104(a1, v19 - v14, &qword_1008ED088);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v15;
    v25 = 1;
    swift_errorRetain();
    v22(&v24);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v20(v12);
    v17 = Promise.operation.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = v22;
    *(v18 + 24) = v23;

    v17(sub_10042C67C, v18);

    (*(v21 + 8))(v8, v6);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_1004204C4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a4;
  v23 = a5;
  v19[1] = a3;
  v20 = a2;
  v6 = sub_100140278(&unk_1008F2010);
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  v9 = type metadata accessor for ContentAvailability();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&qword_1008DFD18);
  __chkstk_darwin(v13);
  v15 = (v19 - v14);
  sub_10001B104(a1, v19 - v14, &qword_1008DFD18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v15;
    v25 = 1;
    swift_errorRetain();
    v22(&v24);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v20(v12);
    v17 = Promise.operation.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = v22;
    *(v18 + 24) = v23;

    v17(sub_10042C67C, v18);

    (*(v21 + 8))(v8, v6);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_1004207A4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a4;
  v23 = a5;
  v19[1] = a3;
  v20 = a2;
  v6 = sub_100140278(&unk_1008F2010);
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  v9 = type metadata accessor for ServiceSubscription();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&qword_1008ED0A8);
  __chkstk_darwin(v13);
  v15 = (v19 - v14);
  sub_10001B104(a1, v19 - v14, &qword_1008ED0A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v15;
    v25 = 1;
    swift_errorRetain();
    v22(&v24);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v20(v12);
    v17 = Promise.operation.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = v22;
    *(v18 + 24) = v23;

    v17(sub_10042C67C, v18);

    (*(v21 + 8))(v8, v6);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_100420A84(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a4;
  v23 = a5;
  v19[1] = a3;
  v20 = a2;
  v6 = sub_100140278(&qword_1008ED090);
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  v9 = type metadata accessor for Session();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&qword_1008ED0A0);
  __chkstk_darwin(v13);
  v15 = (v19 - v14);
  sub_10001B104(a1, v19 - v14, &qword_1008ED0A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v15;
    v25 = 1;
    swift_errorRetain();
    v22(&v24);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v20(v12);
    v17 = Promise.operation.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = v22;
    *(v18 + 24) = v23;

    v17(sub_10042C6C8, v18);

    (*(v21 + 8))(v8, v6);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_100420D64(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a4;
  v23 = a5;
  v19[1] = a3;
  v20 = a2;
  v6 = sub_100140278(&unk_1008F2010);
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  v9 = type metadata accessor for IntroSheet();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&qword_1008ED080);
  __chkstk_darwin(v13);
  v15 = (v19 - v14);
  sub_10001B104(a1, v19 - v14, &qword_1008ED080);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v15;
    v25 = 1;
    swift_errorRetain();
    v22(&v24);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v20(v12);
    v17 = Promise.operation.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = v22;
    *(v18 + 24) = v23;

    v17(sub_10042C67C, v18);

    (*(v21 + 8))(v8, v6);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_100421044(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a4;
  v23 = a5;
  v19[1] = a3;
  v20 = a2;
  v6 = sub_100140278(&unk_1008F2010);
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  v9 = type metadata accessor for WhatsNewSheet();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&qword_1008ED078);
  __chkstk_darwin(v13);
  v15 = (v19 - v14);
  sub_10001B104(a1, v19 - v14, &qword_1008ED078);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v15;
    v25 = 1;
    swift_errorRetain();
    v22(&v24);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v20(v12);
    v17 = Promise.operation.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = v22;
    *(v18 + 24) = v23;

    v17(sub_10042C67C, v18);

    (*(v21 + 8))(v8, v6);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_100421324(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a4;
  v23 = a5;
  v19[1] = a3;
  v20 = a2;
  v6 = sub_100140278(&unk_1008F2010);
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  v9 = type metadata accessor for Configuration();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&qword_1008ECFE8);
  __chkstk_darwin(v13);
  v15 = (v19 - v14);
  sub_10001B104(a1, v19 - v14, &qword_1008ECFE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v15;
    v25 = 1;
    swift_errorRetain();
    v22(&v24);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v20(v12);
    v17 = Promise.operation.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = v22;
    *(v18 + 24) = v23;

    v17(sub_10042C67C, v18);

    (*(v21 + 8))(v8, v6);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_100421604(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a4;
  v23 = a5;
  v19[1] = a3;
  v20 = a2;
  v6 = sub_100140278(&unk_1008F2010);
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  v9 = type metadata accessor for ArchivedSession();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&qword_1008ED070);
  __chkstk_darwin(v13);
  v15 = (v19 - v14);
  sub_10001B104(a1, v19 - v14, &qword_1008ED070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v15;
    v25 = 1;
    swift_errorRetain();
    v22(&v24);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v20(v12);
    v17 = Promise.operation.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = v22;
    *(v18 + 24) = v23;

    v17(sub_10042C67C, v18);

    (*(v21 + 8))(v8, v6);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_1004218E4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a4;
  v23 = a5;
  v19[1] = a3;
  v20 = a2;
  v6 = sub_100140278(&qword_1008ED030);
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  v9 = type metadata accessor for CatalogWorkoutDetail();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&qword_1008ED040);
  __chkstk_darwin(v13);
  v15 = (v19 - v14);
  sub_10001B104(a1, v19 - v14, &qword_1008ED040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v15;
    v25 = 1;
    swift_errorRetain();
    v22(&v24);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v20(v12);
    v17 = Promise.operation.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = v22;
    *(v18 + 24) = v23;

    v17(sub_10042C67C, v18);

    (*(v21 + 8))(v8, v6);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_100421BC4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v22[1] = a3;
  v23 = a2;
  v26 = a1;
  v5 = sub_100140278(&qword_1008ED010);
  __chkstk_darwin(v5);
  v7 = (v22 - v6);
  v8 = sub_100140278(qword_1008F2390);
  v24 = *(v8 - 8);
  v25 = v8;
  __chkstk_darwin(v8);
  v10 = v22 - v9;
  v11 = type metadata accessor for ShelfLockupDescriptor();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100140278(&qword_1008ED018);
  __chkstk_darwin(v15);
  v17 = (v22 - v16);
  sub_10001B104(v26, v22 - v16, &qword_1008ED018);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v7 = *v17;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v27(v7);

    return sub_10000EA04(v7, &qword_1008ED010);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v23(v14);
    v19 = v25;
    v20 = Promise.operation.getter();
    v21 = swift_allocObject();
    *(v21 + 16) = v27;
    *(v21 + 24) = v28;

    v20(sub_10042C684, v21);

    (*(v24 + 8))(v10, v19);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_100421F10(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a4;
  v23 = a5;
  v19[1] = a3;
  v20 = a2;
  v6 = sub_100140278(&unk_1008F2010);
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  v9 = type metadata accessor for NavigationRequest();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&qword_1008ED010);
  __chkstk_darwin(v13);
  v15 = (v19 - v14);
  sub_10001B104(a1, v19 - v14, &qword_1008ED010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v15;
    v25 = 1;
    swift_errorRetain();
    v22(&v24);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v20(v12);
    v17 = Promise.operation.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = v22;
    *(v18 + 24) = v23;

    v17(sub_10042C67C, v18);

    (*(v21 + 8))(v8, v6);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_1004221F0(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v23 = a3;
  v24 = a2;
  v6 = sub_100140278(qword_1008F2390);
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for NavigationRequest();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&qword_1008ED010);
  __chkstk_darwin(v13);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v18 = (&v23 - v17);
  sub_10001B104(a1, &v23 - v17, &qword_1008ED010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v15 = *v18;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v27(v15);

    return sub_10000EA04(v15, &qword_1008ED010);
  }

  else
  {
    (*(v10 + 32))(v12, v18, v9);
    v24(v12);
    v20 = v26;
    v21 = Promise.operation.getter();
    v22 = swift_allocObject();
    *(v22 + 16) = v27;
    *(v22 + 24) = v28;

    v21(sub_100429170, v22);

    (*(v25 + 8))(v8, v20);
    return (*(v10 + 8))(v12, v9);
  }
}

void sub_10042250C(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = sub_100140278(a7);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v24 - v17;
  v24 = a1;
  if (a2)
  {
    v25 = 1;
    swift_errorRetain();
    a5(&v24);
    v19 = a1;
    v20 = 1;
  }

  else
  {
    v21 = a1;
    a3(&v24);
    v22 = Promise.operation.getter();
    v23 = swift_allocObject();
    *(v23 + 16) = a5;
    *(v23 + 24) = a6;

    v22(a10, v23);

    (*(v16 + 8))(v18, v15);
    v19 = a1;
    v20 = 0;
  }

  sub_100428CE8(v19, v20);
}

uint64_t sub_1004226A8(uint64_t result, uint64_t (*a2)(uint64_t *))
{
  v2 = *(result + 8);
  v3 = *result;
  v4 = v2;
  if (a2)
  {
    return a2(&v3);
  }

  return result;
}

uint64_t sub_100422710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100140278(&unk_1008F2010);
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  __chkstk_darwin(v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  v38[3] = a3;
  v38[4] = a4;
  v17 = sub_100005994(v38);
  (*(*(a3 - 8) + 16))(v17, a1, a3);
  v18 = (*(a4 + 16))(a3, a4);
  if (!v18)
  {
    return sub_100005A40(v38);
  }

  v19 = v18;
  v20 = static HealthDataConstants.workoutSessionIdentifierProperty.getter();
  if (!*(v19 + 16))
  {

    goto LABEL_7;
  }

  v22 = sub_100066F20(v20, v21);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
LABEL_7:

    return sub_100005A40(v38);
  }

  sub_10000B1B4(*(v19 + 56) + 32 * v22, v37);

  if (swift_dynamicCast())
  {
    sub_1000066AC((a2 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_archivedSessionClient), *(a2 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_archivedSessionClient + 24));
    dispatch thunk of ArchivedSessionClientProtocol.deleteArchivedSession(sessionIdentifier:)();

    sub_100007C5C(v38, v37);
    v25 = swift_allocObject();
    sub_100006260(v37, v25 + 16);
    v26 = swift_allocObject();
    *(v26 + 16) = sub_100289CE8;
    *(v26 + 24) = v25;
    v27 = v36;
    (*(v36 + 16))(v10, v13, v8);
    v28 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v29 = swift_allocObject();
    (*(v27 + 32))(v29 + v28, v10, v8);
    v30 = (v29 + ((v9 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v30 = sub_10042C604;
    v30[1] = v26;
    Promise.init(asyncOperation:)();
    v31 = *(v27 + 8);
    v31(v13, v8);
    v32 = Promise.operation.getter();
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    v32(sub_10042C67C, v33);

    v31(v16, v8);
  }

  return sub_100005A40(v38);
}

uint64_t sub_100422B24(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return Promise.init(asyncOperation:)();
}

uint64_t sub_100422BB8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  sub_100140278(&qword_1008DD900);

  return Promise.init(asyncOperation:)();
}

uint64_t sub_100422C68(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v8 = *a5;
  a3(&v9, &v8);
  v6 = v9;
  v10 = 0;
  a1(&v9);
  return sub_10042C468(v6, 0);
}

uint64_t sub_100422CF8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v118 = a2;
  v109 = sub_100140278(&qword_1008DD8D8);
  v108 = *(v109 - 8);
  v11 = __chkstk_darwin(v109);
  v105 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v12;
  __chkstk_darwin(v11);
  v106 = &v97 - v13;
  v14 = sub_100140278(&unk_1008F2010);
  v113 = *(v14 - 8);
  v114 = v14;
  v15 = __chkstk_darwin(v14);
  v110 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v111 = &v97 - v18;
  v107 = v19;
  __chkstk_darwin(v17);
  v112 = &v97 - v20;
  v21 = type metadata accessor for CatalogLockupPlaceholder();
  v116 = *(v21 - 8);
  v117 = v21;
  __chkstk_darwin(v21);
  v115 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v23[2] = a3;
  v23[3] = a4;
  v23[4] = a5;
  v23[5] = a6;
  v125[3] = sub_1000059F8(0, &qword_1008ED7C0);
  v125[4] = &off_10084F7C0;
  v125[0] = a1;
  v119 = a3;

  v24 = a4;
  v25 = a1;
  v120 = a5;
  v121 = a6;
  sub_10000B210(a5);
  v26 = sub_100289324();
  if (!v26)
  {
    goto LABEL_9;
  }

  v27 = v26;
  v28 = static HealthDataConstants.catalogWorkoutIdentifierProperty.getter();
  if (!*(v27 + 16))
  {

    goto LABEL_8;
  }

  v30 = sub_100066F20(v28, v29);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  sub_10000B1B4(*(v27 + 56) + 32 * v30, v122);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    static os_log_type_t.error.getter();
    v54 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1006D1F70;
    *(v55 + 56) = &type metadata for String;
    v56 = sub_10000A788();
    *(v55 + 64) = v56;
    *(v55 + 32) = 0xD00000000000002ALL;
    *(v55 + 40) = 0x8000000100748BB0;
    v57 = v54;
    v58 = [v25 description];
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v24;
    v62 = v61;

    *(v55 + 96) = &type metadata for String;
    *(v55 + 104) = v56;
    *(v55 + 72) = v59;
    *(v55 + 80) = v62;
    os_log(_:dso:log:_:_:)();

    sub_100697930(0, v119, v60, v120, v121);
    goto LABEL_10;
  }

  v103 = v123;
  v101 = v124;
  v102 = static os_log_type_t.default.getter();
  v33 = HKLogActivity;
  v100 = sub_100140278(&unk_1008E4E50);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1006D1F70;
  *(v34 + 56) = &type metadata for String;
  v35 = sub_10000A788();
  *(v34 + 64) = v35;
  *(v34 + 32) = 0xD00000000000002ALL;
  *(v34 + 40) = 0x8000000100748BB0;
  v99 = 0x8000000100748BB0;
  v36 = v33;
  v37 = [v25 description];
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  *(v34 + 96) = &type metadata for String;
  *(v34 + 104) = v35;
  v98 = v35;
  *(v34 + 72) = v38;
  *(v34 + 80) = v40;
  v41 = v101;
  v42 = v103;
  os_log(_:dso:log:_:_:)();

  v43 = v118;
  v44 = *(v118 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogItemViewModelCache);
  v45 = String._bridgeToObjectiveC()();
  v46 = [v44 objectForKey:v45];

  if (v46)
  {
    static os_log_type_t.default.getter();
    v47 = HKLogActivity;
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1006D64F0;
    v49 = v98;
    *(v48 + 56) = &type metadata for String;
    *(v48 + 64) = v49;
    v50 = v99;
    *(v48 + 32) = 0xD00000000000002ALL;
    *(v48 + 40) = v50;
    *(v48 + 96) = &type metadata for String;
    *(v48 + 104) = v49;
    *(v48 + 72) = v42;
    *(v48 + 80) = v41;
    *(v48 + 136) = type metadata accessor for CatalogItemViewModel();
    *(v48 + 144) = sub_100429104(&qword_1008DD8F8, type metadata accessor for CatalogItemViewModel);
    *(v48 + 112) = v46;
    v51 = v47;
    v52 = v46;
    os_log(_:dso:log:_:_:)();

    v53 = v52;
    sub_100697930(v46, v119, v24, v120, v121);
  }

  else
  {
    v64 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v65 = swift_allocObject();
    v65[2] = v64;
    v65[3] = v42;
    v65[4] = v41;
    v65[5] = sub_100428CF4;
    v65[6] = v23;
    v66 = v65;
    sub_100007C5C(v125, v122);
    v67 = swift_allocObject();
    v121 = v67;
    sub_100006260(v122, v67 + 16);
    *(v67 + 56) = sub_100428CF4;
    *(v67 + 64) = v23;
    swift_retain_n();

    v68 = v115;
    CatalogLockupPlaceholder.init(identifier:referenceType:editorialCardIdentifier:)();
    sub_1000066AC((v43 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient), *(v43 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient + 24));
    sub_100140278(&qword_1008DD8F0);
    v69 = v116;
    v70 = (*(v116 + 80) + 32) & ~*(v116 + 80);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_1006D46C0;
    (*(v69 + 16))(v71 + v70, v68, v117);
    v72 = v106;
    dispatch thunk of CatalogClientProtocol.fetchRemoteCatalogLockups(displayStyle:placeholders:)();

    v73 = swift_allocObject();
    *(v73 + 16) = sub_100428D00;
    *(v73 + 24) = v66;
    v120 = v66;
    v74 = swift_allocObject();
    *(v74 + 16) = sub_100428D18;
    *(v74 + 24) = v73;
    v75 = v108;
    v76 = v105;
    v77 = v109;
    (*(v108 + 16))(v105, v72, v109);
    v78 = (*(v75 + 80) + 16) & ~*(v75 + 80);
    v79 = (v104 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
    v80 = swift_allocObject();
    (*(v75 + 32))(v80 + v78, v76, v77);
    v81 = (v80 + v79);
    *v81 = sub_100428D44;
    v81[1] = v74;

    v82 = v111;
    Promise.init(asyncOperation:)();
    (*(v75 + 8))(v72, v77);
    v83 = swift_allocObject();
    v84 = v121;
    *(v83 + 16) = sub_1001739A0;
    *(v83 + 24) = v84;
    v85 = swift_allocObject();
    *(v85 + 16) = sub_10042C698;
    *(v85 + 24) = v83;
    v86 = v113;
    v87 = v114;
    v88 = v110;
    (*(v113 + 16))(v110, v82, v114);
    v89 = (*(v86 + 80) + 16) & ~*(v86 + 80);
    v90 = (v107 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
    v91 = swift_allocObject();
    (*(v86 + 32))(v91 + v89, v88, v87);
    v92 = (v91 + v90);
    *v92 = sub_10042C604;
    v92[1] = v85;

    v93 = v112;
    Promise.init(asyncOperation:)();
    v94 = *(v86 + 8);
    v94(v82, v87);
    v95 = Promise.operation.getter();
    v96 = swift_allocObject();
    *(v96 + 16) = 0;
    *(v96 + 24) = 0;
    v95(sub_10042C67C, v96);

    v94(v93, v87);
    (*(v116 + 8))(v115, v117);
  }

LABEL_10:
  sub_100005A40(v125);
}

uint64_t sub_1004238E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void (*a7)(void), uint64_t a8)
{
  v103 = a3;
  v15 = sub_100140278(&unk_1008E9B20);
  __chkstk_darwin(v15 - 8);
  v88 = &v83 - v16;
  v98 = sub_100140278(&qword_1008ED000);
  v92 = *(v98 - 8);
  v17 = __chkstk_darwin(v98);
  v93 = v18;
  v94 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v95 = &v83 - v19;
  v102 = sub_100140278(&unk_1008F2010);
  v100 = *(v102 - 8);
  v20 = __chkstk_darwin(v102);
  v99 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v96 = &v83 - v23;
  v97 = v24;
  __chkstk_darwin(v22);
  v101 = &v83 - v25;
  v87 = type metadata accessor for Trainer();
  v86 = *(v87 - 8);
  v26 = __chkstk_darwin(v87);
  v84 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v83 - v28;
  v30 = swift_allocObject();
  v30[2] = a4;
  v30[3] = a5;
  v30[4] = a6;
  v30[5] = a7;
  v104 = v30;
  v30[6] = a8;
  v89 = a4;

  v85 = a5;
  v31 = a6;
  v90 = a7;
  v91 = a8;
  sub_10000B210(a7);
  static os_log_type_t.default.getter();
  v32 = HKLogActivity;
  v33 = sub_100140278(&unk_1008E4E50);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1006D1F70;
  *(v34 + 56) = &type metadata for String;
  v35 = sub_10000A788();
  *(v34 + 32) = 0xD000000000000024;
  *(v34 + 40) = 0x800000010075CB00;
  *(v34 + 96) = &type metadata for String;
  *(v34 + 104) = v35;
  *(v34 + 64) = v35;
  *(v34 + 72) = a1;
  *(v34 + 80) = a2;
  v36 = v32;

  os_log(_:dso:log:_:_:)();

  v37 = v103;
  v38 = a1;

  v39 = OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_trainerCache;
  swift_beginAccess();
  v40 = *(v37 + v39);
  if (!*(v40 + 16))
  {
    goto LABEL_5;
  }

  v41 = sub_100066F20(a1, a2);
  if ((v42 & 1) == 0)
  {

LABEL_5:
    v54 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v55 = swift_allocObject();
    v55[2] = v54;
    v55[3] = a1;
    v55[4] = a2;
    v55[5] = sub_1004292D8;
    v56 = v104;
    v55[6] = v104;
    v57 = swift_allocObject();
    v57[2] = a1;
    v57[3] = a2;
    v57[4] = sub_1004292D8;
    v57[5] = v56;
    sub_1000066AC((v37 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient), *(v37 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient + 24));
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v58 = v95;
    dispatch thunk of CatalogClientProtocol.fetchRemoteTrainerDetail(_:)();
    v59 = swift_allocObject();
    *(v59 + 16) = sub_10042C688;
    *(v59 + 24) = v55;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_10042C6B0;
    *(v60 + 24) = v59;
    v61 = v92;
    v62 = v94;
    v63 = v98;
    (*(v92 + 16))(v94, v58, v98);
    v64 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v65 = (v93 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
    v66 = swift_allocObject();
    (*(v61 + 32))(v66 + v64, v62, v63);
    v67 = (v66 + v65);
    *v67 = sub_10042C60C;
    v67[1] = v60;

    v68 = v96;
    Promise.init(asyncOperation:)();
    (*(v61 + 8))(v58, v63);
    v69 = swift_allocObject();
    *(v69 + 16) = sub_10042C600;
    *(v69 + 24) = v57;
    v70 = swift_allocObject();
    *(v70 + 16) = sub_10042C698;
    *(v70 + 24) = v69;
    v71 = v99;
    v72 = v100;
    v73 = v102;
    (*(v100 + 16))(v99, v68, v102);
    v74 = (*(v72 + 80) + 16) & ~*(v72 + 80);
    v75 = (v97 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = swift_allocObject();
    (*(v72 + 32))(v76 + v74, v71, v73);
    v77 = (v76 + v75);
    *v77 = sub_10042C604;
    v77[1] = v70;

    v78 = v101;
    Promise.init(asyncOperation:)();
    v79 = *(v72 + 8);
    v79(v68, v73);
    v80 = Promise.operation.getter();
    v81 = swift_allocObject();
    *(v81 + 16) = 0;
    *(v81 + 24) = 0;
    v80(sub_10042C67C, v81);

    v79(v78, v73);
  }

  v43 = v86;
  v44 = *(v40 + 56) + *(v86 + 72) * v41;
  v101 = v38;
  v45 = *(v86 + 16);
  v103 = v86 + 16;
  v46 = v84;
  v47 = v87;
  v100 = v33;
  v45(v84, v44, v87);

  (*(v43 + 32))(v29, v46, v47);
  LODWORD(v102) = static os_log_type_t.default.getter();
  v48 = HKLogActivity;
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1006D64F0;
  *(v49 + 56) = &type metadata for String;
  *(v49 + 64) = v35;
  *(v49 + 32) = 0xD000000000000024;
  *(v49 + 40) = 0x800000010075CB00;
  *(v49 + 96) = &type metadata for String;
  *(v49 + 104) = v35;
  *(v49 + 72) = v101;
  *(v49 + 80) = a2;

  v50 = v48;
  v51 = Trainer.description.getter();
  *(v49 + 136) = &type metadata for String;
  *(v49 + 144) = v35;
  *(v49 + 112) = v51;
  *(v49 + 120) = v52;
  os_log(_:dso:log:_:_:)();

  v53 = v88;
  v45(v88, v29, v47);
  (*(v43 + 56))(v53, 0, 1, v47);
  sub_1004D7C1C(v53, v89, v85, v90, v91);
  sub_10000EA04(v53, &unk_1008E9B20);
  (*(v43 + 8))(v29, v47);
}

uint64_t sub_1004242A4(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  *&v128 = a2;
  v120 = sub_100140278(&qword_1008DD8D8);
  v119 = *(v120 - 8);
  v13 = __chkstk_darwin(v120);
  v117 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v14;
  __chkstk_darwin(v13);
  v118 = &v108 - v15;
  v16 = sub_100140278(&unk_1008F2010);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v121 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v122 = &v108 - v21;
  __chkstk_darwin(v20);
  v23 = &v108 - v22;
  v24 = type metadata accessor for CatalogLockupPlaceholder();
  v126 = *(v24 - 8);
  v127 = v24;
  __chkstk_darwin(v24);
  v125 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_allocObject();
  v26[2] = a3;
  v26[3] = a4;
  v26[4] = a5;
  v26[5] = a6;
  v131 = v26;
  v26[6] = a7;
  v136 = type metadata accessor for MindfulnessSessionViewModel();
  v137 = &off_10084F7A8;
  v130 = v136;
  v135 = a1;

  v129 = a4;
  v27 = a5;
  v28 = a1;
  v123 = a6;
  v124 = a7;
  sub_10000B210(a6);
  v29 = MindfulnessSessionViewModel.metadata.getter();
  if (!v29)
  {
    goto LABEL_9;
  }

  v30 = v29;
  v115 = v27;
  v31 = static HealthDataConstants.catalogWorkoutIdentifierProperty.getter();
  if (!*(v30 + 16))
  {

    goto LABEL_8;
  }

  v113 = v23;
  v114 = v17;
  v33 = sub_100066F20(v31, v32);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  sub_10000B1B4(*(v30 + 56) + 32 * v33, v132);

  if (swift_dynamicCast())
  {
    v109 = v16;
    v36 = v134;
    v130 = v133;
    v112 = static os_log_type_t.default.getter();
    v37 = HKLogActivity;
    v111 = sub_100140278(&unk_1008E4E50);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1006D1F70;
    *(v38 + 56) = &type metadata for String;
    v39 = sub_10000A788();
    *(v38 + 64) = v39;
    *(v38 + 32) = 0xD00000000000002ALL;
    *(v38 + 40) = 0x8000000100748BB0;
    v110 = 0x8000000100748BB0;
    v40 = v37;
    v41 = [v28 description];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    *(v38 + 96) = &type metadata for String;
    *(v38 + 104) = v39;
    *(v38 + 72) = v42;
    *(v38 + 80) = v44;
    os_log(_:dso:log:_:_:)();

    v45 = v128;
    v46 = *(v128 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogItemViewModelCache);
    v47 = v130;
    v48 = v36;
    v49 = String._bridgeToObjectiveC()();
    v50 = [v46 objectForKey:v49];

    if (v50)
    {
      static os_log_type_t.default.getter();
      v51 = HKLogActivity;
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1006D64F0;
      *(v52 + 56) = &type metadata for String;
      *(v52 + 64) = v39;
      *(v52 + 32) = 0xD00000000000002ALL;
      *(v52 + 40) = v110;
      *(v52 + 96) = &type metadata for String;
      *(v52 + 104) = v39;
      *(v52 + 72) = v47;
      *(v52 + 80) = v48;
      *(v52 + 136) = type metadata accessor for CatalogItemViewModel();
      *(v52 + 144) = sub_100429104(&qword_1008DD8F8, type metadata accessor for CatalogItemViewModel);
      *(v52 + 112) = v50;
      v53 = v51;
      v54 = v50;
      os_log(_:dso:log:_:_:)();

      v55 = v54;
      sub_1004D70DC(v50, a3, v129, v115, v123, v124);
    }

    else
    {
      v75 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v76 = swift_allocObject();
      v76[2] = v75;
      v76[3] = v47;
      v76[4] = v48;
      v76[5] = sub_100429348;
      v77 = v131;
      v76[6] = v131;
      v78 = v76;
      sub_100007C5C(&v135, v132);
      v79 = swift_allocObject();
      v129 = v79;
      sub_100006260(v132, (v79 + 2));
      v79[7] = sub_100429348;
      v79[8] = v77;
      swift_retain_n();

      v80 = v125;
      CatalogLockupPlaceholder.init(identifier:referenceType:editorialCardIdentifier:)();
      sub_1000066AC((v45 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient), *(v45 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient + 24));
      sub_100140278(&qword_1008DD8F0);
      v81 = v126;
      v82 = (*(v126 + 80) + 32) & ~*(v126 + 80);
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_1006D46C0;
      (*(v81 + 16))(v83 + v82, v80, v127);
      v84 = v118;
      dispatch thunk of CatalogClientProtocol.fetchRemoteCatalogLockups(displayStyle:placeholders:)();

      v85 = swift_allocObject();
      *(v85 + 16) = sub_10042C680;
      *(v85 + 24) = v78;
      v124 = v78;
      v86 = swift_allocObject();
      *(v86 + 16) = sub_10042C618;
      *(v86 + 24) = v85;
      v87 = v119;
      v88 = v117;
      v89 = v120;
      (*(v119 + 16))(v117, v84, v120);
      v90 = (*(v87 + 80) + 16) & ~*(v87 + 80);
      v91 = (v116 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
      v92 = swift_allocObject();
      (*(v87 + 32))(v92 + v90, v88, v89);
      v93 = (v92 + v91);
      *v93 = sub_10042C608;
      v93[1] = v86;

      v94 = v122;
      Promise.init(asyncOperation:)();
      (*(v87 + 8))(v84, v89);
      v95 = swift_allocObject();
      v96 = v129;
      *(v95 + 16) = sub_100173EE0;
      *(v95 + 24) = v96;
      v97 = swift_allocObject();
      *(v97 + 16) = sub_10042C698;
      *(v97 + 24) = v95;
      v98 = v114;
      v99 = v121;
      v100 = v109;
      (*(v114 + 16))(v121, v94, v109);
      v101 = (*(v98 + 80) + 16) & ~*(v98 + 80);
      v102 = swift_allocObject();
      (*(v98 + 32))(v102 + v101, v99, v100);
      v103 = (v102 + ((v18 + v101 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v103 = sub_10042C604;
      v103[1] = v97;

      v104 = v113;
      Promise.init(asyncOperation:)();
      v105 = *(v98 + 8);
      v105(v94, v100);
      v106 = Promise.operation.getter();
      v107 = swift_allocObject();
      *(v107 + 16) = 0;
      *(v107 + 24) = 0;
      v106(sub_10042C67C, v107);

      v105(v104, v100);
      (*(v126 + 8))(v125, v127);
    }

    goto LABEL_13;
  }

LABEL_9:
  static os_log_type_t.error.getter();
  v56 = HKLogActivity;
  sub_100140278(&unk_1008E4E50);
  v57 = swift_allocObject();
  v128 = xmmword_1006D1F70;
  *(v57 + 16) = xmmword_1006D1F70;
  *(v57 + 56) = &type metadata for String;
  v58 = sub_10000A788();
  *(v57 + 64) = v58;
  *(v57 + 32) = 0xD00000000000002ALL;
  *(v57 + 40) = 0x8000000100748BB0;
  v59 = v56;
  v60 = [v28 description];
  v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v62;

  *(v57 + 96) = &type metadata for String;
  *(v57 + 104) = v58;
  *(v57 + 72) = v61;
  *(v57 + 80) = v63;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v65 = *(Strong + OBJC_IVAR___CHMindfulnessSessionListTableViewCell_mindfulnessSessionViewModel);
    v66 = Strong;
    v67 = v65;

    if (v65)
    {
      v68 = v129;
      v69 = static NSObject.== infix(_:_:)();

      if (v69)
      {
        static os_log_type_t.error.getter();
        v70 = HKLogActivity;
        v71 = swift_allocObject();
        *(v71 + 16) = v128;
        *(v71 + 56) = &type metadata for String;
        *(v71 + 64) = v58;
        *(v71 + 32) = 0xD000000000000050;
        *(v71 + 40) = 0x800000010075CBD0;
        *(v71 + 96) = v130;
        *(v71 + 104) = sub_100429104(&qword_1008E0A98, &type metadata accessor for MindfulnessSessionViewModel);
        *(v71 + 72) = v68;
        v72 = v68;
        v73 = v70;
        os_log(_:dso:log:_:_:)();
      }
    }
  }

LABEL_13:
  sub_100005A40(&v135);
}

uint64_t sub_100424FD0(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v104 = a2;
  v94 = sub_100140278(&qword_1008DD8D8);
  v93 = *(v94 - 8);
  v5 = *(v93 + 64);
  __chkstk_darwin(v94);
  __chkstk_darwin(v6);
  v99 = &v85 - v7;
  v8 = sub_100140278(&unk_1008F2010);
  v97 = *(v8 - 8);
  v98 = v8;
  v9 = *(v97 + 64);
  __chkstk_darwin(v8);
  v95 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v100 = &v85 - v11;
  __chkstk_darwin(v12);
  v96 = &v85 - v13;
  v14 = type metadata accessor for CatalogLockupPlaceholder();
  v102 = *(v14 - 8);
  v103 = v14;
  __chkstk_darwin(v14);
  v101 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = swift_allocObject();
  *(v105 + 16) = a3;
  v109[3] = sub_1000059F8(0, &qword_1008ED7C0);
  v109[4] = &off_10084F7C0;
  v109[0] = a1;
  _Block_copy(a3);
  v16 = a1;
  v17 = sub_100289324();
  if (!v17)
  {
    goto LABEL_9;
  }

  v18 = v17;
  v19 = static HealthDataConstants.catalogWorkoutIdentifierProperty.getter();
  if (!*(v18 + 16))
  {

    goto LABEL_8;
  }

  v21 = sub_100066F20(v19, v20);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  sub_10000B1B4(*(v18 + 56) + 32 * v21, v106);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    static os_log_type_t.error.getter();
    v43 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1006D1F70;
    *(v44 + 56) = &type metadata for String;
    v45 = sub_10000A788();
    *(v44 + 64) = v45;
    *(v44 + 32) = 0xD00000000000002ALL;
    *(v44 + 40) = 0x8000000100748BB0;
    v46 = v43;
    v47 = [v16 description];
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    *(v44 + 96) = &type metadata for String;
    *(v44 + 104) = v45;
    *(v44 + 72) = v48;
    *(v44 + 80) = v50;
    os_log(_:dso:log:_:_:)();

    a3[2](a3, 0);
    goto LABEL_10;
  }

  v86 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v107;
  v90 = v108;
  LODWORD(v91) = static os_log_type_t.default.getter();
  v24 = HKLogActivity;
  v89 = sub_100140278(&unk_1008E4E50);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1006D1F70;
  *(v25 + 56) = &type metadata for String;
  v26 = sub_10000A788();
  *(v25 + 64) = v26;
  *(v25 + 32) = 0xD00000000000002ALL;
  *(v25 + 40) = 0x8000000100748BB0;
  v88 = 0x8000000100748BB0;
  v27 = v24;
  v28 = [v16 description];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  *(v25 + 96) = &type metadata for String;
  *(v25 + 104) = v26;
  v87 = v26;
  *(v25 + 72) = v29;
  *(v25 + 80) = v31;
  v32 = v92;
  v33 = v90;
  os_log(_:dso:log:_:_:)();

  v34 = v104;
  v35 = *(v104 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogItemViewModelCache);
  v36 = String._bridgeToObjectiveC()();
  v37 = [v35 objectForKey:v36];

  if (v37)
  {
    static os_log_type_t.default.getter();
    v38 = HKLogActivity;
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1006D64F0;
    v40 = v87;
    *(v39 + 56) = &type metadata for String;
    *(v39 + 64) = v40;
    *(v39 + 32) = 0xD00000000000002ALL;
    *(v39 + 40) = v88;
    *(v39 + 96) = &type metadata for String;
    *(v39 + 104) = v40;
    *(v39 + 72) = v32;
    *(v39 + 80) = v33;
    *(v39 + 136) = type metadata accessor for CatalogItemViewModel();
    *(v39 + 144) = sub_100429104(&qword_1008DD8F8, type metadata accessor for CatalogItemViewModel);
    *(v39 + 112) = v37;
    v41 = v38;
    v42 = v37;
    os_log(_:dso:log:_:_:)();

    (a3)[2](a3, v42);
  }

  else
  {
    v52 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v53 = swift_allocObject();
    v53[2] = v52;
    v53[3] = v32;
    v53[4] = v33;
    v53[5] = sub_10042C66C;
    v54 = v105;
    v53[6] = v105;
    v55 = v53;
    sub_100007C5C(v109, v106);
    v56 = swift_allocObject();
    v91 = v56;
    sub_100006260(v106, v56 + 16);
    *(v56 + 56) = sub_10042C66C;
    *(v56 + 64) = v54;
    swift_retain_n();

    v57 = v101;
    CatalogLockupPlaceholder.init(identifier:referenceType:editorialCardIdentifier:)();
    v58 = *(v34 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient + 24);
    v104 = *(v34 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient + 32);
    sub_1000066AC((v34 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient), v58);
    sub_100140278(&qword_1008DD8F0);
    v59 = v102;
    v60 = (*(v102 + 80) + 32) & ~*(v102 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1006D46C0;
    (*(v59 + 16))(v61 + v60, v57, v103);
    v62 = v99;
    dispatch thunk of CatalogClientProtocol.fetchRemoteCatalogLockups(displayStyle:placeholders:)();

    v63 = swift_allocObject();
    *(v63 + 16) = sub_10042C680;
    *(v63 + 24) = v55;
    v89 = v55;
    v64 = swift_allocObject();
    *(v64 + 16) = sub_10042C618;
    *(v64 + 24) = v63;
    v65 = v93;
    v66 = v86;
    v67 = v94;
    (*(v93 + 16))(v86, v62, v94);
    v68 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v69 = swift_allocObject();
    (*(v65 + 32))(v69 + v68, v66, v67);
    v70 = (v69 + ((v5 + v68 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v70 = sub_10042C608;
    v70[1] = v64;

    v71 = v100;
    Promise.init(asyncOperation:)();
    (*(v65 + 8))(v99, v67);
    v72 = swift_allocObject();
    v73 = v91;
    *(v72 + 16) = sub_100173EE0;
    *(v72 + 24) = v73;
    v74 = swift_allocObject();
    *(v74 + 16) = sub_10042C698;
    *(v74 + 24) = v72;
    v76 = v97;
    v75 = v98;
    v77 = v95;
    (*(v97 + 16))(v95, v71, v98);
    v78 = (*(v76 + 80) + 16) & ~*(v76 + 80);
    v79 = swift_allocObject();
    (*(v76 + 32))(v79 + v78, v77, v75);
    v80 = (v79 + ((v9 + v78 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v80 = sub_10042C604;
    v80[1] = v74;

    v81 = v96;
    Promise.init(asyncOperation:)();
    v82 = *(v76 + 8);
    v82(v100, v75);
    v83 = Promise.operation.getter();
    v84 = swift_allocObject();
    *(v84 + 16) = 0;
    *(v84 + 24) = 0;
    v83(sub_10042C67C, v84);

    v82(v81, v75);
    (*(v102 + 8))(v101, v103);
  }

LABEL_10:
  sub_100005A40(v109);
}

void sub_100425B80(uint64_t a1, char *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v107 = a2;
  v97 = sub_100140278(&unk_1008F4FB0);
  v95 = *(v97 - 8);
  v11 = __chkstk_darwin(v97);
  v92 = v12;
  v93 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v94 = &v86 - v13;
  v14 = sub_100140278(&unk_1008F2010);
  v103 = *(v14 - 8);
  v104 = v14;
  v15 = __chkstk_darwin(v14);
  v98 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v99 = &v86 - v18;
  v96 = v19;
  __chkstk_darwin(v17);
  v102 = &v86 - v20;
  CatalogWorkoutsRequest = type metadata accessor for FetchCatalogWorkoutsRequest();
  v100 = *(CatalogWorkoutsRequest - 8);
  v101 = CatalogWorkoutsRequest;
  __chkstk_darwin(CatalogWorkoutsRequest);
  v106 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for FitnessPlusStackViewModel();
  v24 = v23 - 8;
  v90 = *(v23 - 8);
  v25 = *(v90 + 64);
  __chkstk_darwin(v23);
  v91 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_allocObject();
  *(v26 + 2) = a3;
  *(v26 + 3) = a4;
  *(v26 + 4) = a5;
  *(v26 + 5) = a6;
  v108 = v26;
  v87 = a3;

  v86 = a4;
  v88 = a5;
  v89 = a6;
  sub_10000B210(a5);
  static os_log_type_t.default.getter();
  v27 = HKLogActivity;
  sub_100140278(&unk_1008E4E50);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1006D1F70;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_10000A788();
  *(v28 + 64) = v29;
  *(v28 + 32) = 0xD000000000000024;
  *(v28 + 40) = 0x800000010075C800;
  v30 = v27;
  v31 = sub_1003739FC();
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 72) = v31;
  *(v28 + 80) = v32;
  os_log(_:dso:log:_:_:)();

  v33 = a1;

  v34 = (a1 + *(v24 + 36));
  v35 = *v34;
  v36 = v34[1];
  v37 = *&v107[OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_stackViewModelCache];

  v105 = v35;
  v38 = String._bridgeToObjectiveC()();
  v39 = [v37 objectForKey:v38];

  if (!v39)
  {
    goto LABEL_7;
  }

  v40 = *(*&v39[OBJC_IVAR___CHCatalogItemViewModel_workouts] + 16);
  v41 = *(sub_1003743E0() + 2);

  if (v40 != v41)
  {

LABEL_7:
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = v91;
    sub_10042C4D0(v33, v91, type metadata accessor for FitnessPlusStackViewModel);
    v49 = (*(v90 + 80) + 16) & ~*(v90 + 80);
    v50 = (v25 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
    v90 = v33;
    v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
    v53 = v36;
    v54 = swift_allocObject();
    sub_10042C598(v48, v54 + v49, type metadata accessor for FitnessPlusStackViewModel);
    *(v54 + v50) = v47;
    v55 = (v54 + v51);
    v56 = v108;
    *v55 = sub_100426604;
    v55[1] = v56;
    v57 = (v54 + v52);
    *v57 = v105;
    v57[1] = v53;
    sub_10042C4D0(v90, v48, type metadata accessor for FitnessPlusStackViewModel);
    v58 = swift_allocObject();
    v105 = v58;
    sub_10042C598(v48, v58 + v49, type metadata accessor for FitnessPlusStackViewModel);
    v59 = (v58 + v50);
    *v59 = sub_100426604;
    v59[1] = v56;
    swift_retain_n();
    v60 = sub_1003743E0();
    sub_1001AA6D4(v60);

    FetchCatalogWorkoutsRequest.init(identifiers:)();
    sub_1000066AC(&v107[OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient], *&v107[OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient + 24]);
    v61 = v94;
    dispatch thunk of CatalogClientProtocol.fetchRemoteCatalogWorkouts(_:)();
    v62 = swift_allocObject();
    *(v62 + 16) = sub_100426610;
    *(v62 + 24) = v54;
    v63 = swift_allocObject();
    *(v63 + 16) = sub_10042C618;
    *(v63 + 24) = v62;
    v64 = v95;
    v65 = v93;
    v66 = v97;
    (*(v95 + 16))(v93, v61, v97);
    v67 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v68 = (v92 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
    v69 = swift_allocObject();
    (*(v64 + 32))(v69 + v67, v65, v66);
    v70 = (v69 + v68);
    *v70 = sub_100426618;
    v70[1] = v63;

    v71 = v99;
    Promise.init(asyncOperation:)();
    (*(v64 + 8))(v61, v66);
    v72 = swift_allocObject();
    v73 = v105;
    *(v72 + 16) = sub_100426614;
    *(v72 + 24) = v73;
    v74 = swift_allocObject();
    *(v74 + 16) = sub_10042673C;
    *(v74 + 24) = v72;
    v76 = v103;
    v75 = v104;
    v77 = v98;
    (*(v103 + 16))(v98, v71, v104);
    v78 = (*(v76 + 80) + 16) & ~*(v76 + 80);
    v79 = (v96 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
    v80 = swift_allocObject();
    (*(v76 + 32))(v80 + v78, v77, v75);
    v81 = (v80 + v79);
    *v81 = sub_100426764;
    v81[1] = v74;

    v82 = v102;
    Promise.init(asyncOperation:)();
    v83 = *(v76 + 8);
    v83(v71, v75);
    v84 = Promise.operation.getter();
    v85 = swift_allocObject();
    *(v85 + 16) = 0;
    *(v85 + 24) = 0;
    v84(sub_10042C67C, v85);

    v83(v82, v75);
    (*(v100 + 8))(v106, v101);

    return;
  }

  static os_log_type_t.default.getter();
  v42 = HKLogActivity;
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1006D64F0;
  *(v43 + 56) = &type metadata for String;
  *(v43 + 64) = v29;
  *(v43 + 32) = 0xD000000000000024;
  *(v43 + 40) = 0x800000010075C800;
  *(v43 + 96) = &type metadata for String;
  *(v43 + 104) = v29;
  *(v43 + 72) = v105;
  *(v43 + 80) = v36;
  *(v43 + 136) = type metadata accessor for CatalogItemViewModel();
  *(v43 + 144) = sub_100429104(&qword_1008DD8F8, type metadata accessor for CatalogItemViewModel);
  *(v43 + 112) = v39;

  v44 = v42;
  v45 = v39;
  os_log(_:dso:log:_:_:)();

  v107 = v45;
  sub_1003064D0(v39, v87, v86, v88, v89);

  v46 = v107;
}

uint64_t sub_100426650(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100140278(&unk_1008F4FB0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1000066F0(a1, a2, v2 + v6, *v7, v7[1], &unk_1008F4FB0, "8a\v", &unk_100858248, sub_1004267DC);
}

void sub_10042682C(uint64_t a1)
{
  v3 = *(sub_100140278(&qword_1008EB280) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for Artwork() - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for FitnessPlusStackViewModel() - 8);
  v10 = (v8 + *(v9 + 80) + 40) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100418D28(a1, v1 + v4, *(v1 + v5), v1 + v7, v1 + v8, v1 + v10, *(v1 + v11), *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_100426A50(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100140278(&qword_1008ECFD0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1000066F0(a1, a2, v2 + v6, *v7, v7[1], &qword_1008ECFD0, &unk_1006F06F8, &unk_100858360, sub_100426B3C);
}

uint64_t sub_100426B60(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, void *a5, void *a6)
{
  v96 = a1;
  v97 = a3;
  v10 = sub_100140278(&unk_1008E9B20);
  __chkstk_darwin(v10 - 8);
  v84 = &v79 - v11;
  v91 = sub_100140278(&qword_1008ED000);
  v88 = *(v91 - 8);
  v12 = *(v88 + 64);
  v13 = __chkstk_darwin(v91);
  v86 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v87 = &v79 - v14;
  v95 = sub_100140278(&unk_1008F2010);
  v93 = *(v95 - 8);
  v15 = __chkstk_darwin(v95);
  v92 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v89 = &v79 - v18;
  v90 = v19;
  __chkstk_darwin(v17);
  v94 = &v79 - v20;
  v21 = type metadata accessor for Trainer();
  v82 = *(v21 - 8);
  v83 = v21;
  v22 = __chkstk_darwin(v21);
  v24 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v81 = &v79 - v25;
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v98 = v26;
  v26[4] = a6;
  v85 = a4;

  v27 = a5;
  v80 = a6;
  static os_log_type_t.default.getter();
  v28 = HKLogActivity;
  sub_100140278(&unk_1008E4E50);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1006D1F70;
  *(v29 + 56) = &type metadata for String;
  v30 = sub_10000A788();
  *(v29 + 32) = 0xD000000000000024;
  *(v29 + 40) = 0x800000010075CB00;
  *(v29 + 96) = &type metadata for String;
  *(v29 + 104) = v30;
  v31 = v96;
  *(v29 + 64) = v30;
  *(v29 + 72) = v31;
  *(v29 + 80) = a2;
  v32 = v28;

  os_log(_:dso:log:_:_:)();

  v33 = v31;
  v34 = v97;

  v35 = OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_trainerCache;
  swift_beginAccess();
  v36 = *&v34[v35];
  if (!*(v36 + 16))
  {
    goto LABEL_5;
  }

  v37 = sub_100066F20(v33, a2);
  if ((v38 & 1) == 0)
  {

LABEL_5:
    v51 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v52 = swift_allocObject();
    v52[2] = v51;
    v52[3] = v33;
    v52[4] = a2;
    v52[5] = sub_100428EB0;
    v53 = v98;
    v52[6] = v98;
    v54 = swift_allocObject();
    v54[2] = v33;
    v54[3] = a2;
    v54[4] = sub_100428EB0;
    v54[5] = v53;
    sub_1000066AC(&v34[OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient], *&v34[OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient + 24]);
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v55 = v87;
    dispatch thunk of CatalogClientProtocol.fetchRemoteTrainerDetail(_:)();
    v56 = swift_allocObject();
    *(v56 + 16) = sub_100428EBC;
    *(v56 + 24) = v52;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_100428EE0;
    *(v57 + 24) = v56;
    v58 = v88;
    v59 = v86;
    v60 = v91;
    (*(v88 + 16))(v86, v55, v91);
    v61 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v62 = swift_allocObject();
    (*(v58 + 32))(v62 + v61, v59, v60);
    v63 = (v62 + ((v12 + v61 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v63 = sub_100428F08;
    v63[1] = v57;

    v64 = v89;
    Promise.init(asyncOperation:)();
    (*(v58 + 8))(v55, v60);
    v65 = swift_allocObject();
    *(v65 + 16) = sub_100428ED4;
    *(v65 + 24) = v54;
    v66 = swift_allocObject();
    *(v66 + 16) = sub_10042C698;
    *(v66 + 24) = v65;
    v68 = v92;
    v67 = v93;
    v69 = v95;
    (*(v93 + 16))(v92, v64, v95);
    v70 = (*(v67 + 80) + 16) & ~*(v67 + 80);
    v71 = (v90 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
    v72 = swift_allocObject();
    (*(v67 + 32))(v72 + v70, v68, v69);
    v73 = (v72 + v71);
    *v73 = sub_10042C604;
    v73[1] = v66;

    v74 = v94;
    Promise.init(asyncOperation:)();
    v75 = *(v67 + 8);
    v75(v64, v69);
    v76 = Promise.operation.getter();
    v77 = swift_allocObject();
    *(v77 + 16) = 0;
    *(v77 + 24) = 0;
    v76(sub_10042C67C, v77);

    v75(v74, v69);
  }

  v39 = v82;
  v40 = *(v36 + 56) + *(v82 + 72) * v37;
  v41 = v33;
  v42 = *(v82 + 16);
  v95 = v82 + 16;
  v97 = v42;
  v43 = v83;
  (v42)(v24, v40, v83);

  v44 = v81;
  (*(v39 + 32))(v81, v24, v43);
  LODWORD(v94) = static os_log_type_t.default.getter();
  v45 = HKLogActivity;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1006D64F0;
  *(v46 + 56) = &type metadata for String;
  *(v46 + 64) = v30;
  *(v46 + 32) = 0xD000000000000024;
  *(v46 + 40) = 0x800000010075CB00;
  *(v46 + 96) = &type metadata for String;
  *(v46 + 104) = v30;
  *(v46 + 72) = v41;
  *(v46 + 80) = a2;

  v47 = v45;
  v48 = Trainer.description.getter();
  *(v46 + 136) = &type metadata for String;
  *(v46 + 144) = v30;
  *(v46 + 112) = v48;
  *(v46 + 120) = v49;
  os_log(_:dso:log:_:_:)();

  v50 = v84;
  (v97)(v84, v44, v43);
  (*(v39 + 56))(v50, 0, 1, v43);
  sub_10063BADC(v50, v85, v80);
  sub_10000EA04(v50, &unk_1008E9B20);
  (*(v39 + 8))(v44, v43);
}

uint64_t sub_1004274E4(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v128 = sub_100140278(&qword_1008DD8D8);
  v126 = *(v128 - 8);
  v14 = __chkstk_darwin(v128);
  v124 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = v15;
  __chkstk_darwin(v14);
  v125 = &v118 - v16;
  v17 = sub_100140278(&unk_1008F2010);
  v131 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v129 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v130 = &v118 - v21;
  v127 = v22;
  __chkstk_darwin(v20);
  v24 = &v118 - v23;
  v25 = type metadata accessor for CatalogLockupPlaceholder();
  *&v136 = *(v25 - 8);
  __chkstk_darwin(v25);
  v135 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_allocObject();
  v27[2] = a3;
  v27[3] = a4;
  v27[4] = a5;
  v27[5] = a6;
  v139 = v27;
  v27[6] = a7;
  v144 = type metadata accessor for MindfulnessSessionViewModel();
  v145 = &off_10084F7A8;
  v137 = v144;
  v143[0] = a1;
  v138 = a3;
  v132 = a4;

  v28 = a5;
  v29 = a1;
  v133 = a6;
  v134 = a7;
  sub_10000B210(a6);
  v30 = MindfulnessSessionViewModel.metadata.getter();
  if (!v30)
  {
    goto LABEL_11;
  }

  v31 = v30;
  v122 = v25;
  v32 = static HealthDataConstants.catalogWorkoutIdentifierProperty.getter();
  if (!*(v31 + 16))
  {

    goto LABEL_10;
  }

  v121 = v24;
  v34 = sub_100066F20(v32, v33);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  sub_10000B1B4(*(v31 + 56) + 32 * v34, v140);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    static os_log_type_t.error.getter();
    v71 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v72 = swift_allocObject();
    v136 = xmmword_1006D1F70;
    *(v72 + 16) = xmmword_1006D1F70;
    *(v72 + 56) = &type metadata for String;
    v73 = sub_10000A788();
    *(v72 + 64) = v73;
    *(v72 + 32) = 0xD00000000000002ALL;
    *(v72 + 40) = 0x8000000100748BB0;
    v74 = v71;
    v75 = [v29 description];
    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;

    *(v72 + 96) = &type metadata for String;
    *(v72 + 104) = v73;
    *(v72 + 72) = v76;
    *(v72 + 80) = v78;
    os_log(_:dso:log:_:_:)();

    static os_log_type_t.error.getter();
    v79 = HKLogActivity;
    v80 = swift_allocObject();
    *(v80 + 16) = v136;
    *(v80 + 56) = &type metadata for String;
    *(v80 + 64) = v73;
    *(v80 + 32) = 0xD000000000000050;
    *(v80 + 40) = 0x800000010075CBD0;
    *(v80 + 96) = v137;
    *(v80 + 104) = sub_100429104(&qword_1008E0A98, &type metadata accessor for MindfulnessSessionViewModel);
    v81 = v138;
    *(v80 + 72) = v138;
    v82 = v81;
    v83 = v79;
    os_log(_:dso:log:_:_:)();

    goto LABEL_12;
  }

  v137 = v28;
  v118 = v17;
  v37 = v142;
  v138 = v141;
  static os_log_type_t.default.getter();
  v38 = HKLogActivity;
  v120 = sub_100140278(&unk_1008E4E50);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1006D1F70;
  *(v39 + 56) = &type metadata for String;
  v40 = sub_10000A788();
  *(v39 + 64) = v40;
  *(v39 + 32) = 0xD00000000000002ALL;
  *(v39 + 40) = 0x8000000100748BB0;
  v119 = 0x8000000100748BB0;
  v41 = v38;
  v42 = [v29 description];
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  *(v39 + 96) = &type metadata for String;
  *(v39 + 104) = v40;
  *(v39 + 72) = v43;
  *(v39 + 80) = v45;
  v46 = v138;
  v47 = v37;
  v48 = a2;
  os_log(_:dso:log:_:_:)();

  v49 = *(a2 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogItemViewModelCache);
  v50 = String._bridgeToObjectiveC()();
  v51 = [v49 objectForKey:v50];

  if (v51)
  {
    static os_log_type_t.default.getter();
    v52 = HKLogActivity;
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1006D64F0;
    *(v53 + 56) = &type metadata for String;
    *(v53 + 64) = v40;
    v54 = v119;
    *(v53 + 32) = 0xD00000000000002ALL;
    *(v53 + 40) = v54;
    *(v53 + 96) = &type metadata for String;
    *(v53 + 104) = v40;
    *(v53 + 72) = v46;
    *(v53 + 80) = v47;
    *(v53 + 136) = type metadata accessor for CatalogItemViewModel();
    *(v53 + 144) = sub_100429104(&qword_1008DD8F8, type metadata accessor for CatalogItemViewModel);
    *(v53 + 112) = v51;
    v55 = v52;
    v56 = v51;
    os_log(_:dso:log:_:_:)();

    v57 = *&v56[OBJC_IVAR___CHCatalogItemViewModel_title];
    v58 = objc_allocWithZone(NSMutableAttributedString);
    v59 = v56;
    v60 = [v58 initWithAttributedString:v57];
    v61 = objc_allocWithZone(NSAttributedString);
    v62 = String._bridgeToObjectiveC()();
    v63 = [v61 initWithString:v62];

    [v60 appendAttributedString:v63];
    [v60 appendAttributedString:*&v59[OBJC_IVAR___CHCatalogItemViewModel_subtitle]];
    v64 = v132;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v66 = Strong;
      v67 = *(Strong + OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell_titleLabel);

      [v67 setAttributedText:v60];
    }

    v68 = swift_allocObject();
    v70 = v133;
    v69 = v134;
    v68[2] = v133;
    v68[3] = v69;
    v68[4] = v64;

    sub_10000B210(v70);
    sub_100419358(v59, sub_10042914C, v68);
  }

  else
  {
    v85 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v86 = swift_allocObject();
    v86[2] = v85;
    v86[3] = v46;
    v86[4] = v47;
    v86[5] = sub_1004290EC;
    v87 = v139;
    v86[6] = v139;
    sub_100007C5C(v143, v140);
    v88 = swift_allocObject();
    v137 = v88;
    sub_100006260(v140, v88 + 16);
    *(v88 + 56) = sub_1004290EC;
    *(v88 + 64) = v87;
    swift_retain_n();

    v89 = v135;
    CatalogLockupPlaceholder.init(identifier:referenceType:editorialCardIdentifier:)();
    sub_1000066AC((v48 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient), *(v48 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient + 24));
    sub_100140278(&qword_1008DD8F0);
    v90 = v136;
    v91 = (*(v136 + 80) + 32) & ~*(v136 + 80);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_1006D46C0;
    (*(v90 + 16))(v92 + v91, v89, v122);
    v93 = v125;
    dispatch thunk of CatalogClientProtocol.fetchRemoteCatalogLockups(displayStyle:placeholders:)();

    v94 = swift_allocObject();
    *(v94 + 16) = sub_10042C680;
    *(v94 + 24) = v86;
    v95 = swift_allocObject();
    *(v95 + 16) = sub_10042C618;
    *(v95 + 24) = v94;
    v96 = v126;
    v97 = v124;
    v98 = v128;
    (*(v126 + 16))(v124, v93, v128);
    v99 = (*(v96 + 80) + 16) & ~*(v96 + 80);
    v100 = (v123 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
    v101 = swift_allocObject();
    (*(v96 + 32))(v101 + v99, v97, v98);
    v102 = (v101 + v100);
    *v102 = sub_10042C608;
    v102[1] = v95;

    v103 = v130;
    Promise.init(asyncOperation:)();
    (*(v96 + 8))(v93, v98);
    v104 = swift_allocObject();
    v105 = v137;
    *(v104 + 16) = sub_100173EE0;
    *(v104 + 24) = v105;
    v106 = swift_allocObject();
    *(v106 + 16) = sub_10042C698;
    *(v106 + 24) = v104;
    v107 = v131;
    v108 = v129;
    v109 = v118;
    (*(v131 + 16))(v129, v103, v118);
    v110 = (*(v107 + 80) + 16) & ~*(v107 + 80);
    v111 = (v127 + v110 + 7) & 0xFFFFFFFFFFFFFFF8;
    v112 = swift_allocObject();
    (*(v107 + 32))(v112 + v110, v108, v109);
    v113 = (v112 + v111);
    *v113 = sub_10042C604;
    v113[1] = v106;

    v114 = v121;
    Promise.init(asyncOperation:)();
    v115 = *(v107 + 8);
    v115(v103, v109);
    v116 = Promise.operation.getter();
    v117 = swift_allocObject();
    *(v117 + 16) = 0;
    *(v117 + 24) = 0;
    v116(sub_10042C67C, v117);

    v115(v114, v109);
    (*(v136 + 8))(v135, v122);
  }

LABEL_12:
  sub_100005A40(v143);
}

uint64_t sub_100428310(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v90 = a3;
  v7 = sub_100140278(&unk_1008E9B20);
  __chkstk_darwin(v7 - 8);
  v77 = &v74 - v8;
  v85 = sub_100140278(&qword_1008ED000);
  v82 = *(v85 - 8);
  __chkstk_darwin(v85);
  v79 = v9;
  v80 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v81 = &v74 - v11;
  v89 = sub_100140278(&unk_1008F2010);
  v87 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v83 = &v74 - v14;
  v84 = v15;
  __chkstk_darwin(v16);
  v88 = &v74 - v17;
  v18 = type metadata accessor for Trainer();
  v75 = *(v18 - 8);
  v76 = v18;
  __chkstk_darwin(v18);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v78 = &v74 - v22;
  v91 = a4;

  static os_log_type_t.default.getter();
  v23 = HKLogActivity;
  sub_100140278(&unk_1008E4E50);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1006D1F70;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_10000A788();
  *(v24 + 32) = 0xD000000000000024;
  *(v24 + 40) = 0x800000010075CB00;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  v26 = v90;
  *(v24 + 64) = v25;
  *(v24 + 72) = a1;
  *(v24 + 80) = a2;
  v27 = v23;

  os_log(_:dso:log:_:_:)();

  v28 = a1;

  v29 = OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_trainerCache;
  swift_beginAccess();
  v30 = *&v26[v29];
  if (!*(v30 + 16))
  {
    goto LABEL_5;
  }

  v31 = sub_100066F20(a1, a2);
  if ((v32 & 1) == 0)
  {

LABEL_5:
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v46 = swift_allocObject();
    v46[2] = v45;
    v46[3] = a1;
    v46[4] = a2;
    v46[5] = sub_10042BCC8;
    v47 = v91;
    v46[6] = v91;
    v48 = swift_allocObject();
    v48[2] = a1;
    v48[3] = a2;
    v48[4] = sub_10042BCC8;
    v48[5] = v47;
    sub_1000066AC(&v26[OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient], *&v26[OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient + 24]);
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v49 = v81;
    dispatch thunk of CatalogClientProtocol.fetchRemoteTrainerDetail(_:)();
    v50 = swift_allocObject();
    *(v50 + 16) = sub_10042C688;
    *(v50 + 24) = v46;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_10042C6B0;
    *(v51 + 24) = v50;
    v52 = v82;
    v53 = v80;
    v54 = v85;
    (*(v82 + 16))(v80, v49, v85);
    v55 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v56 = (v79 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    (*(v52 + 32))(v57 + v55, v53, v54);
    v58 = (v57 + v56);
    *v58 = sub_10042C60C;
    v58[1] = v51;

    v59 = v83;
    Promise.init(asyncOperation:)();
    (*(v52 + 8))(v49, v54);
    v60 = swift_allocObject();
    *(v60 + 16) = sub_10042C600;
    *(v60 + 24) = v48;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_10042C698;
    *(v61 + 24) = v60;
    v63 = v86;
    v62 = v87;
    v64 = v89;
    (*(v87 + 16))(v86, v59, v89);
    v65 = (*(v62 + 80) + 16) & ~*(v62 + 80);
    v66 = (v84 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = swift_allocObject();
    (*(v62 + 32))(v67 + v65, v63, v64);
    v68 = (v67 + v66);
    *v68 = sub_10042C604;
    v68[1] = v61;

    v69 = v88;
    Promise.init(asyncOperation:)();
    v70 = *(v62 + 8);
    v70(v59, v64);
    v71 = Promise.operation.getter();
    v72 = swift_allocObject();
    *(v72 + 16) = 0;
    *(v72 + 24) = 0;
    v71(sub_10042C67C, v72);

    v70(v69, v64);
  }

  v33 = v75;
  v34 = *(v30 + 56) + *(v75 + 72) * v31;
  v35 = v28;
  v36 = *(v75 + 16);
  v89 = v75 + 16;
  v90 = v36;
  v37 = v76;
  (v36)(v20, v34, v76);

  (*(v33 + 32))(v78, v20, v37);
  static os_log_type_t.default.getter();
  v38 = HKLogActivity;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1006D64F0;
  *(v39 + 56) = &type metadata for String;
  *(v39 + 64) = v25;
  *(v39 + 32) = 0xD000000000000024;
  *(v39 + 40) = 0x800000010075CB00;
  *(v39 + 96) = &type metadata for String;
  *(v39 + 104) = v25;
  *(v39 + 72) = v35;
  *(v39 + 80) = a2;

  v40 = v38;
  v41 = v78;
  v42 = Trainer.description.getter();
  *(v39 + 136) = &type metadata for String;
  *(v39 + 144) = v25;
  *(v39 + 112) = v42;
  *(v39 + 120) = v43;
  os_log(_:dso:log:_:_:)();

  v44 = v77;
  (v90)(v77, v41, v37);
  (*(v33 + 56))(v44, 0, 1, v37);
  sub_10034AFE8(v44);
  sub_10000EA04(v44, &unk_1008E9B20);
  (*(v33 + 8))(v41, v37);
}

void sub_100428CE8(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100428D7C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100140278(&qword_1008DD8D8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1000066F0(a1, a2, v2 + v6, *v7, v7[1], &qword_1008DD8D8, &unk_1006F3890, &unk_1008585B8, sub_100428E68);
}

uint64_t sub_100428F60(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100140278(&qword_1008ED000) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1000066F0(a1, a2, v2 + v6, *v7, v7[1], &qword_1008ED000, &unk_1006F0718, &unk_100858810, sub_10042904C);
}

uint64_t sub_100429104(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100429180()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1004291DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a4(a1, a2, v8, v9, v10);
}

uint64_t sub_1004292F0()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100429360(void *a1, void *a2, void (*a3)(void), uint64_t a4, void *a5, uint64_t a6)
{
  v38 = a1;
  v39 = a2;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v15 = objc_opt_self();

  v16 = a5;

  v17 = [v15 quantityTypeForIdentifier:HKQuantityTypeIdentifierBodyMass];
  if (v17)
  {
    v18 = v17;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = objc_allocWithZone(NSSortDescriptor);
    v20 = String._bridgeToObjectiveC()();

    v21 = [v19 initWithKey:v20 ascending:0];

    v22 = objc_opt_self();
    v23 = [v38 endDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v13, v10);
    v25 = [v22 predicateForSamplesWithStartDate:0 endDate:isa options:0];

    sub_100140278(&unk_1008E4E20);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1006D4E70;
    *(v26 + 32) = v21;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_10042BAD8;
    *(v27 + 24) = v14;
    v28 = objc_allocWithZone(HKSampleQuery);
    sub_1000059F8(0, &qword_1008E2EB0);
    v29 = v18;
    v30 = v25;
    v31 = v21;

    v32 = Array._bridgeToObjectiveC()().super.isa;

    aBlock[4] = sub_10042BAE8;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000DEE0;
    aBlock[3] = &unk_1008599A8;
    v33 = _Block_copy(aBlock);
    v34 = [v28 initWithSampleType:v29 predicate:v30 limit:1 sortDescriptors:v32 resultsHandler:v33];

    _Block_release(v33);

    [v39 executeQuery:v34];
  }

  else
  {
    static os_log_type_t.error.getter();
    v35 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1006D46C0;
    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = sub_10000A788();
    *(v36 + 32) = 0xD00000000000002CLL;
    *(v36 + 40) = 0x800000010075CF40;
    v37 = v35;
    os_log(_:dso:log:_:_:)();

    a3(0);
  }
}

double sub_100429814()
{
  v0 = [objc_opt_self() defaultUserProfile];
  if (!v0)
  {
    goto LABEL_9;
  }

  v1 = v0;
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!v2)
  {
    goto LABEL_9;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v2 + 16) || (v3 = sub_1004C5BC0(v6), (v4 & 1) == 0))
  {

    sub_100282EF8(v6);
LABEL_9:
    v7 = 0u;
    v8 = 0u;
    goto LABEL_10;
  }

  sub_10000B1B4(*(v2 + 56) + 32 * v3, &v7);
  sub_100282EF8(v6);

  if (!*(&v8 + 1))
  {
LABEL_10:
    sub_10000EA04(&v7, &qword_1008E51F0);
    return 68.0299988;
  }

  if (swift_dynamicCast())
  {
    return *v6;
  }

  return 68.0299988;
}

uint64_t sub_100429960(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v96 = a3;
  v95 = a2;
  v101 = sub_100140278(&qword_1008ED028);
  v99 = *(v101 - 8);
  v8 = *(v99 + 64);
  __chkstk_darwin(v101);
  v97 = v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v98 = v90 - v10;
  v11 = sub_100140278(&qword_1008ED030);
  v104 = *(v11 - 8);
  v105 = v11;
  __chkstk_darwin(v11);
  v102 = v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v12;
  __chkstk_darwin(v13);
  v103 = v90 - v14;
  v15 = sub_100140278(&unk_1008F2010);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v106 = v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  *&v107 = v90 - v19;
  __chkstk_darwin(v20);
  v22 = v90 - v21;
  v23 = type metadata accessor for SeymourArtworkSizingBehavior();
  v94 = *(v23 - 8);
  v24 = v94[8];
  __chkstk_darwin(v23 - 8);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  v110 = v25;
  v108 = a4;

  v109 = a1;
  v26 = [a1 metadata];
  if (!v26)
  {
    goto LABEL_8;
  }

  v92 = v22;
  v93 = v16;
  v27 = v26;
  v28 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = static HealthDataConstants.catalogWorkoutIdentifierProperty.getter();
  if (!*(v28 + 16))
  {

    goto LABEL_7;
  }

  v91 = v15;
  v31 = sub_100066F20(v29, v30);
  v33 = v32;

  if ((v33 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  sub_10000B1B4(*(v28 + 56) + 32 * v31, v112);

  if (swift_dynamicCast())
  {
    v90[0] = v111;
    v34 = swift_allocObject();
    v35 = v96;
    swift_unknownObjectWeakInit();
    sub_10042C4D0(v95, v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SeymourArtworkSizingBehavior);
    v36 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v37 = swift_allocObject();
    v108 = v37;
    *(v37 + 16) = sub_10042C630;
    *(v37 + 24) = v34;
    v90[1] = v34;
    sub_10042C598(v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36, type metadata accessor for SeymourArtworkSizingBehavior);
    v38 = swift_allocObject();
    v95 = v38;
    v39 = v110;
    *(v38 + 16) = sub_10042B2FC;
    *(v38 + 24) = v39;
    v40 = swift_allocObject();
    v94 = v40;
    v41 = v109;
    v40[2] = v109;
    v40[3] = sub_10042B2FC;
    v40[4] = v39;
    sub_1000066AC((v35 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient), *(v35 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient + 24));
    swift_retain_n();
    v42 = v41;

    v43 = v98;
    CatalogClientProtocol.fetchRemoteCatalogWorkoutDetail(_:)();

    v44 = v99;
    v45 = v97;
    v46 = v101;
    (*(v99 + 16))(v97, v43, v101);
    v47 = (*(v44 + 80) + 16) & ~*(v44 + 80);
    v48 = swift_allocObject();
    (*(v44 + 32))(v48 + v47, v45, v46);
    v49 = (v48 + ((v8 + v47 + 7) & 0xFFFFFFFFFFFFFFF8));
    v50 = v108;
    *v49 = sub_10042C694;
    v49[1] = v50;

    sub_100140278(&qword_1008ED038);
    v51 = v103;
    Promise.init(asyncOperation:)();
    (*(v44 + 8))(v43, v46);
    v52 = swift_allocObject();
    v53 = v95;
    *(v52 + 16) = sub_10042C674;
    *(v52 + 24) = v53;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_10042C618;
    *(v54 + 24) = v52;
    v56 = v104;
    v55 = v105;
    v57 = v102;
    (*(v104 + 16))(v102, v51, v105);
    v58 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v59 = (v100 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    (*(v56 + 32))(v60 + v58, v57, v55);
    v61 = (v60 + v59);
    *v61 = sub_10042C610;
    v61[1] = v54;

    v62 = v107;
    Promise.init(asyncOperation:)();
    (*(v56 + 8))(v51, v55);
    v63 = swift_allocObject();
    v64 = v94;
    *(v63 + 16) = sub_10042C670;
    *(v63 + 24) = v64;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_10042C698;
    *(v65 + 24) = v63;
    v66 = v93;
    v67 = v106;
    v68 = v91;
    (*(v93 + 16))(v106, v62, v91);
    v69 = (*(v66 + 80) + 16) & ~*(v66 + 80);
    v70 = swift_allocObject();
    (*(v66 + 32))(v70 + v69, v67, v68);
    v71 = (v70 + ((v17 + v69 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v71 = sub_10042C604;
    v71[1] = v65;

    v72 = v92;
    Promise.init(asyncOperation:)();
    v73 = *(v66 + 8);
    v73(v62, v68);
    v74 = Promise.operation.getter();
    v75 = swift_allocObject();
    *(v75 + 16) = 0;
    *(v75 + 24) = 0;
    v74(sub_10042C67C, v75);

    v73(v72, v68);
  }

LABEL_8:
  static os_log_type_t.error.getter();
  v77 = HKLogActivity;
  sub_100140278(&unk_1008E4E50);
  v78 = swift_allocObject();
  v107 = xmmword_1006D1F70;
  *(v78 + 16) = xmmword_1006D1F70;
  *(v78 + 56) = &type metadata for String;
  v79 = sub_10000A788();
  *(v78 + 64) = v79;
  *(v78 + 32) = 0xD00000000000003ALL;
  *(v78 + 40) = 0x800000010075CCF0;
  v80 = sub_1000059F8(0, &qword_1008ED7C0);
  *(v78 + 96) = v80;
  v81 = sub_1001ED4D4();
  *(v78 + 104) = v81;
  v82 = v109;
  *(v78 + 72) = v109;
  v83 = v82;
  v84 = v77;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.error.getter();
  v85 = HKLogActivity;
  v86 = swift_allocObject();
  *(v86 + 16) = v107;
  *(v86 + 56) = &type metadata for String;
  *(v86 + 64) = v79;
  *(v86 + 32) = 0xD000000000000025;
  *(v86 + 40) = 0x800000010075CE10;
  *(v86 + 96) = v80;
  *(v86 + 104) = v81;
  v87 = v108;
  *(v86 + 72) = v108;
  v88 = v87;
  v89 = v85;
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_10042A49C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v96 = a3;
  v95 = a2;
  v101 = sub_100140278(&qword_1008ED028);
  v99 = *(v101 - 8);
  v10 = *(v99 + 64);
  __chkstk_darwin(v101);
  v97 = v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v98 = v91 - v12;
  v13 = sub_100140278(&qword_1008ED030);
  v104 = *(v13 - 8);
  v105 = v13;
  __chkstk_darwin(v13);
  v102 = v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v14;
  __chkstk_darwin(v15);
  v103 = v91 - v16;
  v17 = sub_100140278(&unk_1008F2010);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v106 = v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v107 = v91 - v21;
  __chkstk_darwin(v22);
  *&v108 = v91 - v23;
  v24 = type metadata accessor for SeymourArtworkSizingBehavior();
  v94 = *(v24 - 8);
  v25 = v94[8];
  __chkstk_darwin(v24 - 8);
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v111 = v26;
  v26[4] = a6;
  v109 = a4;

  v110 = a1;
  v27 = [a1 metadata];
  if (!v27)
  {
    goto LABEL_8;
  }

  v93 = v18;
  v28 = v27;
  v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = static HealthDataConstants.catalogWorkoutIdentifierProperty.getter();
  if (!*(v29 + 16))
  {

    goto LABEL_7;
  }

  v92 = v17;
  v32 = sub_100066F20(v30, v31);
  v34 = v33;

  if ((v34 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  sub_10000B1B4(*(v29 + 56) + 32 * v32, v113);

  if (swift_dynamicCast())
  {
    v91[0] = v112;
    v35 = swift_allocObject();
    v36 = v96;
    swift_unknownObjectWeakInit();
    sub_10042C4D0(v95, v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SeymourArtworkSizingBehavior);
    v37 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v38 = swift_allocObject();
    v109 = v38;
    *(v38 + 16) = sub_10042AFEC;
    *(v38 + 24) = v35;
    v91[1] = v35;
    sub_10042C598(v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + v37, type metadata accessor for SeymourArtworkSizingBehavior);
    v39 = swift_allocObject();
    v95 = v39;
    v40 = v111;
    *(v39 + 16) = sub_10042AFE0;
    *(v39 + 24) = v40;
    v41 = swift_allocObject();
    v94 = v41;
    v42 = v110;
    v41[2] = v110;
    v41[3] = sub_10042AFE0;
    v41[4] = v40;
    sub_1000066AC((v36 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient), *(v36 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient + 24));
    swift_retain_n();
    v43 = v42;

    v44 = v98;
    CatalogClientProtocol.fetchRemoteCatalogWorkoutDetail(_:)();

    v45 = v99;
    v46 = v97;
    v47 = v101;
    (*(v99 + 16))(v97, v44, v101);
    v48 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v49 = swift_allocObject();
    (*(v45 + 32))(v49 + v48, v46, v47);
    v50 = (v49 + ((v10 + v48 + 7) & 0xFFFFFFFFFFFFFFF8));
    v51 = v109;
    *v50 = sub_10042AFF4;
    v50[1] = v51;

    sub_100140278(&qword_1008ED038);
    v52 = v103;
    Promise.init(asyncOperation:)();
    (*(v45 + 8))(v44, v47);
    v53 = swift_allocObject();
    v54 = v95;
    *(v53 + 16) = sub_10042AFF8;
    *(v53 + 24) = v54;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_10042C618;
    *(v55 + 24) = v53;
    v57 = v104;
    v56 = v105;
    v58 = v102;
    (*(v104 + 16))(v102, v52, v105);
    v59 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v60 = (v100 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = swift_allocObject();
    (*(v57 + 32))(v61 + v59, v58, v56);
    v62 = (v61 + v60);
    *v62 = sub_10042B118;
    v62[1] = v55;

    v63 = v107;
    Promise.init(asyncOperation:)();
    (*(v57 + 8))(v52, v56);
    v64 = swift_allocObject();
    v65 = v94;
    *(v64 + 16) = sub_10042B020;
    *(v64 + 24) = v65;
    v66 = swift_allocObject();
    *(v66 + 16) = sub_10042C698;
    *(v66 + 24) = v64;
    v67 = v93;
    v68 = v106;
    v69 = v92;
    (*(v93 + 16))(v106, v63, v92);
    v70 = (*(v67 + 80) + 16) & ~*(v67 + 80);
    v71 = swift_allocObject();
    (*(v67 + 32))(v71 + v70, v68, v69);
    v72 = (v71 + ((v19 + v70 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v72 = sub_10042C604;
    v72[1] = v66;

    v73 = v108;
    Promise.init(asyncOperation:)();
    v74 = *(v67 + 8);
    v74(v63, v69);
    v75 = Promise.operation.getter();
    v76 = swift_allocObject();
    *(v76 + 16) = 0;
    *(v76 + 24) = 0;
    v75(sub_10042C67C, v76);

    v74(v73, v69);
  }

LABEL_8:
  static os_log_type_t.error.getter();
  v78 = HKLogActivity;
  sub_100140278(&unk_1008E4E50);
  v79 = swift_allocObject();
  v108 = xmmword_1006D1F70;
  *(v79 + 16) = xmmword_1006D1F70;
  *(v79 + 56) = &type metadata for String;
  v80 = sub_10000A788();
  *(v79 + 64) = v80;
  *(v79 + 32) = 0xD00000000000003ALL;
  *(v79 + 40) = 0x800000010075CCF0;
  v81 = sub_1000059F8(0, &qword_1008ED7C0);
  *(v79 + 96) = v81;
  v82 = sub_1001ED4D4();
  *(v79 + 104) = v82;
  v83 = v110;
  *(v79 + 72) = v110;
  v84 = v83;
  v85 = v78;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.error.getter();
  v86 = HKLogActivity;
  v87 = swift_allocObject();
  *(v87 + 16) = v108;
  *(v87 + 56) = &type metadata for String;
  *(v87 + 64) = v80;
  *(v87 + 32) = 0xD000000000000039;
  *(v87 + 40) = 0x800000010075CD80;
  *(v87 + 96) = v81;
  *(v87 + 104) = v82;
  v88 = v109;
  *(v87 + 72) = v109;
  v89 = v88;
  v90 = v86;
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_10042B02C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100140278(&qword_1008ED028) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1000066F0(a1, a2, v2 + v6, *v7, v7[1], &qword_1008ED028, &unk_1006F0760, &unk_100859210, sub_10042B26C);
}

uint64_t sub_10042B150(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100140278(&qword_1008ED030) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1000066F0(a1, a2, v2 + v6, *v7, v7[1], &qword_1008ED030, &unk_1006F0768, &unk_100859198, sub_10042B23C);
}

uint64_t sub_10042B2B0(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10042B304()
{
  v1 = *(type metadata accessor for SeymourArtworkSizingBehavior() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  if (!swift_getEnumCaseMultiPayload())
  {
    v5 = *(sub_100140278(&unk_1008F4BD0) + 48);
    v6 = type metadata accessor for ArtworkDimension();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_10042B414(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeymourArtworkSizingBehavior() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_10041AFD4(v4, v5, v6, a1);
}

uint64_t sub_10042B564(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100140278(&unk_1008E4D90) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1000066F0(a1, a2, v2 + v6, *v7, v7[1], &unk_1008E4D90, &unk_1006D8F40, &unk_1008583D8, sub_100428C5C);
}

uint64_t sub_10042B650()
{
  v1 = (type metadata accessor for FitnessPlusStackViewModel() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);

  v7(v5 + v1[10], v6);
  v8 = v1[11];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_10042B7FC(uint64_t a1)
{
  v3 = *(type metadata accessor for FitnessPlusStackViewModel() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_100417A1C(a1, v1 + v4, v7, v8, v9, v11, v12);
}

uint64_t sub_10042B8B8()
{
  v1 = (type metadata accessor for FitnessPlusStackViewModel() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);

  v7(v5 + v1[10], v6);
  v8 = v1[11];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_10042BA38(uint64_t a1)
{
  v3 = *(type metadata accessor for FitnessPlusStackViewModel() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100419210(a1, v1 + v4, v5);
}

uint64_t sub_10042BB00(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10042BBB0(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100140278(&qword_1008ED068) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1000066F0(a1, a2, v2 + v6, *v7, v7[1], &qword_1008ED068, &unk_1006F0798, &unk_100859B48, sub_10042BC9C);
}

uint64_t sub_10042BD78()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10042BE88(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_10042BFA4(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100140278(&qword_1008ED0B8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1000066F0(a1, a2, v2 + v6, *v7, v7[1], &qword_1008ED0B8, &unk_1006F0818, &unk_10085A458, sub_10042C438);
}

uint64_t sub_10042C150(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100140278(&qword_1008ED0C0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1000066F0(a1, a2, v2 + v6, *v7, v7[1], &qword_1008ED0C0, &unk_1006F0820, &unk_10085A3E0, sub_10042C358);
}

uint64_t sub_10042C23C()
{
  v1 = sub_100140278(&qword_1008ED0B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10042C3F0(void (*a1)(void))
{
  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_10042C468(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10042C474(void (*a1)(void))
{

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_10042C4D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10042C538(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10042C598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10042C6FC(void *a1)
{
  v2 = v1;
  result = IndexPath.section.getter();
  if (result > 3)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (*(&off_100845B88 + result + 32) <= 1u)
  {
    if (!*(&off_100845B88 + result + 32))
    {
      v5 = String._bridgeToObjectiveC()();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v7 = [a1 dequeueReusableCellWithReuseIdentifier:v5 forIndexPath:isa];

      type metadata accessor for WalkSuggestionCollectionViewCell();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = *(v2 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_suggestedMinutesToWalk + 8);
        v10 = v7;
        if ((v9 & 1) == 0)
        {
          v11 = v8;
          sub_1003E7838();
        }
      }

      v12 = *(v2 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_walkSuggestionCell);
      *(v2 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_walkSuggestionCell) = v8;

      return v7;
    }

    v20 = String._bridgeToObjectiveC()();
    v21 = IndexPath._bridgeToObjectiveC()().super.isa;
    v7 = [a1 dequeueReusableCellWithReuseIdentifier:v20 forIndexPath:v21];

    type metadata accessor for SeymourWorkoutRecommendationCollectionViewCell();
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v23 = v7;
    }

    result = IndexPath.row.getter();
    if ((result & 0x8000000000000000) == 0)
    {
      v24 = *(v1 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_seymourWorkoutRecommendations);
      if (result < *(v24 + 16))
      {
        if (v22)
        {
          v25 = v24 + 16 * result;
          v27 = *(v25 + 32);
          v26 = *(v25 + 40);
          v28 = OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_artworkImageLoader;
          v29 = *sub_1000066AC((v2 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_seymourWorkoutRecommendationDataProvider), *(v2 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_seymourWorkoutRecommendationDataProvider + 24));

          v30 = v22;
          sub_10042D9CC(v27, v26, v29, v2 + v28, v30);
        }

        return v7;
      }

      goto LABEL_35;
    }

    goto LABEL_32;
  }

  if (*(&off_100845B88 + result + 32) == 2)
  {
    v13 = String._bridgeToObjectiveC()();
    v14 = IndexPath._bridgeToObjectiveC()().super.isa;
    v7 = [a1 dequeueReusableCellWithReuseIdentifier:v13 forIndexPath:v14];

    type metadata accessor for WorkoutAppRecommendationCollectionViewCell();
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      v16 = v7;
    }

    result = IndexPath.row.getter();
    if ((result & 0x8000000000000000) == 0)
    {
      v17 = *(v1 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_recentWorkoutAppRecommendations);
      if (result >= *(v17 + 16))
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      sub_100007C5C(v17 + 40 * result + 32, v37);
      if (v15)
      {
        v18 = *sub_1000066AC((v1 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_appRecommendationDataProvider), *(v1 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_appRecommendationDataProvider + 24));
        v19 = v15;
        sub_1006316D8(v37, v18, v19);
LABEL_27:

        goto LABEL_28;
      }

      goto LABEL_28;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v31 = String._bridgeToObjectiveC()();
  v32 = IndexPath._bridgeToObjectiveC()().super.isa;
  v7 = [a1 dequeueReusableCellWithReuseIdentifier:v31 forIndexPath:v32];

  type metadata accessor for AppStoreAppRecommendationCollectionViewCell();
  v33 = swift_dynamicCastClass();
  if (v33)
  {
    v34 = v7;
  }

  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_33;
  }

  v35 = *(v1 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_appStoreRecommendations);
  if (result < *(v35 + 16))
  {
    sub_100007C5C(v35 + 40 * result + 32, v37);
    if (v33)
    {
      v36 = *sub_1000066AC((v1 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_appRecommendationDataProvider), *(v1 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_appRecommendationDataProvider + 24));
      v19 = v33;
      sub_10042DBE8(v37, v36, v19);
      goto LABEL_27;
    }

LABEL_28:
    sub_100005A40(v37);
    return v7;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_10042CDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_100140278(&qword_1008ED0D8);
  v5[10] = swift_task_alloc();
  v6 = type metadata accessor for MetricClickStreamOccurred();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[14] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[15] = v8;
  v5[16] = v7;

  return _swift_task_switch(sub_10042CED0, v8, v7);
}

uint64_t sub_10042CED0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_10042D014;
    v4 = v0[9];
    v3 = v0[10];

    return sub_100344B54(v3, v4);
  }

  else
  {

    (*(v0[12] + 56))(v0[10], 1, 1, v0[11]);
    sub_10000EA04(v0[10], &qword_1008ED0D8);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10042D014()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 136);
  if (v0)
  {

    v5 = *(v3 + 120);
    v6 = *(v3 + 128);
    v7 = sub_10042D2EC;
  }

  else
  {

    v5 = *(v3 + 120);
    v6 = *(v3 + 128);
    v7 = sub_10042D150;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10042D150()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000EA04(v0[10], &qword_1008ED0D8);
  }

  else
  {
    (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = *(Strong + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_fitnessAppContext);

      swift_unknownObjectRetain();
      swift_getObjectType();
      sub_10042EA10();
      dispatch thunk of EventHubProtocol.publish<A>(_:)();
      swift_unknownObjectRelease();
    }

    (*(v0[12] + 8))(v0[13], v0[11]);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_10042D2EC()
{

  (*(v0[12] + 56))(v0[10], 1, 1, v0[11]);
  sub_10000EA04(v0[10], &qword_1008ED0D8);

  v1 = v0[1];

  return v1();
}

void sub_10042D398(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    v2 = static os_log_type_t.error.getter();
    v3 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v2))
    {
      v4 = v3;
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136315138;
      swift_errorRetain();
      sub_100140278(&qword_1008EB640);
      v7 = String.init<A>(describing:)();
      v9 = sub_10000AFDC(v7, v8, &v10);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v4, v2, "[AddToYourRingSuggestion] Failed to load AppStore page: %s", v5, 0xCu);
      sub_100005A40(v6);
    }

    else
    {
    }
  }
}

uint64_t sub_10042D83C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v17[3] = type metadata accessor for AppRecommendationDataProvider();
  v17[4] = &off_10085F1A0;
  v17[0] = a2;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_100007C5C(v17, v16);
  sub_100007C5C(a1, v15);
  type metadata accessor for MainActor();

  v10 = a3;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  sub_100006260(v16, (v12 + 5));
  sub_100006260(v15, (v12 + 10));
  sub_10026E198(0, 0, v8, &unk_1006F0858, v12);

  return sub_100005A40(v17);
}

uint64_t sub_10042D9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  v13 = type metadata accessor for SeymourWorkoutRecommendationDataProvider();
  v23[4] = &off_100848248;
  v23[3] = v13;
  v23[0] = a3;
  v14 = (a5 + OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_recommendation);
  *v14 = a1;
  v14[1] = a2;

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100007C5C(v23, v22);
  sub_100007C5C(a4, v21);
  type metadata accessor for MainActor();
  swift_bridgeObjectRetain_n();

  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  sub_100006260(v22, (v18 + 4));
  v18[9] = a1;
  v18[10] = a2;
  v18[11] = v16;
  sub_100006260(v21, (v18 + 12));

  *(a5 + OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_configurationTask) = sub_100653FFC(0, 0, v12, &unk_1006F0850, v18);

  return sub_100005A40(v23);
}

uint64_t sub_10042DBE8(void *a1, uint64_t a2, char *a3)
{
  v18 = type metadata accessor for AppRecommendationDataProvider();
  v19 = &off_10085F1A0;
  v17[0] = a2;
  v6 = *&a3[OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_titleLabel];
  v7 = a1[3];
  v8 = a1[4];
  sub_1000066AC(a1, v7);
  v9 = *(v8 + 8);

  v9(v7, v8);
  v10 = String._bridgeToObjectiveC()();

  [v6 setText:v10];

  v11 = *&a3[OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_subtitleLabel];
  v12 = a1[3];
  v13 = a1[4];
  sub_1000066AC(a1, v12);
  (*(v13 + 16))(v12, v13);
  v14 = String._bridgeToObjectiveC()();

  [v11 setText:v14];

  v15 = sub_1000066AC(v17, v18);
  sub_10042D83C(a1, *v15, a3);
  return sub_100005A40(v17);
}

unint64_t sub_10042DD50(unint64_t result)
{
  if (result > 3)
  {
    __break(1u);
  }

  else
  {
    if (*(&off_100845B60 + result + 32) > 1u)
    {
      if (*(&off_100845B60 + result + 32) == 2)
      {
        v2 = &OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_recentWorkoutAppRecommendations;
      }

      else
      {
        v2 = &OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_appStoreRecommendations;
      }
    }

    else
    {
      if (!*(&off_100845B60 + result + 32))
      {
        return ~*(v1 + OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_suggestedMinutesToWalk + 8) & 1;
      }

      v2 = &OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_seymourWorkoutRecommendations;
    }

    return *(*(v1 + *v2) + 16);
  }

  return result;
}

id sub_10042DDD0(void *a1)
{
  result = IndexPath.section.getter();
  if (result > 3)
  {
    __break(1u);
  }

  else
  {
    if (*(&off_100845BB0 + result + 32) - 2 < 2)
    {
      v3 = UICollectionElementKindSectionHeader;
      v4 = String._bridgeToObjectiveC()();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v6 = [a1 dequeueReusableSupplementaryViewOfKind:v3 withReuseIdentifier:v4 forIndexPath:isa];

      type metadata accessor for AddToYourRingSectionHeaderView();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        goto LABEL_10;
      }

      return v6;
    }

    if (*(&off_100845BB0 + result + 32))
    {
      v9 = UICollectionElementKindSectionHeader;
      v10 = String._bridgeToObjectiveC()();
      v11 = IndexPath._bridgeToObjectiveC()().super.isa;
      v6 = [a1 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v10 forIndexPath:v11];

      type metadata accessor for AddToYourRingSectionHeaderView();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
LABEL_10:
        v12 = v7;
        v13 = objc_opt_self();
        v6 = v6;
        v14 = [v13 mainBundle];
        v15 = String._bridgeToObjectiveC()();
        v16 = [v14 localizedStringForKey:v15 value:0 table:0];

        if (!v16)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = String._bridgeToObjectiveC()();
        }

        v17 = OBJC_IVAR____TtC10FitnessApp30AddToYourRingSectionHeaderView_titleLabel;
        [*&v12[OBJC_IVAR____TtC10FitnessApp30AddToYourRingSectionHeaderView_titleLabel] setText:v16];

        v18 = sub_1001C9AF8();
        v19 = *&v12[v17];
        [v12 frame];
        [v19 sizeThatFits:{v20, v21}];
        [v18 setConstant:v22];
      }

      return v6;
    }

    v8 = objc_allocWithZone(UICollectionReusableView);

    return [v8 init];
  }

  return result;
}

id sub_10042E128(void *a1, uint64_t a2, uint64_t a3)
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v6 == a3)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v9 == a3)
      {
      }

      else
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v11 & 1) == 0)
        {
          v12 = objc_allocWithZone(UICollectionReusableView);

          return [v12 init];
        }
      }

      v14 = UICollectionElementKindSectionFooter;
      v15 = String._bridgeToObjectiveC()();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v17 = [a1 dequeueReusableSupplementaryViewOfKind:v14 withReuseIdentifier:v15 forIndexPath:isa];

      return v17;
    }
  }

  return sub_10042DDD0(a1);
}

unint64_t sub_10042E2C4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v7 - 8);
  v9 = aBlock - v8;
  result = IndexPath.section.getter();
  if (result > 3)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (*(&off_100845BD8 + result + 32) > 1u)
  {
    if (*(&off_100845BD8 + result + 32) == 2)
    {
      result = IndexPath.row.getter();
      if ((result & 0x8000000000000000) != 0)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v21 = *&v2[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_recentWorkoutAppRecommendations];
      if (result >= *(v21 + 16))
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      sub_100007C5C(v21 + 40 * result + 32, aBlock);
      result = [objc_opt_self() defaultWorkspace];
      if (!result)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      v22 = result;
      v23 = v44;
      v24 = v45;
      sub_1000066AC(aBlock, v44);
      (*(v24 + 3))(v23, v24);
      v25 = String._bridgeToObjectiveC()();

      [v22 openApplicationWithBundleID:v25];

      v26 = aBlock;
    }

    else
    {
      result = IndexPath.row.getter();
      if ((result & 0x8000000000000000) != 0)
      {
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v27 = *&v2[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_appStoreRecommendations];
      if (result >= *(v27 + 16))
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      sub_100007C5C(v27 + 40 * result + 32, v47);
      v28 = v48;
      v29 = v49;
      sub_1000066AC(v47, v48);
      v30 = (*(v29 + 32))(v28, v29);
      if ((v31 & 1) == 0)
      {
        v32 = v30;
        v33 = static os_log_type_t.default.getter();
        v34 = HKLogActivity;
        if (os_log_type_enabled(HKLogActivity, v33))
        {
          v35 = v34;
          v36 = swift_slowAlloc();
          *v36 = 134217984;
          *(v36 + 4) = v32;
          _os_log_impl(&_mh_execute_header, v35, v33, "[AddToYourRingSuggestion] Presenting AppStore page for storeId = %ld", v36, 0xCu);
        }

        v37 = [objc_allocWithZone(SKStoreProductViewController) init];
        [v37 setShowsStoreButton:0];
        sub_100140278(&qword_1008ED0C8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1006D46C0;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v39;
        *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:v32];
        v40 = sub_1004C9520(inited);
        swift_setDeallocating();
        sub_10000EA04(inited + 32, &qword_1008ED0D0);
        sub_10037732C(v40);

        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v45 = sub_10042D398;
        v46 = 0;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1004DCFFC;
        v44 = &unk_10085A4C0;
        v42 = _Block_copy(aBlock);
        [v37 loadProductWithParameters:isa completionBlock:v42];
        _Block_release(v42);

        [v2 presentViewController:v37 animated:1 completion:0];
      }

      v26 = v47;
    }

    return sub_100005A40(v26);
  }

  else if (*(&off_100845BD8 + result + 32))
  {
    result = IndexPath.row.getter();
    if ((result & 0x8000000000000000) == 0)
    {
      v11 = *&v2[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_seymourWorkoutRecommendations];
      if (result < *(v11 + 16))
      {
        v12 = v11 + 16 * result;
        v13 = *(v12 + 32);
        v14 = *(v12 + 40);
        v15 = *&v2[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_fitnessAppContext];

        sub_10063A080(v13, v14, v15);

        v16 = type metadata accessor for TaskPriority();
        (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
        v17 = swift_allocObject();
        swift_unknownObjectWeakInit();
        (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
        type metadata accessor for MainActor();

        v18 = static MainActor.shared.getter();
        v19 = (*(v5 + 80) + 40) & ~*(v5 + 80);
        v20 = swift_allocObject();
        *(v20 + 2) = v18;
        *(v20 + 3) = &protocol witness table for MainActor;
        *(v20 + 4) = v17;
        (*(v5 + 32))(&v20[v19], aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

        sub_10026E198(0, 0, v9, &unk_1006F0840, v20);
      }

      goto LABEL_25;
    }

    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10042E918(uint64_t a1)
{
  v4 = *(type metadata accessor for IndexPath() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002BBC0;

  return sub_10042CDA4(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_10042EA10()
{
  result = qword_1008ED0E0;
  if (!qword_1008ED0E0)
  {
    type metadata accessor for MetricClickStreamOccurred();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ED0E0);
  }

  return result;
}

uint64_t sub_10042EA68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002BACC;

  return sub_1005A9824(a1, v4, v5, (v1 + 4), v6, v7, v8, (v1 + 12));
}

uint64_t sub_10042EB40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BACC;

  return sub_1003A18D0(a1, v4, v5, v6, (v1 + 5), (v1 + 10));
}

uint64_t sub_10042EC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10042ECAC, v6, v5);
}

uint64_t sub_10042ECAC()
{
  v1 = *(v0 + 16);

  v2 = *&v1[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_activitySharingFriendDetailAlertCoordinator];
  v3 = *&v1[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_activitySharingNavigationCoordinator];
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;
  v5 = *(v3 + 112);
  *(v3 + 112) = sub_10043138C;
  *(v3 + 120) = v4;

  v6 = v1;
  sub_1001D3C1C(v5);
  v7 = *(v0 + 8);

  return v7();
}

id sub_10042EFD0(void *a1, uint64_t a2, void **a3)
{
  v3 = *(a2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_badgeImageFactory);
  v4 = *(a2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementsDataProvider);
  v5 = *(a2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_chAwardsDataProvider);
  v6 = *(a2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
  v7 = *(a2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiFormattingManager);
  v8 = *(a2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_friendListManager);
  v9 = *(a2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_chFriendManager);
  v10 = *(a2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_healthStore);
  v26 = *(a2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_wheelchairUseCache);
  v28 = *(a2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutDataProvider);
  v30 = *(a2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutFormattingManager);
  v11 = *(a2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_pauseRingsCoordinator);
  type metadata accessor for ActivitySharingFriendDetailDataProvider();
  swift_allocObject();
  v25 = v11;
  v24 = v3;
  v12 = v4;
  v23 = v5;
  v22 = v6;
  v13 = v7;
  v21 = v8;
  v14 = v9;
  v20 = v10;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v15 = a1;

  v17 = sub_1004BB1A8(v24, v12, a3, v23, v22, v13, v15, v21, v14, v20, v16, v27, v29, v31, v25);

  v18 = objc_allocWithZone(type metadata accessor for ActivitySharingFriendDetailViewController());
  return sub_1003B75EC(v17, v25);
}

id sub_10042F264()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityDashboardContext();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_10042F578(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, _BYTE *a7)
{
  v62 = a3;
  v63 = a6;
  v60 = a4;
  v61 = a5;
  v58 = a1;
  v59 = a2;
  v68 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v11 - 8);
  v12 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_pairedWatchManager;
  type metadata accessor for TrendsPairedWatchManager();
  v13 = swift_allocObject();
  v14 = sub_10029D2E4(&off_100843A20);
  swift_arrayDestroy();
  *(v13 + 16) = v14;
  *(v13 + 24) = 0;
  *&a7[v12] = v13;
  v57 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_lastWheelchairUseValue;
  a7[OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_lastWheelchairUseValue] = 0;
  *&a7[OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_observers] = &_swiftEmptyDictionarySingleton;
  a7[OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_calculatesLongTermFits] = 0;
  v56 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_statisticsByTrendType365;
  v55 = sub_100140278(&qword_1008ED290);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1004CA93C(_swiftEmptyArrayStorage);
  sub_1000078CC();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  v67 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v66 = *(v8 + 104);
  v16 = v68;
  v66(v65);
  v64 = v8 + 104;
  *(v15 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&a7[v56] = v15;
  v56 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_statisticsByTrendType90;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1004CA93C(_swiftEmptyArrayStorage);
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  v18 = v65;
  (v66)(v65, v67, v16);
  v19 = v18;
  *(v17 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&a7[v56] = v17;
  v56 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_mannKendallTestByTrendType90;
  sub_100140278(&qword_1008ED298);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1004CA834(_swiftEmptyArrayStorage);
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  v21 = v67;
  v22 = v68;
  (v66)(v19, v67, v68);
  *(v20 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&a7[v56] = v20;
  v23 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_mannKendallTestByTrendType365;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1004CA834(_swiftEmptyArrayStorage);
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  v25 = v22;
  v26 = v66;
  (v66)(v19, v21, v25);
  *(v24 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&a7[v23] = v24;
  v56 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_fitsByTrendType90;
  sub_100140278(&qword_1008ED2A0);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1004CA74C(_swiftEmptyArrayStorage);
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (v26)(v19, v67, v68);
  *(v27 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&a7[v56] = v27;
  v28 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_fitsByTrendType365;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1004CA74C(_swiftEmptyArrayStorage);
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (v26)(v19, v67, v68);
  v30 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&a7[v28] = v29;
  *(v29 + 24) = v30;
  *&a7[OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_orderedValidUpTrends] = _swiftEmptyArrayStorage;
  *&a7[OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_orderedValidDownTrends] = _swiftEmptyArrayStorage;
  *&a7[OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_orderedInvalidTrends] = _swiftEmptyArrayStorage;
  v31 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_operationQueue;
  v32 = [objc_allocWithZone(NSOperationQueue) init];
  [v32 setQualityOfService:25];
  [v32 setMaxConcurrentOperationCount:1];

  *&a7[v31] = v32;
  v33 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_statisticsCompilation365;
  sub_10025F0B4(v70);
  memcpy(&a7[v33], v70, 0x728uLL);
  memcpy(&a7[OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_statisticsCompilation90], v70, 0x728uLL);
  Date.init(timeIntervalSinceReferenceDate:)();
  *&a7[OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_retryCount] = 0;
  *&a7[OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_maxRetryCount] = 3;
  *&a7[OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_retryInterval] = 0x4034000000000000;
  type metadata accessor for ActivityStatisticsBuilder();
  v34 = swift_allocObject();
  *&a7[OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_statisticsBuilder] = v34;
  v36 = v59;
  v35 = v60;
  *&a7[OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_unitManager] = v60;
  v37 = v58;
  v34[2] = v58;
  v34[3] = v36;
  v38 = v61;
  v39 = v62;
  *&a7[OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_activityDataProvider] = v61;
  *&a7[OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_workoutProvider] = v39;
  v40 = v38;
  a7[v57] = *(v38 + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isWheelchairUser);
  v34[4] = v39;
  v41 = v39;
  v42 = v63;
  *&a7[OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_pregnancyStateProvider] = v63;
  v43 = qword_1008DAFA0;
  v44 = v37;
  v45 = v36;
  v46 = v41;
  v47 = v35;
  v48 = v40;
  v49 = v42;
  if (v43 != -1)
  {
    swift_once();
  }

  a7[OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_fakingEnabled] = byte_1008F8688;
  v50 = type metadata accessor for TrendsDataProvider();
  v69.receiver = a7;
  v69.super_class = v50;
  v51 = objc_msgSendSuper2(&v69, "init");
  v52 = v45;
  v53 = v51;
  sub_10042FD84(v52, v53);

  return v53;
}

void sub_10042FD84(void *a1, char *a2)
{
  v4 = objc_opt_self();
  v5 = [v4 defaultCenter];
  [v5 addObserver:a2 selector:"didReceiveNotificationWithNote:" name:UIApplicationSignificantTimeChangeNotification object:0];

  v6 = [v4 defaultCenter];
  if (qword_1008DAE08 != -1)
  {
    swift_once();
  }

  [v6 addObserver:a2 selector:"didReceiveNotificationWithNote:" name:qword_100925E88 object:0];

  v7 = [v4 defaultCenter];
  if (qword_1008DA5A0 != -1)
  {
    swift_once();
  }

  [v7 addObserver:a2 selector:? name:? object:?];

  if ([a1 numberOfActivitySummaries] >= 1)
  {
    sub_10006CD84();
  }

  v8 = *&a2[OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_workoutProvider];
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  v12[4] = sub_100431398;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000449A8;
  v12[3] = &unk_10085A628;
  v10 = _Block_copy(v12);
  v11 = a2;

  [v8 addUpdateHandler:v10];
  _Block_release(v10);
}

void sub_10042FFD4(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, objc_class *a10, uint64_t a11, char *a12, char *a13, objc_class *a14, objc_class *a15, void *a16, objc_class *a17, void *a18, void *a19)
{
  v20 = v19;
  v184 = a8;
  v191 = a17;
  v189 = a12;
  v187 = a11;
  v186 = a10;
  v185 = a9;
  v190 = a16;
  v183 = a15;
  v188 = a13;
  v182 = a14;
  v28 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v28 - 8);
  v173 = v172 - v29;
  v30 = sub_100140278(&qword_1008E0398);
  v179 = *(v30 - 8);
  v180 = v30;
  __chkstk_darwin(v30);
  v178 = v172 - v31;
  v32 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v32 - 8);
  v176 = v172 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for MetricFormattingHelper();
  __chkstk_darwin(v175);
  v174 = (v172 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v19[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_standardActivityItemsViewModel] = 0;
  *&v19[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_activityDataProvider] = a1;
  *&v19[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_activityDateCache] = a2;
  *&v19[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementsDataProvider] = a3;
  *&v19[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_balanceDataProvider] = a4;
  *&v19[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_pauseRingsCoordinator] = a5;
  *&v19[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_historyDataProvider] = a6;
  *&v19[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutFormattingManager] = a7;
  type metadata accessor for WorkoutImageProvider();
  swift_allocObject();
  v181 = a1;
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v177 = a5;
  v38 = a6;
  v39 = a7;
  v40 = v182;
  *&v19[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutImageProvider] = WorkoutImageProvider.init(healthStore:)();
  v41 = v184;
  *&v19[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutDataProvider] = v184;
  v42 = type metadata accessor for StackFormattingManager();
  v43 = objc_allocWithZone(v42);
  v44 = v183;
  *&v43[OBJC_IVAR____TtC10FitnessApp22StackFormattingManager_fiuiFormattingManager] = v183;
  *&v43[OBJC_IVAR____TtC10FitnessApp22StackFormattingManager_healthStore] = v40;
  v206.receiver = v43;
  v206.super_class = v42;
  v182 = v40;
  v184 = v41;
  v45 = v44;
  *(v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_stackFormattingManager) = objc_msgSendSuper2(&v206, "init");
  v46 = v185;
  v47 = v186;
  *(v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_friendListManager) = v185;
  *(v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_friendsSetupCoordinator) = v47;
  v49 = v187;
  v48 = v188;
  *(v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_chFriendManager) = v187;
  v50 = v189;
  *(v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementLocalizationProvider) = v189;
  *(v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_badgeImageFactory) = v48;
  v51 = objc_allocWithZone(type metadata accessor for SummaryConfigurationProvider());
  v185 = v46;
  v52 = v47;
  v53 = v49;
  v54 = v50;
  v55 = v48;
  v56 = [v51 init];
  v57 = OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_configurationProvider;
  *(v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_configurationProvider) = v56;
  v58 = v190;

  sub_100140278(&qword_1008E4F18);
  Dependencies.resolve<A>(failureHandler:)();

  sub_100006260(&v203, v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_avatarSettingsProvider);

  v187 = sub_100140278(&qword_1008E4F20);
  Dependencies.resolve<A>(failureHandler:)();

  v59 = *(&v203 + 1);
  v60 = v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_eventHub;
  *v60 = v203;
  v60[1] = v59;
  v61 = v182;
  *(v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_healthStore) = v182;
  *(v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiFormattingManager) = v45;
  *(v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext) = v58;
  type metadata accessor for SubscriptionToken();
  swift_allocObject();
  v62 = v61;
  v189 = v45;
  swift_unknownObjectRetain();
  v188 = v58;
  *(v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_subscriptionToken) = SubscriptionToken.init(eventHub:)();
  v63 = v191;
  *(v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_wheelchairUseCache) = v191;
  v64 = objc_allocWithZone(FIUIModel);
  v65 = v62;
  v183 = v63;
  v66 = [v64 initWithHealthStore:v65];
  if (!v66)
  {
    __break(1u);
    goto LABEL_13;
  }

  *(v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiModel) = v66;
  v67 = [objc_allocWithZone(FIMindfulnessSessionDataProvider) initWithHealthStore:v65];
  *(v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_mindfulnessSessionDataProvider) = v67;
  v68 = *(v20 + v57);
  v182 = type metadata accessor for MetricsDataProvider();
  v69 = objc_allocWithZone(v182);
  v70 = OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_lock;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v190 = v181;
  v191 = v65;
  v186 = v184;
  v189 = v189;
  v71 = v67;
  v72 = v68;
  *&v69[v70] = UnfairLock.init()();
  *&v69[OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_observers] = _swiftEmptyArrayStorage;
  *&v69[OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_activeMetrics] = &_swiftEmptySetSingleton;
  *&v69[OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v73 = OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_metricCategoryUpdates;
  sub_100140278(&unk_1008ED270);
  swift_allocObject();
  *&v69[v73] = PassthroughSubject.init()();
  v74 = v190;
  v75 = v191;
  *&v69[OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_activityDataProvider] = v190;
  *&v69[OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_configurationProvider] = v72;
  *&v69[OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_healthStore] = v75;
  v76 = v186;
  *&v69[OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_workoutDataProvider] = v186;
  *&v69[OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_mindfulnessDataProvider] = v71;
  v77 = objc_allocWithZone(CHWorkoutFormattingManager);
  v190 = v74;
  v78 = v75;
  v191 = v76;
  v79 = v71;
  v80 = v189;
  v184 = v79;
  v181 = v72;
  v81 = [v77 initWithFitnessUIFormattingManager:v80 healthStore:v78];
  *&v69[OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_workoutFormattingManager] = v81;
  *&v69[OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_modelViewCache] = sub_1004CB730(_swiftEmptyArrayStorage);
  *&v69[OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_processingModelViewCache] = sub_1004CB91C(_swiftEmptyArrayStorage);
  v82 = [v80 unitManager];
  v83 = [objc_allocWithZone(CHWorkoutDataCalculator) initWithHealthStore:v78 unitManager:v82];
  v186 = v78;

  if (!v83)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *&v69[OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_workoutDataCalculator] = v83;
  v84 = v174;
  v85 = v175;
  *v174 = v80;
  v172[1] = *(v85 + 20);
  v86 = objc_opt_self();
  v189 = v80;
  v87 = [v86 mainBundle];
  v88 = String._bridgeToObjectiveC()();
  v89 = [v87 localizedStringForKey:v88 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v90 = *(v85 + 24);
  *(v84 + v90) = sub_10005772C();
  sub_100431274(v84, &v69[OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_metricFormattingHelper]);
  v202.receiver = v69;
  v202.super_class = v182;
  v91 = objc_msgSendSuper2(&v202, "init");

  v92 = v186;
  *(v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_metricsDataProvider) = v91;
  v93 = [objc_allocWithZone(ACHCloudSyncStatusProvider) initWithHealthStore:v92];
  [v93 activate];
  v94 = [objc_allocWithZone(AACAwardsClient) init];
  v95 = type metadata accessor for AAUIAwardsDataProvider();
  v96 = objc_allocWithZone(v95);
  v97 = v177;
  v98 = v92;
  v186 = v93;
  v184 = v94;
  v99 = AAUIAwardsDataProvider.init(healthStore:pauseRingsCoordinator:cloudSyncStatusProvider:awardsClient:layoutMode:)();
  *(v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_awardsDataProvider) = v99;
  *(&v204 + 1) = v95;
  v205 = &protocol witness table for AAUIAwardsDataProvider;
  *&v203 = v99;
  v100 = type metadata accessor for CHAwardsDataProvider();
  v101 = objc_allocWithZone(v100);
  sub_100007C5C(&v203, v101 + OBJC_IVAR___CHAwardsDataProvider_awardsDataProvider);
  v201.receiver = v101;
  v201.super_class = v100;
  v102 = v99;
  v103 = objc_msgSendSuper2(&v201, "init");
  sub_100005A40(&v203);
  *(v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_chAwardsDataProvider) = v103;
  v104 = [objc_allocWithZone(AAUIAchievementResourceProvider) init];
  *(v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementResourceProvider) = v104;
  type metadata accessor for ActivitySharingHighlightDataProvider();
  swift_allocObject();
  v105 = v98;
  v106 = v185;
  v107 = sub_100024924(v106, v105);

  *(v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_highlightDataProvider) = v107;
  type metadata accessor for ActivitySharingNavigationCoordinator();
  v108 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v108 + 144) = 0;
  *(v108 + 112) = 0u;
  *(v108 + 128) = 0u;
  *(v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_activitySharingNavigationCoordinator) = v108;
  type metadata accessor for ActivitySharingFriendDetailAlertCoordinator();
  v109 = swift_allocObject();
  swift_defaultActor_initialize();
  v110 = OBJC_IVAR____TtC10FitnessApp43ActivitySharingFriendDetailAlertCoordinator__presentedAlertType;
  v203 = 0u;
  v204 = 0u;
  LOBYTE(v205) = -1;
  sub_100140278(&qword_1008E03A0);
  v111 = v178;
  Published.init(initialValue:)();
  (*(v179 + 32))(v109 + v110, v111, v180);
  *(v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_activitySharingFriendDetailAlertCoordinator) = v109;
  v112 = type metadata accessor for MindfulnessSessionFormattingManager();
  v113 = objc_allocWithZone(v112);
  v114 = v189;
  *&v113[OBJC_IVAR___CHMindfulnessSessionFormattingManager_fiuiFormattingManager] = v189;
  *&v113[OBJC_IVAR___CHMindfulnessSessionFormattingManager_healthStore] = v105;
  v200.receiver = v113;
  v200.super_class = v112;
  v115 = v105;
  v116 = v114;
  *(v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_mindfulnessSessionFormattingManager) = objc_msgSendSuper2(&v200, "init");

  sub_100140278(&qword_1008ED278);
  Dependencies.resolve<A>(failureHandler:)();

  sub_100140278(&unk_1008F5010);
  Dependencies.resolve<A>(failureHandler:)();

  Dependencies.resolve<A>(failureHandler:)();

  v117 = v198[5];
  v118 = v198[6];

  sub_100140278(&unk_1008F13C0);
  Dependencies.resolve<A>(failureHandler:)();

  sub_100140278(&qword_1008F5050);
  Dependencies.resolve<A>(failureHandler:)();

  sub_100140278(&unk_1008ED280);
  Dependencies.resolve<A>(failureHandler:)();

  sub_100140278(&qword_1008E1278);
  Dependencies.resolve<A>(failureHandler:)();

  v119 = objc_allocWithZone(type metadata accessor for FitnessPlusCardDataProvider());
  *(v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessPlusCardDataProvider) = sub_1005E0484(&v203, &v199, v117, v118, v198, &v197, &v196, &v195);
  type metadata accessor for FitnessPlusSubscriptionProvider();
  swift_allocObject();
  v120 = v188;
  v121 = sub_1001FF08C();

  v189 = OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessPlusSubscriptionProvider;
  *(v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessPlusSubscriptionProvider) = v121;
  type metadata accessor for CatalogTipActivityTileDataModel();
  swift_allocObject();

  v123 = sub_100611488(v122);

  *(v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_catalogTipDataProvider) = v123;
  v124 = [objc_opt_self() sharedInstance];
  v188 = v116;
  v125 = [v116 unitManager];
  if (!v125)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v126 = v125;
  v187 = v120;
  v127 = *&v120[OBJC_IVAR___CHFitnessAppContext_pregnancyStateProvider];
  v128 = objc_allocWithZone(type metadata accessor for TrendsDataProvider());
  v129 = v190;
  v130 = v115;
  v131 = v191;
  v132 = v127;
  v185 = v130;
  v191 = v129;
  *(v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsDataProvider) = sub_10042F578(v130, v124, v131, v126, v129, v132, v128);
  v133 = type metadata accessor for TrendsFormattingManager();
  v134 = objc_allocWithZone(v133);
  v135 = v188;
  *&v134[OBJC_IVAR____TtC10FitnessApp23TrendsFormattingManager_fiuiFormatter] = v188;
  v194.receiver = v134;
  v194.super_class = v133;
  v136 = v135;
  *(v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsFormattingManager) = objc_msgSendSuper2(&v194, "init");
  *(v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsAvailabilityManager) = a18;
  v137 = qword_1008DAFA0;
  v138 = a18;
  if (v137 != -1)
  {
    swift_once();
  }

  v139 = byte_1008F8688;
  v140 = v185;
  v141 = sub_100021024(v185, byte_1008F8688);
  v142 = v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsUserCharacteristics;
  *v142 = v141;
  *(v142 + 1) = v143;
  v142[16] = v144 & 1;
  static os_log_type_t.info.getter();
  v145 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  v190 = a19;
  if (v139)
  {
    v146 = 0xE600000000000000;
    v147 = 0x736978656C41;
  }

  else
  {
    v148 = FIUICopyUserFirstNameFromAddressBook();
    if (v148)
    {
      v149 = v148;
      v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v146 = v150;
    }

    else
    {
      v147 = 0;
      v146 = 0;
    }
  }

  v151 = (v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsUserFirstName);
  *v151 = v147;
  v151[1] = v146;
  v152 = *&v189[v20];
  v189 = *(v187 + OBJC_IVAR___CHFitnessAppContext_seymourAvailabilityManager);
  v153 = v189;
  v154 = type metadata accessor for SummaryUserProfileProvider();
  v155 = objc_allocWithZone(v154);
  *&v155[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v155[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_notificationCenterObservers] = _swiftEmptyArrayStorage;
  *&v155[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_forceUpdateNotifyToken] = -1;
  *&v155[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_fetchRequests] = _swiftEmptyArrayStorage;
  v156 = v191;
  *&v155[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_activityDataProvider] = v191;
  *&v155[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_fitnessPlusSubscriptionProvider] = v152;
  *&v155[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_healthStore] = v140;
  *&v155[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_seymourAvailabilityManager] = v153;
  *&v155[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_trendsAvailabilityManager] = v138;
  v157 = v183;
  *&v155[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_wheelchairCache] = v183;
  sub_100140278(&unk_1008ED288);
  v158 = swift_allocObject();
  *(v158 + 28) = 0;
  *(v158 + 16) = 0;
  *(v158 + 24) = 1;
  *&v155[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_protectedState] = v158;
  v193.receiver = v155;
  v193.super_class = v154;
  v159 = v156;
  v160 = v140;
  v161 = v157;
  v162 = v138;

  v163 = v189;
  *(v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_summaryUserProfileProvider) = objc_msgSendSuper2(&v193, "init");
  v164 = v190;
  *(v20 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutVoiceAvailabilityProvider) = v190;
  v165 = type metadata accessor for ActivityDashboardContext();
  v192.receiver = v20;
  v192.super_class = v165;
  v166 = v164;
  v167 = objc_msgSendSuper2(&v192, "init");

  sub_100042078();

  v168 = type metadata accessor for TaskPriority();
  v169 = v173;
  (*(*(v168 - 8) + 56))(v173, 1, 1, v168);
  type metadata accessor for MainActor();
  v170 = static MainActor.shared.getter();
  v171 = swift_allocObject();
  v171[2] = v170;
  v171[3] = &protocol witness table for MainActor;
  v171[4] = v167;
  sub_10026E198(0, 0, v169, &unk_1006F08E0, v171);
}

uint64_t sub_100431274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricFormattingHelper();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004312D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BACC;

  return sub_10042EC14(a1, v4, v5, v6);
}

id sub_1004313A0()
{
  v0 = sub_100046170();

  return v0;
}

uint64_t sub_1004313D8()
{
  result = static MoveModeNotificationConstants.nextMoveModeUserInfoKey.getter();
  qword_100925970 = result;
  *algn_100925978 = v1;
  return result;
}

uint64_t sub_100431424()
{
  result = static MoveModeNotificationConstants.notificationTypeUserInfoKey.getter();
  qword_100925980 = result;
  *algn_100925988 = v1;
  return result;
}

id sub_1004314B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FitnessCoachingMoveModeNotificationConstantsBridging();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100431540(id *a1)
{
  v1 = [*a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_1004315A0@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a1;
  v112 = a3;
  v4 = type metadata accessor for AccessibilityTraits();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessibilityChildBehavior();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v106 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for AttributedString();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  *&v92 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v93 = &v88 - v13;
  v14 = type metadata accessor for WorkoutItemView();
  __chkstk_darwin(v14);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_100140278(&qword_1008ED320);
  __chkstk_darwin(v91);
  v96 = &v88 - v17;
  v99 = sub_100140278(&qword_1008ED308);
  __chkstk_darwin(v99);
  v97 = &v88 - v18;
  v102 = sub_100140278(&qword_1008ED300);
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v98 = &v88 - v19;
  v105 = sub_100140278(&qword_1008ED328);
  v103 = *(v105 - 8);
  __chkstk_darwin(v105);
  v101 = &v88 - v20;
  v21 = sub_100140278(&qword_1008ED2F8);
  __chkstk_darwin(v21 - 8);
  v23 = &v88 - v22;
  v24 = a2[1];
  if (!v24)
  {
    v24 = sub_1000059F8(0, &unk_1008DC348);
    sub_10002E1BC(&qword_1008DC4D8, &unk_1008DC348);
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_7;
  }

  v107 = v9;
  v25 = a2[5];
  if (!v25)
  {
LABEL_7:
    type metadata accessor for SeymourCatalogItemDataProvider();
    sub_1000718C8(&qword_1008DC4E8, type metadata accessor for SeymourCatalogItemDataProvider);
    v82 = v24;
    goto LABEL_11;
  }

  v26 = a2[7];
  if (v26)
  {
    v104 = v23;
    v108 = v8;
    v109 = v7;
    v110 = v5;
    v111 = v4;
    v90 = a2;
    v27 = a2[3];
    if (v27)
    {
      v28 = *v89;
      v29 = v14;
      v30 = *(v14 + 44);
      v114 = 0;
      v31 = v24;
      v32 = v25;
      v33 = v26;

      sub_100140278(&qword_1008DC850);
      State.init(wrappedValue:)();
      *&v16[v30] = v113;
      v34 = *(v29 + 48);
      v114 = 0;
      State.init(wrappedValue:)();
      *&v16[v34] = v113;
      *v16 = v28;
      *(v16 + 1) = v31;
      *(v16 + 2) = v32;
      *(v16 + 3) = v33;
      v16[32] = 1;
      *(v16 + 5) = v27;
      v89 = v28;
      v35 = [v31 formattedTypeForWorkout:v89 workoutActivity:0 context:@"WorkoutsListDisplayContext"];
      v36 = v92;
      AttributedString.init(_:)();
      static Font.body.getter();
      v37 = v93;
      AttributedString.with(font:)();

      v38 = v94;
      v39 = *(v94 + 8);
      v40 = v95;
      v39(v36, v95);
      (*(v38 + 16))(v36, v37, v40);
      State.init(wrappedValue:)();

      v39(v37, v40);
      LOBYTE(v34) = static Edge.Set.all.getter();
      v41 = v96;
      sub_100432B10(v16, v96, type metadata accessor for WorkoutItemView);
      v42 = v41 + *(v91 + 36);
      *v42 = v34;
      *(v42 + 8) = xmmword_1006D4E50;
      *(v42 + 24) = xmmword_1006D4E50;
      *(v42 + 40) = 0;
      v43 = v99;
      v44 = v97;
      v45 = &v97[*(v99 + 36)];
      v95 = type metadata accessor for RoundedRectangle();
      v46 = *(v95 + 20);
      v47 = enum case for RoundedCornerStyle.continuous(_:);
      LODWORD(v94) = enum case for RoundedCornerStyle.continuous(_:);
      v48 = type metadata accessor for RoundedCornerStyle();
      v93 = *(*(v48 - 8) + 104);
      (v93)(&v45[v46], v47, v48);
      __asm { FMOV            V0.2D, #16.0 }

      v92 = _Q0;
      *v45 = _Q0;
      v54 = sub_100046170();
      v55 = Color.init(uiColor:)();
      v56 = sub_100140278(&qword_1008E2B10);
      *&v45[*(v56 + 52)] = v55;
      *&v45[*(v56 + 56)] = 256;
      v57 = static Alignment.center.getter();
      v59 = v58;
      v60 = &v45[*(sub_100140278(&qword_1008E3650) + 36)];
      *v60 = v57;
      v60[1] = v59;
      sub_1004327D0(v41, v44);
      v61 = swift_allocObject();
      v62 = v90;
      v63 = *(v90 + 3);
      *(v61 + 48) = *(v90 + 2);
      *(v61 + 64) = v63;
      *(v61 + 80) = *(v62 + 64);
      v64 = *(v62 + 80);
      v65 = *(v62 + 16);
      *(v61 + 16) = *v62;
      *(v61 + 32) = v65;
      v66 = v89;
      *(v61 + 96) = v64;
      *(v61 + 104) = v66;
      v67 = v66;
      sub_100432430(v62, &v113);
      v68 = sub_10043265C();
      v69 = v98;
      View.onTapGesture(count:perform:)();

      sub_10000EA04(v44, &qword_1008ED308);
      v70 = v106;
      static AccessibilityChildBehavior.combine.getter();
      *&v113 = v43;
      *(&v113 + 1) = v68;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v72 = v101;
      v73 = v102;
      View.accessibilityElement(children:)();
      (*(v107 + 8))(v70, v108);
      (*(v100 + 8))(v69, v73);
      v74 = v109;
      static AccessibilityTraits.isButton.getter();
      *&v113 = v73;
      *(&v113 + 1) = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v75 = v104;
      v76 = v105;
      View.accessibilityAddTraits(_:)();
      (*(v110 + 8))(v74, v111);
      (*(v103 + 8))(v72, v76);
      v77 = sub_100140278(&qword_1008ED2D8);
      v78 = v112;
      v79 = (v112 + *(v77 + 36));
      v80 = sub_100140278(&qword_1008E3A58);
      static ContentShapeKinds.accessibility.getter();
      (v93)(v79 + *(v95 + 20), v94, v48);
      *v79 = v92;
      *(v79 + *(v80 + 36)) = 0;
      return sub_100097248(v75, v78);
    }

    type metadata accessor for WorkoutImageProvider();
    sub_1000718C8(&qword_1008DC4E0, &type metadata accessor for WorkoutImageProvider);
    v85 = v24;
    v86 = v25;
    v87 = v26;
  }

  else
  {
    type metadata accessor for AAUIAwardsDataProvider();
    sub_1000718C8(&qword_1008DC4F0, &type metadata accessor for AAUIAwardsDataProvider);
    v83 = v24;
    v84 = v25;
  }

LABEL_11:
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

void sub_100432120(uint64_t a1, void *a2)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    v4 = v2;
    sub_10043284C(a2);
  }

  else
  {
    type metadata accessor for ActivityDashboardViewController();
    sub_1000718C8(&qword_1008DC4F8, type metadata accessor for ActivityDashboardViewController);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_1004321D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v11[2] = *(v1 + 32);
  v11[3] = v3;
  v11[4] = *(v1 + 64);
  v12 = *(v1 + 80);
  v4 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v4;
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  sub_100140278(&qword_1008ED2D0);
  v13 = *&v11[0];
  v10 = *&v11[0];
  swift_getKeyPath();
  v5 = swift_allocObject();
  v6 = *(v1 + 48);
  *(v5 + 48) = *(v1 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(v1 + 64);
  *(v5 + 96) = *(v1 + 80);
  v7 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v7;
  sub_1004323C0(&v13, v9);
  sub_100432430(v11, v9);
  sub_100140278(&unk_1008E4010);
  sub_100140278(&qword_1008ED2D8);
  sub_10014A6B0(&qword_1008ED2E0, &unk_1008E4010);
  sub_1000718C8(&qword_1008E4E10, &type metadata accessor for UUID);
  sub_100432468();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1004323C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&unk_1008E4010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100432468()
{
  result = qword_1008ED2E8;
  if (!qword_1008ED2E8)
  {
    sub_100141EEC(&qword_1008ED2D8);
    sub_100432520();
    sub_10014A6B0(&unk_1008EE7D0, &qword_1008E3A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ED2E8);
  }

  return result;
}

unint64_t sub_100432520()
{
  result = qword_1008ED2F0;
  if (!qword_1008ED2F0)
  {
    sub_100141EEC(&qword_1008ED2F8);
    sub_100141EEC(&qword_1008ED300);
    sub_100141EEC(&qword_1008ED308);
    sub_10043265C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000718C8(&qword_1008DCEF8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ED2F0);
  }

  return result;
}

unint64_t sub_10043265C()
{
  result = qword_1008ED310;
  if (!qword_1008ED310)
  {
    sub_100141EEC(&qword_1008ED308);
    sub_100432714();
    sub_10014A6B0(&qword_1008E3648, &qword_1008E3650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ED310);
  }

  return result;
}

unint64_t sub_100432714()
{
  result = qword_1008ED318;
  if (!qword_1008ED318)
  {
    sub_100141EEC(&qword_1008ED320);
    sub_1000718C8(&qword_1008E78E0, type metadata accessor for WorkoutItemView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ED318);
  }

  return result;
}

uint64_t sub_1004327D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008ED320);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10043284C(void *a1)
{
  v2 = sub_100140278(&qword_1008E0BC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for FitnessPlusStackViewModel();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[3] = sub_1000059F8(0, &qword_1008ED7C0);
  v17[4] = sub_10002E1BC(&qword_1008DF1A0, &qword_1008ED7C0);
  v17[0] = a1;
  sub_100007C5C(v17, v16);
  v9 = a1;
  sub_100140278(&unk_1008E4E60);
  if (swift_dynamicCast())
  {
    v10 = v15;
    sub_100394F20(v15, 0, 0, 0);
LABEL_5:

    return sub_100005A40(v17);
  }

  sub_100007C5C(v17, v16);
  type metadata accessor for MindfulnessSessionViewModel();
  if (swift_dynamicCast())
  {
    v10 = v15;
    sub_100395388(v15);
    goto LABEL_5;
  }

  sub_100007C5C(v17, v16);
  v12 = swift_dynamicCast();
  v13 = *(v6 + 56);
  if (v12)
  {
    v13(v4, 0, 1, v5);
    sub_100432B10(v4, v8, type metadata accessor for FitnessPlusStackViewModel);
    sub_100395478(v8);
    sub_1001AB550(v8);
  }

  else
  {
    v13(v4, 1, 1, v5);
    sub_10000EA04(v4, &qword_1008E0BC0);
  }

  return sub_100005A40(v17);
}

uint64_t sub_100432B10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100432B88(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  result = v29;
  v27 = *(v29 + 16);
  if (!v27)
  {
LABEL_34:

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.setter();
    v22 = [*a1 identifier];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    sub_100432ED0(v23, v25);
  }

  v2 = 0;
  v26 = _swiftEmptyArrayStorage;
  while (v2 < *(result + 16))
  {
    v3 = v29 + 32 + 48 * v2;
    v4 = *v3;
    v5 = *(v3 + 8);
    v7 = *(v3 + 16);
    v6 = *(v3 + 24);
    v8 = *(v3 + 32);
    v9 = *(v3 + 40);
    ++v2;
    sub_1001AC3CC();
    v10 = v4;

    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_27;
    }

    v11 = *(a1 + 8) == v5 && *(a1 + 16) == v7;
    if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_27;
    }

    v12 = *(a1 + 24) == v6 && *(a1 + 32) == v8;
    if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_27;
    }

    v13 = *(a1 + 40);
    v14 = *(v13 + 16);
    if (v14 != *(v9 + 16))
    {
      goto LABEL_27;
    }

    if (v14 && v13 != v9)
    {
      v15 = (v13 + 40);
      v16 = (v9 + 40);
      while (1)
      {
        v17 = *(v15 - 1) == *(v16 - 1) && *v15 == *v16;
        if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }

        v15 += 2;
        v16 += 2;
        if (!--v14)
        {

          goto LABEL_4;
        }
      }

LABEL_27:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1001863A4(0, v26[2] + 1, 1);
      }

      v18 = v26;
      v20 = v26[2];
      v19 = v26[3];
      if (v20 >= v19 >> 1)
      {
        sub_1001863A4((v19 > 1), v20 + 1, 1);
        v18 = v26;
      }

      v18[2] = v20 + 1;
      v26 = v18;
      v21 = &v18[6 * v20];
      v21[4] = v10;
      v21[5] = v5;
      v21[6] = v7;
      v21[7] = v6;
      v21[8] = v8;
      v21[9] = v9;
      goto LABEL_4;
    }

LABEL_4:
    result = v29;
    if (v2 == v27)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100432ED0(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v6 = [v5 objectForKey:@"CHRemovedSuggestedContactsAsDestinationsKey"];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25[0] = v23;
  v25[1] = v24;
  if (!*(&v24 + 1))
  {
    sub_1001B3EEC(v25);
    goto LABEL_15;
  }

  sub_100140278(&unk_1008E99C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v12 = [v4 standardUserDefaults];
    sub_100140278(&qword_1008DCF58);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1006D46C0;
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;
    *&v25[0] = v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100140278(&unk_1008E99C0);
    NSUserDefaults.set<A>(_:for:)();
  }

  v7 = v22;
  v8 = *(v22 + 16);
  v9 = (v22 + 40);
  v10 = v8 + 1;
  while (--v10)
  {
    if (*(v9 - 1) != a1 || *v9 != a2)
    {
      v9 += 2;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_100042744(0, v8 + 1, 1, v22);
  }

  v16 = *(v7 + 2);
  v15 = *(v7 + 3);
  v17 = v16 + 1;
  if (v16 >= v15 >> 1)
  {
    v21 = v16 + 1;
    v20 = sub_100042744((v15 > 1), v16 + 1, 1, v7);
    v17 = v16 + 1;
    v7 = v20;
  }

  *(v7 + 2) = v17;
  v18 = &v7[16 * v16];
  *(v18 + 4) = a1;
  *(v18 + 5) = a2;
  v19 = [v4 standardUserDefaults];
  *&v25[0] = v7;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  NSUserDefaults.set<A>(_:for:)();
}

id sub_1004331D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QuickStartWorkoutActionContext();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10043331C()
{
  v0 = [objc_allocWithZone(ARUIMetricColors) init];
  v1 = sub_100433C50(0x9Bu, 0x6Eu, 0xFAu);
  [v0 setNonGradientTextColor:v1];

  v2 = sub_100433C50(0x16u, 0x10u, 0x28u);
  [v0 setGradientDarkColor:v2];

  v3 = sub_100433C50(0x2Fu, 0x21u, 0x5Au);
  [v0 setGradientLightColor:v3];

  v4 = sub_100433C50(0x9Bu, 0x6Eu, 0xFAu);
  [v0 setAdjustmentButtonBackgroundColor:v4];

  v5 = objc_opt_self();
  v6 = [v5 whiteColor];
  [v0 setValueDisplayColor:v6];

  v7 = [v5 blackColor];
  [v0 setButtonTextColor:v7];

  v8 = [v5 blackColor];
  [v0 setButtonDisabledTextColor:v8];

  return v0;
}

id sub_1004334D4()
{
  v0 = [objc_allocWithZone(ARUIMetricColors) init];
  v1 = sub_100433C50(0, 0xFFu, 0xA8u);
  [v0 setNonGradientTextColor:v1];

  v2 = sub_100433C50(2u, 0x23u, 0x1Cu);
  [v0 setGradientDarkColor:v2];

  v3 = sub_100433C50(4u, 0x33u, 0x23u);
  [v0 setGradientLightColor:v3];

  v4 = sub_100433C50(0, 0xFFu, 0xA8u);
  [v0 setAdjustmentButtonBackgroundColor:v4];

  v5 = objc_opt_self();
  v6 = [v5 whiteColor];
  [v0 setValueDisplayColor:v6];

  v7 = [v5 blackColor];
  [v0 setButtonTextColor:v7];

  v8 = [v5 blackColor];
  [v0 setButtonDisabledTextColor:v8];

  return v0;
}

id sub_10043368C()
{
  v0 = [objc_allocWithZone(ARUIMetricColors) init];
  v1 = sub_100433C50(0x3Au, 0xE9u, 0xE6u);
  [v0 setNonGradientTextColor:v1];

  v2 = sub_100433C50(0, 0x25u, 0x22u);
  [v0 setGradientDarkColor:v2];

  v3 = sub_100433C50(0, 0x3Du, 0x39u);
  [v0 setGradientLightColor:v3];

  v4 = sub_100433C50(0x3Au, 0xE9u, 0xE6u);
  [v0 setAdjustmentButtonBackgroundColor:v4];

  v5 = objc_opt_self();
  v6 = [v5 whiteColor];
  [v0 setValueDisplayColor:v6];

  v7 = [v5 blackColor];
  [v0 setButtonTextColor:v7];

  v8 = [v5 blackColor];
  [v0 setButtonDisabledTextColor:v8];

  return v0;
}

id sub_100433844(void *a1)
{
  v2 = type metadata accessor for ConfigurationType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 workoutActivityType] == 84)
  {
    result = [objc_opt_self() diveColors];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  v7 = [a1 metadata];
  if (v7)
  {
    v8 = v7;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for WorkoutConfiguration();
  type metadata accessor for BlastDoorConfigurationValidator();
  swift_allocObject();
  BlastDoorConfigurationValidator.init()();
  v9 = static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)();

  if (v9)
  {
    dispatch thunk of WorkoutConfiguration.type.getter();
    v10 = (*(v3 + 88))(v5, v2);
    if (v10 == enum case for ConfigurationType.goal(_:))
    {
      type metadata accessor for GoalWorkoutConfiguration();
      if (swift_dynamicCastClass())
      {
        v11 = GoalWorkoutConfiguration.goal.getter();
        v12 = [v11 goalTypeIdentifier];

        result = [objc_opt_self() metricColorsForGoalTypeIdentifier:v12];
      }

      else
      {
        result = [objc_opt_self() metricColorsForGoalTypeIdentifier:{objc_msgSend(a1, "_goalType")}];
      }
    }

    else if (v10 == enum case for ConfigurationType.interval(_:))
    {
      result = sub_10043331C();
    }

    else if (v10 == enum case for ConfigurationType.race(_:))
    {
      result = sub_1004334D4();
    }

    else if (v10 == enum case for ConfigurationType.pacer(_:))
    {
      result = sub_10043368C();
    }

    else
    {
      if (v10 != enum case for ConfigurationType.multisport(_:))
      {
        v14 = [objc_opt_self() metricColorsForGoalTypeIdentifier:{objc_msgSend(a1, "_goalType")}];

        (*(v3 + 8))(v5, v2);
        return v14;
      }

      result = [objc_opt_self() noMetricColors];
      if (!result)
      {
        __break(1u);
        return result;
      }
    }

    v14 = result;

    return v14;
  }

  if ([a1 isIntervalWorkout])
  {

    return sub_10043331C();
  }

  else
  {
    v13 = [objc_opt_self() metricColorsForGoalTypeIdentifier:{objc_msgSend(a1, "_goalType")}];

    return v13;
  }
}

id sub_100433C50(unsigned int a1, unsigned int a2, unsigned int a3)
{
  v3 = [UIColor colorWithRed:a1 / 255.0 green:a2 / 255.0 blue:a3 / 255.0 alpha:1.0];

  return v3;
}

id sub_100433CAC()
{
  v0 = [objc_allocWithZone(ARUIMetricColors) init];
  v1 = sub_100433C50(0, 0x39u, 0x38u);
  [v0 setNonGradientTextColor:v1];

  v2 = sub_100433C50(0, 0x22u, 0x22u);
  [v0 setGradientDarkColor:v2];

  v3 = sub_100433C50(0, 0x39u, 0x38u);
  [v0 setGradientLightColor:v3];

  v4 = sub_100433C50(0, 0x22u, 0x22u);
  [v0 setAdjustmentButtonBackgroundColor:v4];

  v5 = objc_opt_self();
  v6 = [v5 whiteColor];
  [v0 setValueDisplayColor:v6];

  v7 = [v5 blackColor];
  [v0 setButtonTextColor:v7];

  v8 = [v5 blackColor];
  [v0 setButtonDisabledTextColor:v8];

  return v0;
}

id sub_100433E64()
{
  v0 = [objc_allocWithZone(ARUIMetricColors) init];
  v1 = sub_100433C50(0xEDu, 0x72u, 0x5Bu);
  [v0 setNonGradientTextColor:v1];

  v2 = sub_100433C50(0x33u, 0x15u, 0x11u);
  [v0 setGradientDarkColor:v2];

  v3 = sub_100433C50(0x33u, 0x15u, 0x11u);
  [v0 setGradientLightColor:v3];

  v4 = sub_100433C50(0, 0xFFu, 0xA8u);
  [v0 setAdjustmentButtonBackgroundColor:v4];

  v5 = objc_opt_self();
  v6 = [v5 whiteColor];
  [v0 setValueDisplayColor:v6];

  v7 = [v5 blackColor];
  [v0 setButtonTextColor:v7];

  v8 = [v5 blackColor];
  [v0 setButtonDisabledTextColor:v8];

  return v0;
}

id sub_100434044()
{
  v0 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v0 - 8);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    [result isStandalonePhoneFitnessMode];

    v3 = [objc_opt_self() mainBundle];
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 localizedStringForKey:v4 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100434984();
    return AttributedString.init(_:attributes:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100434204(uint64_t a1, uint64_t *a2, void (*a3)(void))
{
  v5 = type metadata accessor for UIButton.Configuration();
  sub_100163368(v5, a2);
  sub_10001AC90(v5, a2);
  return sub_1004345C4(a3);
}

id sub_10043425C()
{
  v0 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v0 - 8);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    [result isStandalonePhoneFitnessMode];

    v3 = [objc_opt_self() mainBundle];
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 localizedStringForKey:v4 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100434984();
    return AttributedString.init(_:attributes:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100434404()
{
  v0 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v0 - 8);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    [result isStandalonePhoneFitnessMode];

    v3 = [objc_opt_self() mainBundle];
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 localizedStringForKey:v4 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100434984();
    return AttributedString.init(_:attributes:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004345C4(void (*a1)(void))
{
  v2 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100140278(&unk_1008EE8E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13[-v7];
  static UIButton.Configuration.gray()();
  type metadata accessor for DayViewRingsConfigurationCell();
  a1();
  v9 = type metadata accessor for AttributedString();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  UIButton.Configuration.attributedTitle.setter();
  UIButton.Configuration.contentInsets.getter();
  UIButton.Configuration.contentInsets.getter();
  UIButton.Configuration.contentInsets.setter();
  v10 = sub_100046170();
  UIButton.Configuration.baseBackgroundColor.setter();
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v2);
    return UIButton.Configuration.cornerStyle.setter();
  }

  else
  {
    sub_10013A904();
    v12 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.cornerRadius.setter();
    return v12(v13, 0);
  }
}

id sub_1004347E0()
{
  v0 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v0 - 8);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    [result isStandalonePhoneFitnessMode];

    v3 = [objc_opt_self() mainBundle];
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 localizedStringForKey:v4 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100434984();
    return AttributedString.init(_:attributes:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100434984()
{
  v0 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v0 setAlignment:1];
  v1 = sub_1000059F8(0, &qword_1008F73C0);
  v2 = static UIFont.preferredFont(forTextStyle:design:symbolicTraits:weight:compatibleWith:)();
  sub_100140278(&unk_1008E7FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 40) = v2;
  *(inited + 64) = v1;
  *(inited + 72) = NSParagraphStyleAttributeName;
  *(inited + 104) = sub_1000059F8(0, &qword_1008E58C0);
  *(inited + 80) = v0;
  v4 = NSFontAttributeName;
  v5 = v2;
  v6 = NSParagraphStyleAttributeName;
  v7 = v0;
  sub_1004C9200(inited);
  swift_setDeallocating();
  sub_100140278(&unk_1008EE730);
  swift_arrayDestroy();
  AttributeContainer.init(_:)();
}

void sub_100434B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008DC990);
  __chkstk_darwin(v6 - 8);
  v8 = &v41 - v7;
  v9 = OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_leftButton;
  v10 = [objc_allocWithZone(UIButton) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v9] = v10;
  v11 = OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_rightButton;
  v12 = [objc_allocWithZone(UIButton) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v11] = v12;
  v3[OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_isRingsPaused] = 0;
  v13 = &v3[OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_onChangeGoals];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v3[OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_onPauseRings];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v3[OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_onUnpauseRings];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v3[OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_onEditPauseRings];
  *v16 = 0;
  v16[1] = 0;
  if (a3)
  {

    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  v18 = type metadata accessor for DayViewRingsConfigurationCell();
  v43.receiver = v3;
  v43.super_class = v18;
  v19 = objc_msgSendSuper2(&v43, "initWithStyle:reuseIdentifier:", a1, v17);

  v20 = OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_leftButton;
  v21 = *&v19[OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_leftButton];
  v22 = qword_1008DAB90;
  v23 = v19;
  v24 = v21;
  if (v22 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for UIButton.Configuration();
  v26 = sub_10001AC90(v25, qword_1008ED370);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v28(v8, v26, v25);
  v42 = *(v27 + 56);
  v42(v8, 0, 1, v25);
  UIButton.configuration.setter();

  [*&v19[v20] addTarget:v23 action:"onLeftButtonPressed:" forControlEvents:64];
  v29 = [v23 contentView];

  [v29 addSubview:*&v19[v20]];
  v30 = [objc_opt_self() sharedBehavior];
  if (!v30)
  {
    __break(1u);
    goto LABEL_14;
  }

  v31 = v30;
  v32 = [v30 features];

  if (!v32)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v33 = [v32 pauseRings];

  if (v33)
  {
    v34 = OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_rightButton;
    v35 = qword_1008DAB98;
    v36 = *&v23[OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_rightButton];
    if (v35 != -1)
    {
      swift_once();
    }

    v37 = sub_10001AC90(v25, qword_1008ED388);
    v28(v8, v37, v25);
    v42(v8, 0, 1, v25);
    UIButton.configuration.setter();

    v38 = *&v23[v34];
    v39 = v23;
    [v38 addTarget:v39 action:"onRightButtonPressed:" forControlEvents:64];
    v40 = [v39 contentView];

    [v40 addSubview:*&v23[v34]];
  }

  sub_100435394();
}

uint64_t sub_1004350AC(char a1)
{
  v3 = sub_100140278(&qword_1008DC990);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  *(v1 + OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_isRingsPaused) = a1;
  if (a1)
  {
    if (qword_1008DABA0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for UIButton.Configuration();
    v7 = sub_10001AC90(v6, qword_1008ED3A0);
    v8 = *(v6 - 8);
    v9 = *(v8 + 16);
    v9(v5, v7, v6);
    v10 = *(v8 + 56);
    v10(v5, 0, 1, v6);
    UIButton.configuration.setter();
    if (qword_1008DABA8 != -1)
    {
      swift_once();
    }

    v11 = qword_1008ED3B8;
  }

  else
  {
    if (qword_1008DAB90 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for UIButton.Configuration();
    v12 = sub_10001AC90(v6, qword_1008ED370);
    v13 = *(v6 - 8);
    v9 = *(v13 + 16);
    v9(v5, v12, v6);
    v10 = *(v13 + 56);
    v10(v5, 0, 1, v6);
    UIButton.configuration.setter();
    if (qword_1008DAB98 != -1)
    {
      swift_once();
    }

    v11 = qword_1008ED388;
  }

  v14 = sub_10001AC90(v6, v11);
  v9(v5, v14, v6);
  v10(v5, 0, 1, v6);
  return UIButton.configuration.setter();
}

void sub_100435394()
{
  v1 = [objc_opt_self() sharedBehavior];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [v1 features];

  if (!v3)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v4 = [v3 pauseRings];

  v5 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v6 = &selRef__setFont_;
  v7 = swift_allocObject();
  if (v4)
  {
    *(v7 + 16) = xmmword_1006E41A0;
    v8 = *&v0[OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_leftButton];
    v9 = [v8 topAnchor];
    v10 = [v0 contentView];
    v11 = [v10 topAnchor];

    v12 = [v9 constraintEqualToAnchor:v11];
    *(v7 + 32) = v12;
    v13 = [v8 leadingAnchor];
    v14 = [v0 contentView];
    v15 = [v14 leadingAnchor];

    v16 = [v13 constraintEqualToAnchor:v15 constant:16.0];
    *(v7 + 40) = v16;
    v17 = [v8 heightAnchor];
    v18 = [v17 constraintGreaterThanOrEqualToConstant:54.0];

    *(v7 + 48) = v18;
    v19 = [v8 trailingAnchor];
    v20 = *&v0[OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_rightButton];
    v21 = [v20 leadingAnchor];
    v22 = [v19 constraintEqualToAnchor:v21 constant:-10.0];

    *(v7 + 56) = v22;
    v23 = [v8 bottomAnchor];
    v24 = [v0 contentView];
    v25 = [v24 bottomAnchor];

    v26 = [v23 constraintEqualToAnchor:v25];
    *(v7 + 64) = v26;
    v27 = [v20 widthAnchor];
    v28 = [v8 widthAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];

    *(v7 + 72) = v29;
    v30 = [v20 topAnchor];
    v31 = [v0 contentView];
    v32 = [v31 topAnchor];

    v33 = [v30 constraintEqualToAnchor:v32];
    *(v7 + 80) = v33;
    v34 = [v20 heightAnchor];
    v35 = [v34 constraintGreaterThanOrEqualToConstant:54.0];

    *(v7 + 88) = v35;
    v36 = [v20 trailingAnchor];
    v37 = [v0 contentView];
    v38 = [v37 trailingAnchor];

    v6 = &selRef__setFont_;
    v39 = [v36 constraintEqualToAnchor:v38 constant:-16.0];

    *(v7 + 96) = v39;
    v40 = (v7 + 104);
  }

  else
  {
    *(v7 + 16) = xmmword_1006D9810;
    v20 = *&v0[OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_leftButton];
    v41 = [v20 topAnchor];
    v42 = [v0 contentView];
    v43 = [v42 topAnchor];

    v44 = [v41 constraintEqualToAnchor:v43];
    *(v7 + 32) = v44;
    v45 = [v20 leadingAnchor];
    v46 = [v0 contentView];
    v47 = [v46 leadingAnchor];

    v48 = [v45 constraintEqualToAnchor:v47 constant:16.0];
    *(v7 + 40) = v48;
    v49 = [v20 heightAnchor];
    v50 = [v49 constraintGreaterThanOrEqualToConstant:54.0];

    *(v7 + 48) = v50;
    v51 = [v20 trailingAnchor];
    v52 = [v0 contentView];
    v53 = [v52 trailingAnchor];

    v54 = [v51 constraintEqualToAnchor:v53 constant:-16.0];
    *(v7 + 56) = v54;
    v40 = (v7 + 64);
  }

  v55 = [v20 bottomAnchor];
  v56 = [v0 v6[495]];
  v57 = [v56 bottomAnchor];

  v58 = [v55 constraintEqualToAnchor:v57];
  *v40 = v58;
  sub_1000059F8(0, &qword_1008DC980);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 activateConstraints:isa];
}

uint64_t sub_100435B00(void *a1)
{
  v3 = OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_leftButton;
  v4 = [objc_allocWithZone(UIButton) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v3) = v4;
  v5 = OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_rightButton;
  v6 = [objc_allocWithZone(UIButton) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  *(v1 + v5) = v6;
  *(v1 + OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_isRingsPaused) = 0;
  v7 = (v1 + OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_onChangeGoals);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v1 + OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_onPauseRings);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v1 + OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_onUnpauseRings);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v1 + OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_onEditPauseRings);
  *v10 = 0;
  v10[1] = 0;

  sub_1000245E0(*v7);
  sub_1000245E0(*v8);
  sub_1000245E0(*v9);
  sub_1000245E0(*v10);
  type metadata accessor for DayViewRingsConfigurationCell();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_100435C70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DayViewRingsConfigurationCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100435D64(void *result, void *a2)
{
  if (*(v2 + OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_isRingsPaused) == 1)
  {
    v3 = *(v2 + *result);
    if (!v3)
    {
      return result;
    }
  }

  else
  {
    v3 = *(v2 + *a2);
    if (!v3)
    {
      return result;
    }
  }

  v3(v4);

  return sub_1000245E0(v3);
}

uint64_t type metadata accessor for ActivitySharingFriendDetailInternalDashboardView()
{
  result = qword_1008ED488;
  if (!qword_1008ED488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100435E5C()
{
  sub_10006DC4C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ActivitySharingSettings();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CloudDeviceProvider();
      if (v2 <= 0x3F)
      {
        sub_100288F9C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100435F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = sub_100140278(&qword_1008ED4D0);
  v37 = *(v44 - 8);
  v4 = v37;
  __chkstk_darwin(v44);
  v43 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v42 = static HorizontalAlignment.center.getter();
  static Font.title.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v45 = Text.font(_:)();
  v40 = v10;
  v41 = v9;
  v12 = v11;

  v13 = static Edge.Set.top.getter();
  v14 = v13;
  v38 = v13;
  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  LOBYTE(v55[0]) = 1;
  LOBYTE(v48) = v12 & 1;
  v39 = v12 & 1;
  v47 = 0;
  v46 = a1;
  sub_100140278(&qword_1008ED4D8);
  sub_10014A6B0(&qword_1008ED4E0, &qword_1008ED4D8);
  v36 = v8;
  List<>.init(content:)();
  v23 = *(v4 + 16);
  v25 = v43;
  v24 = v44;
  v23(v43, v8, v44);
  v26 = v41;
  v27 = v42;
  v48 = v42;
  LOBYTE(v49) = 1;
  *(&v49 + 1) = v45;
  *&v50 = v41;
  BYTE8(v50) = v12 & 1;
  v28 = v40;
  *&v51 = v40;
  BYTE8(v51) = v14;
  *&v52 = v16;
  *(&v52 + 1) = v18;
  *&v53 = v20;
  *(&v53 + 1) = v22;
  v54 = 0;
  *(a2 + 96) = 0;
  v29 = v53;
  *(a2 + 64) = v52;
  *(a2 + 80) = v29;
  v30 = v49;
  *a2 = v48;
  *(a2 + 16) = v30;
  v31 = v51;
  *(a2 + 32) = v50;
  *(a2 + 48) = v31;
  v32 = (a2 + *(sub_100140278(&qword_1008ED4E8) + 48));
  v23(v32, v25, v24);
  sub_10001B104(&v48, v55, &qword_1008ED4F0);
  v33 = *(v37 + 8);
  v33(v36, v24);
  v33(v25, v24);
  v55[0] = v27;
  v55[1] = 0;
  v56 = 1;
  v57 = v45;
  v58 = v26;
  v59 = v39;
  v60 = v28;
  v61 = v38;
  v62 = v16;
  v63 = v18;
  v64 = v20;
  v65 = v22;
  v66 = 0;
  return sub_10000EA04(v55, &qword_1008ED4F0);
}

uint64_t sub_100436298@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v75 = a2;
  v3 = sub_100140278(&qword_1008ED4F8);
  v4 = *(v3 - 8);
  v97 = v3;
  v98 = v4;
  __chkstk_darwin(v3);
  v96 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v80 = v66 - v7;
  v8 = type metadata accessor for ActivitySharingFriendDetailInternalDashboardView();
  v71 = *(v8 - 8);
  v70 = *(v71 + 64);
  __chkstk_darwin(v8 - 8);
  v68 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100140278(&qword_1008ED500);
  v11 = *(v10 - 8);
  v72 = v10;
  v73 = v11;
  __chkstk_darwin(v10);
  v67 = v66 - v12;
  v74 = sub_100140278(&qword_1008ED508) - 8;
  __chkstk_darwin(v74);
  v92 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v86 = v66 - v15;
  v78 = sub_100140278(&qword_1008ED510);
  v82 = *(v78 - 8);
  __chkstk_darwin(v78);
  v90 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v89 = v66 - v18;
  __chkstk_darwin(v19);
  v84 = v66 - v20;
  __chkstk_darwin(v21);
  v85 = v66 - v22;
  v95 = sub_100140278(&qword_1008ED518);
  v81 = *(v95 - 8);
  __chkstk_darwin(v95);
  v88 = v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v87 = v66 - v25;
  v69 = sub_100140278(&qword_1008ED520);
  v79 = *(v69 - 8);
  __chkstk_darwin(v69);
  v94 = v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v93 = v66 - v28;
  __chkstk_darwin(v29);
  v76 = v66 - v30;
  __chkstk_darwin(v31);
  v91 = v66 - v32;
  __chkstk_darwin(v33);
  v83 = v66 - v34;
  __chkstk_darwin(v35);
  v77 = v66 - v36;
  v111 = xmmword_1006F0C10;
  v112 = 0;
  v113 = _swiftEmptyArrayStorage;
  v106 = a1;
  v66[1] = sub_100140278(&qword_1008ED528);
  sub_10014A6B0(&qword_1008ED530, &qword_1008ED528);
  Section<>.init(header:content:)();
  v111 = xmmword_1006F0C20;
  v112 = 0;
  v113 = _swiftEmptyArrayStorage;
  v105 = a1;
  sub_100140278(&qword_1008ED538);
  sub_10014A6B0(&qword_1008ED540, &qword_1008ED538);
  Section<>.init(header:content:)();
  *&v111 = 0xD000000000000012;
  *(&v111 + 1) = 0x800000010075D610;
  v112 = 0;
  v113 = _swiftEmptyArrayStorage;
  v104 = a1;
  sub_100140278(&qword_1008ED548);
  sub_10014A6B0(&qword_1008ED550, &qword_1008ED548);
  Section<>.init(header:content:)();
  *&v111 = 0xD000000000000013;
  *(&v111 + 1) = 0x800000010075D630;
  v112 = 0;
  v113 = _swiftEmptyArrayStorage;
  v103 = a1;
  Section<>.init(header:content:)();
  v111 = xmmword_1006F0C30;
  v112 = 0;
  v113 = _swiftEmptyArrayStorage;
  v102 = a1;
  Section<>.init(header:content:)();
  *&v111 = 0xD000000000000010;
  *(&v111 + 1) = 0x800000010075D650;
  v112 = 0;
  v113 = _swiftEmptyArrayStorage;
  v101 = a1;
  Section<>.init(header:content:)();
  v111 = xmmword_1006F0C40;
  v112 = 0;
  v113 = _swiftEmptyArrayStorage;
  v107 = sub_1004387C0();
  v108 = v37;
  v109 = 0;
  v110 = _swiftEmptyArrayStorage;
  v100 = a1;
  sub_100140278(&qword_1008ED558);
  sub_10014A6B0(&qword_1008ED560, &qword_1008ED558);
  v38 = v67;
  Section<>.init(header:footer:content:)();
  v39 = *a1;
  v40 = *(a1 + 8);
  v66[0] = a1;
  LOBYTE(v111) = v39;
  *(&v111 + 1) = v40;
  sub_100140278(&qword_1008DDBB8);
  State.wrappedValue.getter();
  LOBYTE(v111) = v107;
  v41 = v68;
  sub_1003BF4CC(a1, v68);
  v42 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v43 = swift_allocObject();
  sub_10043A708(v41, v43 + v42);
  sub_10043A7EC();
  v44 = v86;
  v45 = v72;
  View.onChange<A>(of:initial:_:)();

  (*(v73 + 8))(v38, v45);
  v46 = v66[0];
  sub_1003BF4CC(v66[0], v41);
  v47 = swift_allocObject();
  sub_10043A708(v41, v47 + v42);
  v48 = (v44 + *(v74 + 44));
  type metadata accessor for _TaskModifier();
  static TaskPriority.userInitiated.getter();
  *v48 = &unk_1006F0D70;
  v48[1] = v47;
  v111 = xmmword_1006F0C50;
  v112 = 0;
  v113 = _swiftEmptyArrayStorage;
  v107 = 0xD000000000000037;
  v108 = 0x800000010075D670;
  v109 = 0;
  v110 = _swiftEmptyArrayStorage;
  v99 = v46;
  sub_100140278(&qword_1008ED570);
  sub_10043A97C();
  v49 = v80;
  Section<>.init(header:footer:content:)();
  v50 = *(v79 + 16);
  v51 = v76;
  v52 = v69;
  v50(v76, v77, v69);
  v73 = *(v81 + 16);
  (v73)(v88, v87, v95);
  v53 = *(v82 + 16);
  v54 = v78;
  v53(v89, v85, v78);
  v53(v90, v84, v54);
  v50(v93, v83, v52);
  v50(v94, v91, v52);
  sub_1000974AC(v86, v92);
  v74 = *(v98 + 16);
  (v74)(v96, v49, v97);
  v55 = v75;
  v50(v75, v51, v52);
  v56 = sub_100140278(&qword_1008ED590);
  (v73)(&v55[v56[12]], v88, v95);
  v57 = v78;
  v53(&v55[v56[16]], v89, v78);
  v53(&v55[v56[20]], v90, v57);
  v50(&v55[v56[24]], v93, v52);
  v50(&v55[v56[28]], v94, v52);
  sub_1000974AC(v92, &v55[v56[32]]);
  v58 = &v55[v56[36]];
  v59 = v97;
  (v74)(v58, v96, v97);
  v60 = *(v98 + 8);
  v98 += 8;
  v75 = v60;
  (v60)(v80, v59);
  sub_10009751C(v86);
  v61 = *(v79 + 8);
  v61(v91, v52);
  v61(v83, v52);
  v62 = *(v82 + 8);
  v62(v84, v57);
  v62(v85, v57);
  v63 = *(v81 + 8);
  v64 = v95;
  v63(v87, v95);
  v61(v77, v52);
  (v75)(v96, v97);
  sub_10009751C(v92);
  v61(v94, v52);
  v61(v93, v52);
  v62(v90, v57);
  v62(v89, v57);
  v63(v88, v64);
  return (v61)(v76, v52);
}

id sub_1004370C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100140278(&qword_1008DE590);
  __chkstk_darwin(v4);
  v6 = &v36 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for ActivitySharingFriendDetailInternalDashboardView() + 28);
  v39 = a1;
  v12 = *(a1 + v11);
  v13 = [v12 fullName];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v16;
    v38 = v15;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v17 = [v12 displayName];
  if (v17)
  {
    v18 = v17;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v36 = 0;
    v20 = 0;
  }

  result = [v12 UUID];
  if (result)
  {
    v22 = result;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = UUID.uuidString.getter();
    v25 = v24;
    (*(v8 + 8))(v10, v7);
    v26 = [v12 currentDateComponents];
    if (v26)
    {
      v27 = v26;
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v29 = type metadata accessor for DateComponents();
    (*(*(v29 - 8) + 56))(v6, v28, 1, v29);
    v30 = Optional.description.getter();
    v32 = v31;
    sub_10000EA04(v6, &qword_1008DE590);
    v33 = sub_10043745C();
    *a2 = 0x6D614E206C6C7546;
    *(a2 + 8) = 0xE900000000000065;
    v34 = v37;
    *(a2 + 16) = v38;
    *(a2 + 24) = v34;
    strcpy((a2 + 32), "Display Name");
    *(a2 + 45) = 0;
    *(a2 + 46) = -5120;
    *(a2 + 48) = v36;
    *(a2 + 56) = v20;
    *(a2 + 64) = 1145656661;
    *(a2 + 72) = 0xE400000000000000;
    *(a2 + 80) = v23;
    *(a2 + 88) = v25;
    *(a2 + 96) = 0x6D6F432061746144;
    *(a2 + 104) = 0xEF73746E656E6F70;
    *(a2 + 112) = v30;
    *(a2 + 120) = v32;
    *(a2 + 128) = 0x6E6F5A20656D6954;
    *(a2 + 136) = 0xE900000000000065;
    *(a2 + 144) = v33;
    *(a2 + 152) = v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10043745C()
{
  v1 = 0x6E776F6E6B6E55;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TimeZone();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v31 - v11;
  v13 = [*(v0 + *(type metadata accessor for ActivitySharingFriendDetailInternalDashboardView() + 28)) timeZone];
  if (v13)
  {
    v14 = v13;
    static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 32))(v12, v9, v6);
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);
    Date.init()();
    v15 = TimeZone.abbreviation(for:)();
    v17 = v16;
    v31[0] = v6;
    v18 = *(v3 + 8);
    v18(v5, v2);
    if (v17)
    {
      v19 = v15;
    }

    else
    {
      v19 = 0x6E776F6E6B6E55;
    }

    if (v17)
    {
      v20 = v17;
    }

    else
    {
      v20 = 0xE700000000000000;
    }

    v21 = v20;
    String.append(_:)(*&v19);

    v22._object = 0x800000010075D8E0;
    v22._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v22);
    Date.init()();
    v23 = TimeZone.isDaylightSavingTime(for:)();
    v18(v5, v2);
    if (v23)
    {
      v24 = 1702195828;
    }

    else
    {
      v24 = 0x65736C6166;
    }

    if (v23)
    {
      v25 = 0xE400000000000000;
    }

    else
    {
      v25 = 0xE500000000000000;
    }

    v26 = v25;
    String.append(_:)(*&v24);

    v27._countAndFlagsBits = 0x3A74657366666F20;
    v27._object = 0xE900000000000020;
    String.append(_:)(v27);
    Date.init()();
    v28 = TimeZone.secondsFromGMT(for:)();
    v18(v5, v2);
    v31[1] = v28;
    v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v29);

    v1 = v32;
    (*(v7 + 8))(v12, v31[0]);
  }

  return v1;
}

id sub_1004377B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + *(type metadata accessor for ActivitySharingFriendDetailInternalDashboardView() + 28));
  result = [v8 contact];
  if (!result)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = result;
  v11 = [result fullName];

  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  result = [v8 contact];
  if (!result)
  {
    goto LABEL_19;
  }

  v15 = result;
  v53 = v14;
  v16 = [result shortName];

  if (v16)
  {
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v52 = 0;
    v18 = 0;
  }

  result = [v8 contact];
  if (!result)
  {
    goto LABEL_20;
  }

  v19 = result;
  v20 = [result displayName];

  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v21;

  result = [v8 contact];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v22 = result;
  v23 = [result UUID];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = UUID.uuidString.getter();
  v49 = v25;
  (*(v5 + 8))(v7, v4);
  result = [v8 contact];
  if (!result)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = result;
  v27 = [result linkedContactStoreIdentifier];

  if (v27)
  {
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v29;
  }

  else
  {
    v28 = 0;
    v48 = 0;
  }

  v47 = v24;
  result = [v8 contact];
  if (!result)
  {
    goto LABEL_23;
  }

  v30 = result;
  v45 = v28;
  v46 = v18;
  v31 = [result destinations];

  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = Set.description.getter();
  v33 = v32;

  result = [v8 contact];
  if (result)
  {
    v34 = result;
    v35 = [result primaryDestinationForMessaging];

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    *a2 = 0x6D614E206C6C7546;
    *(a2 + 8) = 0xE900000000000065;
    v39 = v53;
    *(a2 + 16) = v12;
    *(a2 + 24) = v39;
    *(a2 + 32) = 0x614E2074726F6853;
    *(a2 + 40) = 0xEA0000000000656DLL;
    v40 = v51;
    v41 = v46;
    *(a2 + 48) = v52;
    *(a2 + 56) = v41;
    strcpy((a2 + 64), "Display Name");
    *(a2 + 77) = 0;
    *(a2 + 78) = -5120;
    *(a2 + 80) = v50;
    *(a2 + 88) = v40;
    *(a2 + 96) = 1145656661;
    *(a2 + 104) = 0xE400000000000000;
    v42 = v48;
    v43 = v49;
    *(a2 + 112) = v47;
    *(a2 + 120) = v43;
    *(a2 + 128) = 0xD000000000000018;
    *(a2 + 136) = 0x800000010075D8A0;
    *(a2 + 144) = v45;
    *(a2 + 152) = v42;
    strcpy((a2 + 160), "Destinations");
    *(a2 + 173) = 0;
    *(a2 + 174) = -5120;
    *(a2 + 176) = v44;
    *(a2 + 184) = v33;
    *(a2 + 192) = 0xD000000000000013;
    *(a2 + 200) = 0x800000010075D8C0;
    *(a2 + 208) = v36;
    *(a2 + 216) = v38;
  }

LABEL_24:
  __break(1u);
  return result;
}

void sub_100437D04(uint64_t a1@<X0>, SEL *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + *(type metadata accessor for ActivitySharingFriendDetailInternalDashboardView() + 28));
  v11 = [v10 contact];
  if (!v11)
  {
    __break(1u);
    goto LABEL_22;
  }

  v12 = v11;
  v13 = [v11 relationshipStorage];

  v14 = [v13 *a2];
  v15 = [v14 version];

  v62 = v15;
  sub_10043ABD8();
  v60 = BinaryInteger.description.getter();
  v61 = v16;
  v17 = [v10 contact];
  if (!v17)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = v17;
  v19 = [v17 relationshipStorage];

  v20 = [v19 *a2];
  v21 = [v20 UUID];

  if (!v21)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = UUID.uuidString.getter();
  v24 = v23;
  (*(v7 + 8))(v9, v6);
  v25 = [v10 contact];
  if (!v25)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

  v26 = v25;
  v27 = [v25 relationshipStorage];

  v28 = [v27 *a2];
  v29 = [v28 cloudKitAddress];

  if (v29)
  {
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
  }

  else
  {
    v59 = 0;
    v31 = 0;
  }

  v32 = [v10 contact];
  if (!v32)
  {
    goto LABEL_25;
  }

  v33 = v32;
  v34 = [v32 relationshipStorage];

  v35 = [v34 *a2];
  v36 = [v35 addresses];

  if (v36)
  {
    v37 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v37 = 0;
  }

  v38 = v61;
  v61 = v22;
  v62 = v37;
  sub_100140278(&qword_1008ED5B8);
  v39 = Optional.description.getter();
  v57 = v40;
  v58 = v39;

  v41 = [v10 contact];
  if (!v41)
  {
    goto LABEL_26;
  }

  v42 = v41;
  v43 = [v41 relationshipStorage];

  v44 = [v43 *a2];
  v45 = [v44 preferredReachableAddress];

  if (v45)
  {
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;
  }

  else
  {
    v46 = 0;
    v48 = 0;
  }

  v49 = [v10 contact];
  if (!v49)
  {
    goto LABEL_27;
  }

  v50 = v49;
  v51 = [v49 relationshipStorage];

  v52 = [v51 *a2];
  v53 = [v52 preferredReachableService];

  if (v53)
  {
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;
  }

  else
  {
    v54 = 0;
    v56 = 0;
  }

  *a3 = 0x6E6F6973726556;
  a3[1] = 0xE700000000000000;
  a3[2] = v60;
  a3[3] = v38;
  a3[4] = 1145656661;
  a3[5] = 0xE400000000000000;
  a3[6] = v61;
  a3[7] = v24;
  a3[8] = 0xD000000000000010;
  a3[9] = 0x800000010075D840;
  a3[10] = v59;
  a3[11] = v31;
  a3[12] = 0x6573736572646441;
  a3[13] = 0xE900000000000073;
  a3[14] = v58;
  a3[15] = v57;
  a3[16] = 0xD000000000000011;
  a3[17] = 0x800000010075D860;
  a3[18] = v46;
  a3[19] = v48;
  a3[20] = 0xD000000000000011;
  a3[21] = 0x800000010075D880;
  a3[22] = v54;
  a3[23] = v56;
}

id sub_100438310@<X0>(uint64_t a1@<X0>, SEL *a2@<X1>, SEL *a3@<X2>, SEL *a4@<X3>, void *a5@<X8>)
{
  v40 = sub_1004386CC(a2);
  v10 = v9;
  v11 = *(a1 + *(type metadata accessor for ActivitySharingFriendDetailInternalDashboardView() + 28));
  result = [v11 contact];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v13 = result;
  v14 = [result relationshipStorage];

  v15 = [v14 *a3];
  v16 = [v14 *a4];
  v39 = sub_100439D58(v15, v16);
  v18 = v17;

  result = [v11 contact];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = result;
  v38 = v10;
  v20 = [result relationshipStorage];

  v21 = [v20 *a4];
  v22 = sub_100439E90(v21, &selRef_secureCloudUpgradeCompleted, &selRef_dateForLatestUpgradeCompleted, &selRef_dateForLatestUpgradeFailure);
  v37 = v23;

  result = [v11 contact];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v24 = result;
  v25 = [result relationshipStorage];

  v26 = [v25 *a4];
  v27 = sub_100439E90(v26, &selRef_secureCloudMigrationCompleted, &selRef_dateForLatestMigrationCompleted, &selRef_dateForLatestMigrationFailed);
  v29 = v28;

  result = [v11 contact];
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v30 = result;
  v31 = [result relationshipStorage];

  v32 = [v31 *a4];
  v33 = [v32 secureCloudZoneName];

  if (v33)
  {
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  *a5 = 0x656E6961746E6F43;
  a5[1] = 0xE900000000000072;
  a5[2] = v40;
  a5[3] = v38;
  a5[4] = 0xD000000000000010;
  a5[5] = 0x800000010075D7A0;
  a5[6] = v39;
  a5[7] = v18;
  a5[8] = 0xD00000000000001DLL;
  a5[9] = 0x800000010075D7C0;
  a5[10] = v22;
  a5[11] = v37;
  a5[12] = 0xD000000000000017;
  a5[13] = 0x800000010075D7E0;
  a5[14] = v27;
  a5[15] = v29;
  a5[16] = 0x6D614E20656E6F5ALL;
  a5[17] = 0xE900000000000065;
  a5[18] = v34;
  a5[19] = v36;
}

uint64_t sub_1004386CC(SEL *a1)
{
  result = [*(v1 + *(type metadata accessor for ActivitySharingFriendDetailInternalDashboardView() + 28)) contact];
  if (result)
  {
    v4 = result;
    v5 = [result relationshipStorage];

    v6 = [v5 *a1];
    v7 = [v6 cloudType];

    if (v7)
    {
      if (v7 == 1)
      {
        return 0x646574617267694DLL;
      }

      else
      {
        return 0x6E776F6E6B6E55;
      }
    }

    else
    {
      return 0x79636167654CLL;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1004387C0()
{
  _StringGuts.grow(_:)(50);

  v1 = *(v0 + *(type metadata accessor for ActivitySharingFriendDetailInternalDashboardView() + 28));
  v2 = [v1 displayName];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  sub_100140278(&qword_1008DC8F8);
  v7 = Optional.description.getter();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 8238;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  _StringGuts.grow(_:)(32);
  v12 = [v1 displayName];
  if (v12)
  {
    v13 = v12;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v14 = Optional.description.getter();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._object = 0x800000010075D740;
  v18._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0xD000000000000032;
  v20._object = 0x800000010075D760;
  String.append(_:)(v20);

  return 0xD00000000000002ELL;
}

uint64_t sub_100438A00()
{
  sub_100140278(&qword_1008DDBB8);
  State.projectedValue.getter();
  return Toggle.init(isOn:label:)();
}

void sub_100438A90(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000016;
  *(a1 + 8) = 0x800000010075D6F0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
}

uint64_t sub_100438AC0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = type metadata accessor for ActivitySharingFriendDetailInternalDashboardView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  LOBYTE(a2) = *a2;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1003BF4CC(a3, v8);
  type metadata accessor for MainActor();
  v13 = static MainActor.shared.getter();
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = v14 + v7;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = &protocol witness table for MainActor;
  sub_10043A708(v8, v16 + v14);
  *(v16 + v15) = a2;
  sub_10026E198(0, 0, v11, &unk_1006F0DF8, v16);
}

uint64_t sub_100438C90(uint64_t a1)
{
  v1[4] = a1;
  v1[5] = type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v1[7] = v2;
  *v2 = v1;
  v2[1] = sub_100438D40;

  return sub_100438F30();
}

uint64_t sub_100438D40(char a1)
{
  *(*v1 + 65) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100438E84, v3, v2);
}

uint64_t sub_100438E84()
{
  v1 = *(v0 + 65);
  v2 = *(v0 + 32);

  v3 = *(v2 + 8);
  *(v0 + 16) = *v2;
  *(v0 + 24) = v3;
  *(v0 + 64) = v1;
  sub_100140278(&qword_1008DDBB8);
  State.wrappedValue.setter();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100438F30()
{
  v1[2] = v0;
  v2 = type metadata accessor for UUID();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for ActivitySharingSettings();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v5;
  v1[11] = v4;

  return _swift_task_switch(sub_100439080, v5, v4);
}

uint64_t sub_100439080()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[2];
  v5 = type metadata accessor for ActivitySharingFriendDetailInternalDashboardView();
  (*(v2 + 16))(v1, v4 + *(v5 + 20), v3);
  v6 = [*(v4 + *(v5 + 28)) UUID];
  if (v6)
  {
    v8 = v6;
    v10 = v0[4];
    v9 = v0[5];
    v11 = v0[3];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = UUID.uuidString.getter();
    v14 = v13;
    v0[12] = v13;
    (*(v10 + 8))(v9, v11);
    v15 = swift_task_alloc();
    v0[13] = v15;
    *v15 = v0;
    v15[1] = sub_1004391CC;
    v6 = v12;
    v7 = v14;
  }

  else
  {
    __break(1u);
  }

  return ActivitySharingSettings.forceMigrationAllowed(friendIdentifier:)(v6, v7);
}

uint64_t sub_1004391CC(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 112) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);

  return _swift_task_switch(sub_100439374, v7, v6);
}

uint64_t sub_100439374()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 112);

  return v1(v2);
}

uint64_t sub_1004393EC()
{
  type metadata accessor for ActivitySharingFriendDetailInternalDashboardView();
  swift_getKeyPath();

  sub_100140278(&qword_1008ED598);
  sub_100140278(&qword_1008ED588);
  sub_10014A6B0(&qword_1008ED5A0, &qword_1008ED598);
  sub_10014A6B0(&qword_1008ED580, &qword_1008ED588);
  return ForEach<>.init(_:id:content:)();
}

void sub_100439550(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

double sub_1004395A8@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = static VerticalAlignment.center.getter();
  v20 = 1;
  sub_100439730(v3, &v12);
  v25 = v16;
  v26 = v17;
  v27[0] = v18[0];
  *(v27 + 9) = *(v18 + 9);
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v28[0] = v12;
  v28[1] = v13;
  v28[2] = v14;
  v28[3] = v15;
  v28[4] = v16;
  v28[5] = v17;
  v29[0] = v18[0];
  *(v29 + 9) = *(v18 + 9);
  sub_10001B104(&v21, &v11, &qword_1008ED5A8);
  sub_10000EA04(v28, &qword_1008ED5A8);
  *(&v19[4] + 7) = v25;
  *(&v19[5] + 7) = v26;
  *(&v19[6] + 7) = v27[0];
  v19[7] = *(v27 + 9);
  *(v19 + 7) = v21;
  *(&v19[1] + 7) = v22;
  *(&v19[2] + 7) = v23;
  *(&v19[3] + 7) = v24;
  v5 = v19[5];
  *(a2 + 81) = v19[4];
  *(a2 + 97) = v5;
  v6 = v19[7];
  *(a2 + 113) = v19[6];
  *(a2 + 129) = v6;
  v7 = v19[1];
  *(a2 + 17) = v19[0];
  *(a2 + 33) = v7;
  result = *&v19[2];
  v9 = v19[3];
  *(a2 + 49) = v19[2];
  v10 = v20;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 65) = v9;
  return result;
}

uint64_t sub_100439730@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100140278(&qword_1008E0AD8);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_100140278(&qword_1008E9870);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - v8;
  v10 = static HorizontalAlignment.leading.getter();
  LOBYTE(v34) = 1;
  sub_100439B40(a1, v41);
  *&v40[7] = v41[0];
  *&v40[23] = v41[1];
  *&v40[39] = v41[2];
  *&v40[55] = v41[3];
  v11 = v34;
  if (ASCloudDevice.isEligibleForMigration.getter())
  {
    Image.init(systemName:)();
    static SymbolRenderingMode.monochrome.getter();
    v12 = type metadata accessor for SymbolRenderingMode();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
    v13 = Image.symbolRenderingMode(_:)();

    sub_10000EA04(v9, &qword_1008E9870);
    v14 = static Color.green.getter();
    v31 = v13;
    v32 = v14;
    v33[0] = 0;
  }

  else
  {
    Image.init(systemName:)();
    v15 = enum case for Image.TemplateRenderingMode.original(_:);
    v16 = type metadata accessor for Image.TemplateRenderingMode();
    v17 = v10;
    v18 = *(v16 - 8);
    (*(v18 + 104))(v6, v15, v16);
    (*(v18 + 56))(v6, 0, 1, v16);
    v10 = v17;
    v19 = Image.renderingMode(_:)();

    sub_10000EA04(v6, &qword_1008E0AD8);
    v31 = v19;
    v32 = 0;
    v33[0] = 1;
  }

  sub_100140278(&qword_1008E76F0);
  sub_1002F7844();
  _ConditionalContent<>.init(storage:)();
  v20 = v34;
  v21 = v35;
  v28 = v34;
  v31 = v10;
  v32 = 0;
  v33[0] = v11;
  *&v33[1] = *v40;
  *&v33[17] = *&v40[16];
  *&v33[33] = *&v40[32];
  *&v33[49] = *&v40[48];
  *&v33[64] = *&v40[63];
  v30 = 1;
  v29 = v35;
  v22 = *v33;
  *a2 = v10;
  *(a2 + 16) = v22;
  v23 = *&v33[16];
  v24 = *&v33[48];
  v25 = *&v33[64];
  *(a2 + 48) = *&v33[32];
  *(a2 + 64) = v24;
  *(a2 + 32) = v23;
  *(a2 + 80) = v25;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  *(a2 + 104) = v20;
  *(a2 + 120) = v21;
  sub_10001B104(&v31, &v34, &qword_1008E3220);
  v26 = v28;
  sub_10043AA38(v28, *(&v28 + 1), v21);
  sub_10043AA74(v26, *(&v26 + 1), v21);
  v34 = v10;
  v35 = v11;
  v37 = *&v40[16];
  v38 = *&v40[32];
  *v39 = *&v40[48];
  *&v39[15] = *&v40[63];
  v36 = *v40;
  return sub_10000EA04(&v34, &qword_1008E3220);
}

uint64_t sub_100439B40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = ASCloudDevice.deviceName.getter();
  v27 = v5;
  v28 = v4;
  v6 = [a1 osVersion];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v7._countAndFlagsBits = 10272;
  v7._object = 0xE200000000000000;
  String.append(_:)(v7);
  v8 = [a1 buildNumber];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 41;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  static Font.callout.getter();
  v14 = Text.font(_:)();
  v16 = v15;
  v18 = v17;

  static HierarchicalShapeStyle.secondary.getter();
  v19 = Text.foregroundStyle<A>(_:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_10004642C(v14, v16, v18 & 1);

  *a2 = v28;
  *(a2 + 8) = v27;
  *(a2 + 16) = 0;
  *(a2 + 24) = _swiftEmptyArrayStorage;
  *(a2 + 32) = v19;
  *(a2 + 40) = v21;
  *(a2 + 48) = v23 & 1;
  *(a2 + 56) = v25;
  sub_10006965C(v28, v27, 0);

  sub_10006965C(v19, v21, v23 & 1);

  sub_10004642C(v19, v21, v23 & 1);

  sub_10004642C(v28, v27, 0);
}

uint64_t sub_100439D58(void *a1, void *a2)
{
  if ([a1 secureCloudUpgradeCompleted])
  {
    return 0x64656C62616E45;
  }

  if ([a1 secureCloudUpgradeAvailable])
  {
    return 0x6C62616C69617641;
  }

  if ([a1 secureCloudMigrationAvailable])
  {
    return 0xD000000000000013;
  }

  if ([a2 secureCloudMigrationCompleted])
  {
    return 0xD000000000000012;
  }

  return 0x616C696176616E55;
}

uint64_t sub_100439E90(void *a1, SEL *a2, SEL *a3, SEL *a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  *&v19 = __chkstk_darwin(v18).n128_u64[0];
  v21 = &v30 - v20;
  if ([a1 *a2])
  {
    v22 = [a1 *a3];
    if (v22)
    {
      v23 = v22;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v9 + 32))(v21, v17, v8);
      v24 = Date.formatted()();
      v30 = 0x3A73736563637553;
      v31 = 0xE900000000000020;
      String.append(_:)(v24);

      v25 = v30;
LABEL_7:
      (*(v9 + 8))(v21, v8);
      return v25;
    }
  }

  v25 = 0x616C696176616E55;
  if ([a1 secureCloudUpgradeFailed])
  {
    v26 = [a1 *a4];
    if (v26)
    {
      v27 = v26;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v9 + 32))(v14, v11, v8);
      v28 = Date.formatted()();
      v30 = 0x203A64656C696146;
      v31 = 0xE800000000000000;
      String.append(_:)(v28);

      v25 = v30;
      v21 = v14;
      goto LABEL_7;
    }
  }

  return v25;
}

uint64_t sub_10043A128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 112) = a5;
  *(v5 + 16) = a4;
  v6 = type metadata accessor for UUID();
  *(v5 + 24) = v6;
  *(v5 + 32) = *(v6 - 8);
  *(v5 + 40) = swift_task_alloc();
  v7 = type metadata accessor for ActivitySharingSettings();
  *(v5 + 48) = v7;
  *(v5 + 56) = *(v7 - 8);
  *(v5 + 64) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 72) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 80) = v9;
  *(v5 + 88) = v8;

  return _swift_task_switch(sub_10043A27C, v9, v8);
}

uint64_t sub_10043A27C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 16);
  v5 = type metadata accessor for ActivitySharingFriendDetailInternalDashboardView();
  (*(v2 + 16))(v1, v4 + *(v5 + 20), v3);
  v6 = [*(v4 + *(v5 + 28)) UUID];
  if (v6)
  {
    v9 = v6;
    v11 = *(v0 + 32);
    v10 = *(v0 + 40);
    v12 = *(v0 + 24);
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = UUID.uuidString.getter();
    v15 = v14;
    *(v0 + 96) = v14;
    (*(v11 + 8))(v10, v12);
    v16 = swift_task_alloc();
    *(v0 + 104) = v16;
    *v16 = v0;
    v16[1] = sub_10043A3D0;
    v6 = *(v0 + 112);
    v7 = v13;
    v8 = v15;
  }

  else
  {
    __break(1u);
  }

  return ActivitySharingSettings.updateAllowForcedMigration(_:friendIdentifier:)(v6, v7, v8);
}

uint64_t sub_10043A3D0()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return _swift_task_switch(sub_10043A570, v6, v5);
}

uint64_t sub_10043A570()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10043A5E4@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_100140278(&qword_1008ED4C8);
  return sub_100435F2C(v1, a1 + *(v3 + 44));
}

uint64_t sub_10043A708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingFriendDetailInternalDashboardView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10043A76C(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for ActivitySharingFriendDetailInternalDashboardView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100438AC0(a1, a2, v6);
}

unint64_t sub_10043A7EC()
{
  result = qword_1008ED568;
  if (!qword_1008ED568)
  {
    sub_100141EEC(&qword_1008ED500);
    sub_10014A6B0(&qword_1008ED560, &qword_1008ED558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ED568);
  }

  return result;
}

uint64_t sub_10043A8A8()
{
  v2 = *(type metadata accessor for ActivitySharingFriendDetailInternalDashboardView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002BBC0;

  return sub_100438C90(v0 + v3);
}

unint64_t sub_10043A97C()
{
  result = qword_1008ED578;
  if (!qword_1008ED578)
  {
    sub_100141EEC(&qword_1008ED570);
    sub_10014A6B0(&qword_1008ED580, &qword_1008ED588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ED578);
  }

  return result;
}

uint64_t sub_10043AA38(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {

    v3 = vars8;
  }
}

uint64_t sub_10043AA74(uint64_t a1, uint64_t a2, char a3)
{

  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10043AAC0(uint64_t a1)
{
  v4 = *(type metadata accessor for ActivitySharingFriendDetailInternalDashboardView() - 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8 = *(v7 + *(v4 + 64));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002BACC;

  return sub_10043A128(a1, v5, v6, v7, v8);
}

unint64_t sub_10043ABD8()
{
  result = qword_1008ED5B0;
  if (!qword_1008ED5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ED5B0);
  }

  return result;
}

uint64_t sub_10043AC2C(uint64_t a1, int a2)
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

uint64_t sub_10043AC74(uint64_t result, int a2, int a3)
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

uint64_t sub_10043ACE0@<X0>(uint64_t a1@<X8>)
{

  static Font.body.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v20 = Text.font(_:)();
  v21 = v2;
  v4 = v3;
  v19 = v5;

  static Font.footnote.getter();
  v6 = Text.font(_:)();
  v8 = v7;
  v10 = v9;

  static HierarchicalShapeStyle.secondary.getter();
  v11 = Text.foregroundStyle<A>(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_10004642C(v6, v8, v10 & 1);

  *a1 = v20;
  *(a1 + 8) = v4;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v21;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15 & 1;
  *(a1 + 56) = v17;
  sub_10006965C(v20, v4, v19 & 1);

  sub_10006965C(v11, v13, v15 & 1);

  sub_10004642C(v11, v13, v15 & 1);

  sub_10004642C(v20, v4, v19 & 1);
}

__n128 sub_10043AEE4@<Q0>(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.leading.getter();
  sub_10043ACE0(v5);
  *&v4[55] = v5[3];
  *&v4[39] = v5[2];
  *&v4[23] = v5[1];
  *&v4[7] = v5[0];
  *(a1 + 33) = *&v4[16];
  result = *&v4[32];
  *(a1 + 49) = *&v4[32];
  *(a1 + 65) = *&v4[48];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 80) = *&v4[63];
  *(a1 + 17) = *v4;
  return result;
}

uint64_t sub_10043AF90@<X0>(void *a1@<X8>)
{
  DataType = type metadata accessor for TrainingLoadDataType();
  v60 = *(DataType - 8);
  v61 = DataType;
  __chkstk_darwin(DataType);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v48 - v7;
  v9 = sub_100140278(&qword_1008ED748);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  v15 = OBJC_IVAR____TtC10FitnessApp35LoadDetailViewControllerCoordinator____lazy_storage___loadDetailView;
  swift_beginAccess();
  sub_10043E180(v1 + v15, v14);
  DetailsView = type metadata accessor for LoadDetailsView();
  v17 = *(DetailsView - 8);
  if ((*(v17 + 48))(v14, 1, DetailsView) != 1)
  {
    return sub_10043E2C8(v14, a1, type metadata accessor for LoadDetailsView);
  }

  sub_10000EA04(v14, &qword_1008ED748);
  v18 = *(v1 + 16);
  v54 = v5;
  v19 = *(v18 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutFormattingManager);
  v20 = v8;
  v21 = *(v18 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
  v59 = v1;
  v56 = v11;
  v50 = *(v18 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_stackFormattingManager);
  v22 = v61;
  v57 = v17;
  v51 = DetailsView;
  v23 = *&v21[OBJC_IVAR___CHFitnessAppContext_seymourCatalogItemDataProvider];
  v24 = v21;
  v49 = v21;
  v58 = v15;
  v25 = *(v18 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiFormattingManager);
  v52 = *(v18 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_awardsDataProvider);
  v26 = v52;
  v53 = *(v18 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutImageProvider);
  v27 = v53;
  v28 = v60;
  v29 = v20;
  (*(v60 + 104))();
  *a1 = v19;
  a1[1] = v24;
  v30 = v50;
  a1[2] = v50;
  a1[3] = v23;
  a1[4] = v25;
  a1[5] = v26;
  v31 = v59;
  a1[6] = v27;
  a1[7] = v31;
  v32 = v51;
  v55 = *(v51 + 48);
  (*(v28 + 16))(v54, v29, v22);
  v33 = v19;
  v34 = v49;
  v35 = v30;
  v36 = v23;
  v37 = v25;
  v38 = v52;

  v39 = v59;

  State.init(wrappedValue:)();
  (*(v28 + 8))(v29, v22);
  v40 = a1 + *(v32 + 52);
  v64 = 0;
  State.init(wrappedValue:)();
  v41 = v63;
  *v40 = v62;
  *(v40 + 1) = v41;
  v42 = a1 + *(v32 + 56);
  type metadata accessor for BalanceDataProvider();
  sub_10043F28C(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  *v42 = Environment.init<A>(_:)();
  v42[8] = v43 & 1;
  v44 = a1;
  v45 = v56;
  sub_10043E1F0(v44, v56, type metadata accessor for LoadDetailsView);
  (*(v57 + 56))(v45, 0, 1, v32);
  v46 = v58;
  swift_beginAccess();
  sub_10043E258(v45, v39 + v46);
  return swift_endAccess();
}

uint64_t sub_10043B420()
{
  v1 = v0;
  DetailsView = type metadata accessor for LoadDetailsView();
  __chkstk_darwin(DetailsView);
  v4 = (v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_100140278(&qword_1008ED738);
  __chkstk_darwin(v5);
  sub_10043AF90(v4);
  v6 = *(*(v0 + 16) + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_balanceDataProvider);
  v7 = type metadata accessor for BalanceDataProvider();
  v8 = sub_10043F28C(&qword_1008ED740, type metadata accessor for LoadDetailsView);
  v9 = sub_10043F28C(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  v10 = v6;
  View.environment<A>(_:)();

  sub_10043E120(v4, type metadata accessor for LoadDetailsView);
  v28[0] = DetailsView;
  v28[1] = v7;
  v28[2] = v8;
  v28[3] = v9;
  swift_getOpaqueTypeConformance2();
  AnyView.init<A>(_:)();
  v11 = _makeUIHostingController(_:)();

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    v14 = *(v1 + 24);
    *(v1 + 24) = v12;
    v15 = v11;

    v16 = [objc_opt_self() configurationWithPointSize:4 weight:3 scale:17.0];
    v17 = [objc_allocWithZone(UIButton) init];
    v18 = v16;
    v19 = String._bridgeToObjectiveC()();
    v20 = [objc_opt_self() smm_systemImageNamed:v19 withConfiguration:v18];

    [v17 setImage:v20 forState:0];
    [v17 addTarget:v1 action:"didTapOnInfoButton:" forControlEvents:64];
    v21 = [objc_opt_self() whiteColor];
    [v17 setTintColor:v21];

    v22 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v17];
    v23 = [v13 navigationItem];
    [v23 setRightBarButtonItem:v22];

    v24 = [objc_opt_self() mainBundle];
    v25 = String._bridgeToObjectiveC()();
    v26 = [v24 localizedStringForKey:v25 value:0 table:0];

    if (!v26)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = String._bridgeToObjectiveC()();
    }

    [v13 setTitle:v26];
    return v13;
  }

  else
  {

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10043B93C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_10043B990(int a1, uint64_t a2, const char *a3)
{
  v17 = a1;
  v4 = type metadata accessor for TrainingLoadURLBuilder.Source();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static WOLog.trainingLoad.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = v17 & 1;
    _os_log_impl(&_mh_execute_header, v12, v13, a3, v14, 8u);
  }

  (*(v9 + 8))(v11, v8);
  type metadata accessor for EffortUtilities();
  (*(v5 + 104))(v7, enum case for TrainingLoadURLBuilder.Source.fitness(_:), v4);
  static EffortUtilities.sendDidDeeplinktoVitalsAnalyticsEvent(source:vitalsState:)();
  return (*(v5 + 8))(v7, v4);
}

void sub_10043BBCC(uint64_t a1)
{
  v3 = sub_100140278(&qword_1008E0BC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v26[-v4 - 8];
  v6 = type metadata accessor for FitnessPlusStackViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_100007C5C(a1, v26);
  sub_100140278(&unk_1008E4E60);
  sub_1000059F8(0, &qword_1008ED7C0);
  if (swift_dynamicCast())
  {
    v10 = v25;
    sub_10043CC08(v25);
LABEL_10:

    return;
  }

  sub_100007C5C(a1, v26);
  type metadata accessor for MindfulnessSessionViewModel();
  if (swift_dynamicCast())
  {
    v11 = *(v1 + 16);
    v12 = *(v11 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
    v13 = v25;
    v14 = *(v11 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_mindfulnessSessionFormattingManager);
    v15 = objc_allocWithZone(type metadata accessor for MindfulnessSessionDetailViewController());
    v16 = v12;
    v17 = v14;
    v18 = v13;
    sub_100349480(v18, v16, v17);
    v10 = v19;
    v20 = *(v1 + 24);
    if (v20 && (v21 = [v20 navigationController]) != 0)
    {
      v22 = v21;
      [v21 pushViewController:v10 animated:1];
    }

    else
    {
    }

    goto LABEL_10;
  }

  sub_100007C5C(a1, v26);
  v23 = swift_dynamicCast();
  v24 = *(v7 + 56);
  if (v23)
  {
    v24(v5, 0, 1, v6);
    sub_10043E2C8(v5, v9, type metadata accessor for FitnessPlusStackViewModel);
    sub_10043CE34(v9);
    sub_10043E120(v9, type metadata accessor for FitnessPlusStackViewModel);
  }

  else
  {
    v24(v5, 1, 1, v6);
    sub_10000EA04(v5, &qword_1008E0BC0);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void sub_10043BF28(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_historyDataProvider);
  v118 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
  v4 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiFormattingManager);
  v121 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutFormattingManager);
  v5 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_healthStore);
  v6 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiModel);
  v124 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_badgeImageFactory);
  v7 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_friendListManager);
  v8 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementLocalizationProvider);
  v9 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_pauseRingsCoordinator);
  v10 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementResourceProvider);
  v11 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_chAwardsDataProvider);
  v128 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_mindfulnessSessionFormattingManager);
  v126 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_stackFormattingManager);
  v12 = type metadata accessor for HistoryListViewController();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_dataSource] = 0;
  v14 = &v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue];
  *v14 = 0;
  *(v14 + 4) = 512;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_allHistoryItems] = _swiftEmptyArrayStorage;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_workoutStatistics] = &_swiftEmptyDictionarySingleton;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController] = 0;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_observers] = _swiftEmptyArrayStorage;
  v15 = &v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_awaitingDataLoadFilter];
  *v15 = 0;
  *(v15 + 4) = 1792;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_dataProvider] = v3;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_fitnessAppContext] = v118;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_fiuiFormattingManager] = v4;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_workoutFormattingManager] = v121;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_healthStore] = v5;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_model] = v6;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_friendListManager] = v7;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_badgeImageFactory] = v124;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_achievementLocalizationProvider] = v8;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_pauseRingsCoordinator] = v9;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_achievementResourceProvider] = v10;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_awardsDataProvider] = v11;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_mindfulnessSessionFormattingManager] = v128;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_stackFormattingManager] = v126;
  v133.receiver = v13;
  v133.super_class = v12;
  v116 = v3;
  v119 = v118;
  v114 = v4;
  v122 = v121;
  v16 = v5;
  v112 = v6;
  v17 = v124;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = v128;
  v24 = v126;
  v25 = v116;
  v129 = v119;
  v127 = v114;
  v123 = v122;
  v120 = v16;
  v117 = v112;
  v125 = v18;
  v108 = v17;
  v115 = v19;
  v113 = v20;
  v109 = v21;
  v106 = v22;
  v26 = v23;
  v27 = v24;
  v28 = objc_msgSendSuper2(&v133, "initWithNibName:bundle:", 0, 0);
  v29 = *&v28[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue];
  LODWORD(v17) = *&v28[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue + 8];
  v30 = v28;
  v31 = sub_100448AF0(v29, v17);
  v33 = v32;
  *&v30[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_allHistoryItems] = v31;

  *&v30[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_workoutStatistics] = v33;

  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = objc_allocWithZone(type metadata accessor for HistoryFilterUIViewController());
  v36 = sub_1002586AC(sub_100282934, v34);
  v37 = OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController;
  v38 = *&v30[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController];
  *&v30[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController] = v36;

  v39 = *&v25[OBJC_IVAR___CHHistoryDataProvider_lock];
  v40 = v25;
  v41 = v36;
  os_unfair_lock_lock(v39 + 4);
  sub_1001DF0A8(v130);
  os_unfair_lock_unlock(v39 + 4);
  if (*(v130[0] + 16))
  {
    *&v41[OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_historyTypes] = v130[0];

    sub_100258840();
  }

  else
  {
  }

  v42 = [objc_opt_self() mainBundle];
  v43 = String._bridgeToObjectiveC()();
  v44 = [v42 localizedStringForKey:v43 value:0 table:0];

  if (!v44)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = String._bridgeToObjectiveC()();
  }

  [v30 setTitle:v44];
  v45 = [v30 tableView];
  if (!v45)
  {
    __break(1u);
    goto LABEL_30;
  }

  v46 = v45;
  [v45 setSectionHeaderTopPadding:0.0];

  v47 = [v30 tableView];
  if (!v47)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v48 = v47;
  [v47 setSeparatorStyle:0];

  v49 = [v30 tableView];
  if (!v49)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v50 = v49;
  v51 = *&v30[v37];
  if (!v51)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v52 = [v51 view];
  if (!v52)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v53 = v52;
  [v52 frame];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;

  v62 = [objc_allocWithZone(UIView) initWithFrame:{v55, v57, v59, v61}];
  [v50 setTableHeaderView:v62];

  v63 = [v30 tableView];
  if (!v63)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v64 = v63;
  v65 = [v63 tableHeaderView];

  if (v65)
  {
    v66 = *&v30[v37];
    if (!v66)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v67 = [v66 view];
    if (!v67)
    {
LABEL_41:
      __break(1u);
      return;
    }

    v68 = v67;
    [v65 addSubview:v67];
  }

  v69 = [v30 tableView];
  if (!v69)
  {
    goto LABEL_35;
  }

  v70 = v69;
  sub_1000059F8(0, &unk_1008E4DF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v72 = String._bridgeToObjectiveC()();
  [v70 registerClass:ObjCClassFromMetadata forHeaderFooterViewReuseIdentifier:v72];

  v73 = [v30 tableView];
  if (!v73)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v74 = v73;
  sub_1000059F8(0, &unk_1008EAF80);
  v75 = swift_getObjCClassFromMetadata();
  v76 = String._bridgeToObjectiveC()();
  [v74 registerClass:v75 forCellReuseIdentifier:v76];

  v77 = [v30 tableView];
  if (!v77)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v78 = v77;
  type metadata accessor for MindfulnessSessionListTableViewCell();
  v79 = swift_getObjCClassFromMetadata();
  v80 = String._bridgeToObjectiveC()();
  [v78 registerClass:v79 forCellReuseIdentifier:v80];

  v81 = [v30 tableView];
  if (!v81)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v82 = v81;
  type metadata accessor for WorkoutsListTableViewCell();
  v83 = swift_getObjCClassFromMetadata();
  v84 = String._bridgeToObjectiveC()();
  [v82 registerClass:v83 forCellReuseIdentifier:v84];

  v85 = [v30 tableView];
  if (!v85)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  type metadata accessor for StackListTableViewCell();
  v86 = swift_getObjCClassFromMetadata();
  v87 = String._bridgeToObjectiveC()();
  [v85 registerClass:v86 forCellReuseIdentifier:v87];

  v88 = type metadata accessor for WorkoutFeatures();
  v131 = v88;
  v89 = sub_10043F28C(&qword_1008E4E00, &type metadata accessor for WorkoutFeatures);
  v132 = v89;
  v90 = sub_100005994(v130);
  v91 = *(*(v88 - 8) + 104);
  v91(v90, enum case for WorkoutFeatures.Kahana(_:), v88);
  v92 = isFeatureEnabled(_:)();
  sub_100005A40(v130);
  v93 = v30;
  if (v92)
  {
    v131 = v88;
    v132 = v89;
    v94 = sub_100005994(v130);
    v91(v94, enum case for WorkoutFeatures.ManualLogging(_:), v88);
    v95 = isFeatureEnabled(_:)();
    sub_100005A40(v130);
    v93 = v30;
    if (v95)
    {
      v96 = [v30 navigationItem];
      v93 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:7 target:v30 action:"presentManualLoggingViewController"];

      [v96 setRightBarButtonItem:v93];
    }
  }

  sub_10059D990();
  v97 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v98 = swift_allocObject();
  *(v98 + 16) = sub_100282958;
  *(v98 + 24) = v97;
  v99 = OBJC_IVAR___CHHistoryDataProvider_onChangeHandlers;
  swift_beginAccess();
  v100 = *&v40[v99];
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v40[v99] = v100;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v100 = sub_1001A1E7C(0, v100[2] + 1, 1, v100);
    *&v40[v99] = v100;
  }

  v103 = v100[2];
  v102 = v100[3];
  if (v103 >= v102 >> 1)
  {
    v100 = sub_1001A1E7C((v102 > 1), v103 + 1, 1, v100);
  }

  v100[2] = v103 + 1;
  v104 = &v100[2 * v103];
  v104[4] = sub_100283170;
  v104[5] = v98;
  *&v40[v99] = v100;
  swift_endAccess();

  sub_10059CE6C();

  v105 = [*(v110 + 24) navigationController];
  [v105 pushViewController:v30 animated:a1 & 1];
}

void sub_10043CC08(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_awardsDataProvider);
  v17[3] = type metadata accessor for AAUIAwardsDataProvider();
  v17[4] = &protocol witness table for AAUIAwardsDataProvider;
  v17[0] = v3;
  v4 = type metadata accessor for CHAwardsDataProvider();
  v5 = objc_allocWithZone(v4);
  sub_100007C5C(v17, v5 + OBJC_IVAR___CHAwardsDataProvider_awardsDataProvider);
  v16.receiver = v5;
  v16.super_class = v4;
  v6 = v3;
  v7 = objc_msgSendSuper2(&v16, "init");
  sub_100005A40(v17);
  LOBYTE(v13) = 0;
  v8 = [objc_allocWithZone(CHWorkoutDetailViewController) initWithWorkout:a1 workoutActivity:0 healthStore:*(*(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_activityDataProvider) + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_healthStore) model:*(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiModel) fitnessAppContext:*(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext) workoutFormattingManager:*(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutFormattingManager) workoutDataProvider:*(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutDataProvider) badgeImageFactory:*(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_badgeImageFactory) friendListManager:*(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_friendListManager) achievementLocalizationProvider:*(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementLocalizationProvider) pauseRingsCoordinator:*(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_pauseRingsCoordinator) achievementResourceProvider:*(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementResourceProvider) formattingManager:*(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiFormattingManager) awardsDataProvider:v7 shouldExposeDeepLinkToTrainingLoadFromEffort:v13];
  if (v8)
  {
    v9 = v8;
    v10 = *(v14 + 24);
    if (v10)
    {
      v11 = [v10 navigationController];
      if (v11)
      {
        v12 = v11;
        [v11 pushViewController:v9 animated:1];
      }
    }
  }
}

void sub_10043CE34(uint64_t a1)
{
  v93 = (type metadata accessor for FitnessPlusStackViewModel() - 8);
  __chkstk_darwin(v93);
  v4 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v1;
  v5 = *(v1 + 16);
  v6 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_awardsDataProvider);
  v98 = type metadata accessor for AAUIAwardsDataProvider();
  v99 = &protocol witness table for AAUIAwardsDataProvider;
  aBlock[0] = v6;
  v7 = type metadata accessor for CHAwardsDataProvider();
  v8 = objc_allocWithZone(v7);
  sub_100007C5C(aBlock, v8 + OBJC_IVAR___CHAwardsDataProvider_awardsDataProvider);
  v102.receiver = v8;
  v102.super_class = v7;
  v9 = v6;
  v91 = objc_msgSendSuper2(&v102, "init");
  sub_100005A40(aBlock);
  v94 = v4;
  sub_10043E1F0(a1, v4, type metadata accessor for FitnessPlusStackViewModel);
  v90 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_historyDataProvider);
  v89 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiFormattingManager);
  v88 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
  v10 = v88;
  v83 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_healthStore);
  v11 = v83;
  v85 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiModel);
  v84 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_badgeImageFactory);
  v12 = v84;
  v87 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_friendListManager);
  v86 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementLocalizationProvider);
  v13 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_pauseRingsCoordinator);
  v14 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementResourceProvider);
  v15 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_stackFormattingManager);
  v96 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutFormattingManager);
  v95 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_mindfulnessSessionFormattingManager);
  v16 = type metadata accessor for StackDetailViewController();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_dataSource] = 0;
  sub_10043E1F0(v4, &v17[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_stackViewModel], type metadata accessor for FitnessPlusStackViewModel);
  *&v17[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_fitnessAppContext] = v10;
  v19 = v89;
  v18 = v90;
  *&v17[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_fiuiFormattingManager] = v89;
  *&v17[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_historyDataProvider] = v18;
  *&v17[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_healthStore] = v11;
  v20 = v85;
  *&v17[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_model] = v85;
  *&v17[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_badgeImageFactory] = v12;
  v21 = v86;
  v22 = v87;
  *&v17[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_friendListManager] = v87;
  *&v17[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_achievementLocalizationProvider] = v21;
  *&v17[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_pauseRingsCoordinator] = v13;
  *&v17[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_achievementResourceProvider] = v14;
  v23 = v91;
  *&v17[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_awardsDataProvider] = v91;
  *&v17[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_stackFormattingManager] = v15;
  v24 = v95;
  *&v17[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_workoutFormattingManager] = v96;
  *&v17[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_mindfulnessSessionFormattingManager] = v24;
  v101.receiver = v17;
  v101.super_class = v16;
  v92 = "initWithNibName:bundle:";
  v90 = v18;
  v89 = v19;
  v25 = v88;
  v88 = v83;
  v26 = v20;
  v27 = v84;
  v87 = v22;
  v28 = v21;
  v29 = v13;
  v30 = v14;
  v31 = v23;
  v32 = v15;
  v33 = v96;
  v96 = v95;
  v91 = v25;
  v89 = v89;
  v34 = v90;
  v95 = v88;
  v35 = v26;
  v90 = v27;
  v88 = v87;
  v87 = v28;
  v86 = v29;
  v85 = v30;
  v36 = v31;
  v84 = v32;
  v83 = v33;
  v96 = v96;
  v37 = objc_msgSendSuper2(&v101, v92, 0, 0);
  v38 = objc_opt_self();
  v39 = v37;
  v40 = [v38 detailViewDateFormatter];
  isa = Date._bridgeToObjectiveC()().super.isa;
  v42 = [v40 stringFromDate:isa];

  if (!v42)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = String._bridgeToObjectiveC()();
  }

  [v39 setTitle:v42];
  v43 = [v39 navigationItem];
  [v43 setLargeTitleDisplayMode:2];

  v44 = [v39 tableView];
  if (!v44)
  {
    __break(1u);
    goto LABEL_18;
  }

  v45 = v44;
  [v44 setSeparatorStyle:0];

  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v47 = v39;
  v48 = [v47 tableView];
  if (!v48)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v49 = v48;
  v92 = v35;
  v93 = v36;
  v50 = v95;
  v51 = objc_allocWithZone(UITableViewDiffableDataSource);
  v99 = sub_100282A98;
  v100 = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100410D80;
  v98 = &unk_10085A8D8;
  v52 = _Block_copy(aBlock);

  v53 = [v51 initWithTableView:v49 cellProvider:v52];

  _Block_release(v52);

  v54 = *&v47[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_dataSource];
  *&v47[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_dataSource] = v53;

  v55 = [v47 tableView];
  if (!v55)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v56 = v55;
  type metadata accessor for StackDetailHeaderCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v58 = String._bridgeToObjectiveC()();
  [v56 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v58];

  v59 = [v47 tableView];
  if (!v59)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v60 = v59;
  type metadata accessor for StackDetailSideBySideItemsCell();
  v61 = swift_getObjCClassFromMetadata();
  v62 = String._bridgeToObjectiveC()();
  [v60 registerClass:v61 forCellReuseIdentifier:v62];

  v63 = [v47 tableView];
  if (!v63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v64 = v63;
  type metadata accessor for WorkoutsListTableViewCell();
  v65 = swift_getObjCClassFromMetadata();
  v66 = String._bridgeToObjectiveC()();
  [v64 registerClass:v65 forCellReuseIdentifier:v66];

  v67 = [v47 tableView];
  if (!v67)
  {
LABEL_22:
    __break(1u);
    return;
  }

  type metadata accessor for MindfulnessSessionListTableViewCell();
  v68 = swift_getObjCClassFromMetadata();
  v69 = String._bridgeToObjectiveC()();
  [v67 registerClass:v68 forCellReuseIdentifier:v69];

  sub_10029DB90();
  v70 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v71 = swift_allocObject();
  *(v71 + 16) = sub_100282AA0;
  *(v71 + 24) = v70;
  v72 = OBJC_IVAR___CHHistoryDataProvider_onChangeHandlers;
  swift_beginAccess();
  v73 = *&v34[v72];
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v34[v72] = v73;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v73 = sub_1001A1E7C(0, v73[2] + 1, 1, v73);
    *&v34[v72] = v73;
  }

  v76 = v73[2];
  v75 = v73[3];
  if (v76 >= v75 >> 1)
  {
    v73 = sub_1001A1E7C((v75 > 1), v76 + 1, 1, v73);
  }

  v73[2] = v76 + 1;
  v77 = &v73[2 * v76];
  v77[4] = sub_100077508;
  v77[5] = v71;
  *&v34[v72] = v73;
  swift_endAccess();

  v78 = v93;

  sub_10043E120(v94, type metadata accessor for FitnessPlusStackViewModel);

  v79 = *(v82 + 24);
  if (v79)
  {
    v80 = [v79 navigationController];
    if (v80)
    {
      v81 = v80;
      [v80 pushViewController:v47 animated:1];
    }
  }
}

uint64_t sub_10043D894()
{
  sub_10000EA04(v0 + OBJC_IVAR____TtC10FitnessApp35LoadDetailViewControllerCoordinator____lazy_storage___loadDetailView, &qword_1008ED748);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LoadDetailViewControllerCoordinator()
{
  result = qword_1008ED600;
  if (!qword_1008ED600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10043D96C()
{
  sub_10043DA14();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10043DA14()
{
  if (!qword_1008ED610)
  {
    type metadata accessor for LoadDetailsView();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1008ED610);
    }
  }
}

void sub_10043DA6C()
{
  v1 = v0;
  InfoPaneDetailView = type metadata accessor for TrainingLoadInfoPaneDetailView();
  __chkstk_darwin(InfoPaneDetailView - 8);
  *(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0)) = swift_getKeyPath();
  sub_100140278(&qword_1008EE800);
  swift_storeEnumTagMultiPayload();
  v4 = objc_allocWithZone(sub_100140278(&qword_1008ED750));
  v5 = UIHostingController.init(rootView:)();
  [v5 setModalPresentationStyle:1];
  v6 = *(v1 + 24);
  if (v6)
  {
    v7 = v6;
    [v7 presentViewController:v5 animated:1 completion:0];
  }
}

void sub_10043DBD4(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a4;
  v46 = a5;
  v43 = a1;
  v44 = a3;
  v42 = type metadata accessor for EffortUtilities.OvernightVitalsState();
  v40 = *(v42 - 8);
  v41 = *(v40 + 64);
  __chkstk_darwin(v42);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for BalanceURLBuilder.Source();
  v7 = *(v37 - 8);
  __chkstk_darwin(v37);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100140278(&qword_1008ED730);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - v11;
  v36 = type metadata accessor for BalanceURLBuilder();
  v13 = *(v36 - 8);
  __chkstk_darwin(v36);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for URL();
  v16 = *(v35 - 8);
  __chkstk_darwin(v35);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = [objc_opt_self() sharedApplication];
  BalanceURLBuilder.init()();
  v19 = *a2;
  v20 = type metadata accessor for BalanceURLBuilder.Route();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v12, v19, v20);
  (*(v21 + 56))(v12, 0, 1, v20);
  v22 = v37;
  (*(v7 + 104))(v9, enum case for BalanceURLBuilder.Source.fitness(_:), v37);
  BalanceURLBuilder.url(route:source:)();
  (*(v7 + 8))(v9, v22);
  sub_10000EA04(v12, &qword_1008ED730);
  (*(v13 + 8))(v15, v36);
  URL._bridgeToObjectiveC()(v23);
  v25 = v24;
  (*(v16 + 8))(v18, v35);
  sub_1004C9534(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_10043F28C(&qword_1008F7990, type metadata accessor for OpenExternalURLOptionsKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v28 = v39;
  v27 = v40;
  v29 = v42;
  (*(v40 + 16))(v39, v43, v42);
  v30 = v27;
  v31 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v32 = swift_allocObject();
  (*(v30 + 32))(v32 + v31, v28, v29);
  aBlock[4] = v45;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10043B93C;
  aBlock[3] = v46;
  v33 = _Block_copy(aBlock);

  v34 = v38;
  [v38 openURL:v25 options:isa completionHandler:v33];
  _Block_release(v33);
}