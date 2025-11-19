void sub_10022AF2C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v82 = type metadata accessor for FTMBandInfoDataModel(0);
  v8 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v78 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v81 = &v76 - v11;
  __chkstk_darwin(v12);
  v14 = &v76 - v13;
  __chkstk_darwin(v15);
  v17 = &v76 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_166;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_167;
  }

  v21 = (a2 - a1) / v19;
  v85 = a1;
  v84 = a4;
  v80 = v19;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v24 = v78;
    }

    else
    {
      v24 = v78;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v79 = a2;
    v48 = a4 + v23;
    if (v23 >= 1)
    {
      v49 = -v80;
      v50 = a4 + v23;
      do
      {
        v51 = v48;
        v52 = v79;
        v79 += v49;
        v80 = v52;
        v76 = v51;
        while (1)
        {
          if (v52 <= a1)
          {
            v85 = v52;
            v83 = v76;
            goto LABEL_164;
          }

          v53 = a3;
          v77 = v51;
          v54 = v49;
          v51 = v50 + v49;
          v55 = v50 + v49;
          v56 = v81;
          sub_1001BB760(v55, v81);
          sub_1001BB760(v79, v24);
          v57 = *(v56 + 25);
          v58 = 0xE300000000000000;
          if (v57 > 3)
          {
            if (*(v56 + 25) > 5u)
            {
              v63 = 4543564;
              if (v57 == 6)
              {
                v58 = 0xE700000000000000;
                v63 = 0x6E776F6E6B6E55;
              }
            }

            else
            {
              v63 = v57 == 4 ? 0x4E41525455 : 5067591;
              v58 = v57 == 4 ? 0xE500000000000000 : 0xE300000000000000;
            }
          }

          else
          {
            v59 = 1398033749;
            if (v57 == 2)
            {
              v59 = 4543564;
            }

            v60 = 0xE400000000000000;
            if (v57 == 2)
            {
              v60 = 0xE300000000000000;
            }

            v61 = 0x41534E20524ELL;
            if (*(v56 + 25))
            {
              v61 = 21070;
            }

            v62 = 0xE600000000000000;
            if (*(v56 + 25))
            {
              v62 = 0xE200000000000000;
            }

            v63 = *(v56 + 25) <= 1u ? v61 : v59;
            v58 = *(v56 + 25) <= 1u ? v62 : v60;
          }

          v64 = *(v24 + 25);
          v65 = 0x6E776F6E6B6E55;
          if (v64 != 6)
          {
            v65 = 4543564;
          }

          v66 = 0xE700000000000000;
          if (v64 != 6)
          {
            v66 = 0xE300000000000000;
          }

          v67 = 0x4E41525455;
          if (v64 != 4)
          {
            v67 = 5067591;
          }

          v68 = 0xE500000000000000;
          if (v64 != 4)
          {
            v68 = 0xE300000000000000;
          }

          if (*(v24 + 25) <= 5u)
          {
            v65 = v67;
            v66 = v68;
          }

          v69 = 1398033749;
          if (v64 == 2)
          {
            v69 = 4543564;
          }

          v70 = 0xE400000000000000;
          if (v64 == 2)
          {
            v70 = 0xE300000000000000;
          }

          v71 = 0x41534E20524ELL;
          if (*(v24 + 25))
          {
            v71 = 21070;
          }

          v72 = 0xE600000000000000;
          if (*(v24 + 25))
          {
            v72 = 0xE200000000000000;
          }

          if (*(v24 + 25) <= 1u)
          {
            v69 = v71;
            v70 = v72;
          }

          v73 = *(v24 + 25) <= 3u ? v69 : v65;
          v74 = *(v24 + 25) <= 3u ? v70 : v66;
          v75 = v63 == v73 && v58 == v74 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();

          a3 = v53 + v54;
          v24 = v78;
          sub_1001BB7C4(v78);
          sub_1001BB7C4(v81);
          if (v75)
          {
            break;
          }

          if (v53 < v50 || a3 >= v50)
          {
            swift_arrayInitWithTakeFrontToBack();
            v49 = v54;
          }

          else
          {
            v49 = v54;
            if (v53 != v50)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v50 = v51;
          v52 = v80;
          if (v51 <= a4)
          {
            v79 = v80;
            v48 = v51;
            goto LABEL_163;
          }
        }

        if (v53 < v80 || a3 >= v80)
        {
          swift_arrayInitWithTakeFrontToBack();
          v49 = v54;
        }

        else
        {
          v49 = v54;
          if (v53 != v80)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v48 = v77;
      }

      while (v50 > a4);
    }

LABEL_163:
    v85 = v79;
    v83 = v48;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v81 = a4 + v22;
    v83 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      do
      {
        v26 = a2;
        sub_1001BB760(a2, v17);
        sub_1001BB760(a4, v14);
        v27 = v17[25];
        v28 = 0xE300000000000000;
        if (v27 > 3)
        {
          if (v17[25] > 5u)
          {
            v33 = 4543564;
            if (v27 == 6)
            {
              v28 = 0xE700000000000000;
              v33 = 0x6E776F6E6B6E55;
            }
          }

          else
          {
            if (v27 == 4)
            {
              v33 = 0x4E41525455;
            }

            else
            {
              v33 = 5067591;
            }

            if (v27 == 4)
            {
              v28 = 0xE500000000000000;
            }

            else
            {
              v28 = 0xE300000000000000;
            }
          }
        }

        else
        {
          v29 = 1398033749;
          if (v27 == 2)
          {
            v29 = 4543564;
          }

          v30 = 0xE400000000000000;
          if (v27 == 2)
          {
            v30 = 0xE300000000000000;
          }

          v31 = 0x41534E20524ELL;
          if (v17[25])
          {
            v31 = 21070;
          }

          v32 = 0xE600000000000000;
          if (v17[25])
          {
            v32 = 0xE200000000000000;
          }

          if (v17[25] <= 1u)
          {
            v33 = v31;
          }

          else
          {
            v33 = v29;
          }

          if (v17[25] <= 1u)
          {
            v28 = v32;
          }

          else
          {
            v28 = v30;
          }
        }

        v34 = v14[25];
        v35 = 0x6E776F6E6B6E55;
        if (v34 != 6)
        {
          v35 = 4543564;
        }

        v36 = 0xE700000000000000;
        if (v34 != 6)
        {
          v36 = 0xE300000000000000;
        }

        v37 = 0x4E41525455;
        if (v34 != 4)
        {
          v37 = 5067591;
        }

        v38 = 0xE500000000000000;
        if (v34 != 4)
        {
          v38 = 0xE300000000000000;
        }

        if (v14[25] <= 5u)
        {
          v35 = v37;
          v36 = v38;
        }

        v39 = 1398033749;
        if (v34 == 2)
        {
          v39 = 4543564;
        }

        v40 = 0xE400000000000000;
        if (v34 == 2)
        {
          v40 = 0xE300000000000000;
        }

        v41 = 0x41534E20524ELL;
        if (v14[25])
        {
          v41 = 21070;
        }

        v42 = 0xE600000000000000;
        if (v14[25])
        {
          v42 = 0xE200000000000000;
        }

        if (v14[25] <= 1u)
        {
          v39 = v41;
          v40 = v42;
        }

        if (v14[25] <= 3u)
        {
          v43 = v39;
        }

        else
        {
          v43 = v35;
        }

        if (v14[25] <= 3u)
        {
          v44 = v40;
        }

        else
        {
          v44 = v36;
        }

        if (v33 == v43 && v28 == v44)
        {

          sub_1001BB7C4(v14);
          sub_1001BB7C4(v17);
        }

        else
        {
          v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

          sub_1001BB7C4(v14);
          sub_1001BB7C4(v17);
          if (v45)
          {
            v46 = v80;
            a2 = v26 + v80;
            if (a1 < v26 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            goto LABEL_84;
          }
        }

        v46 = v80;
        v47 = a4 + v80;
        a2 = v26;
        if (a1 < a4 || a1 >= v47)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v84 = v47;
        a4 += v46;
LABEL_84:
        a1 += v46;
        v85 = a1;
      }

      while (a4 < v81 && a2 < a3);
    }
  }

LABEL_164:
  sub_100252D64(&v85, &v84, &v83);
}

void sub_10022B740(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = type metadata accessor for FTMBandInfoDataModel(0);
  v8 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v50 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = &v43 - v11;
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  __chkstk_darwin(v15);
  v17 = &v43 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_72;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_73;
  }

  v21 = (a2 - a1) / v19;
  v54 = a1;
  v53 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = a4 + v23;
    if (v23 >= 1)
    {
      v30 = -v19;
      v31 = v29;
      v45 = a1;
      v46 = a4;
      do
      {
        v43 = v29;
        v32 = a2;
        v33 = a2 + v30;
        v47 = v32;
        v48 = v33;
        while (1)
        {
          if (v32 <= a1)
          {
            v54 = v32;
            v52 = v43;
            goto LABEL_70;
          }

          v34 = a3;
          v44 = v29;
          v35 = v31 + v30;
          v36 = v49;
          v37 = v31;
          sub_1001BB760(v31 + v30, v49);
          v38 = v50;
          sub_1001BB760(v33, v50);
          v39 = *(v36 + 24) ? 0 : *(v36 + 16);
          v40 = *(v38 + 16);
          v41 = *(v38 + 24) ? 0 : *(v38 + 16);
          v42 = v34 + v30;
          sub_1001BB7C4(v38);
          sub_1001BB7C4(v36);
          if (v39 < v41)
          {
            break;
          }

          v29 = v35;
          a3 = v34 + v30;
          if (v34 < v37 || v42 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
            v33 = v48;
            a1 = v45;
          }

          else
          {
            v33 = v48;
            a1 = v45;
            if (v34 != v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v31 = v35;
          v32 = v47;
          if (v35 <= v46)
          {
            a2 = v47;
            goto LABEL_69;
          }
        }

        a3 = v34 + v30;
        if (v34 < v47 || v42 >= v47)
        {
          a2 = v48;
          swift_arrayInitWithTakeFrontToBack();
          v29 = v44;
          a1 = v45;
        }

        else
        {
          a2 = v48;
          v29 = v44;
          a1 = v45;
          if (v34 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v31 = v37;
      }

      while (v37 > v46);
    }

LABEL_69:
    v54 = a2;
    v52 = v29;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v50 = a4 + v22;
    v52 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      do
      {
        v25 = v19;
        sub_1001BB760(a2, v17);
        sub_1001BB760(a4, v14);
        if (v17[24])
        {
          v26 = 0;
        }

        else
        {
          v26 = *(v17 + 2);
        }

        v27 = *(v14 + 2);
        if (v14[24])
        {
          v28 = 0;
        }

        else
        {
          v28 = *(v14 + 2);
        }

        sub_1001BB7C4(v14);
        sub_1001BB7C4(v17);
        if (v26 >= v28)
        {
          v19 = v25;
          if (a1 < a4 || a1 >= a4 + v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = a4 + v25;
          a4 += v25;
        }

        else
        {
          v19 = v25;
          if (a1 < a2 || a1 >= a2 + v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        a1 += v19;
        v54 = a1;
      }

      while (a4 < v50 && a2 < a3);
    }
  }

LABEL_70:
  sub_100252D64(&v54, &v53, &v52);
}

void *sub_10022BC34(uint64_t a1)
{
  v2 = type metadata accessor for FTMBandInfoDataModel(0);
  v65 = *(v2 - 8);
  v3 = *(v65 + 64);
  __chkstk_darwin(v2 - 8);
  v61 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v63 = &v57 - v6;
  __chkstk_darwin(v7);
  v62 = &v57 - v8;
  __chkstk_darwin(v9);
  v64 = (&v57 - v10);
  __chkstk_darwin(v11);
  v13 = &v57 - v12;
  __chkstk_darwin(v14);
  v16 = &v57 - v15;
  __chkstk_darwin(v17);
  v58 = &v57 - v18;
  __chkstk_darwin(v19);
  v21 = &v57 - v20;
  if (qword_100375018 != -1)
  {
    goto LABEL_78;
  }

  while (1)
  {
    if (*(qword_100382500 + 160))
    {
      return _swiftEmptyArrayStorage;
    }

    v60 = v13;
    v13 = *(a1 + 16);
    if (v13)
    {
      v23 = *(qword_100382500 + 156);
      v24 = *(v65 + 72);
      v59 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v25 = a1 + v59;
      v26 = _swiftEmptyArrayStorage;
      a1 = v58;
      while (1)
      {
        sub_1001BB760(v25, v21);
        if (*(v21 + 8) == 1)
        {
          if (!v23)
          {
            goto LABEL_11;
          }
        }

        else if (*v21 == v23)
        {
LABEL_11:
          sub_1001BB4B8(v21, a1);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v67 = v26;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1001F5438(0, v26[2] + 1, 1);
            a1 = v58;
            v26 = v67;
          }

          v29 = v26[2];
          v28 = v26[3];
          if (v29 >= v28 >> 1)
          {
            sub_1001F5438(v28 > 1, v29 + 1, 1);
            a1 = v58;
            v26 = v67;
          }

          v26[2] = v29 + 1;
          sub_1001BB4B8(a1, v26 + v59 + v29 * v24);
          goto LABEL_8;
        }

        sub_1001BB7C4(v21);
LABEL_8:
        v25 += v24;
        if (!--v13)
        {
          goto LABEL_17;
        }
      }
    }

    v26 = _swiftEmptyArrayStorage;
LABEL_17:
    v30 = v26[2];
    v31 = v60;
    if (!v30)
    {
      break;
    }

    v21 = 0;
    v32 = _swiftEmptyArrayStorage;
    while (v21 < v26[2])
    {
      v13 = ((*(v65 + 80) + 32) & ~*(v65 + 80));
      v33 = *(v65 + 72);
      sub_1001BB760(&v13[v26 + v33 * v21], v16);
      v34 = v16[9];
      if (v34 <= 1)
      {
        if (!v16[9])
        {
LABEL_27:

LABEL_31:
          sub_1001BB4B8(v16, v31);
          v36 = swift_isUniquelyReferenced_nonNull_native();
          v67 = v32;
          if ((v36 & 1) == 0)
          {
            a1 = &v67;
            sub_1001F5438(0, v32[2] + 1, 1);
            v32 = v67;
          }

          v38 = v32[2];
          v37 = v32[3];
          if (v38 >= v37 >> 1)
          {
            a1 = &v67;
            sub_1001F5438(v37 > 1, v38 + 1, 1);
            v32 = v67;
          }

          v32[2] = v38 + 1;
          v39 = &v13[v32 + v38 * v33];
          v31 = v60;
          sub_1001BB4B8(v60, v39);
          goto LABEL_20;
        }

        a1 = 0xE100000000000000;
      }

      else if (v34 == 2)
      {
        a1 = 0xE200000000000000;
      }

      else
      {
        if (v34 != 3)
        {
          goto LABEL_27;
        }

        a1 = 0xE200000000000000;
      }

      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v35)
      {
        goto LABEL_31;
      }

      sub_1001BB7C4(v16);
LABEL_20:
      if (v30 == ++v21)
      {
        v60 = v30;
        v16 = 0;
        a1 = _swiftEmptyArrayStorage;
        v40 = &v13[v26];
        while (1)
        {
          if (v16 >= v26[2])
          {
            goto LABEL_76;
          }

          v41 = v64;
          sub_1001BB760(v40, v64);
          v42 = *(v41 + 9);
          if (v42 == 2)
          {
            break;
          }

          v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v43)
          {
            goto LABEL_45;
          }

          if (v42 == 3)
          {
            break;
          }

          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v21)
          {
            goto LABEL_45;
          }

          sub_1001BB7C4(v64);
LABEL_38:
          ++v16;
          v40 += v33;
          if (v60 == v16)
          {
            goto LABEL_51;
          }
        }

LABEL_45:
        sub_1001BB4B8(v64, v62);
        v44 = swift_isUniquelyReferenced_nonNull_native();
        v67 = a1;
        if ((v44 & 1) == 0)
        {
          sub_1001F5438(0, *(a1 + 16) + 1, 1);
          a1 = v67;
        }

        v21 = *(a1 + 16);
        v45 = *(a1 + 24);
        if (v21 >= v45 >> 1)
        {
          sub_1001F5438(v45 > 1, v21 + 1, 1);
          a1 = v67;
        }

        *(a1 + 16) = v21 + 1;
        sub_1001BB4B8(v62, &v13[a1 + v21 * v33]);
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    swift_once();
  }

  v32 = _swiftEmptyArrayStorage;
  a1 = _swiftEmptyArrayStorage;
LABEL_51:
  v67 = a1;

  sub_1002290E0(&v67);

  sub_100229038(&v67);
  v62 = 0;

  v64 = v67;
  v13 = v26[2];
  if (v13)
  {
    v46 = 0;
    a1 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v46 >= v26[2])
      {
        goto LABEL_77;
      }

      v16 = ((*(v65 + 80) + 32) & ~*(v65 + 80));
      v47 = *(v65 + 72);
      v48 = v63;
      sub_1001BB760(&v16[v26 + v47 * v46], v63);
      v49 = *(v48 + 9);
      v21 = 0xE100000000000000;
      if (v49 <= 1)
      {
        if (v49)
        {

LABEL_67:
          sub_1001BB4B8(v63, v61);
          v52 = swift_isUniquelyReferenced_nonNull_native();
          v67 = a1;
          if ((v52 & 1) == 0)
          {
            sub_1001F5438(0, *(a1 + 16) + 1, 1);
            a1 = v67;
          }

          v54 = *(a1 + 16);
          v53 = *(a1 + 24);
          v21 = v54 + 1;
          if (v54 >= v53 >> 1)
          {
            sub_1001F5438(v53 > 1, v54 + 1, 1);
            a1 = v67;
          }

          *(a1 + 16) = v21;
          sub_1001BB4B8(v61, &v16[a1 + v54 * v47]);
          goto LABEL_54;
        }
      }

      else
      {
        if (v49 == 3)
        {
          v50 = 0xE200000000000000;
        }

        else
        {
          v50 = 0xE100000000000000;
        }

        if (v49 == 2)
        {
          v21 = 0xE200000000000000;
        }

        else
        {
          v21 = v50;
        }
      }

      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v51)
      {
        goto LABEL_67;
      }

      sub_1001BB7C4(v63);
LABEL_54:
      if (v13 == ++v46)
      {
        goto LABEL_73;
      }
    }
  }

  a1 = _swiftEmptyArrayStorage;
LABEL_73:

  v67 = a1;

  v55 = v62;
  sub_1002290E0(&v67);
  if (v55)
  {

    __break(1u);
  }

  else
  {

    v56 = v67;
    v66 = v32;
    sub_1001E2F7C(v64);
    sub_1001E2F7C(v56);
    return v66;
  }

  return result;
}

int64_t sub_10022C460(uint64_t a1)
{
  v407 = type metadata accessor for GridItem.Size();
  v410 = *(v407 - 8);
  v2 = *(v410 + 64);
  __chkstk_darwin(v407);
  v379 = (&v348 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v406 = (&v348 - v5);
  __chkstk_darwin(v6);
  v364 = (&v348 - v7);
  v408 = type metadata accessor for GridItem();
  v411 = *(v408 - 8);
  v8 = *(v411 + 64);
  __chkstk_darwin(v408);
  v10 = &v348 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v372 = &v348 - v12;
  __chkstk_darwin(v13);
  v373 = &v348 - v14;
  __chkstk_darwin(v15);
  v359 = &v348 - v16;
  __chkstk_darwin(v17);
  v362 = &v348 - v18;
  __chkstk_darwin(v19);
  v358 = &v348 - v20;
  __chkstk_darwin(v21);
  v369 = &v348 - v22;
  __chkstk_darwin(v23);
  v367 = &v348 - v24;
  __chkstk_darwin(v25);
  v27 = &v348 - v26;
  __chkstk_darwin(v28);
  v370 = &v348 - v29;
  __chkstk_darwin(v30);
  v380 = &v348 - v31;
  __chkstk_darwin(v32);
  v394 = &v348 - v33;
  __chkstk_darwin(v34);
  *&v386 = &v348 - v35;
  __chkstk_darwin(v36);
  v38 = &v348 - v37;
  __chkstk_darwin(v39);
  v355 = &v348 - v40;
  __chkstk_darwin(v41);
  v356 = &v348 - v42;
  __chkstk_darwin(v43);
  v357 = &v348 - v44;
  __chkstk_darwin(v45);
  v349 = &v348 - v46;
  __chkstk_darwin(v47);
  v351 = &v348 - v48;
  __chkstk_darwin(v49);
  v354 = &v348 - v50;
  __chkstk_darwin(v51);
  v365 = &v348 - v52;
  __chkstk_darwin(v53);
  v352 = &v348 - v54;
  __chkstk_darwin(v55);
  v350 = &v348 - v56;
  __chkstk_darwin(v57);
  v366 = &v348 - v58;
  __chkstk_darwin(v59);
  v353 = &v348 - v60;
  __chkstk_darwin(v61);
  v374 = &v348 - v62;
  __chkstk_darwin(v63);
  v363 = &v348 - v64;
  v65 = type metadata accessor for FTMBandInfoDataModel(0);
  v395 = *(v65 - 8);
  v66 = *(v395 + 64);
  __chkstk_darwin(v65 - 8);
  v396 = &v348 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v68);
  v391 = &v348 - v69;
  __chkstk_darwin(v70);
  v397 = (&v348 - v71);
  __chkstk_darwin(v72);
  v393 = &v348 - v73;
  __chkstk_darwin(v74);
  v398 = &v348 - v75;
  __chkstk_darwin(v76);
  v402 = (&v348 - v77);
  __chkstk_darwin(v78);
  *&v388 = &v348 - v79;
  __chkstk_darwin(v80);
  v405 = &v348 - v81;
  __chkstk_darwin(v82);
  v84 = &v348 - v83;
  __chkstk_darwin(v85);
  v385 = &v348 - v86;
  __chkstk_darwin(v87);
  v368 = &v348 - v88;
  __chkstk_darwin(v89);
  v409 = &v348 - v90;
  __chkstk_darwin(v91);
  v382 = &v348 - v92;
  __chkstk_darwin(v93);
  v95 = &v348 - v94;
  __chkstk_darwin(v96);
  v383 = &v348 - v97;
  __chkstk_darwin(v98);
  v389 = &v348 - v99;
  __chkstk_darwin(v100);
  v384 = &v348 - v101;
  __chkstk_darwin(v102);
  v403 = &v348 - v103;
  __chkstk_darwin(v104);
  v375 = &v348 - v105;
  __chkstk_darwin(v106);
  v390 = (&v348 - v107);
  __chkstk_darwin(v108);
  v377 = &v348 - v109;
  __chkstk_darwin(v110);
  v399 = &v348 - v111;
  __chkstk_darwin(v112);
  v376 = &v348 - v113;
  __chkstk_darwin(v114);
  v392 = &v348 - v115;
  __chkstk_darwin(v116);
  v118 = &v348 - v117;
  __chkstk_darwin(v119);
  v121 = &v348 - v120;
  if (qword_100375018 != -1)
  {
    goto LABEL_351;
  }

  while (1)
  {
    v381 = v84;
    v361 = v27;
    v378 = v95;
    v360 = v38;
    v371 = v10;
    v412 = qword_100382500;
    v387 = sub_10020C300(a1);
    v122 = *(a1 + 16);
    v400 = v122;
    v401 = a1;
    if (v122)
    {
      v123 = *(v395 + 72);
      v124 = _swiftEmptyArrayStorage;
      v404 = ((*(v395 + 80) + 32) & ~*(v395 + 80));
      v125 = v404 + a1;
      do
      {
        sub_1001BB760(v125, v121);
        v126 = *(v121 + 40);
        if (v126 && (v415 = *(v121 + 32), v416 = v126, v413 = 47, v414 = 0xE100000000000000, sub_1001A56A0(), (StringProtocol.contains<A>(_:)() & 1) != 0))
        {
          sub_1001BB4B8(v121, v118);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v417 = v124;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1001F5438(0, v124[2] + 1, 1);
            v124 = v417;
          }

          v129 = v124[2];
          v128 = v124[3];
          if (v129 >= v128 >> 1)
          {
            sub_1001F5438(v128 > 1, v129 + 1, 1);
            v124 = v417;
          }

          v124[2] = v129 + 1;
          sub_1001BB4B8(v118, v404 + v124 + v129 * v123);
        }

        else
        {
          sub_1001BB7C4(v121);
        }

        v125 += v123;
        --v122;
      }

      while (v122);
    }

    else
    {
      v124 = _swiftEmptyArrayStorage;
    }

    v130 = v124[2];

    if (*(v412 + 32) == 1684099177 && *(v412 + 40) == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v131 = 70.0;
      if (!v130)
      {
        v131 = 50.0;
      }

      v132 = v379;
      *v379 = v131;
      v132[1] = 200.0;
      v133 = enum case for GridItem.Size.flexible(_:);
      v134 = *(v410 + 104);
      v410 += 104;
      (v134)(v132, enum case for GridItem.Size.flexible(_:), v407);
      v135 = v400;
      if (qword_100375050 != -1)
      {
        swift_once();
      }

      v136 = qword_100382570;
      GridItem.init(_:spacing:alignment:)();
      v137 = sub_1002251DC(0, 1, 1, _swiftEmptyArrayStorage);
      v139 = *(v137 + 16);
      v138 = *(v137 + 24);
      v140 = v402;
      v84 = v381;
      if (v139 >= v138 >> 1)
      {
        v137 = sub_1002251DC(v138 > 1, v139 + 1, 1, v137);
      }

      *(v137 + 16) = v139 + 1;
      v141 = *(v411 + 32);
      v403 = ((*(v411 + 80) + 32) & ~*(v411 + 80));
      v399 = *(v411 + 72);
      v411 += 32;
      v404 = v141;
      v141(&v403[v137 + v399 * v139], v386, v408);
      v142 = v406;
      v386 = xmmword_1002F3420;
      *v406 = xmmword_1002F3420;
      (v134)(v142, v133, v407);
      GridItem.init(_:spacing:alignment:)();
      v144 = *(v137 + 16);
      v143 = *(v137 + 24);
      if (v144 >= v143 >> 1)
      {
        v137 = sub_1002251DC(v143 > 1, v144 + 1, 1, v137);
      }

      *(v137 + 16) = v144 + 1;
      v404(&v403[v137 + v144 * v399], v394, v408);
      *v406 = v386;
      v134();
      v390 = v134;
      v389 = v136;
      LODWORD(v392) = v133;
      if (v387 & 0x100) != 0 || (v387)
      {
        v155 = v369;
        GridItem.init(_:spacing:alignment:)();
        v157 = *(v137 + 16);
        v156 = *(v137 + 24);
        if (v157 >= v156 >> 1)
        {
          v137 = sub_1002251DC(v156 > 1, v157 + 1, 1, v137);
        }

        *(v137 + 16) = v157 + 1;
        v404(&v403[v137 + v157 * v399], v155, v408);
        if ((v387 & 0x100) != 0)
        {
          v159 = v406;
          v158 = v407;
          *v406 = v386;
          (v134)(v159, v133, v158);
          v160 = v358;
          GridItem.init(_:spacing:alignment:)();
          v162 = *(v137 + 16);
          v161 = *(v137 + 24);
          if (v162 >= v161 >> 1)
          {
            v137 = sub_1002251DC(v161 > 1, v162 + 1, 1, v137);
          }

          v27 = v385;
          *(v137 + 16) = v162 + 1;
          v404(&v403[v137 + v162 * v399], v160, v408);
        }

        else
        {
          v27 = v385;
        }

        v394 = v137;
        a1 = v412;
        if (v135)
        {
          v121 = v135;
          v38 = ((*(v395 + 80) + 32) & ~*(v395 + 80));
          v190 = *(v395 + 72);
          v118 = &v38[v401];
          v10 = _swiftEmptyArrayStorage;
          v95 = 0x7FFFFFFFLL;
          while (1)
          {
            sub_1001BB760(v118, v27);
            v191 = *v27;
            if (*(v27 + 8))
            {
              v191 = 0;
            }

            if (v191 < 0xFFFFFFFF80000000)
            {
              goto LABEL_333;
            }

            if (v191 > 0x7FFFFFFF)
            {
              goto LABEL_335;
            }

            if (*(a1 + 160) & 1) != 0 || *(a1 + 156) != v191 || (*(v27 + 248))
            {
              sub_1001BB7C4(v27);
            }

            else
            {
              sub_1001BB4B8(v27, v84);
              v192 = swift_isUniquelyReferenced_nonNull_native();
              v415 = v10;
              if ((v192 & 1) == 0)
              {
                sub_1001F5438(0, *(v10 + 2) + 1, 1);
                v10 = v415;
              }

              v194 = *(v10 + 2);
              v193 = *(v10 + 3);
              if (v194 >= v193 >> 1)
              {
                sub_1001F5438(v193 > 1, v194 + 1, 1);
                v10 = v415;
              }

              *(v10 + 2) = v194 + 1;
              sub_1001BB4B8(v84, &v38[v10 + v194 * v190]);
              a1 = v412;
              v27 = v385;
            }

            v118 += v190;
            if (!--v121)
            {
              goto LABEL_101;
            }
          }
        }

        v10 = _swiftEmptyArrayStorage;
LABEL_101:
        v195 = *(v10 + 2);

        if (v195)
        {
          v197 = v406;
          v196 = v407;
          *v406 = xmmword_1002F3430;
          (v390)(v197, v392, v196);
          v198 = v362;
          GridItem.init(_:spacing:alignment:)();
          v199 = v394;
          v201 = *(v394 + 2);
          v200 = *(v394 + 3);
          v202 = v400;
          v140 = v402;
          if (v201 >= v200 >> 1)
          {
            v199 = sub_1002251DC(v200 > 1, v201 + 1, 1, v394);
          }

          *(v199 + 16) = v201 + 1;
          v404(&v403[v199 + v201 * v399], v198, v408);
        }

        else
        {
          v202 = v400;
          v199 = v394;
          v140 = v402;
        }

        v394 = v199;
        a1 = v412;
        if (v202)
        {
          v121 = v202;
          v38 = ((*(v395 + 80) + 32) & ~*(v395 + 80));
          v27 = *(v395 + 72);
          v118 = &v38[v401];
          v10 = _swiftEmptyArrayStorage;
          v95 = 0x7FFFFFFFLL;
          v84 = v405;
          while (1)
          {
            sub_1001BB760(v118, v84);
            v213 = *v84;
            if (*(v84 + 8))
            {
              v213 = 0;
            }

            if (v213 < 0xFFFFFFFF80000000)
            {
              break;
            }

            if (v213 > 0x7FFFFFFF)
            {
              goto LABEL_338;
            }

            if (*(a1 + 160) & 1) != 0 || *(a1 + 156) != v213 || (*(v84 + 264))
            {
              sub_1001BB7C4(v84);
            }

            else
            {
              sub_1001BB4B8(v84, v388);
              v214 = swift_isUniquelyReferenced_nonNull_native();
              v415 = v10;
              if ((v214 & 1) == 0)
              {
                sub_1001F5438(0, *(v10 + 2) + 1, 1);
                v10 = v415;
              }

              v216 = *(v10 + 2);
              v215 = *(v10 + 3);
              if (v216 >= v215 >> 1)
              {
                sub_1001F5438(v215 > 1, v216 + 1, 1);
                v10 = v415;
              }

              *(v10 + 2) = v216 + 1;
              sub_1001BB4B8(v388, &v38[v10 + v216 * v27]);
              a1 = v412;
              v140 = v402;
            }

            v118 += v27;
            if (!--v121)
            {
              goto LABEL_128;
            }
          }

LABEL_337:
          __break(1u);
LABEL_338:
          __break(1u);
          goto LABEL_339;
        }

        v10 = _swiftEmptyArrayStorage;
LABEL_128:
        v217 = *(v10 + 2);

        if (!v217)
        {
          v212 = v400;
          v209 = v394;
LABEL_134:
          v84 = v209;
          a1 = v412;
          if (v212)
          {
            v121 = v212;
            v118 = (*(v395 + 80) + 32) & ~*(v395 + 80);
            v27 = *(v395 + 72);
            v38 = (v401 + v118);
            v10 = _swiftEmptyArrayStorage;
            v95 = 0x7FFFFFFFLL;
            while (1)
            {
              sub_1001BB760(v38, v140);
              v226 = *v140;
              if (*(v140 + 8))
              {
                v226 = 0;
              }

              if (v226 < 0xFFFFFFFF80000000)
              {
                break;
              }

              if (v226 > 0x7FFFFFFF)
              {
                goto LABEL_328;
              }

              if (*(a1 + 160) & 1) != 0 || *(a1 + 156) != v226 || (*(v140 + 88))
              {
                sub_1001BB7C4(v140);
              }

              else
              {
                sub_1001BB4B8(v140, v398);
                v227 = swift_isUniquelyReferenced_nonNull_native();
                v415 = v10;
                if ((v227 & 1) == 0)
                {
                  sub_1001F5438(0, *(v10 + 2) + 1, 1);
                  v10 = v415;
                }

                v229 = *(v10 + 2);
                v228 = *(v10 + 3);
                if (v229 >= v228 >> 1)
                {
                  sub_1001F5438(v228 > 1, v229 + 1, 1);
                  v10 = v415;
                }

                *(v10 + 2) = v229 + 1;
                sub_1001BB4B8(v398, &v10[v118 + v229 * v27]);
                a1 = v412;
                v140 = v402;
              }

              v38 += v27;
              if (!--v121)
              {
                goto LABEL_151;
              }
            }

            __break(1u);
LABEL_328:
            __break(1u);
          }

          else
          {
            v10 = _swiftEmptyArrayStorage;
LABEL_151:
            v230 = *(v10 + 2);

            if (v230)
            {
              v232 = v406;
              v231 = v407;
              *v406 = xmmword_1002F3440;
              (v390)(v232, v392, v231);
              v233 = v373;
              GridItem.init(_:spacing:alignment:)();
              v235 = *(v84 + 16);
              v234 = *(v84 + 24);
              v236 = v400;
              if (v235 >= v234 >> 1)
              {
                v84 = sub_1002251DC(v234 > 1, v235 + 1, 1, v84);
              }

              *(v84 + 16) = v235 + 1;
              v404(&v403[v84 + v235 * v399], v233, v408);
            }

            else
            {
              v236 = v400;
            }

            a1 = v412;
            v118 = v393;
            if (!v236)
            {
              v10 = _swiftEmptyArrayStorage;
LABEL_173:
              v242 = *(v10 + 2);

              if (v242)
              {
                v244 = v406;
                v243 = v407;
                *v406 = xmmword_1002F3440;
                (v390)(v244, v392, v243);
                v118 = v372;
                GridItem.init(_:spacing:alignment:)();
                v246 = *(v84 + 16);
                v245 = *(v84 + 24);
                v38 = v400;
                v121 = v391;
                if (v246 >= v245 >> 1)
                {
                  v84 = sub_1002251DC(v245 > 1, v246 + 1, 1, v84);
                }

                *(v84 + 16) = v246 + 1;
                v404(&v403[v84 + v246 * v399], v118, v408);
                if (!v38)
                {
LABEL_193:
                  v10 = _swiftEmptyArrayStorage;
LABEL_194:
                  v251 = *(v10 + 2);

                  if (v251)
                  {
                    v253 = v406;
                    v252 = v407;
                    *v406 = xmmword_1002F3440;
                    (v390)(v253, v392, v252);
                    v254 = v371;
                    GridItem.init(_:spacing:alignment:)();
                    v256 = *(v84 + 16);
                    v255 = *(v84 + 24);
                    if (v256 >= v255 >> 1)
                    {
                      v84 = sub_1002251DC(v255 > 1, v256 + 1, 1, v84);
                    }

                    *(v84 + 16) = v256 + 1;
                    v404(&v403[v84 + v256 * v399], v254, v408);
                  }

                  return v84;
                }
              }

              else
              {
                v38 = v400;
                v121 = v391;
                if (!v400)
                {
                  goto LABEL_193;
                }
              }

              v27 = (*(v395 + 80) + 32) & ~*(v395 + 80);
              v247 = *(v395 + 72);
              a1 = v401 + v27;
              v10 = _swiftEmptyArrayStorage;
              v95 = 0x7FFFFFFFLL;
              while (1)
              {
                sub_1001BB760(a1, v121);
                v248 = *v121;
                if (*(v121 + 8))
                {
                  v248 = 0;
                }

                if (v248 < 0xFFFFFFFF80000000)
                {
                  goto LABEL_331;
                }

                if (v248 > 0x7FFFFFFF)
                {
                  goto LABEL_332;
                }

                if (*(v412 + 160) & 1) != 0 || *(v412 + 156) != v248 || (*(v121 + 120))
                {
                  sub_1001BB7C4(v121);
                }

                else
                {
                  sub_1001BB4B8(v121, v396);
                  v249 = swift_isUniquelyReferenced_nonNull_native();
                  v415 = v10;
                  if ((v249 & 1) == 0)
                  {
                    sub_1001F5438(0, *(v10 + 2) + 1, 1);
                    v10 = v415;
                  }

                  v118 = *(v10 + 2);
                  v250 = *(v10 + 3);
                  if (v118 >= v250 >> 1)
                  {
                    sub_1001F5438(v250 > 1, v118 + 1, 1);
                    v10 = v415;
                  }

                  *(v10 + 2) = v118 + 1;
                  sub_1001BB4B8(v396, &v10[v27 + v118 * v247]);
                  v121 = v391;
                }

                a1 += v247;
                if (!--v38)
                {
                  goto LABEL_194;
                }
              }
            }

            v121 = v236;
            v27 = (*(v395 + 80) + 32) & ~*(v395 + 80);
            v237 = *(v395 + 72);
            v38 = (v401 + v27);
            v10 = _swiftEmptyArrayStorage;
            v95 = 0x7FFFFFFFLL;
            while (1)
            {
              sub_1001BB760(v38, v118);
              v238 = *v118;
              if (*(v118 + 8))
              {
                v238 = 0;
              }

              if (v238 < 0xFFFFFFFF80000000)
              {
                break;
              }

              if (v238 > 0x7FFFFFFF)
              {
                goto LABEL_330;
              }

              if (*(a1 + 160) & 1) != 0 || *(a1 + 156) != v238 || (*(v118 + 104))
              {
                sub_1001BB7C4(v118);
              }

              else
              {
                sub_1001BB4B8(v118, v397);
                v239 = swift_isUniquelyReferenced_nonNull_native();
                v415 = v10;
                if ((v239 & 1) == 0)
                {
                  sub_1001F5438(0, *(v10 + 2) + 1, 1);
                  v10 = v415;
                }

                v241 = *(v10 + 2);
                v240 = *(v10 + 3);
                if (v241 >= v240 >> 1)
                {
                  sub_1001F5438(v240 > 1, v241 + 1, 1);
                  v10 = v415;
                }

                *(v10 + 2) = v241 + 1;
                sub_1001BB4B8(v397, &v10[v27 + v241 * v237]);
                a1 = v412;
                v118 = v393;
              }

              v38 += v237;
              if (!--v121)
              {
                goto LABEL_173;
              }
            }
          }

          __break(1u);
LABEL_330:
          __break(1u);
LABEL_331:
          __break(1u);
LABEL_332:
          __break(1u);
LABEL_333:
          __break(1u);
          goto LABEL_334;
        }

        v219 = v406;
        v218 = v407;
        *v406 = xmmword_1002F3430;
        (v390)(v219, v392, v218);
        v220 = v359;
        GridItem.init(_:spacing:alignment:)();
        v209 = v394;
        v222 = *(v394 + 2);
        v221 = *(v394 + 3);
        v223 = v222 + 1;
        v212 = v400;
        if (v222 < v221 >> 1)
        {
LABEL_133:
          *(v209 + 16) = v223;
          v404(&v403[v209 + v222 * v399], v220, v408);
          goto LABEL_134;
        }
      }

      else
      {
        GridItem.init(_:spacing:alignment:)();
        v146 = *(v137 + 16);
        v145 = *(v137 + 24);
        if (v146 >= v145 >> 1)
        {
          v137 = sub_1002251DC(v145 > 1, v146 + 1, 1, v137);
        }

        v84 = v368;
        *(v137 + 16) = v146 + 1;
        v404(&v403[v137 + v146 * v399], v380, v408);
        v147 = v406;
        v388 = xmmword_1002F3430;
        *v406 = xmmword_1002F3430;
        (v134)(v147, v133, v407);
        v148 = v370;
        GridItem.init(_:spacing:alignment:)();
        v150 = *(v137 + 16);
        v149 = *(v137 + 24);
        if (v150 >= v149 >> 1)
        {
          v137 = sub_1002251DC(v149 > 1, v150 + 1, 1, v137);
        }

        *(v137 + 16) = v150 + 1;
        v394 = v137;
        v404(&v403[v137 + v150 * v399], v148, v408);
        if (v135)
        {
          v121 = v135;
          v27 = *(v395 + 72);
          v405 = (*(v395 + 80) + 32) & ~*(v395 + 80);
          v38 = (v401 + v405);
          v10 = _swiftEmptyArrayStorage;
          v95 = 0x7FFFFFFFLL;
          a1 = v412;
          while (1)
          {
            v118 = v409;
            sub_1001BB760(v38, v409);
            v151 = *v118;
            if (*(v118 + 8))
            {
              v151 = 0;
            }

            if (v151 < 0xFFFFFFFF80000000)
            {
              break;
            }

            if (v151 > 0x7FFFFFFF)
            {
              goto LABEL_336;
            }

            if (*(a1 + 160) & 1) != 0 || *(a1 + 156) != v151 || (*(v118 + 200))
            {
              sub_1001BB7C4(v118);
            }

            else
            {
              sub_1001BB4B8(v118, v84);
              v152 = swift_isUniquelyReferenced_nonNull_native();
              v415 = v10;
              if ((v152 & 1) == 0)
              {
                sub_1001F5438(0, *(v10 + 2) + 1, 1);
                v10 = v415;
              }

              v154 = *(v10 + 2);
              v153 = *(v10 + 3);
              if (v154 >= v153 >> 1)
              {
                sub_1001F5438(v153 > 1, v154 + 1, 1);
                v10 = v415;
              }

              *(v10 + 2) = v154 + 1;
              sub_1001BB4B8(v84, &v10[v405 + v154 * v27]);
              a1 = v412;
              v140 = v402;
            }

            v38 += v27;
            if (!--v121)
            {
              goto LABEL_106;
            }
          }

LABEL_334:
          __break(1u);
LABEL_335:
          __break(1u);
LABEL_336:
          __break(1u);
          goto LABEL_337;
        }

        v10 = _swiftEmptyArrayStorage;
LABEL_106:
        v203 = *(v10 + 2);

        if (v203)
        {
          v205 = v406;
          v204 = v407;
          *v406 = v388;
          v206 = v392;
          v207 = v390;
          (v390)(v205, v392, v204);
          v208 = v361;
          GridItem.init(_:spacing:alignment:)();
          v209 = v394;
          v211 = *(v394 + 2);
          v210 = *(v394 + 3);
          v212 = v400;
          if (v211 >= v210 >> 1)
          {
            v209 = sub_1002251DC(v210 > 1, v211 + 1, 1, v394);
          }

          *(v209 + 16) = v211 + 1;
          v404(&v403[v209 + v211 * v399], v208, v408);
        }

        else
        {
          v212 = v400;
          v209 = v394;
          v207 = v390;
          v206 = v392;
        }

        v225 = v406;
        v224 = v407;
        *v406 = v388;
        (v207)(v225, v206, v224);
        v220 = v367;
        GridItem.init(_:spacing:alignment:)();
        v222 = *(v209 + 16);
        v221 = *(v209 + 24);
        v223 = v222 + 1;
        if (v222 < v221 >> 1)
        {
          goto LABEL_133;
        }
      }

      v209 = sub_1002251DC(v221 > 1, v223, 1, v209);
      goto LABEL_133;
    }

    v163 = 70.0;
    if (!v130)
    {
      v163 = 50.0;
    }

    v164 = v364;
    *v364 = v163;
    v165 = enum case for GridItem.Size.fixed(_:);
    v166 = *(v410 + 104);
    v410 += 104;
    (v166)(v164, enum case for GridItem.Size.fixed(_:), v407);
    v84 = v401;
    if (qword_100375050 != -1)
    {
      swift_once();
    }

    v167 = qword_100382570;
    v168 = v363;
    GridItem.init(_:spacing:alignment:)();
    v95 = sub_1002251DC(0, 1, 1, _swiftEmptyArrayStorage);
    v170 = *(v95 + 16);
    v169 = *(v95 + 24);
    v171 = v365;
    if (v170 >= v169 >> 1)
    {
      v95 = sub_1002251DC(v169 > 1, v170 + 1, 1, v95);
    }

    *(v95 + 16) = v170 + 1;
    v172 = *(v411 + 32);
    v409 = (*(v411 + 80) + 32) & ~*(v411 + 80);
    v405 = *(v411 + 72);
    v411 += 32;
    v172(v95 + v409 + v405 * v170, v168, v408);
    v174 = v406;
    v173 = v407;
    *v406 = 0x4041800000000000;
    (v166)(v174, v165, v173);
    GridItem.init(_:spacing:alignment:)();
    v176 = *(v95 + 16);
    v175 = *(v95 + 24);
    if (v176 >= v175 >> 1)
    {
      v95 = sub_1002251DC(v175 > 1, v176 + 1, 1, v95);
    }

    *(v95 + 16) = v176 + 1;
    v172(v95 + v409 + v176 * v405, v374, v408);
    *v406 = 0x4041800000000000;
    v166();
    v397 = v172;
    LODWORD(v404) = v165;
    v402 = v166;
    v398 = v167;
    if ((v387 & 0x100) == 0 && (v387 & 1) == 0)
    {
      v177 = v353;
      GridItem.init(_:spacing:alignment:)();
      v179 = *(v95 + 16);
      v178 = *(v95 + 24);
      v38 = v400;
      if (v179 >= v178 >> 1)
      {
        v95 = sub_1002251DC(v178 > 1, v179 + 1, 1, v95);
      }

      *(v95 + 16) = v179 + 1;
      v172(v95 + v409 + v179 * v405, v177, v408);
      v181 = v406;
      v180 = v407;
      *v406 = 0x4041800000000000;
      (v166)(v181, v165, v180);
      GridItem.init(_:spacing:alignment:)();
      v183 = *(v95 + 16);
      v182 = *(v95 + 24);
      if (v183 >= v182 >> 1)
      {
        v95 = sub_1002251DC(v182 > 1, v183 + 1, 1, v95);
      }

      *(v95 + 16) = v183 + 1;
      v172(v95 + v409 + v183 * v405, v366, v408);
      if (!v38)
      {
        v10 = _swiftEmptyArrayStorage;
LABEL_227:
        v277 = *(v10 + 2);

        if (v277)
        {
          v279 = v406;
          v278 = v407;
          *v406 = 0x4041800000000000;
          v280 = v404;
          v281 = v402;
          (v402)(v279, v404, v278);
          v282 = v350;
          GridItem.init(_:spacing:alignment:)();
          v284 = *(v95 + 16);
          v283 = *(v95 + 24);
          v38 = v400;
          v285 = v397;
          if (v284 >= v283 >> 1)
          {
            v95 = sub_1002251DC(v283 > 1, v284 + 1, 1, v95);
          }

          *(v95 + 16) = v284 + 1;
          v285(v95 + v409 + v284 * v405, v282, v408);
        }

        else
        {
          v38 = v400;
          v280 = v404;
          v281 = v402;
          v285 = v397;
        }

        v300 = v406;
        v299 = v407;
        *v406 = 0x4044000000000000;
        (v281)(v300, v280, v299);
        v295 = v352;
        GridItem.init(_:spacing:alignment:)();
        v297 = *(v95 + 16);
        v301 = *(v95 + 24);
        v298 = v297 + 1;
        if (v297 >= v301 >> 1)
        {
          v95 = sub_1002251DC(v301 > 1, v297 + 1, 1, v95);
        }

        v118 = v389;
LABEL_257:
        *(v95 + 16) = v298;
        v285(v95 + v409 + v297 * v405, v295, v408);
        goto LABEL_258;
      }

      v184 = (*(v395 + 80) + 32) & ~*(v395 + 80);
      v121 = *(v395 + 72);
      v118 = v84 + v184;
      v10 = _swiftEmptyArrayStorage;
      a1 = 0xFFFFFFFF80000000;
      v27 = 0x7FFFFFFFLL;
      v394 = v95;
      v185 = v392;
      while (1)
      {
        sub_1001BB760(v118, v185);
        v186 = *v185;
        if (*(v185 + 8))
        {
          v186 = 0;
        }

        if (v186 < 0xFFFFFFFF80000000)
        {
          goto LABEL_346;
        }

        if (v186 > 0x7FFFFFFF)
        {
          goto LABEL_348;
        }

        if (*(v412 + 160) & 1) != 0 || *(v412 + 156) != v186 || (*(v185 + 200))
        {
          sub_1001BB7C4(v185);
        }

        else
        {
          sub_1001BB4B8(v185, v376);
          v187 = swift_isUniquelyReferenced_nonNull_native();
          v415 = v10;
          if ((v187 & 1) == 0)
          {
            sub_1001F5438(0, *(v10 + 2) + 1, 1);
            v10 = v415;
          }

          v189 = *(v10 + 2);
          v188 = *(v10 + 3);
          if (v189 >= v188 >> 1)
          {
            sub_1001F5438(v188 > 1, v189 + 1, 1);
            v10 = v415;
          }

          *(v10 + 2) = v189 + 1;
          sub_1001BB4B8(v376, &v10[v184 + v189 * v121]);
          v84 = v401;
          v95 = v394;
        }

        v118 += v121;
        if (!--v38)
        {
          goto LABEL_227;
        }
      }
    }

    GridItem.init(_:spacing:alignment:)();
    v258 = *(v95 + 16);
    v257 = *(v95 + 24);
    v38 = v400;
    if (v258 >= v257 >> 1)
    {
      v95 = sub_1002251DC(v257 > 1, v258 + 1, 1, v95);
    }

    *(v95 + 16) = v258 + 1;
    v172(v95 + v409 + v258 * v405, v171, v408);
    if ((v387 & 0x100) != 0)
    {
      v260 = v406;
      v259 = v407;
      *v406 = 0x4041800000000000;
      (v166)(v260, v165, v259);
      GridItem.init(_:spacing:alignment:)();
      v262 = *(v95 + 16);
      v261 = *(v95 + 24);
      if (v262 >= v261 >> 1)
      {
        v95 = sub_1002251DC(v261 > 1, v262 + 1, 1, v95);
      }

      *(v95 + 16) = v262 + 1;
      v172(v95 + v409 + v262 * v405, v354, v408);
    }

    v394 = v95;
    v118 = v389;
    if (v38)
    {
      v263 = (*(v395 + 80) + 32) & ~*(v395 + 80);
      v121 = *(v395 + 72);
      v95 = v84 + v263;
      v10 = _swiftEmptyArrayStorage;
      a1 = 0xFFFFFFFF80000000;
      v27 = 0x7FFFFFFFLL;
      v264 = v399;
      while (1)
      {
        sub_1001BB760(v95, v264);
        v265 = *v264;
        if (*(v264 + 8))
        {
          v265 = 0;
        }

        if (v265 < 0xFFFFFFFF80000000)
        {
          goto LABEL_345;
        }

        if (v265 > 0x7FFFFFFF)
        {
          goto LABEL_347;
        }

        if (*(v412 + 160) & 1) != 0 || *(v412 + 156) != v265 || (*(v264 + 248))
        {
          sub_1001BB7C4(v264);
        }

        else
        {
          sub_1001BB4B8(v264, v377);
          v266 = swift_isUniquelyReferenced_nonNull_native();
          v415 = v10;
          if ((v266 & 1) == 0)
          {
            sub_1001F5438(0, *(v10 + 2) + 1, 1);
            v10 = v415;
          }

          v268 = *(v10 + 2);
          v267 = *(v10 + 3);
          if (v268 >= v267 >> 1)
          {
            sub_1001F5438(v267 > 1, v268 + 1, 1);
            v10 = v415;
          }

          *(v10 + 2) = v268 + 1;
          sub_1001BB4B8(v377, &v10[v263 + v268 * v121]);
          v84 = v401;
          v118 = v389;
        }

        v95 += v121;
        if (!--v38)
        {
          goto LABEL_222;
        }
      }
    }

    v10 = _swiftEmptyArrayStorage;
LABEL_222:
    v269 = *(v10 + 2);

    if (v269)
    {
      v271 = v406;
      v270 = v407;
      *v406 = 0x4041800000000000;
      (v402)(v271, v404, v270);
      v272 = v351;
      GridItem.init(_:spacing:alignment:)();
      v273 = v394;
      v275 = *(v394 + 2);
      v274 = *(v394 + 3);
      v38 = v400;
      if (v275 >= v274 >> 1)
      {
        v273 = sub_1002251DC(v274 > 1, v275 + 1, 1, v394);
      }

      v276 = v397;
      *(v273 + 2) = v275 + 1;
      v276(&v273[v409 + v275 * v405], v272, v408);
    }

    else
    {
      v38 = v400;
      v273 = v394;
    }

    v394 = v273;
    if (!v38)
    {
      break;
    }

    v286 = (*(v395 + 80) + 32) & ~*(v395 + 80);
    v121 = *(v395 + 72);
    v95 = v84 + v286;
    v10 = _swiftEmptyArrayStorage;
    a1 = 0xFFFFFFFF80000000;
    v27 = 0x7FFFFFFFLL;
    v287 = v390;
    while (1)
    {
      sub_1001BB760(v95, v287);
      v288 = *v287;
      if (*(v287 + 8))
      {
        v288 = 0;
      }

      if (v288 < 0xFFFFFFFF80000000)
      {
        break;
      }

      if (v288 > 0x7FFFFFFF)
      {
        goto LABEL_350;
      }

      if (*(v412 + 160) & 1) != 0 || *(v412 + 156) != v288 || (*(v287 + 264))
      {
        sub_1001BB7C4(v287);
      }

      else
      {
        sub_1001BB4B8(v287, v375);
        v289 = swift_isUniquelyReferenced_nonNull_native();
        v415 = v10;
        if ((v289 & 1) == 0)
        {
          sub_1001F5438(0, *(v10 + 2) + 1, 1);
          v10 = v415;
        }

        v291 = *(v10 + 2);
        v290 = *(v10 + 3);
        if (v291 >= v290 >> 1)
        {
          sub_1001F5438(v290 > 1, v291 + 1, 1);
          v10 = v415;
        }

        *(v10 + 2) = v291 + 1;
        sub_1001BB4B8(v375, &v10[v286 + v291 * v121]);
        v84 = v401;
        v118 = v389;
      }

      v95 += v121;
      if (!--v38)
      {
        goto LABEL_249;
      }
    }

LABEL_349:
    __break(1u);
LABEL_350:
    __break(1u);
LABEL_351:
    swift_once();
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_249:
  v292 = *(v10 + 2);

  if (v292)
  {
    v294 = v406;
    v293 = v407;
    *v406 = 0x4041800000000000;
    (v402)(v294, v404, v293);
    v295 = v349;
    GridItem.init(_:spacing:alignment:)();
    v95 = v394;
    v297 = *(v394 + 2);
    v296 = *(v394 + 3);
    v298 = v297 + 1;
    v38 = v400;
    if (v297 >= v296 >> 1)
    {
      v95 = sub_1002251DC(v296 > 1, v297 + 1, 1, v394);
    }

    v285 = v397;
    goto LABEL_257;
  }

  v38 = v400;
  v95 = v394;
LABEL_258:
  v394 = v95;
  if (v38)
  {
    v302 = (*(v395 + 80) + 32) & ~*(v395 + 80);
    v121 = *(v395 + 72);
    v95 = v84 + v302;
    v10 = _swiftEmptyArrayStorage;
    a1 = 0xFFFFFFFF80000000;
    v27 = 0x7FFFFFFFLL;
    v303 = v403;
    while (1)
    {
      sub_1001BB760(v95, v303);
      v304 = *v303;
      if (*(v303 + 8))
      {
        v304 = 0;
      }

      if (v304 < 0xFFFFFFFF80000000)
      {
        break;
      }

      if (v304 > 0x7FFFFFFF)
      {
        goto LABEL_340;
      }

      if (*(v412 + 160) & 1) != 0 || *(v412 + 156) != v304 || (*(v303 + 88))
      {
        sub_1001BB7C4(v303);
      }

      else
      {
        sub_1001BB4B8(v303, v384);
        v305 = swift_isUniquelyReferenced_nonNull_native();
        v415 = v10;
        if ((v305 & 1) == 0)
        {
          sub_1001F5438(0, *(v10 + 2) + 1, 1);
          v10 = v415;
        }

        v307 = *(v10 + 2);
        v306 = *(v10 + 3);
        if (v307 >= v306 >> 1)
        {
          sub_1001F5438(v306 > 1, v307 + 1, 1);
          v10 = v415;
        }

        *(v10 + 2) = v307 + 1;
        sub_1001BB4B8(v384, &v10[v302 + v307 * v121]);
        v84 = v401;
        v118 = v389;
      }

      v95 += v121;
      if (!--v38)
      {
        goto LABEL_275;
      }
    }

LABEL_339:
    __break(1u);
LABEL_340:
    __break(1u);
LABEL_341:
    __break(1u);
LABEL_342:
    __break(1u);
LABEL_343:
    __break(1u);
LABEL_344:
    __break(1u);
LABEL_345:
    __break(1u);
LABEL_346:
    __break(1u);
LABEL_347:
    __break(1u);
LABEL_348:
    __break(1u);
    goto LABEL_349;
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_275:
  v308 = *(v10 + 2);

  if (v308)
  {
    v310 = v406;
    v309 = v407;
    *v406 = 0x4051800000000000;
    (v402)(v310, v404, v309);
    v311 = v357;
    GridItem.init(_:spacing:alignment:)();
    v312 = v394;
    v314 = *(v394 + 2);
    v313 = *(v394 + 3);
    v38 = v400;
    if (v314 >= v313 >> 1)
    {
      v312 = sub_1002251DC(v313 > 1, v314 + 1, 1, v394);
    }

    v315 = v397;
    *(v312 + 2) = v314 + 1;
    v315(&v312[v409 + v314 * v405], v311, v408);
    v118 = v389;
    if (v38)
    {
LABEL_279:
      v316 = (*(v395 + 80) + 32) & ~*(v395 + 80);
      v121 = *(v395 + 72);
      v95 = v84 + v316;
      v10 = _swiftEmptyArrayStorage;
      a1 = 0xFFFFFFFF80000000;
      v27 = 0x7FFFFFFFLL;
      while (1)
      {
        sub_1001BB760(v95, v118);
        v317 = *v118;
        if (*(v118 + 8))
        {
          v317 = 0;
        }

        if (v317 < 0xFFFFFFFF80000000)
        {
          goto LABEL_341;
        }

        if (v317 > 0x7FFFFFFF)
        {
          goto LABEL_342;
        }

        if (*(v412 + 160) & 1) != 0 || *(v412 + 156) != v317 || (*(v118 + 104))
        {
          sub_1001BB7C4(v118);
        }

        else
        {
          sub_1001BB4B8(v118, v383);
          v318 = swift_isUniquelyReferenced_nonNull_native();
          v415 = v10;
          if ((v318 & 1) == 0)
          {
            sub_1001F5438(0, *(v10 + 2) + 1, 1);
            v10 = v415;
          }

          v320 = *(v10 + 2);
          v319 = *(v10 + 3);
          if (v320 >= v319 >> 1)
          {
            sub_1001F5438(v319 > 1, v320 + 1, 1);
            v10 = v415;
          }

          *(v10 + 2) = v320 + 1;
          sub_1001BB4B8(v383, &v10[v316 + v320 * v121]);
          v84 = v401;
          v118 = v389;
        }

        v95 += v121;
        if (!--v38)
        {
          goto LABEL_296;
        }
      }
    }
  }

  else
  {
    v38 = v400;
    v312 = v394;
    if (v400)
    {
      goto LABEL_279;
    }
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_296:
  v321 = *(v10 + 2);

  if (!v321)
  {
    v38 = v400;
    if (!v400)
    {
      goto LABEL_316;
    }

    goto LABEL_300;
  }

  v323 = v406;
  v322 = v407;
  *v406 = 0x4051800000000000;
  (v402)(v323, v404, v322);
  v324 = v356;
  GridItem.init(_:spacing:alignment:)();
  v326 = *(v312 + 2);
  v325 = *(v312 + 3);
  v38 = v400;
  if (v326 >= v325 >> 1)
  {
    v312 = sub_1002251DC(v325 > 1, v326 + 1, 1, v312);
  }

  v327 = v397;
  *(v312 + 2) = v326 + 1;
  v327(&v312[v409 + v326 * v405], v324, v408);
  if (v38)
  {
LABEL_300:
    v328 = (*(v395 + 80) + 32) & ~*(v395 + 80);
    v121 = *(v395 + 72);
    v95 = v84 + v328;
    v10 = _swiftEmptyArrayStorage;
    a1 = 0xFFFFFFFF80000000;
    v27 = 0x7FFFFFFFLL;
    v118 = v378;
    while (1)
    {
      sub_1001BB760(v95, v118);
      v329 = *v118;
      if (*(v118 + 8))
      {
        v329 = 0;
      }

      if (v329 < 0xFFFFFFFF80000000)
      {
        goto LABEL_343;
      }

      if (v329 > 0x7FFFFFFF)
      {
        goto LABEL_344;
      }

      if (*(v412 + 160) & 1) != 0 || *(v412 + 156) != v329 || (*(v118 + 120))
      {
        sub_1001BB7C4(v118);
      }

      else
      {
        sub_1001BB4B8(v118, v382);
        v330 = swift_isUniquelyReferenced_nonNull_native();
        v415 = v10;
        v84 = v38;
        if ((v330 & 1) == 0)
        {
          sub_1001F5438(0, *(v10 + 2) + 1, 1);
          v10 = v415;
        }

        v332 = *(v10 + 2);
        v331 = *(v10 + 3);
        if (v332 >= v331 >> 1)
        {
          sub_1001F5438(v331 > 1, v332 + 1, 1);
          v10 = v415;
        }

        *(v10 + 2) = v332 + 1;
        sub_1001BB4B8(v382, &v10[v328 + v332 * v121]);
        v38 = v84;
        v118 = v378;
      }

      v95 += v121;
      if (!--v38)
      {
        goto LABEL_317;
      }
    }
  }

LABEL_316:
  v10 = _swiftEmptyArrayStorage;
LABEL_317:
  v333 = *(v10 + 2);

  if (v333)
  {
    v335 = v406;
    v334 = v407;
    *v406 = 0x4051800000000000;
    (v402)(v335, v404, v334);
    v336 = v355;
    GridItem.init(_:spacing:alignment:)();
    v84 = v312;
    v338 = *(v312 + 2);
    v337 = *(v312 + 3);
    v339 = v360;
    if (v338 >= v337 >> 1)
    {
      v84 = sub_1002251DC(v337 > 1, v338 + 1, 1, v312);
    }

    v340 = v397;
    *(v84 + 16) = v338 + 1;
    v340(v84 + v409 + v338 * v405, v336, v408);
    v341 = v404;
    v342 = v402;
  }

  else
  {
    v84 = v312;
    v339 = v360;
    v341 = v404;
    v342 = v402;
    v340 = v397;
  }

  v344 = v406;
  v343 = v407;
  *v406 = 0x4041800000000000;
  (v342)(v344, v341, v343);
  GridItem.init(_:spacing:alignment:)();
  v346 = *(v84 + 16);
  v345 = *(v84 + 24);
  if (v346 >= v345 >> 1)
  {
    v84 = sub_1002251DC(v345 > 1, v346 + 1, 1, v84);
  }

  *(v84 + 16) = v346 + 1;
  v340(v84 + v409 + v346 * v405, v339, v408);
  return v84;
}

unint64_t sub_10022F524()
{
  result = qword_100378368;
  if (!qword_100378368)
  {
    sub_1001A55C8(&qword_100378360, &qword_1002F3520);
    sub_1001AD0C8(&qword_100378370, &qword_100378378, &qword_1002F3528);
    sub_10022F5DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100378368);
  }

  return result;
}

unint64_t sub_10022F5DC()
{
  result = qword_100378380;
  if (!qword_100378380)
  {
    sub_1001A55C8(&qword_100378388, &qword_1002F3530);
    sub_1001AD0C8(&qword_100378390, &qword_100378398, &qword_1002F3538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100378380);
  }

  return result;
}

double sub_10022F694@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[5];
  *&result = sub_1002281B0(v1[4], a1).n128_u64[0];
  return result;
}

unint64_t sub_10022F6AC()
{
  result = qword_1003783E0;
  if (!qword_1003783E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003783E0);
  }

  return result;
}

unint64_t sub_10022F708()
{
  result = qword_1003783F0;
  if (!qword_1003783F0)
  {
    sub_1001A55C8(&qword_1003783E8, &qword_1002F3578);
    sub_10022F7BC(&qword_1003783F8, type metadata accessor for FTMBandDataView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003783F0);
  }

  return result;
}

uint64_t sub_10022F7BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10022F804()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10022F8E4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v1 - 8);
  v38 = v1;
  v2 = *(v37 + 64);
  __chkstk_darwin(v1);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  v16 = type metadata accessor for RootNavigationController();
  v40.receiver = v0;
  v40.super_class = v16;
  objc_msgSendSuper2(&v40, "viewDidLoad");
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  if (*(qword_100382500 + 26) == 1)
  {
    if (qword_100374F98 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v17 = swift_allocObject();
    v18 = v17;
    v19 = *&v0[OBJC_IVAR____TtC11FTMInternal24RootNavigationController_persistanceStore];
    *(v17 + 16) = xmmword_1002EED40;
    v20 = *(v19 + OBJC_IVAR____TtC11FTMInternal16PersistanceStore_hardwareManager);
    if (*(v20 + 28) == 1)
    {
      *(v17 + 56) = &type metadata for String;
      *(v17 + 64) = sub_1001A76E8();
      *(v18 + 32) = 17225;
      *(v18 + 40) = 0xE200000000000000;
    }

    else
    {
      v21 = v15;
      v22 = v9;
      v23 = *(v20 + 153);
      *(v17 + 56) = &type metadata for String;
      *(v17 + 64) = sub_1001A76E8();
      if (v23 == 1)
      {
        v24 = 5262931;
        v25 = 0xE300000000000000;
      }

      else
      {
        v24 = 22093;
        v25 = 0xE200000000000000;
      }

      *(v18 + 32) = v24;
      *(v18 + 40) = v25;
      v9 = v22;
      v15 = v21;
    }

    os_log(_:dso:log:type:_:)();
  }

  sub_1002181D0();
  v26 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v33 = *(v9 + 8);
  v33(v12, v8);
  v27 = swift_allocObject();
  *(v27 + 16) = v0;
  aBlock[4] = sub_1002302D0;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020C96C;
  aBlock[3] = &unk_10031F730;
  v28 = _Block_copy(aBlock);
  v29 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100222030();
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_1002302F0();
  v30 = v34;
  v31 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v28);

  (*(v37 + 8))(v30, v31);
  (*(v35 + 8))(v7, v36);
  return (v33)(v15, v8);
}

void sub_10022FDEC(uint64_t a1)
{
  v1 = *(*(a1 + OBJC_IVAR____TtC11FTMInternal24RootNavigationController_persistanceStore) + OBJC_IVAR____TtC11FTMInternal16PersistanceStore_aBMWrapper);
  v3 = String._bridgeToObjectiveC()();
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  v2 = *(qword_100382500 + 192);
  [v1 querySpecificMetric:? triggerRef:? triggerType:? triggerID:? profileID:? metricID:?];
}

void sub_10022FF18()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC11FTMInternal24RootNavigationController_persistanceStore) + OBJC_IVAR____TtC11FTMInternal16PersistanceStore_aBMWrapper);
  v3 = String._bridgeToObjectiveC()();
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  v2 = *(qword_100382500 + 192);
  [v1 querySpecificMetric:? triggerRef:? triggerType:? triggerID:? profileID:? metricID:?];
}

id sub_100230044()
{
  if (qword_100374F90 != -1)
  {
    swift_once();
  }

  static os_log_type_t.error.getter();
  os_log(_:dso:log:type:_:)();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootNavigationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100230298()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002302D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1002302F0()
{
  result = qword_1003784B0;
  if (!qword_1003784B0)
  {
    sub_1001A55C8(&unk_100377090, &qword_1002F2CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003784B0);
  }

  return result;
}

id sub_1002303D4()
{
  v1 = OBJC_IVAR____TtC11FTMInternal29ManageDashboardViewController____lazy_storage___tableView;
  v2 = *(v0 + OBJC_IVAR____TtC11FTMInternal29ManageDashboardViewController____lazy_storage___tableView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11FTMInternal29ManageDashboardViewController____lazy_storage___tableView);
  }

  else
  {
    v4 = sub_100230438(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100230438(uint64_t a1)
{
  v2 = [objc_allocWithZone(UITableView) initWithFrame:0 style:{0.0, 0.0, 0.0, 0.0}];
  type metadata accessor for FavoritesTableCellV2();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v4 = String._bridgeToObjectiveC()();

  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  [v2 setSeparatorStyle:0];
  v5 = v2;
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() colorNamed:v6];

  [v5 setBackgroundColor:v7];
  [v5 setDataSource:a1];
  [v5 setDelegate:a1];
  [v5 setAlwaysBounceVertical:1];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v5;
}

id sub_1002305C8()
{
  v0 = [objc_allocWithZone(UIButton) init];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1];

  [v0 setImage:v2 forState:0];
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() colorNamed:v3];

  [v0 setTintColor:v4];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setEnabled:1];
  return v0;
}

void sub_100230700()
{
  v39.receiver = v0;
  v39.super_class = type metadata accessor for ManageDashboardViewController();
  objc_msgSendSuper2(&v39, "viewDidLoad");
  v1 = String._bridgeToObjectiveC()();
  [v0 setTitle:v1];

  v2 = *&v0[OBJC_IVAR____TtC11FTMInternal29ManageDashboardViewController_dismissButton];
  v3 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v2];
  [v2 addTarget:v0 action:"didTapDismissWithSender:" forControlEvents:64];
  v4 = [v0 navigationItem];
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1002F1530;
  *(v5 + 32) = v3;
  sub_1001E1BB4(0, &qword_1003784C8, UIBarButtonItem_ptr);
  v6 = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setRightBarButtonItems:isa animated:1];

  v8 = [v0 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = v8;
  v10 = sub_1002303D4();
  [v9 addSubview:v10];

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1002EF930;
  v12 = OBJC_IVAR____TtC11FTMInternal29ManageDashboardViewController____lazy_storage___tableView;
  v13 = [*&v0[OBJC_IVAR____TtC11FTMInternal29ManageDashboardViewController____lazy_storage___tableView] topAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v15 = v14;
  v16 = [v14 safeAreaLayoutGuide];

  v17 = [v16 topAnchor];
  v18 = [v13 constraintEqualToAnchor:v17];

  *(v11 + 32) = v18;
  v19 = [*&v0[v12] leadingAnchor];
  v20 = [v0 view];
  if (!v20)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v21 = v20;
  v22 = [v20 safeAreaLayoutGuide];

  v23 = [v22 leadingAnchor];
  v24 = [v19 constraintEqualToAnchor:v23];

  *(v11 + 40) = v24;
  v25 = [*&v0[v12] trailingAnchor];
  v26 = [v0 view];
  if (!v26)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v27 = v26;
  v28 = [v26 safeAreaLayoutGuide];

  v29 = [v28 trailingAnchor];
  v30 = [v25 constraintEqualToAnchor:v29];

  *(v11 + 48) = v30;
  v31 = [*&v0[v12] bottomAnchor];
  v32 = [v0 view];
  if (v32)
  {
    v33 = v32;
    v34 = objc_opt_self();
    v35 = [v33 safeAreaLayoutGuide];

    v36 = [v35 bottomAnchor];
    v37 = [v31 constraintEqualToAnchor:v36];

    *(v11 + 56) = v37;
    sub_1001E1BB4(0, &qword_1003774A0, NSLayoutConstraint_ptr);
    v38 = Array._bridgeToObjectiveC()().super.isa;

    [v34 activateConstraints:v38];

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_100230C50()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FTMInternal29ManageDashboardViewController_dashboardList);

  v2 = *(v0 + OBJC_IVAR____TtC11FTMInternal29ManageDashboardViewController_dismissButton);
}

id sub_100230CB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManageDashboardViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100230E90(void *a1)
{
  v2 = v1;

  v4 = String._bridgeToObjectiveC()();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:isa];

  type metadata accessor for FavoritesTableCellV2();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = IndexPath.row.getter();
    v10 = OBJC_IVAR____TtC11FTMInternal29ManageDashboardViewController_dashboardList;
    result = swift_beginAccess();
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v12 = *(v2 + v10);
      if (v9 < *(v12 + 16))
      {
        v13 = v12 + 40 * v9;
        v14 = *(v13 + 40);
        v15 = *(v13 + 48);
        v16 = *(v13 + 56);
        v17 = *(v13 + 32);
        v18 = v14;
        v19 = v15;
        v20 = v16;
        v21 = sub_1001CF7C4();
        [v21 setText:v19];

        v22 = sub_1001CF7DC();
        [v22 setText:v20];

        v23 = sub_1001CF878();
        [v23 setHidden:1];

        return v8;
      }
    }

    __break(1u);
  }

  else
  {

    v24 = objc_allocWithZone(UITableViewCell);

    return [v24 init];
  }

  return result;
}

void sub_10023118C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == 1)
  {
    v12 = IndexPath.row.getter();
    v13 = OBJC_IVAR____TtC11FTMInternal29ManageDashboardViewController_dashboardList;
    swift_beginAccess();
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v14 = *&v4[v13];
      if (v12 < *(v14 + 16))
      {
        v15 = v14 + 40 * v12;
        v33 = a1;
        v17 = *(v15 + 32);
        v16 = *(v15 + 40);
        v19 = *(v15 + 48);
        v18 = *(v15 + 56);
        LODWORD(v15) = *(v15 + 64);
        v36[0] = v17;
        v36[1] = v16;
        v36[2] = v19;
        v36[3] = v18;
        v37 = v15;
        v20 = *&v4[OBJC_IVAR____TtC11FTMInternal29ManageDashboardViewController_persistanceStore];
        v34 = v18;
        v35 = v20;
        (*(v9 + 16))(&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v8);
        v21 = (*(v9 + 80) + 24) & ~*(v9 + 80);
        v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
        v23 = swift_allocObject();
        *(v23 + 16) = v4;
        (*(v9 + 32))(v23 + v21, v11, v8);
        v24 = v33;
        *(v23 + v22) = v33;
        v25 = v17;
        v26 = v16;
        v27 = v19;
        v28 = v34;
        v29 = v4;
        v30 = v24;
        sub_10025C024();
        v31 = swift_allocObject();
        *(v31 + 16) = sub_100231B4C;
        *(v31 + 24) = v23;

        sub_10025FFD0(v36, sub_100231C34, v31);

        return;
      }
    }

    __break(1u);
  }
}

void sub_100231404(char a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v19 = IndexPath.row.getter();
    swift_beginAccess();
    sub_10024A290(v19, &aBlock);
    v20 = aBlock;
    v21 = v37;
    v22 = v38;
    v23 = v39;
    swift_endAccess();

    sub_1001A551C(&unk_1003784B8, &qword_1002F3618);
    v24 = type metadata accessor for IndexPath();
    v25 = *(v24 - 8);
    v26 = *(v25 + 72);
    v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1002EED40;
    (*(v25 + 16))(v28 + v27, a4, v24);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [a5 deleteRowsAtIndexPaths:isa withRowAnimation:0];

    v30 = [objc_opt_self() defaultCenter];
    if (qword_100375008 != -1)
    {
      swift_once();
    }

    [v30 postNotificationName:static NSNotificationName.dashboardMetricUpdate object:0 userInfo:0];
  }

  else
  {
    v35 = v10;
    if (qword_100374FB0 != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)();
    sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
    v31 = static OS_dispatch_queue.main.getter();
    v32 = swift_allocObject();
    *(v32 + 16) = a3;
    v40 = sub_100231C74;
    v41 = v32;
    aBlock = _NSConcreteStackBlock;
    v37 = 1107296256;
    v38 = sub_10020C96C;
    v39 = &unk_10031F7D0;
    v33 = _Block_copy(&aBlock);
    v34 = a3;

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100222030();
    sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
    sub_1002302F0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v33);

    (*(v35 + 8))(v13, v9);
    (*(v15 + 8))(v18, v14);
  }
}

uint64_t sub_100231A74()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_100231B4C(char a1, uint64_t a2)
{
  v5 = *(type metadata accessor for IndexPath() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  sub_100231404(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_100231BFC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100231C3C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100231CB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100231CD0()
{
  if (qword_100374FB8 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  sub_1002322F0(1, 0);
  static os_log_type_t.default.getter();

  return os_log(_:dso:log:type:_:)();
}

uint64_t sub_100231DA8()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  if (qword_100374FF8 != -1)
  {
    swift_once();
  }

  [v2 removeObserver:v0 name:static NSNotificationName.subsIdSelectionChange object:0];

  v3 = [v1 defaultCenter];
  if (qword_100374FE0 != -1)
  {
    swift_once();
  }

  [v3 removeObserver:v0 name:static NSNotificationName.NewABMMetric object:0];

  v4 = [v1 defaultCenter];
  if (qword_100374FE8 != -1)
  {
    swift_once();
  }

  [v4 removeObserver:v0 name:static NSNotificationName.NewCTMetric object:0];

  v5 = [v1 defaultCenter];
  if (qword_100375010 != -1)
  {
    swift_once();
  }

  [v5 removeObserver:v0 name:static NSNotificationName.isAirPlaneModeEnabled object:0];

  v6 = *(v0 + 32);

  v7 = *(v0 + 48);

  sub_1001AD9E4(v0 + 64);

  return v0;
}

uint64_t sub_100231FC4()
{
  sub_100231DA8();

  return swift_deallocClassInstance();
}

void sub_100231FF8(uint64_t a1)
{
  v2 = v1;
  sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002EED50;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 32) = 0xD000000000000018;
  *(v4 + 40) = 0x80000001002BDB10;
  *(v4 + 88) = &type metadata for Int32;
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a1 <= 0x7FFFFFFF)
  {
    *(v4 + 64) = a1;
    print(_:separator:terminator:)();

    if (qword_100375020 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_11:
  swift_once();
LABEL_4:
  *(qword_100382508 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_currentSelectedSubsId) = a1;
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  v5 = qword_100382500;
  *(qword_100382500 + 156) = a1;
  *(v5 + 160) = 0;
  sub_10020A870();
  swift_beginAccess();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v5 + 88);
    if (*(v6 + 16) > a1)
    {
      v7 = v6 + 224 * a1;
      v8 = *(v7 + 40);
      v9 = *(v5 + 72);
      *(v5 + 64) = *(v7 + 32);
      *(v5 + 72) = v8;

      sub_1002322F0(1, 0);
      v10 = *(v2 + 16);
      sub_10025D620(1);

      return;
    }
  }

  __break(1u);
}

uint64_t sub_1002322F0(uint64_t a1, char a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v5 - 8);
  v6 = *(v18 + 64);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v17);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002181D0();
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  *(v14 + 24) = a1;
  *(v14 + 32) = a2 & 1;
  aBlock[4] = sub_100232FB4;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020C96C;
  aBlock[3] = &unk_10031F940;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100233014(&qword_1003784A0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_100232FC0(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v18 + 8))(v8, v5);
  return (*(v9 + 8))(v12, v17);
}

__n128 sub_1002325D8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1002325EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100232634(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100232684(uint64_t result, uint64_t a2, char a3)
{
  v3 = result;
  if (qword_100375018 != -1)
  {
    v6 = a2;
    v7 = a3;
    result = swift_once();
    a3 = v7;
    a2 = v6;
  }

  if (*(qword_100382500 + 155))
  {
    v4 = 1;
LABEL_10:
    type metadata accessor for AllMetricsViewModel();
    sub_100233014(&qword_1003769E8, v5, type metadata accessor for AllMetricsViewModel);
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();

    *(v3 + 56) = v4;
    return result;
  }

  if (*(qword_100382500 + 168) < 1)
  {
    v4 = 2;
    goto LABEL_10;
  }

  if ((a3 & 1) == 0 && a2 >= 1)
  {
    v4 = 0;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100232788@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AllMetricsViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1002327C4(void *a1)
{
  v2 = v1;
  v42 = a1;
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  __chkstk_darwin(v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  v16 = sub_1001D530C();
  v18 = v17;
  (*(v12 + 8))(v15, v11);
  *(v2 + 24) = v16;
  *(v2 + 32) = v18;
  *(v2 + 40) = 1;
  *(v2 + 48) = _swiftEmptyArrayStorage;
  *(v2 + 56) = 0;
  *(v2 + 72) = 0;
  swift_unknownObjectWeakInit();
  sub_1002181D0();
  static DispatchQoS.background.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_100233014(&qword_100377BD0, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001A551C(&qword_100377BD8, &unk_1002F3710);
  sub_100232FC0(&qword_100377BE0, &qword_100377BD8, &unk_1002F3710);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v40 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v41);
  *(v2 + 80) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v19 = v42;
  *(v2 + 16) = v42;
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 defaultCenter];
  if (qword_100374FF8 != -1)
  {
    swift_once();
  }

  v23 = static NSNotificationName.subsIdSelectionChange;
  v47 = sub_100232F2C;
  v48 = v2;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_10025BE6C;
  v46 = &unk_10031F878;
  v24 = _Block_copy(&aBlock);

  v25 = [v22 addObserverForName:v23 object:0 queue:0 usingBlock:v24];
  _Block_release(v24);
  swift_unknownObjectRelease();

  v26 = [v20 defaultCenter];
  if (qword_100374FE0 != -1)
  {
    swift_once();
  }

  v27 = static NSNotificationName.NewABMMetric;
  v47 = sub_100232F50;
  v48 = v2;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_10025BE6C;
  v46 = &unk_10031F8A0;
  v28 = _Block_copy(&aBlock);

  v29 = [v26 addObserverForName:v27 object:0 queue:0 usingBlock:v28];
  _Block_release(v28);
  swift_unknownObjectRelease();

  v30 = [v20 defaultCenter];
  if (qword_100374FE8 != -1)
  {
    swift_once();
  }

  v31 = static NSNotificationName.NewCTMetric;
  v47 = sub_1002332C4;
  v48 = v2;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_10025BE6C;
  v46 = &unk_10031F8C8;
  v32 = _Block_copy(&aBlock);

  v33 = [v30 addObserverForName:v31 object:0 queue:0 usingBlock:v32];
  _Block_release(v32);
  swift_unknownObjectRelease();

  v34 = [v20 defaultCenter];
  if (qword_100375010 != -1)
  {
    swift_once();
  }

  v35 = static NSNotificationName.isAirPlaneModeEnabled;
  v47 = sub_100232F6C;
  v48 = v2;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_10025BE6C;
  v46 = &unk_10031F8F0;
  v36 = _Block_copy(&aBlock);

  v37 = [v34 addObserverForName:v35 object:0 queue:0 usingBlock:v36];
  _Block_release(v36);
  swift_unknownObjectRelease();

  sub_1002322F0(1, 0);
  return v2;
}

uint64_t sub_100232F38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100232F7C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100232FC0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001A55C8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100233014(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100233070(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100233130(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AllMetricsRowItem()
{
  result = qword_1003786D0;
  if (!qword_1003786D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100233220()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1002332CC()
{
  result = qword_100378710;
  if (!qword_100378710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100378710);
  }

  return result;
}

Swift::Int sub_100233344()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1002F38A8[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1002333CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1002F38A8[v1]);
  return Hasher._finalize()();
}

uint64_t sub_100233418@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002338EC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10023346C(char a1)
{
  result = 0x47206E6F69746341;
  switch(a1)
  {
    case 1:
      return 0x7275746E65766441;
    case 2:
      return 0x4720656461637241;
    case 3:
      v4 = 0x206472616F42;
      goto LABEL_21;
    case 4:
      v3 = 1685217603;
      goto LABEL_17;
    case 5:
      return 0x47206F6E69736143;
    case 6:
      v3 = 1701013828;
      goto LABEL_17;
    case 7:
      return 0xD000000000000011;
    case 8:
      return 0x4720796C696D6146;
    case 9:
      v3 = 1935960395;
LABEL_17:
      result = v3 | 0x6D61472000000000;
      break;
    case 10:
      v4 = 0x20636973754DLL;
LABEL_21:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6147000000000000;
      break;
    case 11:
      result = 0x4720656C7A7A7550;
      break;
    case 12:
      result = 0x4720676E69636152;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0x47207374726F7053;
      break;
    case 16:
      result = 0x7967657461727453;
      break;
    case 17:
      result = 0x4720616976697254;
      break;
    case 18:
      result = 0x6D61472064726F57;
      break;
    case 19:
      result = 0x6E776F6E6B6E55;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1002336E0()
{
  result = qword_100378718;
  if (!qword_100378718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100378718);
  }

  return result;
}

unint64_t sub_100233738()
{
  result = qword_100378720;
  if (!qword_100378720)
  {
    sub_1001A55C8(&qword_100378728, qword_1002F3808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100378720);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SPApplicationSubCategories(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SPApplicationSubCategories(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1002338EC(uint64_t a1)
{
  if ((a1 - 7001) >= 0x13)
  {
    return 19;
  }

  else
  {
    return a1 - 7001;
  }
}

void *sub_100233904(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a2;
  v5 = sub_1001A551C(&qword_100377288, &qword_1002F3B20);
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  __chkstk_darwin(v5 - 8);
  v35 = &v28 - v7;
  v8 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v8)
  {
    v38 = _swiftEmptyArrayStorage;
    sub_1001F5564(0, v8, 0);
    v36 = v38;
    v10 = a3 + 56;
    v11 = -1 << *(a3 + 32);
    v12 = _HashTable.startBucket.getter();
    v13 = 0;
    v28 = a3 + 64;
    v29 = v8;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a3 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v33 = v13;
      v16 = *(a3 + 36);
      v37 = *(*(a3 + 48) + v12);
      v31(&v37);
      v34 = v3;
      if (v3)
      {
        goto LABEL_27;
      }

      v17 = v36;
      v38 = v36;
      v19 = v36[2];
      v18 = v36[3];
      if (v19 >= v18 >> 1)
      {
        sub_1001F5564(v18 > 1, v19 + 1, 1);
        v17 = v38;
      }

      v17[2] = v19 + 1;
      v20 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v36 = v17;
      sub_10023C0CC(v35, v17 + v20 + *(v30 + 72) * v19);
      v14 = 1 << *(a3 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v21 = *(v10 + 8 * v15);
      if ((v21 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      if (v16 != *(a3 + 36))
      {
        goto LABEL_26;
      }

      v22 = v21 & (-2 << (v12 & 0x3F));
      if (v22)
      {
        v14 = __clz(__rbit64(v22)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v15 << 6;
        v24 = v15 + 1;
        v25 = (v28 + 8 * v15);
        while (v24 < (v14 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            sub_10023C13C(v12, v16, 0);
            v14 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        sub_10023C13C(v12, v16, 0);
      }

LABEL_4:
      v3 = v34;
      v13 = v33 + 1;
      v12 = v14;
      if (v33 + 1 == v29)
      {
        return v36;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:

    __break(1u);
  }

  return result;
}

uint64_t sub_100233BFC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100233C70()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t type metadata accessor for SURLSessionRunningViewModel()
{
  result = qword_100378798;
  if (!qword_100378798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100233EAC()
{
  sub_100233FB8();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100234010();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100233FB8()
{
  if (!qword_1003787A8)
  {
    type metadata accessor for STransferMetricsStore();
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1003787A8);
    }
  }
}

void sub_100234010()
{
  if (!qword_1003787B0)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1003787B0);
    }
  }
}

uint64_t sub_100234060()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedApplication];
  [v2 setIdleTimerDisabled:1];

  if (qword_100375038 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10021F6F4(v3, qword_100382528);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100223114(0x7261657070416E6FLL, 0xEA00000000002928, &v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s", v6, 0xCu);
    sub_1001A5654(v7);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v10 = xmmword_1002F3960;
  v8 = v1;
  return static Published.subscript.setter();
}

uint64_t sub_100234220()
{
  v1 = v0;
  if (qword_100375038 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    sub_10021F6F4(v2, qword_100382528);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "onDisappear(): invoked", v5, 2u);
    }

    v6 = [objc_opt_self() sharedApplication];
    [v6 setIdleTimerDisabled:0];

    v1 = *(v1 + OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_runningTasks);
    if (v1 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7)
    {
      v8 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v10 = *(v1 + 8 * v8 + 32);
        }

        v11 = v10;
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if ([v10 state])
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v9 = _swiftEmptyArrayStorage[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v8;
        if (v12 == v7)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_17:

    if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0 && (_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
    {
      v1 = _swiftEmptyArrayStorage[2];
      if (!v1)
      {
        break;
      }

      goto LABEL_20;
    }

    v1 = _CocoaArrayWrapper.endIndex.getter();
    if (!v1)
    {
      break;
    }

LABEL_20:
    v13 = 0;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= _swiftEmptyArrayStorage[2])
        {
          goto LABEL_31;
        }

        v14 = _swiftEmptyArrayStorage[v13 + 4];
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      [v14 cancel];

      ++v13;
      if (v16 == v1)
      {
        goto LABEL_35;
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
  }

LABEL_35:
}

uint64_t sub_100234504()
{
  v1[12] = v0;
  v2 = sub_1001A551C(&qword_1003787D0, &qword_1002F3AD0);
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[16] = v5;
  v6 = *(v5 - 8);
  v1[17] = v6;
  v1[18] = *(v6 + 64);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[21] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[22] = v8;
  v1[23] = v7;

  return _swift_task_switch(sub_100234674, v8, v7);
}

uint64_t sub_100234674()
{
  v1 = v0[20];
  v2 = v0[12];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = 0xD000000000000015;
  v0[3] = 0x80000001002BDD60;
  v2;
  static Published.subscript.setter();
  sub_1002354D0(v1);
  v3 = v0[12];
  v4 = OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_configuration;
  v0[24] = OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_configuration;
  v5 = v3 + v4;
  v6 = *(v5 + 48);
  LOBYTE(v5) = *(v5 + 49);
  v18 = v0[19];
  v19 = v0[20];
  v7 = v0[17];
  v8 = v0[15];
  v9 = v0[16];
  v22 = v0[14];
  v20 = v0[18];
  v21 = v0[13];
  v0[8] = *(v3 + OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_subject);
  sub_1001A551C(&qword_1003787C8, &qword_1002F3AC0);
  sub_1001AD0C8(&qword_1003787D8, &qword_1003787C8, &qword_1002F3AC0);
  Publisher.collect(_:)();
  v10 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  (*(v7 + 16))(v18, v19, v9);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v18, v9);
  *(v12 + ((v20 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
  sub_1001AD0C8(&unk_1003787E0, &qword_1003787D0, &qword_1002F3AD0);
  v13 = Publisher<>.sink(receiveValue:)();

  (*(v22 + 8))(v8, v21);
  v14 = *(v3 + OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_cancellable);
  *(v3 + OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_cancellable) = v13;

  v15 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v16 = swift_task_alloc();
  v0[25] = v16;
  *v16 = v0;
  v16[1] = sub_100234A08;

  return static Task<>.sleep(nanoseconds:)(2000000000);
}

uint64_t sub_100234A08()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {

    v5 = *(v2 + 176);
    v6 = *(v2 + 184);
    v7 = sub_100235000;
  }

  else
  {
    v5 = *(v2 + 176);
    v6 = *(v2 + 184);
    v7 = sub_100234B30;
  }

  return _swift_task_switch(v7, v5, v6);
}

void sub_100234B30()
{
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[12];

  v0[9] = _swiftEmptyArrayStorage;
  v5 = v0 + 9;
  v6 = *(v4 + v2 + 40);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v41 = v6;
  if (v6 < 1)
  {
LABEL_44:
    __break(1u);
    return;
  }

  v43 = v0[12];
  v44 = v0 + 11;
  v42 = OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_runningTasks;
  v7 = 1;
  v46 = v0 + 9;
  v49 = v0;
  while (1)
  {
    v47 = v1;
    v8 = v0[20];
    v9 = v0[12];
    _StringGuts.grow(_:)(21);

    v45 = v7;
    v0[10] = v7;
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    swift_getKeyPath();
    swift_getKeyPath();
    v49[4] = 0xD000000000000013;
    v49[5] = 0x80000001002BDD80;
    v11 = v9;
    v0 = v49;
    static Published.subscript.setter();
    v1 = v47;
    v12 = sub_1002358A0();
    v13 = v49[20];
    if (v47)
    {
      goto LABEL_33;
    }

    v14 = v12;
    v15 = v49[12];
    v49[11] = 1;
    v16 = swift_task_alloc();
    v16[2] = v15;
    v16[3] = v5;
    v16[4] = v13;
    v16[5] = v44;
    v17 = sub_10023B40C(v14, sub_10023C2DC);

    v18 = *(v43 + v42);
    *(v43 + v42) = v17;

    if (v17 >> 62)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
      if (v19)
      {
LABEL_9:
        v20 = 0;
        while (1)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v20 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_39;
            }

            v21 = *(v17 + 8 * v20 + 32);
          }

          v22 = v21;
          v23 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          [v21 resume];

          ++v20;
          if (v23 == v19)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
    }

    else
    {
      v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        goto LABEL_9;
      }
    }

LABEL_18:

    v24 = *v46;
    if (*v46 >> 62)
    {
      if (v24 < 0)
      {
        v28 = *v46;
      }

      v13 = _CocoaArrayWrapper.endIndex.getter();
      if (!v13)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v13 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        goto LABEL_29;
      }
    }

    if (v13 < 1)
    {
      goto LABEL_40;
    }

    for (i = 0; i != v13; ++i)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(v24 + 8 * i + 32);
      }

      v27 = v26;
      [v26 finishTasksAndInvalidate];
    }

LABEL_29:
    if (v45 == v41)
    {
      break;
    }

    v7 = v45 + 1;
    v0 = v49;
    v5 = v46;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
LABEL_33:
      v29 = v0[16];
      v30 = v0[17];

      (*(v30 + 8))(v13, v29);
      v32 = v0[19];
      v31 = v0[20];
      v33 = v0[15];

      v34 = v0[1];
      goto LABEL_35;
    }
  }

  v35 = v49[19];
  v36 = v49[20];
  v37 = v49[16];
  v38 = v49[17];
  v48 = v49[15];
  v39 = v49[12];
  swift_getKeyPath();
  swift_getKeyPath();
  *(v49 + 3) = xmmword_1002F3970;
  v40 = v39;
  static Published.subscript.setter();

  (*(v38 + 8))(v36, v37);

  v34 = v49[1];
LABEL_35:

  v34();
}

void sub_100235000()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[12];

  v0[9] = _swiftEmptyArrayStorage;
  v4 = v0 + 9;
  v5 = *(v3 + v1 + 40);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v41 = v5;
  if (v5 < 1)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v43 = v0[12];
  v44 = v0 + 11;
  v42 = OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_runningTasks;
  v6 = 1;
  v46 = v0 + 9;
  v48 = v0;
  while (1)
  {
    v7 = v0[20];
    v8 = v0[12];
    _StringGuts.grow(_:)(21);

    v45 = v6;
    v0[10] = v6;
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    swift_getKeyPath();
    swift_getKeyPath();
    v48[4] = 0xD000000000000013;
    v48[5] = 0x80000001002BDD80;
    v10 = v8;
    static Published.subscript.setter();
    v11 = sub_1002358A0();
    v12 = v48[20];
    v13 = v11;
    v14 = v48[12];
    v48[11] = 1;
    v15 = swift_task_alloc();
    v15[2] = v14;
    v15[3] = v4;
    v15[4] = v12;
    v15[5] = v44;
    v16 = sub_10023B40C(v13, sub_10023C2DC);

    v17 = *(v43 + v42);
    *(v43 + v42) = v16;

    if (v16 >> 62)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
      if (v18)
      {
LABEL_8:
        v19 = 0;
        while (1)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v19 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_37;
            }

            v20 = *(v16 + 8 * v19 + 32);
          }

          v21 = v20;
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          [v20 resume];

          ++v19;
          if (v22 == v18)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }
    }

    else
    {
      v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        goto LABEL_8;
      }
    }

LABEL_17:

    v23 = *v46;
    if (*v46 >> 62)
    {
      if (v23 < 0)
      {
        v28 = *v46;
      }

      v24 = _CocoaArrayWrapper.endIndex.getter();
      if (!v24)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v24)
      {
        goto LABEL_28;
      }
    }

    if (v24 < 1)
    {
      goto LABEL_38;
    }

    for (i = 0; i != v24; ++i)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(v23 + 8 * i + 32);
      }

      v27 = v26;
      [v26 finishTasksAndInvalidate];
    }

LABEL_28:
    if (v45 == v41)
    {
      break;
    }

    v6 = v45 + 1;
    v0 = v48;
    v4 = v46;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
      v29 = v48[16];
      v30 = v48[17];

      (*(v30 + 8))(v24, v29);
      v32 = v48[19];
      v31 = v48[20];
      v33 = v48[15];

      v34 = v48[1];
      goto LABEL_33;
    }
  }

  v35 = v48[19];
  v36 = v48[20];
  v37 = v48[16];
  v38 = v48[17];
  v47 = v48[15];
  v39 = v48[12];
  swift_getKeyPath();
  swift_getKeyPath();
  *(v48 + 3) = xmmword_1002F3970;
  v40 = v39;
  static Published.subscript.setter();

  (*(v38 + 8))(v36, v37);

  v34 = v48[1];
LABEL_33:

  v34();
}

void sub_1002354D0(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  __chkstk_darwin(v3);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_dataGenerator;
  v37 = v1;
  v12 = *(v1 + OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_dataGenerator);

  UUID.init()();
  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v7 + 8))(v10, v6);
  v16 = a1;
  v17 = v38;
  sub_1001A3830(v13, v15, 7235938, 0xE300000000000000, a1);
  if (v17)
  {
  }

  else
  {
    v19 = v35;
    v18 = v36;

    v20 = *(v37 + v11);
    v21 = *(v37 + OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_configuration + 56);
    v22 = *(v37 + OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_configuration + 64);

    sub_1001A3CC4(v16, v21, v22);

    v23 = v18;
    if (qword_100375038 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10021F6F4(v24, qword_100382528);
    v25 = v19;
    v26 = v34;
    (*(v19 + 16))(v34, v16, v23);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v39 = v30;
      *v29 = 136315138;
      v31 = URL.path(percentEncoded:)(1);
      (*(v25 + 8))(v26, v23);
      v32 = sub_100223114(v31._countAndFlagsBits, v31._object, &v39);

      *(v29 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v27, v28, "created temporary file %s", v29, 0xCu);
      sub_1001A5654(v30);
    }

    else
    {

      (*(v19 + 8))(v26, v23);
    }
  }
}

char *sub_1002358A0()
{
  v121 = type metadata accessor for UUID();
  v124 = *(v121 - 8);
  v1 = *(v124 + 64);
  __chkstk_darwin(v121);
  v120 = &v105 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for URLRequest();
  v123 = *(v119 - 8);
  v3 = *(v123 + 64);
  __chkstk_darwin(v119);
  v118 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v122 = &v105 - v6;
  __chkstk_darwin(v7);
  v117 = &v105 - v8;
  __chkstk_darwin(v9);
  v11 = &v105 - v10;
  __chkstk_darwin(v12);
  v14 = &v105 - v13;
  v15 = type metadata accessor for URL();
  v125 = *(v15 - 8);
  v16 = v125[8];
  __chkstk_darwin(v15);
  v18 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v105 - v20;
  __chkstk_darwin(v22);
  v24 = &v105 - v23;
  sub_100238784(1);
  v25 = v129;
  sub_100238A4C(v24);

  if (!v25)
  {
    v116 = v15;
    v114 = v18;
    v112 = v11;
    v113 = v14;
    v115 = v24;
    sub_100238A4C(v21);
    v129 = 0;
    v27 = v21;
    v28 = v0;
    v29 = *&v0[OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_configuration + 32];
    v30 = qword_100375038;

    if (v30 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    v32 = sub_10021F6F4(v31, qword_100382528);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v128 = v110;
      *v35 = 136446210;
      sub_1001C6EC8();
      v36 = Set.description.getter();
      v111 = v32;
      v37 = v21;
      v39 = v28;
      v40 = sub_100223114(v36, v38, &v128);
      v27 = v37;
      v32 = v111;

      *(v35 + 4) = v40;
      v28 = v39;
      v41 = v116;
      _os_log_impl(&_mh_execute_header, v33, v34, "Generating uplink/downlink requests pair for %{public}s", v35, 0xCu);
      sub_1001A5654(v110);
    }

    else
    {

      v41 = v116;
    }

    v43 = v129;
    v44 = v114;
    if (*(v29 + 16))
    {
      __chkstk_darwin(v42);
      *(&v105 - 4) = v28;
      *(&v105 - 3) = v27;
      v45 = v115;
      *(&v105 - 2) = v115;
      v21 = sub_100233904(sub_10023C0A8, (&v105 - 6), v29);
      v129 = v43;
    }

    else
    {

      v46 = v125[2];
      v108 = v27;
      v107 = v46;
      v46(v44, v27, v41);
      v47 = v117;
      URLRequest.init(url:cachePolicy:timeoutInterval:)();
      URLRequest.allowsCellularAccess.setter();
      URLRequest.allowsExpensiveNetworkAccess.setter();
      URLRequest.allowsConstrainedNetworkAccess.setter();
      v48 = v120;
      UUID.init()();
      v49 = UUID.uuidString.getter();
      v51 = v50;
      v52 = v124 + 8;
      v53 = v47;
      v106 = *(v124 + 8);
      v106(v48, v121);
      v105 = "krelay.tethering.";
      v54._object = 0x80000001002BDE00;
      v55._countAndFlagsBits = v49;
      v55._object = v51;
      v54._countAndFlagsBits = 0xD000000000000011;
      URLRequest.addValue(_:forHTTPHeaderField:)(v55, v54);

      v111 = v32;
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.info.getter();
      v58 = os_log_type_enabled(v56, v57);
      v124 = v52;
      if (v58)
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v128 = v60;
        *v59 = 136446210;
        swift_beginAccess();
        sub_10023C148(&qword_100378808, &type metadata accessor for URLRequest);
        v61 = v119;
        v62 = dispatch thunk of CustomStringConvertible.description.getter();
        v64 = sub_100223114(v62, v63, &v128);

        *(v59 + 4) = v64;
        _os_log_impl(&_mh_execute_header, v56, v57, "made url request=%{public}s", v59, 0xCu);
        sub_1001A5654(v60);
      }

      else
      {

        v61 = v119;
      }

      v65 = v112;
      swift_beginAccess();
      v66 = v123;
      v67 = *(v123 + 16);
      v110 = (v123 + 16);
      v109 = v67;
      v67(v65, v53, v61);
      v68 = *(v66 + 8);
      v119 = v66 + 8;
      v117 = v68;
      (v68)(v53, v61);
      URLRequest.httpMethod.setter();
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.debug.getter();
      v71 = os_log_type_enabled(v69, v70);
      v72 = v120;
      if (v71)
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v127 = v74;
        *v73 = 136315138;
        swift_beginAccess();
        sub_10023C148(&qword_100378808, &type metadata accessor for URLRequest);
        v75 = dispatch thunk of CustomStringConvertible.description.getter();
        v77 = sub_100223114(v75, v76, &v127);

        *(v73 + 4) = v77;
        v65 = v112;
        _os_log_impl(&_mh_execute_header, v69, v70, "made upload url request=%s", v73, 0xCu);
        sub_1001A5654(v74);
      }

      v78 = v116;
      v79 = v115;
      v80 = v122;
      v81 = v113;
      swift_beginAccess();
      v109(v81, v65, v61);
      (v117)(v65, v61);
      v107(v114, v79, v78);
      v82 = v118;
      URLRequest.init(url:cachePolicy:timeoutInterval:)();
      URLRequest.allowsCellularAccess.setter();
      URLRequest.allowsExpensiveNetworkAccess.setter();
      URLRequest.allowsConstrainedNetworkAccess.setter();
      UUID.init()();
      v83 = UUID.uuidString.getter();
      v85 = v84;
      v106(v72, v121);
      v86._object = (v105 | 0x8000000000000000);
      v87 = v82;
      v88._countAndFlagsBits = v83;
      v88._object = v85;
      v86._countAndFlagsBits = 0xD000000000000011;
      URLRequest.addValue(_:forHTTPHeaderField:)(v88, v86);

      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v126 = v92;
        *v91 = 136446210;
        swift_beginAccess();
        sub_10023C148(&qword_100378808, &type metadata accessor for URLRequest);
        v93 = dispatch thunk of CustomStringConvertible.description.getter();
        v95 = sub_100223114(v93, v94, &v126);

        *(v91 + 4) = v95;
        _os_log_impl(&_mh_execute_header, v89, v90, "made url request=%{public}s", v91, 0xCu);
        sub_1001A5654(v92);
      }

      swift_beginAccess();
      v96 = v109;
      v109(v80, v87, v61);
      v97 = v117;
      (v117)(v87, v61);
      sub_1001A551C(&qword_100377280, &unk_1002F2460);
      v98 = (sub_1001A551C(&qword_100377288, &qword_1002F3B20) - 8);
      v99 = *(*v98 + 72);
      v100 = (*(*v98 + 80) + 32) & ~*(*v98 + 80);
      v21 = swift_allocObject();
      *(v21 + 1) = xmmword_1002EED40;
      v101 = &v21[v100];
      v102 = v98[14];
      v103 = v113;
      v96(v101, v113, v61);
      (*(v123 + 32))(&v101[v102], v122, v61);
      v97(v103, v61);
      v41 = v116;
      v27 = v108;
      v45 = v115;
    }

    v104 = v125[1];
    v104(v27, v41);
    v104(v45, v41);
  }

  return v21;
}

void *sub_1002365E4(uint64_t a1, uint64_t a2, char *a3, void *a4, uint64_t a5, void *a6)
{
  v8 = a3;
  result = _swiftEmptyArrayStorage;
  v10 = &a3[OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_configuration];
  if (a3[OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_configuration + 48] != 1)
  {
    goto LABEL_7;
  }

  v11 = *&a3[OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_operationQueue];
  v12 = sub_1002369E8(v11, 0, 0);

  v13 = v12;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v29 = *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  URL._bridgeToObjectiveC()(v15);
  v17 = v16;
  v18 = [v13 uploadTaskWithRequest:isa fromFile:v16];

  v19 = v18;
  LODWORD(v20) = 1.0;
  [v19 setPriority:v20];
  v30 = *a6;
  dispatch thunk of CustomStringConvertible.description.getter();
  v21 = String._bridgeToObjectiveC()();

  [v19 setTaskDescription:v21];

  if (__OFADD__(*a6, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  ++*a6;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    result = _swiftEmptyArrayStorage;
LABEL_7:
    if (v10[49] != 1)
    {
      break;
    }

    v22 = *&v8[OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_operationQueue];
    v23 = sub_1002369E8(v22, 0, 0);

    v8 = v23;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_15:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v24 = URLRequest._bridgeToObjectiveC()().super.isa;
    v25 = [v8 downloadTaskWithRequest:v24];

    v26 = v25;
    LODWORD(v27) = 1.0;
    [v26 setPriority:v27];
    [v26 taskIdentifier];
    v13 = &protocol witness table for Int;
    dispatch thunk of CustomStringConvertible.description.getter();
    v19 = String._bridgeToObjectiveC()();

    [v26 setTaskDescription:v19];

    v31 = *a6;
    dispatch thunk of CustomStringConvertible.description.getter();
    a4 = String._bridgeToObjectiveC()();

    [v26 setTaskDescription:a4];

    if (!__OFADD__(*a6, 1))
    {
      ++*a6;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v28 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      return _swiftEmptyArrayStorage;
    }

    __break(1u);
LABEL_17:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return result;
}

id sub_1002369E8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = [objc_opt_self() ephemeralSessionConfiguration];
  if (!*(*(v3 + OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_configuration + 32) + 16))
  {
    v9 = String._bridgeToObjectiveC()();
    [v8 setSharedContainerIdentifier:v9];
  }

  if (a3)
  {
    v10 = String._bridgeToObjectiveC()();
    [v8 set_sourceApplicationSecondaryIdentifier:v10];

    if (qword_100375038 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10021F6F4(v11, qword_100382528);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_100223114(a2, a3, &v25);
      _os_log_impl(&_mh_execute_header, v12, v13, "made session with identifier =%{public}s", v14, 0xCu);
      sub_1001A5654(v15);
    }
  }

  [v8 setAllowsCellularAccess:1];
  [v8 setAllowsExpensiveNetworkAccess:1];
  [v8 setAllowsConstrainedNetworkAccess:1];
  [v8 setDiscretionary:0];
  [v8 setSessionSendsLaunchEvents:1];
  [v8 setWaitsForConnectivity:1];
  v16 = [objc_opt_self() sessionWithConfiguration:v8 delegate:v4 delegateQueue:a1];
  if (qword_100375038 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10021F6F4(v17, qword_100382528);
  v18 = v16;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138543362;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&_mh_execute_header, v19, v20, "made url session=%{public}@", v21, 0xCu);
    sub_1001AC99C(v22, &unk_100379B60, &unk_1002F3B30);
  }

  return v18;
}

uint64_t sub_100236D94()
{
  v1[12] = v0;
  v2 = sub_1001A551C(&qword_1003787D0, &qword_1002F3AD0);
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[16] = v5;
  v6 = *(v5 - 8);
  v1[17] = v6;
  v1[18] = *(v6 + 64);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[21] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[22] = v8;
  v1[23] = v7;

  return _swift_task_switch(sub_100236F04, v8, v7);
}

uint64_t sub_100236F04()
{
  if (qword_100375038 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10021F6F4(v1, qword_100382528);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Slicing triggered for vision", v4, 2u);
  }

  v5 = v0[20];
  v6 = v0[12];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = 0xD000000000000015;
  v0[3] = 0x80000001002BDD60;
  v6;
  static Published.subscript.setter();
  sub_1002354D0(v5);
  v0[8] = _swiftEmptyArrayStorage;
  v0[9] = 1;
  v7 = OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_configuration;
  v0[24] = OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_configuration;
  v8 = v0[12];
  v27 = v0[13];
  v9 = v8 + v7;
  v10 = *(v9 + 48);
  v11 = *(v9 + 49);
  v0[25] = qword_1002F3B58[*(v9 + 26)];
  v23 = v0[19];
  v24 = v0[20];
  v12 = v0[17];
  v13 = v0[15];
  v14 = v0[16];
  v25 = v0[18];
  v26 = v0[14];
  v0[10] = *(v8 + OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_subject);
  sub_1001A551C(&qword_1003787C8, &qword_1002F3AC0);
  sub_1001AD0C8(&qword_1003787D8, &qword_1003787C8, &qword_1002F3AC0);
  Publisher.collect(_:)();
  v15 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  (*(v12 + 16))(v23, v24, v14);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v23, v14);
  *(v17 + ((v25 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  sub_1001AD0C8(&unk_1003787E0, &qword_1003787D0, &qword_1002F3AD0);
  v18 = Publisher<>.sink(receiveValue:)();

  (*(v26 + 8))(v13, v27);
  v19 = *(v8 + OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_cancellable);
  *(v8 + OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_cancellable) = v18;

  v20 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v21 = swift_task_alloc();
  v0[26] = v21;
  *v21 = v0;
  v21[1] = sub_100237358;

  return static Task<>.sleep(nanoseconds:)(2000000000);
}

uint64_t sub_100237358()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {

    v5 = *(v2 + 176);
    v6 = *(v2 + 184);
    v7 = sub_100237934;
  }

  else
  {
    v5 = *(v2 + 176);
    v6 = *(v2 + 184);
    v7 = sub_100237480;
  }

  return _swift_task_switch(v7, v5, v6);
}

void sub_100237480()
{
  v1 = v0;
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[12];

  v6 = *(v5 + v3 + 40);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v46 = v6;
  if (v6 < 1)
  {
LABEL_44:
    __break(1u);
    return;
  }

  v51 = v0 + 8;
  v48 = v0[12];
  v49 = v0 + 9;
  v47 = OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_runningTasks;
  v7 = 1;
  while (1)
  {
    v8 = v1[20];
    v9 = v1[12];
    _StringGuts.grow(_:)(21);

    v50 = v7;
    v1[11] = v7;
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    swift_getKeyPath();
    swift_getKeyPath();
    v1[4] = 0xD000000000000013;
    v1[5] = 0x80000001002BDD80;
    v11 = v9;
    v12 = v1;
    static Published.subscript.setter();
    v13 = sub_1002358A0();
    if (v2)
    {
      goto LABEL_33;
    }

    v14 = v13;
    v15 = v1[25];
    v16 = v1[20];
    v17 = v1[12];
    v18 = swift_task_alloc();
    v18[2] = v15;
    v18[3] = v17;
    v18[4] = v51;
    v18[5] = v16;
    v18[6] = v49;
    v19 = sub_10023B40C(v14, sub_10023C098);

    v20 = *(v48 + v47);
    *(v48 + v47) = v19;

    if (v19 >> 62)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
      v12 = &selRef_titleLabel;
      if (v21)
      {
LABEL_9:
        v22 = 0;
        while (1)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v22 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_39;
            }

            v23 = *(v19 + 8 * v22 + 32);
          }

          v24 = v23;
          v25 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          [v23 v12[128]];

          ++v22;
          if (v25 == v21)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
    }

    else
    {
      v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = &selRef_titleLabel;
      if (v21)
      {
        goto LABEL_9;
      }
    }

LABEL_18:

    v26 = *v51;
    if (*v51 >> 62)
    {
      if (v26 < 0)
      {
        v32 = *v51;
      }

      v27 = _CocoaArrayWrapper.endIndex.getter();
      v28 = &selRef_titleLabel;
      if (!v27)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v28 = &selRef_titleLabel;
      if (!v27)
      {
        goto LABEL_29;
      }
    }

    if (v27 < 1)
    {
      goto LABEL_40;
    }

    for (i = 0; i != v27; ++i)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v30 = *(v26 + 8 * i + 32);
      }

      v31 = v30;
      [v30 v28[129]];
    }

LABEL_29:
    if (v50 == v46)
    {
      break;
    }

    v7 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      __break(1u);
LABEL_33:
      v33 = v12[20];
      v34 = v12[16];
      v35 = v12[17];

      (*(v35 + 1))(v33, v34);
      v37 = v12[19];
      v36 = v12[20];
      v38 = v12[15];

      v39 = v12[1];
      goto LABEL_35;
    }
  }

  v40 = v1[19];
  v41 = v1[20];
  v42 = v1[16];
  v43 = v1[17];
  v52 = v1[15];
  v44 = v1[12];
  swift_getKeyPath();
  swift_getKeyPath();
  *(v1 + 3) = xmmword_1002F3970;
  v45 = v44;
  static Published.subscript.setter();

  (*(v43 + 1))(v41, v42);

  v39 = v1[1];
LABEL_35:

  v39();
}

void sub_100237934()
{
  v1 = v0;
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[12];

  v5 = *(v4 + v2 + 40);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v44 = v5;
  if (v5 < 1)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v49 = v0 + 8;
  v46 = v0[12];
  v47 = v0 + 9;
  v45 = OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_runningTasks;
  v6 = 1;
  while (1)
  {
    v7 = v1[20];
    v8 = v1[12];
    _StringGuts.grow(_:)(21);

    v48 = v6;
    v1[11] = v6;
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    swift_getKeyPath();
    swift_getKeyPath();
    v1[4] = 0xD000000000000013;
    v1[5] = 0x80000001002BDD80;
    v10 = v8;
    static Published.subscript.setter();
    v11 = sub_1002358A0();
    v12 = v1[25];
    v13 = v1[20];
    v14 = v1[12];
    v15 = swift_task_alloc();
    v15[2] = v12;
    v15[3] = v14;
    v15[4] = v49;
    v15[5] = v13;
    v15[6] = v47;
    v16 = sub_10023B40C(v11, sub_10023C098);

    v17 = *(v46 + v45);
    *(v46 + v45) = v16;

    if (v16 >> 62)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
      v19 = &selRef_titleLabel;
      if (v18)
      {
LABEL_8:
        v20 = 0;
        while (1)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v20 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_37;
            }

            v21 = *(v16 + 8 * v20 + 32);
          }

          v22 = v21;
          v23 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          [v21 v19[128]];

          ++v20;
          if (v23 == v18)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }
    }

    else
    {
      v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v19 = &selRef_titleLabel;
      if (v18)
      {
        goto LABEL_8;
      }
    }

LABEL_17:

    v24 = *v49;
    if (*v49 >> 62)
    {
      if (v24 < 0)
      {
        v30 = *v49;
      }

      v25 = _CocoaArrayWrapper.endIndex.getter();
      v26 = &selRef_titleLabel;
      if (!v25)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v26 = &selRef_titleLabel;
      if (!v25)
      {
        goto LABEL_28;
      }
    }

    if (v25 < 1)
    {
      goto LABEL_38;
    }

    for (i = 0; i != v25; ++i)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v28 = *(v24 + 8 * i + 32);
      }

      v29 = v28;
      [v28 v26[129]];
    }

LABEL_28:
    if (v48 == v44)
    {
      break;
    }

    v6 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      __break(1u);
      v31 = v19[20];
      v32 = v19[16];
      v33 = v19[17];

      (*(v33 + 1))(v31, v32);
      v35 = v19[19];
      v34 = v19[20];
      v36 = v19[15];

      v37 = v19[1];
      goto LABEL_33;
    }
  }

  v38 = v1[19];
  v39 = v1[20];
  v40 = v1[16];
  v41 = v1[17];
  v50 = v1[15];
  v42 = v1[12];
  swift_getKeyPath();
  swift_getKeyPath();
  *(v1 + 3) = xmmword_1002F3970;
  v43 = v42;
  static Published.subscript.setter();

  (*(v41 + 8))(v39, v40);

  v37 = v1[1];
LABEL_33:

  v37();
}

void *sub_100237DE8(uint64_t a1, char *a2, uint64_t a3, _BYTE *a4, void *a5, id a6, void *a7)
{
  v10 = _swiftEmptyArrayStorage;
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v13 = 0xD000000000000023;
  v12 = 0x80000001002BDDA0;
  v14 = &a4[OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_configuration];
  if (a4[OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_configuration + 48] != 1)
  {
    v27 = a7;
    goto LABEL_10;
  }

  v15 = URLRequest.networkServiceType.getter();
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v15 >= 2)
  {

    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);

    v17._countAndFlagsBits = 46;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v18);

    v13 = 0xD000000000000021;
    v12 = 0x80000001002BDDD0;
  }

  v19 = *&a4[OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_operationQueue];
  v20 = sub_1002369E8(v19, v13, v12);

  v10 = v20;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_23;
  }

LABEL_6:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  URL._bridgeToObjectiveC()(v22);
  v24 = v23;
  v25 = [v10 uploadTaskWithRequest:isa fromFile:v23];

  a6 = v25;
  LODWORD(v26) = 1.0;
  [a6 setPriority:v26];
  v27 = a7;
  v42 = *a7;
  dispatch thunk of CustomStringConvertible.description.getter();
  v28 = String._bridgeToObjectiveC()();

  [a6 setTaskDescription:v28];

  if (!__OFADD__(*a7, 1))
  {
    ++*a7;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_27;
    }

    goto LABEL_8;
  }

  __break(1u);
LABEL_25:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  v14 = a2;
  while (1)
  {
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v35 = URLRequest._bridgeToObjectiveC()().super.isa;
    v36 = [v10 downloadTaskWithRequest:v35];

    a5 = v36;
    LODWORD(v37) = 1.0;
    [a5 setPriority:v37];
    v43 = *v27;
    dispatch thunk of CustomStringConvertible.description.getter();
    a4 = String._bridgeToObjectiveC()();

    [a5 setTaskDescription:a4];

    if (!__OFADD__(*v27, 1))
    {
      break;
    }

    __break(1u);
LABEL_27:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_8:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v10 = _swiftEmptyArrayStorage;
LABEL_10:
    if (v14[49] != 1)
    {

      return _swiftEmptyArrayStorage;
    }

    v14 = a2;
    v29 = URLRequest.networkServiceType.getter();
    if ((v29 & 0x8000000000000000) != 0)
    {
LABEL_22:
      __break(1u);
LABEL_23:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_6;
    }

    if (v29 >= 2)
    {

      v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v30);

      v31._countAndFlagsBits = 46;
      v31._object = 0xE100000000000000;
      String.append(_:)(v31);
      v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v32);

      v13 = 0xD000000000000021;
      v12 = 0x80000001002BDDD0;
    }

    v33 = *&a4[OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_operationQueue];
    v34 = sub_1002369E8(v33, v13, v12);

    v10 = v34;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_25;
    }
  }

  ++*v27;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v39 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return _swiftEmptyArrayStorage;
}

void sub_10023837C(unint64_t *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (qword_100375038 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v10 = type metadata accessor for Logger();
    sub_10021F6F4(v10, qword_100382528);
    (*(v5 + 16))(v8, a2, v4);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v31 = a2;
      v14 = v13;
      v15 = swift_slowAlloc();
      v30 = v9;
      v16 = v15;
      aBlock[0] = v15;
      *v14 = 136315138;
      sub_10023C148(&qword_100378830, &type metadata accessor for URL);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v5 + 8))(v8, v4);
      v20 = sub_100223114(v17, v19, aBlock);

      *(v14 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "Deleting temporary file %s", v14, 0xCu);
      sub_1001A5654(v16);
      v9 = v30;
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    v22 = *&Strong[OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_dataGenerator];

    sub_1001A43AC();

    if (v9 >> 62)
    {
      break;
    }

    v23 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      return;
    }

LABEL_7:
    v5 = 0;
    v8 = (v9 & 0xC000000000000001);
    v24 = v9 & 0xFFFFFFFFFFFFFF8;
    a2 = &unk_10031FBF8;
    while (1)
    {
      if (v8)
      {
        v25 = v9;
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *(v24 + 16))
        {
          goto LABEL_17;
        }

        v25 = v9;
        v26 = *(v9 + 8 * v5 + 32);
      }

      v27 = v26;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      aBlock[4] = nullsub_1;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10020C96C;
      aBlock[3] = &unk_10031FBF8;
      v4 = _Block_copy(aBlock);
      [v27 flushWithCompletionHandler:v4];
      _Block_release(v4);
      [v27 invalidateAndCancel];

      ++v5;
      v28 = v9 == v23;
      v9 = v25;
      if (v28)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
  }

  v23 = _CocoaArrayWrapper.endIndex.getter();
  if (v23)
  {
    goto LABEL_7;
  }
}

uint64_t sub_100238784(char a1)
{
  v3 = sub_1001C3A44(*(v1 + OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_configuration + 72), *(v1 + OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_configuration + 80));
  if ((a1 & 1) == 0)
  {
    v9 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v4 = vcvtd_n_f64_s64(v3, 0xAuLL) * 0.0009765625;
  sub_1001A551C(&qword_100378838, &unk_1002F50A0);
  v5 = *(type metadata accessor for URLQueryItem() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  result = swift_allocObject();
  *(result + 16) = xmmword_1002EED40;
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v9 = result;
  v18 = v4;
  dispatch thunk of CustomStringConvertible.description.getter();
  URLQueryItem.init(name:value:)();

LABEL_7:
  if (qword_100375038 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10021F6F4(v10, qword_100382528);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 136315138;
    type metadata accessor for URLQueryItem();
    v15 = Array.description.getter();
    v17 = sub_100223114(v15, v16, &v18);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "made url query items %s", v13, 0xCu);
    sub_1001A5654(v14);
  }

  return v9;
}

uint64_t sub_100238A4C@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = type metadata accessor for URLError.Code();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v51 = (&v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = type metadata accessor for URLError();
  v52 = *(v54 - 1);
  v5 = *(v52 + 8);
  __chkstk_darwin(v54);
  v50 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001A551C(&qword_100378818, &unk_1002F3B40);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v49 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v49 - v17;
  v19 = type metadata accessor for URLComponents();
  v55 = *(v19 - 8);
  v56 = v19;
  v20 = *(v55 + 64);
  __chkstk_darwin(v19);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init()();
  v23 = v1 + OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_configuration;
  v25 = *(v1 + OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_configuration + 8);
  v24 = *(v1 + OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_configuration + 16);

  URLComponents.host.setter();
  v26 = *(v23 + 24);
  URLComponents.port.setter();
  *v23;
  *v23;
  URLComponents.scheme.setter();

  URLComponents.queryItems.setter();
  URLComponents.url.getter();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1001AC99C(v10, &qword_100378818, &unk_1002F3B40);
    if (qword_100375038 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10021F6F4(v27, qword_100382528);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v56;
    if (v30)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v58 = v33;
      *v32 = 136315138;
      swift_beginAccess();
      sub_10023C148(&qword_100378828, &type metadata accessor for URLComponents);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = sub_100223114(v34, v35, &v58);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v28, v29, "Unable to composed the URL %s", v32, 0xCu);
      sub_1001A5654(v33);
    }

    static URLError.Code.badURL.getter();
    sub_10026AE74(_swiftEmptyArrayStorage);
    sub_10023C148(&qword_100378820, &type metadata accessor for URLError);
    v37 = v50;
    v38 = v54;
    _BridgedStoredNSError.init(_:userInfo:)();
    URLError._nsError.getter();
    (*(v52 + 1))(v37, v38);
    swift_willThrow();
    return (*(v55 + 8))(v22, v31);
  }

  else
  {
    v54 = *(v12 + 32);
    (v54)(v18, v10, v11);
    if (qword_100375038 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10021F6F4(v40, qword_100382528);
    (*(v12 + 16))(v15, v18, v11);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v50 = v43;
      v51 = swift_slowAlloc();
      v57 = v51;
      *v43 = 136446210;
      sub_10023C148(&qword_100378830, &type metadata accessor for URL);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v18;
      v46 = v45;
      (*(v12 + 8))(v15, v11);
      v47 = sub_100223114(v44, v46, &v57);
      v18 = v52;

      v48 = v50;
      *(v50 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v41, v42, "made url=%{public}s", v48, 0xCu);
      sub_1001A5654(v51);
    }

    else
    {

      (*(v12 + 8))(v15, v11);
    }

    (v54)(v53, v18, v11);
    return (*(v55 + 8))(v22, v56);
  }
}

uint64_t sub_1002391B8@<X0>(char *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v83 = a3;
  v91 = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for URLRequest();
  v80 = *(v95 - 8);
  v16 = *(v80 + 64);
  __chkstk_darwin(v95);
  v88 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v74 - v19;
  v22 = __chkstk_darwin(v21);
  v87 = &v74 - v23;
  v24 = *a1;
  v25 = *(v12 + 16);
  v82 = v11;
  v81 = v12 + 16;
  v79 = v25;
  (v25)(v15, a2, v11, v22);
  v76 = v15;
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v75 = v24;
  v26 = qword_1002F3C18[v24];
  URLRequest.networkServiceType.setter();
  URLRequest.allowsCellularAccess.setter();
  URLRequest.allowsExpensiveNetworkAccess.setter();
  URLRequest.allowsConstrainedNetworkAccess.setter();
  UUID.init()();
  v27 = UUID.uuidString.getter();
  v29 = v28;
  v30 = *(v7 + 8);
  v84 = v10;
  v86 = v6;
  v85 = v7 + 8;
  v78 = v30;
  v30(v10, v6);
  v77 = "krelay.tethering.";
  v31._object = 0x80000001002BDE00;
  v32._countAndFlagsBits = v27;
  v32._object = v29;
  v31._countAndFlagsBits = 0xD000000000000011;
  URLRequest.addValue(_:forHTTPHeaderField:)(v32, v31);

  if (qword_100375038 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  v90 = sub_10021F6F4(v33, qword_100382528);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v94 = v37;
    *v36 = 136446210;
    swift_beginAccess();
    sub_10023C148(&qword_100378808, &type metadata accessor for URLRequest);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = sub_100223114(v38, v39, &v94);

    *(v36 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v34, v35, "made url request=%{public}s", v36, 0xCu);
    sub_1001A5654(v37);
  }

  v41 = v87;
  swift_beginAccess();
  v42 = v80;
  v43 = *(v80 + 16);
  v44 = v95;
  v89 = v80 + 16;
  v45 = v43;
  v43(v41, v20, v95);
  v46 = *(v42 + 8);
  v46(v20, v44);
  URLRequest.httpMethod.setter();
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v93 = v50;
    *v49 = 136315138;
    swift_beginAccess();
    sub_10023C148(&qword_100378808, &type metadata accessor for URLRequest);
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = sub_100223114(v51, v52, &v93);

    *(v49 + 4) = v53;
    v41 = v87;
    _os_log_impl(&_mh_execute_header, v47, v48, "made upload url request=%s", v49, 0xCu);
    sub_1001A5654(v50);
  }

  v54 = v88;
  swift_beginAccess();
  v55 = v95;
  v45(v91, v41, v95);
  v46(v41, v55);
  v79(v76, v83, v82);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v56 = qword_1002F3C18[v75];
  URLRequest.networkServiceType.setter();
  URLRequest.allowsCellularAccess.setter();
  URLRequest.allowsExpensiveNetworkAccess.setter();
  URLRequest.allowsConstrainedNetworkAccess.setter();
  v57 = v84;
  UUID.init()();
  v58 = UUID.uuidString.getter();
  v60 = v59;
  v78(v57, v86);
  v61._object = (v77 | 0x8000000000000000);
  v62._countAndFlagsBits = v58;
  v62._object = v60;
  v61._countAndFlagsBits = 0xD000000000000011;
  URLRequest.addValue(_:forHTTPHeaderField:)(v62, v61);

  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v92 = v66;
    *v65 = 136446210;
    swift_beginAccess();
    sub_10023C148(&qword_100378808, &type metadata accessor for URLRequest);
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = sub_100223114(v67, v68, &v92);

    *(v65 + 4) = v69;
    v54 = v88;
    _os_log_impl(&_mh_execute_header, v63, v64, "made url request=%{public}s", v65, 0xCu);
    sub_1001A5654(v66);
  }

  v70 = *(sub_1001A551C(&qword_100377288, &qword_1002F3B20) + 48);
  swift_beginAccess();
  v71 = v91 + v70;
  v72 = v95;
  v45(v71, v54, v95);
  return (v46)(v54, v72);
}

uint64_t sub_100239C3C(uint64_t a1, void *a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  type metadata accessor for SURLSessionRunningViewModel();
  sub_10023C148(&qword_10037A450, type metadata accessor for SURLSessionRunningViewModel);
  ObservableObject<>.objectWillChange.getter();

  ObservableObjectPublisher.send()();

  v4 = swift_unknownObjectUnownedLoadStrong();
  v5 = v4;
  v6 = *&v4[OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_coreTelephonyService];
  if (!v6)
  {

    goto LABEL_8;
  }

  v7 = v6;

  v8 = [v7 getPDPInfo];
  if (!v8)
  {
LABEL_8:
    v9 = 0;
    v11 = 0xE000000000000000;
    goto LABEL_9;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

    v9 = *aPdpIp0;
    v11 = unk_100378060;
  }

LABEL_9:
  v13 = swift_unknownObjectUnownedLoadStrong();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v14 = swift_unknownObjectUnownedLoadStrong();
  v15 = *&v14[OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_configuration + 32];

  v16 = *(v15 + 16);

  sub_1001C9C78(a2, v16 == 0, v9, v11);
}

uint64_t sub_100239F78(uint64_t a1, void *a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  type metadata accessor for SURLSessionRunningViewModel();
  sub_10023C148(&qword_10037A450, type metadata accessor for SURLSessionRunningViewModel);
  ObservableObject<>.objectWillChange.getter();

  ObservableObjectPublisher.send()();

  v4 = swift_unknownObjectUnownedLoadStrong();
  v5 = v4;
  v6 = *&v4[OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_coreTelephonyService];
  if (!v6)
  {

    goto LABEL_8;
  }

  v7 = v6;

  v8 = [v7 getPDPInfo];
  if (!v8)
  {
LABEL_8:
    v9 = 0;
    v11 = 0xE000000000000000;
    goto LABEL_9;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

    v9 = *aPdpIp0;
    v11 = unk_100378060;
  }

LABEL_9:
  v13 = swift_unknownObjectUnownedLoadStrong();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_1001CA484(a2, v9, v11);
}

uint64_t sub_10023A1DC(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  type metadata accessor for SURLSessionRunningViewModel();
  sub_10023C148(&qword_10037A450, type metadata accessor for SURLSessionRunningViewModel);
  ObservableObject<>.objectWillChange.getter();

  ObservableObjectPublisher.send()();

  v4 = swift_unknownObjectUnownedLoadStrong();
  v5 = v4;
  v6 = *&v4[OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_coreTelephonyService];
  if (!v6)
  {

    goto LABEL_8;
  }

  v7 = v6;

  v8 = [v7 getPDPInfo];
  if (!v8)
  {
LABEL_8:
    v9 = 0;
    v11 = 0xE000000000000000;
    goto LABEL_9;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

    v9 = *aPdpIp0;
    v11 = unk_100378060;
  }

LABEL_9:
  v13 = swift_unknownObjectUnownedLoadStrong();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_1001CC1B4(a2, v9, v11);
}

uint64_t sub_10023A438(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = *(v41 + 64);
  __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v39 = *(v10 - 8);
  v40 = v10;
  v11 = *(v39 + 64);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100375038 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10021F6F4(v14, qword_100382528);
  v15 = a2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_100223114(0xD000000000000028, 0x80000001002BDCC0, aBlock);
    *(v18 + 12) = 2048;
    *(v18 + 14) = [v15 taskIdentifier];

    _os_log_impl(&_mh_execute_header, v16, v17, "%s task.id=%ld", v18, 0x16u);
    sub_1001A5654(v19);

    if (!a3)
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (!a3)
    {
      goto LABEL_10;
    }
  }

  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v22 = 136315394;
    *(v22 + 4) = sub_100223114(0xD000000000000028, 0x80000001002BDCC0, aBlock);
    *(v22 + 12) = 2080;
    swift_getErrorValue();
    v23 = Error.localizedDescription.getter();
    v25 = v13;
    v26 = v9;
    v27 = a1;
    v28 = sub_100223114(v23, v24, aBlock);

    *(v22 + 14) = v28;
    a1 = v27;
    v9 = v26;
    v13 = v25;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s: terminated with error: %s", v22, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

LABEL_10:
  sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
  v29 = static OS_dispatch_queue.main.getter();
  v30 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v31 = swift_allocObject();
  v31[2] = v30;
  v31[3] = v15;
  v31[4] = a3;
  v31[5] = a1;
  aBlock[4] = sub_10023BFA0;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020C96C;
  aBlock[3] = &unk_10031FA68;
  v32 = _Block_copy(aBlock);
  v33 = v15;
  swift_errorRetain();

  v34 = a1;
  static DispatchQoS.unspecified.getter();
  v43 = _swiftEmptyArrayStorage;
  sub_10023C148(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_1001AD0C8(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0);
  v35 = v42;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v32);

  (*(v41 + 8))(v9, v35);
  (*(v39 + 8))(v13, v40);
}

uint64_t sub_10023AA10(uint64_t a1, void *a2, uint64_t a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  type metadata accessor for SURLSessionRunningViewModel();
  sub_10023C148(&qword_10037A450, type metadata accessor for SURLSessionRunningViewModel);
  ObservableObject<>.objectWillChange.getter();

  ObservableObjectPublisher.send()();

  v6 = swift_unknownObjectUnownedLoadStrong();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_1001CA72C(a2, a3);
  v7 = swift_unknownObjectUnownedLoadStrong();
  v8 = *&v7[OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_subject];

  PassthroughSubject.send(_:)();
}

double sub_10023AC04@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_10023AC84(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10023C190(v2, v3);
  v5 = v4;
  return static Published.subscript.setter();
}

uint64_t sub_10023AD08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10023AD88(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return static Published.subscript.setter();
}

id sub_10023AE00(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v34 = a2;
  v35 = a4;
  v33 = a1;
  v5 = sub_1001A551C(&qword_1003787C0, &qword_1002F3AB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = [objc_allocWithZone(NSOperationQueue) init];
  [v10 setQualityOfService:25];
  v11 = type metadata accessor for SURLSessionRunningViewModel();
  v12 = objc_allocWithZone(v11);
  v13 = OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_coreTelephonyService;
  *&v12[OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_coreTelephonyService] = 0;
  v14 = OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel__viewState;
  v39 = xmmword_1002F3980;
  Published.init(initialValue:)();
  (*(v6 + 32))(&v12[v14], v9, v5);
  v15 = OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_dataGenerator;
  type metadata accessor for SDataGenerator();
  v16 = swift_allocObject();
  *(v16 + 16) = [objc_opt_self() defaultManager];
  *&v12[v15] = v16;
  *&v12[OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_cancellable] = 0;
  v17 = OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_subject;
  v18 = sub_1001A551C(&qword_1003787C8, &qword_1002F3AC0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *&v12[v17] = PassthroughSubject.init()();
  *&v12[OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_runningTasks] = &_swiftEmptyArrayStorage;
  swift_beginAccess();
  (*(v6 + 8))(&v12[v14], v5);
  v37 = v33;
  v38 = v34;
  Published.init(initialValue:)();
  swift_endAccess();
  v21 = &v12[OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_configuration];
  v22 = *(a3 + 48);
  *(v21 + 2) = *(a3 + 32);
  *(v21 + 3) = v22;
  *(v21 + 4) = *(a3 + 64);
  *(v21 + 40) = *(a3 + 80);
  v23 = *(a3 + 16);
  *v21 = *a3;
  *(v21 + 1) = v23;
  *&v12[OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_operationQueue] = v10;
  v24 = objc_allocWithZone(type metadata accessor for STransferMetricsStore());
  v25 = v10;
  v26 = [v24 init];
  swift_beginAccess();
  v37 = v26;
  Published.init(initialValue:)();
  swift_endAccess();
  v27 = *&v12[v13];
  v28 = v35;
  *&v12[v13] = v35;
  v29 = v28;

  v36.receiver = v12;
  v36.super_class = v11;
  v30 = objc_msgSendSuper2(&v36, "init");

  return v30;
}

uint64_t sub_10023B128(uint64_t a1)
{
  v2 = type metadata accessor for STransferMetrics();
  if (*(a1 + *(v2 + 64)))
  {
    sub_1001C2690();
    swift_errorRetain();
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v3._countAndFlagsBits = 8229;
    v3._object = 0xE200000000000000;
    String.append(_:)(v3);
    swift_getErrorValue();
    v4._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v4);
  }

  else
  {
    if (*(a1 + *(v2 + 68)))
    {
      return 0x6D6F632025303031;
    }

    sub_1001C2690();
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v6._countAndFlagsBits = 37;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
  }

  return v7;
}

uint64_t sub_10023B24C(uint64_t a1, unsigned __int8 a2)
{
  v2 = vcvtd_n_f64_s64(sub_1001C3A44(a1, a2), 0xAuLL);
  if (v2 < 1024.0 || (v2 = v2 * 0.0009765625, v2 < 999.0))
  {
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1002EED40;
    *(v3 + 56) = &type metadata for Double;
    *(v3 + 64) = &protocol witness table for Double;
    *(v3 + 32) = v2;
  }

  else
  {
    v4 = v2 * 0.0009765625;
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1002EED40;
    *(v5 + 56) = &type metadata for Double;
    *(v5 + 64) = &protocol witness table for Double;
    if (v4 >= 999.0)
    {
      *(v5 + 32) = v4 * 0.0009765625;
    }

    else
    {
      *(v5 + 32) = v4;
    }
  }

  return String.init(format:_:)();
}

uint64_t sub_10023B40C(uint64_t a1, uint64_t (*a2)(unint64_t, unint64_t))
{
  v32 = *(a1 + 16);
  if (!v32)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = 0;
  v3 = _swiftEmptyArrayStorage;
  v4 = &unk_1003787F8;
  while (1)
  {
    v6 = sub_1001A551C(&qword_100377288, &qword_1002F3B20);
    v7 = a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v2;
    v8 = a2(v7, v7 + *(v6 + 48));
    v9 = v8;
    v10 = v8 >> 62;
    v11 = v8 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = v3 >> 62;
    if (v3 >> 62)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
      v14 = v30 + v11;
      if (__OFADD__(v30, v11))
      {
LABEL_34:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v13 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v13 + v11;
      if (__OFADD__(v13, v11))
      {
        goto LABEL_34;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v38 = v11;
    if (result)
    {
      if (v12)
      {
        goto LABEL_16;
      }

      v15 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v14 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v12)
      {
LABEL_16:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_17;
      }

      v15 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = *(v15 + 16);
LABEL_17:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = result;
    v15 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v17 = *(v15 + 16);
    v18 = *(v15 + 24);
    if (v10)
    {
      break;
    }

    v19 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v18 >> 1) - v17) < v38)
    {
      goto LABEL_38;
    }

    v35 = v2;
    v36 = v3;
    v21 = v15 + 8 * v17 + 32;
    v31 = v15;
    if (v10)
    {
      if (v19 < 1)
      {
        goto LABEL_40;
      }

      sub_1001AD0C8(&qword_100378800, v4, &qword_1002F3B28);
      for (i = 0; i != v19; ++i)
      {
        sub_1001A551C(v4, &qword_1002F3B28);
        v23 = v4;
        v24 = sub_1001FC044(v37, i, v9);
        v26 = *v25;
        (v24)(v37, 0);
        v4 = v23;
        *(v21 + 8 * i) = v26;
      }
    }

    else
    {
      sub_1001E1BB4(0, &qword_1003787F0, NSURLSessionTask_ptr);
      swift_arrayInitWithCopy();
    }

    v2 = v35;
    v3 = v36;
    if (v38 >= 1)
    {
      v27 = *(v31 + 16);
      v28 = __OFADD__(v27, v38);
      v29 = v27 + v38;
      if (v28)
      {
        goto LABEL_39;
      }

      *(v31 + 16) = v29;
    }

LABEL_4:
    if (++v2 == v32)
    {
      return v3;
    }
  }

  v20 = v15;
  result = _CocoaArrayWrapper.endIndex.getter();
  v15 = v20;
  v19 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v38 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10023B778(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v6 - 8);
  v7 = *(v24 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v10 = *(v23 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v23);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
  v22 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020C96C;
  aBlock[3] = v21;
  v16 = _Block_copy(aBlock);

  v17 = a1;
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10023C148(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_1001AD0C8(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = v22;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v24 + 8))(v9, v6);
  (*(v10 + 8))(v13, v23);
}

uint64_t sub_10023BA98(void *a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v8 = *(v20 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v20);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
  v19 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_10023C014;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020C96C;
  aBlock[3] = &unk_10031FAB8;
  v14 = _Block_copy(aBlock);

  v15 = a1;
  v16 = a2;
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_10023C148(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_1001AD0C8(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v17 = v19;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v21 + 8))(v7, v4);
  (*(v8 + 8))(v11, v20);
}

uint64_t sub_10023BF18()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10023BF50()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10023BFAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10023BFCC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10023C040()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10023C0CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_100377288, &qword_1002F3B20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10023C13C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10023C148(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10023C190(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_10023C1A4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_10023C240(unint64_t *a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10023837C(a1, (v1 + v4));
}

id sub_10023C324()
{
  v0 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  v1 = [objc_allocWithZone(UICollectionView) initWithFrame:v0 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() colorNamed:v2];

  [v1 setBackgroundColor:v3];
  type metadata accessor for SecondVCCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v5 = String._bridgeToObjectiveC()();

  [v1 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v5];

  type metadata accessor for CollectionHeaderSuplementaryCell();
  v6 = swift_getObjCClassFromMetadata();
  v7 = UICollectionElementKindSectionHeader;

  v8 = String._bridgeToObjectiveC()();

  [v1 registerClass:v6 forSupplementaryViewOfKind:v7 withReuseIdentifier:v8];

  return v1;
}

void sub_10023C4E0()
{
  v31.receiver = v0;
  v31.super_class = type metadata accessor for CoreTelephonyMetricDetails();
  objc_msgSendSuper2(&v31, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC11FTMInternal26CoreTelephonyMetricDetails_collectionView];
  [v1 setDataSource:v0];
  [v1 setDelegate:v0];
  [v1 setAlwaysBounceVertical:1];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  [v2 addSubview:v1];

  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002EF930;
  v5 = [v1 topAnchor];
  v6 = [v0 view];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v6 safeAreaLayoutGuide];

  v9 = [v8 topAnchor];
  v10 = [v5 constraintEqualToAnchor:v9];

  *(v4 + 32) = v10;
  v11 = [v1 leadingAnchor];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = v12;
  v14 = [v12 safeAreaLayoutGuide];

  v15 = [v14 leadingAnchor];
  v16 = [v11 constraintEqualToAnchor:v15];

  *(v4 + 40) = v16;
  v17 = [v1 trailingAnchor];
  v18 = [v0 view];
  if (!v18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v19 = v18;
  v20 = [v18 safeAreaLayoutGuide];

  v21 = [v20 trailingAnchor];
  v22 = [v17 constraintEqualToAnchor:v21];

  *(v4 + 48) = v22;
  v23 = [v1 bottomAnchor];
  v24 = [v0 view];
  if (v24)
  {
    v25 = v24;
    v26 = objc_opt_self();
    v27 = [v25 safeAreaLayoutGuide];

    v28 = [v27 bottomAnchor];
    v29 = [v23 constraintEqualToAnchor:v28];

    *(v4 + 56) = v29;
    sub_1001AD6F0();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v26 activateConstraints:isa];

    return;
  }

LABEL_11:
  __break(1u);
}

id sub_10023C914(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC11FTMInternal26CoreTelephonyMetricDetails_bandItems] = _swiftEmptyArrayStorage;
  v6 = &v3[OBJC_IVAR____TtC11FTMInternal26CoreTelephonyMetricDetails_sectionTitle];
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  v7 = OBJC_IVAR____TtC11FTMInternal26CoreTelephonyMetricDetails_collectionView;
  *&v3[v7] = sub_10023C324();
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for CoreTelephonyMetricDetails();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_10023CA40(void *a1)
{
  *&v1[OBJC_IVAR____TtC11FTMInternal26CoreTelephonyMetricDetails_bandItems] = _swiftEmptyArrayStorage;
  v3 = &v1[OBJC_IVAR____TtC11FTMInternal26CoreTelephonyMetricDetails_sectionTitle];
  *v3 = 0;
  *(v3 + 1) = 0xE000000000000000;
  v4 = OBJC_IVAR____TtC11FTMInternal26CoreTelephonyMetricDetails_collectionView;
  *&v1[v4] = sub_10023C324();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for CoreTelephonyMetricDetails();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

void sub_10023CB08()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FTMInternal26CoreTelephonyMetricDetails_bandItems);

  v2 = *(v0 + OBJC_IVAR____TtC11FTMInternal26CoreTelephonyMetricDetails_sectionTitle + 8);

  v3 = *(v0 + OBJC_IVAR____TtC11FTMInternal26CoreTelephonyMetricDetails_collectionView);
}

id sub_10023CB5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreTelephonyMetricDetails();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10023CC30(void *a1)
{
  v2 = v1;

  v4 = String._bridgeToObjectiveC()();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = [a1 dequeueReusableCellWithReuseIdentifier:v4 forIndexPath:isa];

  type metadata accessor for SecondVCCell();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1001D1ED0();
    result = IndexPath.item.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v11 = result;
      v12 = *(v2 + OBJC_IVAR____TtC11FTMInternal26CoreTelephonyMetricDetails_bandItems);
      if (result < *(v12 + 16))
      {
        v13 = type metadata accessor for Metric(0);
        v14 = *(v12 + ((*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80)) + *(*(v13 - 8) + 72) * v11 + *(v13 + 36));
        v15 = [v14 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v16 = String._bridgeToObjectiveC()();

        [v9 setText:v16];

        v17 = sub_1001D1F4C();
        v18 = String._bridgeToObjectiveC()();
        [v17 setText:v18];

        v19 = sub_1001D20B0();
        v20 = OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___leftLabel;
        v21 = [*(v8 + OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___leftLabel) text];
        if (v21)
        {

          v22 = [*(v8 + v20) text];
          if (v22)
          {
            v23 = v22;
            v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v26 = v25;

            if (v24 || v26 != 0xE000000000000000)
            {
              v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
            }

            else
            {

              v27 = 1;
            }
          }

          else
          {
            v27 = 0;
          }
        }

        else
        {
          v27 = 1;
        }

        [v19 setHidden:v27 & 1];

        return v8;
      }
    }

    __break(1u);
    return result;
  }

  v28 = objc_allocWithZone(UICollectionViewCell);

  return [v28 init];
}

id sub_10023D044(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [objc_allocWithZone(UICollectionReusableView) init];
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v9 == a3)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      return v8;
    }
  }

  IndexPath.section.getter();
  v12 = String._bridgeToObjectiveC()();

  v13 = String._bridgeToObjectiveC()();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v15 = [a1 dequeueReusableSupplementaryViewOfKind:v12 withReuseIdentifier:v13 forIndexPath:isa];

  type metadata accessor for CollectionHeaderSuplementaryCell();
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    v18 = sub_1001CF138();
    v19 = v4 + OBJC_IVAR____TtC11FTMInternal26CoreTelephonyMetricDetails_sectionTitle;
    v20 = *(v4 + OBJC_IVAR____TtC11FTMInternal26CoreTelephonyMetricDetails_sectionTitle);
    v21 = *(v19 + 8);

    v22 = String._bridgeToObjectiveC()();

    [v18 setText:v22];
  }

  else
  {

    v17 = [objc_allocWithZone(UICollectionViewCell) init];
  }

  return v17;
}

uint64_t sub_10023D490(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id sub_10023D4E4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC11FTMInternal7MenuBar_animationDuration] = 0x3FE0000000000000;
  v10 = &v4[OBJC_IVAR____TtC11FTMInternal7MenuBar_cellId];
  strcpy(&v4[OBJC_IVAR____TtC11FTMInternal7MenuBar_cellId], "MenuBarCellId");
  *(v10 + 7) = -4864;
  *&v4[OBJC_IVAR____TtC11FTMInternal7MenuBar_menuImageNames] = &off_10031C708;
  *&v4[OBJC_IVAR____TtC11FTMInternal7MenuBar_numberOfSegments] = 2;
  *&v4[OBJC_IVAR____TtC11FTMInternal7MenuBar_horizontalViewBarHeight] = 0x4008000000000000;
  *&v4[OBJC_IVAR____TtC11FTMInternal7MenuBar_segmentWidthMultiplier] = 0x4000000000000000;
  *&v4[OBJC_IVAR____TtC11FTMInternal7MenuBar_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC11FTMInternal7MenuBar____lazy_storage___collectionView] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal7MenuBar_horizontalBarLeftAnchorConstraint] = 0;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
}

unint64_t sub_10023D718(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11FTMInternal7MenuBar_cellId);
  v4 = *(v1 + OBJC_IVAR____TtC11FTMInternal7MenuBar_cellId + 8);
  v5 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v7 = [a1 dequeueReusableCellWithReuseIdentifier:v5 forIndexPath:isa];

  type metadata accessor for MenuCell();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = *(v8 + OBJC_IVAR____TtC11FTMInternal8MenuCell_menuIconImageView);
    result = IndexPath.item.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v12 = *(v1 + OBJC_IVAR____TtC11FTMInternal7MenuBar_menuImageNames);
      if (result < *(v12 + 16))
      {
        v13 = v12 + 16 * result;
        v14 = *(v13 + 32);
        v15 = *(v13 + 40);

        v16 = String._bridgeToObjectiveC()();

        v17 = [objc_opt_self() systemImageNamed:v16];

        [v10 setImage:v17];
        v18 = v7;
        v19 = String._bridgeToObjectiveC()();
        v20 = [objc_opt_self() colorNamed:v19];

        [v9 setTintColor:v20];
        return v9;
      }
    }

    __break(1u);
  }

  else
  {

    v21 = objc_allocWithZone(UICollectionViewCell);

    return [v21 init];
  }

  return result;
}

uint64_t sub_10023DA2C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = a2 + OBJC_IVAR____TtC11FTMInternal7MenuBar_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      v5 = IndexPath.item.getter();
      (*(v3 + 8))(v5, ObjectType, v3);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_10023DCEC()
{
  v0 = [objc_allocWithZone(UIImageView) init];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1];

  [v0 setImage:v2];
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() colorNamed:v3];

  [v0 setTintColor:v4];
  return v0;
}

void sub_10023DE98()
{
  v1 = *&v0[OBJC_IVAR____TtC11FTMInternal8MenuCell_menuIconImageView];
  [v0 isSelected];
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() colorNamed:v2];

  [v1 setTintColor:v3];
}

void sub_10023E0A4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11FTMInternal8MenuCell_menuIconImageView];
  [v0 addSubview:v2];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_opt_self();
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002F1550;
  v5 = [v2 heightAnchor];
  v6 = [v5 constraintEqualToConstant:28.0];

  *(v4 + 32) = v6;
  v7 = [v2 widthAnchor];
  v8 = [v7 constraintEqualToConstant:28.0];

  *(v4 + 40) = v8;
  v9 = [v2 centerXAnchor];
  v10 = [v1 centerXAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v4 + 48) = v11;
  sub_1001AD6F0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];
}

id sub_10023E27C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MenuCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10023E2E4()
{
  *(v0 + OBJC_IVAR____TtC11FTMInternal7MenuBar_animationDuration) = 0x3FE0000000000000;
  v1 = v0 + OBJC_IVAR____TtC11FTMInternal7MenuBar_cellId;
  strcpy((v0 + OBJC_IVAR____TtC11FTMInternal7MenuBar_cellId), "MenuBarCellId");
  *(v1 + 14) = -4864;
  *(v0 + OBJC_IVAR____TtC11FTMInternal7MenuBar_menuImageNames) = &off_10031C748;
  *(v0 + OBJC_IVAR____TtC11FTMInternal7MenuBar_numberOfSegments) = 2;
  *(v0 + OBJC_IVAR____TtC11FTMInternal7MenuBar_horizontalViewBarHeight) = 0x4008000000000000;
  *(v0 + OBJC_IVAR____TtC11FTMInternal7MenuBar_segmentWidthMultiplier) = 0x4000000000000000;
  *(v0 + OBJC_IVAR____TtC11FTMInternal7MenuBar_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC11FTMInternal7MenuBar____lazy_storage___collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC11FTMInternal7MenuBar_horizontalBarLeftAnchorConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10023E3F4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = IndexPath.item.getter();
  [v2 frame];
  Width = CGRectGetWidth(v25);
  v9 = *&v2[OBJC_IVAR____TtC11FTMInternal7MenuBar_horizontalBarLeftAnchorConstraint];
  if (v9)
  {
    [v9 setConstant:Width * v7 / *&v2[OBJC_IVAR____TtC11FTMInternal7MenuBar_segmentWidthMultiplier]];
  }

  v18 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  v23 = sub_10023E6EC;
  v24 = v10;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_10020C96C;
  v22 = &unk_10031FC70;
  v11 = _Block_copy(&aBlock);
  v12 = v2;

  (*(v5 + 16))(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  (*(v5 + 32))(v14 + v13, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v23 = sub_10023E7D8;
  v24 = v14;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_10023D490;
  v22 = &unk_10031FCC0;
  v15 = _Block_copy(&aBlock);
  v16 = v12;

  [v18 animateWithDuration:0x20000 delay:v11 usingSpringWithDamping:v15 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:1.0];
  _Block_release(v15);
  _Block_release(v11);
}

uint64_t sub_10023E6B4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10023E6FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10023E714()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10023E7D8(uint64_t a1)
{
  v3 = *(*(type metadata accessor for IndexPath() - 8) + 80);
  v4 = *(v1 + 16);

  return sub_10023DA2C(a1, v4);
}

unint64_t sub_10023E858()
{
  result = qword_100378AA8;
  if (!qword_100378AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100378AA8);
  }

  return result;
}

unint64_t sub_10023E8AC(char a1)
{
  result = 0x63696E756D6D6F43;
  switch(a1)
  {
    case 1:
      result = 0x6E696D6165727453;
      break;
    case 2:
      result = 0x7373656E69737542;
      break;
    case 3:
      result = 0x72656874616557;
      break;
    case 4:
      result = 0x656974696C697455;
      break;
    case 5:
      result = 0x6C6576617254;
      break;
    case 6:
      result = 0x7374726F7053;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x636E657265666552;
      break;
    case 9:
      result = 0x69746375646F7250;
      break;
    case 10:
      result = 0x2026206F746F6850;
      break;
    case 11:
      result = 1937204558;
      break;
    case 12:
      result = 0x697461676976614ELL;
      break;
    case 13:
      result = 0x636973754DLL;
      break;
    case 14:
      result = 0x6C7974736566694CLL;
      break;
    case 15:
      result = 0xD000000000000014;
      break;
    case 16:
      result = 0x73656D6147;
      break;
    case 17:
      result = 0x65636E616E6946;
      break;
    case 18:
      result = 0x6961747265746E45;
      break;
    case 19:
      result = 0x6F69746163756445;
      break;
    case 20:
      result = 0x736B6F6F42;
      break;
    case 21:
      result = 7104878;
      break;
    case 22:
      result = 0x6C61636964654DLL;
      break;
    case 23:
      result = 0x6E776F6E6B6E55;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10023EBA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10023EFB4(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_10023ECD0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1002F3E78[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_10023ED58()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1002F3E78[v1]);
  return Hasher._finalize()();
}

unint64_t sub_10023EDAC()
{
  result = qword_100378AB0;
  if (!qword_100378AB0)
  {
    sub_1001A55C8(&qword_1003753B8, &qword_1002EF2F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100378AB0);
  }

  return result;
}

unint64_t sub_10023EE10()
{
  result = qword_100378AB8;
  if (!qword_100378AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100378AB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SPApplicationCategories(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SPApplicationCategories(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10023EFB4(uint64_t a1)
{
  switch(a1)
  {
    case 6000:
      result = 2;
      break;
    case 6001:
      result = 3;
      break;
    case 6002:
      result = 4;
      break;
    case 6003:
      result = 5;
      break;
    case 6004:
      result = 6;
      break;
    case 6005:
      result = 7;
      break;
    case 6006:
      result = 8;
      break;
    case 6007:
      result = 9;
      break;
    case 6008:
      result = 10;
      break;
    case 6009:
      result = 11;
      break;
    case 6010:
      result = 12;
      break;
    case 6011:
      result = 13;
      break;
    case 6012:
      result = 14;
      break;
    case 6013:
      result = 15;
      break;
    case 6014:
      result = 16;
      break;
    case 6015:
      result = 17;
      break;
    case 6016:
      result = 18;
      break;
    case 6017:
      result = 19;
      break;
    case 6018:
      result = 20;
      break;
    case 6019:
      result = 21;
      break;
    case 6020:
      result = 22;
      break;
    default:
      if (a1 == 9001)
      {
        v2 = 1;
      }

      else
      {
        v2 = 23;
      }

      if (a1 == 9000)
      {
        result = 0;
      }

      else
      {
        result = v2;
      }

      break;
  }

  return result;
}

uint64_t sub_10023F118(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SymbolRenderingMode();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10023F1D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SymbolRenderingMode();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SSFImage()
{
  result = qword_100378B18;
  if (!qword_100378B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10023F2C8()
{
  type metadata accessor for SymbolRenderingMode();
  if (v0 <= 0x3F)
  {
    sub_1001BE3CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_10023F378@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_1001A551C(&qword_100378B58, &qword_1002F3F98);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v21[-v5];
  v7 = type metadata accessor for SSFImage();
  v8 = &v1[*(v7 + 24)];
  v9 = v8[1];
  if (v9)
  {
    v10 = *v8;
    v11 = static HorizontalAlignment.center.getter();
    sub_10023F5D8(v1, v10, v9, v32);
    v27 = 1;
    v21[8] = v32[24];
    LOBYTE(v28) = 0;
    v22 = v11;
    *&v23 = 0;
    BYTE8(v23) = 1;
    *v24 = *v32;
    *&v24[8] = *&v32[8];
    v24[24] = v32[24];
    v25 = v33;
    v26 = 0;
  }

  else
  {
    v12 = v7;
    v13 = *v1;
    v14 = *(v1 + 1);

    Image.init(systemName:)();
    v15 = *(v12 + 20);
    v16 = type metadata accessor for SymbolRenderingMode();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v6, &v1[v15], v16);
    (*(v17 + 56))(v6, 0, 1, v16);
    v18 = Image.symbolRenderingMode(_:)();

    sub_10023F7C0(v6);
    v27 = 1;
    v22 = v18;
    v23 = v28;
    *v24 = v29;
    *&v24[16] = v30;
    v25 = v31;
    v26 = 1;
  }

  sub_1001A551C(&qword_100378B60, &qword_1002F3FA0);
  sub_10023F828();
  _ConditionalContent<>.init(storage:)();
  v19 = v34;
  *(a1 + 32) = v33;
  *(a1 + 48) = v19;
  *(a1 + 64) = v35;
  result = *&v32[16];
  *a1 = *v32;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10023F5D8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1001A551C(&qword_100378B58, &qword_1002F3F98);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  v12 = *a1;
  v13 = *(a1 + 1);

  Image.init(systemName:)();
  v14 = *(type metadata accessor for SSFImage() + 20);
  v15 = type metadata accessor for SymbolRenderingMode();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v11, &a1[v14], v15);
  (*(v16 + 56))(v11, 0, 1, v15);
  v17 = Image.symbolRenderingMode(_:)();

  sub_10023F7C0(v11);
  v24[0] = a2;
  v24[1] = a3;
  sub_1001A56A0();

  v18 = Text.init<A>(_:)();
  v20 = v19;
  *a4 = v17;
  *(a4 + 8) = v18;
  *(a4 + 16) = v19;
  LOBYTE(v12) = v21 & 1;
  *(a4 + 24) = v21 & 1;
  *(a4 + 32) = v22;

  sub_1001A5174(v18, v20, v12);

  sub_1001ACFEC(v18, v20, v12);
}

uint64_t sub_10023F7C0(uint64_t a1)
{
  v2 = sub_1001A551C(&qword_100378B58, &qword_1002F3F98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10023F828()
{
  result = qword_100378B68;
  if (!qword_100378B68)
  {
    sub_1001A55C8(&qword_100378B60, &qword_1002F3FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100378B68);
  }

  return result;
}

unint64_t sub_10023F890()
{
  result = qword_100378B70;
  if (!qword_100378B70)
  {
    sub_1001A55C8(&qword_100378B78, &unk_1002F3FA8);
    sub_10023F828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100378B70);
  }

  return result;
}

uint64_t sub_10023F91C(uint64_t a1, unint64_t a2)
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

  String.index(before:)();
  return String.subscript.getter();
}

uint64_t sub_10023F99C()
{
  v1 = v0[1];
  v2 = *(*v0 + 16);
  if (v1 == v2)
  {
    return 0;
  }

  if (v1 >= v2)
  {
    __break(1u);
  }

  else
  {
    v4 = *(*v0 + 8 * v1 + 32);
    v0[1] = v1 + 1;
    v3 = v0[2];
    if (!__OFADD__(v3, 1))
    {
      v0[2] = v3 + 1;

      return v3;
    }
  }

  __break(1u);
  return result;
}

void *sub_10023FA18(uint64_t a1)
{
  result = _swiftEmptyArrayStorage;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;

      sub_1001E3308(v6);
      --v3;
    }

    while (v3);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

char *sub_10023FA84(void *a1, void *a2)
{
  v5 = &v2[OBJC_IVAR____TtC11FTMInternal13MetricService_metricIDKey];
  strcpy(&v2[OBJC_IVAR____TtC11FTMInternal13MetricService_metricIDKey], "kKeyMetricID");
  v5[13] = 0;
  *(v5 + 7) = -5120;
  v6 = &v2[OBJC_IVAR____TtC11FTMInternal13MetricService_payloadKey];
  *v6 = 0x6C79615079654B6BLL;
  *(v6 + 1) = 0xEB0000000064616FLL;
  v7 = &v2[OBJC_IVAR____TtC11FTMInternal13MetricService_profileIDKey];
  strcpy(&v2[OBJC_IVAR____TtC11FTMInternal13MetricService_profileIDKey], "kKeyProfileID");
  *(v7 + 7) = -4864;
  *&v2[OBJC_IVAR____TtC11FTMInternal13MetricService_edgeCaseIceMetrics] = &off_10031AAE8;
  *&v2[OBJC_IVAR____TtC11FTMInternal13MetricService_edgeCaseSinopeMetrics] = &off_10031AB88;
  v8 = OBJC_IVAR____TtC11FTMInternal13MetricService_dlbwlookup;
  *&v2[v8] = sub_1001FD364(&off_10031ABD8);
  *&v2[OBJC_IVAR____TtC11FTMInternal13MetricService_newMetricHexIds] = &off_10031AC58;
  *&v2[OBJC_IVAR____TtC11FTMInternal13MetricService_persistanceStore] = a1;
  *&v2[OBJC_IVAR____TtC11FTMInternal13MetricService_aBMShared] = a2;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for MetricService();
  v9 = a1;
  v10 = a2;
  v11 = objc_msgSendSuper2(&v15, "init");
  v12 = *&v11[OBJC_IVAR____TtC11FTMInternal13MetricService_aBMShared];
  v13 = v11;
  [v12 setDelegate:{v13, v15.receiver, v15.super_class}];
  if (qword_100374FC0 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  return v13;
}

void sub_10023FC7C(void *a1)
{
  v2 = v1;
  v104 = type metadata accessor for Date();
  v4 = *(v104 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v104);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v106 = &v88 - v9;
  v10 = *(v2 + OBJC_IVAR____TtC11FTMInternal13MetricService_metricIDKey + 8);
  *&v115 = *(v2 + OBJC_IVAR____TtC11FTMInternal13MetricService_metricIDKey);
  *(&v115 + 1) = v10;

  v11 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v107 = a1;
  v12 = [a1 __swift_objectForKeyedSubscript:v11];
  swift_unknownObjectRelease();
  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v115 = 0u;
    v116 = 0;
  }

  v121 = v115;
  v122 = v116;
  if (!v116._object)
  {
    sub_1001AC99C(&v121, &qword_100375D68, &unk_1002F2370);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    if (qword_100374F98 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    return;
  }

  v13 = v126;
  v14 = sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
  v15 = NSString.init(stringLiteral:)();
  v101 = sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v16 = swift_allocObject();
  v100 = xmmword_1002EED40;
  *(v16 + 16) = xmmword_1002EED40;
  *(v16 + 56) = &type metadata for Int;
  *(v16 + 64) = &protocol witness table for Int;
  v103 = v13;
  *(v16 + 32) = v13;
  v17 = NSString.init(format:_:)();

  if (qword_100375018 != -1)
  {
    swift_once();
  }

  v105 = qword_100382500;
  v18 = *(qword_100382500 + 24);
  v94 = v7;
  v95 = v2;
  v99 = v17;
  v91 = v14;
  if (v18 == 1)
  {
    if (qword_100374F98 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1002EED50;
    *(v19 + 56) = v14;
    *(v19 + 64) = sub_10020346C(&unk_100378C70, &qword_1003770C8, NSString_ptr);
    *(v19 + 32) = v17;
    *(v19 + 96) = sub_1001E1BB4(0, &qword_100378CE0, NSDictionary_ptr);
    *(v19 + 104) = sub_10020346C(&qword_100378CE8, &qword_100378CE0, NSDictionary_ptr);
    v20 = v107;
    *(v19 + 72) = v107;
    v21 = v17;
    v22 = v20;
    os_log(_:dso:log:type:_:)();
    v2 = v95;
  }

  else
  {
    if (qword_100374F98 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    v23 = swift_allocObject();
    *(v23 + 16) = v100;
    *(v23 + 56) = v14;
    *(v23 + 64) = sub_10020346C(&unk_100378C70, &qword_1003770C8, NSString_ptr);
    *(v23 + 32) = v17;
    v24 = v17;
    os_log(_:dso:log:type:_:)();
  }

  v25 = v103;

  v96 = 0;
  v98 = (v2 + OBJC_IVAR____TtC11FTMInternal13MetricService_payloadKey);
  v88 = OBJC_IVAR____TtC11FTMInternal13MetricService_edgeCaseSinopeMetrics;
  v89 = OBJC_IVAR____TtC11FTMInternal13MetricService_edgeCaseIceMetrics;
  v102 = (v4 + 8);
  v93 = "pty  ---> %{public}s";
  v108 = vdupq_n_s64(v25);
  v26 = &xmmword_10031ADC8;
  v27 = 89;
  v90 = xmmword_1002EED50;
  v28 = v106;
  while (1)
  {
    v31 = v26[3];
    v123 = v26[2];
    v124 = v31;
    v125 = *(v26 + 8);
    v32 = v26[1];
    v121 = *v26;
    v122 = v32;
    if (v123 == v25)
    {
      break;
    }

LABEL_21:
    v26 = (v26 + 72);
    if (!--v27)
    {
      goto LABEL_69;
    }
  }

  v110 = v122;
  v33 = *(&v121 + 1);
  v109 = v121;
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_10031C7D0, v108), vceqq_s64(unk_10031C7E0, v108)))) & 1) != 0 || v25 == 806480)
  {
    sub_10024A184(&v121, &v115);
    v40 = sub_100245198(v25, v107);
    if (!v40)
    {

      sub_10024A1E0(&v121);
      return;
    }

    v41 = v40;
    sub_100246A94(v40, v28);
    *&v115 = sub_1001FD020(_swiftEmptyArrayStorage);
    sub_1002491A4(v41, &v115);

    sub_100246C40(v115, &v121, v28);

    if (*(v105 + 160) == 1)
    {
      (*v102)(v28, v104);
      sub_10024A1E0(&v121);
    }

    else
    {
      v29 = *(v105 + 156);

      object = v110._object;

      sub_10024A1E0(&v121);
      *&v126 = v109;
      *(&v126 + 1) = v33;
      countAndFlagsBits = v110._countAndFlagsBits;
      v128 = object;
      v129 = v29;
      sub_100249BEC(&v126);

      (*v102)(v28, v104);
    }

    goto LABEL_21;
  }

  v35 = *(&v123 + 1);
  v34 = v124;
  sub_10024A184(&v121, &v115);
  v36 = String._bridgeToObjectiveC()();
  v37 = NSClassFromString(v36);

  if (!v37 || (swift_getObjCClassMetadata(), sub_1001E1BB4(0, &qword_100378CD0, PBCodable_ptr), !swift_dynamicCastMetatype()))
  {
LABEL_44:
    sub_10024A1E0(&v121);
    v28 = v106;
    if (qword_100374FC0 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    v52 = swift_allocObject();
    *(v52 + 16) = v100;
    *(v52 + 56) = &type metadata for Int;
    *(v52 + 64) = &protocol witness table for Int;
    v25 = v103;
    *(v52 + 32) = v103;
    os_log(_:dso:log:type:_:)();

    goto LABEL_21;
  }

  v38 = v98[1];
  *&v113 = *v98;
  *(&v113 + 1) = v38;

  v39 = [v107 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v39)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v113 = 0u;
    v114 = 0;
  }

  v115 = v113;
  v116 = v114;
  if (!v114._object)
  {
    sub_1001AC99C(&v115, &qword_100375D68, &unk_1002F2370);
    goto LABEL_37;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_37:
    v46 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v45.super.isa = 0;
    goto LABEL_38;
  }

  v42 = v111;
  v43 = v112;
  v44 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v45.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1001A5474(v42, v43);
  v46 = v44;
  v2 = v95;
LABEL_38:
  v47 = [v46 initWithData:{v45.super.isa, v88}];

  if (!v47)
  {
    goto LABEL_44;
  }

  v48 = [v47 dictionaryRepresentation];

  if (!v48)
  {
    goto LABEL_44;
  }

  v97 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v105 + 24) == 1)
  {
    if (qword_100374FC0 != -1)
    {
      swift_once();
    }

    LODWORD(v92) = static os_log_type_t.default.getter();
    v49 = swift_allocObject();
    *(v49 + 16) = v90;
    *(v49 + 56) = v91;
    *(v49 + 64) = sub_10020346C(&unk_100378C70, &qword_1003770C8, NSString_ptr);
    v50 = v99;
    *(v49 + 32) = v99;
    *(v49 + 96) = &type metadata for String;
    *(v49 + 104) = sub_1001A76E8();
    *(v49 + 72) = v35;
    *(v49 + 80) = v34;
    v51 = v50;

    os_log(_:dso:log:type:_:)();

    v2 = v95;
  }

  else
  {
    if (qword_100374FC0 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  v53 = v103;
  v54 = v97;
  if (*(v97 + 16))
  {
    *&v115 = v109;
    *(&v115 + 1) = v33;

    String.append(_:)(v110);
    v55 = *(v54 + 16);
    sub_1001E0B90(0xD00000000000002BLL, v93 | 0x8000000000000000, v115, *(&v115 + 1));

    *&v113 = sub_1001FD020(_swiftEmptyArrayStorage);
    sub_1002491A4(v54, &v113);
    v56 = v99;
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;
    v92 = v56;
    sub_100249DB8(&v113, v57, v59);

    v60 = v105;
    if (*(v105 + 28) == 1)
    {
      v61 = *(v2 + v89);
      v62 = v2;
      *&v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v115 + 1) = v63;
      __chkstk_darwin(v115);
      *(&v88 - 2) = &v115;
      v64 = v61;
      v65 = v96;
      v66 = sub_1001E2ED0(sub_10024A274, (&v88 - 4), v64);
      v96 = v65;

      if (v66)
      {
        v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v69 = sub_100240B84(v67, v68, v113);

        *&v113 = v69;
      }

      v2 = v62;
      v60 = v105;
    }

    v70 = v97;
    if (*(v60 + 153) == 1)
    {
      v71 = *(v2 + v88);
      v72 = v2;
      *&v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v115 + 1) = v73;
      __chkstk_darwin(v115);
      *(&v88 - 2) = &v115;
      v74 = v71;
      v75 = v96;
      v76 = sub_1001E2ED0(sub_1002071E0, (&v88 - 4), v74);
      v96 = v75;

      if (v76)
      {
        v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v79 = v78;

        v80 = sub_100240B84(v77, v79, v113);

        *&v113 = v80;
      }

      else
      {
      }

      v2 = v72;
      v70 = v97;
    }

    else
    {
    }

    v81 = v94;
    sub_100246A94(v70, v94);

    sub_100246C40(v113, &v121, v81);

    v25 = v103;
    if (*(v105 + 160) == 1)
    {
      (*v102)(v81, v104);
      sub_10024A1E0(&v121);
    }

    else
    {
      v82 = *(v105 + 156);

      v83 = v110._object;

      sub_10024A1E0(&v121);
      *&v117 = v109;
      *(&v117 + 1) = v33;
      v118 = v110._countAndFlagsBits;
      v119 = v83;
      v120 = v82;
      sub_100249BEC(&v117);

      (*v102)(v81, v104);
    }

    v28 = v106;
    goto LABEL_21;
  }

  sub_10024A1E0(&v121);
  if (qword_100374FC0 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  v84 = swift_allocObject();
  *(v84 + 16) = v100;
  *&v115 = v53;
  BYTE8(v115) = 0;
  sub_1001A551C(&qword_100378CD8, &unk_1002F4000);
  v85 = String.init<A>(describing:)();
  v87 = v86;
  *(v84 + 56) = &type metadata for String;
  *(v84 + 64) = sub_1001A76E8();
  *(v84 + 32) = v85;
  *(v84 + 40) = v87;
  os_log(_:dso:log:type:_:)();

LABEL_69:
}

uint64_t sub_100240B84(unint64_t a1, void *a2, uint64_t a3)
{
  v6 = _swiftEmptyArrayStorage;
  v333 = sub_1001FD020(_swiftEmptyArrayStorage);
  if (qword_100374FC0 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v7 = swift_allocObject();
  v334 = xmmword_1002EED40;
  *(v7 + 16) = xmmword_1002EED40;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_1001A76E8();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  os_log(_:dso:log:type:_:)();

  if ((a1 != 0x413646344333 || a2 != 0xE600000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v14 = a3;
    if (a1 == 0x463230354333 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v356 = _swiftEmptyArrayStorage;
      v47 = a3 + 64;
      v48 = 1 << *(a3 + 32);
      v49 = -1;
      if (v48 < 64)
      {
        v49 = ~(-1 << v48);
      }

      v50 = v49 & *(a3 + 64);
      a2 = ((v48 + 63) >> 6);

      a1 = 0;
      v14 = &qword_1002F2380;
      v15 = &v346;
      if (v50)
      {
        goto LABEL_59;
      }

LABEL_60:
      if (a2 <= (a1 + 1))
      {
        v52 = (a1 + 1);
      }

      else
      {
        v52 = a2;
      }

      v53 = v52 - 1;
      while (1)
      {
        v51 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          break;
        }

        if (v51 >= a2)
        {
          v50 = 0;
          v350 = 0;
          v348 = 0u;
          v349 = 0u;
          v347 = 0u;
          a1 = v53;
          v346 = 0u;
          goto LABEL_69;
        }

        v50 = *(v47 + 8 * v51);
        ++a1;
        if (v50)
        {
          a1 = v51;
          while (2)
          {
            v54 = __clz(__rbit64(v50));
            v50 &= v50 - 1;
            v55 = v54 | (v51 << 6);
            sub_100201580(*(a3 + 48) + 40 * v55, &v338);
            sub_1001A773C(*(a3 + 56) + 32 * v55, &v343);
            v346 = v338;
            v347 = v339;
            *&v348 = v340;
            sub_100201570(&v343, (&v348 + 8));
LABEL_69:
            v353 = v348;
            v354 = v349;
            v355 = v350;
            v351 = v346;
            v352 = v347;
            if (*(&v347 + 1))
            {
              v346 = v351;
              v347 = v352;
              *&v348 = v353;
              sub_100201570((&v353 + 8), &v338);
              sub_1001A551C(&qword_100377200, &qword_1002F23A8);
              v56 = swift_allocObject();
              *(v56 + 16) = xmmword_1002EED40;
              *(v56 + 32) = AnyHashable.description.getter();
              *(v56 + 40) = v57;
              sub_1001A773C(&v338, v56 + 48);
              v3 = sub_1001FD444(v56);
              swift_setDeallocating();
              sub_1001AC99C(v56 + 32, &qword_100379B70, &qword_1002F2380);
              swift_deallocClassInstance();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = sub_100225470(0, *(v6 + 16) + 1, 1, v6);
              }

              v59 = *(v6 + 16);
              v58 = *(v6 + 24);
              if (v59 >= v58 >> 1)
              {
                v6 = sub_100225470((v58 > 1), v59 + 1, 1, v6);
              }

              sub_1001A5654(&v338);
              sub_1002015DC(&v346);
              *(v6 + 16) = v59 + 1;
              *(v6 + 8 * v59 + 32) = v3;
              v356 = v6;
              v15 = &v346;
              if (!v50)
              {
                goto LABEL_60;
              }

LABEL_59:
              v51 = a1;
              continue;
            }

            break;
          }

          v76 = 1 << *(a3 + 32);
          v77 = -1;
          if (v76 < 64)
          {
            v77 = ~(-1 << v76);
          }

          v78 = v77 & *(a3 + 64);
          v79 = (v76 + 63) >> 6;

          v80 = 0;
          object = _swiftEmptyArrayStorage;
          v14 = &type metadata for String;
          while (v78)
          {
LABEL_102:
            v82 = __clz(__rbit64(v78));
            v78 &= v78 - 1;
            v83 = v82 | (v80 << 6);
            sub_100201580(*(a3 + 48) + 40 * v83, &v351);
            sub_1001A773C(*(a3 + 56) + 32 * v83, &v353 + 8);
            sub_1001AC934(&v351, &v338, &qword_1003771E8, &qword_1002F2390);
            if (swift_dynamicCast())
            {
              v85 = *(&v343 + 1);
              v84 = v343;
              sub_1001A5654(&v340 + 1);
              v338 = __PAIR128__(v85, v84);
              *&v343 = 1886548850;
              *(&v343 + 1) = 0xE400000000000000;
              sub_1001A56A0();
              LOBYTE(v84) = StringProtocol.contains<A>(_:)();

              if (v84)
              {
                v347 = v352;
                v348 = v353;
                v349 = v354;
                v350 = v355;
                v346 = v351;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  object = sub_100225320(0, object[2] + 1, 1, object);
                }

                v87 = object[2];
                v86 = object[3];
                if (v87 >= v86 >> 1)
                {
                  object = sub_100225320((v86 > 1), v87 + 1, 1, object);
                }

                object[2] = v87 + 1;
                v88 = &object[9 * v87];
                *(v88 + 2) = v346;
                v15 = &v346;
                v89 = v347;
                v90 = v348;
                v91 = v349;
                v88[12] = v350;
                *(v88 + 4) = v90;
                *(v88 + 5) = v91;
                *(v88 + 3) = v89;
              }

              else
              {
                sub_1001AC99C(&v351, &qword_1003771E8, &qword_1002F2390);
                v15 = &v346;
              }
            }

            else
            {
              sub_1001AC99C(&v351, &qword_1003771E8, &qword_1002F2390);
              sub_1001A5654(&v340 + 1);
              v15 = &v346;
            }
          }

          while (1)
          {
            v81 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              break;
            }

            if (v81 >= v79)
            {
              v14 = a3;

              *&v351 = object;

              sub_100247FE4(&v351);

              v70 = v351;
              if (sub_1002050BC(v351))
              {
                v72 = *(v70 + 2);
                if (v72)
                {
                  sub_1001AC934((v70 + 2), &v351, &qword_1003771E8, &qword_1002F2390);

                  goto LABEL_138;
                }

                __break(1u);
LABEL_402:
                __break(1u);
LABEL_403:
                __break(1u);
LABEL_404:
                v6 = sub_100225470((v72 > 1), v70, 1, v6);
                v356 = v6;
                goto LABEL_126;
              }

LABEL_137:

              v355 = 0;
              v353 = 0u;
              v354 = 0u;
              v351 = 0u;
              v352 = 0u;
LABEL_138:
              sub_1001AC934(&v351, &v338, &unk_100378CC0, &qword_1002F3FF8);
              if (*(&v339 + 1))
              {
                v347 = v339;
                v348 = v340;
                v349 = v341;
                v350 = v342;
                v346 = v338;
                sub_1001AC934(&v346, &v338, &qword_1003771E8, &qword_1002F2390);
                if (swift_dynamicCast())
                {
                  v111 = v343;
                  sub_1002015DC(&v338);
                  sub_1001A551C(&qword_100377200, &qword_1002F23A8);
                  v112 = swift_allocObject();
                  *(v112 + 16) = xmmword_1002EED40;
                  *(v112 + 32) = 0xD000000000000011;
                  *(v112 + 40) = 0x80000001002B96E0;
                  *(v112 + 72) = &type metadata for Int;
                  *(v112 + 48) = v111;
                  v113 = sub_1001FD444(v112);

                  sub_100248050();
                  v6 = v356;
                  v115 = v356[2];
                  v114 = v356[3];
                  if (v115 >= v114 >> 1)
                  {
                    v6 = sub_100225470((v114 > 1), v115 + 1, 1, v356);
                    v356 = v6;
                  }

                  sub_1001AC99C(&v346, &qword_1003771E8, &qword_1002F2390);
                  *(v6 + 16) = v115 + 1;
                  *(v6 + 8 * v115 + 32) = v113;
                }

                else
                {
                  sub_1001AC99C(&v346, &qword_1003771E8, &qword_1002F2390);
                  sub_1002015DC(&v338);
                }
              }

              else
              {
                sub_1001AC99C(&v338, &unk_100378CC0, &qword_1002F3FF8);
              }

              sub_1001AC934(&v351, &v338, &unk_100378CC0, &qword_1002F3FF8);
              if (!*(&v339 + 1))
              {
                v135 = &unk_100378CC0;
                v136 = &qword_1002F3FF8;
                v137 = &v338;
                goto LABEL_195;
              }

              v347 = v339;
              v348 = v340;
              v349 = v341;
              v350 = v342;
              v346 = v338;
              sub_1001AC934(&v346, &v338, &qword_1003771E8, &qword_1002F2390);
              if (swift_dynamicCast())
              {
                v131 = sub_10023F91C(v343, *(&v343 + 1));
                v133 = v132;

                sub_1001A5654(&v340 + 1);
                if (v133)
                {
                  sub_1001E248C(v131, v133);
                  if (v134)
                  {
LABEL_187:
                    v135 = &qword_1003771E8;
                    v136 = &qword_1002F2390;
                    v137 = &v346;
                    goto LABEL_195;
                  }

LABEL_183:
                  *&v338 = 1903326066;
                  *(&v338 + 1) = 0xE400000000000000;
                  v139._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                  String.append(_:)(v139);

                  v337 = v338;
                  AnyHashable.init<A>(_:)();
                  sub_1001E23CC(&v338, v14, &v343);
                  sub_1002015DC(&v338);
                  if (v345)
                  {
                    if ((swift_dynamicCast() & 1) == 0)
                    {
                      goto LABEL_187;
                    }

                    v140 = v337;
                    sub_1001A551C(&qword_100377200, &qword_1002F23A8);
                    v141 = swift_allocObject();
                    *(v141 + 16) = xmmword_1002EED40;
                    *(v141 + 32) = 0xD000000000000011;
                    *(v141 + 40) = 0x80000001002B9700;
                    *(v141 + 72) = &type metadata for Int;
                    *(v141 + 48) = v140;
                    v142 = sub_1001FD444(v141);

                    sub_100248050();
                    v6 = v356;
                    v144 = v356[2];
                    v143 = v356[3];
                    v3 = (v144 + 1);
                    if (v144 < v143 >> 1)
                    {
LABEL_186:
                      sub_1001AC99C(&v346, &qword_1003771E8, &qword_1002F2390);
                      *(v6 + 16) = v3;
                      *(v6 + 8 * v144 + 32) = v142;
                      goto LABEL_196;
                    }

LABEL_458:
                    v6 = sub_100225470((v143 > 1), v3, 1, v6);
                    v356 = v6;
                    goto LABEL_186;
                  }

                  sub_1001AC99C(&v346, &qword_1003771E8, &qword_1002F2390);
                  v135 = &qword_100375D68;
                  v136 = &unk_1002F2370;
                  v137 = &v343;
LABEL_195:
                  sub_1001AC99C(v137, v135, v136);
LABEL_196:
                  sub_1001AC934(&v351, &v338, &unk_100378CC0, &qword_1002F3FF8);
                  if (*(&v339 + 1))
                  {
                    v153 = v340;
                    v154 = v341;
                    v155 = v338;
                    v15[1] = v339;
                    v15[2] = v153;
                    v15[3] = v154;
                    v350 = v342;
                    v346 = v155;
                    sub_1001AC934(&v346, &v338, &qword_1003771E8, &qword_1002F2390);
                    if (swift_dynamicCast())
                    {
                      v156 = sub_10023F91C(v343, *(&v343 + 1));
                      v158 = v157;

                      sub_1001A5654(&v340 + 1);
                      if (v158)
                      {
                        v159 = sub_1001E248C(v156, v158);
                        if (v160)
                        {
                          goto LABEL_217;
                        }

                        goto LABEL_212;
                      }
                    }

                    else
                    {
                      sub_1001A5654(&v340 + 1);
                    }

                    v159 = sub_1001E248C(48, 0xE100000000000000);
                    if (v168)
                    {
                      goto LABEL_217;
                    }

LABEL_212:
                    *&v338 = 1919838579;
                    *(&v338 + 1) = 0xE400000000000000;
                    *&v337 = v159;
                    v169._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                    String.append(_:)(v169);

                    v337 = v338;
                    AnyHashable.init<A>(_:)();
                    sub_1001E23CC(&v338, v14, &v343);
                    sub_1002015DC(&v338);
                    if (v345)
                    {
                      if (swift_dynamicCast())
                      {
                        v170 = v337;
                        sub_1001A551C(&qword_100377200, &qword_1002F23A8);
                        v171 = swift_allocObject();
                        *(v171 + 16) = v334;
                        *(v171 + 32) = 0xD000000000000010;
                        *(v171 + 40) = 0x80000001002B9720;
                        *(v171 + 72) = &type metadata for Int;
                        *(v171 + 48) = v170;
                        v105 = sub_1001FD444(v171);

                        sub_100248050();
                        v6 = v356;
                        v107 = v356[2];
                        v172 = v356[3];
                        v108 = v107 + 1;
                        if (v107 >= v172 >> 1)
                        {
                          v6 = sub_100225470((v172 > 1), v107 + 1, 1, v356);
                          v356 = v6;
                        }

                        sub_1001AC99C(&v346, &qword_1003771E8, &qword_1002F2390);
                        goto LABEL_134;
                      }

LABEL_217:
                      v109 = &qword_1003771E8;
                      v110 = &qword_1002F2390;
                      v161 = &v346;
                    }

                    else
                    {
                      sub_1001AC99C(&v346, &qword_1003771E8, &qword_1002F2390);
                      v109 = &qword_100375D68;
                      v110 = &unk_1002F2370;
                      v161 = &v343;
                    }

LABEL_203:
                    sub_1001AC99C(v161, v109, v110);
                    goto LABEL_204;
                  }

                  v109 = &unk_100378CC0;
                  v110 = &qword_1002F3FF8;
LABEL_202:
                  v161 = &v338;
                  goto LABEL_203;
                }
              }

              else
              {
                sub_1001A5654(&v340 + 1);
              }

              sub_1001E248C(48, 0xE100000000000000);
              if (v138)
              {
                goto LABEL_187;
              }

              goto LABEL_183;
            }

            v78 = *(v47 + 8 * v81);
            ++v80;
            if (v78)
            {
              v80 = v81;
              goto LABEL_102;
            }
          }

          __break(1u);
LABEL_294:
          sub_1001AC99C(&v346, &qword_100375D68, &unk_1002F2370);

          goto LABEL_233;
        }
      }

      __break(1u);
LABEL_220:
      if (a1 == 0x443035444333 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        *&v338 = 0x635F726572616562;
        *(&v338 + 1) = 0xEF73747865746E6FLL;
        AnyHashable.init<A>(_:)();
        sub_1001E23CC(&v351, v14, &v346);
        sub_1002015DC(&v351);
        if (!*(&v347 + 1))
        {
LABEL_232:
          sub_1001AC99C(&v346, &qword_100375D68, &unk_1002F2370);
          goto LABEL_233;
        }

        sub_1001A551C(&unk_100378CB0, &qword_1002F3FF0);
        v152 = v333;
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_205;
        }

        v70 = v338;
        sub_1001A551C(&qword_100377130, &qword_1002F22F0);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_1002EED40;
        *(v6 + 32) = sub_1001FD444(_swiftEmptyArrayStorage);
        v173 = *(v70 + 2);
        if (v173)
        {
          v174 = 0;
          do
          {
            v175 = v174 + 1;
            v176 = *(v70 + v174 + 4);
            v177 = *(v6 + 24);

            if (v174 + 1 >= v177 >> 1)
            {
              v6 = sub_100225470((v177 > 1), v174 + 2, 1, v6);
            }

            *(v6 + 16) = v174 + 2;
            *(v6 + 8 * v174++ + 40) = v176;
          }

          while (v173 != v175);
        }

        *&v351 = _swiftEmptyArrayStorage;
        v191 = sub_1002050BC(v6);
        v14 = a3;
        object = v333;
        if (v191)
        {
          v192 = v191;
          v72 = 0;
          v47 = v6 + 32;
          while (v72 < *(v6 + 16))
          {
            v193 = v72 + 1;
            v194 = *(v47 + 8 * v72);

            v70 = &v351;
            sub_1001E3308(v195);
            v72 = v193;
            if (v192 == v193)
            {
              goto LABEL_192;
            }
          }

          goto LABEL_402;
        }

        goto LABEL_192;
      }

LABEL_235:
      if (a1 == 0x333133444333 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_1001A551C(&qword_100377130, &qword_1002F22F0);
        v178 = swift_allocObject();
        *(v178 + 16) = xmmword_1002EED40;
        *(v178 + 32) = sub_1001FD444(_swiftEmptyArrayStorage);
        *&v337 = v178;
        *&v338 = 0x7473696C5F636373;
        *(&v338 + 1) = 0xE800000000000000;
        AnyHashable.init<A>(_:)();
        sub_1001E23CC(&v351, v14, &v346);
        sub_1002015DC(&v351);
        if (!*(&v347 + 1))
        {
          goto LABEL_294;
        }

        sub_1001A551C(&unk_100378CB0, &qword_1002F3FF0);
        v6 = &type metadata for Any;
        v152 = v333;
        if ((swift_dynamicCast() & 1) == 0)
        {

          goto LABEL_205;
        }

        *&v334 = v178;
        v179 = v338;
        v330 = *(v338 + 16);
        if (v330)
        {
          v142 = 0;
          v329 = OBJC_IVAR____TtC11FTMInternal13MetricService_dlbwlookup;
          v180 = &type metadata for Int;
          a2 = &type metadata for Float;
          v144 = 32;
          v331 = v3;
          do
          {
            *&v346 = 0x6D617473656D6974;
            *(&v346 + 1) = 0xE900000000000070;
            AnyHashable.init<A>(_:)();
            sub_1001E23CC(&v351, v14, &v338);
            sub_1002015DC(&v351);
            if (*(&v339 + 1))
            {
              sub_100201570(&v338, &v346);
              sub_1001A773C(&v346, &v351);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v179 = sub_1001FA758(v179);
              }

              if (v142 >= *(v179 + 2))
              {
                __break(1u);
LABEL_460:

                sub_1001AC99C(&v346, &qword_100375D68, &unk_1002F2370);
LABEL_473:
                v14 = a3;
LABEL_233:
                v152 = v333;
                goto LABEL_205;
              }

              sub_1001E2C58(&v351, 0x6D617473656D6974, 0xE900000000000070);
              sub_1001A5654(&v346);
              v3 = v331;
            }

            else
            {
              sub_1001AC99C(&v338, &qword_100375D68, &unk_1002F2370);
            }

            v143 = *(v179 + 2);
            if (v142 >= v143)
            {
              goto LABEL_453;
            }

            v181 = *(v179 + v144);

            sub_1001E2368(1886548850, 0xE400000000000000, v181, &v351);

            if (*(&v352 + 1))
            {
              if (swift_dynamicCast())
              {
                *(&v352 + 1) = v180;
                *&v351 = v346 / 100;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v179 = sub_1001FA758(v179);
                }

                if (v142 >= *(v179 + 2))
                {
                  __break(1u);
LABEL_476:
                  __break(1u);
LABEL_477:
                  __break(1u);
LABEL_478:
                  __break(1u);
LABEL_479:
                  __break(1u);
LABEL_480:
                  __break(1u);
LABEL_481:
                  __break(1u);
LABEL_482:
                  sub_1001AC99C(&v346, &qword_100375D68, &unk_1002F2370);
                  goto LABEL_495;
                }

                sub_1001E2C58(&v351, 1886548850, 0xE400000000000000);
                v3 = v331;
              }
            }

            else
            {
              sub_1001AC99C(&v351, &qword_100375D68, &unk_1002F2370);
            }

            v143 = *(v179 + 2);
            if (v142 >= v143)
            {
              goto LABEL_454;
            }

            v182 = *(v179 + v144);

            sub_1001E2368(1903326066, 0xE400000000000000, v182, &v351);

            if (*(&v352 + 1))
            {
              if (swift_dynamicCast())
              {
                *(&v352 + 1) = &type metadata for Float;
                *&v351 = *&v346 / 100.0;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v179 = sub_1001FA758(v179);
                }

                if (v142 >= *(v179 + 2))
                {
                  goto LABEL_476;
                }

                sub_1001E2C58(&v351, 1903326066, 0xE400000000000000);
                v3 = v331;
              }
            }

            else
            {
              sub_1001AC99C(&v351, &qword_100375D68, &unk_1002F2370);
            }

            v143 = *(v179 + 2);
            if (v142 >= v143)
            {
              goto LABEL_455;
            }

            v183 = *(v179 + v144);

            sub_1001E2368(1769173874, 0xE400000000000000, v183, &v351);

            if (*(&v352 + 1))
            {
              if (swift_dynamicCast())
              {
                *(&v352 + 1) = v180;
                *&v351 = v346 / 100;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v179 = sub_1001FA758(v179);
                }

                if (v142 >= *(v179 + 2))
                {
                  goto LABEL_477;
                }

                sub_1001E2C58(&v351, 1769173874, 0xE400000000000000);
                v3 = v331;
              }
            }

            else
            {
              sub_1001AC99C(&v351, &qword_100375D68, &unk_1002F2370);
            }

            v143 = *(v179 + 2);
            if (v142 >= v143)
            {
              goto LABEL_456;
            }

            v184 = *(v179 + v144);

            sub_1001E2368(0x77646E61625F6C64, 0xEC00000068746469, v184, &v351);

            if (*(&v352 + 1))
            {
              if (swift_dynamicCast())
              {
                v185 = sub_1001E2430(v346, *(v3 + v329));
                if ((v185 & 0x100000000) != 0)
                {
                  v351 = 0u;
                  v352 = 0u;
                }

                else
                {
                  *(&v352 + 1) = &type metadata for Float;
                  LODWORD(v351) = v185;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v179 = sub_1001FA758(v179);
                }

                if (v142 >= *(v179 + 2))
                {
                  goto LABEL_478;
                }

                sub_1001E2C58(&v351, 0x77646E61625F6C64, 0xEC00000068746469);
                v3 = v331;
              }
            }

            else
            {
              sub_1001AC99C(&v351, &qword_100375D68, &unk_1002F2370);
            }

            v143 = *(v179 + 2);
            if (v142 >= v143)
            {
              goto LABEL_457;
            }

            v186 = v180;
            v187 = v6;
            v15 = v179;
            v188 = *(v179 + v144);
            v189 = *(v334 + 16);
            v190 = *(v334 + 24);

            if (v189 >= v190 >> 1)
            {
              *&v334 = sub_100225470((v190 > 1), v189 + 1, 1, v334);
            }

            ++v142;
            *(v334 + 16) = v189 + 1;
            *(v334 + 8 * v189 + 32) = v188;
            *&v337 = v334;
            v144 += 8;
            v14 = a3;
            v179 = v15;
            v6 = v187;
            v180 = v186;
            a2 = &type metadata for Float;
          }

          while (v330 != v142);
        }

        v142 = sub_1002050BC(v334);

        if (v142)
        {
          v202 = 0;
          v144 = v334 + 32;
          while (1)
          {
            v143 = *(v334 + 16);
            if (v202 >= v143)
            {
              break;
            }

            if (!*(*(v144 + 8 * v202) + 16))
            {
              v3 = &v337;
              sub_10024A340(v202);
            }

            if (v142 == ++v202)
            {
              goto LABEL_313;
            }
          }

          __break(1u);
LABEL_453:
          __break(1u);
LABEL_454:
          __break(1u);
LABEL_455:
          __break(1u);
LABEL_456:
          __break(1u);
LABEL_457:
          __break(1u);
          goto LABEL_458;
        }

LABEL_313:

        v203 = v337;
        v344 = 0;
        v343 = v337;

        v204 = sub_10023F99C();
        if (v205)
        {
          a2 = v205;
          do
          {
            *&v334 = v204;
            v332 = v203;
            a1 = sub_1001FD444(_swiftEmptyArrayStorage);
            v206 = 0;
            v207 = 1 << *(a2 + 32);
            if (v207 < 64)
            {
              v208 = ~(-1 << v207);
            }

            else
            {
              v208 = -1;
            }

            v6 = v208 & a2[8];
            v209 = (v207 + 63) >> 6;
            if (v6)
            {
LABEL_319:
              v14 = v206;
LABEL_327:
              v212 = __clz(__rbit64(v6));
              v6 &= v6 - 1;
              v213 = v212 | (v14 << 6);
              v214 = (a2[6] + 16 * v213);
              v216 = *v214;
              v215 = v214[1];
              sub_1001A773C(a2[7] + 32 * v213, &v338);
              *&v346 = v216;
              *(&v346 + 1) = v215;
              sub_100201570(&v338, &v347);

              v211 = v14;
              goto LABEL_328;
            }

            while (1)
            {
              v210 = v209 <= v206 + 1 ? v206 + 1 : v209;
              v211 = v210 - 1;
              while (1)
              {
                v14 = v206 + 1;
                if (__OFADD__(v206, 1))
                {
                  goto LABEL_339;
                }

                if (v14 >= v209)
                {
                  break;
                }

                v6 = a2[v14 + 8];
                ++v206;
                if (v6)
                {
                  goto LABEL_327;
                }
              }

              v6 = 0;
              v347 = 0u;
              v348 = 0u;
              v346 = 0u;
LABEL_328:
              v351 = v346;
              v352 = v347;
              v353 = v348;
              v217 = *(&v346 + 1);
              if (!*(&v346 + 1))
              {
                break;
              }

              v218 = v351;
              sub_100201570(&v352, &v346);
              *&v338 = v334;
              *&v338 = dispatch thunk of CustomStringConvertible.description.getter();
              *(&v338 + 1) = v219;

              v220._countAndFlagsBits = 45;
              v220._object = 0xE100000000000000;
              String.append(_:)(v220);

              v221._countAndFlagsBits = 0x6E6F6974636573;
              v221._object = 0xE700000000000000;
              String.append(_:)(v221);

              v222._countAndFlagsBits = 45;
              v222._object = 0xE100000000000000;
              String.append(_:)(v222);

              v223._countAndFlagsBits = v218;
              v223._object = v217;
              String.append(_:)(v223);

              v224 = v338;
              sub_1001A773C(&v346, &v338);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v356 = a1;
              sub_1001F90B0(&v338, v224, *(&v224 + 1), isUniquelyReferenced_nonNull_native);

              sub_1001A5654(&v346);
              a1 = v356;
              v206 = v211;
              if (v6)
              {
                goto LABEL_319;
              }
            }

            v203 = v332;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v203 = sub_1001FA758(v332);
            }

            v14 = a3;
            if ((v334 & 0x8000000000000000) != 0)
            {
              goto LABEL_480;
            }

            if (v203[2] <= v334)
            {
              goto LABEL_481;
            }

            v226 = &v203[v334];
            v227 = v226[4];
            v226[4] = a1;

            v204 = sub_10023F99C();
            a2 = v228;
          }

          while (v228);
        }

        v229 = sub_10023FA18(v203);
        v230 = sub_100244BF8(v229);

        v231 = sub_100244D40(v230);

        v152 = sub_100244DE0(v231);

LABEL_193:

        goto LABEL_205;
      }

      if ((a1 != 0x423033444333 || a2 != 0xE600000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_340;
      }

      sub_1001A551C(&qword_100377130, &qword_1002F22F0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1002EED40;
      *(v6 + 32) = sub_1001FD444(_swiftEmptyArrayStorage);
      *&v343 = v6;
      strcpy(&v338, "carrier_info");
      BYTE13(v338) = 0;
      HIWORD(v338) = -5120;
      AnyHashable.init<A>(_:)();
      sub_1001E23CC(&v351, v14, &v346);
      sub_1002015DC(&v351);
      if (*(&v347 + 1))
      {
        sub_1001A551C(&unk_100378CB0, &qword_1002F3FF0);
        if (swift_dynamicCast())
        {
          v196 = v338;
          v197 = *(v338 + 16);
          if (v197)
          {
            sub_100248050();
            sub_100248050();
            v6 = v343;
            v198 = (v196 + 32);
            do
            {
              v199 = *v198;
              v200 = *(v6 + 16);
              v201 = *(v6 + 24);

              if (v200 >= v201 >> 1)
              {
                v6 = sub_100225470((v201 > 1), v200 + 1, 1, v6);
              }

              *(v6 + 16) = v200 + 1;
              *(v6 + 8 * v200 + 32) = v199;
              ++v198;
              --v197;
            }

            while (v197);
          }

          *&v351 = _swiftEmptyArrayStorage;
          v248 = sub_1002050BC(v6);
          v14 = a3;
          if (v248)
          {
            a2 = v248;
            v249 = 0;
            do
            {
              if (v249 >= *(v6 + 16))
              {
                goto LABEL_479;
              }

              v250 = (v249 + 1);
              v251 = *(v6 + 32 + 8 * v249);

              sub_1001E3308(v252);
              v249 = v250;
            }

            while (a2 != v250);
          }

LABEL_192:
          v150 = sub_100244BF8(v351);

          v151 = sub_100244D40(v150);

          v152 = sub_100244DE0(v151);
          goto LABEL_193;
        }

LABEL_367:

        goto LABEL_233;
      }

LABEL_366:
      sub_1001AC99C(&v346, &qword_100375D68, &unk_1002F2370);
      goto LABEL_367;
    }

    v15 = &v346;
    if ((a1 != 0x333630354333 || a2 != 0xE600000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_220;
    }

    v3 = 0xE900000000000070;
    v116 = 1 << *(a3 + 32);
    v117 = -1;
    if (v116 < 64)
    {
      v117 = ~(-1 << v116);
    }

    a1 = v117 & *(a3 + 64);
    a2 = ((v116 + 63) >> 6);

    v118 = 0;
    v14 = 0xE900000000000072;
    if (a1)
    {
LABEL_150:
      v119 = v118;
      goto LABEL_159;
    }

    while (2)
    {
      if (a2 <= v118 + 1)
      {
        v120 = (v118 + 1);
      }

      else
      {
        v120 = a2;
      }

      v121 = v120 - 1;
      do
      {
        v119 = v118 + 1;
        if (__OFADD__(v118, 1))
        {
          __break(1u);
          goto LABEL_235;
        }

        if (v119 >= a2)
        {
          a1 = 0;
          v350 = 0;
          v348 = 0u;
          v349 = 0u;
          v347 = 0u;
          v118 = v121;
          v346 = 0u;
          goto LABEL_160;
        }

        a1 = *(a3 + 64 + 8 * v119);
        ++v118;
      }

      while (!a1);
      v118 = v119;
LABEL_159:
      v122 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
      v123 = v122 | (v119 << 6);
      sub_100201580(*(a3 + 48) + 40 * v123, &v338);
      sub_1001A773C(*(a3 + 56) + 32 * v123, &v343);
      v346 = v338;
      v347 = v339;
      *&v348 = v340;
      sub_100201570(&v343, (&v348 + 8));
LABEL_160:
      v353 = v348;
      v354 = v349;
      v355 = v350;
      v351 = v346;
      v352 = v347;
      if (*(&v347 + 1))
      {
        v346 = v351;
        v347 = v352;
        *&v348 = v353;
        sub_100201570((&v353 + 8), &v338);
        if (AnyHashable.description.getter() == 1902473830 && v124 == 0xE400000000000000)
        {

          goto LABEL_165;
        }

        v125 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v125)
        {
LABEL_165:
          sub_1001A551C(&qword_100377200, &qword_1002F23A8);
          v126 = swift_allocObject();
          *(v126 + 16) = xmmword_1002EED40;
          *(v126 + 32) = 0x6E5F6E636672616ELL;
          v127 = v126 + 32;
          *(v126 + 40) = 0xE900000000000072;
        }

        else
        {
          sub_1001A551C(&qword_100377200, &qword_1002F23A8);
          v126 = swift_allocObject();
          *(v126 + 16) = xmmword_1002EED40;
          *(v126 + 32) = AnyHashable.description.getter();
          v127 = v126 + 32;
          *(v126 + 40) = v128;
        }

        sub_1001A773C(&v338, v126 + 48);
        v3 = sub_1001FD444(v126);
        swift_setDeallocating();
        sub_1001AC99C(v127, &qword_100379B70, &qword_1002F2380);
        swift_deallocClassInstance();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_100225470(0, *(v6 + 16) + 1, 1, v6);
        }

        v130 = *(v6 + 16);
        v129 = *(v6 + 24);
        v15 = &v346;
        if (v130 >= v129 >> 1)
        {
          v6 = sub_100225470((v129 > 1), v130 + 1, 1, v6);
        }

        sub_1001A5654(&v338);
        sub_1002015DC(&v346);
        *(v6 + 16) = v130 + 1;
        *(v6 + 8 * v130 + 32) = v3;
        if (a1)
        {
          goto LABEL_150;
        }

        continue;
      }

      break;
    }

    v14 = a3;

    *&v351 = _swiftEmptyArrayStorage;
    v145 = sub_1002050BC(v6);
    a1 = v333;
    if (!v145)
    {
      goto LABEL_192;
    }

    a2 = v145;
    v146 = 0;
    while (v146 < *(v6 + 16))
    {
      v147 = (v146 + 1);
      v148 = *(v6 + 32 + 8 * v146);

      sub_1001E3308(v149);
      v146 = v147;
      if (a2 == v147)
      {
        goto LABEL_192;
      }
    }

    __break(1u);
LABEL_339:
    __break(1u);
LABEL_340:
    if (a1 == 0x393030444333 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_1001A551C(&qword_100377130, &qword_1002F22F0);
      v232 = swift_allocObject();
      *(v232 + 16) = v334;
      *(v232 + 32) = sub_1001FD444(_swiftEmptyArrayStorage);
      strcpy(&v338, "gsm_ncell_meas");
      HIBYTE(v338) = -18;
      AnyHashable.init<A>(_:)();
      sub_1001E23CC(&v351, v14, &v346);
      sub_1002015DC(&v351);
      if (!*(&v347 + 1))
      {
        goto LABEL_366;
      }

      sub_1001A551C(&unk_100378CB0, &qword_1002F3FF0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_367;
      }

      v233 = v338;
      v234 = *(v338 + 16);
      if (v234)
      {
        v235 = 4;
        v236 = 32;
        while (1)
        {
          v237 = v235 - 4;
          if ((v235 - 4) >= v233[2])
          {
            __break(1u);
LABEL_501:
            __break(1u);
LABEL_502:
            __break(1u);
LABEL_503:
            __break(1u);
LABEL_504:
            sub_1001AC99C(&v346, &qword_100375D68, &unk_1002F2370);
            goto LABEL_472;
          }

          v238 = v233[v235];
          if (*(v238 + 16))
          {
            v239 = v233[v235];

            v240 = sub_1001F66B8(0x76656C7872, 0xE500000000000000);
            if ((v241 & 1) == 0)
            {
              goto LABEL_357;
            }

            sub_1001A773C(*(v238 + 56) + 32 * v240, &v351);

            if (swift_dynamicCast())
            {
              break;
            }
          }

LABEL_358:
          if (v237 >= v233[2])
          {
            goto LABEL_501;
          }

          v245 = v233[v235];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v232 = sub_100225470(0, *(v232 + 16) + 1, 1, v232);
          }

          v247 = *(v232 + 16);
          v246 = *(v232 + 24);
          if (v247 >= v246 >> 1)
          {
            v232 = sub_100225470((v246 > 1), v247 + 1, 1, v232);
          }

          *(v232 + 16) = v247 + 1;
          *(v232 + 8 * v247 + 32) = v245;
          ++v235;
          v236 += 8;
          if (!--v234)
          {
            goto LABEL_395;
          }
        }

        if (__OFSUB__(v346, 110))
        {
          goto LABEL_509;
        }

        *(&v352 + 1) = &type metadata for Int;
        *&v351 = v346 - 110;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v233 = sub_1001FA758(v233);
        }

        if (v237 >= v233[2])
        {
          goto LABEL_510;
        }

        if (!*(&v352 + 1))
        {
          sub_1001AC99C(&v351, &qword_100375D68, &unk_1002F2370);
          sub_1001F6A48(0x76656C7872, 0xE500000000000000, &v346);
          sub_1001AC99C(&v346, &qword_100375D68, &unk_1002F2370);
          goto LABEL_358;
        }

        sub_100201570(&v351, &v346);
        v242 = v233[v235];
        v243 = swift_isUniquelyReferenced_nonNull_native();
        *&v338 = v233[v235];
        v233[v235] = 0x8000000000000000;
        sub_1001F90B0(&v346, 0x76656C7872, 0xE500000000000000, v243);
        v244 = v233[v235];
        v233[v235] = v338;
LABEL_357:

        goto LABEL_358;
      }

LABEL_395:
      *&v351 = _swiftEmptyArrayStorage;
      v266 = sub_1002050BC(v232);
      if (v266)
      {
        v267 = v266;
        v268 = 0;
        while (v268 < *(v232 + 16))
        {
          v269 = v268 + 1;
          v270 = *(v232 + 32 + 8 * v268);

          sub_1001E3308(v271);
          v268 = v269;
          if (v267 == v269)
          {
            goto LABEL_399;
          }
        }

        goto LABEL_502;
      }

LABEL_399:
      v272 = sub_100244BF8(v351);

      v273 = sub_100244D40(v272);

      goto LABEL_400;
    }

    if (a1 == 0x323031444333 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_1001A551C(&qword_100377130, &qword_1002F22F0);
      v253 = swift_allocObject();
      *(v253 + 16) = v334;
      *(v253 + 32) = sub_1001FD444(_swiftEmptyArrayStorage);
      *&v338 = 0x6F666E695F7872;
      *(&v338 + 1) = 0xE700000000000000;
      AnyHashable.init<A>(_:)();
      sub_1001E23CC(&v351, a3, &v346);
      sub_1002015DC(&v351);
      if (*(&v347 + 1))
      {
        sub_1001A551C(&unk_100378CB0, &qword_1002F3FF0);
        if (swift_dynamicCast())
        {
          v335 = *(v338 + 16);
          if (v335)
          {
            v254 = 0;
            v255 = v338 + 32;
            v256 = *(v338 + 16);
            while (1)
            {
              v257 = *(v255 + 8 * v254);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v253 = sub_100225470(0, *(v253 + 16) + 1, 1, v253);
              }

              v259 = *(v253 + 16);
              v258 = *(v253 + 24);
              if (v259 >= v258 >> 1)
              {
                v253 = sub_100225470((v258 > 1), v259 + 1, 1, v253);
              }

              *(v253 + 16) = v259 + 1;
              *(v253 + 32 + 8 * v259) = v257;
              strcpy(&v346, "connected_mode");
              HIBYTE(v346) = -18;
              AnyHashable.init<A>(_:)();
              if (*(a3 + 16) && (v260 = sub_1001F6774(&v351), (v261 & 1) != 0))
              {
                sub_1001A773C(*(a3 + 56) + 32 * v260, &v346);
                sub_1002015DC(&v351);
              }

              else
              {
                sub_1002015DC(&v351);
                v346 = 0u;
                v347 = 0u;
              }

              if (v254 >= *(v253 + 16))
              {
                break;
              }

              v262 = (v253 + 32 + 8 * v254);
              if (*(&v347 + 1))
              {
                sub_100201570(&v346, &v338);
                v263 = *v262;
                v264 = swift_isUniquelyReferenced_nonNull_native();
                *&v343 = *v262;
                *v262 = 0x8000000000000000;
                sub_1001F90B0(&v338, 0x657463656E6E6F63, 0xEE0065646F6D5F64, v264);
                v265 = *v262;
                *v262 = v343;
              }

              else
              {
                sub_1001AC99C(&v346, &qword_100375D68, &unk_1002F2370);
                sub_1001F6A48(0x657463656E6E6F63, 0xEE0065646F6D5F64, &v338);
                v256 = v335;
                sub_1001AC99C(&v338, &qword_100375D68, &unk_1002F2370);
              }

              if (++v254 == v256)
              {
                goto LABEL_445;
              }
            }

            __break(1u);
LABEL_509:
            __break(1u);
LABEL_510:
            __break(1u);
LABEL_511:
            __break(1u);
LABEL_512:
            __break(1u);
LABEL_513:
            __break(1u);
            goto LABEL_514;
          }

LABEL_445:
        }
      }

      else
      {
        sub_1001AC99C(&v346, &qword_100375D68, &unk_1002F2370);
      }

      *&v351 = _swiftEmptyArrayStorage;
      v297 = sub_1002050BC(v253);
      if (v297)
      {
        v298 = v297;
        v299 = 0;
        do
        {
          if (v299 >= *(v253 + 16))
          {
            goto LABEL_503;
          }

          v300 = v299 + 1;
          v301 = *(v253 + 32 + 8 * v299);

          sub_1001E3308(v302);
          v299 = v300;
        }

        while (v298 != v300);
      }

      goto LABEL_450;
    }

    if ((a1 != 0x353031444333 || a2 != 0xE600000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if ((a1 != 0x333130304333 || a2 != 0xE600000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        if ((a1 != 0x323033444333 || a2 != 0xE600000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return v333;
        }

        sub_1001A551C(&qword_100377130, &qword_1002F22F0);
        v313 = swift_allocObject();
        *(v313 + 16) = v334;
        *(v313 + 32) = sub_1001FD444(_swiftEmptyArrayStorage);
        *&v343 = v313;
        strcpy(&v338, "tx_power_info");
        HIWORD(v338) = -4864;
        AnyHashable.init<A>(_:)();
        sub_1001E23CC(&v351, a3, &v346);
        sub_1002015DC(&v351);
        if (!*(&v347 + 1))
        {
          goto LABEL_504;
        }

        sub_1001A551C(&unk_100378CB0, &qword_1002F3FF0);
        if (swift_dynamicCast())
        {
          v314 = v338;
          v315 = *(v338 + 16);
          if (v315)
          {
            sub_100248050();
            sub_100248050();
            v313 = v343;
            v316 = (v314 + 32);
            do
            {
              v317 = *v316;
              v318 = *(v313 + 16);
              v319 = *(v313 + 24);

              if (v318 >= v319 >> 1)
              {
                v313 = sub_100225470((v319 > 1), v318 + 1, 1, v313);
              }

              *(v313 + 16) = v318 + 1;
              *(v313 + 8 * v318 + 32) = v317;
              ++v316;
              --v315;
            }

            while (v315);
          }

          v326 = sub_10023FA18(v313);
          v327 = sub_100244BF8(v326);

          v328 = sub_100244D40(v327);

          v333 = sub_100244DE0(v328);
        }

LABEL_472:

        goto LABEL_473;
      }

      sub_1001A551C(&qword_100377130, &qword_1002F22F0);
      v6 = swift_allocObject();
      *(v6 + 16) = v334;
      a2 = _swiftEmptyArrayStorage;
      *(v6 + 32) = sub_1001FD444(_swiftEmptyArrayStorage);
      *&v343 = v6;
      *&v338 = 26213;
      *(&v338 + 1) = 0xE200000000000000;
      AnyHashable.init<A>(_:)();
      sub_1001E23CC(&v351, a3, &v346);
      sub_1002015DC(&v351);
      if (!*(&v347 + 1))
      {
        goto LABEL_482;
      }

      sub_1001A551C(&unk_100378CB0, &qword_1002F3FF0);
      if (swift_dynamicCast())
      {
        v305 = v338;
        v306 = *(v338 + 16);
        if (v306)
        {
          sub_100248050();
          sub_100248050();
          v307 = 32;
          v6 = v343;
          do
          {
            v308 = *(v305 + v307);
            v309 = *(v6 + 16);
            v310 = *(v6 + 24);

            if (v309 >= v310 >> 1)
            {
              v6 = sub_100225470((v310 > 1), v309 + 1, 1, v6);
            }

            *(v6 + 16) = v309 + 1;
            *(v6 + 8 * v309 + 32) = v308;
            v307 += 8;
            --v306;
          }

          while (v306);
        }
      }

LABEL_495:
      *&v351 = a2;
      v320 = sub_1002050BC(v6);
      if (v320)
      {
        v321 = v320;
        v322 = 0;
        while (v322 < *(v6 + 16))
        {
          v323 = v322 + 1;
          v324 = *(v6 + 32 + 8 * v322);

          sub_1001E3308(v325);
          v322 = v323;
          if (v321 == v323)
          {
            goto LABEL_450;
          }
        }

LABEL_514:
        __break(1u);
LABEL_515:
        __break(1u);
LABEL_516:
        __break(1u);
LABEL_517:
        __break(1u);

        __break(1u);
        return result;
      }

LABEL_450:
      v303 = sub_100244BF8(v351);

      v304 = sub_100244D40(v303);

      v152 = sub_100244DE0(v304);
      goto LABEL_451;
    }

    sub_1001A551C(&qword_100377130, &qword_1002F22F0);
    v274 = swift_allocObject();
    *(v274 + 16) = v334;
    *(v274 + 32) = sub_1001FD444(_swiftEmptyArrayStorage);
    *&v338 = 0xD000000000000010;
    *(&v338 + 1) = 0x80000001002BE450;
    AnyHashable.init<A>(_:)();
    sub_1001E23CC(&v351, a3, &v346);
    sub_1002015DC(&v351);
    if (!*(&v347 + 1))
    {
      goto LABEL_460;
    }

    sub_1001A551C(&unk_100378CB0, &qword_1002F3FF0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_472;
    }

    v275 = v338;
    v276 = *(v338 + 16);
    if (!v276)
    {
LABEL_474:
      v311 = sub_10023FA18(v274);

      v312 = sub_100244BF8(v311);

      v273 = sub_100244D40(v312);
LABEL_400:

      v152 = sub_100244DE0(v273);

LABEL_451:

      v14 = a3;
      goto LABEL_205;
    }

    v277 = 0;
    while (1)
    {
      if (v277 >= v275[2])
      {
        goto LABEL_511;
      }

      v278 = v275[v277 + 4];
      if (*(v278 + 16))
      {
        v279 = v275[v277 + 4];

        v280 = sub_1001F66B8(1885565810, 0xE400000000000000);
        if ((v281 & 1) == 0)
        {
          goto LABEL_425;
        }

        sub_1001A773C(*(v278 + 56) + 32 * v280, &v351);

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_426;
        }

        if (__OFSUB__(v346, 116))
        {
          goto LABEL_515;
        }

        *(&v352 + 1) = &type metadata for Int;
        *&v351 = v346 - 116;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v275 = sub_1001FA758(v275);
        }

        if (v277 >= v275[2])
        {
          goto LABEL_516;
        }

        v282 = &v275[v277];
        if (*(&v352 + 1))
        {
          sub_100201570(&v351, &v346);
          v283 = v282[4];
          v284 = swift_isUniquelyReferenced_nonNull_native();
          *&v338 = v282[4];
          v282[4] = 0x8000000000000000;
          sub_1001F90B0(&v346, 1885565810, 0xE400000000000000, v284);
          v285 = v282[4];
          v282[4] = v338;
LABEL_425:

          goto LABEL_426;
        }

        sub_1001AC99C(&v351, &qword_100375D68, &unk_1002F2370);
        sub_1001F6A48(1885565810, 0xE400000000000000, &v346);
        sub_1001AC99C(&v346, &qword_100375D68, &unk_1002F2370);
      }

LABEL_426:
      if (v277 >= v275[2])
      {
        goto LABEL_512;
      }

      v286 = v275[v277 + 4];
      if (!*(v286 + 16))
      {
        goto LABEL_436;
      }

      v287 = v275[v277 + 4];

      v288 = sub_1001F66B8(1869505381, 0xE400000000000000);
      if ((v289 & 1) == 0)
      {
        goto LABEL_435;
      }

      sub_1001A773C(*(v286 + 56) + 32 * v288, &v351);

      if (swift_dynamicCast())
      {
        *(&v352 + 1) = &type metadata for Float;
        *&v351 = (*&v346 * 0.5) + -24.5;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v275 = sub_1001FA758(v275);
        }

        if (v277 >= v275[2])
        {
          goto LABEL_517;
        }

        v290 = &v275[v277];
        if (!*(&v352 + 1))
        {
          sub_1001AC99C(&v351, &qword_100375D68, &unk_1002F2370);
          sub_1001F6A48(1869505381, 0xE400000000000000, &v346);
          sub_1001AC99C(&v346, &qword_100375D68, &unk_1002F2370);
          goto LABEL_436;
        }

        sub_100201570(&v351, &v346);
        v291 = v290[4];
        v292 = swift_isUniquelyReferenced_nonNull_native();
        *&v338 = v290[4];
        v290[4] = 0x8000000000000000;
        sub_1001F90B0(&v346, 1869505381, 0xE400000000000000, v292);
        v293 = v290[4];
        v290[4] = v338;
LABEL_435:
      }

LABEL_436:
      if (v277 >= v275[2])
      {
        goto LABEL_513;
      }

      v294 = v275[v277 + 4];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v274 = sub_100225470(0, *(v274 + 16) + 1, 1, v274);
      }

      v296 = *(v274 + 16);
      v295 = *(v274 + 24);
      if (v296 >= v295 >> 1)
      {
        v274 = sub_100225470((v295 > 1), v296 + 1, 1, v274);
      }

      ++v277;
      *(v274 + 16) = v296 + 1;
      *(v274 + 8 * v296 + 32) = v294;
      if (v277 == v276)
      {
        goto LABEL_474;
      }
    }
  }

  v356 = _swiftEmptyArrayStorage;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v14 = &qword_1002F2380;
  v15 = &v346;
  if (!v11)
  {
LABEL_10:
    if (v12 <= v13 + 1)
    {
      v17 = v13 + 1;
    }

    else
    {
      v17 = v12;
    }

    v18 = v17 - 1;
    while (1)
    {
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v16 >= v12)
      {
        v11 = 0;
        v350 = 0;
        v348 = 0u;
        v349 = 0u;
        v347 = 0u;
        v13 = v18;
        v346 = 0u;
        goto LABEL_19;
      }

      v11 = *(v8 + 8 * v16);
      ++v13;
      if (v11)
      {
        v13 = v16;
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_137;
  }

  while (1)
  {
    v16 = v13;
LABEL_18:
    v19 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v20 = v19 | (v16 << 6);
    sub_100201580(*(a3 + 48) + 40 * v20, &v338);
    sub_1001A773C(*(a3 + 56) + 32 * v20, &v343);
    v346 = v338;
    v347 = v339;
    *&v348 = v340;
    sub_100201570(&v343, (&v348 + 8));
LABEL_19:
    v353 = v348;
    v354 = v349;
    v355 = v350;
    v351 = v346;
    v352 = v347;
    if (!*(&v347 + 1))
    {
      break;
    }

    v346 = v351;
    v347 = v352;
    *&v348 = v353;
    sub_100201570((&v353 + 8), &v338);
    sub_1001A551C(&qword_100377200, &qword_1002F23A8);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1002EED40;
    *(v21 + 32) = AnyHashable.description.getter();
    *(v21 + 40) = v22;
    sub_1001A773C(&v338, v21 + 48);
    v23 = sub_1001FD444(v21);
    swift_setDeallocating();
    sub_1001AC99C(v21 + 32, &qword_100379B70, &qword_1002F2380);
    swift_deallocClassInstance();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100225470(0, *(v6 + 16) + 1, 1, v6);
    }

    v25 = *(v6 + 16);
    v24 = *(v6 + 24);
    if (v25 >= v24 >> 1)
    {
      v6 = sub_100225470((v24 > 1), v25 + 1, 1, v6);
    }

    sub_1001A5654(&v338);
    sub_1002015DC(&v346);
    *(v6 + 16) = v25 + 1;
    *(v6 + 8 * v25 + 32) = v23;
    v356 = v6;
    v15 = &v346;
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  v26 = 1 << *(a3 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(a3 + 64);
  v29 = (v26 + 63) >> 6;

  v30 = 0;
  v31 = _swiftEmptyArrayStorage;
  v14 = &type metadata for String;
  while (v28)
  {
LABEL_36:
    v33 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v34 = v33 | (v30 << 6);
    sub_100201580(*(a3 + 48) + 40 * v34, &v351);
    sub_1001A773C(*(a3 + 56) + 32 * v34, &v353 + 8);
    sub_1001AC934(&v351, &v338, &qword_1003771E8, &qword_1002F2390);
    if (swift_dynamicCast())
    {
      v36 = *(&v343 + 1);
      v35 = v343;
      sub_1001A5654(&v340 + 1);
      v338 = __PAIR128__(v36, v35);
      *&v343 = 1886548850;
      *(&v343 + 1) = 0xE400000000000000;
      sub_1001A56A0();
      LOBYTE(v35) = StringProtocol.contains<A>(_:)();

      if (v35)
      {
        v347 = v352;
        v348 = v353;
        v349 = v354;
        v350 = v355;
        v346 = v351;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_100225320(0, v31[2] + 1, 1, v31);
        }

        v38 = v31[2];
        v37 = v31[3];
        if (v38 >= v37 >> 1)
        {
          v31 = sub_100225320((v37 > 1), v38 + 1, 1, v31);
        }

        v31[2] = v38 + 1;
        v39 = &v31[9 * v38];
        *(v39 + 2) = v346;
        v40 = v347;
        v41 = v348;
        v42 = v349;
        v39[12] = v350;
        *(v39 + 4) = v41;
        *(v39 + 5) = v42;
        *(v39 + 3) = v40;
      }

      else
      {
        sub_1001AC99C(&v351, &qword_1003771E8, &qword_1002F2390);
      }
    }

    else
    {
      sub_1001AC99C(&v351, &qword_1003771E8, &qword_1002F2390);
      sub_1001A5654(&v340 + 1);
    }
  }

  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_232;
    }

    if (v32 >= v29)
    {
      break;
    }

    v28 = *(v8 + 8 * v32);
    ++v30;
    if (v28)
    {
      v30 = v32;
      goto LABEL_36;
    }
  }

  v14 = a3;

  *&v351 = v31;

  sub_100247FE4(&v351);

  v43 = v351;
  if (sub_1002050BC(v351))
  {
    v44 = *(v43 + 16);
    if (v44)
    {
      sub_1001AC934(v43 + 32, &v351, &qword_1003771E8, &qword_1002F2390);

      goto LABEL_48;
    }

    __break(1u);
LABEL_374:
    v6 = sub_100225470((v44 > 1), v43, 1, v6);
    v356 = v6;
LABEL_51:
    sub_1001AC99C(&v346, &qword_1003771E8, &qword_1002F2390);
    *(v6 + 16) = v43;
    *(v6 + 8 * v8 + 32) = v31;
  }

  else
  {

    v355 = 0;
    v353 = 0u;
    v354 = 0u;
    v351 = 0u;
    v352 = 0u;
LABEL_48:
    sub_1001AC934(&v351, &v338, &unk_100378CC0, &qword_1002F3FF8);
    if (*(&v339 + 1))
    {
      v347 = v339;
      v348 = v340;
      v349 = v341;
      v350 = v342;
      v346 = v338;
      sub_1001AC934(&v346, &v338, &qword_1003771E8, &qword_1002F2390);
      if (swift_dynamicCast())
      {
        v45 = v343;
        sub_1002015DC(&v338);
        sub_1001A551C(&qword_100377200, &qword_1002F23A8);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1002EED40;
        *(v46 + 32) = 0x65746C5F70727372;
        *(v46 + 40) = 0xE800000000000000;
        *(v46 + 72) = &type metadata for Int;
        *(v46 + 48) = v45;
        v31 = sub_1001FD444(v46);

        sub_100248050();
        v6 = v356;
        v8 = v356[2];
        v44 = v356[3];
        v43 = v8 + 1;
        if (v8 >= v44 >> 1)
        {
          goto LABEL_374;
        }

        goto LABEL_51;
      }

      sub_1001AC99C(&v346, &qword_1003771E8, &qword_1002F2390);
      sub_1002015DC(&v338);
    }

    else
    {
      sub_1001AC99C(&v338, &unk_100378CC0, &qword_1002F3FF8);
    }
  }

  v47 = &v338;
  sub_1001AC934(&v351, &v338, &unk_100378CC0, &qword_1002F3FF8);
  if (!*(&v339 + 1))
  {
    v64 = &unk_100378CC0;
    v65 = &qword_1002F3FF8;
    v66 = &v338;
    goto LABEL_114;
  }

  v347 = v339;
  v348 = v340;
  v349 = v341;
  v350 = v342;
  v346 = v338;
  sub_1001AC934(&v346, &v338, &qword_1003771E8, &qword_1002F2390);
  if (!swift_dynamicCast())
  {
    sub_1001A5654(&v340 + 1);
LABEL_85:

    sub_1001E248C(48, 0xE100000000000000);
    if (v67)
    {
      goto LABEL_92;
    }

    goto LABEL_86;
  }

  v60 = sub_10023F91C(v343, *(&v343 + 1));
  v62 = v61;

  sub_1001A5654(&v340 + 1);
  if (!v62)
  {
    goto LABEL_85;
  }

  sub_1001E248C(v60, v62);
  if (v63)
  {
LABEL_92:
    v64 = &qword_1003771E8;
    v65 = &qword_1002F2390;
    v66 = &v346;
    goto LABEL_114;
  }

LABEL_86:
  *&v338 = 1903326066;
  *(&v338 + 1) = 0xE400000000000000;
  v68._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  object = v68._object;
  String.append(_:)(v68);

  v337 = v338;
  AnyHashable.init<A>(_:)();
  sub_1001E23CC(&v338, a3, &v343);
  sub_1002015DC(&v338);
  if (v345)
  {
    v70 = &type metadata for Int;
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_92;
    }

    v71 = (v337 / 2);
    v72 = 0xC3E0000000000001;
    if (v71 <= -9.22337204e18)
    {
      goto LABEL_403;
    }

    v73 = 0x43E0000000000000;
    if (v71 >= 9.22337204e18)
    {
      __break(1u);
    }

    else
    {
      v74 = v71;
      sub_1001A551C(&qword_100377200, &qword_1002F23A8);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_1002EED40;
      *(v75 + 32) = 0x65746C5F71727372;
      *(v75 + 40) = 0xE800000000000000;
      *(v75 + 72) = &type metadata for Int;
      *(v75 + 48) = v74;
      object = sub_1001FD444(v75);

      sub_100248050();
      v6 = v356;
      v47 = v356[2];
      v73 = v356[3];
      v70 = (v47 + 1);
      if (v47 < v73 >> 1)
      {
        goto LABEL_91;
      }
    }

    v6 = sub_100225470((v73 > 1), v70, 1, v6);
    v356 = v6;
LABEL_91:
    sub_1001AC99C(&v346, &qword_1003771E8, &qword_1002F2390);
    *(v6 + 16) = v70;
    *(v6 + 8 * v47 + 32) = object;
  }

  else
  {
    sub_1001AC99C(&v346, &qword_1003771E8, &qword_1002F2390);
    v64 = &qword_100375D68;
    v65 = &unk_1002F2370;
    v66 = &v343;
LABEL_114:
    sub_1001AC99C(v66, v64, v65);
  }

  sub_1001AC934(&v351, &v338, &unk_100378CC0, &qword_1002F3FF8);
  if (!*(&v339 + 1))
  {
    v96 = &unk_100378CC0;
    v97 = &qword_1002F3FF8;
    v98 = &v338;
LABEL_129:
    sub_1001AC99C(v98, v96, v97);
    goto LABEL_130;
  }

  v347 = v339;
  v348 = v340;
  v349 = v341;
  v350 = v342;
  v346 = v338;
  sub_1001AC934(&v346, &v338, &qword_1003771E8, &qword_1002F2390);
  if (!swift_dynamicCast())
  {
    sub_1001A5654(&v340 + 1);
LABEL_122:

    sub_1001E248C(48, 0xE100000000000000);
    if (v99)
    {
      goto LABEL_127;
    }

    goto LABEL_123;
  }

  v92 = sub_10023F91C(v343, *(&v343 + 1));
  v94 = v93;

  sub_1001A5654(&v340 + 1);
  if (!v94)
  {
    goto LABEL_122;
  }

  sub_1001E248C(v92, v94);
  if (v95)
  {
LABEL_127:
    v96 = &qword_1003771E8;
    v97 = &qword_1002F2390;
    v98 = &v346;
    goto LABEL_129;
  }

LABEL_123:
  *&v338 = 1919838579;
  *(&v338 + 1) = 0xE400000000000000;
  v100._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v100);

  v337 = v338;
  AnyHashable.init<A>(_:)();
  sub_1001E23CC(&v338, a3, &v343);
  sub_1002015DC(&v338);
  if (!v345)
  {
    sub_1001AC99C(&v346, &qword_1003771E8, &qword_1002F2390);
    v96 = &qword_100375D68;
    v97 = &unk_1002F2370;
    v98 = &v343;
    goto LABEL_129;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_127;
  }

  v101 = v337;
  sub_1001A551C(&qword_100377200, &qword_1002F23A8);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_1002EED40;
  *(v102 + 32) = 0x65746C5F726E73;
  *(v102 + 40) = 0xE700000000000000;
  *(v102 + 72) = &type metadata for Int;
  *(v102 + 48) = v101;
  object = sub_1001FD444(v102);

  sub_100248050();
  v6 = v356;
  v47 = v356[2];
  v72 = v356[3];
  v70 = (v47 + 1);
  if (v47 >= v72 >> 1)
  {
    goto LABEL_404;
  }

LABEL_126:
  sub_1001AC99C(&v346, &qword_1003771E8, &qword_1002F2390);
  *(v6 + 16) = v70;
  *(v6 + 8 * v47 + 32) = object;
LABEL_130:
  *&v343 = 0x6E6366726165;
  *(&v343 + 1) = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  sub_1001E23CC(&v346, v14, &v338);
  sub_1002015DC(&v346);
  if (!*(&v339 + 1))
  {
    v109 = &qword_100375D68;
    v110 = &unk_1002F2370;
    goto LABEL_202;
  }

  if (swift_dynamicCast())
  {
    v103 = v343;
    sub_1001A551C(&qword_100377200, &qword_1002F23A8);
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_1002EED40;
    *(v104 + 32) = 0x6C5F6E6366726165;
    *(v104 + 40) = 0xEA00000000006574;
    *(v104 + 72) = &type metadata for Int;
    *(v104 + 48) = v103;
    v105 = sub_1001FD444(v104);

    sub_100248050();
    v6 = v356;
    v107 = v356[2];
    v106 = v356[3];
    v108 = v107 + 1;
    if (v107 >= v106 >> 1)
    {
      v6 = sub_100225470((v106 > 1), v107 + 1, 1, v356);
      v356 = v6;
    }

LABEL_134:
    *(v6 + 16) = v108;
    *(v6 + 8 * v107 + 32) = v105;
  }

LABEL_204:
  v162 = sub_10023FA18(v6);
  v163 = sub_100244BF8(v162);

  v164 = sub_100244D40(v163);

  v152 = sub_100244DE0(v164);

  sub_1001AC99C(&v351, &unk_100378CC0, &qword_1002F3FF8);
LABEL_205:
  *&v338 = 0x64695F73627573;
  *(&v338 + 1) = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  sub_1001E23CC(&v351, v14, &v346);
  sub_1002015DC(&v351);
  if (*(&v347 + 1))
  {
    if (swift_dynamicCast())
    {
      v165 = v338;
      *&v346 = 0x64695F73627573;
      *(&v346 + 1) = 0xE700000000000000;
      AnyHashable.init<A>(_:)();
      *(&v347 + 1) = &type metadata for Int32;
      LODWORD(v346) = v165;
      sub_100201570(&v346, &v338);
      v166 = swift_isUniquelyReferenced_nonNull_native();
      *&v343 = v152;
      sub_1001F8F64(&v338, &v351, v166);
      sub_1002015DC(&v351);
      return v343;
    }
  }

  else
  {
    sub_1001AC99C(&v346, &qword_100375D68, &unk_1002F2370);
  }

  return v152;
}