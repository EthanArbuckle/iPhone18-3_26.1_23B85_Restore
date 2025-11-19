Swift::Int sub_100E7DCA8(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100E75868();
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_100E84344();
        goto LABEL_74;
      }

      sub_100E889D4();
    }

    v8 = *v3;
    Hasher.init(_seed:)();
    sub_100068D24();
    result = Hasher._finalize()();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v54 = ~v9;
      do
      {
        v10 = *(v8 + 48) + 56 * a2;
        v11 = *(v10 + 48);
        v12 = *(v10 + 32);
        v13 = *v10;
        v57 = *(v10 + 16);
        v58 = v12;
        v56 = v13;
        v59 = v11;
        sub_1000693DC(&v56, v55);
        v14 = sub_100068F28();
        v16 = v15;
        if (v14 == sub_100068F28() && v16 == v17)
        {
        }

        else
        {
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v18 & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        result = v56;
        v19 = v57;
        v20 = BYTE8(v57);
        v21 = v59;
        v22 = v59 >> 6;
        if (v22 > 1)
        {
          v25 = v58;
          v26 = (*(&v57 + 9) << 8) | ((*(&v57 + 13) | (HIBYTE(v57) << 16)) << 40);
          if (v22 == 2)
          {
            v27 = *(v5 + 48);
            if ((v27 & 0xC0) != 0x80)
            {
              goto LABEL_11;
            }

            v28 = *(v5 + 8);
            v29 = *(v5 + 16);
            v31 = *(v5 + 24);
            v30 = *(v5 + 32);
            v32 = *(v5 + 40);
            if (*(&v56 + 1))
            {
              if (!v28)
              {
                goto LABEL_11;
              }

              if (v56 != *v5)
              {
                v51 = *(v5 + 32);
                v52 = *(v5 + 40);
                v49 = *(v5 + 16);
                v50 = *(v5 + 24);
                v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v29 = v49;
                v31 = v50;
                v30 = v51;
                v32 = v52;
                if ((v33 & 1) == 0)
                {
                  goto LABEL_11;
                }
              }
            }

            else if (v28)
            {
              goto LABEL_11;
            }

            if (v26 | v20)
            {
              if (!v31 || (v19 != v29 || (v26 | v20) != v31) && (v34 = v32, v35 = v30, v36 = _stringCompareWithSmolCheck(_:_:expecting:)(), v30 = v35, v32 = v34, (v36 & 1) == 0))
              {
LABEL_11:
                result = sub_1000698D0(&v56);
                goto LABEL_12;
              }
            }

            else if (v31)
            {
              goto LABEL_11;
            }

            if (!*(&v25 + 1))
            {
              v41 = v32;
              result = sub_1000698D0(&v56);
              if (v41)
              {
                goto LABEL_12;
              }

              goto LABEL_69;
            }

            if (!v32)
            {
              goto LABEL_11;
            }

            if (v25 == __PAIR128__(v32, v30))
            {
              result = sub_1000698D0(&v56);
LABEL_69:
              if (((v21 ^ v27) & 1) == 0)
              {
                goto LABEL_78;
              }

              goto LABEL_12;
            }

            v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
            result = sub_1000698D0(&v56);
            if ((v21 ^ v27) & 1) == 0 && (v42)
            {
              goto LABEL_78;
            }
          }

          else
          {
            v37 = v26 | BYTE8(v57);
            v38 = v57 | *(&v56 + 1);
            if (v59 != 192 || v38 | v56 | v58 | *(&v58 + 1) | v37)
            {
              if (v59 == 192 && v56 == 1 && !(v38 | v58 | *(&v58 + 1) | v37))
              {
                if (*(v5 + 48) != 192 || *v5 != 1)
                {
                  goto LABEL_12;
                }
              }

              else if (*(v5 + 48) != 192 || *v5 != 2)
              {
                goto LABEL_12;
              }

              v40 = vorrq_s8(*(v5 + 16), *(v5 + 32));
              if (!(*&vorr_s8(*v40.i8, *&vextq_s8(v40, v40, 8uLL)) | *(v5 + 8)))
              {
                goto LABEL_78;
              }
            }

            else if (*(v5 + 48) == 192)
            {
              v39 = vorrq_s8(*(v5 + 16), *(v5 + 32));
              if (!(*&vorr_s8(*v39.i8, *&vextq_s8(v39, v39, 8uLL)) | *(v5 + 8) | *v5))
              {
                goto LABEL_78;
              }
            }
          }
        }

        else if (v22)
        {
          if ((*(v5 + 48) & 0xC0) == 0x40 && *v5 == v56 && *(v5 + 8) == *(&v56 + 1))
          {
            if (BYTE8(v57))
            {
              if (*(v5 + 24))
              {
                goto LABEL_78;
              }
            }

            else if ((*(v5 + 24) & 1) == 0 && *(v5 + 16) == *&v57)
            {
              goto LABEL_78;
            }
          }
        }

        else
        {
          if (*(v5 + 48) >= 0x40u)
          {
            goto LABEL_11;
          }

          v23 = *(v5 + 8);
          if (*(&v56 + 1))
          {
            if (!v23)
            {
              goto LABEL_11;
            }

            if (v56 == *v5)
            {
              goto LABEL_77;
            }

            v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
            result = sub_1000698D0(&v56);
            if (v24)
            {
              goto LABEL_78;
            }
          }

          else
          {
            result = sub_1000698D0(&v56);
            if (!v23)
            {
              goto LABEL_78;
            }
          }
        }

LABEL_12:
        a2 = (a2 + 1) & v54;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_74:
  v43 = *v53;
  *(*v53 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v44 = *(v43 + 48) + 56 * a2;
  v45 = *(v5 + 16);
  *v44 = *v5;
  *(v44 + 16) = v45;
  *(v44 + 32) = *(v5 + 32);
  *(v44 + 48) = *(v5 + 48);
  v46 = *(v43 + 16);
  v47 = __OFADD__(v46, 1);
  v48 = v46 + 1;
  if (v47)
  {
    __break(1u);
LABEL_77:
    sub_1000698D0(&v56);
LABEL_78:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v43 + 16) = v48;
  }

  return result;
}

uint64_t sub_100E7E1C4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v87 = a1;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v71 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v9 - 8);
  v72 = &v65 - v10;
  v73 = sub_1005B981C(&unk_101A0B780);
  __chkstk_darwin(v73);
  v76 = &v65 - v11;
  v12 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v78 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1005B981C(&qword_101A00180);
  __chkstk_darwin(v84);
  v16 = &v65 - v15;
  v17 = sub_1005B981C(&unk_101A096C0);
  v75 = *(v17 - 8);
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  v22 = &v65 - v21;
  v23 = *(*v3 + 16);
  v24 = *(*v3 + 24);
  v74 = v3;
  if (v24 <= v23 || (a3 & 1) == 0)
  {
    v79 = v20;
    v86 = v12;
    if (a3)
    {
      v65 = v19;
      sub_100E75AEC();
    }

    else
    {
      if (v24 > v23)
      {
        sub_100E844BC();
        goto LABEL_33;
      }

      v65 = v19;
      sub_100E88C34();
    }

    v25 = *v3;
    Hasher.init(_seed:)();
    sub_100E8FF94(&v91);
    v26 = Hasher._finalize()();
    v27 = -1 << *(v25 + 32);
    a2 = v26 & ~v27;
    v83 = v25 + 56;
    if ((*(v25 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v85 = v16;
      v70 = v6;
      v82 = ~v27;
      v80 = (v13 + 48);
      v81 = *(v75 + 72);
      v69 = (v7 + 48);
      v67 = (v7 + 32);
      v68 = (v7 + 8);
      v28 = &unk_101468A60;
      v77 = v25;
      while (1)
      {
        v31 = v28;
        v32 = *(v25 + 48);
        v88 = a2;
        sub_10000BE14(v32 + v81 * a2, v22, &unk_101A096C0);
        a3 = v85;
        v33 = *(v84 + 48);
        sub_10000BE14(v22, v85, &unk_101A096C0);
        sub_10000BE14(v87, a3 + v33, &unk_101A096C0);
        v34 = *v80;
        v35 = v22;
        v36 = v86;
        if ((*v80)(a3, 1, v86) == 1)
        {
          break;
        }

        v37 = v79;
        sub_10000BE14(a3, v79, &unk_101A096C0);
        if (v34(a3 + v33, 1, v36) == 1)
        {
          v22 = v35;
          sub_10000CAAC(v35, &unk_101A096C0);
          sub_100026028(v37, type metadata accessor for CRLWPHyperlinkSmartFieldData);
          v25 = v77;
LABEL_11:
          sub_10000CAAC(a3, &qword_101A00180);
          v28 = v31;
          v30 = v88;
          goto LABEL_12;
        }

        v38 = a3 + v33;
        v39 = v78;
        sub_100025668(v38, v78, type metadata accessor for CRLWPHyperlinkSmartFieldData);
        v40 = *(v37 + 8);
        *&v91 = *v37;
        BYTE8(v91) = v40;
        v41 = *(v39 + 8);
        v89 = *v39;
        v90 = v41;
        sub_1007AB290();
        v22 = v35;
        if ((static CRExtensible.== infix(_:_:)() & 1) == 0)
        {
          sub_10000CAAC(v35, &unk_101A096C0);
          v25 = v77;
          v28 = v31;
          v30 = v88;
          goto LABEL_32;
        }

        v42 = *(v86 + 20);
        v43 = *(v73 + 48);
        v44 = v76;
        v28 = v31;
        sub_10000BE14(v37 + v42, v76, &unk_1019F33C0);
        sub_10000BE14(v39 + v42, v44 + v43, &unk_1019F33C0);
        v45 = *v69;
        v46 = v70;
        if ((*v69)(v44, 1, v70) == 1)
        {
          if (v45(v44 + v43, 1, v46) != 1)
          {
            sub_10000CAAC(v22, &unk_101A096C0);
LABEL_24:
            v25 = v77;
            a3 = v85;
            v30 = v88;
            sub_10000CAAC(v76, &unk_101A0B780);
LABEL_32:
            sub_100026028(v78, type metadata accessor for CRLWPHyperlinkSmartFieldData);
            sub_100026028(v79, type metadata accessor for CRLWPHyperlinkSmartFieldData);
            sub_10000CAAC(a3, &unk_101A096C0);
            goto LABEL_12;
          }

          sub_10000CAAC(v44, &unk_1019F33C0);
          a3 = v85;
          v47 = v86;
          v30 = v88;
        }

        else
        {
          v48 = v72;
          sub_10000BE14(v44, v72, &unk_1019F33C0);
          if (v45(v44 + v43, 1, v46) == 1)
          {
            sub_10000CAAC(v22, &unk_101A096C0);
            (*v68)(v48, v46);
            goto LABEL_24;
          }

          v49 = v44 + v43;
          v50 = v71;
          (*v67)(v71, v49, v46);
          sub_1000066D0(&qword_101A00190, &type metadata accessor for URL);
          v66 = dispatch thunk of static Equatable.== infix(_:_:)();
          v51 = *v68;
          (*v68)(v50, v46);
          v51(v48, v46);
          sub_10000CAAC(v44, &unk_1019F33C0);
          a3 = v85;
          v47 = v86;
          v30 = v88;
          if ((v66 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        v52 = *(v47 + 24);
        v53 = v79;
        v54 = *(v79 + v52);
        v55 = *(v79 + v52 + 8);
        v56 = v78;
        v57 = (v78 + v52);
        if (v54 != *v57 || v55 != v57[1])
        {
          v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v53 = v79;
          if ((v58 & 1) == 0)
          {
LABEL_31:
            sub_10000CAAC(v22, &unk_101A096C0);
            v25 = v77;
            goto LABEL_32;
          }
        }

        v59 = sub_100B3216C(*(v53 + *(v86 + 28)), *(v56 + *(v86 + 28)));
        sub_10000CAAC(v22, &unk_101A096C0);
        sub_100026028(v56, type metadata accessor for CRLWPHyperlinkSmartFieldData);
        sub_100026028(v53, type metadata accessor for CRLWPHyperlinkSmartFieldData);
        sub_10000CAAC(a3, &unk_101A096C0);
        v25 = v77;
        if (v59)
        {
          goto LABEL_37;
        }

LABEL_12:
        a2 = (v30 + 1) & v82;
        if (((*(v83 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      sub_10000CAAC(v35, &unk_101A096C0);
      v29 = v34(a3 + v33, 1, v36);
      v22 = v35;
      if (v29 == 1)
      {
        goto LABEL_36;
      }

      goto LABEL_11;
    }
  }

LABEL_33:
  v60 = *v74;
  *(*v74 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_10003DFF8(v87, *(v60 + 48) + *(v75 + 72) * a2, &unk_101A096C0);
  v62 = *(v60 + 16);
  v63 = __OFADD__(v62, 1);
  v64 = v62 + 1;
  if (v63)
  {
    __break(1u);
LABEL_36:
    sub_10000CAAC(a3, &unk_101A096C0);
LABEL_37:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v60 + 16) = v64;
  }

  return result;
}

Swift::Int sub_100E7EC1C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100E75388();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100E83E68();
      goto LABEL_16;
    }

    sub_100E88214();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100E7ED9C(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_100E7AA8C(v9 + 1, a4);
  }

  else
  {
    if (v10 > v9)
    {
      sub_100E86860(a4);
      goto LABEL_12;
    }

    v11 = a6;
    sub_100E8D744(v9 + 1, a4);
  }

  v12 = *v6;
  v13 = NSObject._rawHashValue(seed:)(*(*v6 + 40));
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100E7EF20(uint64_t a1, unint64_t a2, char a3)
{
  v7 = _s5BoardVMa(0);
  v8 = __chkstk_darwin(v7 - 8);
  v74 = &v65[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v73 = &v65[-v10];
  v11 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v65[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v72 = sub_1005B981C(&qword_1019F3460);
  __chkstk_darwin(v72);
  v80 = &v65[-v14];
  v15 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v65[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v16);
  v79 = &v65[-v20];
  __chkstk_darwin(v19);
  v78 = &v65[-v21];
  v22 = sub_1005B981C(&qword_101A000E0);
  __chkstk_darwin(v22);
  v24 = &v65[-v23];
  v25 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v71 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v77 = &v65[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = __chkstk_darwin(v26);
  v76 = &v65[-v29];
  v30 = __chkstk_darwin(v28);
  v81 = &v65[-v31];
  __chkstk_darwin(v30);
  v33 = &v65[-v32];
  v34 = *(*v3 + 16);
  v35 = *(*v3 + 24);
  v70 = v3;
  if (v35 <= v34 || (a3 & 1) == 0)
  {
    v68 = v18;
    if (a3)
    {
      v67 = v13;
      sub_100E7671C();
    }

    else
    {
      if (v35 > v34)
      {
        sub_100E846F8();
        goto LABEL_41;
      }

      v67 = v13;
      sub_100E89804();
    }

    v36 = *v3;
    Hasher.init(_seed:)();
    sub_100F8B698();
    v37 = Hasher._finalize()();
    v38 = -1 << *(v36 + 32);
    a2 = v37 & ~v38;
    v84 = v36 + 56;
    v13 = v80;
    if ((*(v36 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v83 = ~v38;
      v82 = *(v71 + 72);
      v75 = v22;
      v69 = a1;
      do
      {
        sub_10000C83C(*(v36 + 48) + v82 * a2, v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v40 = *(v22 + 48);
        sub_10000C83C(v33, v24, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10000C83C(a1, &v24[v40], type metadata accessor for CRLBoardLibraryViewModel.Item);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v42 = v76;
            sub_10000C83C(v24, v76, type metadata accessor for CRLBoardLibraryViewModel.Item);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v43 = v78;
              sub_100025668(v42, v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              v44 = v79;
              sub_100025668(&v24[v40], v79, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              v45 = *(v72 + 48);
              sub_10000C83C(v43, v13, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              sub_10000C83C(v44, &v13[v45], type metadata accessor for CRLBoardLibraryViewModel.Filter);
              v46 = sub_1005B981C(&qword_1019F3480);
              v47 = *(*(v46 - 8) + 48);
              v48 = v47(v13, 5, v46);
              if (v48 > 2)
              {
                if (v48 == 3)
                {
                  sub_100026028(v79, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  v13 = v80;
                  sub_100026028(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  sub_100026028(v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
                  v49 = v47(&v13[v45], 5, v46) == 3;
                }

                else if (v48 == 4)
                {
                  sub_100026028(v79, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  sub_100026028(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  sub_100026028(v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
                  v13 = v80;
                  v49 = v47(&v80[v45], 5, v46) == 4;
                }

                else
                {
                  sub_100026028(v79, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  sub_100026028(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  sub_100026028(v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
                  v13 = v80;
                  v49 = v47(&v80[v45], 5, v46) == 5;
                }

                goto LABEL_36;
              }

              if (v48)
              {
                if (v48 == 1)
                {
                  sub_100026028(v79, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  sub_100026028(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  sub_100026028(v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
                  v13 = v80;
                  v49 = v47(&v80[v45], 5, v46) == 1;
                }

                else
                {
                  sub_100026028(v79, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  sub_100026028(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  sub_100026028(v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
                  v13 = v80;
                  v49 = v47(&v80[v45], 5, v46) == 2;
                }

LABEL_36:
                a1 = v69;
                v22 = v75;
                if (v49)
                {
                  goto LABEL_44;
                }

LABEL_37:
                sub_10000CAAC(v13, &qword_1019F3460);
              }

              else
              {
                sub_10000C83C(v13, v68, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                if (v47(&v13[v45], 5, v46))
                {
                  sub_100026028(v79, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  sub_100026028(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  sub_100026028(v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
                  sub_100026028(v68, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                  a1 = v69;
                  v22 = v75;
                  goto LABEL_37;
                }

                v57 = &v13[v45];
                v58 = v67;
                sub_100025668(v57, v67, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                v59 = v68;
                v66 = sub_100F92694(v68, v58);
                sub_100026028(v58, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                sub_100026028(v79, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                sub_100026028(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                sub_100026028(v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
                v13 = v80;
                sub_100026028(v59, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                sub_100026028(v13, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                a1 = v69;
                v22 = v75;
                if (v66)
                {
                  goto LABEL_45;
                }
              }

              sub_100026028(v24, type metadata accessor for CRLBoardLibraryViewModel.Item);
              goto LABEL_13;
            }

            sub_100026028(v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
            v39 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
            goto LABEL_11;
          }

          v42 = v77;
          sub_10000C83C(v24, v77, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            sub_100026028(v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
            v39 = _s5BoardVMa;
LABEL_11:
            sub_100026028(v42, v39);
LABEL_12:
            sub_10000CAAC(v24, &qword_101A000E0);
            goto LABEL_13;
          }

          v52 = v73;
          sub_100025668(v42, v73, _s5BoardVMa);
          v53 = &v24[v40];
          v54 = v74;
          sub_100025668(v53, v74, _s5BoardVMa);
          v55 = sub_1013030EC(v52, v54);
          sub_100026028(v54, _s5BoardVMa);
          v56 = v52;
          v22 = v75;
          sub_100026028(v56, _s5BoardVMa);
          sub_100026028(v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v13 = v80;
          sub_100026028(v24, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (v55)
          {
            goto LABEL_46;
          }
        }

        else
        {
          sub_100026028(v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
          sub_10000C83C(v24, v81, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (swift_getEnumCaseMultiPayload())
          {
            goto LABEL_12;
          }

          v50 = *v81;
          v51 = v24[v40];
          sub_100026028(v24, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (v50 == v51)
          {
            goto LABEL_46;
          }
        }

LABEL_13:
        a2 = (a2 + 1) & v83;
      }

      while (((*(v84 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_41:
  v60 = *v70;
  *(*v70 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100025668(a1, *(v60 + 48) + *(v71 + 72) * a2, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v62 = *(v60 + 16);
  v63 = __OFADD__(v62, 1);
  v64 = v62 + 1;
  if (v63)
  {
    __break(1u);
LABEL_44:
    sub_100026028(v13, type metadata accessor for CRLBoardLibraryViewModel.Filter);
LABEL_45:
    sub_100026028(v24, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_46:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v60 + 16) = v64;
  }

  return result;
}

uint64_t sub_100E7FB60(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CRLPreviewImages.Item(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_100E76DA4();
  }

  else
  {
    if (v14 > v13)
    {
      sub_100E84904();
      goto LABEL_12;
    }

    v26 = v10;
    sub_100E89E40();
  }

  v15 = *v4;
  Hasher.init(_seed:)();
  sub_1006C83D0();
  v16 = Hasher._finalize()();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_10000C83C(*(v15 + 48) + v19 * a2, v12, type metadata accessor for CRLPreviewImages.Item);
      v20 = sub_1006CC4F0(v12, a1);
      sub_100026028(v12, type metadata accessor for CRLPreviewImages.Item);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100025668(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for CRLPreviewImages.Item);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100E7FDA4(Swift::Int result, uint64_t a2, char a3, unint64_t a4, char a5, double a6)
{
  v10 = *&result;
  v11 = *(*v6 + 16);
  v12 = *(*v6 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_36;
  }

  if (a5)
  {
    sub_100E775F8();
  }

  else
  {
    if (v12 > v11)
    {
      v13 = a4;
      result = sub_100E84B10();
      a4 = v13;
      goto LABEL_36;
    }

    sub_100E8A640();
  }

  v14 = *v6;
  Hasher.init(_seed:)();
  if (a3)
  {
    v15 = dbl_1014B71A8[*&v10];
  }

  else
  {
    v15 = v10;
  }

  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  Hasher._combine(_:)(*&v15);
  if (a3)
  {
    v16 = dbl_1014B71A8[*&v10];
  }

  else
  {
    v16 = *&a2;
  }

  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  Hasher._combine(_:)(*&v16);
  if (a6 == 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = a6;
  }

  Hasher._combine(_:)(*&v17);
  result = Hasher._finalize()();
  v18 = -1 << *(v14 + 32);
  a4 = result & ~v18;
  if ((*(v14 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v19 = ~v18;
    do
    {
      v20 = *(v14 + 48) + 32 * a4;
      if (*(v20 + 16) == 1)
      {
        v21 = &dbl_1014B71A8[*v20];
        v22 = *v21;
      }

      else
      {
        v21 = (v20 + 8);
        v22 = *v20;
      }

      v23 = v10;
      v24 = *&a2;
      if (a3)
      {
        v23 = dbl_1014B71A8[*&v10];
        v24 = v23;
      }

      v25 = v22 == v23 && *v21 == v24;
      if (v25 && *(v20 + 24) == a6)
      {
        goto LABEL_39;
      }

      a4 = (a4 + 1) & v19;
    }

    while (((*(v14 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_36:
  v27 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v28 = *(v27 + 48) + 32 * a4;
  *v28 = v10;
  *(v28 + 8) = *&a2;
  *(v28 + 16) = a3 & 1;
  *(v28 + 24) = a6;
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v27 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_39:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100E7FFD4(uint64_t a1, unint64_t a2, char a3)
{
  v31 = type metadata accessor for CRLBoardIdentifierAndValue(0);
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*v3 + 16);
  v10 = *(*v3 + 24);
  v28 = v3;
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    sub_100E77770();
  }

  else
  {
    if (v10 > v9)
    {
      sub_100E84C6C();
      goto LABEL_19;
    }

    sub_100E8A77C();
  }

  v11 = *v3;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v12 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v13 = (a1 + *(v12 + 20));
  v14 = *v13;
  v15 = v13[1];
  String.hash(into:)();
  v30 = *(a1 + *(v31 + 20));
  Hasher._combine(_:)(v30);
  v16 = Hasher._finalize()();
  v17 = -1 << *(v11 + 32);
  a2 = v16 & ~v17;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v29 + 72);
    do
    {
      sub_10000C83C(*(v11 + 48) + v19 * a2, v8, type metadata accessor for CRLBoardIdentifierAndValue);
      if (static UUID.== infix(_:_:)())
      {
        v20 = &v8[*(v12 + 20)];
        v21 = *v20 == v14 && *(v20 + 1) == v15;
        if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v30 == v8[*(v31 + 20)])
        {
          goto LABEL_22;
        }
      }

      sub_100026028(v8, type metadata accessor for CRLBoardIdentifierAndValue);
      a2 = (a2 + 1) & v18;
    }

    while (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_19:
  v22 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100025668(a1, *(v22 + 48) + *(v29 + 72) * a2, type metadata accessor for CRLBoardIdentifierAndValue);
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_22:
  sub_100026028(v8, type metadata accessor for CRLBoardIdentifierAndValue);
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100E802FC(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_100E77AF4();
  }

  else
  {
    if (v14 > v13)
    {
      sub_100E84E78();
      goto LABEL_12;
    }

    v26 = v10;
    sub_100E8AAD0();
  }

  v15 = *v4;
  Hasher.init(_seed:)();
  sub_100F8ED58();
  v16 = Hasher._finalize()();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_10000C83C(*(v15 + 48) + v19 * a2, v12, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v20 = sub_100F92694(v12, a1);
      sub_100026028(v12, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100025668(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100E80540(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v7 - 8);
  v78 = &v76[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v84 = sub_1005B981C(&qword_1019F3460);
  __chkstk_darwin(v84);
  v92 = &v76[-v9];
  v97 = sub_1005B981C(&qword_101A000E0);
  __chkstk_darwin(v97);
  v11 = &v76[-v10];
  v88 = _s4NodeVMa(0);
  v82 = *(v88 - 8);
  __chkstk_darwin(v88);
  v13 = &v76[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = _s5BoardVMa(0);
  v15 = __chkstk_darwin(v14 - 8);
  v83 = &v76[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v85 = &v76[-v17];
  v18 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v19 = __chkstk_darwin(v18 - 8);
  v80 = &v76[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v19);
  v91 = &v76[-v22];
  v23 = __chkstk_darwin(v21);
  v90 = &v76[-v24];
  __chkstk_darwin(v23);
  v26 = &v76[-v25];
  v27 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v28 = __chkstk_darwin(v27);
  v30 = &v76[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = __chkstk_darwin(v28);
  v89 = &v76[-v32];
  v33 = __chkstk_darwin(v31);
  v93 = &v76[-v34];
  __chkstk_darwin(v33);
  v36 = &v76[-v35];
  v86 = v3;
  v37 = *(*v3 + 16);
  v38 = *(*v3 + 24);
  if (v38 <= v37 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v39 = v86;
      sub_100E77D90();
    }

    else
    {
      if (v38 > v37)
      {
        sub_100E85084();
        goto LABEL_52;
      }

      v39 = v86;
      sub_100E8AD38();
    }

    v96 = *v39;
    Hasher.init(_seed:)();
    sub_10000C83C(a1, v36, type metadata accessor for CRLBoardLibraryViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_100025668(v36, v26, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        sub_100F8D588();
        v41 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
        v42 = v26;
      }

      else
      {
        v43 = v85;
        sub_100025668(v36, v85, _s5BoardVMa);
        type metadata accessor for UUID();
        sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        type metadata accessor for CRLBoardIdentifierStorage(0);
        String.hash(into:)();
        v41 = _s5BoardVMa;
        v42 = v43;
      }

      sub_100026028(v42, v41);
    }

    else
    {
      Hasher._combine(_:)(*v36);
    }

    v81 = *(a1 + *(v88 + 20));
    sub_100E90344(v98, v81);
    v44 = Hasher._finalize()();
    v45 = v96 + 56;
    v46 = -1 << *(v96 + 32);
    a2 = v44 & ~v46;
    v47 = v92;
    if ((*(v96 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v95 = ~v46;
      v94 = *(v82 + 72);
      v87 = v30;
      v79 = a1;
      do
      {
        sub_10000C83C(*(v96 + 48) + v94 * a2, v13, _s4NodeVMa);
        v50 = *(v97 + 48);
        sub_10000C83C(v13, v11, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10000C83C(a1, &v11[v50], type metadata accessor for CRLBoardLibraryViewModel.Item);
        v51 = swift_getEnumCaseMultiPayload();
        if (v51)
        {
          if (v51 == 1)
          {
            v52 = v89;
            sub_10000C83C(v11, v89, type metadata accessor for CRLBoardLibraryViewModel.Item);
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              v48 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
              v49 = v52;
LABEL_17:
              sub_100026028(v49, v48);
LABEL_18:
              sub_10000CAAC(v11, &qword_101A000E0);
              goto LABEL_19;
            }

            v53 = v90;
            sub_100025668(v52, v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            v54 = &v11[v50];
            v55 = v91;
            sub_100025668(v54, v91, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            v56 = *(v84 + 48);
            sub_10000C83C(v53, v47, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            sub_10000C83C(v55, v47 + v56, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            v57 = sub_1005B981C(&qword_1019F3480);
            v58 = *(*(v57 - 8) + 48);
            v59 = v58(v47, 5, v57);
            if (v59 > 2)
            {
              if (v59 == 3)
              {
                sub_100026028(v91, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                v47 = v92;
                sub_100026028(v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                v60 = v58(v47 + v56, 5, v57) == 3;
              }

              else if (v59 == 4)
              {
                sub_100026028(v91, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                sub_100026028(v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                v47 = v92;
                v60 = v58(&v92[v56], 5, v57) == 4;
              }

              else
              {
                sub_100026028(v91, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                sub_100026028(v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                v47 = v92;
                v60 = v58(&v92[v56], 5, v57) == 5;
              }

LABEL_42:
              a1 = v79;
              v30 = v87;
              if (!v60)
              {
                goto LABEL_48;
              }

              sub_100026028(v47, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            }

            else
            {
              if (v59)
              {
                if (v59 == 1)
                {
                  sub_100026028(v91, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  sub_100026028(v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  v47 = v92;
                  v60 = v58(&v92[v56], 5, v57) == 1;
                }

                else
                {
                  sub_100026028(v91, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  sub_100026028(v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  v47 = v92;
                  v60 = v58(&v92[v56], 5, v57) == 2;
                }

                goto LABEL_42;
              }

              sub_10000C83C(v47, v80, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              if (v58(v47 + v56, 5, v57))
              {
                sub_100026028(v91, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                sub_100026028(v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                sub_100026028(v80, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                a1 = v79;
                v30 = v87;
LABEL_48:
                sub_10000CAAC(v47, &qword_1019F3460);
LABEL_49:
                sub_100026028(v11, type metadata accessor for CRLBoardLibraryViewModel.Item);
                goto LABEL_19;
              }

              v69 = v78;
              sub_100025668(v47 + v56, v78, type metadata accessor for CRLBoardLibraryViewModel.Folder);
              v70 = v80;
              v77 = sub_100F92694(v80, v69);
              sub_100026028(v69, type metadata accessor for CRLBoardLibraryViewModel.Folder);
              sub_100026028(v91, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              sub_100026028(v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              v47 = v92;
              sub_100026028(v70, type metadata accessor for CRLBoardLibraryViewModel.Folder);
              sub_100026028(v47, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              a1 = v79;
              v30 = v87;
              if (!v77)
              {
                goto LABEL_49;
              }
            }

            sub_100026028(v11, type metadata accessor for CRLBoardLibraryViewModel.Item);
            goto LABEL_46;
          }

          sub_10000C83C(v11, v30, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            v48 = _s5BoardVMa;
            v49 = v30;
            goto LABEL_17;
          }

          v63 = v30;
          v64 = v85;
          sub_100025668(v63, v85, _s5BoardVMa);
          v65 = &v11[v50];
          v66 = v83;
          sub_100025668(v65, v83, _s5BoardVMa);
          v67 = sub_1013030EC(v64, v66);
          sub_100026028(v66, _s5BoardVMa);
          v68 = v64;
          v30 = v87;
          v47 = v92;
          sub_100026028(v68, _s5BoardVMa);
          sub_100026028(v11, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (!v67)
          {
            goto LABEL_19;
          }
        }

        else
        {
          sub_10000C83C(v11, v93, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (swift_getEnumCaseMultiPayload())
          {
            goto LABEL_18;
          }

          v61 = *v93;
          v62 = v11[v50];
          sub_100026028(v11, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (v61 != v62)
          {
            goto LABEL_19;
          }
        }

LABEL_46:
        if (sub_10066F2C0(*&v13[*(v88 + 20)], v81))
        {
          goto LABEL_55;
        }

LABEL_19:
        sub_100026028(v13, _s4NodeVMa);
        a2 = (a2 + 1) & v95;
      }

      while (((*(v45 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_52:
  v71 = *v86;
  *(*v86 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100025668(a1, *(v71 + 48) + *(v82 + 72) * a2, _s4NodeVMa);
  v73 = *(v71 + 16);
  v74 = __OFADD__(v73, 1);
  v75 = v73 + 1;
  if (v74)
  {
    __break(1u);
LABEL_55:
    sub_100026028(v13, _s4NodeVMa);
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v71 + 16) = v75;
  }

  return result;
}

uint64_t sub_100E81298(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = _s5BoardVMa(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_100E77F98(v13 + 1, _s5BoardVMa, &qword_101A21C88, &unk_1014B6568, _s5BoardVMa);
  }

  else
  {
    if (v14 > v13)
    {
      sub_100E85290();
      goto LABEL_12;
    }

    v26 = v10;
    sub_100E8AF04();
  }

  v15 = *v4;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  String.hash(into:)();
  v16 = Hasher._finalize()();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_10000C83C(*(v15 + 48) + v19 * a2, v12, _s5BoardVMa);
      v20 = sub_1013030EC(v12, a1);
      sub_100026028(v12, _s5BoardVMa);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100025668(a1, *(v21 + 48) + *(v9 + 72) * a2, _s5BoardVMa);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100E81578(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100E782F8();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100E8549C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100E8B244();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4 & 1);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != (v4 & 1))
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4 & 1;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100E816CC(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for CRLFolderIdentifier(0);
  v31 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    v29 = v8;
    sub_100E78548();
  }

  else
  {
    if (v12 > v11)
    {
      sub_100E855DC();
      goto LABEL_18;
    }

    v29 = v8;
    sub_100E8B464();
  }

  v13 = *v3;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v14 = type metadata accessor for CRLFolderIdentifierStorage(0);
  v15 = (a1 + *(v14 + 20));
  v16 = *v15;
  v17 = v15[1];
  String.hash(into:)();
  v18 = Hasher._finalize()();
  v19 = -1 << *(v13 + 32);
  a2 = v18 & ~v19;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v31 + 72);
    while (1)
    {
      sub_10000C83C(*(v13 + 48) + v21 * a2, v10, type metadata accessor for CRLFolderIdentifier);
      if (static UUID.== infix(_:_:)())
      {
        v22 = &v10[*(v14 + 20)];
        v23 = *v22 == v16 && *(v22 + 1) == v17;
        if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      sub_100026028(v10, type metadata accessor for CRLFolderIdentifier);
      a2 = (a2 + 1) & v20;
      if (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    sub_100026028(v10, type metadata accessor for CRLFolderIdentifier);
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

LABEL_18:
  v24 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100025668(a1, *(v24 + 48) + *(v31 + 72) * a2, type metadata accessor for CRLFolderIdentifier);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }

  return result;
}

uint64_t sub_100E819C8(uint64_t a1, unint64_t a2, char a3)
{
  v33 = type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest();
  __chkstk_darwin(v33);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*v3 + 16);
  v10 = *(*v3 + 24);
  v30 = v3;
  v31 = v11;
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_20;
  }

  if (a3)
  {
    sub_100E788B8();
  }

  else
  {
    if (v10 > v9)
    {
      sub_100E857E8();
      goto LABEL_20;
    }

    sub_100E8B7A4();
  }

  v12 = *v3;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v13 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v14 = (a1 + *(v13 + 20));
  v15 = *v14;
  v16 = v14[1];
  String.hash(into:)();
  v17 = v33;
  v32 = *(v33 + 20);
  dispatch thunk of Hashable.hash(into:)();
  v29 = *(v17 + 24);
  dispatch thunk of Hashable.hash(into:)();
  v18 = Hasher._finalize()();
  v19 = -1 << *(v12 + 32);
  a2 = v18 & ~v19;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v31 + 72);
    while (1)
    {
      sub_10000C83C(*(v12 + 48) + v21 * a2, v8, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
      if (static UUID.== infix(_:_:)())
      {
        v22 = &v8[*(v13 + 20)];
        v23 = *v22 == v15 && *(v22 + 1) == v16;
        if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static UUID.== infix(_:_:)() & 1) != 0 && (static UUID.== infix(_:_:)())
        {
          break;
        }
      }

      sub_100026028(v8, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
      a2 = (a2 + 1) & v20;
      if (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    sub_100026028(v8, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

LABEL_20:
  v24 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100025668(a1, *(v24 + 48) + *(v31 + 72) * a2, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }

  return result;
}

uint64_t sub_100E81D38(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = _s17CategoryViewModelVMa();
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 24);
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_37;
  }

  if (a3)
  {
    sub_100E78C90();
  }

  else
  {
    if (v13 > v12)
    {
      sub_100E859F4();
      goto LABEL_37;
    }

    sub_100E8BB38();
  }

  v14 = *v4;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v15 = (a1 + v8[5]);
  v16 = v15[1];
  v48 = *v15;
  v53 = v16;
  String.hash(into:)();
  v17 = (a1 + v8[6]);
  v18 = *v17;
  v19 = v17[1];
  if (v19)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v20 = (a1 + v8[7]);
  v21 = *v20;
  v50 = v20[1];
  v51 = v21;
  String.hash(into:)();
  v47 = *(a1 + v8[8]);
  Hasher._combine(_:)(v47);
  v22 = Hasher._finalize()();
  v23 = -1 << *(v14 + 32);
  a2 = v22 & ~v23;
  v54 = v14 + 56;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v52 = v19;
    v49 = v18;
    v24 = ~v23;
    v25 = *(v9 + 72);
    v26 = v48;
    while (1)
    {
      sub_10000C83C(*(v14 + 48) + v25 * a2, v11, _s17CategoryViewModelVMa);
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      v27 = &v11[v8[5]];
      v28 = *v27 == v26 && *(v27 + 1) == v53;
      if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v29 = &v11[v8[6]];
      v30 = *(v29 + 1);
      if (v30)
      {
        if (!v52)
        {
          break;
        }

        v31 = *v29 == v49 && v30 == v52;
        if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }
      }

      else if (v52)
      {
        break;
      }

      v32 = &v11[v8[7]];
      v33 = *v32 == v51 && *(v32 + 1) == v50;
      if (!v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v34 = v8[8];
      v35 = v8;
      v36 = v14;
      v37 = a1;
      v38 = v9;
      v39 = v4;
      v40 = *&v11[v34];
      sub_100026028(v11, _s17CategoryViewModelVMa);
      v28 = v40 == v47;
      v4 = v39;
      v9 = v38;
      a1 = v37;
      v14 = v36;
      v8 = v35;
      v26 = v48;
      if (v28)
      {
        ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_37;
      }

LABEL_15:
      a2 = (a2 + 1) & v24;
      if (((*(v54 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    sub_100026028(v11, _s17CategoryViewModelVMa);
    goto LABEL_15;
  }

LABEL_37:
  v41 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100025668(a1, *(v41 + 48) + *(v9 + 72) * a2, _s17CategoryViewModelVMa);
  v43 = *(v41 + 16);
  v44 = __OFADD__(v43, 1);
  v45 = v43 + 1;
  if (v44)
  {
    __break(1u);
  }

  else
  {
    *(v41 + 16) = v45;
  }

  return result;
}

uint64_t sub_100E82154(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100E7909C();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100E85FE8(&qword_1019F3798);
      goto LABEL_12;
    }

    sub_100E8BF18();
  }

  v8 = *v3;
  type metadata accessor for CalculateExpression();
  sub_1000066D0(&qword_1019F37A0, &type metadata accessor for CalculateExpression);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_1000066D0(&qword_1019F37A8, &type metadata accessor for CalculateExpression);
    do
    {
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100E8234C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100E79330();
  }

  else
  {
    if (v12 > v11)
    {
      sub_100E8649C(&type metadata accessor for UTType, &qword_101A21FF8);
      goto LABEL_12;
    }

    sub_100E8C190();
  }

  v13 = *v3;
  sub_1000066D0(&unk_101A22910, &type metadata accessor for UTType);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1000066D0(&qword_101A07820, &type metadata accessor for UTType);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100E82614(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_100E7968C();
  }

  else
  {
    if (v14 > v13)
    {
      sub_100E85C78();
      goto LABEL_12;
    }

    v26 = v10;
    sub_100E8C4AC();
  }

  v15 = *v4;
  Hasher.init(_seed:)();
  sub_1007F0E00(v27);
  v16 = Hasher._finalize()();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_10000C83C(*(v15 + 48) + v19 * a2, v12, type metadata accessor for CRLSELibraryViewModel.Item);
      v20 = sub_1007F5338(v12, a1);
      sub_100026028(v12, type metadata accessor for CRLSELibraryViewModel.Item);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100025668(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for CRLSELibraryViewModel.Item);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100E82858(uint64_t a1, unsigned __int8 a2, unint64_t a3, char a4)
{
  v5 = v4;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_48;
  }

  if (a4)
  {
    sub_100E79994();
  }

  else
  {
    if (v10 > v9)
    {
      sub_100E85E84();
      goto LABEL_48;
    }

    sub_100E8C784();
  }

  v11 = *v4;
  Hasher.init(_seed:)();
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          v13 = 4;
        }

        else
        {
          v13 = 5;
        }
      }

      else
      {
        v13 = 3;
      }

      Hasher._combine(_:)(v13);
      goto LABEL_19;
    }

    v12 = 2;
  }

  else
  {
    v12 = a2 != 0;
  }

  Hasher._combine(_:)(v12);
  NSObject.hash(into:)();
LABEL_19:
  v14 = Hasher._finalize()();
  v15 = -1 << *(v11 + 32);
  a3 = v14 & ~v15;
  if (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
  {
    goto LABEL_48;
  }

  v16 = ~v15;
  v17 = a2 == 3;
  v18 = a1 == 2 && a2 == 3;
  v19 = a1 == 1 && a2 == 3;
  v35 = v19;
  v36 = v18;
  if (a1)
  {
    v17 = 0;
  }

  v34 = v17;
  while (1)
  {
    v20 = *(v11 + 48) + 16 * a3;
    v21 = *v20;
    v22 = *(v20 + 8);
    if (v22 <= 1)
    {
      if (v22)
      {
        if (a2 != 1)
        {
          goto LABEL_30;
        }

        sub_100006370(0, &qword_1019F54D0);
        v28 = v21;
        v24 = static NSObject.== infix(_:_:)();
        v25 = v21;
        v26 = 1;
      }

      else
      {
        if (a2)
        {
          goto LABEL_30;
        }

        sub_100006370(0, &qword_1019F54D0);
        v23 = v21;
        v24 = static NSObject.== infix(_:_:)();
        v25 = v21;
        v26 = 0;
      }

      goto LABEL_29;
    }

    if (v22 == 2)
    {
      if (a2 != 2)
      {
        goto LABEL_30;
      }

      sub_100006370(0, &qword_1019F54D0);
      v27 = v21;
      v24 = static NSObject.== infix(_:_:)();
      v25 = v21;
      v26 = 2;
LABEL_29:
      sub_1007A98C8(v25, v26);
      if (v24)
      {
        goto LABEL_47;
      }

      goto LABEL_30;
    }

    if (v21)
    {
      break;
    }

    if (v34)
    {
      goto LABEL_47;
    }

LABEL_30:
    a3 = (a3 + 1) & v16;
    if (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  if (v21 == 1)
  {
    if (v35)
    {
      goto LABEL_47;
    }

    goto LABEL_30;
  }

  if (!v36)
  {
    goto LABEL_30;
  }

LABEL_47:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_48:
  v29 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v30 = *(v29 + 48) + 16 * a3;
  *v30 = a1;
  *(v30 + 8) = a2;
  v31 = *(v29 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v29 + 16) = v33;
  }
}

Swift::Int sub_100E82B5C(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100E79C50();
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_100E85FE8(&qword_101A21FC0);
        goto LABEL_35;
      }

      sub_100E8CA14();
    }

    v8 = *v3;
    Hasher.init(_seed:)();
    sub_100BD3B78(v34, *(v5 + 16));
    v9 = v5 + OBJC_IVAR____TtCC8Freeform17CRLStencilLibrary8ItemData_metadata;
    sub_100D6FEA0(v34);
    result = Hasher._finalize()();
    v10 = -1 << *(v8 + 32);
    a2 = result & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      _s8ItemDataCMa();
      do
      {
        v12 = *(*(v8 + 48) + 8 * a2);
        v13 = *(v12 + 16);
        v14 = *(v5 + 16);

        if ((sub_100BC5454(v13, v14) & 1) == 0)
        {
          goto LABEL_33;
        }

        v15 = v12 + OBJC_IVAR____TtCC8Freeform17CRLStencilLibrary8ItemData_metadata;
        if ((static UUID.== infix(_:_:)() & 1) == 0)
        {
          goto LABEL_33;
        }

        v16 = _s13ItemViewModelVMa();
        v17 = v16[8];
        v18 = *(v15 + v17);
        v19 = *(v15 + v17 + 8);
        v20 = (v9 + v17);
        v21 = v18 == *v20 && v19 == v20[1];
        if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_33;
        }

        v22 = v16[9];
        v23 = (v15 + v22);
        v24 = *(v15 + v22 + 8);
        v25 = (v9 + v22);
        v26 = v25[1];
        if (v24)
        {
          if (!v26)
          {
            goto LABEL_33;
          }

          v27 = *v23 == *v25 && v24 == v26;
          if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else if (v26)
        {
          goto LABEL_33;
        }

        if (sub_100BC569C(*(v15 + v16[11]), *(v9 + v16[11])))
        {
          type metadata accessor for CGImage(0);
          sub_1000066D0(&unk_101A1F1A0, type metadata accessor for CGImage);
          if (static _CFObject.== infix(_:_:)() & 1) != 0 && *(v15 + v16[12]) == *(v9 + v16[12]) && *(v15 + v16[13]) == *(v9 + v16[13]) && (static Date.== infix(_:_:)())
          {
            v28 = static Date.== infix(_:_:)();

            if (v28)
            {
              goto LABEL_38;
            }

            goto LABEL_34;
          }
        }

LABEL_33:

LABEL_34:
        a2 = (a2 + 1) & v11;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_35:
  v29 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v29 + 48) + 8 * a2) = v5;
  v30 = *(v29 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
    __break(1u);
LABEL_38:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v29 + 16) = v32;
  }

  return result;
}

uint64_t sub_100E82E7C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100E7A2AC();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100E86334();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100E8D00C();
  }

  v8 = *v3;
  result = static Hasher._hash(seed:_:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100E82F9C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100E7A4D0();
  }

  else
  {
    if (v11 > v10)
    {
      sub_100E8649C(&type metadata accessor for IndexPath, &qword_101A21E98);
      goto LABEL_12;
    }

    sub_100E8D1FC();
  }

  v12 = *v3;
  sub_1000066D0(&unk_101A23C60, &type metadata accessor for IndexPath);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1000066D0(&unk_101A226D0, &type metadata accessor for IndexPath);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100E83264(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100E7A82C();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_100E866E8();
      goto LABEL_12;
    }

    sub_100E8D518();
  }

  v9 = *v3;
  result = AnyHashable._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_100064110(*(v9 + 48) + 40 * a2, v19);
      v12 = static AnyHashable.== infix(_:_:)();
      result = sub_100064234(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100E833DC()
{
  v1 = v0;
  v2 = _s6CellIDVMa(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A21DB0);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10000C83C(*(v6 + 48) + v21, v5, _s6CellIDVMa);
        result = sub_100025668(v5, *(v8 + 48) + v21, _s6CellIDVMa);
      }

      while (v16);
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
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_100E83624()
{
  v1 = v0;
  sub_1005B981C(&qword_101A21D18);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 8) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 8);
      v20 = *(v4 + 48) + v17;
      *v20 = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_100E83778()
{
  v1 = v0;
  sub_1005B981C(&qword_101A21D40);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 56);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 112 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[3];
        v20 = v18[4];
        v21 = v18[6];
        v25[5] = v18[5];
        v25[6] = v21;
        v25[3] = v19;
        v25[4] = v20;
        v23 = v18[1];
        v22 = v18[2];
        v25[0] = *v18;
        v25[1] = v23;
        v25[2] = v22;
        memmove((*(v4 + 48) + v17), v18, 0x70uLL);
        result = sub_10000BE14(v25, &v24, &qword_1019FFF80);
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_100E83928(uint64_t *a1)
{
  v2 = v1;
  sub_1005B981C(a1);
  v3 = *v1;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(v21 + 8) = v19)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      v18 = 16 * v15;
      v19 = *(v3 + 48) + v18;
      v20 = *v19;
      LOBYTE(v19) = *(v19 + 8);
      v21 = *(v5 + 48) + v18;
      *v21 = v20;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_100E83A6C()
{
  v1 = v0;
  sub_1005B981C(&qword_101A21D68);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_100E83BAC()
{
  v1 = v0;
  sub_1005B981C(&qword_101A21D70);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 4) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 8 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 4);
      v20 = *(v4 + 48) + v17;
      *v20 = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_100E83D00()
{
  v1 = v0;
  sub_1005B981C(&qword_101A21D78);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v22;
        result = sub_100962438(v19, v20, v22);
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_100E83E68()
{
  v1 = v0;
  sub_1005B981C(&qword_1019F3488);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_100E83FC4()
{
  v1 = v0;
  sub_1005B981C(&qword_101A21E68);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 48 * (v14 | (v8 << 6));
        result = sub_10063FD8C(*(v2 + 48) + v17, v21);
        v18 = (*(v4 + 48) + v17);
        v19 = v21[0];
        v20 = v21[2];
        v18[1] = v21[1];
        v18[2] = v20;
        *v18 = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_100E84138()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&unk_1019F3350);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10000C83C(*(v6 + 48) + v21, v5, type metadata accessor for CRLBoardIdentifier);
        result = sub_100025668(v5, *(v8 + 48) + v21, type metadata accessor for CRLBoardIdentifier);
      }

      while (v16);
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
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_100E84344()
{
  v1 = v0;
  sub_1005B981C(&qword_101A21EA0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 56 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(v18 + 40);
        v25 = *(v4 + 48) + v17;
        v26 = *(v18 + 48);
        *v25 = *v18;
        *(v25 + 8) = v20;
        *(v25 + 16) = v21;
        *(v25 + 24) = v22;
        *(v25 + 32) = v23;
        *(v25 + 40) = v24;
        *(v25 + 48) = v26;
        result = sub_100076F8C(v19, v20, v21, v22, v23, v24, v26);
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_100E844BC()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_101A096C0);
  v22 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  sub_1005B981C(&qword_101A22008);
  v5 = *v0;
  v6 = static _SetStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v21 = v1;
    result = (v6 + 56);
    v9 = v5 + 56;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 56), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    v14 = *(v5 + 56);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = *(v22 + 72) * (v17 | (v11 << 6));
        sub_10000BE14(*(v5 + 48) + v20, v4, &unk_101A096C0);
        result = sub_10003DFF8(v4, *(v7 + 48) + v20, &unk_101A096C0);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v21;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_100E846F8()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A21EA8);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10000C83C(*(v6 + 48) + v21, v5, type metadata accessor for CRLBoardLibraryViewModel.Item);
        result = sub_100025668(v5, *(v8 + 48) + v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
      }

      while (v16);
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
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_100E84904()
{
  v1 = v0;
  v2 = type metadata accessor for CRLPreviewImages.Item(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&unk_1019F3470);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10000C83C(*(v6 + 48) + v21, v5, type metadata accessor for CRLPreviewImages.Item);
        result = sub_100025668(v5, *(v8 + 48) + v21, type metadata accessor for CRLPreviewImages.Item);
      }

      while (v16);
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
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_100E84B10()
{
  v1 = v0;
  sub_1005B981C(&qword_101A21CE8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 24) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 32 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      v21 = *(v4 + 48) + v17;
      *v21 = *v18;
      *(v21 + 16) = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_100E84C6C()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardIdentifierAndValue(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_1019F3680);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10000C83C(*(v6 + 48) + v21, v5, type metadata accessor for CRLBoardIdentifierAndValue);
        result = sub_100025668(v5, *(v8 + 48) + v21, type metadata accessor for CRLBoardIdentifierAndValue);
      }

      while (v16);
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
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_100E84E78()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&unk_1019F33F0);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10000C83C(*(v6 + 48) + v21, v5, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        result = sub_100025668(v5, *(v8 + 48) + v21, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      }

      while (v16);
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
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_100E85084()
{
  v1 = v0;
  v2 = _s4NodeVMa(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A21C90);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10000C83C(*(v6 + 48) + v21, v5, _s4NodeVMa);
        result = sub_100025668(v5, *(v8 + 48) + v21, _s4NodeVMa);
      }

      while (v16);
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
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_100E85290()
{
  v1 = v0;
  v2 = _s5BoardVMa(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A21C88);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10000C83C(*(v6 + 48) + v21, v5, _s5BoardVMa);
        result = sub_100025668(v5, *(v8 + 48) + v21, _s5BoardVMa);
      }

      while (v16);
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
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_100E8549C()
{
  v1 = v0;
  sub_1005B981C(&qword_101A21C78);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_100E855DC()
{
  v1 = v0;
  v2 = type metadata accessor for CRLFolderIdentifier(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_1019F3790);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10000C83C(*(v6 + 48) + v21, v5, type metadata accessor for CRLFolderIdentifier);
        result = sub_100025668(v5, *(v8 + 48) + v21, type metadata accessor for CRLFolderIdentifier);
      }

      while (v16);
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
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_100E857E8()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A22058);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10000C83C(*(v6 + 48) + v21, v5, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
        result = sub_100025668(v5, *(v8 + 48) + v21, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
      }

      while (v16);
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
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_100E859F4()
{
  v1 = v0;
  v2 = _s17CategoryViewModelVMa();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A21FB8);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10000C83C(*(v6 + 48) + v21, v5, _s17CategoryViewModelVMa);
        result = sub_100025668(v5, *(v8 + 48) + v21, _s17CategoryViewModelVMa);
      }

      while (v16);
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
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_100E85C78()
{
  v1 = v0;
  v2 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A21FE0);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10000C83C(*(v6 + 48) + v21, v5, type metadata accessor for CRLSELibraryViewModel.Item);
        result = sub_100025668(v5, *(v8 + 48) + v21, type metadata accessor for CRLSELibraryViewModel.Item);
      }

      while (v16);
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
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_100E85E84()
{
  v1 = v0;
  sub_1005B981C(&qword_101A21D98);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v4 + 48) + v17;
        v21 = *(v18 + 8);
        *v20 = *v18;
        *(v20 + 8) = v21;
        result = sub_10089D774(v19, v21);
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_100E85FE8(uint64_t *a1)
{
  v2 = v1;
  sub_1005B981C(a1);
  v3 = *v1;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        *(*(v5 + 48) + 8 * (v15 | (v9 << 6))) = *(*(v3 + 48) + 8 * (v15 | (v9 << 6)));
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_100E86128()
{
  v1 = v0;
  v2 = type metadata accessor for CRLSpotlightManager.ChangeType(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A21FD0);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10000C83C(*(v6 + 48) + v21, v5, type metadata accessor for CRLSpotlightManager.ChangeType);
        result = sub_100025668(v5, *(v8 + 48) + v21, type metadata accessor for CRLSpotlightManager.ChangeType);
      }

      while (v16);
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
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_100E86334()
{
  v1 = v0;
  sub_1005B981C(&qword_101A21E28);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_100E8649C(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_1005B981C(a2);
  v9 = *v2;
  v10 = static _SetStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

void *sub_100E866E8()
{
  v1 = v0;
  sub_1005B981C(&qword_1019F3610);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_100064110(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_100E86860(uint64_t *a1)
{
  v2 = v1;
  sub_1005B981C(a1);
  v3 = *v1;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_100E869A0()
{
  v1 = v0;
  v2 = _s6CellIDVMa(0);
  v27 = *(v2 - 8);
  v28 = v2;
  __chkstk_darwin(v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1005B981C(&qword_101A21DB0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v0;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v27 + 72);
      sub_10000C83C(*(v5 + 48) + v18 * (v15 | (v8 << 6)), v4, _s6CellIDVMa);
      Hasher.init(_seed:)();
      UUID.hash(into:)();
      UUID.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = sub_100025668(v4, *(v7 + 48) + v14 * v18, _s6CellIDVMa);
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_100E86C90()
{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1005B981C(&qword_1019F37B8);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100E86FAC()
{
  v1 = v0;
  v37 = type metadata accessor for UUID();
  v2 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1005B981C(&qword_101A21D90);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = v4 + 56;
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v32 = v1;
    v33 = (v2 + 8);
    v13 = result + 56;
    v34 = result;
    v35 = v4;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v39 = (v11 - 1) & v11;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      Hasher.init(_seed:)();
      v19 = *(v18 + 24);
      ObjectType = swift_getObjectType();
      v21 = *(v19 + 32);
      v38 = v18;

      v22 = v36;
      v21(ObjectType, v19);
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
      v23 = v37;
      dispatch thunk of Hashable.hash(into:)();
      (*v33)(v22, v23);
      result = Hasher._finalize()();
      v6 = v34;
      v24 = -1 << *(v34 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        v4 = v35;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      v4 = v35;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v11 = v39;
      *(*(v6 + 48) + 8 * v14) = v38;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v1 = v32;
        goto LABEL_26;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v39 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100E8730C()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_101A21D18);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = *(v2 + 48) + 16 * (v13 | (v5 << 6));
      v17 = *v16;
      v18 = *(v16 + 8);
      Hasher.init(_seed:)();
      if (v18 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(v17);
      }

      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 16 * v11;
      *v12 = v17;
      *(v12 + 8) = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_29;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100E87560()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_101A21D40);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v18 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v21 = (*(v2 + 48) + 112 * (v18 | (v5 << 6)));
      v23 = *v21;
      v22 = v21[1];
      v45 = v21[2];
      v24 = v21[3];
      v25 = v21[4];
      v26 = v21[6];
      v48 = v21[5];
      v49 = v26;
      v46 = v24;
      v47 = v25;
      v43 = v23;
      v44 = v22;
      Hasher.init(_seed:)();
      if (v49)
      {
        v38 = v47;
        v39 = v48;
        v40 = v49;
        v34 = v43;
        v35 = v44;
        v36 = v45;
        v37 = v46;
        Hasher._combine(_:)(1u);
        v41[4] = v47;
        v41[5] = v48;
        v41[6] = v49;
        v41[0] = v43;
        v41[1] = v44;
        v41[2] = v45;
        v41[3] = v46;
        sub_10000BE14(&v43, v42, &qword_1019FFF80);
        sub_1007A971C(v41, v42);
        sub_1007A9778();
        dispatch thunk of Hashable.hash(into:)();
        v42[4] = v38;
        v42[5] = v39;
        v42[6] = v40;
        v42[0] = v34;
        v42[1] = v35;
        v42[2] = v36;
        v42[3] = v37;
        sub_1007A97CC(v42);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v27 = -1 << *(v4 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v10 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v10 + 8 * v29);
          if (v33 != -1)
          {
            v11 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v11 = __clz(__rbit64((-1 << v28) & ~*(v10 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 112 * v11);
      v13 = v45;
      v14 = v43;
      v12[1] = v44;
      v12[2] = v13;
      v15 = v46;
      v16 = v47;
      v17 = v49;
      v12[5] = v48;
      v12[6] = v17;
      v12[3] = v15;
      v12[4] = v16;
      *v12 = v14;
      ++*(v4 + 16);
    }

    v19 = v5;
    while (1)
    {
      v5 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_29;
      }

      v20 = *(v2 + 56 + 8 * v5);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v8 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100E87888(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v6 = *v4;
  sub_1005B981C(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = *(v6 + 48) + 16 * (v17 | (v9 << 6));
      v21 = *v20;
      v22 = *(v20 + 8);
      Hasher.init(_seed:)();
      if (v22 == 255)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        sub_1005B981C(a4);
        CRExtensible.hash(into:)();
      }

      result = Hasher._finalize()();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v8 + 48) + 16 * v15;
      *v16 = v21;
      *(v16 + 8) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v5 = v4;
        goto LABEL_29;
      }

      v19 = *(v6 + 56 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v5 = v8;
  }

  return result;
}

uint64_t sub_100E87AF0()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_101A21D68);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      if (v15 == 2)
      {
        v16 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v16 = v15 & 1;
      }

      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v10 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_29;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100E87D2C()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_101A21D70);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = *(v2 + 48) + 8 * (v13 | (v5 << 6));
      v17 = *v16;
      v18 = *(v16 + 4);
      Hasher.init(_seed:)();
      if (v18 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        if ((v17 & 0x7FFFFFFF) != 0)
        {
          v19 = v17;
        }

        else
        {
          v19 = 0;
        }

        Hasher._combine(_:)(v19);
      }

      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v10 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v10 + 8 * v22);
          if (v26 != -1)
          {
            v11 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_34;
      }

      v11 = __clz(__rbit64((-1 << v21) & ~*(v10 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 8 * v11;
      *v12 = v17;
      *(v12 + 4) = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_32;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {

LABEL_32:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100E87F84()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_101A21D78);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v28 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 24 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      Hasher.init(_seed:)();
      if (v20 == 255)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        sub_100962384(v18, v19, v20 & 1);
        sub_1005B981C(&qword_1019FFFC8);
        CRExtensible.hash(into:)();
      }

      result = Hasher._finalize()();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      ++*(v4 + 16);
      v2 = v28;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_29;
      }

      v16 = *(v6 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100E88214()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_1019F3488);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100E8844C()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_101A21E68);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      sub_10063FD8C(*(v2 + 48) + 48 * (v15 | (v5 << 6)), v25);
      Hasher.init(_seed:)();
      AnyHashable.hash(into:)();
      Hasher._combine(_:)(v26[1]);
      result = Hasher._finalize()();
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v20);
          if (v24 != -1)
          {
            v11 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 48 * v11);
      v13 = v25[0];
      v14 = *v26;
      v12[1] = v25[1];
      v12[2] = v14;
      *v12 = v13;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100E88694()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  v30 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1005B981C(&unk_1019F3350);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v28 = v0;
    v29 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v30 + 72);
      sub_10000C83C(v19 + v20 * (v16 | (v8 << 6)), v4, type metadata accessor for CRLBoardIdentifier);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_100025668(v4, *(v7 + 48) + v15 * v20, type metadata accessor for CRLBoardIdentifier);
      ++*(v7 + 16);
      v5 = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v28;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_100E889D4()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_101A21EA0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v16 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v19 = *(v2 + 48) + 56 * (v16 | (v5 << 6));
      v20 = *v19;
      v21 = *(v19 + 48);
      v22 = *(v19 + 32);
      v32 = *(v19 + 16);
      v33 = v22;
      v34 = v21;
      v31 = v20;
      Hasher.init(_seed:)();
      sub_1000693DC(&v31, v30);
      sub_100068D24();
      result = Hasher._finalize()();
      v23 = -1 << *(v4 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v10 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v10 + 8 * v25);
          if (v29 != -1)
          {
            v11 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v24) & ~*(v10 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 56 * v11;
      v13 = v31;
      v14 = v32;
      v15 = v33;
      *(v12 + 48) = v34;
      *(v12 + 16) = v14;
      *(v12 + 32) = v15;
      *v12 = v13;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v18 = *(v2 + 56 + 8 * v5);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v8 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100E88C34()
{
  v108 = type metadata accessor for AnyCRValue();
  v1 = *(v108 - 8);
  __chkstk_darwin(v108);
  v107 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005B981C(&qword_101A04C30);
  __chkstk_darwin(v3 - 8);
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (&v78 - v7);
  v89 = type metadata accessor for URL();
  v9 = *(v89 - 8);
  __chkstk_darwin(v89);
  v81 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v78 - v12;
  v14 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v93 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1005B981C(&unk_101A096C0);
  v97 = *(v17 - 8);
  __chkstk_darwin(v17 - 8);
  v92 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v91 = &v78 - v20;
  v88 = v0;
  v21 = *v0;
  sub_1005B981C(&qword_101A22008);
  v22 = static _SetStorage.resize(original:capacity:move:)();
  result = v21;
  if (*(v21 + 16))
  {
    v24 = *(v21 + 56);
    v86 = v21 + 56;
    v25 = 1 << *(v21 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & v24;
    v85 = (v25 + 63) >> 6;
    v96 = (v15 + 48);
    v28 = 0;
    v87 = (v9 + 48);
    v80 = (v9 + 32);
    v79 = (v9 + 8);
    v100 = v1 + 16;
    v106 = (v1 + 32);
    v104 = (v1 + 8);
    v95 = v22 + 56;
    v102 = v1;
    v101 = v5;
    v105 = v8;
    v29 = v93;
    v30 = v92;
    v31 = v91;
    v32 = v22;
    v84 = v13;
    v83 = v14;
    v94 = result;
    v82 = v22;
    while (1)
    {
      if (!v27)
      {
        v35 = v28;
        while (1)
        {
          v28 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            goto LABEL_51;
          }

          if (v28 >= v85)
          {

            goto LABEL_49;
          }

          v36 = *(v86 + 8 * v28);
          ++v35;
          if (v36)
          {
            v34 = __clz(__rbit64(v36));
            v99 = (v36 - 1) & v36;
            goto LABEL_15;
          }
        }
      }

      v34 = __clz(__rbit64(v27));
      v99 = (v27 - 1) & v27;
LABEL_15:
      v37 = *(result + 48);
      v98 = *(v97 + 72);
      sub_10000BE14(v37 + v98 * (v34 | (v28 << 6)), v31, &unk_101A096C0);
      Hasher.init(_seed:)();
      sub_10000BE14(v31, v30, &unk_101A096C0);
      if ((*v96)(v30, 1, v14) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        sub_100025668(v30, v29, type metadata accessor for CRLWPHyperlinkSmartFieldData);
        Hasher._combine(_:)(1u);
        v38 = *(v29 + 8);
        *&v110 = *v29;
        BYTE8(v110) = v38;
        sub_1005B981C(&unk_101A0D940);
        CRExtensible.hash(into:)();
        sub_10000BE14(v29 + *(v14 + 20), v13, &unk_1019F33C0);
        v39 = v89;
        v40 = (*v87)(v13, 1, v89);
        v90 = v28;
        if (v40 == 1)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          v41 = v81;
          (*v80)(v81, v13, v39);
          Hasher._combine(_:)(1u);
          sub_1000066D0(&qword_101A00578, &type metadata accessor for URL);
          dispatch thunk of Hashable.hash(into:)();
          (*v79)(v41, v39);
        }

        String.hash(into:)();
        v42 = *(v29 + *(v14 + 28));
        v45 = *(v42 + 64);
        v44 = v42 + 64;
        v43 = v45;
        v46 = 1 << *(*(v29 + *(v14 + 28)) + 32);
        if (v46 < 64)
        {
          v47 = ~(-1 << v46);
        }

        else
        {
          v47 = -1;
        }

        v48 = v47 & v43;
        v49 = (v46 + 63) >> 6;
        v103 = *(v29 + *(v14 + 28));

        v50 = 0;
        v109 = 0;
        if (!v48)
        {
LABEL_25:
          if (v49 <= v50 + 1)
          {
            v52 = v50 + 1;
          }

          else
          {
            v52 = v49;
          }

          v53 = v52 - 1;
          v54 = v105;
          while (1)
          {
            v51 = v50 + 1;
            if (__OFADD__(v50, 1))
            {
              break;
            }

            if (v51 >= v49)
            {
              v70 = sub_1005B981C(&qword_101A04C38);
              (*(*(v70 - 8) + 56))(v5, 1, 1, v70);
              v48 = 0;
              goto LABEL_33;
            }

            v48 = *(v44 + 8 * v51);
            ++v50;
            if (v48)
            {
              goto LABEL_32;
            }
          }

          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        while (1)
        {
          v51 = v50;
LABEL_32:
          v55 = __clz(__rbit64(v48));
          v48 &= v48 - 1;
          v56 = v55 | (v51 << 6);
          v57 = *(*(v103 + 48) + 8 * v56);
          v58 = v102;
          v59 = v107;
          v60 = v108;
          (*(v102 + 16))(v107, *(v103 + 56) + *(v102 + 72) * v56, v108);
          v61 = sub_1005B981C(&qword_101A04C38);
          v62 = *(v61 + 48);
          v63 = v101;
          *v101 = v57;
          v64 = v60;
          v5 = v63;
          (*(v58 + 32))(&v63[v62], v59, v64);
          (*(*(v61 - 8) + 56))(v5, 0, 1, v61);
          v53 = v51;
          v54 = v105;
LABEL_33:
          sub_10003DFF8(v5, v54, &qword_101A04C30);
          v65 = sub_1005B981C(&qword_101A04C38);
          if ((*(*(v65 - 8) + 48))(v54, 1, v65) == 1)
          {
            break;
          }

          v66 = *v54;
          v67 = v54 + *(v65 + 48);
          v68 = v107;
          v69 = v108;
          (*v106)(v107, v67, v108);
          v112 = v117;
          v113 = v118;
          v114 = v119;
          v110 = v115;
          v111 = v116;
          Hasher._combine(_:)(v66);
          sub_1000066D0(&qword_101A04C40, &type metadata accessor for AnyCRValue);
          dispatch thunk of Hashable.hash(into:)();
          (*v104)(v68, v69);
          result = Hasher._finalize()();
          v50 = v53;
          v109 ^= result;
          if (!v48)
          {
            goto LABEL_25;
          }
        }

        Hasher._combine(_:)(v109);
        v29 = v93;
        sub_100026028(v93, type metadata accessor for CRLWPHyperlinkSmartFieldData);
        v13 = v84;
        v14 = v83;
        v30 = v92;
        v31 = v91;
        v32 = v82;
        v28 = v90;
      }

      result = Hasher._finalize()();
      v71 = -1 << *(v32 + 32);
      v72 = result & ~v71;
      v73 = v72 >> 6;
      if (((-1 << v72) & ~*(v95 + 8 * (v72 >> 6))) == 0)
      {
        break;
      }

      v33 = __clz(__rbit64((-1 << v72) & ~*(v95 + 8 * (v72 >> 6)))) | v72 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v95 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      sub_10003DFF8(v31, *(v32 + 48) + v33 * v98, &unk_101A096C0);
      ++*(v32 + 16);
      result = v94;
      v27 = v99;
    }

    v74 = 0;
    v75 = (63 - v71) >> 6;
    while (++v73 != v75 || (v74 & 1) == 0)
    {
      v76 = v73 == v75;
      if (v73 == v75)
      {
        v73 = 0;
      }

      v74 |= v76;
      v77 = *(v95 + 8 * v73);
      if (v77 != -1)
      {
        v33 = __clz(__rbit64(~v77)) + (v73 << 6);
        goto LABEL_7;
      }
    }

LABEL_52:
    __break(1u);
  }

  else
  {

    v32 = v22;
LABEL_49:
    *v88 = v32;
  }

  return result;
}

uint64_t sub_100E89804()
{
  v1 = v0;
  v2 = _s5BoardVMa(0);
  __chkstk_darwin(v2 - 8);
  v51 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v8 = __chkstk_darwin(v7 - 8);
  v52 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v53 = &v49 - v10;
  v11 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = __chkstk_darwin(v11);
  v57 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v49 - v14;
  v16 = *v0;
  sub_1005B981C(&qword_101A21EA8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v18 = result;
  if (!*(v16 + 16))
  {

LABEL_42:
    *v1 = v18;
    return result;
  }

  v49 = v6;
  v50 = v0;
  v19 = 0;
  v20 = v16 + 56;
  v21 = 1 << *(v16 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & *(v16 + 56);
  v24 = (v21 + 63) >> 6;
  v25 = result + 56;
  v54 = v16;
  while (v23)
  {
    v27 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
LABEL_15:
    v30 = *(v55 + 72);
    sub_10000C83C(*(v16 + 48) + v30 * (v27 | (v19 << 6)), v15, type metadata accessor for CRLBoardLibraryViewModel.Item);
    Hasher.init(_seed:)();
    sub_10000C83C(v15, v57, type metadata accessor for CRLBoardLibraryViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      Hasher._combine(_:)(*v57);
      goto LABEL_31;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v32 = v53;
      sub_100025668(v57, v53, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v33 = v32;
      v34 = v52;
      sub_10000C83C(v33, v52, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v35 = sub_1005B981C(&qword_1019F3480);
      v36 = (*(*(v35 - 8) + 48))(v34, 5, v35);
      if (v36 > 2)
      {
        if (v36 == 3)
        {
          v37 = 2;
        }

        else if (v36 == 4)
        {
          v37 = 3;
        }

        else
        {
          v37 = 4;
        }

LABEL_28:
        Hasher._combine(_:)(v37);
      }

      else
      {
        if (v36)
        {
          v37 = v36 != 1;
          goto LABEL_28;
        }

        v41 = v49;
        sub_100025668(v52, v49, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        Hasher._combine(_:)(5uLL);
        sub_100F8ED58();
        sub_100026028(v41, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      }

      v39 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      v40 = v53;
      goto LABEL_30;
    }

    v38 = v51;
    sub_100025668(v57, v51, _s5BoardVMa);
    type metadata accessor for UUID();
    sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    type metadata accessor for CRLBoardIdentifierStorage(0);
    String.hash(into:)();
    v39 = _s5BoardVMa;
    v40 = v38;
LABEL_30:
    sub_100026028(v40, v39);
LABEL_31:
    result = Hasher._finalize()();
    v42 = -1 << *(v18 + 32);
    v43 = result & ~v42;
    v44 = v43 >> 6;
    if (((-1 << v43) & ~*(v25 + 8 * (v43 >> 6))) == 0)
    {
      v45 = 0;
      v46 = (63 - v42) >> 6;
      while (++v44 != v46 || (v45 & 1) == 0)
      {
        v47 = v44 == v46;
        if (v44 == v46)
        {
          v44 = 0;
        }

        v45 |= v47;
        v48 = *(v25 + 8 * v44);
        if (v48 != -1)
        {
          v26 = __clz(__rbit64(~v48)) + (v44 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_44;
    }

    v26 = __clz(__rbit64((-1 << v43) & ~*(v25 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    result = sub_100025668(v15, *(v18 + 48) + v26 * v30, type metadata accessor for CRLBoardLibraryViewModel.Item);
    ++*(v18 + 16);
    v16 = v54;
  }

  v28 = v19;
  while (1)
  {
    v19 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v19 >= v24)
    {

      v1 = v50;
      goto LABEL_42;
    }

    v29 = *(v20 + 8 * v19);
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v23 = (v29 - 1) & v29;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_100E89E40()
{
  v1 = v0;
  v67 = type metadata accessor for UUID();
  v2 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v11 = __chkstk_darwin(v10 - 8);
  v65 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v58 - v13;
  v15 = type metadata accessor for CRLPreviewImages.Item(0);
  v69 = *(v15 - 8);
  v70 = v15;
  v16 = __chkstk_darwin(v15);
  v66 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v73 = &v58 - v18;
  v19 = *v0;
  sub_1005B981C(&unk_1019F3470);
  v20 = static _SetStorage.resize(original:capacity:move:)();
  result = v19;
  if (!*(v19 + 16))
  {

LABEL_41:
    *v1 = v20;
    return result;
  }

  v59 = v9;
  v60 = v0;
  v22 = 0;
  v23 = v19 + 56;
  v24 = 1 << *(v19 + 32);
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & *(v19 + 56);
  v27 = (v24 + 63) >> 6;
  v62 = (v2 + 32);
  v61 = (v2 + 8);
  v28 = v20 + 56;
  v29 = v66;
  v63 = v14;
  v68 = result;
  while (v26)
  {
    v31 = __clz(__rbit64(v26));
    v72 = (v26 - 1) & v26;
LABEL_15:
    v34 = *(result + 48);
    v71 = *(v69 + 72);
    v35 = v73;
    sub_10000C83C(v34 + v71 * (v31 | (v22 << 6)), v73, type metadata accessor for CRLPreviewImages.Item);
    Hasher.init(_seed:)();
    sub_10000C83C(v35, v29, type metadata accessor for CRLPreviewImages.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      sub_100025668(v29, v14, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v39 = v65;
      sub_10000C83C(v14, v65, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v40 = sub_1005B981C(&qword_1019F3480);
      v41 = (*(*(v40 - 8) + 48))(v39, 5, v40);
      if (v41 > 2)
      {
        if (v41 == 3)
        {
          v42 = 2;
        }

        else if (v41 == 4)
        {
          v42 = 3;
        }

        else
        {
          v42 = 4;
        }

LABEL_28:
        Hasher._combine(_:)(v42);
      }

      else
      {
        if (v41)
        {
          v42 = v41 != 1;
          goto LABEL_28;
        }

        v49 = v59;
        sub_100025668(v65, v59, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        Hasher._combine(_:)(5uLL);
        sub_100F8ED58();
        v50 = v49;
        v29 = v66;
        sub_100026028(v50, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      }

      v37 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      v38 = v14;
      goto LABEL_30;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_100025668(v29, v6, type metadata accessor for CRLBoardIdentifier);
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      v37 = type metadata accessor for CRLBoardIdentifier;
      v38 = v6;
    }

    else
    {
      v43 = *(sub_1005B981C(&unk_1019FB780) + 48);
      sub_100025668(v29, v6, type metadata accessor for CRLBoardIdentifier);
      v44 = v6;
      v45 = v64;
      v46 = v67;
      (*v62)(v64, v29 + v43, v67);
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      v29 = v66;
      dispatch thunk of Hashable.hash(into:)();
      v47 = v45;
      v6 = v44;
      v48 = v46;
      v14 = v63;
      (*v61)(v47, v48);
      v37 = type metadata accessor for CRLBoardIdentifier;
      v38 = v44;
    }

LABEL_30:
    sub_100026028(v38, v37);
    result = Hasher._finalize()();
    v51 = -1 << *(v20 + 32);
    v52 = result & ~v51;
    v53 = v52 >> 6;
    if (((-1 << v52) & ~*(v28 + 8 * (v52 >> 6))) == 0)
    {
      v54 = 0;
      v55 = (63 - v51) >> 6;
      while (++v53 != v55 || (v54 & 1) == 0)
      {
        v56 = v53 == v55;
        if (v53 == v55)
        {
          v53 = 0;
        }

        v54 |= v56;
        v57 = *(v28 + 8 * v53);
        if (v57 != -1)
        {
          v30 = __clz(__rbit64(~v57)) + (v53 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_43;
    }

    v30 = __clz(__rbit64((-1 << v52) & ~*(v28 + 8 * (v52 >> 6)))) | v52 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v28 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    sub_100025668(v73, *(v20 + 48) + v30 * v71, type metadata accessor for CRLPreviewImages.Item);
    ++*(v20 + 16);
    result = v68;
    v26 = v72;
  }

  v32 = v22;
  while (1)
  {
    v22 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v22 >= v27)
    {

      v1 = v60;
      goto LABEL_41;
    }

    v33 = *(v23 + 8 * v22);
    ++v32;
    if (v33)
    {
      v31 = __clz(__rbit64(v33));
      v72 = (v33 - 1) & v33;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

unint64_t sub_100E8A640()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_101A21CE8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v2 + 56);
    for (i = (v6 + 63) >> 6; v8; result = sub_100E7AE54(*v13, *(v13 + 8), *(v13 + 16), v4, *(v13 + 24)))
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_11:
      v13 = *(v2 + 48) + 32 * (v10 | (v5 << 6));
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= i)
      {
        goto LABEL_13;
      }

      v12 = *(v2 + 56 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100E8A77C()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardIdentifierAndValue(0);
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1005B981C(&qword_1019F3680);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v30 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v31 + 72);
      sub_10000C83C(v19 + v20 * (v16 | (v8 << 6)), v4, type metadata accessor for CRLBoardIdentifierAndValue);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      Hasher._combine(_:)(v4[*(v32 + 20)]);
      result = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_100025668(v4, *(v7 + 48) + v15 * v20, type metadata accessor for CRLBoardIdentifierAndValue);
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v29;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_100E8AAD0()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v21 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1005B981C(&unk_1019F33F0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v20 = v0;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    for (i = result + 56; v11; ++*(v7 + 16))
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v17 = *(v21 + 72);
      sub_10000C83C(*(v5 + 48) + v17 * (v14 | (v8 << 6)), v4, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      Hasher.init(_seed:)();
      sub_100F8ED58();
      Hasher._finalize()();
      v18 = _HashTable.nextHole(atOrAfter:)();
      *(i + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_100025668(v4, *(v7 + 48) + v18 * v17, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v20;
        goto LABEL_16;
      }

      v16 = *(v5 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_100E8AD38()
{
  v1 = v0;
  v2 = _s4NodeVMa(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_1005B981C(&qword_101A21C90);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v6 + 56);
    for (i = (v10 + 63) >> 6; v12; result = sub_100E7AF84(v5, v8))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_11:
      sub_10000C83C(*(v6 + 48) + *(v3 + 72) * (v14 | (v9 << 6)), v5, _s4NodeVMa);
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_13;
      }

      v16 = *(v6 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v1 = v8;
  }

  return result;
}

uint64_t sub_100E8AF04()
{
  v1 = v0;
  v2 = _s5BoardVMa(0);
  v30 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1005B981C(&qword_101A21C88);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v28 = v0;
    v29 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v30 + 72);
      sub_10000C83C(v19 + v20 * (v16 | (v8 << 6)), v4, _s5BoardVMa);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_100025668(v4, *(v7 + 48) + v15 * v20, _s5BoardVMa);
      ++*(v7 + 16);
      v5 = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v28;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_100E8B244()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_101A21C78);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v15);
      result = Hasher._finalize()();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100E8B464()
{
  v1 = v0;
  v2 = type metadata accessor for CRLFolderIdentifier(0);
  v30 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1005B981C(&qword_1019F3790);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v28 = v0;
    v29 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v30 + 72);
      sub_10000C83C(v19 + v20 * (v16 | (v8 << 6)), v4, type metadata accessor for CRLFolderIdentifier);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLFolderIdentifierStorage(0);
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_100025668(v4, *(v7 + 48) + v15 * v20, type metadata accessor for CRLFolderIdentifier);
      ++*(v7 + 16);
      v5 = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v28;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_100E8B7A4()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1005B981C(&qword_101A22058);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v28 = v0;
    v29 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v33 = (v12 - 1) & v12;
LABEL_15:
      v19 = *(v5 + 48);
      v32 = *(v30 + 72);
      sub_10000C83C(v19 + v32 * (v16 | (v8 << 6)), v4, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      dispatch thunk of Hashable.hash(into:)();
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        v5 = v29;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
      v5 = v29;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_100025668(v4, *(v7 + 48) + v15 * v32, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
      ++*(v7 + 16);
      v12 = v33;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v28;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v33 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_100E8BB38()
{
  v1 = v0;
  v2 = _s17CategoryViewModelVMa();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_1005B981C(&qword_101A21FB8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v28 = v0;
    v9 = 0;
    v10 = *(v6 + 56);
    v29 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & v10;
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    v30 = v14;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v32 = (v13 - 1) & v13;
LABEL_15:
      v20 = *(v6 + 48);
      v31 = *(v3 + 72);
      sub_10000C83C(v20 + v31 * (v17 | (v9 << 6)), v5, _s17CategoryViewModelVMa);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      String.hash(into:)();
      if (*&v5[*(v2 + 24) + 8])
      {
        Hasher._combine(_:)(1u);
        v14 = v30;
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      String.hash(into:)();
      Hasher._combine(_:)(*&v5[*(v2 + 32)]);
      result = Hasher._finalize()();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_100025668(v5, *(v8 + 48) + v16 * v31, _s17CategoryViewModelVMa);
      ++*(v8 + 16);
      v13 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        goto LABEL_29;
      }

      v19 = *(v29 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v32 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_100E8BF18()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_1019F3798);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v25 = (v9 - 1) & v9;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      type metadata accessor for CalculateExpression();
      sub_1000066D0(&qword_1019F37A0, &type metadata accessor for CalculateExpression);

      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v24;
      v9 = v25;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v25 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100E8C190()
{
  v1 = v0;
  v32 = type metadata accessor for UTType();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1005B981C(&qword_101A21FF8);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1000066D0(&unk_101A22910, &type metadata accessor for UTType);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100E8C4AC()
{
  v1 = v0;
  v2 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v28 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1005B981C(&qword_101A21FE0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v28 + 72);
      sub_10000C83C(*(v5 + 48) + v18 * (v15 | (v8 << 6)), v4, type metadata accessor for CRLSELibraryViewModel.Item);
      Hasher.init(_seed:)();
      sub_1007F0E00(v29);
      result = Hasher._finalize()();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = sub_100025668(v4, *(v7 + 48) + v14 * v18, type metadata accessor for CRLSELibraryViewModel.Item);
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_100E8C784()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_101A21D98);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (!*(v2 + 16))
  {

LABEL_37:
    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = 1 << *(v2 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v2 + 56);
  v9 = (v6 + 63) >> 6;
  v10 = result + 56;
  while (v8)
  {
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_15:
    v16 = *(v2 + 48) + 16 * (v13 | (v5 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    Hasher.init(_seed:)();
    if (v18 <= 1)
    {
      v19 = v18 != 0;
LABEL_19:
      Hasher._combine(_:)(v19);
      v20 = v17;
      NSObject.hash(into:)();
      goto LABEL_26;
    }

    if (v18 == 2)
    {
      v19 = 2;
      goto LABEL_19;
    }

    if (v17)
    {
      if (v17 == 1)
      {
        v21 = 4;
      }

      else
      {
        v21 = 5;
      }
    }

    else
    {
      v21 = 3;
    }

    Hasher._combine(_:)(v21);
LABEL_26:
    result = Hasher._finalize()();
    v22 = -1 << *(v4 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v10 + 8 * (v23 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v22) >> 6;
      while (++v24 != v26 || (v25 & 1) == 0)
      {
        v27 = v24 == v26;
        if (v24 == v26)
        {
          v24 = 0;
        }

        v25 |= v27;
        v28 = *(v10 + 8 * v24);
        if (v28 != -1)
        {
          v11 = __clz(__rbit64(~v28)) + (v24 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_39;
    }

    v11 = __clz(__rbit64((-1 << v23) & ~*(v10 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
    v12 = *(v4 + 48) + 16 * v11;
    *v12 = v17;
    *(v12 + 8) = v18;
    ++*(v4 + 16);
  }

  v14 = v5;
  while (1)
  {
    v5 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v5 >= v9)
    {

      v1 = v0;
      goto LABEL_37;
    }

    v15 = *(v2 + 56 + 8 * v5);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v8 = (v15 - 1) & v15;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

unint64_t sub_100E8CA14()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_101A21FC0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    for (i = result + 56; v8; ++*(v4 + 16))
    {
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
      Hasher.init(_seed:)();
      v15 = *(v14 + 16);

      sub_100BD3B78(v16, v15);
      sub_100D6FEA0(v16);
      Hasher._finalize()();
      result = _HashTable.nextHole(atOrAfter:)();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v4 + 48) + 8 * result) = v14;
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_14;
      }

      v13 = *(v2 + 56 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v8 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100E8CBD8()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v2 - 8);
  v38 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLSpotlightManager.ChangeType(0);
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = __chkstk_darwin(v4);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  v9 = *v0;
  sub_1005B981C(&qword_101A21FD0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v35 = v0;
    v36 = v9;
    v12 = 0;
    v13 = v9 + 56;
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    v37 = v8;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = *(v40 + 72);
      sub_10000C83C(*(v9 + 48) + v23 * (v20 | (v12 << 6)), v8, type metadata accessor for CRLSpotlightManager.ChangeType);
      Hasher.init(_seed:)();
      v24 = v39;
      sub_10000C83C(v8, v39, type metadata accessor for CRLSpotlightManager.ChangeType);
      v25 = swift_getEnumCaseMultiPayload() == 1;
      v26 = v24;
      v27 = v38;
      sub_100025668(v26, v38, type metadata accessor for CRLBoardIdentifier);
      Hasher._combine(_:)(v25);
      type metadata accessor for UUID();
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      sub_100026028(v27, type metadata accessor for CRLBoardIdentifier);
      result = Hasher._finalize()();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v8 = v37;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v8 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_100025668(v8, *(v11 + 48) + v19 * v23, type metadata accessor for CRLSpotlightManager.ChangeType);
      ++*(v11 + 16);
      v9 = v36;
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

        v1 = v35;
        goto LABEL_26;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v11;
  }

  return result;
}

uint64_t sub_100E8D00C()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_101A21E28);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = static Hasher._hash(seed:_:)();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100E8D1FC()
{
  v1 = v0;
  v32 = type metadata accessor for IndexPath();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1005B981C(&qword_101A21E98);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1000066D0(&unk_101A23C60, &type metadata accessor for IndexPath);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100E8D518()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_1019F3610);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      sub_100064110(*(v2 + 48) + 40 * (v15 | (v5 << 6)), v25);
      result = AnyHashable._rawHashValue(seed:)(*(v4 + 40));
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v20);
          if (v24 != -1)
          {
            v11 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 40 * v11;
      v13 = v25[0];
      v14 = v25[1];
      *(v12 + 32) = v26;
      *v12 = v13;
      *(v12 + 16) = v14;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}