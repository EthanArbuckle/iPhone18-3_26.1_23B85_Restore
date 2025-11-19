uint64_t sub_1003B783C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v76 = a3;
  v9 = type metadata accessor for FMFLocationAlert();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v12 = __chkstk_darwin(v11);
  v14 = &v61 - v13;
  __chkstk_darwin(v12);
  result = __chkstk_darwin(&v61 - v15);
  v19 = &v61 - v18;
  v72 = *(v20 + 72);
  if (!v72)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v72 == -1)
  {
    goto LABEL_66;
  }

  v21 = v76 - a2;
  if (v76 - a2 == 0x8000000000000000 && v72 == -1)
  {
    goto LABEL_67;
  }

  v22 = (a2 - a1) / v72;
  v79 = a1;
  v78 = a4;
  v74 = v9;
  if (v22 >= v21 / v72)
  {
    v70 = v17;
    v71 = v14;
    v24 = v21 / v72 * v72;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = a4 + v24;
    if (v24 >= 1)
    {
      v37 = v71;
      v38 = -v72;
      v67 = (v10 + 16);
      v68 = (v10 + 8);
      v39 = v36;
      v73 = a4;
      v64 = a1;
      v65 = -v72;
      do
      {
        v75 = v5;
        v62 = v36;
        v40 = a2;
        v41 = a2 + v38;
        v66 = v41;
        v69 = v40;
        while (1)
        {
          v44 = v76;
          if (v40 <= a1)
          {
            v79 = v40;
            v59 = v62;
LABEL_62:
            v77 = v59;
            goto LABEL_64;
          }

          v63 = v36;
          v72 = v39;
          v45 = v39 + v38;
          v46 = *v67;
          v47 = v74;
          (*v67)(v37, v39 + v38, v74);
          v48 = v41;
          v49 = v38;
          v50 = v70;
          v46(v70, v48, v47);
          v51 = v75;
          v52 = sub_1003B479C(v37, v50);
          v75 = v51;
          if (v51)
          {
            v60 = *v68;
            (*v68)(v50, v47);
            v60(v37, v47);
            v79 = v69;
            v59 = v63;
            goto LABEL_62;
          }

          v53 = v52;
          v76 = v44 + v49;
          v54 = *v68;
          (*v68)(v50, v47);
          v54(v37, v47);
          if (v53)
          {
            break;
          }

          v36 = v45;
          v55 = v64;
          if (v44 < v72 || v76 >= v72)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v65;
            v41 = v66;
            v42 = v73;
          }

          else
          {
            v38 = v65;
            v41 = v66;
            v42 = v73;
            if (v44 != v72)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v39 = v45;
          v43 = v45 > v42;
          v37 = v71;
          a1 = v55;
          v40 = v69;
          if (!v43)
          {
            a2 = v69;
            goto LABEL_63;
          }
        }

        a1 = v64;
        if (v44 < v69 || v76 >= v69)
        {
          a2 = v66;
          swift_arrayInitWithTakeFrontToBack();
          v57 = v73;
          v5 = v75;
          v36 = v63;
          v38 = v65;
        }

        else
        {
          v56 = v44 == v69;
          v38 = v65;
          a2 = v66;
          v57 = v73;
          v5 = v75;
          v36 = v63;
          if (!v56)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v37 = v71;
        v39 = v72;
      }

      while (v72 > v57);
    }

LABEL_63:
    v79 = a2;
    v77 = v36;
  }

  else
  {
    v23 = v22 * v72;
    v71 = result;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v70 = a4 + v23;
    v77 = a4 + v23;
    if (v23 >= 1 && a2 < v76)
    {
      v26 = *(v10 + 16);
      v69 = v10 + 16;
      v67 = v26;
      v68 = (v10 + 8);
      while (1)
      {
        v27 = a2;
        v28 = a4;
        v29 = v67;
        (v67)(v19, a2, v9);
        v30 = v19;
        v31 = v71;
        v73 = v28;
        (v29)(v71, v28, v9);
        v32 = sub_1003B479C(v30, v31);
        if (v5)
        {
          break;
        }

        v33 = v32;
        v75 = 0;
        v34 = *v68;
        (*v68)(v31, v9);
        v34(v30, v9);
        v19 = v30;
        if (v33)
        {
          v35 = v72;
          a2 = v27 + v72;
          if (a1 < v27 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a4 = v73;
        }

        else
        {
          v35 = v72;
          a4 = v73 + v72;
          a2 = v27;
          if (a1 < v73 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v73)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v78 = a4;
        }

        a1 += v35;
        v79 = a1;
        v5 = v75;
        if (a4 < v70)
        {
          v9 = v74;
          if (a2 < v76)
          {
            continue;
          }
        }

        goto LABEL_64;
      }

      v58 = *v68;
      (*v68)(v31, v9);
      v58(v30, v9);
    }
  }

LABEL_64:
  sub_10025F198(&v79, &v78, &v77);
  return 1;
}

void sub_1003B7ED8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FMLocationAlertRowViewModel(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  Hasher._combine(_:)(v7);
  if (v7)
  {
    v8 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v9 = *(v4 + 72);
    do
    {
      sub_1003B81B0(v8, v6);
      if (*(v6 + 1))
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      String.hash(into:)();
      FMFLocationAlertTriggerType.rawValue.getter();
      String.hash(into:)();

      sub_1003B8214(v6);
      v8 += v9;
      --v7;
    }

    while (v7);
  }
}

void sub_1003B8054(uint64_t a1, uint64_t a2)
{
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      Hasher._combine(_:)(v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v7 ^= v10;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

uint64_t sub_1003B81B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMLocationAlertRowViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B8214(uint64_t a1)
{
  v2 = type metadata accessor for FMLocationAlertRowViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1003B8270(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v24 = a1[2];
  v25 = v8;
  v26 = *(a1 + 8);
  v10 = *a1;
  v9 = a1[1];
  v21[0] = a1;
  v22 = v10;
  v23 = v9;
  v11 = Hasher._finalize()();
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v21[2] = v5 + 16;
  v21[3] = v11;
  v21[1] = v5 + 8;

  v16 = 0;
  for (i = 0; v14; v16 ^= v20)
  {
    v18 = i;
LABEL_9:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v5 + 16))(v7, *(a2 + 48) + *(v5 + 72) * (v19 | (v18 << 6)), v4);
    sub_1003B518C(&qword_1006B6918, &type metadata accessor for FMIPItem);
    v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
    (*(v5 + 8))(v7, v4);
  }

  while (1)
  {
    v18 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      Hasher._combine(_:)(v16);
      return;
    }

    v14 = *(a2 + 56 + 8 * v18);
    ++i;
    if (v14)
    {
      i = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1003B849C(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_79;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_79;
    }

    v7 = *(a1 + 16) == *(a2 + 16) && v5 == v6;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else if (v6)
  {
    goto LABEL_79;
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9 || (*(a1 + 32) != *(a2 + 32) || v8 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else if (v9)
  {
    goto LABEL_79;
  }

  if ((*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_79;
  }

  if (*(a1 + 64) != *(a2 + 64) || (*(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_79;
  }

  sub_10000905C(0, &qword_1006B4980);
  if ((static NSObject.== infix(_:_:)() & 1) == 0 || (*(a1 + 96) != *(a2 + 96) || *(a1 + 104) != *(a2 + 104)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_79;
  }

  v10 = *(a1 + 120);
  v11 = *(a2 + 120);
  if (v10)
  {
    if (!v11 || (*(a1 + 112) != *(a2 + 112) || v10 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else if (v11)
  {
    goto LABEL_79;
  }

  v12 = *(a1 + 136);
  v13 = *(a2 + 136);
  if (v12)
  {
    if (!v13 || (*(a1 + 128) != *(a2 + 128) || v12 != v13) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else if (v13)
  {
    goto LABEL_79;
  }

  v14 = type metadata accessor for FMPersonDetailViewModel(0);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_79;
  }

  v15 = v14[15];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  if ((v16 != *v18 || v17 != v18[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_79;
  }

  if ((sub_1003B522C(*(a1 + v14[16]), *(a2 + v14[16])) & 1) == 0)
  {
    goto LABEL_79;
  }

  v19 = v14[17];
  v20 = *(a1 + v19);
  v21 = *(a2 + v19);
  if (v20)
  {
    if (!v21)
    {
      goto LABEL_79;
    }

    sub_10000905C(0, &qword_1006BFD00);
    v22 = v21;
    v23 = v20;
    v24 = static NSObject.== infix(_:_:)();

    if ((v24 & 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else if (v21)
  {
    goto LABEL_79;
  }

  v25 = v14[18];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = v28[1];
  if (v27)
  {
    if (!v29 || (*v26 != *v28 || v27 != v29) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else if (v29)
  {
    goto LABEL_79;
  }

  if (*(a1 + v14[19]) == *(a2 + v14[19]) && *(a1 + v14[20]) == *(a2 + v14[20]) && *(a1 + v14[21]) == *(a2 + v14[21]) && *(a1 + v14[22]) == *(a2 + v14[22]) && *(a1 + v14[23]) == *(a2 + v14[23]) && *(a1 + v14[24]) == *(a2 + v14[24]) && *(a1 + v14[25]) == *(a2 + v14[25]) && *(a1 + v14[26]) == *(a2 + v14[26]) && *(a1 + v14[27]) == *(a2 + v14[27]) && (sub_100244690(*(a1 + v14[28]), *(a2 + v14[28])) & 1) != 0 && *(a1 + v14[29]) == *(a2 + v14[29]) && *(a1 + v14[30]) == *(a2 + v14[30]) && *(a1 + v14[31]) == *(a2 + v14[31]) && *(a1 + v14[32]) == *(a2 + v14[32]) && *(a1 + v14[33]) == *(a2 + v14[33]))
  {
    v30 = *(a1 + v14[34]) ^ *(a2 + v14[34]) ^ 1;
    return v30 & 1;
  }

LABEL_79:
  v30 = 0;
  return v30 & 1;
}

uint64_t sub_1003B88E0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_20;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v5)
  {
LABEL_20:
    v13 = 0;
    return v13 & 1;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_20;
  }

  type metadata accessor for FMLocationAlertRowViewModel(0);
  v8 = FMFLocationAlertTriggerType.rawValue.getter();
  v10 = v9;
  if (v8 == FMFLocationAlertTriggerType.rawValue.getter() && v10 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_1003B89E8(uint64_t a1)
{
  v2 = 0;
  v3 = type metadata accessor for FMFLocationAlertAcceptanceStatus();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v201 = &v168 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&unk_1006C3CA0);
  v7 = __chkstk_darwin(v6);
  v200 = &v168 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v199 = &v168 - v10;
  v11 = __chkstk_darwin(v9);
  v197 = (&v168 - v12);
  __chkstk_darwin(v11);
  v196 = &v168 - v13;
  v14 = sub_10007EBC0(&unk_1006BC950);
  v15 = __chkstk_darwin(v14 - 8);
  v181 = &v168 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v198 = &v168 - v18;
  v19 = __chkstk_darwin(v17);
  v209 = &v168 - v20;
  v21 = __chkstk_darwin(v19);
  v180 = &v168 - v22;
  v23 = __chkstk_darwin(v21);
  v182 = &v168 - v24;
  v25 = __chkstk_darwin(v23);
  v208 = &v168 - v26;
  v27 = __chkstk_darwin(v25);
  v179 = &v168 - v28;
  v29 = __chkstk_darwin(v27);
  v205 = (&v168 - v30);
  v31 = __chkstk_darwin(v29);
  v207 = &v168 - v32;
  v33 = __chkstk_darwin(v31);
  v178 = &v168 - v34;
  v35 = __chkstk_darwin(v33);
  v195 = (&v168 - v36);
  __chkstk_darwin(v35);
  v206 = &v168 - v37;
  v231 = type metadata accessor for FMFLocationAlertTriggerType();
  v38 = *(v231 - 8);
  v39 = __chkstk_darwin(v231);
  v230 = &v168 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v42 = &v168 - v41;
  v43 = type metadata accessor for FMLocationAlertRowViewModel(0);
  v228 = *(v43 - 8);
  v229 = v43;
  v44 = __chkstk_darwin(v43);
  v227 = (&v168 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v44);
  v47 = (&v168 - v46);
  v48 = sub_10007EBC0(&unk_1006B0670);
  v49 = __chkstk_darwin(v48 - 8);
  v203 = &v168 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v202 = &v168 - v51;
  v52 = type metadata accessor for FMFLocationAlert();
  v204 = *(v52 - 8);
  v53 = __chkstk_darwin(v52);
  v237 = &v168 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v234 = &v168 - v55;
  My = type metadata accessor for Feature.FindMy();
  v241 = My;
  v175 = sub_1003B518C(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v242 = v175;
  v57 = sub_100008FC0(&v240);
  v58 = *(My - 8);
  v59 = *(v58 + 104);
  v174 = enum case for Feature.FindMy.fencesMigration(_:);
  v176 = My;
  v173 = v59;
  v172 = v58 + 104;
  v59(v57);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(&v240);
  v233 = a1;
  v60 = FMFFriend.locationAlertsOnFriend.getter();
  v239 = v6;
  v226 = v52;
  v171 = v4;
  v170 = v38;
  if (My)
  {
    if (!v60)
    {
      goto LABEL_38;
    }

    v240 = v60;

    sub_1003B5794(&v240);

    v60 = v240;
  }

  else if (!v60)
  {
    goto LABEL_38;
  }

  v61 = v234;
  v62 = v60[2];
  if (v62)
  {
    v169 = 0;
    v192 = *(v204 + 16);
    v63 = (*(v204 + 80) + 32) & ~*(v204 + 80);
    v168 = v60;
    v64 = v60 + v63;
    v191 = *(v204 + 72);
    v190 = 0x80000001005944B0;
    v189 = enum case for FMFLocationAlertAcceptanceStatus.hidden(_:);
    v225 = (v4 + 104);
    v224 = (v4 + 56);
    v188 = (v4 + 48);
    v177 = (v4 + 32);
    v187 = (v4 + 8);
    v186 = enum case for FMFLocationAlertAcceptanceStatus.pending(_:);
    v185 = (v38 + 32);
    v193 = v204 + 16;
    v184 = (v204 + 8);
    v65 = _swiftEmptyArrayStorage;
    v66 = 1;
    v236 = v3;
    v67 = v202;
    v194 = v42;
    v183 = v47;
    while (1)
    {
      v223 = v62;
      v232 = v66;
      v222 = v64;
      v192(v61);
      v235 = FMFFriend.name.getter();
      v69 = v68;
      FMFFriend.contact.getter();
      v70 = type metadata accessor for FMFContact();
      v71 = *(v70 - 8);
      if ((*(v71 + 48))(v67, 1, v70) == 1)
      {
        v221 = v69;
        sub_100012DF0(v67, &unk_1006B0670);
      }

      else
      {
        FMFContact.storeUUID.getter();
        (*(v71 + 8))(v67, v70);
        type metadata accessor for FMFCoreHelper();
        v72 = static FMFCoreHelper.contact(for:keysToFetch:)();

        if (v72)
        {

          v73 = [v72 givenName];
          v235 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v221 = v74;
        }

        else
        {
          v221 = v69;
        }
      }

      v75 = v206;
      LODWORD(v220) = FMFLocationAlert.setByMe.getter();
      v219 = FMFLocationAlert.identifier.getter();
      v218 = v76;
      v77 = FMFLocationAlert.displayLabel.getter();
      v79 = 0xD000000000000014;
      if (v78)
      {
        v79 = v77;
      }

      v216 = v79;
      v80 = v190;
      if (v78)
      {
        v80 = v78;
      }

      v215 = v80;
      FMFLocationAlert.triggerType.getter();
      LODWORD(v217) = FMFLocationAlert.repeating.getter();
      v214 = FMFLocationAlert.setOnMe.getter();
      v213 = FMFLocationAlert.setByMe.getter();
      FMFLocationAlert.acceptanceStatus.getter();
      v81 = v195;
      v210 = *v225;
      (v210)(v195, v189, v3);
      v211 = *v224;
      (v211)(v81, 0, 1, v3);
      v82 = *(v239 + 48);
      v83 = v196;
      sub_100007204(v75, v196, &unk_1006BC950);
      sub_100007204(v81, &v83[v82], &unk_1006BC950);
      v84 = *v188;
      v85 = (*v188)(v83, 1, v3);
      v238 = v65;
      if (v85 == 1)
      {
        break;
      }

      v89 = v178;
      sub_100007204(v83, v178, &unk_1006BC950);
      if (v84(&v83[v82], 1, v3) == 1)
      {
        sub_100012DF0(v81, &unk_1006BC950);
        sub_100012DF0(v206, &unk_1006BC950);
        (*v187)(v89, v3);
        v87 = v197;
LABEL_21:
        sub_100012DF0(v83, &unk_1006C3CA0);
        LODWORD(v212) = 0;
        v88 = v205;
        goto LABEL_23;
      }

      v90 = v81;
      v91 = v89;
      v92 = v201;
      (*v177)(v201, &v83[v82], v3);
      sub_1003B518C(&qword_1006B3D08, &type metadata accessor for FMFLocationAlertAcceptanceStatus);
      LODWORD(v212) = dispatch thunk of static Equatable.== infix(_:_:)();
      v93 = *v187;
      (*v187)(v92, v3);
      sub_100012DF0(v90, &unk_1006BC950);
      sub_100012DF0(v206, &unk_1006BC950);
      v93(v91, v3);
      sub_100012DF0(v83, &unk_1006BC950);
      v87 = v197;
      v88 = v205;
LABEL_23:
      v94 = v207;
      FMFLocationAlert.acceptanceStatus.getter();
      v95 = v236;
      (v210)(v88, v186, v236);
      (v211)(v88, 0, 1, v95);
      v96 = *(v239 + 48);
      sub_100007204(v94, v87, &unk_1006BC950);
      sub_100007204(v88, v87 + v96, &unk_1006BC950);
      if (v84(v87, 1, v95) != 1)
      {
        v102 = v179;
        sub_100007204(v87, v179, &unk_1006BC950);
        v103 = v84((v87 + v96), 1, v95);
        v98 = v226;
        if (v103 != 1)
        {
          v104 = (v87 + v96);
          v105 = v87;
          v106 = v201;
          (*v177)(v201, v104, v95);
          sub_1003B518C(&qword_1006B3D08, &type metadata accessor for FMFLocationAlertAcceptanceStatus);
          v101 = dispatch thunk of static Equatable.== infix(_:_:)();
          v107 = v102;
          v108 = *v187;
          (*v187)(v106, v95);
          sub_100012DF0(v205, &unk_1006BC950);
          sub_100012DF0(v207, &unk_1006BC950);
          v108(v107, v95);
          sub_100012DF0(v105, &unk_1006BC950);
          v99 = v232;
          v3 = v95;
          v100 = v194;
          goto LABEL_30;
        }

        sub_100012DF0(v88, &unk_1006BC950);
        sub_100012DF0(v207, &unk_1006BC950);
        (*v187)(v102, v95);
        v99 = v232;
        v3 = v95;
        v100 = v194;
LABEL_28:
        sub_100012DF0(v87, &unk_1006C3CA0);
        v101 = 0;
        goto LABEL_30;
      }

      sub_100012DF0(v88, &unk_1006BC950);
      sub_100012DF0(v94, &unk_1006BC950);
      v97 = v84((v87 + v96), 1, v95);
      v98 = v226;
      v99 = v232;
      v3 = v95;
      v100 = v194;
      if (v97 != 1)
      {
        goto LABEL_28;
      }

      sub_100012DF0(v87, &unk_1006BC950);
      v101 = 1;
LABEL_30:
      v61 = v234;
      v109 = v183;
      v110 = v218;
      *v183 = v219;
      v109[1] = v110;
      v111 = v215;
      v109[2] = v216;
      v109[3] = v111;
      v112 = v221;
      v109[4] = v235;
      v109[5] = v112;
      v113 = v229;
      (*v185)(v109 + v229[7], v100, v231);
      *(v109 + v113[8]) = v217 & 1;
      *(v109 + v113[9]) = v214 & 1;
      *(v109 + v113[10]) = v213 & 1;
      *(v109 + v113[11]) = v212 & 1;
      *(v109 + v113[12]) = v101 & 1;
      v65 = v238;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_10008C274(0, v65[2] + 1, 1, v65);
      }

      v67 = v202;
      v115 = v65[2];
      v114 = v65[3];
      if (v115 >= v114 >> 1)
      {
        v65 = sub_10008C274(v114 > 1, v115 + 1, 1, v65);
      }

      v66 = (v220 ^ 1) & v99;
      (*v184)(v61, v98);
      v65[2] = v115 + 1;
      sub_1003BAA20(v109, v65 + ((*(v228 + 80) + 32) & ~*(v228 + 80)) + *(v228 + 72) * v115);
      v64 = &v222[v191];
      v62 = (v223 - 1);
      if (v223 == 1)
      {

        v2 = v169;
        goto LABEL_39;
      }
    }

    sub_100012DF0(v81, &unk_1006BC950);
    sub_100012DF0(v75, &unk_1006BC950);
    v86 = v84(&v83[v82], 1, v3);
    v87 = v197;
    if (v86 == 1)
    {
      sub_100012DF0(v83, &unk_1006BC950);
      LODWORD(v212) = 1;
      v88 = v205;
      goto LABEL_23;
    }

    goto LABEL_21;
  }

LABEL_38:
  v65 = _swiftEmptyArrayStorage;
  v66 = 1;
LABEL_39:
  v116 = v176;
  v241 = v176;
  v242 = v175;
  v117 = sub_100008FC0(&v240);
  v173(v117, v174, v116);
  v118 = isFeatureEnabled(_:)();
  sub_100006060(&v240);
  v119 = FMFFriend.locationAlertsOnMe.getter();
  v120 = v203;
  v121 = v237;
  if ((v118 & 1) == 0)
  {
    if (v119)
    {
      v232 = v66;
      goto LABEL_45;
    }

    return v65;
  }

  if (!v119)
  {
    return v65;
  }

  v240 = v119;

  sub_1003B5794(&v240);
  if (!v2)
  {
    v232 = v66;

    v119 = v240;
LABEL_45:
    v122 = v119[2];
    v123 = v182;
    if (v122)
    {
      v211 = *(v204 + 16);
      v124 = (*(v204 + 80) + 32) & ~*(v204 + 80);
      v194 = v119;
      v125 = v119 + v124;
      v210 = *(v204 + 72);
      v207 = 0x80000001005944B0;
      LODWORD(v206) = enum case for FMFLocationAlertAcceptanceStatus.hidden(_:);
      v225 = (v171 + 104);
      v224 = (v171 + 56);
      v223 = (v171 + 48);
      v195 = (v171 + 32);
      v205 = (v171 + 8);
      LODWORD(v202) = enum case for FMFLocationAlertAcceptanceStatus.pending(_:);
      v197 = (v170 + 32);
      v204 += 16;
      v196 = (v204 - 8);
      v236 = v3;
      while (1)
      {
        v222 = v122;
        v221 = v125;
        v211(v121);
        v234 = FMFFriend.name.getter();
        v235 = v126;
        FMFFriend.contact.getter();
        v127 = type metadata accessor for FMFContact();
        v128 = *(v127 - 8);
        v129 = (*(v128 + 48))(v120, 1, v127);
        v238 = v65;
        if (v129 == 1)
        {
          sub_100012DF0(v120, &unk_1006B0670);
        }

        else
        {
          FMFContact.storeUUID.getter();
          (*(v128 + 8))(v120, v127);
          type metadata accessor for FMFCoreHelper();
          v130 = static FMFCoreHelper.contact(for:keysToFetch:)();

          if (v130)
          {

            v131 = [v130 givenName];
            v234 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v235 = v132;
          }
        }

        v220 = FMFLocationAlert.identifier.getter();
        v219 = v133;
        v134 = FMFLocationAlert.displayLabel.getter();
        v136 = 0xD000000000000014;
        if (v135)
        {
          v136 = v134;
        }

        v217 = v136;
        v137 = v207;
        if (v135)
        {
          v137 = v135;
        }

        v216 = v137;
        FMFLocationAlert.triggerType.getter();
        LODWORD(v218) = FMFLocationAlert.repeating.getter();
        LODWORD(v215) = FMFLocationAlert.setOnMe.getter();
        v214 = FMFLocationAlert.setByMe.getter();
        v138 = v208;
        FMFLocationAlert.acceptanceStatus.getter();
        v139 = *v225;
        (*v225)(v123, v206, v3);
        v212 = *v224;
        (v212)(v123, 0, 1, v3);
        v140 = *(v239 + 48);
        v141 = v199;
        sub_100007204(v138, v199, &unk_1006BC950);
        sub_100007204(v123, v141 + v140, &unk_1006BC950);
        v142 = *v223;
        if ((*v223)(v141, 1, v3) == 1)
        {
          break;
        }

        v144 = v180;
        sub_100007204(v141, v180, &unk_1006BC950);
        if (v142(v141 + v140, 1, v3) == 1)
        {
          v145 = v182;
          sub_100012DF0(v182, &unk_1006BC950);
          sub_100012DF0(v208, &unk_1006BC950);
          v146 = v144;
          v123 = v145;
          (*v205)(v146, v3);
LABEL_60:
          sub_100012DF0(v141, &unk_1006C3CA0);
          v213 = 0;
          v143 = v198;
          goto LABEL_62;
        }

        v147 = v201;
        (*v195)(v201, v141 + v140, v3);
        sub_1003B518C(&qword_1006B3D08, &type metadata accessor for FMFLocationAlertAcceptanceStatus);
        v213 = dispatch thunk of static Equatable.== infix(_:_:)();
        v148 = *v205;
        (*v205)(v147, v3);
        v149 = v182;
        sub_100012DF0(v182, &unk_1006BC950);
        sub_100012DF0(v208, &unk_1006BC950);
        v150 = v144;
        v123 = v149;
        v148(v150, v3);
        sub_100012DF0(v141, &unk_1006BC950);
        v143 = v198;
LABEL_62:
        v151 = v209;
        FMFLocationAlert.acceptanceStatus.getter();
        v3 = v236;
        (v139)(v143, v202, v236);
        (v212)(v143, 0, 1, v3);
        v152 = *(v239 + 48);
        v153 = v200;
        sub_100007204(v151, v200, &unk_1006BC950);
        sub_100007204(v143, v153 + v152, &unk_1006BC950);
        if (v142(v153, 1, v3) != 1)
        {
          v155 = v181;
          sub_100007204(v153, v181, &unk_1006BC950);
          if (v142(v153 + v152, 1, v3) != 1)
          {
            v156 = v201;
            (*v195)(v201, v153 + v152, v3);
            sub_1003B518C(&qword_1006B3D08, &type metadata accessor for FMFLocationAlertAcceptanceStatus);
            v154 = dispatch thunk of static Equatable.== infix(_:_:)();
            v157 = *v205;
            (*v205)(v156, v236);
            sub_100012DF0(v143, &unk_1006BC950);
            sub_100012DF0(v209, &unk_1006BC950);
            v157(v155, v236);
            v3 = v236;
            sub_100012DF0(v153, &unk_1006BC950);
            goto LABEL_69;
          }

          sub_100012DF0(v143, &unk_1006BC950);
          sub_100012DF0(v209, &unk_1006BC950);
          (*v205)(v155, v3);
LABEL_67:
          sub_100012DF0(v153, &unk_1006C3CA0);
          v154 = 0;
          goto LABEL_69;
        }

        sub_100012DF0(v143, &unk_1006BC950);
        sub_100012DF0(v151, &unk_1006BC950);
        if (v142(v153 + v152, 1, v3) != 1)
        {
          goto LABEL_67;
        }

        sub_100012DF0(v153, &unk_1006BC950);
        v154 = 1;
LABEL_69:
        v120 = v203;
        v121 = v237;
        v158 = v227;
        v159 = v219;
        *v227 = v220;
        v158[1] = v159;
        v160 = v216;
        v158[2] = v217;
        v158[3] = v160;
        v161 = v235;
        v158[4] = v234;
        v158[5] = v161;
        v162 = v229;
        (*v197)(v158 + v229[7], v230, v231);
        *(v158 + v162[8]) = v218 & 1;
        *(v158 + v162[9]) = v215 & 1;
        *(v158 + v162[10]) = v214 & 1;
        *(v158 + v162[11]) = v213 & 1;
        *(v158 + v162[12]) = v154 & 1;
        v65 = v238;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v164 = v226;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v65 = sub_10008C274(0, v65[2] + 1, 1, v65);
        }

        v166 = v65[2];
        v165 = v65[3];
        if (v166 >= v165 >> 1)
        {
          v65 = sub_10008C274(v165 > 1, v166 + 1, 1, v65);
        }

        (*v196)(v121, v164);
        v65[2] = v166 + 1;
        sub_1003BAA20(v227, v65 + ((*(v228 + 80) + 32) & ~*(v228 + 80)) + *(v228 + 72) * v166);
        v125 = &v210[v221];
        v122 = v222 - 1;
        if (v222 == 1)
        {
          goto LABEL_74;
        }
      }

      sub_100012DF0(v123, &unk_1006BC950);
      sub_100012DF0(v138, &unk_1006BC950);
      if (v142(v141 + v140, 1, v3) == 1)
      {
        sub_100012DF0(v141, &unk_1006BC950);
        v213 = 1;
        v143 = v198;
        goto LABEL_62;
      }

      goto LABEL_60;
    }

LABEL_74:

    return v65;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003BA6F4(uint64_t a1)
{
  v2 = type metadata accessor for FMFLocationAlertTriggerType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v21 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMLocationAlertRowViewModel(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1003B89E8(a1);
  v10 = result;
  v11 = *(result + 16);
  if (!v11)
  {
LABEL_12:

    return 0;
  }

  v12 = 0;
  v13 = result + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v19 = enum case for FMFLocationAlertTriggerType.scheduled(_:);
  v17 = (v3 + 8);
  v18 = (v3 + 104);
  v20 = v13;
  while (v12 < *(v10 + 16))
  {
    sub_1003B81B0(v13 + *(v6 + 72) * v12, v8);
    if ((v8[*(v5 + 32)] & 1) == 0)
    {
      (*v18)(v21, v19, v2);
      sub_1003B518C(&qword_1006B00A0, &type metadata accessor for FMFLocationAlertTriggerType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v24 == v22 && v25 == v23)
      {
        (*v17)(v21, v2);

        v13 = v20;
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
        (*v17)(v21, v2);

        v13 = v20;
        if ((v15 & 1) == 0)
        {
          result = sub_1003B8214(v8);
          goto LABEL_5;
        }
      }
    }

    v14 = v8[*(v5 + 36)];
    result = sub_1003B8214(v8);
    if ((v14 & 1) == 0)
    {

      return 1;
    }

LABEL_5:
    if (v11 == ++v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003BAA20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMLocationAlertRowViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1003BAB3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMCoreBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1003BACF0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy23FMAddItemFlowHeaderView_headerLabel];
  [v2 setTextAlignment:1];
  [v2 setNumberOfLines:0];
  v3 = objc_opt_self();
  v4 = [v3 labelColor];
  [v2 setTextColor:v4];

  v5 = objc_opt_self();
  v6 = [v5 preferredFontForTextStyle:UIFontTextStyleTitle1];
  v7 = sub_100039388(2);

  [v2 setFont:v7];
  v8 = *&v1[OBJC_IVAR____TtC6FindMy23FMAddItemFlowHeaderView_subheaderLabel];
  [v8 setTextAlignment:1];
  [v8 setNumberOfLines:0];
  v9 = [v3 secondaryLabelColor];
  [v8 setTextColor:v9];

  v10 = [v5 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v8 setFont:v10];

  [v1 setSpacing:1.17549435e-38];
  [v1 setAxis:1];
  [v1 setAlignment:3];
  [v1 addArrangedSubview:v2];

  return [v1 addArrangedSubview:v8];
}

uint64_t sub_1003BAF08()
{
  sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552EE0;
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy23FMAddItemFlowHeaderView_headerLabel);
  *(inited + 32) = v2;
  v3 = *(v0 + OBJC_IVAR____TtC6FindMy23FMAddItemFlowHeaderView_subheaderLabel);
  *(inited + 40) = v3;
  v4 = v2;
  v5 = v3;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_9;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  for (i = v4; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v7 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints:0];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v8 = *(inited + 40);
      goto LABEL_7;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    ;
  }

  v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
  v9 = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  swift_setDeallocating();
  return swift_arrayDestroy();
}

id sub_1003BB068()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAddItemFlowHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1003BB26C()
{
  v1 = v0;
  [v0 setAxis:0];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy30FMAccessoryPairingWithYouLabel_dotView];
  [v0 addArrangedSubview:v2];
  v3 = *&v0[OBJC_IVAR____TtC6FindMy30FMAccessoryPairingWithYouLabel_textLabel];
  [v1 addArrangedSubview:v3];
  v4 = [objc_opt_self() mainBundle];
  v18._object = 0x8000000100579A00;
  v5._countAndFlagsBits = 0xD00000000000001CLL;
  v5._object = 0x80000001005945D0;
  v6.value._object = 0x80000001005799E0;
  v18._countAndFlagsBits = 0xD000000000000018;
  v6.value._countAndFlagsBits = 0xD000000000000013;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v18);

  v8 = String._bridgeToObjectiveC()();

  [v3 setText:v8];

  v9 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v3 setFont:v9];

  v10 = [objc_opt_self() secondaryLabelColor];
  [v3 setTextColor:v10];

  [v3 setAdjustsFontForContentSizeCategory:1];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1005528C0;
  v13 = [v2 heightAnchor];
  v14 = [v2 widthAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v12 + 32) = v15;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 activateConstraints:isa];
}

id sub_1003BB578()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAccessoryPairingWithYouLabel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1003BB61C(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(UIView) init];
  [v6 setBackgroundColor:a1];
  [v3 addSubview:v6];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1005521F0;
  v9 = [v6 trailingAnchor];
  v10 = [v3 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:-a2];

  *(v8 + 32) = v11;
  v12 = [v6 topAnchor];
  v13 = [v3 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v8 + 40) = v14;
  v15 = [v6 bottomAnchor];
  v16 = [v3 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v8 + 48) = v17;
  v18 = [v6 widthAnchor];
  v19 = [v18 constraintEqualToConstant:a2];

  *(v8 + 56) = v19;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 activateConstraints:isa];
}

id sub_1003BB938()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMCustomDistanceBadge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1003BB990()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006BBCE0);
  v3 = __chkstk_darwin(v2 - 8);
  v54 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v47 - v5;
  v7 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_device;
  swift_beginAccess();
  v53 = v7;
  sub_100007204(&v1[v7], v6, &unk_1006BBCE0);
  v8 = type metadata accessor for FMIPDevice();
  v9 = *(v8 - 8);
  v51 = *(v9 + 48);
  v52 = v9 + 48;
  if (v51(v6, 1, v8) == 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v10 = FMIPDevice.name.getter();
  v49 = v8;
  v50 = v10;
  v55 = v11;
  v47 = *(v9 + 8);
  v47(v6, v8);
  v12 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v1 action:"cancelActionWithSender:"];
  v13 = [v1 navigationItem];
  v48 = v12;
  [v13 setLeftBarButtonItem:v12];

  v14 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_deviceImageView;
  [*&v1[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_deviceImageView] setContentMode:1];
  v15 = [v1 contentView];
  [v15 addSubview:*&v1[v14]];

  v16 = [v1 contentView];
  v17 = objc_opt_self();
  v18 = [v17 systemBackgroundColor];
  [v16 setBackgroundColor:v18];

  v19 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_deviceNameLabel;
  v20 = *&v1[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_deviceNameLabel];
  v21 = objc_opt_self();
  v22 = &v1[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_style];
  v23 = *&v1[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_style];
  v24 = v20;
  v25 = [v21 preferredFontForTextStyle:v23];
  v26 = sub_100039388(0x8000);

  v27 = sub_100039388(2);
  [v24 setFont:v27];

  [*&v1[v19] setAdjustsFontForContentSizeCategory:1];
  [*&v1[v19] setNumberOfLines:0];
  v28 = *&v1[v19];
  v29 = [v17 labelColor];
  [v28 setTextColor:v29];

  [*&v1[v19] setTextAlignment:1];
  v30 = *&v1[v19];
  v31 = String._bridgeToObjectiveC()();
  [v30 setText:v31];

  [*&v1[v19] setAdjustsFontForContentSizeCategory:1];
  v32 = [v1 contentView];
  [v32 addSubview:*&v1[v19]];

  v33 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_deviceOwnerLabel;
  v34 = *(v22 + 1);
  v35 = *&v1[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_deviceOwnerLabel];
  v36 = [v21 preferredFontForTextStyle:v34];
  v37 = sub_100039388(0x8000);

  [v35 setFont:v37];
  [*&v1[v33] setAdjustsFontForContentSizeCategory:1];
  [*&v1[v33] setNumberOfLines:0];
  v38 = *&v1[v33];
  v39 = [v17 secondaryLabelColor];
  [v38 setTextColor:v39];

  [*&v1[v33] setTextAlignment:1];
  if (!*&v1[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_mediator])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v40 = *&v1[v33];
  v41 = v54;
  sub_100007204(&v1[v53], v54, &unk_1006BBCE0);
  v42 = v49;
  if (v51(v41, 1, v49) != 1)
  {
    v43 = v40;

    sub_1002D45D4();

    v47(v41, v42);
    v44 = String._bridgeToObjectiveC()();

    [v43 setText:v44];

    [*&v1[v33] setAdjustsFontForContentSizeCategory:1];
    v45 = [v1 contentView];
    [v45 addSubview:*&v1[v33]];

    v46 = [v1 buttonTray];
    [v46 addButton:*&v1[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_performButton]];

    sub_1003BC6AC();
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1003BC000()
{
  v1 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_deviceImageView;
  [*&v0[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_deviceImageView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100552EF0;
  v4 = [*&v0[v1] topAnchor];
  v5 = [v0 contentView];
  v6 = [v5 safeAreaLayoutGuide];

  v7 = [v6 topAnchor];
  v8 = [v4 constraintEqualToAnchor:v7];

  *(v3 + 32) = v8;
  v9 = [*&v0[v1] leadingAnchor];
  v10 = [v0 contentView];
  v11 = [v10 leadingAnchor];

  v12 = [v9 constraintEqualToAnchor:v11];
  *(v3 + 40) = v12;
  v13 = [*&v0[v1] trailingAnchor];
  v14 = [v0 contentView];
  v15 = [v14 trailingAnchor];

  v16 = [v13 constraintEqualToAnchor:v15];
  *(v3 + 48) = v16;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v18 = v2;
  v52 = v2;
  [v2 activateConstraints:isa];

  v19 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_deviceNameLabel;
  [*&v0[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_deviceNameLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100552EF0;
  v21 = [*&v0[v19] topAnchor];
  v22 = [*&v0[v1] bottomAnchor];
  v23 = &v0[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_style];
  v24 = [v21 constraintEqualToAnchor:v22 constant:*&v0[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_style + 24]];

  *(v20 + 32) = v24;
  v25 = [*&v0[v19] leadingAnchor];
  v26 = [v0 contentView];
  v27 = [v26 leadingAnchor];

  v28 = v23[2];
  v29 = [v25 constraintEqualToAnchor:v27 constant:v28];

  *(v20 + 40) = v29;
  v30 = [*&v0[v19] trailingAnchor];
  v31 = [v0 contentView];
  v32 = [v31 trailingAnchor];

  v33 = [v30 constraintEqualToAnchor:v32 constant:-v28];
  *(v20 + 48) = v33;
  v34 = Array._bridgeToObjectiveC()().super.isa;

  [v18 activateConstraints:v34];

  v35 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_deviceOwnerLabel;
  [*&v0[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_deviceOwnerLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1005521F0;
  v37 = [*&v0[v35] topAnchor];
  v38 = [*&v0[v19] bottomAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:v23[4]];

  *(v36 + 32) = v39;
  v40 = [*&v0[v35] leadingAnchor];
  v41 = [v0 contentView];
  v42 = [v41 leadingAnchor];

  v43 = [v40 constraintEqualToAnchor:v42 constant:v28];
  *(v36 + 40) = v43;
  v44 = [*&v0[v35] trailingAnchor];
  v45 = [v0 contentView];
  v46 = [v45 trailingAnchor];

  v47 = [v44 constraintEqualToAnchor:v46 constant:-v28];
  *(v36 + 48) = v47;
  v48 = [*&v0[v35] bottomAnchor];
  v49 = [v0 contentView];
  v50 = [v49 bottomAnchor];

  v51 = [v48 constraintEqualToAnchor:v50];
  *(v36 + 56) = v51;
  v53 = Array._bridgeToObjectiveC()().super.isa;

  [v52 activateConstraints:v53];
}

void sub_1003BC6AC()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  v9 = [v1 traitCollection];
  v10 = [v9 userInterfaceStyle];

  v11 = [objc_opt_self() mainBundle];
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 URLForResource:v12 withExtension:0];

  if (v13)
  {
    if (v10 == 2)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v8, v6, v2);
    v15 = *&v1[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_deviceImageView];
    URL._bridgeToObjectiveC()(v16);
    v18 = v17;
    [v15 updateViewForAssetType:v14 adjustmentsURL:v17];

    (*(v3 + 8))(v8, v2);
  }
}

void sub_1003BC8BC()
{
  v1 = sub_10007EBC0(&qword_1006B07D0);
  v2 = __chkstk_darwin(v1 - 8);
  v346 = &v340 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v345 = &v340 - v5;
  __chkstk_darwin(v4);
  v354 = &v340 - v6;
  v358 = type metadata accessor for FMIPDeviceState();
  v357 = *(v358 - 8);
  v7 = __chkstk_darwin(v358);
  v356 = &v340 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v355 = &v340 - v9;
  v366 = type metadata accessor for FMIPFeatures();
  v364 = *(v366 - 8);
  v10 = __chkstk_darwin(v366);
  v12 = &v340 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v340 - v13;
  v15 = sub_10007EBC0(&unk_1006BBCE0);
  v16 = __chkstk_darwin(v15 - 8);
  v344 = &v340 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v347 = &v340 - v19;
  v20 = __chkstk_darwin(v18);
  v349 = &v340 - v21;
  v22 = __chkstk_darwin(v20);
  v362 = &v340 - v23;
  v24 = __chkstk_darwin(v22);
  v343 = &v340 - v25;
  v26 = __chkstk_darwin(v24);
  v350 = &v340 - v27;
  v28 = __chkstk_darwin(v26);
  v353 = &v340 - v29;
  v30 = __chkstk_darwin(v28);
  v348 = &v340 - v31;
  v32 = __chkstk_darwin(v30);
  v359 = &v340 - v33;
  v34 = __chkstk_darwin(v32);
  v360 = &v340 - v35;
  v36 = __chkstk_darwin(v34);
  v361 = &v340 - v37;
  v38 = __chkstk_darwin(v36);
  v40 = &v340 - v39;
  v41 = __chkstk_darwin(v38);
  v43 = &v340 - v42;
  __chkstk_darwin(v41);
  v45 = &v340 - v44;
  v46 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_device;
  swift_beginAccess();
  v369 = v0;
  sub_100007204(&v0[v46], v45, &unk_1006BBCE0);
  v47 = type metadata accessor for FMIPDevice();
  v48 = *(v47 - 8);
  v367 = *(v48 + 48);
  v368 = (v48 + 48);
  if (v367(v45, 1, v47) == 1)
  {
    __break(1u);
    goto LABEL_53;
  }

  FMIPDevice.features.getter();
  v352 = v48;
  v50 = *(v48 + 8);
  v49 = v48 + 8;
  v365 = v50;
  v50(v45, v47);
  static FMIPFeatures.isKeypadEnabled.getter();
  v51 = sub_1003C1FF8(&qword_1006C1D50, &type metadata accessor for FMIPFeatures);
  v52 = v366;
  v363 = v51;
  v351 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v53 = v364 + 8;
  v54 = *(v364 + 8);
  v54(v12, v52);
  v364 = v53;
  v54(v14, v52);
  sub_100007204(&v369[v46], v43, &unk_1006BBCE0);
  if (v367(v43, 1, v47) == 1)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  FMIPDevice.features.getter();
  v365(v43, v47);
  static FMIPFeatures.isWipeEnabled.getter();
  v55 = v366;
  v342 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v54(v12, v55);
  v54(v14, v55);
  sub_100007204(&v369[v46], v40, &unk_1006BBCE0);
  if (v367(v40, 1, v47) == 1)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v56 = v47;
  FMIPDevice.features.getter();
  v57 = v365;
  v365(v40, v47);
  static FMIPFeatures.isWipeAndMessageEnabled.getter();
  v58 = v366;
  v341 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v54(v12, v58);
  v54(v14, v58);
  v59 = v361;
  sub_100007204(&v369[v46], v361, &unk_1006BBCE0);
  if (v367(v59, 1, v56) == 1)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  FMIPDevice.features.getter();
  v57(v59, v56);
  static FMIPFeatures.isLostModeWithLocationServiceEnabled.getter();
  v60 = v366;
  v61 = v49;
  LODWORD(v361) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v54(v12, v60);
  v54(v14, v60);
  v62 = v360;
  sub_100007204(&v369[v46], v360, &unk_1006BBCE0);
  if (v367(v62, 1, v56) == 1)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  FMIPDevice.features.getter();
  v365(v62, v56);
  static FMIPFeatures.isPinRequiredForWipe.getter();
  v63 = v366;
  v64 = v56;
  v65 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v54(v12, v63);
  v54(v14, v63);
  v66 = v46;
  v67 = v369;
  v68 = v359;
  sub_100007204(&v369[v46], v359, &unk_1006BBCE0);
  v69 = v367;
  if (v367(v68, 1, v64) == 1)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v70 = v355;
  FMIPDevice.state.getter();
  v71 = v64;
  v366 = v61;
  v365(v68, v64);
  v72 = v356;
  static FMIPDeviceState.isFamilySharedDevice.getter();
  sub_1003C1FF8(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState);
  v73 = v358;
  LODWORD(v364) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v74 = *(v357 + 8);
  v74(v72, v73);
  v74(v70, v73);
  v75 = v362;
  if (v67[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_mode + 4])
  {
    return;
  }

  v76 = *&v67[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_mode];
  if (v76 == 4)
  {
    if ((v65 & 1) == 0)
    {
      v188 = *&v67[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_mediator];
      v189 = v352;
      if (v342 & v341)
      {
        if (!v188)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        v190 = v347;
        sub_100007204(&v67[v66], v347, &unk_1006BBCE0);
        v364 = v71;
        if (v69(v190, 1, v71) == 1)
        {
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        v191 = type metadata accessor for FMDevicePhoneNumberViewController();
        v192 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_primaryItemPart;
        swift_beginAccess();
        sub_100007204(&v67[v192], v346, &qword_1006B07D0);
        v193 = objc_opt_self();

        v194 = [v193 mainBundle];
        v379._object = 0x8000000100582840;
        v195._countAndFlagsBits = 0xD00000000000001FLL;
        v195._object = 0x8000000100582820;
        v379._countAndFlagsBits = 0xD000000000000031;
        v196._countAndFlagsBits = 0;
        v196._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v195, 0, v194, v196, v379);

        v197 = [v193 mainBundle];
        v380._object = 0x80000001005828B0;
        v198._countAndFlagsBits = 0xD000000000000029;
        v198._object = 0x8000000100582880;
        v380._countAndFlagsBits = 0xD00000000000003BLL;
        v199._countAndFlagsBits = 0;
        v199._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v198, 0, v197, v199, v380);

        v200 = objc_allocWithZone(v191);

        v201 = String._bridgeToObjectiveC()();

        v202 = String._bridgeToObjectiveC()();

        v203 = [v200 initWithTitle:v201 detailText:v202 icon:0 contentLayout:2];

        *&v203[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_mediator] = v188;
        v204 = v203;

        v205 = &v204[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_passcode];
        v206 = *&v204[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_passcode];
        v207 = *&v204[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_passcode + 8];
        *v205 = 0;
        *(v205 + 1) = 0;
        sub_100179FB0(v206, v207);

        v208 = v352;
        v209 = *(v352 + 16);
        v210 = v353;
        v211 = v364;
        v209(v353, v347, v364);
        v212 = *(v208 + 56);
        v212(v210, 0, 1, v211);
        v213 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_device;
        swift_beginAccess();
        v101 = v204;
        sub_1000BBF40(v210, &v204[v213], &unk_1006BBCE0);
        swift_endAccess();
        v214 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_primaryItemPart;
        swift_beginAccess();
        v215 = &v101[v214];
        v216 = v346;
        sub_100179FC4(v346, v215);
        swift_endAccess();
        v217 = &v101[OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_mode];
        *v217 = 4;
        v217[4] = 0;

        if (FMIPDevice.isConsideredAccessory.getter())
        {
          v218 = v364;
          v209(v210, v347, v364);
          v212(v210, 0, 1, v218);
          v219 = sub_10022F104(0xD00000000000002ELL, 0x80000001005828F0, v210);
          v221 = v220;
          v223 = v222;
          v225 = v224;

          v226 = sub_10022E0A8(v219, v221, v223, v225, 0, 0);
          v228 = v227;

          swift_bridgeObjectRelease_n();
          sub_100012DF0(v210, &unk_1006BBCE0);
          sub_100418334(v226, v228);

          sub_100012DF0(v346, &qword_1006B07D0);
          v229 = v218;
        }

        else
        {
          sub_100012DF0(v216, &qword_1006B07D0);

          v229 = v364;
        }

        v365(v347, v229);
        goto LABEL_47;
      }

      if (!v188)
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v302 = v344;
      sub_100007204(&v67[v66], v344, &unk_1006BBCE0);
      v303 = v71;
      if (v69(v302, 1, v71) == 1)
      {
LABEL_71:
        __break(1u);
        return;
      }

      v304 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_primaryItemPart;
      swift_beginAccess();
      sub_100007204(&v67[v304], v354, &qword_1006B07D0);
      v305 = objc_allocWithZone(type metadata accessor for FMDeviceEditableMessageViewController());
      v306 = *(v189 + 56);
      v306(&v305[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_device], 1, 1, v71);
      v307 = OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_primaryItemPart;
      v308 = type metadata accessor for FMIPItem();
      (*(*(v308 - 8) + 56))(&v305[v307], 1, 1, v308);
      v309 = &v305[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_mode];
      *v309 = 0;
      v309[4] = 1;
      *&v305[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_tableViewheightConstraint] = 0;
      *&v305[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_style] = xmmword_10055C050;
      v310 = &v305[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_passcode];
      *v310 = 0;
      v310[1] = 0;
      v311 = &v305[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_phoneNumber];
      *v311 = 0;
      v311[1] = 0;
      v312 = &v305[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_style];
      v313 = qword_1006AEB88;
      swift_retain_n();
      v314 = v313 == -1;
      v315 = v189;
      if (!v314)
      {
        swift_once();
      }

      v316 = qword_1006D4348;
      v317 = qword_1006D4350;
      *v312 = qword_1006D4348;
      v312[1] = v317;
      v318 = OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_tableView;
      v319 = objc_allocWithZone(type metadata accessor for OBTableView());
      v320 = v316;
      *&v305[v318] = [v319 initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
      v321 = &v305[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_message];
      *v321 = 0;
      v321[1] = 0;
      *&v305[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_remainingCharsLabel] = 0;
      v305[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_hasAdjustedKeyboardHeight] = 0;
      v322 = &v305[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_originalHeight];
      *v322 = 0;
      v322[8] = 1;
      v323 = &v305[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_paddingHeight];
      *v323 = 0;
      v323[8] = 1;
      *&v305[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_keyboardMinY] = 0;
      v305[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_isKeyboardVisible] = 0;
      *&v305[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_keyboardWillChangeFrameObserver] = 0;
      *&v305[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_keyboardWillHideObserver] = 0;
      *&v305[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_nextButton] = 0;
      *&v305[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_mediator] = v188;

      v324 = String._bridgeToObjectiveC()();
      v325 = type metadata accessor for FMEditableMessageViewController();
      v372.receiver = v305;
      v372.super_class = v325;
      v326 = objc_msgSendSuper2(&v372, "initWithTitle:detailText:icon:contentLayout:", v324, 0, 0, 2);

      v327 = &v326[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_passcode];
      *v327 = 0;
      *(v327 + 1) = 0;
      v328 = v326;

      v329 = &v328[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_phoneNumber];
      *v329 = 0;
      *(v329 + 1) = 0;

      v330 = v353;
      v331 = v344;
      (*(v315 + 16))(v353, v344, v303);
      v306(v330, 0, 1, v303);
      v332 = OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_device;
      swift_beginAccess();
      v101 = v328;
      sub_1000BBF40(v330, &v328[v332], &unk_1006BBCE0);
      swift_endAccess();
      v333 = OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_primaryItemPart;
      swift_beginAccess();
      v334 = v354;
      sub_100179FC4(v354, &v101[v333]);
      swift_endAccess();
      v335 = &v101[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_mode];
      *v335 = 4;
      v335[4] = 0;
      v336 = [*&v101[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_tableView] heightAnchor];
      v337 = [v336 constraintEqualToConstant:1024.0];

      sub_100012DF0(v334, &qword_1006B07D0);
      v365(v331, v303);
      v264 = *&v101[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_tableViewheightConstraint];
      *&v101[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_tableViewheightConstraint] = v337;
LABEL_44:

LABEL_47:
      v99 = v369;
      goto LABEL_48;
    }

    v136 = *&v67[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_mediator];
    v137 = v354;
    if (v136)
    {
      v138 = v349;
      sub_100007204(&v67[v66], v349, &unk_1006BBCE0);
      if (v69(v138, 1, v71) != 1)
      {
        v139 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_primaryItemPart;
        swift_beginAccess();
        sub_100007204(&v67[v139], v137, &qword_1006B07D0);
        v140 = objc_opt_self();

        v141 = [v140 mainBundle];
        v377._object = 0x8000000100582940;
        v142._object = 0x8000000100582920;
        v377._countAndFlagsBits = 0xD00000000000002BLL;
        v142._countAndFlagsBits = 0xD000000000000019;
        v143._countAndFlagsBits = 0;
        v143._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v142, 0, v141, v143, v377);
        v368 = v136;

        v144 = v352;
        v145 = v353;
        (*(v352 + 16))(v353, v138, v71);
        v367 = *(v144 + 56);
        (v367)(v145, 0, 1, v71);
        v146 = sub_10022F104(0xD00000000000001DLL, 0x8000000100582970, v145);
        v148 = v147;
        v150 = v149;
        v152 = v151;

        sub_10022E0A8(v146, v148, v150, v152, 0, 0);

        swift_bridgeObjectRelease_n();
        sub_100012DF0(v145, &unk_1006BBCE0);
        v153 = objc_allocWithZone(type metadata accessor for FMDevicePasscodeViewController());
        v154 = String._bridgeToObjectiveC()();

        v155 = String._bridgeToObjectiveC()();

        v156 = v153;
        v99 = v369;
        v157 = [v156 initWithTitle:v154 detailText:v155 icon:0];

        *&v157[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_mediator] = v368;
        v101 = v157;

        (*(v144 + 32))(v145, v349, v71);
        (v367)(v145, 0, 1, v71);
        v158 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_device;
        swift_beginAccess();
        sub_1000BBF40(v145, &v101[v158], &unk_1006BBCE0);
        swift_endAccess();
        v159 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_primaryItemPart;
        swift_beginAccess();
        sub_1000BBF40(v354, &v101[v159], &qword_1006B07D0);
        swift_endAccess();
        v105 = &v101[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_mode];
        v106 = 4;
        goto LABEL_25;
      }

      goto LABEL_61;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v76 != 2)
  {
    if (v76 != 1)
    {
      return;
    }

    v77 = *&v67[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_mediator];
    if (v351)
    {
      if (v77)
      {
        v78 = &v67[v66];
        v79 = v67;
        v80 = v348;
        sub_100007204(v78, v348, &unk_1006BBCE0);
        if (v69(v80, 1, v71) != 1)
        {
          v81 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_primaryItemPart;
          swift_beginAccess();
          sub_100007204(&v79[v81], v354, &qword_1006B07D0);
          v82 = objc_opt_self();
          v363 = v77;

          v83 = [v82 mainBundle];
          v373._object = 0x8000000100582940;
          v84._object = 0x8000000100582920;
          v373._countAndFlagsBits = 0xD00000000000002BLL;
          v84._countAndFlagsBits = 0xD000000000000019;
          v85._countAndFlagsBits = 0;
          v85._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v84, 0, v83, v85, v373);

          v86 = v352;
          v87 = v353;
          (*(v352 + 16))(v353, v80, v71);
          v368 = *(v86 + 56);
          (v368)(v87, 0, 1, v71);
          v88 = sub_10022F104(0xD00000000000001DLL, 0x8000000100582970, v87);
          v90 = v89;
          v364 = v71;
          v92 = v91;
          v94 = v93;

          sub_10022E0A8(v88, v90, v92, v94, 0, 0);

          swift_bridgeObjectRelease_n();
          sub_100012DF0(v87, &unk_1006BBCE0);
          v95 = objc_allocWithZone(type metadata accessor for FMDevicePasscodeViewController());
          v96 = String._bridgeToObjectiveC()();

          v97 = String._bridgeToObjectiveC()();

          v98 = v95;
          v99 = v369;
          v100 = [v98 initWithTitle:v96 detailText:v97 icon:0];

          *&v100[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_mediator] = v363;
          v101 = v100;

          v102 = v364;
          (*(v86 + 32))(v87, v348, v364);
          (v368)(v87, 0, 1, v102);
          v103 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_device;
          swift_beginAccess();
          sub_1000BBF40(v87, &v101[v103], &unk_1006BBCE0);
          swift_endAccess();
          v104 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_primaryItemPart;
          swift_beginAccess();
          sub_1000BBF40(v354, &v101[v104], &qword_1006B07D0);
          swift_endAccess();
          v105 = &v101[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_mode];
          v106 = 1;
LABEL_25:
          *v105 = v106;
          v105[4] = 0;

          goto LABEL_48;
        }

        goto LABEL_62;
      }

      goto LABEL_59;
    }

    v230 = v352;
    if (!v77)
    {
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v231 = v350;
    sub_100007204(&v67[v66], v350, &unk_1006BBCE0);
    if (v69(v231, 1, v71) == 1)
    {
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v232 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_primaryItemPart;
    swift_beginAccess();
    sub_100007204(&v67[v232], v354, &qword_1006B07D0);
    v233 = objc_allocWithZone(type metadata accessor for FMDeviceEditableMessageViewController());
    v234 = *(v230 + 56);
    v234(&v233[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_device], 1, 1, v71);
    v235 = OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_primaryItemPart;
    v236 = type metadata accessor for FMIPItem();
    (*(*(v236 - 8) + 56))(&v233[v235], 1, 1, v236);
    v237 = &v233[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_mode];
    *v237 = 0;
    v237[4] = 1;
    *&v233[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_tableViewheightConstraint] = 0;
    *&v233[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_style] = xmmword_10055C050;
    v238 = &v233[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_passcode];
    *v238 = 0;
    v238[1] = 0;
    v239 = &v233[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_phoneNumber];
    *v239 = 0;
    v239[1] = 0;
    v240 = &v233[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_style];
    v241 = qword_1006AEB88;
    swift_retain_n();
    if (v241 != -1)
    {
      swift_once();
    }

    v242 = qword_1006D4348;
    v243 = qword_1006D4350;
    *v240 = qword_1006D4348;
    v240[1] = v243;
    v244 = OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_tableView;
    v245 = objc_allocWithZone(type metadata accessor for OBTableView());
    v246 = v242;
    *&v233[v244] = [v245 initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
    v247 = &v233[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_message];
    *v247 = 0;
    v247[1] = 0;
    *&v233[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_remainingCharsLabel] = 0;
    v233[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_hasAdjustedKeyboardHeight] = 0;
    v248 = &v233[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_originalHeight];
    *v248 = 0;
    v248[8] = 1;
    v249 = &v233[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_paddingHeight];
    *v249 = 0;
    v249[8] = 1;
    *&v233[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_keyboardMinY] = 0;
    v233[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_isKeyboardVisible] = 0;
    *&v233[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_keyboardWillChangeFrameObserver] = 0;
    *&v233[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_keyboardWillHideObserver] = 0;
    *&v233[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_nextButton] = 0;
    *&v233[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_mediator] = v77;

    v250 = String._bridgeToObjectiveC()();
    v251 = type metadata accessor for FMEditableMessageViewController();
    v370.receiver = v233;
    v370.super_class = v251;
    v252 = objc_msgSendSuper2(&v370, "initWithTitle:detailText:icon:contentLayout:", v250, 0, 0, 2);

    v253 = &v252[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_passcode];
    *v253 = 0;
    *(v253 + 1) = 0;
    v254 = v252;

    v255 = &v254[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_phoneNumber];
    *v255 = 0;
    *(v255 + 1) = 0;

    v256 = v353;
    v257 = v350;
    (*(v230 + 16))(v353, v350, v71);
    v234(v256, 0, 1, v71);
    v258 = OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_device;
    swift_beginAccess();
    v101 = v254;
    sub_1000BBF40(v256, &v254[v258], &unk_1006BBCE0);
    swift_endAccess();
    v259 = OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_primaryItemPart;
    swift_beginAccess();
    v260 = v354;
    sub_100179FC4(v354, &v101[v259]);
    swift_endAccess();
    v261 = &v101[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_mode];
    *v261 = 1;
    v261[4] = 0;
    v262 = [*&v101[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_tableView] heightAnchor];
    v263 = [v262 constraintEqualToConstant:1024.0];

    sub_100012DF0(v260, &qword_1006B07D0);
    v365(v257, v71);
    v264 = *&v101[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_tableViewheightConstraint];
    *&v101[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_tableViewheightConstraint] = v263;
    goto LABEL_44;
  }

  if ((v361 & 1) == 0)
  {
    v160 = *&v67[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_mediator];
    v363 = v160;
    if (v351)
    {
      if (v160)
      {
        v161 = &v67[v66];
        v162 = v67;
        v163 = v343;
        sub_100007204(v161, v343, &unk_1006BBCE0);
        v164 = v69(v163, 1, v71);
        v165 = v354;
        if (v164 != 1)
        {
          v166 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_primaryItemPart;
          swift_beginAccess();
          sub_100007204(&v162[v166], v165, &qword_1006B07D0);
          v167 = objc_opt_self();

          v168 = [v167 mainBundle];
          v378._object = 0x8000000100582940;
          v169._object = 0x8000000100582920;
          v378._countAndFlagsBits = 0xD00000000000002BLL;
          v169._countAndFlagsBits = 0xD000000000000019;
          v170._countAndFlagsBits = 0;
          v170._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v169, 0, v168, v170, v378);

          v171 = v352;
          v172 = v353;
          (*(v352 + 16))(v353, v163, v71);
          v368 = *(v171 + 56);
          (v368)(v172, 0, 1, v71);
          v173 = sub_10022F104(0xD00000000000001DLL, 0x8000000100582970, v172);
          v175 = v174;
          v364 = v71;
          v177 = v176;
          v179 = v178;

          sub_10022E0A8(v173, v175, v177, v179, 0, 0);

          swift_bridgeObjectRelease_n();
          sub_100012DF0(v172, &unk_1006BBCE0);
          v180 = objc_allocWithZone(type metadata accessor for FMDevicePasscodeViewController());
          v181 = String._bridgeToObjectiveC()();

          v182 = String._bridgeToObjectiveC()();

          v183 = v180;
          v99 = v369;
          v184 = [v183 initWithTitle:v181 detailText:v182 icon:0];

          *&v184[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_mediator] = v363;
          v101 = v184;

          v185 = v364;
          (*(v171 + 32))(v172, v343, v364);
          (v368)(v172, 0, 1, v185);
          v186 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_device;
          swift_beginAccess();
          sub_1000BBF40(v172, &v101[v186], &unk_1006BBCE0);
          swift_endAccess();
          v187 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_primaryItemPart;
          swift_beginAccess();
          sub_1000BBF40(v354, &v101[v187], &qword_1006B07D0);
          swift_endAccess();
          v105 = &v101[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_mode];
          v106 = 2;
          goto LABEL_25;
        }

        goto LABEL_68;
      }

      goto LABEL_64;
    }

    if (!v160)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    sub_100007204(&v67[v66], v362, &unk_1006BBCE0);
    if (v69(v75, 1, v71) == 1)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v265 = v71;
    v266 = type metadata accessor for FMDevicePhoneNumberViewController();
    v267 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_primaryItemPart;
    swift_beginAccess();
    sub_100007204(&v67[v267], v345, &qword_1006B07D0);
    v268 = objc_opt_self();

    v269 = [v268 mainBundle];
    v381._object = 0x8000000100582840;
    v270._countAndFlagsBits = 0xD00000000000001FLL;
    v270._object = 0x8000000100582820;
    v381._countAndFlagsBits = 0xD000000000000031;
    v271._countAndFlagsBits = 0;
    v271._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v270, 0, v269, v271, v381);

    v272 = [v268 mainBundle];
    v382._object = 0x80000001005828B0;
    v273._countAndFlagsBits = 0xD000000000000029;
    v273._object = 0x8000000100582880;
    v382._countAndFlagsBits = 0xD00000000000003BLL;
    v274._countAndFlagsBits = 0;
    v274._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v273, 0, v272, v274, v382);

    v275 = objc_allocWithZone(v266);

    v276 = String._bridgeToObjectiveC()();

    v277 = String._bridgeToObjectiveC()();

    v278 = [v275 initWithTitle:v276 detailText:v277 icon:0 contentLayout:2];

    *&v278[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_mediator] = v160;
    v279 = v278;

    v280 = &v279[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_passcode];
    v281 = *&v279[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_passcode];
    v282 = *&v279[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_passcode + 8];
    *v280 = 0;
    *(v280 + 1) = 0;
    sub_100179FB0(v281, v282);

    v283 = v352;
    v368 = *(v352 + 16);
    v284 = v353;
    v285 = v362;
    v368(v353, v362, v71);
    v286 = *(v283 + 56);
    v286(v284, 0, 1, v71);
    v287 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_device;
    swift_beginAccess();
    v101 = v279;
    sub_1000BBF40(v284, &v279[v287], &unk_1006BBCE0);
    swift_endAccess();
    v288 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_primaryItemPart;
    swift_beginAccess();
    v289 = v345;
    sub_100179FC4(v345, &v101[v288]);
    swift_endAccess();
    v290 = &v101[OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_mode];
    *v290 = 2;
    v290[4] = 0;

    FMIPDevice.isConsideredAccessory.getter();
    v368(v284, v285, v71);
    v286(v284, 0, 1, v71);
    v291 = sub_10022F104(0xD00000000000002ELL, 0x80000001005828F0, v284);
    v293 = v292;
    v295 = v294;
    v297 = v296;

    v298 = sub_10022E0A8(v291, v293, v295, v297, 0, 0);
    v300 = v299;

    swift_bridgeObjectRelease_n();
    sub_100012DF0(v284, &unk_1006BBCE0);
    v301 = v300;
    v99 = v369;
    sub_100418334(v298, v301);

    sub_100012DF0(v289, &qword_1006B07D0);
    v365(v285, v265);
LABEL_48:
    v338 = [v99 navigationController];
    if (v338)
    {
      v339 = v338;
      [v338 pushViewController:v101 animated:1];

      v101 = v339;
    }

    goto LABEL_50;
  }

  v368 = objc_opt_self();
  v107 = [v368 mainBundle];
  v374._object = 0x80000001005827A0;
  v108._countAndFlagsBits = 0xD000000000000030;
  v108._object = 0x8000000100582760;
  v374._countAndFlagsBits = 0xD000000000000042;
  v109._countAndFlagsBits = 0;
  v109._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v108, 0, v107, v109, v374);

  v110 = v353;
  sub_100007204(&v67[v66], v353, &unk_1006BBCE0);
  v111 = sub_10022F104(0xD00000000000002FLL, 0x80000001005827F0, v110);
  v113 = v112;
  v115 = v114;
  v117 = v116;

  sub_10022E0A8(v111, v113, v115, v117, 0, 0);

  swift_bridgeObjectRelease_n();
  sub_100012DF0(v110, &unk_1006BBCE0);
  v118 = String._bridgeToObjectiveC()();

  v119 = String._bridgeToObjectiveC()();

  v101 = [objc_opt_self() alertControllerWithTitle:v118 message:v119 preferredStyle:1];

  v120 = v368;
  v121 = [v368 mainBundle];
  v122._countAndFlagsBits = 0xD000000000000013;
  v375._object = 0x800000010057B8F0;
  v122._object = 0x800000010057B8D0;
  v375._countAndFlagsBits = 0xD000000000000025;
  v123._countAndFlagsBits = 0;
  v123._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v122, 0, v121, v123, v375);

  v124 = String._bridgeToObjectiveC()();

  v125 = objc_opt_self();
  v126 = [v125 actionWithTitle:v124 style:1 handler:0];

  [v101 addAction:v126];
  v127 = [v120 mainBundle];
  v376._object = 0x8000000100579B60;
  v128._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v128._object = 0xEF454C5449545F4ELL;
  v376._countAndFlagsBits = 0xD000000000000021;
  v129._countAndFlagsBits = 0;
  v129._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v128, 0, v127, v129, v376);

  v130 = swift_allocObject();
  *(v130 + 16) = v364 & 1;
  *(v130 + 17) = v351 & 1;
  v131 = v369;
  *(v130 + 24) = v369;
  v132 = v131;
  v133 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1003C2040;
  aBlock[5] = v130;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  aBlock[3] = &unk_10063B038;
  v134 = _Block_copy(aBlock);

  v135 = [v125 actionWithTitle:v133 style:0 handler:v134];
  _Block_release(v134);

  [v101 addAction:v135];
  [v132 presentViewController:v101 animated:1 completion:0];
LABEL_50:
}

uint64_t sub_1003BF608()
{
  v1 = *v0;
  v2 = 0x65646F4D6B636F4CLL;
  if (*v0 != 1)
  {
    v2 = 0x4D6E776F6E6B6E55;
  }

  if (v1 == 2)
  {
    v2 = 0x65646F4D74736F4CLL;
  }

  if (v1 == 4)
  {
    return 0x646F4D6573617245;
  }

  else
  {
    return v2;
  }
}

BOOL sub_1003BF6D4(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_1003BF704@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1003BF730@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_1003BF7FC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_1000806C0(a1);

  *a2 = v3;
  return result;
}

NSString *sub_1003BF83C()
{
  qword_1006BD580 = UIFontTextStyleSubheadline;
  *algn_1006BD588 = UIFontTextStyleSubheadline;
  xmmword_1006BD590 = xmmword_10055EE70;
  qword_1006BD5A0 = 0x4024000000000000;
  v0 = UIFontTextStyleSubheadline;

  return v0;
}

void sub_1003BF970(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPDevice();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMIPDeviceImageCacheRequest();
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for FMIPDeviceImageSize();
  v8 = *(v37 - 8);
  v9 = __chkstk_darwin(v37);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v34 - v12;
  v14 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v14 - 8);
  v16 = &v34 - v15;
  v17 = type metadata accessor for FMDeviceActionsViewController();
  v44.receiver = v2;
  v44.super_class = v17;
  objc_msgSendSuper2(&v44, "viewWillAppear:", a1 & 1);
  v18 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_mediator;
  v19 = *&v2[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_mediator];
  if (!v19)
  {
    __break(1u);
    goto LABEL_6;
  }

  v20 = *(v19 + 24);
  type metadata accessor for FMDevicesSubscription();
  v21 = swift_allocObject();
  *(v21 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();

  UUID.init()();
  *(v21 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_10063AF48;
  swift_unknownObjectWeakAssign();
  v22 = *(v20 + 16);

  os_unfair_lock_lock((v22 + 24));
  sub_10000E7C0((v22 + 16));
  os_unfair_lock_unlock((v22 + 24));

  *&v2[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_deviceSubscription] = v21;

  if (!*&v2[v18])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v23 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_device;
  swift_beginAccess();
  sub_100007204(&v2[v23], v16, &unk_1006BBCE0);
  v24 = v41;
  v25 = v42;
  if ((*(v41 + 48))(v16, 1, v42) != 1)
  {
    v26 = v37;
    (*(v8 + 104))(v13, enum case for FMIPDeviceImageSize.infobox(_:), v37);
    (*(v24 + 16))(v38, v16, v25);
    (*(v8 + 16))(v11, v13, v26);
    v27 = objc_opt_self();
    v35 = v16;
    v28 = v13;
    v29 = v24;
    v30 = v27;

    v31 = [v30 mainScreen];
    [v31 scale];

    v32 = v36;
    FMIPDeviceImageCacheRequest.init(device:size:scale:)();
    dispatch thunk of FMImageCache.cachedImage(for:completion:)();
    (*(v39 + 8))(v32, v40);

    v33 = v43;
    (*(v8 + 8))(v28, v26);
    (*(v29 + 8))(v35, v25);
    [*&v2[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_deviceImageView] setImage:v33];

    return;
  }

LABEL_7:
  __break(1u);
}

id sub_1003BFEC0(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for FMDeviceActionsViewController();
  result = objc_msgSendSuper2(&v6, "viewWillDisappear:", a1 & 1);
  if (*&v1[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_deviceSubscription])
  {
    v4 = *&v1[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_mediator];
    if (v4)
    {
      v5 = *(*(v4 + 24) + 16);

      os_unfair_lock_lock((v5 + 24));
      sub_10008FB6C((v5 + 16));
      os_unfair_lock_unlock((v5 + 24));
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1003C0030(uint64_t a1, char a2, char a3, char *a4)
{
  v7 = sub_10007EBC0(&qword_1006B07D0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v186 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v186 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v186 - v15;
  __chkstk_darwin(v14);
  v18 = &v186 - v17;
  v19 = sub_10007EBC0(&unk_1006BBCE0);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v186 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v186 - v24;
  v26 = __chkstk_darwin(v23);
  v27 = __chkstk_darwin(v26);
  v193 = &v186 - v28;
  __chkstk_darwin(v27);
  v31 = &v186 - v30;
  v32 = *&a4[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_mediator];
  v194 = v32;
  v192 = a4;
  if ((a2 & 1) == 0)
  {
    if ((a3 & 1) == 0)
    {
      if (v32)
      {
        v123 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_device;
        swift_beginAccess();
        sub_100007204(&a4[v123], v22, &unk_1006BBCE0);
        v124 = type metadata accessor for FMIPDevice();
        v125 = a4;
        v126 = *(v124 - 8);
        v127 = *(v126 + 48);
        v191 = v124;
        if (v127(v22, 1) != 1)
        {
          v189 = v22;
          v128 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_primaryItemPart;
          swift_beginAccess();
          sub_100007204(&v125[v128], v10, &qword_1006B07D0);
          v129 = v125[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_mode + 4];
          v190 = v10;
          if ((v129 & 1) == 0)
          {
            LODWORD(v188) = *&v125[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_mode];
            v130 = type metadata accessor for FMDevicePhoneNumberViewController();
            v131 = objc_opt_self();
            v132 = v194;

            v133 = [v131 mainBundle];
            v199._object = 0x8000000100582840;
            v134._countAndFlagsBits = 0xD00000000000001FLL;
            v134._object = 0x8000000100582820;
            v199._countAndFlagsBits = 0xD000000000000031;
            v135._countAndFlagsBits = 0;
            v135._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v134, 0, v133, v135, v199);

            v136 = [v131 mainBundle];
            v200._object = 0x80000001005828B0;
            v137._countAndFlagsBits = 0xD000000000000029;
            v137._object = 0x8000000100582880;
            v200._countAndFlagsBits = 0xD00000000000003BLL;
            v138._countAndFlagsBits = 0;
            v138._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v137, 0, v136, v138, v200);

            v139 = objc_allocWithZone(v130);

            v140 = String._bridgeToObjectiveC()();

            v141 = String._bridgeToObjectiveC()();

            v142 = [v139 initWithTitle:v140 detailText:v141 icon:0 contentLayout:2];

            *&v142[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_mediator] = v132;
            v143 = v142;

            v144 = &v143[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_passcode];
            v145 = *&v143[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_passcode];
            v146 = *&v143[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_passcode + 8];
            *v144 = 0;
            *(v144 + 1) = 0;
            sub_100179FB0(v145, v146);

            v147 = *(v126 + 16);
            v148 = v193;
            v149 = v189;
            v150 = v191;
            v147(v193, v189, v191);
            v151 = *(v126 + 56);
            v151(v148, 0, 1, v150);
            v152 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_device;
            swift_beginAccess();
            v55 = v143;
            sub_1000BBF40(v148, &v143[v152], &unk_1006BBCE0);
            swift_endAccess();
            v153 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_primaryItemPart;
            swift_beginAccess();
            v154 = &v55[v153];
            v155 = v188;
            sub_100179FC4(v190, v154);
            swift_endAccess();
            v156 = &v55[OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_mode];
            *v156 = v155;
            v156[4] = 0;

            if ((FMIPDevice.isConsideredAccessory.getter() & 1) != 0 || v155 == 2)
            {
              v170 = v193;
              v171 = v191;
              v147(v193, v149, v191);
              v157 = v171;
              v151(v170, 0, 1, v171);
              v172 = sub_10022F104(0xD00000000000002ELL, 0x80000001005828F0, v170);
              v174 = v173;
              v176 = v175;
              v178 = v177;

              v179 = sub_10022E0A8(v172, v174, v176, v178, 0, 0);
              v181 = v180;

              swift_bridgeObjectRelease_n();
              sub_100012DF0(v170, &unk_1006BBCE0);
              sub_100418334(v179, v181);

              sub_100012DF0(v190, &qword_1006B07D0);
            }

            else
            {
              sub_100012DF0(v190, &qword_1006B07D0);

              v157 = v191;
            }

            (*(v126 + 8))(v149, v157);
            goto LABEL_29;
          }

LABEL_43:
          __break(1u);
          return;
        }

        goto LABEL_39;
      }

      goto LABEL_35;
    }

    if (v32)
    {
      v62 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_device;
      swift_beginAccess();
      sub_100007204(&a4[v62], v25, &unk_1006BBCE0);
      v63 = type metadata accessor for FMIPDevice();
      v64 = *(v63 - 8);
      if ((*(v64 + 48))(v25, 1, v63) != 1)
      {
        v190 = v64;
        v65 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_primaryItemPart;
        swift_beginAccess();
        sub_100007204(&a4[v65], v13, &qword_1006B07D0);
        v66 = a4[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_mode + 4];
        v191 = v13;
        if ((v66 & 1) == 0)
        {
          LODWORD(v189) = *&a4[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_mode];
          v67 = objc_opt_self();

          v68 = [v67 mainBundle];
          v196._object = 0x8000000100582940;
          v69._object = 0x8000000100582920;
          v196._countAndFlagsBits = 0xD00000000000002BLL;
          v69._countAndFlagsBits = 0xD000000000000019;
          v70._countAndFlagsBits = 0;
          v70._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v69, 0, v68, v70, v196);

          v71 = v190;
          v72 = *(v190 + 2);
          v73 = v193;
          v187 = v63;
          v72(v193, v25, v63);
          v188 = *(v71 + 56);
          v188(v73, 0, 1, v63);
          v74 = sub_10022F104(0xD00000000000001DLL, 0x8000000100582970, v73);
          v76 = v75;
          v78 = v77;
          v80 = v79;

          sub_10022E0A8(v74, v76, v78, v80, 0, 0);

          swift_bridgeObjectRelease_n();
          sub_100012DF0(v73, &unk_1006BBCE0);
          v81 = objc_allocWithZone(type metadata accessor for FMDevicePasscodeViewController());
          v82 = String._bridgeToObjectiveC()();

          v83 = String._bridgeToObjectiveC()();

          v84 = [v81 initWithTitle:v82 detailText:v83 icon:0];

          *&v84[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_mediator] = v194;
          v55 = v84;

          v85 = v25;
          v86 = v187;
          (*(v71 + 32))(v73, v85, v187);
          v188(v73, 0, 1, v86);
          v87 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_device;
          swift_beginAccess();
          sub_1000BBF40(v73, &v55[v87], &unk_1006BBCE0);
          swift_endAccess();
          v88 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_primaryItemPart;
          swift_beginAccess();
          sub_1000BBF40(v191, &v55[v88], &qword_1006B07D0);
          swift_endAccess();
          v60 = &v55[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_mode];
          v61 = v189;
          goto LABEL_12;
        }

        goto LABEL_41;
      }

      goto LABEL_37;
    }

    goto LABEL_33;
  }

  if ((a3 & 1) == 0)
  {
    v191 = v29;
    if (v32)
    {
      v89 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_device;
      swift_beginAccess();
      v90 = v191;
      sub_100007204(&a4[v89], v191, &unk_1006BBCE0);
      v91 = type metadata accessor for FMIPDevice();
      v190 = *(v91 - 8);
      if ((*(v190 + 6))(v90, 1, v91) != 1)
      {
        v189 = v91;
        v92 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_primaryItemPart;
        swift_beginAccess();
        sub_100007204(&a4[v92], v16, &qword_1006B07D0);
        if ((a4[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_mode + 4] & 1) == 0)
        {
          v93 = v16;
          LODWORD(v188) = *&a4[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_mode];
          v94 = type metadata accessor for FMDevicePhoneNumberViewController();
          v95 = objc_opt_self();
          v96 = v194;

          v97 = [v95 mainBundle];
          v197._object = 0x8000000100582840;
          v98._countAndFlagsBits = 0xD00000000000001FLL;
          v98._object = 0x8000000100582820;
          v197._countAndFlagsBits = 0xD000000000000031;
          v99._countAndFlagsBits = 0;
          v99._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v98, 0, v97, v99, v197);

          v100 = [v95 mainBundle];
          v198._object = 0x80000001005828B0;
          v101._countAndFlagsBits = 0xD000000000000029;
          v101._object = 0x8000000100582880;
          v198._countAndFlagsBits = 0xD00000000000003BLL;
          v102._countAndFlagsBits = 0;
          v102._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v101, 0, v100, v102, v198);

          v103 = objc_allocWithZone(v94);

          v104 = String._bridgeToObjectiveC()();

          v105 = String._bridgeToObjectiveC()();

          v106 = [v103 initWithTitle:v104 detailText:v105 icon:0 contentLayout:2];

          *&v106[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_mediator] = v96;
          v107 = v106;

          v108 = &v107[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_passcode];
          v109 = *&v107[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_passcode];
          v110 = *&v107[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_passcode + 8];
          *v108 = 0;
          *(v108 + 1) = 0;
          sub_100179FB0(v109, v110);

          v111 = v190;
          v112 = *(v190 + 2);
          v113 = v193;
          v114 = v189;
          v112(v193, v191, v189);
          v115 = *(v111 + 56);
          v115(v113, 0, 1, v114);
          v116 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_device;
          swift_beginAccess();
          v55 = v107;
          sub_1000BBF40(v113, &v107[v116], &unk_1006BBCE0);
          swift_endAccess();
          v117 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_primaryItemPart;
          swift_beginAccess();
          v118 = &v55[v117];
          v119 = v188;
          sub_100179FC4(v16, v118);
          swift_endAccess();
          v120 = &v55[OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_mode];
          *v120 = v119;
          v120[4] = 0;

          if ((FMIPDevice.isConsideredAccessory.getter() & 1) != 0 || v119 == 2)
          {
            v158 = v193;
            v122 = v191;
            v159 = v189;
            v112(v193, v191, v189);
            v121 = v159;
            v115(v158, 0, 1, v159);
            v160 = sub_10022F104(0xD00000000000002ELL, 0x80000001005828F0, v158);
            v162 = v161;
            v164 = v163;
            v166 = v165;

            v167 = sub_10022E0A8(v160, v162, v164, v166, 0, 0);
            v169 = v168;

            swift_bridgeObjectRelease_n();
            sub_100012DF0(v158, &unk_1006BBCE0);
            sub_100418334(v167, v169);

            sub_100012DF0(v93, &qword_1006B07D0);
          }

          else
          {
            sub_100012DF0(v16, &qword_1006B07D0);

            v121 = v189;
            v122 = v191;
          }

          (*(v190 + 1))(v122, v121);
          goto LABEL_29;
        }

        goto LABEL_42;
      }

      goto LABEL_38;
    }

    goto LABEL_34;
  }

  if (!v32)
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v33 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_device;
  swift_beginAccess();
  sub_100007204(&a4[v33], v31, &unk_1006BBCE0);
  v34 = type metadata accessor for FMIPDevice();
  v35 = a4;
  v36 = *(v34 - 8);
  if ((*(v36 + 48))(v31, 1, v34) == 1)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v37 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_primaryItemPart;
  swift_beginAccess();
  sub_100007204(&v35[v37], v18, &qword_1006B07D0);
  v38 = v35[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_mode + 4];
  v191 = v18;
  if (v38)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  LODWORD(v190) = *&v35[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_mode];
  v39 = objc_opt_self();

  v40 = [v39 mainBundle];
  v195._object = 0x8000000100582940;
  v41._object = 0x8000000100582920;
  v195._countAndFlagsBits = 0xD00000000000002BLL;
  v41._countAndFlagsBits = 0xD000000000000019;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v41, 0, v40, v42, v195);

  v43 = v193;
  (*(v36 + 16))(v193, v31, v34);
  v189 = *(v36 + 56);
  v189(v43, 0, 1, v34);
  v44 = sub_10022F104(0xD00000000000001DLL, 0x8000000100582970, v43);
  v46 = v45;
  v48 = v47;
  v188 = v34;
  v50 = v49;

  sub_10022E0A8(v44, v46, v48, v50, 0, 0);

  swift_bridgeObjectRelease_n();
  sub_100012DF0(v43, &unk_1006BBCE0);
  v51 = objc_allocWithZone(type metadata accessor for FMDevicePasscodeViewController());
  v52 = String._bridgeToObjectiveC()();

  v53 = String._bridgeToObjectiveC()();

  v54 = [v51 initWithTitle:v52 detailText:v53 icon:0];

  *&v54[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_mediator] = v194;
  v55 = v54;

  v56 = v31;
  v57 = v188;
  (*(v36 + 32))(v43, v56, v188);
  v189(v43, 0, 1, v57);
  v58 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_device;
  swift_beginAccess();
  sub_1000BBF40(v43, &v55[v58], &unk_1006BBCE0);
  swift_endAccess();
  v59 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_primaryItemPart;
  swift_beginAccess();
  sub_1000BBF40(v191, &v55[v59], &qword_1006B07D0);
  swift_endAccess();
  v60 = &v55[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_mode];
  v61 = v190;
LABEL_12:
  *v60 = v61;
  v60[4] = 0;

LABEL_29:
  v182 = v192;
  v183 = v55;
  v184 = [v182 navigationController];
  if (v184)
  {
    v185 = v184;
    [v184 pushViewController:v183 animated:1];
  }
}

id sub_1003C1554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_mediator] = 0;
  v10 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_device;
  v11 = type metadata accessor for FMIPDevice();
  (*(*(v11 - 8) + 56))(&v7[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_primaryItemPart;
  v13 = type metadata accessor for FMIPItem();
  (*(*(v13 - 8) + 56))(&v7[v12], 1, 1, v13);
  v14 = &v7[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_mode];
  *v14 = 0;
  v14[4] = 1;
  v15 = &v7[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_style];
  if (qword_1006AEC50 != -1)
  {
    swift_once();
  }

  v17 = qword_1006BD580;
  v16 = *algn_1006BD588;
  v18 = qword_1006BD5A0;
  v19 = xmmword_1006BD590;
  *v15 = qword_1006BD580;
  *(v15 + 1) = v16;
  *(v15 + 1) = v19;
  *(v15 + 4) = v18;
  v20 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_deviceImageView;
  v21 = objc_allocWithZone(SFAdjustedImageView);
  v22 = v17;
  v23 = v16;
  *&v7[v20] = [v21 init];
  v24 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_deviceNameLabel;
  *&v7[v24] = [objc_allocWithZone(UILabel) init];
  v25 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_deviceOwnerLabel;
  *&v7[v25] = [objc_allocWithZone(UILabel) init];
  v26 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_performButton;
  *&v7[v26] = [objc_opt_self() boldButton];
  *&v7[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_deviceSubscription] = 0;
  v27 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v28 = 0;
    if (a6)
    {
      goto LABEL_5;
    }

LABEL_7:
    v29 = 0;
    goto LABEL_8;
  }

  v28 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_7;
  }

LABEL_5:
  v29 = String._bridgeToObjectiveC()();

LABEL_8:
  v33.receiver = v7;
  v33.super_class = type metadata accessor for FMDeviceActionsViewController();
  v30 = objc_msgSendSuper2(&v33, "initWithTitle:detailText:symbolName:contentLayout:", v27, v28, v29, a7);

  return v30;
}

id sub_1003C18B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_mediator] = 0;
  v10 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_device;
  v11 = type metadata accessor for FMIPDevice();
  (*(*(v11 - 8) + 56))(&v6[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_primaryItemPart;
  v13 = type metadata accessor for FMIPItem();
  (*(*(v13 - 8) + 56))(&v6[v12], 1, 1, v13);
  v14 = &v6[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_mode];
  *v14 = 0;
  v14[4] = 1;
  v15 = &v6[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_style];
  if (qword_1006AEC50 != -1)
  {
    swift_once();
  }

  v16 = qword_1006BD580;
  v17 = *algn_1006BD588;
  v18 = qword_1006BD5A0;
  v19 = xmmword_1006BD590;
  *v15 = qword_1006BD580;
  *(v15 + 1) = v17;
  *(v15 + 1) = v19;
  *(v15 + 4) = v18;
  v20 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_deviceImageView;
  v21 = objc_allocWithZone(SFAdjustedImageView);
  v22 = v16;
  v23 = v17;
  *&v6[v20] = [v21 init];
  v24 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_deviceNameLabel;
  *&v6[v24] = [objc_allocWithZone(UILabel) init];
  v25 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_deviceOwnerLabel;
  *&v6[v25] = [objc_allocWithZone(UILabel) init];
  v26 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_performButton;
  *&v6[v26] = [objc_opt_self() boldButton];
  *&v6[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_deviceSubscription] = 0;
  v27 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v28 = String._bridgeToObjectiveC()();
  }

  else
  {
    v28 = 0;
  }

  v31.receiver = v6;
  v31.super_class = type metadata accessor for FMDeviceActionsViewController();
  v29 = objc_msgSendSuper2(&v31, "initWithTitle:detailText:icon:contentLayout:", v27, v28, a5, a6);

  return v29;
}

id sub_1003C1BD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMDeviceActionsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMDeviceActionsViewController()
{
  result = qword_1006BD5E8;
  if (!qword_1006BD5E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003C1D44()
{
  sub_100096CC0(319, &qword_1006AFC78, &type metadata accessor for FMIPDevice);
  if (v0 <= 0x3F)
  {
    sub_100096CC0(319, &qword_1006BA400, &type metadata accessor for FMIPItem);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1003C1E9C()
{
  result = qword_1006BD5F8;
  if (!qword_1006BD5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BD5F8);
  }

  return result;
}

unint64_t sub_1003C1EF4()
{
  result = qword_1006BD600;
  if (!qword_1006BD600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BD600);
  }

  return result;
}

unint64_t sub_1003C1F4C()
{
  result = qword_1006BD608;
  if (!qword_1006BD608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BD608);
  }

  return result;
}

unint64_t sub_1003C1FA4()
{
  result = qword_1006BD610;
  if (!qword_1006BD610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BD610);
  }

  return result;
}

uint64_t sub_1003C1FF8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003C2058()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 setAccessibilityIdentifier:v1];

  if (qword_1006AEA28 != -1)
  {
    swift_once();
  }

  v2 = qword_1006D3C40;
  v3 = *&qword_1006D3C60;
  v4 = *&v0[OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_textField];
  v5 = [v4 superview];
  if (!v5)
  {
    v6 = objc_opt_self();
    v7 = [v6 preferredFontForTextStyle:v2];
    [v4 setFont:v7];

    [v4 setAdjustsFontForContentSizeCategory:1];
    [v4 setKeyboardType:7];
    [v4 setTextContentType:UITextContentTypeEmailAddress];
    [v4 setAutocorrectionType:1];
    [v4 setTextAlignment:4];
    [v4 setClearButtonMode:1];
    [v4 setDelegate:v0];
    [v4 addTarget:v0 action:"textFieldDidChangeWithSender:" forControlEvents:0x20000];
    v8 = String._bridgeToObjectiveC()();
    [v4 setAccessibilityIdentifier:v8];

    v9 = [v0 contentView];
    [v9 addSubview:v4];

    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v29 = objc_opt_self();
    sub_10007EBC0(&qword_1006AFC30);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1005521F0;
    v11 = [v4 centerYAnchor];
    v12 = [v0 centerYAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];

    *(v10 + 32) = v13;
    v14 = [v4 leadingAnchor];
    v15 = [v0 leadingAnchor];
    [v0 layoutMargins];
    v17 = [v14 constraintEqualToAnchor:v15 constant:v16];

    *(v10 + 40) = v17;
    v18 = [v4 trailingAnchor];
    v19 = [v0 trailingAnchor];
    [v0 layoutMargins];
    v21 = [v18 constraintEqualToAnchor:v19 constant:-v20];

    *(v10 + 48) = v21;
    v22 = [v4 heightAnchor];
    v23 = *&qword_1006D3C58;
    v24 = [v6 preferredFontForTextStyle:v2];
    [v24 lineHeight];
    v26 = v25;

    v27 = [v22 constraintEqualToConstant:v3 + v3 + v23 * v26 - (v3 + v3)];
    *(v10 + 56) = v27;
    sub_10002B27C();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v29 activateConstraints:isa];
    v5 = isa;
  }

  sub_1003C2524();
}

void sub_1003C2524()
{
  if (qword_1006AEA28 != -1)
  {
    swift_once();
  }

  v2 = qword_1006D3C48;
  v1 = qword_1006D3C50;
  v3 = *&qword_1006D3C60;
  v4 = unk_1006D3C68;
  v5 = *&qword_1006D3C70;
  v6 = unk_1006D3C78;
  v7 = *&v0[OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_placeHolderLabel];
  v8 = [v7 superview];
  if (!v8)
  {
    v9 = objc_opt_self();
    v10 = [v9 preferredFontForTextStyle:v2];
    [v7 setFont:v10];

    [v7 setNumberOfLines:0];
    [v7 setTextColor:v1];
    [v7 setTextAlignment:4];
    [v7 setAdjustsFontForContentSizeCategory:1];
    [v0 addSubview:v7];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    if (v0[OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_textViewIsEnabled])
    {
      v5 = v5 + v6;
    }

    v11 = objc_opt_self();
    sub_10007EBC0(&qword_1006AFC30);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1005521F0;
    v13 = [v7 centerYAnchor];
    v14 = [v0 centerYAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    *(v12 + 32) = v15;
    v16 = [v7 leadingAnchor];
    v17 = [v0 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:v5];

    *(v12 + 40) = v18;
    v19 = [v7 trailingAnchor];
    v20 = [v0 trailingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20 constant:-v4];

    *(v12 + 48) = v21;
    v22 = [v7 heightAnchor];
    v23 = *&qword_1006D3C58;
    v24 = [v9 preferredFontForTextStyle:qword_1006D3C40];
    [v24 lineHeight];
    v26 = v25;

    v27 = [v22 constraintEqualToConstant:v3 + v3 + v23 * v26 - (v3 + v3)];
    *(v12 + 56) = v27;
    sub_10002B27C();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v11 activateConstraints:isa];
    v8 = isa;
  }
}

id sub_1003C28F0()
{
  if (*(v0 + OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_textViewIsEnabled) == 1)
  {
    v1 = [*(*(v0 + OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_textView) + OBJC_IVAR____TtC6FindMy17FMMessageTextView_textView) text];
    if (v1)
    {
LABEL_3:
      v2 = v1;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v3 = String.characterCount.getter();

      v4 = v3 > 0;
      goto LABEL_6;
    }
  }

  else
  {
    v1 = [*(v0 + OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_textField) text];
    if (v1)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = *(v0 + OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_placeHolderLabel);

  return [v5 setHidden:v4];
}

id sub_1003C2E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_textField;
  *&v3[v6] = [objc_allocWithZone(UITextField) init];
  v7 = OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_textView;
  *&v3[v7] = [objc_allocWithZone(type metadata accessor for FMMessageTextView()) init];
  v8 = OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_placeHolderLabel;
  *&v3[v8] = [objc_allocWithZone(UILabel) init];
  *&v3[OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_textFieldIsEnabled] = 0;
  v3[OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_textViewIsEnabled] = 0;
  v9 = &v3[OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_initialEmailAddress];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v3[OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_placeHolderText];
  *v10 = 0;
  v10[1] = 0;
  if (a3)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for FMEmailTableViewCell();
  v12 = objc_msgSendSuper2(&v14, "initWithStyle:reuseIdentifier:", a1, v11);

  return v12;
}

id sub_1003C3018(void *a1)
{
  v3 = OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_textField;
  *&v1[v3] = [objc_allocWithZone(UITextField) init];
  v4 = OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_textView;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for FMMessageTextView()) init];
  v5 = OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_placeHolderLabel;
  *&v1[v5] = [objc_allocWithZone(UILabel) init];
  *&v1[OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_textFieldIsEnabled] = 0;
  v1[OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_textViewIsEnabled] = 0;
  v6 = &v1[OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_initialEmailAddress];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v1[OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_placeHolderText];
  v8 = type metadata accessor for FMEmailTableViewCell();
  *v7 = 0;
  v7[1] = 0;
  v11.receiver = v1;
  v11.super_class = v8;
  v9 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);

  if (v9)
  {
  }

  return v9;
}

uint64_t sub_1003C3170()
{
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_delegate);
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_textViewDelegate);
}

id sub_1003C3208()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMEmailTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_1003C33E4@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1003C343C(a2, *a1, v6);
  result = *v6;
  v5 = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = v5;
  *(a3 + 32) = v7;
  return result;
}

void sub_1003C343C(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = sub_1003C37A8(a2, 0x454C544954, 0xE500000000000000);
  v8 = v7;
  sub_10022FB78(a1);
  v9 = sub_10022FEFC(v6, v8);
  v11 = v10;

  v12 = sub_1003C37A8(a2, 0x454C544954425553, 0xE800000000000000);
  v14 = v13;
  sub_10022FB78(a1);
  v15 = sub_10022FEFC(v12, v14);
  v17 = v16;

  v18 = [objc_opt_self() systemBlueColor];
  v19 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle1];
  v20 = [objc_opt_self() configurationWithFont:v19];

  v21 = v20;
  v22 = String._bridgeToObjectiveC()();

  v23 = [objc_opt_self() _systemImageNamed:v22 withConfiguration:v21];

  if (v23)
  {
    v24 = v23;
    v23 = [v24 imageWithTintColor:v18 renderingMode:1];
  }

  else
  {
  }

  *a3 = v9;
  a3[1] = v11;
  a3[2] = v15;
  a3[3] = v17;
  a3[4] = v23;
}

id sub_1003C3724()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMLostModeFeaturesListView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003C37A8(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  sub_10007EBC0(&unk_1006AF770);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1005528D0;
  *(v6 + 32) = 0xD000000000000011;
  *(v6 + 40) = 0x8000000100594880;
  *(v6 + 48) = a2;
  *(v6 + 56) = a3;
  if (a1 > 2u)
  {
    v7 = 0xEB00000000454349;
    v10 = 0xEE00454349564544;
    v11 = 0x5F544345544F5250;
    if (a1 != 4)
    {
      v11 = 0xD000000000000011;
      v10 = 0x80000001005948A0;
    }

    if (a1 == 3)
    {
      v9 = 0x5645445F4B434F4CLL;
    }

    else
    {
      v9 = v11;
    }

    if (a1 != 3)
    {
      v7 = v10;
    }
  }

  else
  {
    v7 = 0xEC0000004B434F4CLL;
    v8 = 0x5F474E4952494150;
    if (a1 != 1)
    {
      v8 = 0xD000000000000011;
      v7 = 0x80000001005948C0;
    }

    if (a1)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xD000000000000011;
    }

    if (!a1)
    {
      v7 = 0x80000001005948E0;
    }
  }

  *(v6 + 64) = v9;
  *(v6 + 72) = v7;
  sub_10007EBC0(&qword_1006C0C10);
  sub_1001500AC();
  v12 = BidirectionalCollection<>.joined(separator:)();

  return v12;
}

_UNKNOWN **sub_1003C3968(uint64_t a1)
{
  v2 = type metadata accessor for FMIPFeatures();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v22[-v7];
  v9 = type metadata accessor for FMIPDevice();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for FMLostModeTrackable();
  __chkstk_darwin(v13);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000970F8(a1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(sub_10007EBC0(&qword_1006AFC80) + 48);
    (*(v10 + 16))(v12, v15, v9);
    if (FMIPDevice.isConsideredAccessory.getter())
    {
      if (FMIPDevice.isLocalFindable.getter())
      {
        v17 = *(v10 + 8);
        v17(v12, v9);
        sub_10008228C(&v15[v16]);
        v17(v15, v9);
        return &off_100622158;
      }

      else
      {
        FMIPDevice.features.getter();
        static FMIPFeatures.isNotifyWhenDetachedSupported.getter();
        sub_100179F58();
        v23 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v20 = *(v3 + 8);
        v20(v6, v2);
        v20(v8, v2);
        v21 = *(v10 + 8);
        v21(v12, v9);
        sub_10008228C(&v15[v16]);
        v21(v15, v9);
        if (v23)
        {
          return &off_1006221A8;
        }

        else
        {
          return &off_100622180;
        }
      }
    }

    else
    {
      v19 = *(v10 + 8);
      v19(v12, v9);
      v19(v15, v9);
      sub_10008228C(&v15[v16]);
      return &off_1006221D0;
    }
  }

  else
  {
    sub_10009715C(v15);
    return &off_1006221F8;
  }
}

uint64_t sub_1003C3CCC(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(28);
  v4._countAndFlagsBits = 60;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x4154454D46;
  v5._object = 0xE500000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0x69746E656469203ALL;
  v6._object = 0xEE00203A72656966;
  String.append(_:)(v6);
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x203A61746520;
  v8._object = 0xE600000000000000;
  String.append(_:)(v8);
  Double.write<A>(to:)();
  v9._countAndFlagsBits = 62;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  return 0;
}

id sub_1003C3DDC()
{
  v0 = objc_allocWithZone(FMDistanceCalculator);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithDefaultsSuiteName:v1];

  result = [v2 setMeasurementSystem:1];
  qword_1006D48A8 = v2;
  return result;
}

id sub_1003C3EB8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t *a4)
{
  v9 = qword_1006B8E48;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for FMProductActionHeaderView()) init];
  v10 = qword_1006B8E50;
  a3(a2);
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = &v4[qword_1006B8E60];
  *v11 = 0;
  v11[1] = 0;
  v4[qword_1006B8E68] = 1;
  *&v4[qword_1006B8E70] = 0;
  *&v4[qword_1006B8E78] = 0;
  v4[qword_1006B8E80] = 0;
  v12 = &v4[qword_1006B8E88];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v4[qword_1006B8E90];
  *v13 = 0;
  v13[8] = 1;
  *&v4[qword_1006B8E98] = 0;
  v4[qword_1006B8EA0] = 0;
  *&v4[qword_1006B8E58] = a1;

  v14 = String._bridgeToObjectiveC()();
  v17.receiver = v4;
  v17.super_class = sub_10007EBC0(a4);
  v15 = objc_msgSendSuper2(&v17, "initWithTitle:detailText:icon:contentLayout:", v14, 0, 0, 4);

  return v15;
}

uint64_t sub_1003C4130(char a1, uint64_t a2, unint64_t a3)
{
  sub_10007EBC0(&qword_1006BDB58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552210;
  *(inited + 32) = a1 & 1;
  *(inited + 40) = a2;
  v7 = a1 & 1 | 0x8000000000000000;
  *(inited + 48) = a3;
  *(inited + 56) = v7;
  *(inited + 64) = a2;
  *(inited + 72) = a3;
  sub_1003C7EA4(a2, a3);
  sub_1003C7EA4(a2, a3);
  sub_1001673AC(0, 2, 0);
  v8 = *(inited + 32);
  v9 = *(inited + 40);
  v10 = *(inited + 48);
  sub_1003C7EB8(v8, v9, v10);
  sub_1003C433C(v8, v9, v10, v21);
  sub_1003C7EC4(v8, v9, v10);
  v12 = _swiftEmptyArrayStorage[2];
  v11 = _swiftEmptyArrayStorage[3];
  if (v12 >= v11 >> 1)
  {
    sub_1001673AC((v11 > 1), v12 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v12 + 1;
  v13 = &_swiftEmptyArrayStorage[5 * v12];
  v14 = v21[1];
  *(v13 + 2) = v21[0];
  *(v13 + 3) = v14;
  v13[8] = v22;
  sub_1003C7EA4(a2, a3);

  sub_1003C7EA4(a2, a3);
  sub_1003C433C(v7, a2, a3, v23);
  sub_1003C7DA8(a2, a3);
  sub_1003C7DA8(a2, a3);
  v16 = _swiftEmptyArrayStorage[2];
  v15 = _swiftEmptyArrayStorage[3];
  if (v16 >= v15 >> 1)
  {
    sub_1001673AC((v15 > 1), v16 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v16 + 1;
  v17 = &_swiftEmptyArrayStorage[5 * v16];
  v18 = v23[0];
  v19 = v23[1];
  v17[8] = v24;
  *(v17 + 2) = v18;
  *(v17 + 3) = v19;
  sub_10036F4B4(_swiftEmptyArrayStorage);
}

void sub_1003C433C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1003C458C(a1, a2, a3, 0x454C544954, 0xE500000000000000);
  v10 = v9;
  v11 = sub_1003C458C(a1, a2, a3, 0x454C544954425553, 0xE800000000000000);
  v13 = v12;
  v14 = [objc_opt_self() systemBlueColor];
  v15 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle1];
  v16 = [objc_opt_self() configurationWithFont:v15];

  v17 = v16;
  v18 = String._bridgeToObjectiveC()();

  v19 = [objc_opt_self() _systemImageNamed:v18 withConfiguration:v17];

  if (v19)
  {
    v20 = v19;
    v19 = [v20 imageWithTintColor:v14 renderingMode:1];
  }

  else
  {
  }

  *a4 = v8;
  a4[1] = v10;
  a4[2] = v11;
  a4[3] = v13;
  a4[4] = v19;
}

uint64_t sub_1003C458C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1003C7ED0(a1 & 1, a2, a3);
  v12 = v11;
  sub_10007EBC0(&unk_1006AF770);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1005528D0;
  *(v13 + 32) = v10;
  *(v13 + 40) = v12;
  if ((a1 & 0x8000000000000000) == 0)
  {
    strcpy((v13 + 48), "LOCATE_ON_MAP");
    *(v13 + 62) = -4864;
    *(v13 + 64) = a4;
    *(v13 + 72) = a5;
    sub_1003C7EA4(a2, a3);
    sub_10007EBC0(&qword_1006C0C10);
    sub_100004098(&qword_1006B0700, &qword_1006C0C10);
    v14 = BidirectionalCollection<>.joined(separator:)();
    v16 = v15;

    if (a3 < 6)
    {
      goto LABEL_5;
    }

LABEL_6:
    v23 = [objc_opt_self() mainBundle];
    v30._object = 0x800000010057D3F0;
    v24.value._object = 0x800000010057D3D0;
    v30._countAndFlagsBits = 0xD000000000000018;
    v25._countAndFlagsBits = v14;
    v25._object = v16;
    v24.value._countAndFlagsBits = 0xD000000000000013;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v24, v23, v26, v30);

    sub_10007EBC0(&unk_1006B20B0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100552220;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = sub_10008EE84();
    *(v27 + 32) = a2;
    *(v27 + 40) = a3;
    countAndFlagsBits = String.init(format:_:)();

    return countAndFlagsBits;
  }

  *(v13 + 48) = 0x5353455250505553;
  *(v13 + 56) = 0xEB0000000054555FLL;
  *(v13 + 64) = a4;
  *(v13 + 72) = a5;
  sub_1003C7EA4(a2, a3);
  sub_10007EBC0(&qword_1006C0C10);
  sub_100004098(&qword_1006B0700, &qword_1006C0C10);
  v14 = BidirectionalCollection<>.joined(separator:)();
  v16 = v17;

  if (a3 >= 6)
  {
    goto LABEL_6;
  }

LABEL_5:
  sub_1003C7EC4(a1, a2, a3);
  v18 = [objc_opt_self() mainBundle];
  v29._object = 0x800000010057D3F0;
  v19.value._object = 0x800000010057D3D0;
  v29._countAndFlagsBits = 0xD000000000000018;
  v20._countAndFlagsBits = v14;
  v20._object = v16;
  v19.value._countAndFlagsBits = 0xD000000000000013;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v19, v18, v21, v29)._countAndFlagsBits;

  return countAndFlagsBits;
}

id sub_1003C494C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for FMIPProductType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + qword_1006BD708) = 0;
  v14 = qword_1006BD710;
  *(v5 + v14) = [objc_opt_self() boldButton];
  v15 = qword_1006BD718;
  *(v5 + v15) = [objc_opt_self() linkButton];
  v16 = (v5 + qword_1006D48B0);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v5 + qword_1006D48B8);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v5 + qword_1006D48C0);
  *v18 = 0;
  v18[1] = 0;
  v19 = FMIPItem.name.getter();
  v20 = (v5 + qword_1006BD6E0);
  *v20 = v19;
  v20[1] = v21;
  FMIPItem.productType.getter();
  LOBYTE(v15) = FMIPProductType.isAirTag.getter();
  (*(v11 + 8))(v13, v10);
  *(v5 + qword_1006BD6E8) = v15 & 1;
  v22 = FMIPItem.owner.getter();
  v23 = (v5 + qword_1006BD6F0);
  *v23 = v22;
  v23[1] = v24;
  v25 = qword_1006BD6F8;
  v26 = type metadata accessor for FMIPItem();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v5 + v25, a1, v26);
  type metadata accessor for UnknownOrOwnedItem(0);
  swift_storeEnumTagMultiPayload();
  v28 = (v5 + qword_1006BD700);
  *v28 = a3;
  v28[1] = a4;
  v30 = sub_1003C3EB8(a2, v29, type metadata accessor for FMItemSharingFeaturesListView, &qword_1006BDB48);
  (*(v27 + 8))(a1, v26);
  return v30;
}

id sub_1003C4BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for FMIPProductType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + qword_1006BD708) = 0;
  v14 = qword_1006BD710;
  *(v5 + v14) = [objc_opt_self() boldButton];
  v15 = qword_1006BD718;
  *(v5 + v15) = [objc_opt_self() linkButton];
  v16 = (v5 + qword_1006D48B0);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v5 + qword_1006D48B8);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v5 + qword_1006D48C0);
  *v18 = 0;
  v18[1] = 0;
  v19 = FMIPUnknownItem.name.getter();
  v20 = (v5 + qword_1006BD6E0);
  *v20 = v19;
  v20[1] = v21;
  FMIPUnknownItem.productType.getter();
  LOBYTE(v15) = FMIPProductType.isAirTag.getter();
  (*(v11 + 8))(v13, v10);
  *(v5 + qword_1006BD6E8) = v15 & 1;
  v22 = FMIPUnknownItem.handle.getter();
  v23 = (v5 + qword_1006BD6F0);
  *v23 = v22;
  v23[1] = v24;
  v25 = qword_1006BD6F8;
  v26 = type metadata accessor for FMIPUnknownItem();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v5 + v25, a1, v26);
  type metadata accessor for UnknownOrOwnedItem(0);
  swift_storeEnumTagMultiPayload();
  v28 = (v5 + qword_1006BD700);
  *v28 = a3;
  v28[1] = a4;
  v30 = sub_1003C3EB8(a2, v29, type metadata accessor for FMItemSharingFeaturesListView, &qword_1006BDB48);
  (*(v27 + 8))(a1, v26);
  return v30;
}

void sub_1003C4E8C(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for FMItemSharingLandingViewController(0);
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewDidLoad");
  sub_1003C4FF4();
  v2 = objc_allocWithZone(UIBarButtonItem);
  v3 = [v2 initWithBarButtonSystemItem:1 target:v1 action:{"cancelActionWithSender:", v5.receiver, v5.super_class}];
  v4 = [v1 navigationItem];
  [v4 setLeftBarButtonItem:v3];

  sub_1003C5134();
}

void sub_1003C4F54(void *a1, uint64_t a2, uint64_t a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for FMItemSharingLandingViewController(0);
  v4 = v7.receiver;
  objc_msgSendSuper2(&v7, "viewWillDisappear:", a3);
  v5 = *&v4[qword_1006D48C0];
  if (v5)
  {

    v5(v6);

    sub_10001835C(v5);
  }

  else
  {
  }
}

id sub_1003C4FF4()
{
  v1 = [v0 buttonTray];
  sub_1003C689C();
  v2 = String._bridgeToObjectiveC()();

  [v1 setCaptionText:v2];

  v3 = [v0 buttonTray];
  v4 = *&v0[qword_1006BD710];
  [v3 addButton:v4];

  v5 = [v0 buttonTray];
  v6 = *&v0[qword_1006BD718];
  [v5 addButton:v6];

  [v4 addTarget:v0 action:"continueAction" forControlEvents:64];

  return [v6 addTarget:v0 action:"notNow" forControlEvents:64];
}

uint64_t sub_1003C5134()
{
  v1 = v0;
  v51 = type metadata accessor for FMIPUnknownItem();
  v46 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10007EBC0(&qword_1006B64E0);
  __chkstk_darwin(v3 - 8);
  v50 = &v43 - v4;
  v5 = type metadata accessor for FMIPProductType();
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&qword_1006B3B08);
  v53 = *(v8 - 8);
  v54 = v8;
  __chkstk_darwin(v8);
  v52 = &v43 - v9;
  v48 = type metadata accessor for FMIPItem();
  v10 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UnknownOrOwnedItem(0);
  __chkstk_darwin(v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v0[qword_1006BD710];
  sub_1003C70C8();
  v16 = String._bridgeToObjectiveC()();

  [v15 setTitle:v16 forState:0];

  v17 = *&v0[qword_1006BD718];
  sub_1003C73E8();
  v18 = String._bridgeToObjectiveC()();

  [v17 setTitle:v18 forState:0];

  sub_1003C4130(v1[qword_1006BD6E8], *&v1[qword_1006BD700], *&v1[qword_1006BD700 + 8]);
  v19 = [v0 headerView];
  sub_1003C5C78();
  v20 = String._bridgeToObjectiveC()();

  [v19 setTitle:v20];

  v21 = *&v0[qword_1006B8E48];
  v22 = *(v21 + OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_primaryLabel);
  v23 = String._bridgeToObjectiveC()();
  [v22 setText:v23];

  sub_1003C5E7C();
  v24 = *(v21 + OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_secondaryLabel);
  if (v25)
  {
    v26 = String._bridgeToObjectiveC()();
  }

  else
  {
    v26 = 0;
  }

  [v24 setText:v26];

  sub_1003C7DBC(&v1[qword_1006BD6F8], v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = v46;
    v28 = v49;
    (*(v46 + 32))(v49, v14, v51);

    v29 = sub_1001AFD50(v28, 1u);

    v56 = v29;
    v30 = [objc_opt_self() mainRunLoop];
    v55 = v30;
    v31 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v32 = v50;
    (*(*(v31 - 8) + 56))(v50, 1, 1, v31);
    sub_10007EBC0(&unk_1006B4D90);
    sub_10011060C();
    sub_100004098(&qword_1006B7800, &unk_1006B4D90);
    sub_100110658();
    v33 = v52;
    Publisher.receive<A>(on:options:)();
    sub_1003C7E20(v32);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100004098(&qword_1006B3B18, &qword_1006B3B08);
    v34 = v54;
    v35 = Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v53 + 8))(v33, v34);
    (*(v27 + 8))(v49, v51);
  }

  else
  {
    (*(v10 + 32))();

    FMIPItem.productType.getter();
    v36 = sub_1001AF880(v7, 1);

    (*(v44 + 8))(v7, v45);
    v56 = v36;
    v37 = [objc_opt_self() mainRunLoop];
    v55 = v37;
    v38 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v39 = v50;
    (*(*(v38 - 8) + 56))(v50, 1, 1, v38);
    sub_10007EBC0(&unk_1006B4D90);
    sub_10011060C();
    sub_100004098(&qword_1006B7800, &unk_1006B4D90);
    sub_100110658();
    v40 = v52;
    Publisher.receive<A>(on:options:)();
    sub_1003C7E20(v39);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100004098(&qword_1006B3B18, &qword_1006B3B08);
    v41 = v54;
    v35 = Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v53 + 8))(v40, v41);
    (*(v10 + 8))(v47, v48);
  }

  *&v1[qword_1006BD708] = v35;
}

void sub_1003C5A60(uint64_t *a1)
{
  v2 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (*(Strong + qword_1006BD6E8) == 1)
    {
      v8 = *(Strong + qword_1006B8E48);
      v9 = objc_opt_self();
      v10 = v8;
      v11 = [v9 mainBundle];
      v12 = String._bridgeToObjectiveC()();
      v13 = String._bridgeToObjectiveC()();
      v14 = [v11 URLForResource:v12 withExtension:v13];

      if (v14)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = 0;
      }

      else
      {
        v15 = 1;
      }

      v16 = type metadata accessor for URL();
      (*(*(v16 - 8) + 56))(v4, v15, 1, v16);
      sub_1004791AC(v4);
    }

    [*(*&v7[qword_1006B8E48] + OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_productImageView) setImage:v5];
  }
}

uint64_t sub_1003C5C78()
{
  v1 = *(v0 + qword_1006BD700 + 8);
  v2 = *(v0 + qword_1006BD6E8);
  v3 = [objc_opt_self() mainBundle];
  if (v1 > 2)
  {
    if (v1 != 3)
    {
      if (v1 == 4)
      {
        v4 = "_CONFIRMATION_TITLE";
        v5 = v2 == 0;
        if (v2)
        {
          v4 = "FIRMATION_TITLE_ITEM";
        }

        v6 = 0xD000000000000034;
        v7 = 0xD000000000000036;
        goto LABEL_26;
      }

      if (v1 == 5)
      {
        v4 = "NG_SCREEN_SUBTITLE_OWNER";
        v5 = v2 == 0;
        if (v2)
        {
          v4 = "ONFIRMATION_TITLE";
        }

        v6 = 0xD000000000000031;
        v7 = 0xD000000000000033;
        goto LABEL_26;
      }

      goto LABEL_17;
    }
  }

  else if (v1)
  {
    if (v1 == 1)
    {
      v4 = "_LANDING_SCREEN_TITLE";
      v5 = v2 == 0;
      if (v2)
      {
        v4 = "TITLE_ITEM_NOT_REQUESTED";
      }

      v6 = 0xD000000000000038;
      v7 = 0xD00000000000003ALL;
      goto LABEL_26;
    }

    if (v1 == 2)
    {
      v4 = "DING_SCREEN_TITLE";
      v5 = v2 == 0;
      if (v2)
      {
        v4 = "ANDING_SCREEN_TITLE";
      }

      v6 = 0xD000000000000023;
      v7 = 0xD000000000000025;
LABEL_26:
      if (v5)
      {
        v8 = v6;
      }

      else
      {
        v8 = v7;
      }

      goto LABEL_29;
    }

LABEL_17:
    v4 = "FIRMATION_TITLE_AIRTAG";
    v5 = v2 == 0;
    if (v2)
    {
      v4 = "R_CONFIRMATION_TITLE_ITEM";
    }

    v6 = 0xD000000000000039;
    v7 = 0xD00000000000003BLL;
    goto LABEL_26;
  }

  v4 = "R_CONFIRMATION_TITLE_AIRTAG";
  if (v2)
  {
    v4 = "SHARE_ITEM_LANDING_SCREEN_TITLE";
    v8 = 0xD000000000000021;
  }

  else
  {
    v8 = 0xD00000000000001FLL;
  }

LABEL_29:
  v9.value._countAndFlagsBits = 0xD000000000000013;
  v14._countAndFlagsBits = 0xD000000000000018;
  v14._object = 0x800000010057D3F0;
  v10 = v4 | 0x8000000000000000;
  v9.value._object = 0x800000010057D3D0;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v8, v9, v3, v11, v14)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1003C5E7C()
{
  v1 = type metadata accessor for PersonNameComponents();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v56 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v56 - v10;
  v12 = *(v0 + qword_1006BD700 + 8);
  if (v12 > 2)
  {
    if (v12 != 5)
    {
      goto LABEL_37;
    }

    countAndFlagsBits = *(v0 + qword_1006BD6F0);
    v26 = *(v0 + qword_1006BD6F0 + 8);
    if (!v26)
    {
      return countAndFlagsBits;
    }

    v27 = v9;

    dispatch thunk of FMFManager.contactsController.getter();

    v16 = dispatch thunk of FMFContactsDataController.lookupSlimContact(byHandle:)();

    if (v16)
    {
      v28 = v16;
      PersonNameComponents.init()();
      if ([v28 isKeyAvailable:CNContactNicknameKey])
      {
        v29 = [v28 nickname];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        PersonNameComponents.nickname.setter();
      }

      if ([v28 isKeyAvailable:CNContactGivenNameKey])
      {
        v30 = [v28 givenName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        PersonNameComponents.givenName.setter();
      }

      if ([v28 isKeyAvailable:CNContactFamilyNameKey])
      {
        v31 = [v28 familyName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        PersonNameComponents.familyName.setter();
      }

      v32 = objc_opt_self();
      isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
      v34 = [v32 localizedStringFromPersonNameComponents:isa style:1 options:0];

      countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v35;

      (*(v2 + 8))(v5, v27);
    }

    else
    {
      v25 = v26;
    }

LABEL_41:
    v50 = [objc_opt_self() mainBundle];
    v58._object = 0x800000010057D3F0;
    v51._countAndFlagsBits = 0xD000000000000029;
    v51._object = 0x8000000100594BA0;
    v52.value._object = 0x800000010057D3D0;
    v58._countAndFlagsBits = 0xD000000000000018;
    v52.value._countAndFlagsBits = 0xD000000000000013;
    v53._countAndFlagsBits = 0;
    v53._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v51, v52, v50, v53, v58);

    sub_10007EBC0(&unk_1006B20B0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_100552220;
    *(v54 + 56) = &type metadata for String;
    *(v54 + 64) = sub_10008EE84();
    *(v54 + 32) = countAndFlagsBits;
    *(v54 + 40) = v25;
    countAndFlagsBits = String.init(format:_:)();

    return countAndFlagsBits;
  }

  switch(v12)
  {
    case 0:
      break;
    case 1:
      countAndFlagsBits = *(v0 + qword_1006BD6F0);
      v36 = *(v0 + qword_1006BD6F0 + 8);
      if (!v36)
      {
        return countAndFlagsBits;
      }

      v37 = v9;

      dispatch thunk of FMFManager.contactsController.getter();

      v16 = dispatch thunk of FMFContactsDataController.lookupSlimContact(byHandle:)();

      if (v16)
      {
        v38 = v16;
        PersonNameComponents.init()();
        if ([v38 isKeyAvailable:CNContactNicknameKey])
        {
          v39 = [v38 nickname];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          PersonNameComponents.nickname.setter();
        }

        if ([v38 isKeyAvailable:CNContactGivenNameKey])
        {
          v40 = [v38 givenName];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          PersonNameComponents.givenName.setter();
        }

        if ([v38 isKeyAvailable:CNContactFamilyNameKey])
        {
          v41 = [v38 familyName];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          PersonNameComponents.familyName.setter();
        }

        v42 = objc_opt_self();
        v43 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
        v44 = [v42 localizedStringFromPersonNameComponents:v43 style:1 options:0];

        countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v45;

        (*(v2 + 8))(v11, v37);
      }

      else
      {
        v25 = v36;
      }

      goto LABEL_41;
    case 2:
      countAndFlagsBits = *(v0 + qword_1006BD6F0);
      v14 = *(v0 + qword_1006BD6F0 + 8);
      if (!v14)
      {
        return countAndFlagsBits;
      }

      v15 = v9;

      dispatch thunk of FMFManager.contactsController.getter();

      v16 = dispatch thunk of FMFContactsDataController.lookupSlimContact(byHandle:)();

      if (v16)
      {
        v17 = v16;
        PersonNameComponents.init()();
        if ([v17 isKeyAvailable:CNContactNicknameKey])
        {
          v18 = [v17 nickname];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          PersonNameComponents.nickname.setter();
        }

        if ([v17 isKeyAvailable:CNContactGivenNameKey])
        {
          v19 = [v17 givenName];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          PersonNameComponents.givenName.setter();
        }

        if ([v17 isKeyAvailable:CNContactFamilyNameKey])
        {
          v20 = [v17 familyName];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          PersonNameComponents.familyName.setter();
        }

        v21 = objc_opt_self();
        v22 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
        v23 = [v21 localizedStringFromPersonNameComponents:v22 style:1 options:0];

        countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        (*(v2 + 8))(v8, v15);
      }

      else
      {
        v25 = v14;
      }

      goto LABEL_41;
  }

LABEL_37:
  v46 = [objc_opt_self() mainBundle];
  v57._object = 0x800000010057D3F0;
  v47._countAndFlagsBits = 0xD000000000000028;
  v47._object = 0x8000000100594BD0;
  v48.value._object = 0x800000010057D3D0;
  v57._countAndFlagsBits = 0xD000000000000018;
  v48.value._countAndFlagsBits = 0xD000000000000013;
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v47, v48, v46, v49, v57)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1003C689C()
{
  v1 = sub_10007EBC0(&qword_1006B3B10);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v65 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v65 - v9;
  __chkstk_darwin(v8);
  v12 = &v65 - v11;
  v13 = type metadata accessor for FMIPPerson();
  v65 = *(v13 - 8);
  v66 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v65 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v65 - v21;
  __chkstk_darwin(v20);
  v24 = &v65 - v23;
  v25 = 0;
  v26 = *(v0 + qword_1006BD700 + 8);
  if (v26 <= 1)
  {
    if (!v26)
    {
      v45 = [objc_opt_self() mainBundle];
      v69._object = 0x800000010057D3F0;
      v46._countAndFlagsBits = 0xD000000000000026;
      v46._object = 0x8000000100594B40;
      v47.value._object = 0x800000010057D3D0;
      v69._countAndFlagsBits = 0xD000000000000018;
      v47.value._countAndFlagsBits = 0xD000000000000013;
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v46, v47, v45, v48, v69);

      sub_10007EBC0(&unk_1006B20B0);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_100552220;

      FMIPManager.owner.getter();
      v51 = v65;
      v50 = v66;
      result = (*(v65 + 48))(v12, 1, v66);
      if (result != 1)
      {

        (*(v51 + 32))(v24, v12, v50);
        v52 = FMIPPerson.username.getter();
        v54 = v53;
        (*(v51 + 8))(v24, v50);
        *(v49 + 56) = &type metadata for String;
        *(v49 + 64) = sub_10008EE84();
        *(v49 + 32) = v52;
        *(v49 + 40) = v54;
        goto LABEL_15;
      }

      goto LABEL_19;
    }

    if (v26 == 1)
    {
      v27 = [objc_opt_self() mainBundle];
      v67._object = 0x800000010057D3F0;
      v28._countAndFlagsBits = 0xD000000000000026;
      v28._object = 0x8000000100594B40;
      v29.value._object = 0x800000010057D3D0;
      v67._countAndFlagsBits = 0xD000000000000018;
      v29.value._countAndFlagsBits = 0xD000000000000013;
      v30._countAndFlagsBits = 0;
      v30._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v29, v27, v30, v67);

      sub_10007EBC0(&unk_1006B20B0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_100552220;

      FMIPManager.owner.getter();
      v33 = v65;
      v32 = v66;
      result = (*(v65 + 48))(v10, 1, v66);
      if (result != 1)
      {

        (*(v33 + 32))(v22, v10, v32);
        v35 = FMIPPerson.username.getter();
        v37 = v36;
        (*(v33 + 8))(v22, v32);
LABEL_10:
        *(v31 + 56) = &type metadata for String;
        *(v31 + 64) = sub_10008EE84();
        *(v31 + 32) = v35;
        *(v31 + 40) = v37;
LABEL_15:
        v25 = String.init(format:_:)();

        return v25;
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    return v25;
  }

  if (v26 != 2)
  {
    if (v26 == 3)
    {
      v38 = [objc_opt_self() mainBundle];
      v68._object = 0x800000010057D3F0;
      v39._countAndFlagsBits = 0xD000000000000026;
      v39._object = 0x8000000100594B40;
      v40.value._object = 0x800000010057D3D0;
      v68._countAndFlagsBits = 0xD000000000000018;
      v40.value._countAndFlagsBits = 0xD000000000000013;
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v39, v40, v38, v41, v68);

      sub_10007EBC0(&unk_1006B20B0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_100552220;

      FMIPManager.owner.getter();
      v43 = v65;
      v42 = v66;
      result = (*(v65 + 48))(v4, 1, v66);
      if (result != 1)
      {

        (*(v43 + 32))(v16, v4, v42);
        v35 = FMIPPerson.username.getter();
        v37 = v44;
        (*(v43 + 8))(v16, v42);
        goto LABEL_10;
      }

      goto LABEL_18;
    }

    return v25;
  }

  v55 = [objc_opt_self() mainBundle];
  v70._object = 0x800000010057D3F0;
  v56._countAndFlagsBits = 0xD000000000000026;
  v56._object = 0x8000000100594B70;
  v57.value._object = 0x800000010057D3D0;
  v70._countAndFlagsBits = 0xD000000000000018;
  v57.value._countAndFlagsBits = 0xD000000000000013;
  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v56, v57, v55, v58, v70);

  sub_10007EBC0(&unk_1006B20B0);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_100552220;

  FMIPManager.owner.getter();
  v61 = v65;
  v60 = v66;
  result = (*(v65 + 48))(v7, 1, v66);
  if (result != 1)
  {

    (*(v61 + 32))(v19, v7, v60);
    v62 = FMIPPerson.username.getter();
    v64 = v63;
    (*(v61 + 8))(v19, v60);
    *(v59 + 56) = &type metadata for String;
    *(v59 + 64) = sub_10008EE84();
    *(v59 + 32) = v62;
    *(v59 + 40) = v64;
    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1003C70C8()
{
  v1 = *(v0 + qword_1006BD700 + 8);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v2 = "ONFIRMATION_ACTION";
      v3 = [objc_opt_self() mainBundle];
      v12 = 0x800000010057D3F0;
      v4 = 0xD000000000000023;
      goto LABEL_14;
    }

    if (v1 == 5)
    {
      v2 = "NG_INVITATION_DECLINE_SHARE";
      v3 = [objc_opt_self() mainBundle];
      v12 = 0x800000010057D3F0;
      v4 = 0xD000000000000032;
      goto LABEL_14;
    }

LABEL_13:
    v2 = "ITEM_DETAIL_REMOVE_BUTTON";
    v3 = [objc_opt_self() mainBundle];
    v12 = 0x800000010057D3F0;
    v4 = 0xD00000000000001FLL;
    goto LABEL_14;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = "NG_INVITATION_SHARE";
      v3 = [objc_opt_self() mainBundle];
      v12 = 0x800000010057D3F0;
      v4 = 0xD000000000000019;
      goto LABEL_14;
    }

    if (v1 == 2)
    {
      v2 = "ITLE_TEXT_AND_X_MORE";
      v3 = [objc_opt_self() mainBundle];
      v12 = 0x800000010057D3F0;
      v4 = 0xD000000000000024;
LABEL_14:
      v5 = v2 | 0x8000000000000000;
      v8 = 0x800000010057D3D0;
      v6 = 0xD000000000000018;
      v7 = 0xD000000000000013;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v3 = [objc_opt_self() mainBundle];
  v12 = 0x800000010057B8A0;
  v4 = 0xD000000000000015;
  v5 = 0x800000010057B880;
  v6 = 0xD000000000000027;
  v7 = 0;
  v8 = 0;
LABEL_15:
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, *&v7, v3, v9, *(&v12 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1003C73E8()
{
  v1 = *(v0 + qword_1006BD700 + 8);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v2 = "_SHARING_BUTTON_CANCEL";
      v3 = [objc_opt_self() mainBundle];
      v12 = 0x800000010057D3F0;
      v4 = 0xD00000000000002BLL;
      goto LABEL_11;
    }

    if (v1 == 5)
    {
      v2 = "dismissedHandler";
      v3 = [objc_opt_self() mainBundle];
      v12 = 0x800000010057D3F0;
      v4 = 0xD000000000000032;
      goto LABEL_11;
    }

LABEL_10:
    v2 = "ONFIRMATION_CANCEL";
    v3 = [objc_opt_self() mainBundle];
    v12 = 0x800000010057D3F0;
    v4 = 0xD000000000000026;
    goto LABEL_11;
  }

  if (v1 >= 2)
  {
    if (v1 == 2)
    {
      v2 = "NG_INVITATION_ACCEPT";
      v3 = [objc_opt_self() mainBundle];
      v12 = 0x800000010057D3F0;
      v4 = 0xD000000000000025;
LABEL_11:
      v6 = v2 | 0x8000000000000000;
      v8 = 0x800000010057D3D0;
      v5 = 0xD000000000000018;
      v7 = 0xD000000000000013;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v3 = [objc_opt_self() mainBundle];
  v12 = 0x800000010057BF40;
  v4 = 0x574F4E5F544F4ELL;
  v5 = 0xD000000000000019;
  v6 = 0xE700000000000000;
  v7 = 0;
  v8 = 0;
LABEL_12:
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, *&v7, v3, v9, *(&v12 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

void sub_1003C76D8(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v5[4] = sub_1000822F4;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100004AE4;
  v5[3] = &unk_10063B1C8;
  v3 = _Block_copy(v5);
  v4 = a1;

  [v4 dismissViewControllerAnimated:1 completion:v3];

  _Block_release(v3);
}

void sub_1003C77BC(char *a1)
{
  v1 = *&a1[qword_1006D48B8];
  v2 = a1;
  if (v1)
  {
    v3 = sub_100062900(v1);
    v1(v3);
    sub_10001835C(v1);
  }

  [a1 dismissViewControllerAnimated:1 completion:0];
}

char *sub_1003C7854(char *result)
{
  v1 = *&result[qword_1006D48B0];
  if (v1)
  {
    v2 = result;
    v3 = sub_100062900(v1);
    v1(v3);

    return sub_10001835C(v1);
  }

  return result;
}

uint64_t sub_1003C78D8()
{

  sub_1003C7D4C(v0 + qword_1006BD6F8);
  sub_1003C7DA8(*(v0 + qword_1006BD700), *(v0 + qword_1006BD700 + 8));

  sub_10001835C(*(v0 + qword_1006D48B0));
  sub_10001835C(*(v0 + qword_1006D48B8));
  v1 = *(v0 + qword_1006D48C0);

  return sub_10001835C(v1);
}

id sub_1003C79CC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1003C7A04(uint64_t a1)
{

  sub_1003C7D4C(a1 + qword_1006BD6F8);
  sub_1003C7DA8(*(a1 + qword_1006BD700), *(a1 + qword_1006BD700 + 8));

  sub_10001835C(*(a1 + qword_1006D48B0));
  sub_10001835C(*(a1 + qword_1006D48B8));
  v2 = *(a1 + qword_1006D48C0);

  return sub_10001835C(v2);
}

uint64_t sub_1003C7B08()
{
  result = type metadata accessor for UnknownOrOwnedItem(319);
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003C7C08(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1003C7C20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003C7C78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_1003C7CD8()
{
  result = type metadata accessor for FMIPItem();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FMIPUnknownItem();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003C7D4C(uint64_t a1)
{
  v2 = type metadata accessor for UnknownOrOwnedItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003C7DA8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_1003C7DBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownOrOwnedItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C7E20(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006B64E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003C7EA4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

unint64_t sub_1003C7ED0(char a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      goto LABEL_10;
    }

    if (a3 != 4)
    {
      if (a3 == 5)
      {
        v3 = 0xD000000000000028;
        v4 = 0xD00000000000002ALL;
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    v3 = 0xD00000000000002ALL;
    v4 = 0xD00000000000002CLL;
LABEL_16:
    if (a1)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  if (!a3)
  {
    goto LABEL_10;
  }

  if (a3 == 1)
  {
    v3 = 0xD000000000000028;
    v4 = 0xD00000000000002ALL;
    goto LABEL_16;
  }

  if (a3 != 2)
  {
LABEL_13:
    v3 = 0xD00000000000002FLL;
    v4 = 0xD000000000000031;
    goto LABEL_16;
  }

LABEL_10:
  if (a1)
  {
    return 0xD000000000000023;
  }

  else
  {
    return 0xD000000000000021;
  }
}

uint64_t sub_1003C7FF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1003C8048(uint64_t result, int a2, int a3)
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
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = 2 * -a2;
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

void sub_1003C80C8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = __chkstk_darwin(v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[104] == 1)
  {
    v11 = *(v1 + 2);
    v12 = *(v11 + 48);
    v52 = v8;
    v53 = v7;
    type metadata accessor for FMPeopleSubscription();
    v13 = swift_allocObject();
    v51 = v3;
    v14 = v13;
    *(v13 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = 0;
    swift_unknownObjectWeakInit();

    UUID.init()();
    *(v14 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = &off_10063B378;
    swift_unknownObjectWeakAssign();
    v15 = *(v12 + 32);

    os_unfair_lock_lock((v15 + 24));
    sub_10000E7C0((v15 + 16));
    os_unfair_lock_unlock((v15 + 24));

    *(v1 + 6) = v14;

    v16 = *(v11 + 32);

    v17 = sub_10000E88C(v1, v16, type metadata accessor for FMETASubscription, &OBJC_IVAR____TtC6FindMy17FMETASubscription_subscriber, &OBJC_IVAR____TtC6FindMy17FMETASubscription_identifier, &off_10063B368);

    *(v1 + 7) = v17;

    v18 = *(v11 + 40);
    v19 = sub_1003CBEA8(v1, v18);

    *(v1 + 8) = v19;

    v20 = *(v11 + 56);

    v21 = sub_10000E88C(v1, v20, type metadata accessor for FMSelectionSubscription, &OBJC_IVAR____TtC6FindMy23FMSelectionSubscription_subscriber, &OBJC_IVAR____TtC6FindMy23FMSelectionSubscription_identifier, &off_10063B300);

    *(v1 + 9) = v21;

    v22 = *(v11 + 16);
    v23 = sub_1003CCA10(v1, v22);

    *(v1 + 10) = v23;

    sub_10000905C(0, &qword_1006AEDC0);
    v24 = static OS_dispatch_queue.main.getter();
    v25 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1003CEB38;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_10063B420;
    v26 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10000A3D8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);

    (*(v51 + 8))(v5, v2);
    (*(v52 + 8))(v10, v53);
    return;
  }

  if (*(v1 + 6))
  {
    v27 = *(*(*(v1 + 2) + 48) + 32);

    os_unfair_lock_lock((v27 + 24));
    sub_10008FB88((v27 + 16));
    os_unfair_lock_unlock((v27 + 24));
  }

  v28 = *(v1 + 7);
  if (v28)
  {
    v29 = *(*(v1 + 2) + 32);
    swift_beginAccess();

    v30 = sub_1003CD76C(v29 + 2, v28, &OBJC_IVAR____TtC6FindMy17FMETASubscription_identifier, sub_1000C1EE4);
    v31 = v29[2];
    if (v31 >> 62)
    {
      v47 = v30;
      v32 = _CocoaArrayWrapper.endIndex.getter();
      v30 = v47;
      if (v32 >= v47)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32 >= v30)
      {
LABEL_8:
        sub_1003CEA5C(v30, v32, type metadata accessor for FMETASubscription);
        swift_endAccess();

        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_9:
  v33 = *(v1 + 8);
  if (!v33)
  {
    goto LABEL_13;
  }

  v34 = *(*(v1 + 2) + 40);
  v35 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions;
  swift_beginAccess();

  v29 = v34;
  v30 = sub_1003CD76C(&v34[v35], v33, &OBJC_IVAR____TtC6FindMy22FMLocationSubscription_identifier, sub_1000C1EE4);
  v36 = *&v34[v35];
  if (v36 >> 62)
  {
LABEL_24:
    v48 = v30;
    v37 = _CocoaArrayWrapper.endIndex.getter();
    v30 = v48;
    if (v37 >= v48)
    {
      goto LABEL_12;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v37 < v30)
  {
    goto LABEL_25;
  }

LABEL_12:
  sub_1003CEA5C(v30, v37, type metadata accessor for FMLocationSubscription);
  swift_endAccess();

LABEL_13:
  v38 = *(v1 + 9);
  if (!v38)
  {
    goto LABEL_17;
  }

  v39 = *(*(v1 + 2) + 56);
  swift_beginAccess();

  v30 = sub_1003CD76C((v39 + 16), v38, &OBJC_IVAR____TtC6FindMy23FMSelectionSubscription_identifier, sub_1000C1EE4);
  v40 = *(v39 + 16);
  if (v40 >> 62)
  {
LABEL_26:
    v49 = v30;
    v41 = _CocoaArrayWrapper.endIndex.getter();
    v30 = v49;
    if (v41 >= v49)
    {
      goto LABEL_16;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v41 < v30)
  {
    goto LABEL_27;
  }

LABEL_16:
  sub_1003CEA5C(v30, v41, type metadata accessor for FMSelectionSubscription);
  swift_endAccess();

LABEL_17:
  v42 = *(v1 + 10);
  if (!v42)
  {
    return;
  }

  v43 = *(*(v1 + 2) + 16);
  v44 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();

  v1 = v43;
  v30 = sub_1003CD76C(&v43[v44], v42, &OBJC_IVAR____TtC6FindMy23FMConditionSubscription_identifier, sub_1000C1EE4);
  v45 = *&v43[v44];
  if (v45 >> 62)
  {
LABEL_28:
    v50 = v30;
    v46 = _CocoaArrayWrapper.endIndex.getter();
    v30 = v50;
    if (v46 >= v50)
    {
      goto LABEL_20;
    }

LABEL_29:
    __break(1u);
    return;
  }

  v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v46 < v30)
  {
    goto LABEL_29;
  }

LABEL_20:
  sub_1003CEA5C(v30, v46, type metadata accessor for FMConditionSubscription);
  swift_endAccess();
}

uint64_t sub_1003C8954()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v1 = dispatch thunk of FMFManager.friends.getter();

    sub_1003C9A28(v1);
  }

  return result;
}

uint64_t sub_1003C89E8()
{
  v1 = sub_10007EBC0(&qword_1006B3260);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for FMPersonDetailViewModel(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
  swift_beginAccess();
  sub_100007204(v0 + v8, v3, &qword_1006B3260);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_100012DF0(v3, &qword_1006B3260);
  }

  sub_1003D04B8(v3, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_10012D9BC(v7);
    v12 = v11 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v12 + 8);
      ObjectType = swift_getObjectType();
      (*(v13 + 8))(v0, v7, ObjectType, v13);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return sub_10002A0A0(v7, type metadata accessor for FMPersonDetailViewModel);
}

void *sub_1003C8C08(uint64_t a1)
{
  v2 = v1;
  v70 = a1;
  v3 = sub_10007EBC0(&qword_1006B0050);
  v4 = __chkstk_darwin(v3 - 8);
  v63 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v74 = &v60 - v6;
  v7 = type metadata accessor for FMFFriend();
  v72 = *(v7 - 8);
  v73 = v7;
  __chkstk_darwin(v7);
  v61 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for FMSelectedSection();
  v9 = __chkstk_darwin(v71);
  v64 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v65 = &v60 - v12;
  v13 = __chkstk_darwin(v11);
  v62 = &v60 - v14;
  v15 = __chkstk_darwin(v13);
  v69 = &v60 - v16;
  __chkstk_darwin(v15);
  v75 = &v60 - v17;
  v18 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v67 = *(v18 - 8);
  v68 = v18;
  __chkstk_darwin(v18);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v21);
  v22 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v22 - 8);
  *(v1 + 32) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for FMItemAger();
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  swift_allocObject();
  *(v1 + 88) = sub_10002BE70();
  v66 = sub_10000905C(0, &qword_1006AEDC0);
  static DispatchQoS.userInitiated.getter();
  v76[3] = _swiftEmptyArrayStorage;
  sub_10000A3D8(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007EBC0(&unk_1006AEDD0);
  sub_100004044(&unk_1006B0630, &unk_1006AEDD0);
  v23 = v70;
  v24 = v75;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v67 + 104))(v20, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v68);
  *(v1 + 96) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 104) = 0;
  v25 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
  v26 = type metadata accessor for FMPersonDetailViewModel(0);
  (*(*(v26 - 8) + 56))(v1 + v25, 1, 1, v26);
  v27 = *(v23 + 56);
  v28 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027B78(v27 + v28, v24, type metadata accessor for FMSelectedSection);
  v29 = v69;
  sub_100027B78(v24, v69, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v31 = v72;
    v30 = v73;
    v32 = v61;
    (*(v72 + 32))(v61, v29, v73);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100005B14(v33, qword_1006D4630);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "FMPersonDetailDataSource: initialized", v36, 2u);
    }

    v37 = v74;
    (*(v31 + 16))(v74, v32, v30);
    (*(v31 + 56))(v37, 0, 1, v30);
    sub_10007EBC0(&qword_1006BBF30);
    v38 = swift_allocObject();
    *(v38 + ((*(*v38 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
    (*(v31 + 8))(v32, v30);
    sub_10002A0A0(v24, type metadata accessor for FMSelectedSection);
    sub_1000FEB1C(v37, v38 + *(*v38 + class metadata base offset for ManagedBuffer + 16));
    v2[5] = v38;
    v2[2] = v23;
    *(v2[11] + 24) = &off_10063B358;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    sub_10002A0A0(v29, type metadata accessor for FMSelectedSection);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100005B14(v39, qword_1006D4630);
    v40 = v62;
    sub_100027B78(v24, v62, type metadata accessor for FMSelectedSection);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.fault.getter();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v65;
    if (v43)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v76[0] = v46;
      *v45 = 136315138;
      sub_100027B78(v40, v44, type metadata accessor for FMSelectedSection);
      v47 = String.init<A>(describing:)();
      v48 = v40;
      v49 = v47;
      v51 = v50;
      sub_10002A0A0(v48, type metadata accessor for FMSelectedSection);
      v52 = sub_100005B4C(v49, v51, v76);
      v44 = v65;

      *(v45 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v41, v42, "FMPersonDetailDataSource: Cannot be initialized without a selected person. Selection: %s", v45, 0xCu);
      sub_100006060(v46);
      v24 = v75;
    }

    else
    {

      sub_10002A0A0(v40, type metadata accessor for FMSelectedSection);
    }

    v2[2] = v23;
    v53 = v74;
    (*(v72 + 56))(v74, 1, 1, v73);
    sub_10007EBC0(&qword_1006BBF30);
    v54 = swift_allocObject();
    *(v54 + ((*(*v54 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
    v55 = v63;
    sub_100007204(v53, v63, &qword_1006B0050);

    sub_100012DF0(v53, &qword_1006B0050);
    sub_1000FEB1C(v55, v54 + *(*v54 + class metadata base offset for ManagedBuffer + 16));
    v2[5] = v54;
    v56 = *(v23 + 56);
    swift_storeEnumTagMultiPayload();
    v57 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    v58 = v64;
    sub_100027B78(v56 + v57, v64, type metadata accessor for FMSelectedSection);
    swift_beginAccess();
    sub_100058530(v44, v56 + v57);
    swift_endAccess();
    sub_100058594(v58);
    sub_10002A0A0(v58, type metadata accessor for FMSelectedSection);
    sub_10002A0A0(v44, type metadata accessor for FMSelectedSection);
    sub_10002A0A0(v24, type metadata accessor for FMSelectedSection);
  }

  return v2;
}

uint64_t sub_1003C9718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v22 = a2;
  v4 = type metadata accessor for FMFFriend();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = *(a3 + 40);
  v12 = *(*v11 + class metadata base offset for ManagedBuffer + 16);
  v13 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v11 + v13));
  sub_100007204(v11 + v12, v10, &qword_1006B0050);
  os_unfair_lock_unlock((v11 + v13));

  if ((*(v5 + 48))(v10, 1, v4))
  {
    return sub_100012DF0(v10, &qword_1006B0050);
  }

  (*(v5 + 16))(v7, v10, v4);
  sub_100012DF0(v10, &qword_1006B0050);
  v15 = FMFFriend.identifier.getter();
  v17 = v16;
  (*(v5 + 8))(v7, v4);
  if (v15 == v21 && v17 == v22)
  {

    goto LABEL_10;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
LABEL_10:

    v20 = dispatch thunk of FMFManager.friends.getter();

    sub_1003C9A28(v20);
  }

  return result;
}

uint64_t sub_1003C99BC()
{

  v0 = dispatch thunk of FMFManager.friends.getter();

  sub_1003C9A28(v0);
}

uint64_t sub_1003C9A28(uint64_t a1)
{
  v108 = a1;
  v104 = type metadata accessor for FMSelectedSection();
  v2 = __chkstk_darwin(v104);
  v106 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v105 = &v88 - v4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v101 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v100 = *(v8 - 8);
  __chkstk_darwin(v8);
  v99 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007EBC0(&qword_1006AF750);
  __chkstk_darwin(v10 - 8);
  v98 = &v88 - v11;
  v12 = type metadata accessor for FMFRelationshipType();
  v102 = *(v12 - 8);
  v103 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v88 - v16;
  v18 = sub_10007EBC0(&qword_1006B0050);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v88 - v22;
  v24 = type metadata accessor for FMFFriend();
  v25 = *(v24 - 8);
  v26 = v25[8];
  v27 = __chkstk_darwin(v24);
  v28 = __chkstk_darwin(v27);
  result = __chkstk_darwin(v28);
  if (*(v1 + 104) != 1)
  {
    return result;
  }

  v91 = v32;
  v96 = v31;
  v92 = v8;
  v93 = v6;
  v94 = v5;
  v97 = &v88 - v30;
  v33 = *(v1 + 40);
  v34 = *(*v33 + class metadata base offset for ManagedBuffer + 16);
  v35 = *(*v33 + 48) + 3;
  v107 = result;
  v36 = v35 & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v33 + v36));
  sub_100007204(v33 + v34, v23, &qword_1006B0050);
  v37 = (v33 + v36);
  v38 = v107;
  os_unfair_lock_unlock(v37);

  v39 = v25[6];
  if (v39(v23, 1, v38) == 1)
  {
    return sub_100012DF0(v23, &qword_1006B0050);
  }

  v88 = v15;
  v95 = v1;
  v90 = v25;
  v41 = (v25 + 4);
  v40 = v25[4];
  v42 = v97;
  v89 = v40;
  v43 = (v40)(v97, v23, v38);
  __chkstk_darwin(v43);
  *(&v88 - 2) = v42;
  sub_1000341A8(sub_1000EE304, v108, v21);
  if (v39(v21, 1, v38) == 1)
  {
    sub_100012DF0(v21, &qword_1006B0050);
    v44 = v90;
  }

  else
  {
    v45 = v96;
    v89(v96, v21, v38);
    FMFFriend.relationshipType.getter();
    v46 = v88;
    static FMFRelationshipType.none.getter();
    sub_10000A3D8(&qword_1006BDDA8, &type metadata accessor for FMFRelationshipType);
    v47 = v103;
    v48 = dispatch thunk of static Equatable.== infix(_:_:)();
    v49 = *(v102 + 8);
    v49(v46, v47);
    v49(v17, v47);
    if ((v48 & 1) == 0)
    {
      v58 = v107;
      v108 = v41;
      v59 = v95;
      v60 = sub_1003CAFC8(v45);
      v104 = v61;
      v105 = v60;
      v102 = v63;
      v103 = v62;
      v64 = *(*(*(v59 + 16) + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
      v106 = v64;

      LODWORD(v88) = dispatch thunk of FMFManager.friendsOperationsRestricted.getter();

      v65 = v98;
      dispatch thunk of FMFManager.preferences.getter();

      v66 = type metadata accessor for FMFPreferences();
      v67 = *(v66 - 8);
      if ((*(v67 + 48))(v65, 1, v66) == 1)
      {
        sub_100012DF0(v65, &qword_1006AF750);
        v68 = 1;
      }

      else
      {
        v69 = FMFPreferences.hideLocation.getter();
        (*(v67 + 8))(v65, v66);
        v68 = v69 ^ 1;
      }

      v70 = v95;
      v98 = *(v95 + 96);
      v71 = v90;
      v72 = v91;
      (v90[2])(v91, v96, v58);
      v73 = (*(v71 + 80) + 16) & ~*(v71 + 80);
      v74 = (v26 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
      v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
      v76 = swift_allocObject();
      v77 = v76 + v73;
      v78 = v107;
      v89(v77, v72, v107);
      *(v76 + v74) = v64;
      v79 = v76 + v75;
      v80 = v104;
      *v79 = v105;
      *(v79 + 8) = v80;
      v81 = v102;
      *(v79 + 16) = v103;
      *(v79 + 24) = v81;
      *(v79 + 32) = v88 & 1;
      *(v79 + 33) = v68 & 1;
      *(v79 + 34) = 0;
      *(v76 + ((v75 + 42) & 0xFFFFFFFFFFFFFFF8)) = v70;
      aBlock[4] = sub_1003D03FC;
      aBlock[5] = v76;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_10063B5D8;
      v82 = _Block_copy(aBlock);
      v83 = v106;

      v84 = v99;
      static DispatchQoS.unspecified.getter();
      aBlock[6] = _swiftEmptyArrayStorage;
      sub_10000A3D8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640);
      sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
      v85 = v101;
      v86 = v94;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v82);

      (*(v93 + 8))(v85, v86);
      (*(v100 + 8))(v84, v92);
      v87 = v71[1];
      v87(v96, v78);

      return (v87)(v97, v78);
    }

    v44 = v90;
    v38 = v107;
    (v90[1])(v45, v107);
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_100005B14(v50, qword_1006D4630);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "FMPersonDetailDataSource: person doesn't exist anymore. Going back to list", v53, 2u);
  }

  v54 = *(*(v95 + 16) + 56);
  v55 = v105;
  swift_storeEnumTagMultiPayload();
  v56 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  v57 = v106;
  sub_100027B78(v54 + v56, v106, type metadata accessor for FMSelectedSection);
  swift_beginAccess();

  sub_100058530(v55, v54 + v56);
  swift_endAccess();
  sub_100058594(v57);

  sub_10002A0A0(v57, type metadata accessor for FMSelectedSection);
  sub_10002A0A0(v55, type metadata accessor for FMSelectedSection);
  return (v44[1])(v97, v38);
}

uint64_t sub_1003CA614(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, unsigned __int8 a9, uint64_t a10)
{
  LODWORD(v54) = a8;
  v52 = a7;
  v51 = *&a6;
  v49 = a5;
  v45 = a4;
  v48 = a3;
  v44 = a2;
  v43 = a1;
  v50 = a10;
  v46 = a9;
  v58 = type metadata accessor for DispatchWorkItemFlags();
  v61 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v59 = *(v12 - 8);
  v60 = v12;
  __chkstk_darwin(v12);
  v56 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMFFriend();
  v41 = v14;
  v15 = *(v14 - 8);
  v53 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FMPersonDetailViewModel(0);
  v47 = *(v18 - 8);
  v19 = *(v47 + 64);
  v20 = __chkstk_darwin(v18);
  v21 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = (&v41 - v22);
  v42 = *(v15 + 16);
  v42(v17, a1, v14);
  v24 = v45;

  v25 = v44;
  v26 = v44;
  v27 = v23;
  sub_1003B14B0(v17, v25, v24, v49, v51, v52, v54, v23, v46);
  v28 = v50;
  sub_10007EBC0(&unk_1006B40B0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100552220;
  *(v29 + 56) = v18;
  *(v29 + 64) = &off_10063AE78;
  v30 = sub_100008FC0((v29 + 32));
  v54 = type metadata accessor for FMPersonDetailViewModel;
  v55 = v27;
  sub_100027B78(v27, v30, type metadata accessor for FMPersonDetailViewModel);
  sub_100036B80(v29);

  sub_10000905C(0, &qword_1006AEDC0);
  v31 = static OS_dispatch_queue.main.getter();
  sub_100027B78(v27, v21, type metadata accessor for FMPersonDetailViewModel);
  v32 = v41;
  v42(v17, v43, v41);
  v33 = (*(v47 + 80) + 24) & ~*(v47 + 80);
  v34 = (v19 + *(v15 + 80) + v33) & ~*(v15 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v28;
  sub_1003D04B8(v21, v35 + v33);
  (*(v15 + 32))(v35 + v34, v17, v32);
  aBlock[4] = sub_1003D051C;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063B628;
  v36 = _Block_copy(aBlock);

  v37 = v56;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A3D8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  v39 = v57;
  v38 = v58;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v36);

  (*(v61 + 8))(v39, v38);
  (*(v59 + 8))(v37, v60);
  return sub_10002A0A0(v55, v54);
}

uint64_t sub_1003CABFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007EBC0(&qword_1006B3260);
  __chkstk_darwin(v6 - 8);
  v8 = &v15[-v7];
  sub_100027B78(a2, &v15[-v7], type metadata accessor for FMPersonDetailViewModel);
  v9 = type metadata accessor for FMPersonDetailViewModel(0);
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
  swift_beginAccess();
  sub_1003D05EC(v8, a1 + v10);
  swift_endAccess();
  sub_1003C89E8();
  sub_100012DF0(v8, &qword_1006B3260);
  v11 = *(a1 + 40);
  v16 = a3;
  v12 = *(*v11 + class metadata base offset for ManagedBuffer + 16);
  v13 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v11 + v13));
  sub_1003D067C(v11 + v12);
  os_unfair_lock_unlock((v11 + v13));
}

uint64_t sub_1003CADB0(uint64_t a1, uint64_t a2)
{
  sub_100012DF0(a1, &qword_1006B0050);
  v4 = type metadata accessor for FMFFriend();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, a2, v4);
  return (*(v5 + 56))(a1, 0, 1, v4);
}

uint64_t sub_1003CAE74(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10007EBC0(&qword_1006AF970);
    v4 = type metadata accessor for FMFFriend();
    v5 = *(v4 - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100552220;
    (*(v5 + 16))(v7 + v6, a2, v4);
    sub_1003C9A28(v7);

    swift_setDeallocating();
    (*(v5 + 8))(v7 + v6, v4);
    return swift_deallocClassInstance();
  }

  return result;
}

uint64_t sub_1003CAFC8(uint64_t a1)
{
  v3 = type metadata accessor for FMFLocationSource();
  v36 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v33 - v7;
  v9 = sub_10007EBC0(&qword_1006AF740);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for FMFLocation();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*(*(v1 + 16) + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  if (!v16)
  {
    return 0;
  }

  v17 = a1;
  v18 = v16;
  v35 = v17;
  FMFFriend.location.getter();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    sub_100012DF0(v11, &qword_1006AF740);
    return 0;
  }

  (*(v13 + 32))(v15, v11, v12);
  v19 = FMFLocation.location.getter();
  if (!v19)
  {
    (*(v13 + 8))(v15, v12);

    return 0;
  }

  v33 = v19;
  v34 = v12;
  FMFLocation.locationSource.getter();
  v20 = v36;
  (*(v36 + 104))(v6, enum case for FMFLocationSource.secureLive(_:), v3);
  sub_10000A3D8(&qword_1006B14E0, &type metadata accessor for FMFLocationSource);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v20 + 8);
  v22(v6, v3);
  v22(v8, v3);
  if (v21)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100005B14(v23, qword_1006D4630);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "FMPersonDetailDataSource: Not calculating ETA for live", v26, 2u);
    }

    (*(v13 + 8))(v15, v34);
    return 0;
  }

  v28 = FMFFriend.identifier.getter();
  v29 = v18;
  v30 = v33;
  v32 = sub_1002339F4(v18, v33, v28, v31);

  (*(v13 + 8))(v15, v34);
  return v32;
}

uint64_t sub_1003CB464()
{

  sub_10005CD20(v0 + 24);

  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel, &qword_1006B3260);
  return v0;
}

uint64_t sub_1003CB4EC()
{
  sub_1003CB464();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMPersonDetailDataSource()
{
  result = qword_1006BDB90;
  if (!qword_1006BDB90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003CB598()
{
  sub_100378FB0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1003CB6AC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMLocationSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber + 8) = &off_10063F210;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v3;
}

uint64_t sub_1003CB7D0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMLocationSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber + 8) = &off_100636B18;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v3;
}

uint64_t sub_1003CB8F4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMLocationSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber + 8) = &off_10063FA80;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v3;
}

uint64_t sub_1003CBA18(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMLocationSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber + 8) = &off_100643D98;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v3;
}

uint64_t sub_1003CBB3C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMLocationSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber + 8) = &off_100629DE8;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v3;
}

uint64_t sub_1003CBC60(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMLocationSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber + 8) = &off_1006392B8;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v3;
}

uint64_t sub_1003CBD84(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMLocationSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber + 8) = &off_1006275A8;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v3;
}

uint64_t sub_1003CBEA8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMLocationSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber + 8) = &off_10063B328;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v3;
}

uint64_t sub_1003CBFCC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMLocationSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber + 8) = &off_100643140;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v3;
}

uint64_t sub_1003CC0F0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMConditionSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = &off_100643A00;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v3;
}

uint64_t sub_1003CC214(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMConditionSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = &off_10062A5D8;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v3;
}

uint64_t sub_1003CC338(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMConditionSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = &off_100634DF8;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v3;
}

uint64_t sub_1003CC45C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMConditionSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = &off_10063C2D0;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v3;
}

uint64_t sub_1003CC580(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMConditionSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = &off_100642EB8;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v3;
}

uint64_t sub_1003CC6A4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMConditionSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = &off_100629F20;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v3;
}

uint64_t sub_1003CC7C8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMConditionSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = &off_100639238;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v3;
}

uint64_t sub_1003CC8EC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMConditionSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = &off_100623D28;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v3;
}

uint64_t sub_1003CCA10(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMConditionSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = &off_10063B280;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v3;
}

uint64_t sub_1003CCB34(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMConditionSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = &off_100628760;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v3;
}

uint64_t sub_1003CCC58(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMConditionSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = &off_100632E78;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v3;
}

uint64_t sub_1003CCD7C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMConditionSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = &off_100643098;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v3;
}

uint64_t sub_1003CCEA0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMConditionSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = &off_10062D178;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v3;
}

uint64_t sub_1003CCFC4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMConditionSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = &off_1006318A0;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v3;
}

uint64_t sub_1003CD0E8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMConditionSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = &off_10063B708;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v3;
}

unint64_t sub_1003CD588(unint64_t result, uint64_t a2, uint64_t a3)
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

unint64_t sub_1003CD648(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = (v9 + 32 + 8 * result);
  sub_10007EBC0(&unk_1006C0340);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = &v10[a3];
      v15 = (v9 + 32 + 8 * a2);
      if (result != v15 || result >= v15 + 8 * v14)
      {
        result = memmove(result, v15, 8 * v14);
      }

      v17 = *(v9 + 16);
      v11 = __OFADD__(v17, v12);
      v18 = v17 + v12;
      if (!v11)
      {
        *(v9 + 16) = v18;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v10 = a4;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1003CD76C(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t))
{
  v8 = *a1;
  result = sub_1003CE904(*a1);
  v11 = result;
  if (v4)
  {
    return v11;
  }

  if (v10)
  {
    if (v8 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = a1;
  v22 = a4;
  v12 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v13 = *a3;
  while (1)
  {
    if (v8 >> 62)
    {
      if (v12 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v11;
      }
    }

    else if (v12 == *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v11;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_15;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

LABEL_15:
    v15 = static UUID.== infix(_:_:)();

    if ((v15 & 1) == 0)
    {
      if (v11 != v12)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v18 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v11 >= v18)
          {
            goto LABEL_45;
          }

          if (v12 >= v18)
          {
            goto LABEL_46;
          }

          v16 = *(v8 + 32 + 8 * v11);
          v17 = *(v8 + 32 + 8 * v12);
        }

        v19 = v13;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v8 & 0x8000000000000000) != 0 || (v8 & 0x4000000000000000) != 0)
        {
          v8 = v22(v8);
          v20 = (v8 >> 62) & 1;
        }

        else
        {
          LODWORD(v20) = 0;
        }

        v21 = v8 & 0xFFFFFFFFFFFFFF8;
        *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * v11 + 0x20) = v17;

        if ((v8 & 0x8000000000000000) != 0 || v20)
        {
          v8 = v22(v8);
          v21 = v8 & 0xFFFFFFFFFFFFFF8;
          if ((v12 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v11;
          }
        }

        else if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v12 >= *(v21 + 16))
        {
          goto LABEL_43;
        }

        v13 = v19;
        *(v21 + 8 * v12 + 32) = v16;

        *v23 = v8;
      }

      v14 = __OFADD__(v11++, 1);
      if (v14)
      {
        goto LABEL_42;
      }
    }

    v14 = __OFADD__(v12++, 1);
    if (v14)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_1003CDA04(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_1003CDB20(uint64_t a1)
{
  v2 = type metadata accessor for FMFFriend();
  v34 = *(v2 - 8);
  __chkstk_darwin(v2);
  v33 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FMSelectedSection();
  v5 = __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);
  sub_100027B78(a1, v9, type metadata accessor for FMSelectedSection);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v32 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v31 = a1;
    v16 = v15;
    *v14 = 136315138;
    v36 = 0;
    v37 = 0xE000000000000000;
    v38 = v15;
    _print_unlocked<A, B>(_:_:)();
    v18 = v36;
    v17 = v37;
    sub_10002A0A0(v9, type metadata accessor for FMSelectedSection);
    v19 = sub_100005B4C(v18, v17, &v38);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "FMPersonDetailDataSource: didUpdate selectedSection %s", v14, 0xCu);
    sub_100006060(v16);
    a1 = v31;

    v2 = v32;
  }

  else
  {

    sub_10002A0A0(v9, type metadata accessor for FMSelectedSection);
  }

  sub_100027B78(a1, v7, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v21 = v33;
    v20 = v34;
    v22 = (*(v34 + 32))(v33, v7, v2);
    v23 = *(v35 + 40);
    __chkstk_darwin(v22);
    *(&v30 - 2) = v21;
    v24 = *(*v23 + class metadata base offset for ManagedBuffer + 16);
    v25 = (*(*v23 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v23 + v25));
    sub_1003CFDA0(v23 + v24);
    os_unfair_lock_unlock((v23 + v25));

    v26 = dispatch thunk of FMFManager.friends.getter();

    sub_1003C9A28(v26);

    (*(v20 + 8))(v21, v2);
  }

  else
  {
    sub_10002A0A0(v7, type metadata accessor for FMSelectedSection);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "FMPersonDetailDataSource: not updating selection...", v29, 2u);
    }
  }
}

uint64_t sub_1003CDFD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_10000905C(0, a4);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003CE100(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v7 = *(v18 - 8);
  __chkstk_darwin(v18);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v11, v12, "FMPersonDetailDataSource: didUpdate %ld people", v13, 0xCu);
  }

  else
  {
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = a1;
  aBlock[4] = sub_1003CEB5C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063B498;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A3D8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v19 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v18);
}

uint64_t sub_1003CE4D4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v7 = *(v17 - 8);
  __chkstk_darwin(v17);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v11, v12, "FMPersonDetailDataSource: didUpdate %ld locationAlerts", v13, 0xCu);
  }

  else
  {
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v14 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1003CEB40;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063B448;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A3D8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v18 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v17);
}

unint64_t sub_1003CE904(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    v5 = static UUID.== infix(_:_:)();

    if (v5)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1003CEA5C(uint64_t a1, uint64_t a2, void (*a3)(void))
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

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v5)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v5, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v6 - v5;
  if (__OFSUB__(0, v5 - v6))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v11, v10);
  result = v11 + v10;
  if (!v12)
  {
    sub_1000200B4(result);
    return sub_1003CDA04(v6, v5, 0, v3);
  }

LABEL_16:
  __break(1u);
  return result;
}

char *sub_1003CEB84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_10000905C(0, a5);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      result = v6[2];
      v16 = &result[-v8];
      if (!__OFSUB__(result, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v16 = &result[-v8];
    if (!__OFSUB__(result, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v6[2];
      }

      if (!__OFADD__(result, v12))
      {
        v6[2] = &result[v12];
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
  if (v5 > 0)
  {
    *v7 = v9;
    result = v9;
    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_1003CECBC(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    v8 = a1;
    v9 = *v4;
    v10 = *v4 >> 62;
    if (!v10)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  v12 = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = 1 - v12;
  if (__OFSUB__(1, v12))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = (v14 + v13);
  if (!v15)
  {
    sub_1000200B4(result);
    return sub_1003CEB84(v8, v7, 1, v6, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1003CEDB4(uint64_t a1)
{
  v2 = v1;
  v39 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v44 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v6 - 8);
  v8 = &v36 - v7;
  v9 = type metadata accessor for FMFFriend();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v40 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  v41 = v2;
  v15 = *(v2 + 40);
  v16 = *(*v15 + class metadata base offset for ManagedBuffer + 16);
  v17 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v15 + v17));
  sub_100007204(v15 + v16, v8, &qword_1006B0050);
  os_unfair_lock_unlock((v15 + v17));

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_100012DF0(v8, &qword_1006B0050);
  }

  v37 = *(v10 + 32);
  v38 = v10;
  v37(v14, v8, v9);
  v19 = v9;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100005B14(v20, qword_1006D4630);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    sub_10007EBC0(&unk_1006BBCC0);
    v25.super.isa = Array._bridgeToObjectiveC()().super.isa;
    *(v23 + 4) = v25;
    v24->super.isa = v25.super.isa;
    _os_log_impl(&_mh_execute_header, v21, v22, "FMPersonDetailDataSource: itemsDidAge %@", v23, 0xCu);
    sub_100012DF0(v24, &unk_1006AF760);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v39 = static OS_dispatch_queue.main.getter();
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = v38;
  v28 = v40;
  (*(v38 + 16))(v40, v14, v19);
  v29 = (*(v27 + 80) + 24) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v26;
  v37((v30 + v29), v28, v19);
  aBlock[4] = sub_1003CF748;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063B538;
  v31 = _Block_copy(aBlock);

  v32 = v42;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A3D8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  v33 = v44;
  v34 = v47;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v35 = v39;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);

  (*(v46 + 8))(v33, v34);
  (*(v43 + 8))(v32, v45);
  return (*(v27 + 8))(v14, v19);
}

uint64_t sub_1003CF444(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v8 = *(v15 - 8);
  __chkstk_darwin(v15);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v2;
  aBlock[4] = sub_1003CF73C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063B4E8;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A3D8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v16 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v15);
}

uint64_t sub_1003CF748()
{
  v1 = *(type metadata accessor for FMFFriend() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1003CAE74(v2, v3);
}

unint64_t sub_1003CF7AC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_10007EBC0(&qword_1006AF7C8);
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

uint64_t sub_1003CF8BC(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v3;
    v8 = *v3 >> 62;
    if (!v8)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v5)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v5, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v6 - v5;
  if (__OFSUB__(0, v5 - v6))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v11, v10);
  result = v11 + v10;
  if (!v12)
  {
    sub_1000200B4(result);
    return sub_1003CDFD0(v6, v5, 0, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1003CF9A0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v5 = *(v17 - 8);
  __chkstk_darwin(v17);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    sub_10000905C(0, &qword_1006BBCB0);
    v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
    *(v11 + 4) = v13;
    v12->super.isa = v13.super.isa;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMPersonDetailDataSource: didUpdate location %@", v11, 0xCu);
    sub_100012DF0(v12, &unk_1006AF760);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v14 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1003D0678;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063B560;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A3D8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v18 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v17);
}

uint64_t sub_1003CFDBC(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v25 = *(v8 - 8);
  v26 = v8;
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4630);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v5;
    v16 = v15;
    aBlock[0] = v15;
    *v14 = 136315138;
    if (a1)
    {
      v17 = 28239;
    }

    else
    {
      v17 = 6710863;
    }

    if (a1)
    {
      v18 = 0xE200000000000000;
    }

    else
    {
      v18 = 0xE300000000000000;
    }

    v19 = sub_100005B4C(v17, v18, aBlock);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "FMPersonDetailDataSource: Airplane Mode is %s", v14, 0xCu);
    sub_100006060(v16);
    v5 = v24;
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v20 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1003D0678;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063B588;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A3D8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v5 + 8))(v7, v4);
  return (*(v25 + 8))(v10, v26);
}

unint64_t sub_1003D01B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for FMIPSafeLocation();
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

uint64_t sub_1003D0324(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_1003D03FC()
{
  v1 = *(type metadata accessor for FMFFriend() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1003CA614(v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + v4 + 24), *(v0 + v4 + 32), *(v0 + v4 + 33), *(v0 + v4 + 34), *(v0 + ((v4 + 42) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1003D04B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMPersonDetailViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003D051C()
{
  v1 = *(type metadata accessor for FMPersonDetailViewModel(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for FMFFriend() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1003CABFC(v5, v0 + v2, v6);
}

uint64_t sub_1003D05EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B3260);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_1003D08D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMGlyphLabel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_1003D0990()
{
  v4 = &type metadata for SolariumFeatureFlag;
  v5 = sub_10000BD04();
  v0 = isFeatureEnabled(_:)();
  sub_100006060(v3);
  v1 = 12.0;
  if (v0)
  {
    v1 = 16.0;
  }

  qword_1006BDDF8 = 0;
  unk_1006BDE00 = 0;
  qword_1006BDE08 = *&v1;
  result = 10.0;
  unk_1006BDE10 = xmmword_10055F5D0;
  qword_1006BDE20 = 0x4024000000000000;
  return result;
}

void sub_1003D0A10()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() imageNamed:v0];

  if (v1)
  {
    v2 = [objc_allocWithZone(UIColor) initWithDisplayP3Red:0.541176471 green:0.552941176 blue:0.576470588 alpha:1.0];
    v3 = [v1 tintedImageWithColor:v2];
  }

  else
  {
    v3 = 0;
  }

  qword_1006BDE28 = v3;
}

void sub_1003D0C0C()
{
  v10 = &type metadata for SolariumFeatureFlag;
  v11 = sub_10000BD04();
  v1 = isFeatureEnabled(_:)();
  sub_100006060(v9);
  if (v1)
  {
    v2 = [v0 textLabel];
    if (v2)
    {
      v3 = v2;
      v4 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleHeadline];
      [v3 setFont:v4];
    }

    v5 = [v0 detailTextLabel];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_opt_self() secondaryLabelColor];
      [v6 setTextColor:v7];
    }

    v8 = [objc_opt_self() secondarySystemBackgroundColor];
    [v0 setBackgroundColor:v8];
  }
}

void sub_1003D0D68()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for FMFenceMapTableViewCell();
  objc_msgSendSuper2(&v7, "prepareForReuse");
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = v1;
    [v1 setText:0];
  }

  v3 = [v0 detailTextLabel];
  if (v3)
  {
    v4 = v3;
    [v3 setText:0];
  }

  [v0 setAccessoryView:0];
  v5 = [v0 imageView];
  if (v5)
  {
    v6 = v5;
    [v5 setImage:0];
  }
}

void sub_1003D0EA0()
{
  v32.receiver = v0;
  v32.super_class = type metadata accessor for FMFenceMapTableViewCell();
  objc_msgSendSuper2(&v32, "layoutSubviews");
  if (qword_1006AEC60 != -1)
  {
    swift_once();
  }

  v1 = *&qword_1006BDDF8;
  v2 = unk_1006BDE00;
  v3 = *&qword_1006BDE08;
  v4 = unk_1006BDE10;
  v5 = *&qword_1006BDE20;
  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 userInterfaceLayoutDirection];

  [v0 bounds];
  v9 = v3 + v1 + v2 + v8;
  v10 = [v0 textLabel];
  if (v10)
  {
    v11 = v9;
    if (v7 == 1)
    {
      v12 = v10;
      [v10 frame];
      v10 = v12;
      v11 = v13;
    }

    v14 = v10;
    [v0 bounds];
    v16 = v4 + v15;
    [v14 frame];
    v18 = v17;
    [v14 frame];
    [v14 setFrame:{v11, v16, v18}];
  }

  v19 = [v0 detailTextLabel];
  if (v19)
  {
    if (v7 == 1)
    {
      v20 = v19;
      [v19 frame];
      v19 = v20;
      v9 = v21;
    }

    v22 = v19;
    [v0 bounds];
    MaxY = CGRectGetMaxY(v33);
    [v22 frame];
    v25 = MaxY - v24 - v5;
    [v22 frame];
    v27 = v26;
    [v22 frame];
    [v22 setFrame:{v9, v25, v27}];
  }

  v28 = [v0 imageView];
  if (v28)
  {
    v29 = v28;
    [v0 bounds];
    v31 = v2 + v30;
    [v0 bounds];
    [v29 setFrame:{v31, CGRectGetMidY(v34) + v1 * -0.5, v1, v1}];
  }
}

id sub_1003D1198()
{
  v1 = v0;
  v2 = type metadata accessor for FMFLocationAlertAddressType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006BDE60);
  __chkstk_darwin(v6);
  v8 = &v41 - v7;
  v9 = sub_10007EBC0(&qword_1006B00C8);
  v10 = __chkstk_darwin(v9 - 8);
  __chkstk_darwin(v10);
  v13 = &v41 - v12;
  v14 = *&v1[OBJC_IVAR____TtC6FindMy23FMFenceMapTableViewCell_record];
  if (v14)
  {
    v41 = v5;
    v42 = v11;
    v15 = *&v14[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_title + 8];
    v43 = *&v14[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_title];

    v16 = v14;
    v17 = [v1 textLabel];
    if (v17)
    {
      v18 = v17;
      if (v15)
      {

        v19 = String._bridgeToObjectiveC()();
      }

      else
      {
        v19 = 0;
      }

      [v18 setText:v19];
    }

    v26 = [v1 detailTextLabel];
    if (v26)
    {
      v27 = v26;
      v28 = sub_1003D18C4(v16, v43, v15);

      [v27 setAttributedText:v28];
    }

    else
    {
    }

    v29 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_addressType;
    swift_beginAccess();
    (*(v3 + 104))(v13, enum case for FMFLocationAlertAddressType.friendLocation(_:), v2);
    (*(v3 + 56))(v13, 0, 1, v2);
    v30 = *(v6 + 48);
    sub_1003D1854(&v16[v29], v8);
    sub_1003D1854(v13, &v8[v30]);
    v31 = *(v3 + 48);
    v32 = v31(v8, 1, v2);
    v33 = v42;
    if (v32 == 1)
    {
      sub_100012DF0(v13, &qword_1006B00C8);
      if (v31(&v8[v30], 1, v2) == 1)
      {
        sub_100012DF0(v8, &qword_1006B00C8);
LABEL_24:
        if (qword_1006AEC68 != -1)
        {
          swift_once();
        }

        v34 = [objc_allocWithZone(UIImageView) initWithImage:qword_1006BDE28];
        goto LABEL_27;
      }
    }

    else
    {
      sub_1003D1854(v8, v42);
      if (v31(&v8[v30], 1, v2) != 1)
      {
        v35 = v41;
        (*(v3 + 32))(v41, &v8[v30], v2);
        sub_1003D2248(&qword_1006BA958, &type metadata accessor for FMFLocationAlertAddressType);
        v36 = dispatch thunk of static Equatable.== infix(_:_:)();
        v37 = *(v3 + 8);
        v37(v35, v2);
        sub_100012DF0(v13, &qword_1006B00C8);
        v37(v33, v2);
        sub_100012DF0(v8, &qword_1006B00C8);
        if (v36)
        {
          goto LABEL_24;
        }

LABEL_22:
        v34 = 0;
LABEL_27:
        [v1 setAccessoryView:v34];

        v38 = [v1 imageView];
        if (v38)
        {
          v39 = v38;
          [v38 setContentMode:2];
        }

        return [v1 setNeedsLayout];
      }

      sub_100012DF0(v13, &qword_1006B00C8);
      (*(v3 + 8))(v33, v2);
    }

    sub_100012DF0(v8, &qword_1006BDE60);
    goto LABEL_22;
  }

  v20 = [v1 textLabel];
  if (v20)
  {
    v21 = v20;
    [v20 setText:0];
  }

  v22 = [v1 detailTextLabel];
  if (v22)
  {
    v23 = v22;
    [v22 setText:0];
  }

  [v1 setAccessoryView:0];
  v24 = [v1 imageView];
  if (v24)
  {
    v25 = v24;
    [v24 setImage:0];
  }

  return [v1 setNeedsLayout];
}

id sub_1003D17EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMFenceMapTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003D1854(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B00C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003D18C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_labelLocalizedValue);
  v3 = *(a1 + OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_labelLocalizedValue + 8);
  v5 = *(a1 + OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_displayAddress);
  v6 = *(a1 + OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_displayAddress + 8);
  if (!a3)
  {
    if (v3)
    {
      if (v6)
      {
        v62 = *(a1 + OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_labelLocalizedValue);
        goto LABEL_18;
      }

      return 0;
    }

LABEL_19:
    if (v6)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v3)
  {
    if (v4 == a2 && v3 == a3)
    {
      goto LABEL_19;
    }

    v8 = a2;
    v9 = a3;
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v8;
    a3 = v9;
    if (v10)
    {
      goto LABEL_19;
    }
  }

  if (!v6)
  {
    return 0;
  }

  v11 = v5 == a2 && v6 == a3;
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v62 = v4;
LABEL_18:

    goto LABEL_21;
  }

LABEL_20:
  v62 = 0;
  v3 = 0;
LABEL_21:
  sub_10007EBC0(&qword_1006B0C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = NSFontAttributeName;
  v13 = objc_opt_self();
  v14 = NSFontAttributeName;

  v15 = [v13 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v16 = sub_1003D21FC();
  *(inited + 64) = v16;
  *(inited + 40) = v15;
  sub_10001AC8C(inited);
  swift_setDeallocating();
  sub_100012DF0(inited + 32, &qword_1006B0C50);
  if (!v3)
  {
LABEL_66:
    v54 = objc_allocWithZone(NSAttributedString);
    v55 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_1003D2248(&qword_1006AF370, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v57 = [v54 initWithString:v55 attributes:isa];

    return v57;
  }

  v17 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v17 = v62 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {

    goto LABEL_66;
  }

  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_100552220;
  *(v18 + 32) = v14;
  v67 = &type metadata for SolariumFeatureFlag;
  v61 = sub_10000BD04();
  v68 = v61;
  v19 = v14;
  v20 = isFeatureEnabled(_:)();
  sub_100006060(&v66);
  v21 = UIFontTextStyleHeadline;
  if (v20)
  {
    v21 = UIFontTextStyleSubheadline;
  }

  v22 = v21;
  v23 = [v13 preferredFontForTextStyle:v22];

  *(v18 + 64) = v16;
  *(v18 + 40) = v23;
  sub_10001AC8C(v18);
  swift_setDeallocating();
  sub_100012DF0(v18 + 32, &qword_1006B0C50);
  v63 = [objc_allocWithZone(NSMutableAttributedString) init];
  v60 = objc_opt_self();
  v24 = [v60 mainBundle];
  v69._object = 0x8000000100595240;
  v25._countAndFlagsBits = 0xD000000000000018;
  v25._object = 0x8000000100595220;
  v69._countAndFlagsBits = 0xD00000000000002ALL;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v69);

  v66 = v27;
  sub_100035F3C();
  v28 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

  v64 = *(v28 + 16);
  v65 = v28;
  if (!v64)
  {
LABEL_64:

    return v63;
  }

  v30 = 0;
  v31 = (v28 + 56);
  while (v30 < *(v65 + 16))
  {
    v32 = *(v31 - 1);
    v33 = *v31;
    v34 = *(v31 - 3) >> 16;
    v35 = *(v31 - 2) >> 16;
    if (v32 == 2371877)
    {
      if (v33 == 0xE300000000000000 && v34 == 0 && v35 == 3)
      {
        goto LABEL_41;
      }

      LOBYTE(v58) = 0;
      if (_stringCompareInternal(_:_:_:_:expecting:)())
      {
        goto LABEL_41;
      }
    }

    else
    {
      LOBYTE(v58) = 0;
      if (_stringCompareInternal(_:_:_:_:expecting:)())
      {
        goto LABEL_41;
      }

      if (v32 == 2372133 && v33 == 0xE300000000000000 && !v34 && v35 == 3)
      {
LABEL_47:
        v67 = &type metadata for SolariumFeatureFlag;
        v68 = v61;

        v42 = isFeatureEnabled(_:)();
        sub_100006060(&v66);
        v43 = (v42 & 1) == 0;
        if (v42)
        {
          v44 = 0xD00000000000001DLL;
        }

        else
        {
          v44 = 0xD000000000000011;
        }

        if (v43)
        {
          v45 = "g NO_ADDRESS_MESSAGE";
        }

        else
        {
          v45 = "g ADDRESS_SEPARATOR_FORMAT";
        }

        v66._countAndFlagsBits = 0;
        v66._object = 0xE000000000000000;
        _StringGuts.grow(_:)(20);

        v66._countAndFlagsBits = 0xD000000000000012;
        v66._object = 0x800000010057A180;
        v46._object = (v45 | 0x8000000000000000);
        v46._countAndFlagsBits = v44;
        String.append(_:)(v46);
        countAndFlagsBits = v66._countAndFlagsBits;
        object = v66._object;
        v49 = [v60 mainBundle];
        v70._object = object;
        v50._object = (v45 | 0x8000000000000000);
        v50._countAndFlagsBits = v44;
        v51._countAndFlagsBits = 0;
        v51._object = 0xE000000000000000;
        v70._countAndFlagsBits = countAndFlagsBits;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v50, 0, v49, v51, v70);

        v52 = objc_allocWithZone(NSAttributedString);
        v39 = String._bridgeToObjectiveC()();

        type metadata accessor for Key(0);
        sub_1003D2248(&qword_1006AF370, type metadata accessor for Key);
        v40.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
        v41 = [v52 initWithString:v39 attributes:{v40.super.isa, v59}];
        goto LABEL_54;
      }
    }

    LOBYTE(v58) = 0;
    if (_stringCompareInternal(_:_:_:_:expecting:)())
    {
      goto LABEL_47;
    }

    if (v32 != 2372389 || v33 != 0xE300000000000000 || v34 || v35 != 3)
    {
      LOBYTE(v58) = 0;
      result = _stringCompareInternal(_:_:_:_:expecting:)();
      if ((result & 1) == 0)
      {
        goto LABEL_55;
      }
    }

LABEL_41:
    v38 = objc_allocWithZone(NSAttributedString);

    v39 = String._bridgeToObjectiveC()();
    type metadata accessor for Key(0);
    sub_1003D2248(&qword_1006AF370, type metadata accessor for Key);
    v40.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v41 = [v38 initWithString:v39 attributes:{v40.super.isa, v58}];
LABEL_54:
    v53 = v41;

    [v63 appendAttributedString:v53];

LABEL_55:
    ++v30;
    v31 += 4;
    if (v64 == v30)
    {
      goto LABEL_64;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1003D21FC()
{
  result = qword_1006B4DD0;
  if (!qword_1006B4DD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006B4DD0);
  }

  return result;
}

uint64_t sub_1003D2248(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003D2290()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleBody;
  v2 = [v0 mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v13.origin.x = v4;
  v13.origin.y = v6;
  v13.size.width = v8;
  v13.size.height = v10;
  v11 = CGRectGetWidth(v13) > 385.0;
  v12 = 20.0;
  if (!v11)
  {
    v12 = 16.0;
  }

  qword_1006D48D0 = v1;
  unk_1006D48D8 = xmmword_10055D4B0;
  unk_1006D48E8 = xmmword_10055F630;
  qword_1006D48F8 = 35;
  qword_1006D4900 = *&v12;
}

void sub_1003D23A4()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy21FMLabelViewController_tableView];
  [v1 _setSectionContentInsetFollowsLayoutMargins:1];
  [v1 setDataSource:v0];
  [v1 setDelegate:v0];
  [v1 setKeyboardDismissMode:2];
  [v1 setEstimatedRowHeight:*&v0[OBJC_IVAR____TtC6FindMy21FMLabelViewController_style + 24]];
  [v1 setEstimatedSectionHeaderHeight:UITableViewAutomaticDimension];
  [v1 separatorInset];
  [v1 setSeparatorInset:?];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 addSubview:v1];
  }

  else
  {
    __break(1u);
  }
}

void sub_1003D24E0()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy21FMLabelViewController_tableView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10007EBC0(&qword_1006AFC30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1005521F0;
  v3 = [v1 topAnchor];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 topAnchor];

  v7 = [v3 constraintEqualToAnchor:v6];
  *(v2 + 32) = v7;
  v8 = [v1 bottomAnchor];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v9;
  v11 = [v9 bottomAnchor];

  v12 = [v8 constraintEqualToAnchor:v11];
  *(v2 + 40) = v12;
  v13 = [v1 leadingAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  v16 = [v14 leadingAnchor];

  v17 = [v13 constraintEqualToAnchor:v16];
  *(v2 + 48) = v17;
  v18 = [v1 trailingAnchor];
  v19 = [v0 view];
  if (!v19)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v20 = v19;
  v21 = objc_opt_self();
  v22 = [v20 trailingAnchor];

  v23 = [v18 constraintEqualToAnchor:v22];
  *(v2 + 56) = v23;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v21 activateConstraints:isa];
}

void sub_1003D27D0()
{
  v1 = v0;
  v28.receiver = v0;
  v28.super_class = type metadata accessor for FMLabelViewController();
  objc_msgSendSuper2(&v28, "viewDidLoad");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() systemBackgroundColor];
    [v3 setBackgroundColor:v4];

    v5 = *&v1[OBJC_IVAR____TtC6FindMy21FMLabelViewController_mediator];
    if (v5)
    {
      v6 = *(v5 + 48);
      type metadata accessor for FMPeopleSubscription();
      v7 = swift_allocObject();
      *(v7 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = 0;
      swift_unknownObjectWeakInit();

      UUID.init()();
      *(v7 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = &off_10063B788;
      swift_unknownObjectWeakAssign();
      v8 = *(v6 + 32);

      os_unfair_lock_lock((v8 + 24));
      sub_100012470((v8 + 16));
      os_unfair_lock_unlock((v8 + 24));

      *&v1[OBJC_IVAR____TtC6FindMy21FMLabelViewController_peopleSubscription] = v7;

      v9 = [objc_opt_self() mainBundle];
      v29._object = 0x8000000100595490;
      v10._countAndFlagsBits = 0xD000000000000015;
      v10._object = 0x8000000100595470;
      v29._countAndFlagsBits = 0xD000000000000027;
      v11._countAndFlagsBits = 0;
      v11._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v29);

      v12 = String._bridgeToObjectiveC()();

      [v1 setTitle:v12];

      v13 = [v1 navigationItem];
      v14 = objc_allocWithZone(UIBarButtonItem);
      v15 = v1;
      v16 = [v14 initWithBarButtonSystemItem:24 target:v15 action:"performCancelActionWithSender:"];
      [v13 setLeftBarButtonItem:v16];

      v17 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v15 action:"saveLabelWithSender:"];
      [v17 setEnabled:0];
      v18 = *&v15[OBJC_IVAR____TtC6FindMy21FMLabelViewController_rightBarButtonItem];
      *&v15[OBJC_IVAR____TtC6FindMy21FMLabelViewController_rightBarButtonItem] = v17;
      v19 = v17;

      v20 = [v15 navigationItem];
      [v20 setRightBarButtonItem:v19];

      v21 = *&v15[OBJC_IVAR____TtC6FindMy21FMLabelViewController_tableView];
      type metadata accessor for FMLabelTableViewCell();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v23 = String._bridgeToObjectiveC()();
      [v21 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v23];

      sub_10000905C(0, &unk_1006B7840);
      v24 = swift_getObjCClassFromMetadata();
      v25 = String._bridgeToObjectiveC()();
      [v21 registerClass:v24 forHeaderFooterViewReuseIdentifier:v25];

      type metadata accessor for FMLocationLabelHeaderView();
      v26 = swift_getObjCClassFromMetadata();
      v27 = String._bridgeToObjectiveC()();
      [v21 registerClass:v26 forHeaderFooterViewReuseIdentifier:v27];

      sub_1003D23A4();
      sub_1003D24E0();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1003D2C64(char a1)
{
  v2 = v1;
  v19.receiver = v2;
  v19.super_class = type metadata accessor for FMLabelViewController();
  objc_msgSendSuper2(&v19, "viewWillAppear:", a1 & 1);
  v4 = [v2 navigationController];
  if (v4)
  {
    v5 = v4;
    [v4 setNavigationBarHidden:0 animated:1];
  }

  *&v2[OBJC_IVAR____TtC6FindMy21FMLabelViewController_customLabels] = sub_1003D35B0();

  v6 = *&v2[OBJC_IVAR____TtC6FindMy21FMLabelViewController_tableView];
  [v6 reloadData];
  result = sub_1003D2EBC();
  v8 = OBJC_IVAR____TtC6FindMy21FMLabelViewController_mediator;
  v9 = *&v2[OBJC_IVAR____TtC6FindMy21FMLabelViewController_mediator];
  if (!v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = *(v9 + 48);
  type metadata accessor for FMPeopleSubscription();
  v11 = swift_allocObject();
  *(v11 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();

  UUID.init()();
  *(v11 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = &off_10063B788;
  swift_unknownObjectWeakAssign();
  v12 = *(v10 + 32);

  os_unfair_lock_lock((v12 + 24));
  sub_10000E7C0((v12 + 16));
  os_unfair_lock_unlock((v12 + 24));

  *&v2[OBJC_IVAR____TtC6FindMy21FMLabelViewController_peopleSubscription] = v11;

  v13 = *&v2[v8];
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = *(v13 + 16);
  v15 = sub_1003CD0E8(v2, v14);

  *&v2[OBJC_IVAR____TtC6FindMy21FMLabelViewController_conditionsSubscription] = v15;

  result = sub_1003D578C();
  v16 = *&v2[v8];
  if (v16)
  {
    v17 = *(*(v16 + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isNetworkUp);
    v18 = [v6 isEditing];
    [v6 setAllowsSelection:v17];
    [v6 reloadData];
    return sub_1003D4EA4(v17 & (v18 ^ 1u));
  }

LABEL_9:
  __break(1u);
  return result;
}