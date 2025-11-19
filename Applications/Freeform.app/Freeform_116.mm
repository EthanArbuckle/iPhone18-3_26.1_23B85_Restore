uint64_t sub_100E6C3B8(uint64_t a1, Swift::Int a2, char a3)
{
  v4 = a3;
  v6 = ~a3;
  v7 = *v3;
  Hasher.init(_seed:)();
  if (v6)
  {
    Hasher._combine(_:)(1u);
    sub_1005B981C(&unk_1019FFFA0);
    CRExtensible.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = *(v7 + 48) + 16 * v10;
      if (*(v12 + 8) == 255)
      {
        if (v4 == -1)
        {
          result = 0;
          a2 = *v12;
          v4 = -1;
          goto LABEL_13;
        }
      }

      else if (v4 != -1)
      {
        type metadata accessor for CRLWPStrikethru(0);
        sub_1000066D0(&unk_101A0DA50, type metadata accessor for CRLWPStrikethru);
        if (static CRExtensible.== infix(_:_:)())
        {
          result = 0;
          v14 = *(v7 + 48) + 16 * v10;
          a2 = *v14;
          v4 = *(v14 + 8);
          goto LABEL_13;
        }
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v16;
  sub_100E7CE38(a2, v4, v10, isUniquelyReferenced_nonNull_native);
  *v16 = v18;
  result = 1;
LABEL_13:
  *a1 = a2;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_100E6C5E0(uint64_t a1, Swift::Int a2, char a3)
{
  v4 = a3;
  v6 = ~a3;
  v7 = *v3;
  Hasher.init(_seed:)();
  if (v6)
  {
    Hasher._combine(_:)(1u);
    sub_1005B981C(&unk_1019FFFB0);
    CRExtensible.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = *(v7 + 48) + 16 * v10;
      if (*(v12 + 8) == 255)
      {
        if (v4 == -1)
        {
          result = 0;
          a2 = *v12;
          v4 = -1;
          goto LABEL_13;
        }
      }

      else if (v4 != -1)
      {
        type metadata accessor for CRLWPUnderline(0);
        sub_1000066D0(&unk_101A0DA60, type metadata accessor for CRLWPUnderline);
        if (static CRExtensible.== infix(_:_:)())
        {
          result = 0;
          v14 = *(v7 + 48) + 16 * v10;
          a2 = *v14;
          v4 = *(v14 + 8);
          goto LABEL_13;
        }
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v16;
  sub_100E7D0F8(a2, v4, v10, isUniquelyReferenced_nonNull_native);
  *v16 = v18;
  result = 1;
LABEL_13:
  *a1 = a2;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_100E6C808(_BYTE *a1, Swift::Int a2)
{
  v3 = v2;
  v4 = a2;
  v6 = a2;
  v7 = *v3;
  Hasher.init(_seed:)();
  if (v6 == 2)
  {
    v8 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v8 = v4 & 1;
  }

  Hasher._combine(_:)(v8);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    do
    {
      v13 = *(v7 + 48);
      v14 = *(v13 + v11);
      if (v14 == 2)
      {
        if (v4 == 2)
        {
          result = 0;
          LOBYTE(v4) = 2;
          goto LABEL_13;
        }
      }

      else if (v4 != 2 && ((v14 ^ v4) & 1) == 0)
      {
        result = 0;
        LOBYTE(v4) = *(v13 + v11);
        goto LABEL_13;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v3;
  sub_100E7D3B8(v4, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v17;
  result = 1;
LABEL_13:
  *a1 = v4;
  return result;
}

uint64_t sub_100E6C954(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  if ((a2 & 0x100000000) != 0)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((a2 & 0x7FFFFF) == 0 && (a2 & 0x7F800000) == 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }

    Hasher._combine(_:)(v7);
  }

  v8 = Hasher._finalize()();
  v9 = v5 + 56;
  v10 = -1 << *(v5 + 32);
  v11 = v8 & ~v10;
  if ((*(v5 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v5 + 48);
    do
    {
      v14 = v13 + 8 * v11;
      LOBYTE(v15) = *(v14 + 4);
      if (v15)
      {
        if ((a2 & 0x100000000) != 0)
        {
          result = 0;
          LODWORD(a2) = *v14;
          goto LABEL_19;
        }
      }

      else if ((a2 & 0x100000000) == 0 && *v14 == *&a2)
      {
        result = 0;
        LODWORD(a2) = *v14;
        goto LABEL_19;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  v15 = HIDWORD(a2) & 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v2;
  sub_100E7D554(a2 | (v15 << 32), v11, isUniquelyReferenced_nonNull_native);
  *v2 = v18;
  result = 1;
LABEL_19:
  *a1 = a2;
  *(a1 + 4) = v15;
  return result;
}

uint64_t sub_100E6CAB0(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = ~a4;
  v9 = *v4;
  Hasher.init(_seed:)();
  if (v8)
  {
    Hasher._combine(_:)(1u);
    sub_1005B981C(&qword_1019FFFC8);
    CRExtensible.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_13:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    sub_100962438(a2, a3, a4);
    sub_100E7D6FC(a2, a3, a4, v12, isUniquelyReferenced_nonNull_native);
    *v21 = v23;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    return 1;
  }

  v13 = ~v11;
  while (1)
  {
    v15 = *(v9 + 48) + 24 * v12;
    v16 = *v15;
    v17 = *(v15 + 8);
    if (*(v15 + 16) != 255)
    {
      break;
    }

    v14 = -1;
    if (a4 == -1)
    {
      goto LABEL_12;
    }

LABEL_7:
    v12 = (v12 + 1) & v13;
    if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (a4 == -1)
  {
    goto LABEL_7;
  }

  sub_1007A9874();
  if ((static CRExtensible.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_1009623A8(a2, a3, a4);
  v18 = *(v9 + 48) + 24 * v12;
  v16 = *v18;
  v17 = *(v18 + 8);
  v14 = *(v18 + 16);
LABEL_12:
  *a1 = v16;
  *(a1 + 8) = v17;
  *(a1 + 16) = v14;
  sub_100962438(v16, v17, v14);
  return 0;
}

uint64_t sub_100E6CD34(_OWORD *a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  v6 = *(a2 + 40);
  Hasher._combine(_:)(v6);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    do
    {
      sub_10063FD8C(*(v5 + 48) + 48 * v9, v16);
      if (static AnyHashable.== infix(_:_:)())
      {
        v11 = v17;
        sub_10063FDE8(v16);
        if (v11 == v6)
        {
          sub_10063FDE8(a2);
          sub_10063FD8C(*(v5 + 48) + 48 * v9, a1);
          return 0;
        }
      }

      else
      {
        sub_10063FDE8(v16);
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10063FD8C(a2, v16);
  v15 = *v2;
  sub_100E7DAF0(v16, v9, isUniquelyReferenced_nonNull_native);
  *v2 = v15;
  v14 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v14;
  a1[2] = *(a2 + 32);
  return 1;
}

uint64_t sub_100E6CEB8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  sub_100068D24();
  v5 = Hasher._finalize()();
  v59 = v4 + 56;
  v60 = v4;
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_68:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = *v56;
    sub_1000693DC(a2, v62);
    sub_100E7DCA8(a2, v7, isUniquelyReferenced_nonNull_native);
    *v56 = v61;
    v42 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v42;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    return 1;
  }

  v58 = ~v6;
  while (1)
  {
    v8 = *(v60 + 48) + 56 * v7;
    v9 = *(v8 + 48);
    v10 = *(v8 + 32);
    v11 = *v8;
    v64 = *(v8 + 16);
    v65 = v10;
    v63 = v11;
    v66 = v9;
    sub_1000693DC(&v63, v62);
    v12 = sub_100068F28();
    v14 = v13;
    if (v12 == sub_100068F28() && v14 == v15)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v17 = v64;
    v18 = BYTE8(v64);
    v19 = v66;
    v20 = v66 >> 6;
    if (v20 <= 1)
    {
      break;
    }

    v23 = v65;
    v24 = (*(&v64 + 9) << 8) | ((*(&v64 + 13) | (HIBYTE(v64) << 16)) << 40);
    if (v20 == 2)
    {
      v25 = *(a2 + 48);
      if ((v25 & 0xC0) != 0x80)
      {
        goto LABEL_4;
      }

      v26 = *(a2 + 8);
      v27 = *(a2 + 16);
      v29 = *(a2 + 24);
      v28 = *(a2 + 32);
      v30 = *(a2 + 40);
      if (*(&v63 + 1))
      {
        if (!v26)
        {
          goto LABEL_4;
        }

        if (v63 != *a2)
        {
          v54 = *(a2 + 32);
          v55 = *(a2 + 40);
          v52 = *(a2 + 16);
          v53 = *(a2 + 24);
          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v27 = v52;
          v29 = v53;
          v28 = v54;
          v30 = v55;
          if ((v31 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v26)
      {
        goto LABEL_4;
      }

      if (v24 | v18)
      {
        if (!v29 || (v17 != v27 || (v24 | v18) != v29) && (v32 = v30, v33 = v28, v34 = _stringCompareWithSmolCheck(_:_:expecting:)(), v28 = v33, v30 = v32, (v34 & 1) == 0))
        {
LABEL_4:
          sub_1000698D0(&v63);
          goto LABEL_5;
        }
      }

      else if (v29)
      {
        goto LABEL_4;
      }

      if (!*(&v23 + 1))
      {
        v39 = v30;
        sub_1000698D0(&v63);
        if (v39)
        {
          goto LABEL_5;
        }

        goto LABEL_63;
      }

      if (!v30)
      {
        goto LABEL_4;
      }

      if (v23 == __PAIR128__(v30, v28))
      {
        sub_1000698D0(&v63);
LABEL_63:
        if (((v19 ^ v25) & 1) == 0)
        {
          goto LABEL_69;
        }

        goto LABEL_5;
      }

      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_1000698D0(&v63);
      if ((v19 ^ v25) & 1) == 0 && (v40)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v35 = v24 | BYTE8(v64);
      v36 = v64 | *(&v63 + 1);
      if (v66 != 192 || v36 | v63 | v65 | *(&v65 + 1) | v35)
      {
        if (v66 == 192 && v63 == 1 && !(v36 | v65 | *(&v65 + 1) | v35))
        {
          if (*(a2 + 48) != 192 || *a2 != 1)
          {
            goto LABEL_5;
          }
        }

        else if (*(a2 + 48) != 192 || *a2 != 2)
        {
          goto LABEL_5;
        }

        v38 = vorrq_s8(*(a2 + 16), *(a2 + 32));
        if (!(*&vorr_s8(*v38.i8, *&vextq_s8(v38, v38, 8uLL)) | *(a2 + 8)))
        {
          goto LABEL_70;
        }
      }

      else if (*(a2 + 48) == 192)
      {
        v37 = vorrq_s8(*(a2 + 16), *(a2 + 32));
        if (!(*&vorr_s8(*v37.i8, *&vextq_s8(v37, v37, 8uLL)) | *(a2 + 8) | *a2))
        {
          goto LABEL_70;
        }
      }
    }

LABEL_5:
    v7 = (v7 + 1) & v58;
    if (((*(v59 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      goto LABEL_68;
    }
  }

  if (v20)
  {
    if ((*(a2 + 48) & 0xC0) == 0x40 && *a2 == v63 && *(a2 + 8) == *(&v63 + 1))
    {
      if (BYTE8(v64))
      {
        if (*(a2 + 24))
        {
          goto LABEL_70;
        }
      }

      else if ((*(a2 + 24) & 1) == 0 && *(a2 + 16) == *&v64)
      {
        goto LABEL_70;
      }
    }

    goto LABEL_5;
  }

  if (*(a2 + 48) >= 0x40u)
  {
    goto LABEL_4;
  }

  v21 = *(a2 + 8);
  if (!*(&v63 + 1))
  {
    sub_1000698D0(&v63);
    if (!v21)
    {
      goto LABEL_69;
    }

    goto LABEL_5;
  }

  if (!v21)
  {
    goto LABEL_4;
  }

  if (v63 != *a2)
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_1000698D0(&v63);
    if (v22)
    {
      goto LABEL_69;
    }

    goto LABEL_5;
  }

  sub_1000698D0(&v63);
LABEL_69:
  sub_1000698D0(a2);
LABEL_70:
  v44 = *(v60 + 48) + 56 * v7;
  v45 = *v44;
  v46 = *(v44 + 8);
  v47 = *(v44 + 16);
  v48 = *(v44 + 24);
  v49 = *(v44 + 32);
  v50 = *(v44 + 40);
  *a1 = *v44;
  *(a1 + 8) = v46;
  *(a1 + 16) = v47;
  *(a1 + 24) = v48;
  *(a1 + 32) = v49;
  *(a1 + 40) = v50;
  v51 = *(v44 + 48);
  *(a1 + 48) = v51;
  sub_100076F8C(v45, v46, v47, v48, v49, v50, v51);
  return 0;
}

uint64_t sub_100E6D3D4(uint64_t a1, uint64_t a2)
{
  v73 = a1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v68 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v7 - 8);
  v72 = &v67 - v8;
  v76 = sub_1005B981C(&unk_101A0B780);
  __chkstk_darwin(v76);
  v77 = &v67 - v9;
  v10 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v80 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1005B981C(&qword_101A00180);
  __chkstk_darwin(v85);
  v14 = &v67 - v13;
  v15 = sub_1005B981C(&unk_101A096C0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15 - 8);
  v81 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v67 - v19;
  __chkstk_darwin(v21);
  v70 = &v67 - v22;
  v71 = v2;
  v23 = *v2;
  Hasher.init(_seed:)();
  v87 = a2;
  sub_100E8FF94(&v91);
  v24 = Hasher._finalize()();
  v25 = v23 + 56;
  v86 = v23;
  v26 = -1 << *(v23 + 32);
  v27 = v24 & ~v26;
  v84 = v25;
  if (((*(v25 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
  {
LABEL_27:
    v62 = v71;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = v87;
    v65 = v70;
    sub_10000BE14(v87, v70, &unk_101A096C0);
    *&v91 = *v62;
    sub_100E7E1C4(v65, v27, isUniquelyReferenced_nonNull_native);
    *v62 = v91;
    sub_10003DFF8(v64, v73, &unk_101A096C0);
    return 1;
  }

  v88 = v10;
  v75 = v4;
  v83 = ~v26;
  v28 = (v11 + 48);
  v29 = *(v16 + 72);
  v74 = (v5 + 48);
  v67 = (v5 + 32);
  v69 = (v5 + 8);
  v30 = &unk_101A096C0;
  v31 = &unk_101489120;
  v79 = v29;
  while (1)
  {
    v33 = *(v86 + 48);
    v82 = v29 * v27;
    sub_10000BE14(v33 + v29 * v27, v20, v30);
    v34 = *(v85 + 48);
    sub_10000BE14(v20, v14, v30);
    sub_10000BE14(v87, &v14[v34], v30);
    v35 = v31;
    v36 = *v28;
    v37 = v30;
    v38 = v88;
    if ((*v28)(v14, 1, v88) == 1)
    {
      break;
    }

    v39 = v81;
    sub_10000BE14(v14, v81, v37);
    if (v36(&v14[v34], 1, v38) == 1)
    {
      sub_10000CAAC(v20, v37);
      sub_100026028(v39, type metadata accessor for CRLWPHyperlinkSmartFieldData);
      v29 = v79;
      v30 = v37;
      v31 = v35;
      goto LABEL_4;
    }

    v40 = &v14[v34];
    v41 = v80;
    sub_100025668(v40, v80, type metadata accessor for CRLWPHyperlinkSmartFieldData);
    v42 = *(v39 + 8);
    *&v91 = *v39;
    BYTE8(v91) = v42;
    v43 = *(v41 + 8);
    v89 = *v41;
    v90 = v43;
    sub_1007AB290();
    if ((static CRExtensible.== infix(_:_:)() & 1) == 0)
    {
      v30 = &unk_101A096C0;
      v31 = &unk_101489120;
      sub_10000CAAC(v20, &unk_101A096C0);
      goto LABEL_26;
    }

    v44 = *(v88 + 20);
    v45 = *(v76 + 48);
    v46 = v77;
    sub_10000BE14(v39 + v44, v77, &unk_1019F33C0);
    v78 = v45;
    sub_10000BE14(v41 + v44, v46 + v45, &unk_1019F33C0);
    v47 = *v74;
    v48 = v75;
    if ((*v74)(v46, 1, v75) == 1)
    {
      if (v47(v46 + v78, 1, v48) != 1)
      {
        v30 = &unk_101A096C0;
        v31 = &unk_101489120;
        sub_10000CAAC(v20, &unk_101A096C0);
        goto LABEL_17;
      }

      sub_10000CAAC(v46, &unk_1019F33C0);
      v30 = &unk_101A096C0;
      v31 = &unk_101489120;
    }

    else
    {
      v49 = v72;
      sub_10000BE14(v46, v72, &unk_1019F33C0);
      if (v47(v46 + v78, 1, v48) == 1)
      {
        v30 = &unk_101A096C0;
        v31 = &unk_101489120;
        sub_10000CAAC(v20, &unk_101A096C0);
        (*v69)(v49, v48);
LABEL_17:
        v50 = v77;
        v51 = &unk_101A0B780;
        goto LABEL_25;
      }

      v52 = v68;
      (*v67)(v68, v46 + v78, v48);
      sub_1000066D0(&qword_101A00190, &type metadata accessor for URL);
      LODWORD(v78) = dispatch thunk of static Equatable.== infix(_:_:)();
      v53 = *v69;
      (*v69)(v52, v48);
      v53(v49, v48);
      sub_10000CAAC(v46, &unk_1019F33C0);
      v30 = &unk_101A096C0;
      v31 = &unk_101489120;
      if ((v78 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v54 = v88;
    v55 = *(v88 + 24);
    v56 = (v81 + v55);
    v57 = *(v81 + v55 + 8);
    v58 = (v80 + v55);
    if ((*v56 != *v58 || v57 != v58[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_24:
      v50 = v20;
      v51 = &unk_101A096C0;
LABEL_25:
      sub_10000CAAC(v50, v51);
      v39 = v81;
LABEL_26:
      sub_100026028(v80, type metadata accessor for CRLWPHyperlinkSmartFieldData);
      sub_100026028(v39, type metadata accessor for CRLWPHyperlinkSmartFieldData);
      sub_10000CAAC(v14, &unk_101A096C0);
      v29 = v79;
      goto LABEL_5;
    }

    v59 = v80;
    v60 = v81;
    v61 = sub_100B3216C(*(v81 + *(v54 + 28)), *(v80 + *(v54 + 28)));
    sub_10000CAAC(v20, &unk_101A096C0);
    sub_100026028(v59, type metadata accessor for CRLWPHyperlinkSmartFieldData);
    sub_100026028(v60, type metadata accessor for CRLWPHyperlinkSmartFieldData);
    sub_10000CAAC(v14, &unk_101A096C0);
    v29 = v79;
    if (v61)
    {
      goto LABEL_29;
    }

LABEL_5:
    v27 = (v27 + 1) & v83;
    if (((*(v84 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  sub_10000CAAC(v20, v37);
  v32 = v36(&v14[v34], 1, v38);
  v30 = v37;
  v31 = v35;
  if (v32 != 1)
  {
LABEL_4:
    sub_10000CAAC(v14, &qword_101A00180);
    goto LABEL_5;
  }

  sub_10000CAAC(v14, &unk_101A096C0);
LABEL_29:
  sub_10000CAAC(v87, &unk_101A096C0);
  sub_10000BE14(*(v86 + 48) + v82, v73, &unk_101A096C0);
  return 0;
}

uint64_t sub_100E6DE34(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100E7EC1C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100E6DFC0(uint64_t a1, uint64_t a2)
{
  v69 = a1;
  v4 = _s5BoardVMa(0);
  v5 = __chkstk_darwin(v4 - 8);
  v74 = &v64[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v73 = &v64[-v7];
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v64[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v72 = sub_1005B981C(&qword_1019F3460);
  __chkstk_darwin(v72);
  v12 = &v64[-v11];
  v13 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v14 = __chkstk_darwin(v13 - 8);
  v70 = &v64[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v78 = &v64[-v17];
  __chkstk_darwin(v16);
  v77 = &v64[-v18];
  v19 = sub_1005B981C(&qword_101A000E0);
  __chkstk_darwin(v19);
  v21 = &v64[-v20];
  v22 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v80 = &v64[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = __chkstk_darwin(v24);
  v79 = &v64[-v27];
  v28 = __chkstk_darwin(v26);
  v81 = &v64[-v29];
  v30 = __chkstk_darwin(v28);
  v32 = &v64[-v31];
  __chkstk_darwin(v30);
  v67 = &v64[-v33];
  v68 = v2;
  v34 = *v2;
  Hasher.init(_seed:)();
  sub_100F8B698();
  v35 = Hasher._finalize()();
  v36 = v34 + 56;
  v84 = v34 + 56;
  v85 = v34;
  v37 = -1 << *(v34 + 32);
  v38 = v35 & ~v37;
  if (((*(v36 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
  {
LABEL_34:
    v60 = v68;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v67;
    sub_10000C83C(a2, v67, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v86 = *v60;
    sub_100E7EF20(v62, v38, isUniquelyReferenced_nonNull_native);
    *v60 = v86;
    sub_100025668(a2, v69, type metadata accessor for CRLBoardLibraryViewModel.Item);
    return 1;
  }

  v66 = v10;
  v82 = ~v37;
  v83 = *(v23 + 72);
  v75 = v12;
  v76 = v19;
  v71 = a2;
  while (1)
  {
    v40 = v83 * v38;
    sub_10000C83C(*(v85 + 48) + v83 * v38, v32, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v41 = *(v19 + 48);
    sub_10000C83C(v32, v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10000C83C(a2, &v21[v41], type metadata accessor for CRLBoardLibraryViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      sub_100026028(v32, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000C83C(v21, v81, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_5;
      }

      v51 = *v81;
      v52 = v21[v41];
      sub_100026028(v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (v51 == v52)
      {
        goto LABEL_37;
      }

      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 1)
    {
      break;
    }

    v43 = v80;
    sub_10000C83C(v21, v80, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_100026028(v32, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v39 = _s5BoardVMa;
      goto LABEL_4;
    }

    v53 = v73;
    sub_100025668(v43, v73, _s5BoardVMa);
    v54 = &v21[v41];
    v55 = v74;
    sub_100025668(v54, v74, _s5BoardVMa);
    v56 = sub_1013030EC(v53, v55);
    sub_100026028(v55, _s5BoardVMa);
    v57 = v53;
    v19 = v76;
    sub_100026028(v57, _s5BoardVMa);
    sub_100026028(v32, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v12 = v75;
    sub_100026028(v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (v56)
    {
      goto LABEL_37;
    }

LABEL_6:
    v38 = (v38 + 1) & v82;
    if (((*(v84 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v43 = v79;
  sub_10000C83C(v21, v79, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100026028(v32, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v39 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
LABEL_4:
    sub_100026028(v43, v39);
LABEL_5:
    sub_10000CAAC(v21, &qword_101A000E0);
    goto LABEL_6;
  }

  v44 = v77;
  sub_100025668(v43, v77, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v45 = v78;
  sub_100025668(&v21[v41], v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v46 = *(v72 + 48);
  sub_10000C83C(v44, v12, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_10000C83C(v45, &v12[v46], type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v47 = sub_1005B981C(&qword_1019F3480);
  v48 = *(*(v47 - 8) + 48);
  v49 = v48(v12, 5, v47);
  if (v49 > 2)
  {
    if (v49 == 3)
    {
      sub_100026028(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v12 = v75;
      sub_100026028(v77, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_100026028(v32, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v50 = v48(&v12[v46], 5, v47) == 3;
    }

    else if (v49 == 4)
    {
      sub_100026028(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_100026028(v77, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_100026028(v32, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v12 = v75;
      v50 = v48(&v75[v46], 5, v47) == 4;
    }

    else
    {
      sub_100026028(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_100026028(v77, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_100026028(v32, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v12 = v75;
      v50 = v48(&v75[v46], 5, v47) == 5;
    }

    goto LABEL_29;
  }

  if (v49)
  {
    if (v49 == 1)
    {
      sub_100026028(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_100026028(v77, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_100026028(v32, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v12 = v75;
      v50 = v48(&v75[v46], 5, v47) == 1;
    }

    else
    {
      sub_100026028(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_100026028(v77, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_100026028(v32, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v12 = v75;
      v50 = v48(&v75[v46], 5, v47) == 2;
    }

LABEL_29:
    a2 = v71;
    v19 = v76;
    if (v50)
    {
      goto LABEL_36;
    }

LABEL_30:
    sub_10000CAAC(v12, &qword_1019F3460);
LABEL_31:
    sub_100026028(v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
    goto LABEL_6;
  }

  sub_10000C83C(v12, v70, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  if (v48(&v12[v46], 5, v47))
  {
    sub_100026028(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_100026028(v77, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_100026028(v32, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_100026028(v70, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    a2 = v71;
    v19 = v76;
    goto LABEL_30;
  }

  v58 = v66;
  sub_100025668(&v12[v46], v66, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  v59 = v70;
  v65 = sub_100F92694(v70, v58);
  sub_100026028(v58, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  sub_100026028(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_100026028(v77, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_100026028(v32, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v12 = v75;
  sub_100026028(v59, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  a2 = v71;
  v19 = v76;
  if (!v65)
  {
    sub_100026028(v12, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    goto LABEL_31;
  }

LABEL_36:
  sub_100026028(v12, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_100026028(v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_37:
  sub_100026028(a2, type metadata accessor for CRLBoardLibraryViewModel.Item);
  sub_10000C83C(*(v85 + 48) + v40, v69, type metadata accessor for CRLBoardLibraryViewModel.Item);
  return 0;
}

uint64_t sub_100E6EC58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for CRLPreviewImages.Item(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  Hasher.init(_seed:)();
  sub_1006C83D0();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_10000C83C(*(v9 + 48) + v14 * v12, v8, type metadata accessor for CRLPreviewImages.Item);
      v15 = sub_1006CC4F0(v8, a2);
      sub_100026028(v8, type metadata accessor for CRLPreviewImages.Item);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_100026028(a2, type metadata accessor for CRLPreviewImages.Item);
    sub_10000C83C(*(v9 + 48) + v14 * v12, v19, type metadata accessor for CRLPreviewImages.Item);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000C83C(a2, v8, type metadata accessor for CRLPreviewImages.Item);
    v20 = *v3;
    sub_100E7FB60(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20;
    sub_100025668(a2, v17, type metadata accessor for CRLPreviewImages.Item);
    return 1;
  }
}

uint64_t sub_100E6EE98(uint64_t a1, Swift::Int a2, uint64_t a3, char a4, double a5)
{
  v11 = *v5;
  Hasher.init(_seed:)();
  if (a4)
  {
    v12 = dbl_1014B71A8[a2];
  }

  else
  {
    v12 = *&a2;
  }

  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  Hasher._combine(_:)(*&v12);
  if (a4)
  {
    v13 = dbl_1014B71A8[a2];
  }

  else
  {
    v13 = *&a3;
  }

  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  Hasher._combine(_:)(*&v13);
  if (a5 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = a5;
  }

  Hasher._combine(_:)(*&v14);
  v15 = Hasher._finalize()();
  v16 = -1 << *(v11 + 32);
  v17 = v15 & ~v16;
  if ((*(v11 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    while (1)
    {
      v19 = *(v11 + 48) + 32 * v17;
      if (*(v19 + 16) == 1)
      {
        v20 = dbl_1014B71A8[*v19];
        v21 = v20;
      }

      else
      {
        v20 = *v19;
        v21 = *(v19 + 8);
      }

      v22 = *&a2;
      v23 = *&a3;
      if (a4)
      {
        v22 = dbl_1014B71A8[a2];
        v23 = v22;
      }

      v24 = v20 == v22 && v21 == v23;
      if (v24 && *(v19 + 24) == a5)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v11 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    result = 0;
    a2 = *v19;
    a3 = *(v19 + 8);
    a4 = *(v19 + 16);
    a5 = *(v19 + 24);
  }

  else
  {
LABEL_29:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v5;
    sub_100E7FDA4(a2, a3, a4 & 1, v17, isUniquelyReferenced_nonNull_native, a5);
    *v5 = v28;
    result = 1;
  }

  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4 & 1;
  *(a1 + 24) = a5;
  return result;
}

uint64_t sub_100E6F088(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = type metadata accessor for CRLBoardIdentifierAndValue(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v26 = &v25 - v9;
  v27 = v2;
  v10 = *v2;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v31 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v11 = (a2 + *(v31 + 20));
  v13 = *v11;
  v12 = v11[1];
  String.hash(into:)();
  v30 = v4;
  v29 = *(a2 + *(v4 + 20));
  Hasher._combine(_:)(v29);
  v14 = Hasher._finalize()();
  v15 = -1 << *(v10 + 32);
  v16 = v14 & ~v15;
  if ((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v5 + 72);
    while (1)
    {
      sub_10000C83C(*(v10 + 48) + v18 * v16, v7, type metadata accessor for CRLBoardIdentifierAndValue);
      if (static UUID.== infix(_:_:)())
      {
        v19 = &v7[*(v31 + 20)];
        v20 = *v19 == v13 && *(v19 + 1) == v12;
        if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v29 == v7[*(v30 + 20)])
        {
          break;
        }
      }

      sub_100026028(v7, type metadata accessor for CRLBoardIdentifierAndValue);
      v16 = (v16 + 1) & v17;
      if (((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    sub_100026028(v7, type metadata accessor for CRLBoardIdentifierAndValue);
    sub_100026028(a2, type metadata accessor for CRLBoardIdentifierAndValue);
    sub_10000C83C(*(v10 + 48) + v18 * v16, v28, type metadata accessor for CRLBoardIdentifierAndValue);
    return 0;
  }

  else
  {
LABEL_12:
    v21 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v26;
    sub_10000C83C(a2, v26, type metadata accessor for CRLBoardIdentifierAndValue);
    v32 = *v21;
    sub_100E7FFD4(v23, v16, isUniquelyReferenced_nonNull_native);
    *v21 = v32;
    sub_100025668(a2, v28, type metadata accessor for CRLBoardIdentifierAndValue);
    return 1;
  }
}

uint64_t sub_100E6F3DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  Hasher.init(_seed:)();
  sub_100F8ED58();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_10000C83C(*(v9 + 48) + v14 * v12, v8, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v15 = sub_100F92694(v8, a2);
      sub_100026028(v8, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_100026028(a2, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    sub_10000C83C(*(v9 + 48) + v14 * v12, v19, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000C83C(a2, v8, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v20 = *v3;
    sub_100E802FC(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20;
    sub_100025668(a2, v17, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    return 1;
  }
}

uint64_t sub_100E6F61C(uint64_t a1, uint64_t a2)
{
  v78 = a1;
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v4 - 8);
  v75 = &v73[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v82 = sub_1005B981C(&qword_1019F3460);
  __chkstk_darwin(v82);
  v7 = &v73[-v6];
  v95 = sub_1005B981C(&qword_101A000E0);
  __chkstk_darwin(v95);
  v9 = &v73[-v8];
  v85 = _s4NodeVMa(0);
  v93 = *(v85 - 8);
  v10 = __chkstk_darwin(v85);
  v12 = &v73[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v76 = &v73[-v13];
  v14 = _s5BoardVMa(0);
  v15 = __chkstk_darwin(v14 - 8);
  v81 = &v73[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v83 = &v73[-v17];
  v18 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v19 = __chkstk_darwin(v18 - 8);
  v79 = &v73[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v19);
  v90 = &v73[-v22];
  v23 = __chkstk_darwin(v21);
  v89 = &v73[-v24];
  __chkstk_darwin(v23);
  v26 = &v73[-v25];
  v27 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v28 = __chkstk_darwin(v27);
  v30 = &v73[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = __chkstk_darwin(v28);
  v88 = &v73[-v32];
  v33 = __chkstk_darwin(v31);
  v91 = &v73[-v34];
  __chkstk_darwin(v33);
  v36 = &v73[-v35];
  v77 = v2;
  v96 = *v2;
  Hasher.init(_seed:)();
  v37 = a2;
  sub_10000C83C(a2, v36, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100025668(v36, v26, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_100F8D588();
      v39 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      v40 = v26;
    }

    else
    {
      v41 = v83;
      sub_100025668(v36, v83, _s5BoardVMa);
      type metadata accessor for UUID();
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      v39 = _s5BoardVMa;
      v40 = v41;
    }

    sub_100026028(v40, v39);
  }

  else
  {
    Hasher._combine(_:)(*v36);
  }

  v84 = *(a2 + *(v85 + 20));
  sub_100E90344(v97, v84);
  v42 = Hasher._finalize()();
  v43 = -1 << *(v96 + 32);
  v44 = v42 & ~v43;
  v94 = v96 + 56;
  if ((*(v96 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
  {
    v92 = ~v43;
    v93 = *(v93 + 72);
    v86 = v7;
    v87 = v30;
    v80 = a2;
    do
    {
      v47 = v93 * v44;
      sub_10000C83C(*(v96 + 48) + v93 * v44, v12, _s4NodeVMa);
      v48 = *(v95 + 48);
      sub_10000C83C(v12, v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000C83C(v37, &v9[v48], type metadata accessor for CRLBoardLibraryViewModel.Item);
      v49 = swift_getEnumCaseMultiPayload();
      if (v49)
      {
        if (v49 == 1)
        {
          v50 = v88;
          sub_10000C83C(v9, v88, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v45 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
            v46 = v50;
LABEL_10:
            sub_100026028(v46, v45);
LABEL_11:
            sub_10000CAAC(v9, &qword_101A000E0);
            goto LABEL_12;
          }

          v51 = v89;
          sub_100025668(v50, v89, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          v52 = &v9[v48];
          v53 = v90;
          sub_100025668(v52, v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          v54 = *(v82 + 48);
          sub_10000C83C(v51, v7, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          sub_10000C83C(v53, &v7[v54], type metadata accessor for CRLBoardLibraryViewModel.Filter);
          v55 = sub_1005B981C(&qword_1019F3480);
          v56 = *(*(v55 - 8) + 48);
          v57 = v56(v7, 5, v55);
          if (v57 > 2)
          {
            if (v57 == 3)
            {
              sub_100026028(v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              v7 = v86;
              sub_100026028(v89, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              v58 = v56(&v7[v54], 5, v55) == 3;
            }

            else if (v57 == 4)
            {
              sub_100026028(v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              sub_100026028(v89, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              v7 = v86;
              v58 = v56(&v86[v54], 5, v55) == 4;
            }

            else
            {
              sub_100026028(v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              sub_100026028(v89, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              v7 = v86;
              v58 = v56(&v86[v54], 5, v55) == 5;
            }

LABEL_35:
            v37 = v80;
            v30 = v87;
            if (!v58)
            {
              goto LABEL_41;
            }

            sub_100026028(v7, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          }

          else
          {
            if (v57)
            {
              if (v57 == 1)
              {
                sub_100026028(v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                sub_100026028(v89, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                v7 = v86;
                v58 = v56(&v86[v54], 5, v55) == 1;
              }

              else
              {
                sub_100026028(v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                sub_100026028(v89, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                v7 = v86;
                v58 = v56(&v86[v54], 5, v55) == 2;
              }

              goto LABEL_35;
            }

            sub_10000C83C(v7, v79, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            if (v56(&v7[v54], 5, v55))
            {
              sub_100026028(v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              sub_100026028(v89, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              sub_100026028(v79, type metadata accessor for CRLBoardLibraryViewModel.Folder);
              v37 = v80;
              v30 = v87;
LABEL_41:
              sub_10000CAAC(v7, &qword_1019F3460);
LABEL_42:
              sub_100026028(v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
              goto LABEL_12;
            }

            v67 = v75;
            sub_100025668(&v7[v54], v75, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            v68 = v79;
            v74 = sub_100F92694(v79, v67);
            sub_100026028(v67, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            sub_100026028(v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            sub_100026028(v89, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            v7 = v86;
            sub_100026028(v68, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            sub_100026028(v7, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            v37 = v80;
            v30 = v87;
            if (!v74)
            {
              goto LABEL_42;
            }
          }

          sub_100026028(v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
          goto LABEL_39;
        }

        sub_10000C83C(v9, v30, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          v45 = _s5BoardVMa;
          v46 = v30;
          goto LABEL_10;
        }

        v61 = v30;
        v62 = v83;
        sub_100025668(v61, v83, _s5BoardVMa);
        v63 = &v9[v48];
        v64 = v81;
        sub_100025668(v63, v81, _s5BoardVMa);
        v65 = sub_1013030EC(v62, v64);
        sub_100026028(v64, _s5BoardVMa);
        v66 = v62;
        v7 = v86;
        v30 = v87;
        sub_100026028(v66, _s5BoardVMa);
        sub_100026028(v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (!v65)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_10000C83C(v9, v91, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (swift_getEnumCaseMultiPayload())
        {
          goto LABEL_11;
        }

        v59 = *v91;
        v60 = v9[v48];
        sub_100026028(v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (v59 != v60)
        {
          goto LABEL_12;
        }
      }

LABEL_39:
      if (sub_10066F2C0(*&v12[*(v85 + 20)], v84))
      {
        sub_100026028(v12, _s4NodeVMa);
        sub_100026028(v37, _s4NodeVMa);
        sub_10000C83C(*(v96 + 48) + v47, v78, _s4NodeVMa);
        return 0;
      }

LABEL_12:
      sub_100026028(v12, _s4NodeVMa);
      v44 = (v44 + 1) & v92;
    }

    while (((*(v94 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) != 0);
  }

  v69 = v77;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = v76;
  sub_10000C83C(v37, v76, _s4NodeVMa);
  v97[0] = *v69;
  sub_100E80540(v71, v44, isUniquelyReferenced_nonNull_native);
  *v69 = v97[0];
  sub_100025668(v37, v78, _s4NodeVMa);
  return 1;
}

uint64_t sub_100E703AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = _s5BoardVMa(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  String.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_10000C83C(*(v9 + 48) + v14 * v12, v8, _s5BoardVMa);
      v15 = sub_1013030EC(v8, a2);
      sub_100026028(v8, _s5BoardVMa);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_100026028(a2, _s5BoardVMa);
    sub_10000C83C(*(v9 + 48) + v14 * v12, v19, _s5BoardVMa);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000C83C(a2, v8, _s5BoardVMa);
    v20 = *v3;
    sub_100E81298(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20;
    sub_100025668(a2, v17, _s5BoardVMa);
    return 1;
  }
}

uint64_t sub_100E70650(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  Hasher.init(_seed:)();
  v7 = a2 & 1;
  Hasher._combine(_:)(v7);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v6 + 48);
      if (*(v12 + v10) == v7)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v7) = *(v12 + v10);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_100E81578(v7, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_100E70750(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = type metadata accessor for CRLFolderIdentifier(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v26 = &v25 - v9;
  v27 = v2;
  v10 = *v2;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v29 = type metadata accessor for CRLFolderIdentifierStorage(0);
  v11 = (a2 + *(v29 + 20));
  v12 = *v11;
  v13 = v11[1];
  String.hash(into:)();
  v14 = Hasher._finalize()();
  v15 = -1 << *(v10 + 32);
  v16 = v14 & ~v15;
  if ((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v5 + 72);
    while (1)
    {
      sub_10000C83C(*(v10 + 48) + v18 * v16, v8, type metadata accessor for CRLFolderIdentifier);
      if (static UUID.== infix(_:_:)())
      {
        v19 = &v8[*(v29 + 20)];
        v20 = *v19 == v12 && *(v19 + 1) == v13;
        if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      sub_100026028(v8, type metadata accessor for CRLFolderIdentifier);
      v16 = (v16 + 1) & v17;
      if (((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    sub_100026028(v8, type metadata accessor for CRLFolderIdentifier);
    sub_100026028(a2, type metadata accessor for CRLFolderIdentifier);
    sub_10000C83C(*(v10 + 48) + v18 * v16, v28, type metadata accessor for CRLFolderIdentifier);
    return 0;
  }

  else
  {
LABEL_11:
    v22 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v26;
    sub_10000C83C(a2, v26, type metadata accessor for CRLFolderIdentifier);
    v30 = *v22;
    sub_100E816CC(v24, v16, isUniquelyReferenced_nonNull_native);
    *v22 = v30;
    sub_100025668(a2, v28, type metadata accessor for CRLFolderIdentifier);
    return 1;
  }
}

uint64_t sub_100E70A6C(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v4 = type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v25 = &v25 - v9;
  v26 = v2;
  v10 = *v2;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v30 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v11 = (a2 + *(v30 + 20));
  v12 = *v11;
  v13 = v11[1];
  String.hash(into:)();
  v29 = *(v4 + 20);
  dispatch thunk of Hashable.hash(into:)();
  v31 = v4;
  v28 = *(v4 + 24);
  dispatch thunk of Hashable.hash(into:)();
  v14 = Hasher._finalize()();
  v15 = -1 << *(v10 + 32);
  v16 = v14 & ~v15;
  if ((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v5 + 72);
    while (1)
    {
      sub_10000C83C(*(v10 + 48) + v18 * v16, v7, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
      if (static UUID.== infix(_:_:)())
      {
        v19 = &v7[*(v30 + 20)];
        v20 = *v19 == v12 && *(v19 + 1) == v13;
        if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static UUID.== infix(_:_:)() & 1) != 0 && (static UUID.== infix(_:_:)())
        {
          break;
        }
      }

      sub_100026028(v7, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
      v16 = (v16 + 1) & v17;
      if (((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    sub_100026028(v7, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
    sub_100026028(a2, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
    sub_10000C83C(*(v10 + 48) + v18 * v16, v27, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
    return 0;
  }

  else
  {
LABEL_13:
    v22 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v25;
    sub_10000C83C(a2, v25, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
    v32 = *v22;
    sub_100E819C8(v24, v16, isUniquelyReferenced_nonNull_native);
    *v22 = v32;
    sub_100025668(a2, v27, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
    return 1;
  }
}

uint64_t sub_100E70E80(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v4 = _s17CategoryViewModelVMa();
  v5 = *(v4 - 1);
  v6 = __chkstk_darwin(v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v42 = &v42 - v9;
  v43 = v2;
  v10 = *v2;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v11 = (a2 + v4[5]);
  v12 = *v11;
  v46 = v11[1];
  String.hash(into:)();
  v13 = (a2 + v4[6]);
  v14 = *v13;
  v15 = v13[1];
  if (v15)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v16 = (a2 + v4[7]);
  v17 = *v16;
  v48 = v16[1];
  v49 = v17;
  String.hash(into:)();
  v45 = *(a2 + v4[8]);
  Hasher._combine(_:)(v45);
  v18 = Hasher._finalize()();
  v19 = -1 << *(v10 + 32);
  v20 = v18 & ~v19;
  v51 = v10 + 56;
  if ((*(v10 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v50 = v15;
    v47 = v14;
    v21 = v5;
    v22 = ~v19;
    v23 = *(v21 + 72);
    v24 = v46;
    while (1)
    {
      sub_10000C83C(*(v10 + 48) + v23 * v20, v8, _s17CategoryViewModelVMa);
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      v25 = &v8[v4[5]];
      v26 = *v25 == v12 && *(v25 + 1) == v24;
      if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v27 = &v8[v4[6]];
      v28 = *(v27 + 1);
      if (v28)
      {
        if (!v50)
        {
          break;
        }

        v29 = *v27 == v47 && v28 == v50;
        if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }
      }

      else if (v50)
      {
        break;
      }

      v30 = &v8[v4[7]];
      v31 = *v30 == v49 && *(v30 + 1) == v48;
      if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v32 = v4[8];
      v33 = v4;
      v34 = v10;
      v35 = a2;
      v36 = v12;
      v37 = *&v8[v32];
      sub_100026028(v8, _s17CategoryViewModelVMa);
      v26 = v37 == v45;
      v12 = v36;
      a2 = v35;
      v10 = v34;
      v4 = v33;
      v24 = v46;
      if (v26)
      {
        sub_100026028(a2, _s17CategoryViewModelVMa);
        sub_10000C83C(*(v10 + 48) + v23 * v20, v44, _s17CategoryViewModelVMa);
        return 0;
      }

LABEL_8:
      v20 = (v20 + 1) & v22;
      if (((*(v51 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    sub_100026028(v8, _s17CategoryViewModelVMa);
    goto LABEL_8;
  }

LABEL_30:
  v39 = v43;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = v42;
  sub_10000C83C(a2, v42, _s17CategoryViewModelVMa);
  v52 = *v39;
  sub_100E81D38(v41, v20, isUniquelyReferenced_nonNull_native);
  *v39 = v52;
  sub_100025668(a2, v44, _s17CategoryViewModelVMa);
  return 1;
}

uint64_t sub_100E712C8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for CalculateExpression();
      swift_dynamicCast();
      result = 0;
      *a1 = v18;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_100E73348(v7, result + 1);
    if (*(v16 + 24) <= *(v16 + 16))
    {
      sub_100E7909C();
    }

    sub_100E7B27C(v17, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  type metadata accessor for CalculateExpression();
  sub_1000066D0(&qword_1019F37A0, &type metadata accessor for CalculateExpression);
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;

    sub_100E82154(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v19;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_1000066D0(&qword_1019F37A8, &type metadata accessor for CalculateExpression);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_100E715B0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000066D0(&unk_101A22910, &type metadata accessor for UTType);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1000066D0(&qword_101A07820, &type metadata accessor for UTType);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100E8234C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100E71890(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  Hasher.init(_seed:)();
  sub_1007F0E00(v20);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_10000C83C(*(v9 + 48) + v14 * v12, v8, type metadata accessor for CRLSELibraryViewModel.Item);
      v15 = sub_1007F5338(v8, a2);
      sub_100026028(v8, type metadata accessor for CRLSELibraryViewModel.Item);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_100026028(a2, type metadata accessor for CRLSELibraryViewModel.Item);
    sub_10000C83C(*(v9 + 48) + v14 * v12, v19, type metadata accessor for CRLSELibraryViewModel.Item);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000C83C(a2, v8, type metadata accessor for CRLSELibraryViewModel.Item);
    v20[0] = *v3;
    sub_100E82614(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20[0];
    sub_100025668(a2, v17, type metadata accessor for CRLSELibraryViewModel.Item);
    return 1;
  }
}

uint64_t sub_100E71AD0(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  v34 = v3;
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      if (a2)
      {
        if (a2 == 1)
        {
          v9 = 4;
        }

        else
        {
          v9 = 5;
        }
      }

      else
      {
        v9 = 3;
      }

      Hasher._combine(_:)(v9);
      goto LABEL_12;
    }

    v8 = 2;
  }

  else
  {
    v8 = a3 != 0;
  }

  Hasher._combine(_:)(v8);
  NSObject.hash(into:)();
LABEL_12:
  v10 = Hasher._finalize()();
  v11 = -1 << *(v7 + 32);
  v12 = v10 & ~v11;
  if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_41:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *v34;
    sub_10089D774(a2, a3);
    sub_100E82858(a2, a3, v12, isUniquelyReferenced_nonNull_native);
    *v34 = v35;
    *a1 = a2;
    *(a1 + 8) = a3;
    return 1;
  }

  v13 = ~v11;
  v14 = a3 == 3;
  v15 = a2 == 2 && a3 == 3;
  v16 = a2 == 1 && a3 == 3;
  v32 = v16;
  v33 = v15;
  if (a2)
  {
    v14 = 0;
  }

  v31 = v14;
  while (1)
  {
    v17 = *(v7 + 48) + 16 * v12;
    v18 = *v17;
    v19 = *(v17 + 8);
    if (v19 <= 1)
    {
      break;
    }

    if (v19 == 2)
    {
      if (a3 != 2)
      {
        goto LABEL_23;
      }

      sub_100006370(0, &qword_1019F54D0);
      v24 = v18;
      v21 = static NSObject.== infix(_:_:)();
      v22 = v18;
      v23 = 2;
      goto LABEL_22;
    }

    if (v18)
    {
      if (v18 == 1)
      {
        if (v32)
        {
          goto LABEL_43;
        }
      }

      else if (v33)
      {
        goto LABEL_43;
      }
    }

    else if (v31)
    {
      goto LABEL_43;
    }

LABEL_23:
    v12 = (v12 + 1) & v13;
    if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  if (*(v17 + 8))
  {
    if (a3 != 1)
    {
      goto LABEL_23;
    }

    sub_100006370(0, &qword_1019F54D0);
    v25 = v18;
    v21 = static NSObject.== infix(_:_:)();
    v22 = v18;
    v23 = 1;
  }

  else
  {
    if (a3)
    {
      goto LABEL_23;
    }

    sub_100006370(0, &qword_1019F54D0);
    v20 = v18;
    v21 = static NSObject.== infix(_:_:)();
    v22 = v18;
    v23 = 0;
  }

LABEL_22:
  sub_1007A98C8(v22, v23);
  if ((v21 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_1007A98C8(a2, v19);
LABEL_43:
  v28 = *(v7 + 48) + 16 * v12;
  v29 = *v28;
  *a1 = *v28;
  v30 = *(v28 + 8);
  *(a1 + 8) = v30;
  sub_10089D774(v29, v30);
  return 0;
}

uint64_t sub_100E71DC8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    v36 = v2;
    Hasher.init(_seed:)();
    sub_100BD3B78(v38, *(a2 + 16));
    v10 = a2 + OBJC_IVAR____TtCC8Freeform17CRLStencilLibrary8ItemData_metadata;
    sub_100D6FEA0(v38);
    v11 = Hasher._finalize()();
    v12 = -1 << *(v6 + 32);
    v13 = v11 & ~v12;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
LABEL_34:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v38[0] = *v36;

      sub_100E82B5C(v33, v13, isUniquelyReferenced_nonNull_native);
      *v36 = *&v38[0];
      *a1 = a2;
      return 1;
    }

    v14 = ~v12;
    while (1)
    {
      v15 = *(*(v6 + 48) + 8 * v13);
      v16 = *(v15 + 16);
      v17 = *(a2 + 16);

      if ((sub_100BC5454(v16, v17) & 1) == 0)
      {
        break;
      }

      v18 = v15 + OBJC_IVAR____TtCC8Freeform17CRLStencilLibrary8ItemData_metadata;
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      v19 = _s13ItemViewModelVMa();
      v20 = v19[8];
      v21 = *(v18 + v20);
      v22 = *(v18 + v20 + 8);
      v23 = (v10 + v20);
      v24 = v21 == *v23 && v22 == v23[1];
      if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v25 = v19[9];
      v26 = (v18 + v25);
      v27 = *(v18 + v25 + 8);
      v28 = (v10 + v25);
      v29 = v28[1];
      if (v27)
      {
        if (!v29)
        {
          break;
        }

        v30 = *v26 == *v28 && v27 == v29;
        if (!v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }
      }

      else if (v29)
      {
        break;
      }

      if ((sub_100BC569C(*(v18 + v19[11]), *(v10 + v19[11])) & 1) == 0)
      {
        break;
      }

      type metadata accessor for CGImage(0);
      sub_1000066D0(&unk_101A1F1A0, type metadata accessor for CGImage);
      if ((static _CFObject.== infix(_:_:)() & 1) == 0 || *(v18 + v19[12]) != *(v10 + v19[12]) || *(v18 + v19[13]) != *(v10 + v19[13]) || (static Date.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      v31 = static Date.== infix(_:_:)();

      if (v31)
      {

        *a1 = *(*(v6 + 48) + 8 * v13);

        return 0;
      }

LABEL_33:
      v13 = (v13 + 1) & v14;
      if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_33;
  }

  if (v6 < 0)
  {
    v7 = *v2;
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v8 = __CocoaSet.member(for:)();

  if (v8)
  {

    v39 = v8;
    _s8ItemDataCMa();
    swift_dynamicCast();
    result = 0;
    *a1 = *&v38[0];
    return result;
  }

  result = __CocoaSet.count.getter();
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v34 = sub_100E737C4(v7, result + 1);
  *&v38[0] = v34;
  if (v34[3] <= v34[2])
  {
    sub_100E79C50();
    v34 = *&v38[0];
  }

  sub_100E7B408(v35, v34);

  *v3 = v34;
  *a1 = a2;
  return 1;
}

uint64_t sub_100E7219C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:_:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_100E82E7C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100E7227C(void *a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = v6;
  v13 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v13 < 0)
    {
      v14 = *v6;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = a2;

    v16 = __CocoaSet.member(for:)();

    if (v16)
    {

      sub_100006370(0, a3);
      swift_dynamicCast();
      result = 0;
      *a1 = v34;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v26 = sub_100E72F28(v14, result + 1, a5, a6, a3);
        v27 = v26[2];
        if (v26[3] <= v27)
        {
          sub_100E7AA8C(v27 + 1, a5);
        }

        v28 = v15;
        sub_100E7B4C4(v28, v26);

        *v10 = v26;
        *a1 = v28;
        return 1;
      }
    }
  }

  else
  {
    sub_100006370(0, a3);
    v18 = NSObject._rawHashValue(seed:)(*(v13 + 40));
    v19 = -1 << *(v13 + 32);
    v20 = v18 & ~v19;
    if ((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v21 = ~v19;
      while (1)
      {
        v22 = *(*(v13 + 48) + 8 * v20);
        v23 = static NSObject.== infix(_:_:)();

        if (v23)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v29 = *(*(v13 + 48) + 8 * v20);
      *a1 = v29;
      v30 = v29;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *v10;
      v25 = a2;
      sub_100E7D960(v25, v20, isUniquelyReferenced_nonNull_native, a5, a6, a3);
      *v10 = v35;
      *a1 = v25;
      return 1;
    }
  }

  return result;
}

uint64_t sub_100E724F0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000066D0(&unk_101A23C60, &type metadata accessor for IndexPath);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1000066D0(&unk_101A226D0, &type metadata accessor for IndexPath);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100E82F9C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100E7280C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = AnyHashable._rawHashValue(seed:)(*(*v2 + 40));
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_100064110(*(v6 + 48) + 40 * v9, v16);
      v11 = static AnyHashable.== infix(_:_:)();
      sub_100064234(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_100064234(a2);
    sub_100064110(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100064110(a2, v16);
    v15 = *v3;
    sub_100E83264(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_100E72958(void *a1, void *a2, void (*a3)(void), uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = __CocoaSet.member(for:)();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v35;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_100E73150(v15, result + 1, a4, a5, a6);
        v28 = v27[2];
        if (v27[3] <= v28)
        {
          sub_100E7AA8C(v28 + 1, a4);
        }

        v29 = v16;
        sub_100E7B4C4(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = NSObject._rawHashValue(seed:)(*(v14 + 40));
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *v11;
      v26 = a2;
      sub_100E7ED9C(v26, v21, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v36;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

Swift::Int sub_100E72BE0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_1005B981C(&qword_101A21D90);
    v7 = static _SetStorage.convert(_:capacity:)();
    v26 = v7;
    __CocoaSet.makeIterator()();
    v8 = __CocoaSet.Iterator.next()();
    if (v8)
    {
      v9 = v8;
      type metadata accessor for CRLTransactableHashableWrapper();
      v10 = v9;
      v11 = (v4 + 8);
      do
      {
        v25[1] = v10;
        swift_dynamicCast();
        if (*(v7 + 24) <= *(v7 + 16))
        {
          sub_100E7400C();
        }

        v12 = v25[10];
        v7 = v26;
        Hasher.init(_seed:)();
        v13 = *(v12 + 24);
        ObjectType = swift_getObjectType();
        (*(v13 + 32))(ObjectType, v13);
        sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        (*v11)(v6, v3);
        result = Hasher._finalize()();
        v16 = v7 + 56;
        v17 = -1 << *(v7 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v7 + 56 + 8 * (v18 >> 6))) != 0)
        {
          v20 = __clz(__rbit64((-1 << v18) & ~*(v7 + 56 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v21 = 0;
          v22 = (63 - v17) >> 6;
          do
          {
            if (++v19 == v22 && (v21 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v23 = v19 == v22;
            if (v19 == v22)
            {
              v19 = 0;
            }

            v21 |= v23;
            v24 = *(v16 + 8 * v19);
          }

          while (v24 == -1);
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
        }

        *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v7 + 48) + 8 * v20) = v12;
        ++*(v7 + 16);
        v10 = __CocoaSet.Iterator.next()();
      }

      while (v10);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptySetSingleton;
  }

  return v7;
}

Swift::Int sub_100E72F28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (a2)
  {
    sub_1005B981C(a3);
    v7 = static _SetStorage.convert(_:capacity:)();
    v20 = v7;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100006370(0, a5);
      do
      {
        swift_dynamicCast();
        v14 = *(v7 + 16);
        if (*(v7 + 24) <= v14)
        {
          sub_100E7AA8C(v14 + 1, a3);
        }

        v7 = v20;
        result = NSObject._rawHashValue(seed:)(*(v20 + 40));
        v9 = v20 + 56;
        v10 = -1 << *(v20 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v20 + 48) + 8 * v13) = v19;
        ++*(v20 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v7;
}

Swift::Int sub_100E73150(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    sub_1005B981C(a3);
    v7 = static _SetStorage.convert(_:capacity:)();
    v20 = v7;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v14 = *(v7 + 16);
        if (*(v7 + 24) <= v14)
        {
          sub_100E7AA8C(v14 + 1, a3);
        }

        v7 = v20;
        result = NSObject._rawHashValue(seed:)(*(v20 + 40));
        v9 = v20 + 56;
        v10 = -1 << *(v20 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v20 + 48) + 8 * v13) = v19;
        ++*(v20 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptySetSingleton;
  }

  return v7;
}

uint64_t sub_100E73348(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1005B981C(&qword_1019F3798);
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for CalculateExpression();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_100E7909C();
        }

        v2 = v14;
        sub_1000066D0(&qword_1019F37A0, &type metadata accessor for CalculateExpression);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100E7357C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1005B981C(&qword_101A21FA0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for CRLCloudAccountChangeObserverWrapper();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_10002DA5C();
        }

        v2 = v14;
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v13);
        result = Hasher._finalize()();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptySetSingleton;
  }

  return v2;
}

void *sub_100E737C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1005B981C(&qword_101A21FC0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v11 = v2;
    __CocoaSet.makeIterator()();
    v3 = __CocoaSet.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      _s8ItemDataCMa();
      v5 = v4;
      do
      {
        *&v9[0] = v5;
        swift_dynamicCast();
        if (v2[3] <= v2[2])
        {
          sub_100E79C50();
        }

        v6 = v10;
        v2 = v11;
        Hasher.init(_seed:)();
        sub_100BD3B78(v9, *(v6 + 16));
        sub_100D6FEA0(v9);
        Hasher._finalize()();
        v7 = _HashTable.nextHole(atOrAfter:)();
        *(v2 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << v7;
        *(v2[6] + 8 * v7) = v6;
        ++v2[2];
        v5 = __CocoaSet.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_100E73990()
{
  v1 = v0;
  v2 = _s6CellIDVMa(0);
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1005B981C(&qword_101A21DB0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v28 = v0;
    v8 = 0;
    v9 = (v5 + 56);
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
      v19 = *(v29 + 72);
      sub_100025668(*(v5 + 48) + v19 * (v16 | (v8 << 6)), v4, _s6CellIDVMa);
      Hasher.init(_seed:)();
      UUID.hash(into:)();
      UUID.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v7 + 32);
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_100025668(v4, *(v7 + 48) + v15 * v19, _s6CellIDVMa);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v1 = v28;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_100E73CB0()
{
  v1 = v0;
  v35 = type metadata accessor for UUID();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1005B981C(&qword_1019F37B8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
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
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_100E7400C()
{
  v1 = v0;
  v35 = type metadata accessor for UUID();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1005B981C(&qword_101A21D90);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v0;
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 56);
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
    v34 = (v2 + 8);
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      Hasher.init(_seed:)();
      v20 = *(v19 + 24);
      ObjectType = swift_getObjectType();
      (*(v20 + 32))(ObjectType, v20);
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
      v22 = v35;
      dispatch thunk of Hashable.hash(into:)();
      (*v34)(v4, v22);
      result = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
      v5 = v33;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v5 + 32);
    if (v30 >= 64)
    {
      bzero(v9, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    v1 = v32;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_100E7436C()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_101A21D18);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
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
      v17 = *(v2 + 48) + 16 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      Hasher.init(_seed:)();
      if (v19 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(v18);
      }

      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 16 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100E745F0()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_101A21D40);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v20 = *(v2 + 48) + 112 * (v17 | (v5 << 6));
      v21 = *(v20 + 48);
      v47 = *(v20 + 32);
      v48 = v21;
      v22 = *(v20 + 80);
      v49 = *(v20 + 64);
      v50 = v22;
      v23 = *(v20 + 16);
      v45 = *v20;
      v46 = v23;
      v24 = *(v20 + 96);
      v25 = *(v20 + 104);
      Hasher.init(_seed:)();
      if (v24)
      {
        v36 = v47;
        v37 = v48;
        v38 = v49;
        v39 = v50;
        v34 = v45;
        v35 = v46;
        *&v40 = v24;
        *(&v40 + 1) = v25;
        Hasher._combine(_:)(1u);
        v41[2] = v47;
        v41[3] = v48;
        v41[4] = v49;
        v41[5] = v50;
        v41[0] = v45;
        v41[1] = v46;
        v42 = v24;
        v43 = v25;
        sub_1007A971C(v41, v44);
        sub_1007A9778();
        dispatch thunk of Hashable.hash(into:)();
        v44[4] = v38;
        v44[5] = v39;
        v44[6] = v40;
        v44[0] = v34;
        v44[1] = v35;
        v44[2] = v36;
        v44[3] = v37;
        sub_1007A97CC(v44);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v26 = -1 << *(v4 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v11 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v11 + 8 * v28);
          if (v32 != -1)
          {
            v12 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v27) & ~*(v11 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 112 * v12;
      v14 = v48;
      *(v13 + 32) = v47;
      *(v13 + 48) = v14;
      v15 = v50;
      *(v13 + 64) = v49;
      *(v13 + 80) = v15;
      v16 = v46;
      *v13 = v45;
      *(v13 + 16) = v16;
      *(v13 + 96) = v24;
      *(v13 + 104) = v25;
      ++*(v4 + 16);
    }

    v18 = v5;
    while (1)
    {
      v5 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v5 >= v10)
      {
        break;
      }

      v19 = v6[v5];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v33 = 1 << *(v2 + 32);
    if (v33 >= 64)
    {
      bzero((v2 + 56), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v33;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100E74920(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v6 = *v4;
  sub_1005B981C(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = *(v6 + 48) + 16 * (v18 | (v9 << 6));
      v22 = *v21;
      v23 = *(v21 + 8);
      Hasher.init(_seed:)();
      if (v23 == 255)
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
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 16 * v16;
      *v17 = v22;
      *(v17 + 8) = v23;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
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
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v6 + 32);
    if (v31 >= 64)
    {
      bzero((v6 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    v5 = v4;
    *(v6 + 16) = 0;
  }

  *v5 = v8;
  return result;
}

uint64_t sub_100E74BB8()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_101A21D68);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
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
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      if (v16 == 2)
      {
        v17 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v17 = v16 & 1;
      }

      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100E74E24()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_101A21D70);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
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
      v17 = *(v2 + 48) + 8 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 4);
      Hasher.init(_seed:)();
      if (v19 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        if ((v18 & 0x7FFFFFFF) != 0)
        {
          v20 = v18;
        }

        else
        {
          v20 = 0;
        }

        Hasher._combine(_:)(v20);
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

LABEL_36:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 8 * v12;
      *v13 = v18;
      *(v13 + 4) = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      bzero((v2 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v28;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100E750AC()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_101A21D78);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v29 = v2;
    v5 = 0;
    v6 = (v2 + 56);
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
      v19 = *v17;
      v18 = *(v17 + 8);
      v20 = *(v17 + 16);
      Hasher.init(_seed:)();
      if (v20 == 255)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
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

LABEL_33:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 24 * v12;
      *v13 = v19;
      *(v13 + 8) = v18;
      *(v13 + 16) = v20;
      ++*(v4 + 16);
      v2 = v29;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      bzero(v6, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v28;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100E75388()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_1019F3488);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
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
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100E755E8()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_101A21E68);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
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
      v17 = (*(v2 + 48) + 48 * (v14 | (v5 << 6)));
      v26 = *v17;
      v27 = v17[1];
      *v28 = v17[2];
      Hasher.init(_seed:)();
      AnyHashable.hash(into:)();
      Hasher._combine(_:)(v28[1]);
      result = Hasher._finalize()();
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 48 * v12);
      *v13 = v26;
      v13[1] = v27;
      v13[2] = *v28;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100E75868()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_101A21EA0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
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
      v17 = *(v2 + 48) + 56 * (v14 | (v5 << 6));
      v26 = *v17;
      v27 = *(v17 + 16);
      v28 = *(v17 + 32);
      v29 = *(v17 + 48);
      Hasher.init(_seed:)();
      sub_100068D24();
      result = Hasher._finalize()();
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 56 * v12;
      *v13 = v26;
      *(v13 + 16) = v27;
      *(v13 + 32) = v28;
      *(v13 + 48) = v29;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100E75AEC()
{
  v110 = type metadata accessor for AnyCRValue();
  v1 = *(v110 - 8);
  __chkstk_darwin(v110);
  v109 = &v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005B981C(&qword_101A04C30);
  __chkstk_darwin(v3 - 8);
  v5 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (&v80 - v7);
  v90 = type metadata accessor for URL();
  v9 = *(v90 - 8);
  __chkstk_darwin(v90);
  v83 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v80 - v12;
  v14 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v94 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1005B981C(&unk_101A096C0);
  v98 = *(v17 - 8);
  __chkstk_darwin(v17 - 8);
  v93 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v92 = &v80 - v20;
  v89 = v0;
  v21 = *v0;
  sub_1005B981C(&qword_101A22008);
  v22 = static _SetStorage.resize(original:capacity:move:)();
  if (*(v21 + 16))
  {
    v23 = 0;
    v24 = *(v21 + 56);
    v87 = (v21 + 56);
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
    v28 = (v25 + 63) >> 6;
    v97 = (v15 + 48);
    v88 = (v9 + 48);
    v82 = (v9 + 32);
    v81 = (v9 + 8);
    v102 = v1 + 16;
    v108 = (v1 + 32);
    v106 = (v1 + 8);
    v96 = v22 + 56;
    v104 = v1;
    v103 = v5;
    v107 = v8;
    v29 = v94;
    v91 = v21;
    v30 = v22;
    v31 = v93;
    v32 = v92;
    v95 = v28;
    v86 = v13;
    v85 = v14;
    v84 = v22;
    while (1)
    {
      if (!v27)
      {
        v35 = v23;
        result = v87;
        while (1)
        {
          v23 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            goto LABEL_54;
          }

          if (v23 >= v28)
          {
            v78 = 1 << *(v21 + 32);
            if (v78 >= 64)
            {
              bzero(v87, ((v78 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
            }

            else
            {
              *v87 = -1 << v78;
            }

            v79 = v89;
            *(v91 + 16) = 0;

            goto LABEL_52;
          }

          v37 = v87[v23];
          ++v35;
          if (v37)
          {
            v34 = __clz(__rbit64(v37));
            v100 = (v37 - 1) & v37;
            goto LABEL_15;
          }
        }
      }

      v34 = __clz(__rbit64(v27));
      v100 = (v27 - 1) & v27;
LABEL_15:
      v101 = v23;
      v38 = *(v21 + 48);
      v99 = *(v98 + 72);
      sub_10003DFF8(v38 + v99 * (v34 | (v23 << 6)), v32, &unk_101A096C0);
      Hasher.init(_seed:)();
      sub_10000BE14(v32, v31, &unk_101A096C0);
      if ((*v97)(v31, 1, v14) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        sub_100025668(v31, v29, type metadata accessor for CRLWPHyperlinkSmartFieldData);
        Hasher._combine(_:)(1u);
        v39 = *(v29 + 8);
        *&v112 = *v29;
        BYTE8(v112) = v39;
        sub_1005B981C(&unk_101A0D940);
        CRExtensible.hash(into:)();
        sub_10000BE14(v29 + *(v14 + 20), v13, &unk_1019F33C0);
        v40 = v90;
        if ((*v88)(v13, 1, v90) == 1)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          v41 = v83;
          (*v82)(v83, v13, v40);
          Hasher._combine(_:)(1u);
          sub_1000066D0(&qword_101A00578, &type metadata accessor for URL);
          dispatch thunk of Hashable.hash(into:)();
          (*v81)(v41, v40);
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
        v105 = *(v29 + *(v14 + 28));

        v50 = 0;
        v111 = 0;
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
          v54 = v107;
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
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        while (1)
        {
          v51 = v50;
LABEL_32:
          v55 = __clz(__rbit64(v48));
          v48 &= v48 - 1;
          v56 = v55 | (v51 << 6);
          v57 = *(*(v105 + 48) + 8 * v56);
          v58 = v104;
          v59 = v109;
          v60 = v110;
          (*(v104 + 16))(v109, *(v105 + 56) + *(v104 + 72) * v56, v110);
          v61 = sub_1005B981C(&qword_101A04C38);
          v62 = *(v61 + 48);
          v63 = v103;
          *v103 = v57;
          v64 = v59;
          v5 = v63;
          (*(v58 + 32))(&v63[v62], v64, v60);
          (*(*(v61 - 8) + 56))(v5, 0, 1, v61);
          v53 = v51;
          v54 = v107;
LABEL_33:
          sub_10003DFF8(v5, v54, &qword_101A04C30);
          v65 = sub_1005B981C(&qword_101A04C38);
          if ((*(*(v65 - 8) + 48))(v54, 1, v65) == 1)
          {
            break;
          }

          v66 = *v54;
          v67 = v54 + *(v65 + 48);
          v68 = v109;
          v69 = v110;
          (*v108)(v109, v67, v110);
          v114 = v119;
          v115 = v120;
          v116 = v121;
          v112 = v117;
          v113 = v118;
          Hasher._combine(_:)(v66);
          sub_1000066D0(&qword_101A04C40, &type metadata accessor for AnyCRValue);
          dispatch thunk of Hashable.hash(into:)();
          (*v106)(v68, v69);
          result = Hasher._finalize()();
          v50 = v53;
          v111 ^= result;
          if (!v48)
          {
            goto LABEL_25;
          }
        }

        Hasher._combine(_:)(v111);
        v29 = v94;
        sub_100026028(v94, type metadata accessor for CRLWPHyperlinkSmartFieldData);
        v13 = v86;
        v14 = v85;
        v21 = v91;
        v30 = v84;
        v31 = v93;
        v32 = v92;
      }

      result = Hasher._finalize()();
      v71 = -1 << *(v30 + 32);
      v72 = result & ~v71;
      v73 = v72 >> 6;
      if (((-1 << v72) & ~*(v96 + 8 * (v72 >> 6))) == 0)
      {
        break;
      }

      v33 = __clz(__rbit64((-1 << v72) & ~*(v96 + 8 * (v72 >> 6)))) | v72 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v96 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      sub_10003DFF8(v32, *(v30 + 48) + v33 * v99, &unk_101A096C0);
      ++*(v30 + 16);
      v23 = v101;
      v28 = v95;
      v27 = v100;
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
      v77 = *(v96 + 8 * v73);
      if (v77 != -1)
      {
        v33 = __clz(__rbit64(~v77)) + (v73 << 6);
        goto LABEL_7;
      }
    }

LABEL_55:
    __break(1u);
  }

  else
  {
    v30 = v22;

    v79 = v89;
LABEL_52:
    *v79 = v30;
  }

  return result;
}

uint64_t sub_100E7671C()
{
  v1 = v0;
  v2 = _s5BoardVMa(0);
  __chkstk_darwin(v2 - 8);
  v54 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v8 = __chkstk_darwin(v7 - 8);
  v55 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v51 - v10;
  v12 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v57 = *(v12 - 8);
  v58 = v12;
  v13 = __chkstk_darwin(v12);
  v59 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = *v0;
  sub_1005B981C(&qword_101A21EA8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v19 = v17;
  v20 = result;
  if (*(v17 + 16))
  {
    v51 = v6;
    v52 = v1;
    v21 = 0;
    v22 = (v19 + 56);
    v23 = 1 << *(v19 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(v19 + 56);
    v26 = (v23 + 63) >> 6;
    v27 = result + 56;
    v53 = v11;
    v56 = v19;
    while (1)
    {
      if (!v25)
      {
        v30 = v21;
        while (1)
        {
          v21 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            __break(1u);
            goto LABEL_46;
          }

          if (v21 >= v26)
          {
            break;
          }

          v31 = v22[v21];
          ++v30;
          if (v31)
          {
            v29 = __clz(__rbit64(v31));
            v25 = (v31 - 1) & v31;
            goto LABEL_15;
          }
        }

        v50 = 1 << *(v19 + 32);
        if (v50 >= 64)
        {
          bzero(v22, ((v50 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v22 = -1 << v50;
        }

        v1 = v52;
        *(v19 + 16) = 0;
        goto LABEL_44;
      }

      v29 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_15:
      v32 = *(v57 + 72);
      sub_100025668(*(v19 + 48) + v32 * (v29 | (v21 << 6)), v16, type metadata accessor for CRLBoardLibraryViewModel.Item);
      Hasher.init(_seed:)();
      sub_10000C83C(v16, v59, type metadata accessor for CRLBoardLibraryViewModel.Item);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        Hasher._combine(_:)(*v59);
        goto LABEL_31;
      }

      if (EnumCaseMultiPayload == 1)
      {
        break;
      }

      v38 = v54;
      sub_100025668(v59, v54, _s5BoardVMa);
      type metadata accessor for UUID();
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      v39 = _s5BoardVMa;
      v40 = v38;
      v11 = v53;
LABEL_30:
      sub_100026028(v40, v39);
LABEL_31:
      result = Hasher._finalize()();
      v43 = -1 << *(v20 + 32);
      v44 = result & ~v43;
      v45 = v44 >> 6;
      if (((-1 << v44) & ~*(v27 + 8 * (v44 >> 6))) == 0)
      {
        v46 = 0;
        v47 = (63 - v43) >> 6;
        v19 = v56;
        while (++v45 != v47 || (v46 & 1) == 0)
        {
          v48 = v45 == v47;
          if (v45 == v47)
          {
            v45 = 0;
          }

          v46 |= v48;
          v49 = *(v27 + 8 * v45);
          if (v49 != -1)
          {
            v28 = __clz(__rbit64(~v49)) + (v45 << 6);
            goto LABEL_7;
          }
        }

LABEL_46:
        __break(1u);
        return result;
      }

      v28 = __clz(__rbit64((-1 << v44) & ~*(v27 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
      v19 = v56;
LABEL_7:
      *(v27 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      result = sub_100025668(v16, *(v20 + 48) + v28 * v32, type metadata accessor for CRLBoardLibraryViewModel.Item);
      ++*(v20 + 16);
    }

    sub_100025668(v59, v11, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v34 = v55;
    sub_10000C83C(v11, v55, type metadata accessor for CRLBoardLibraryViewModel.Filter);
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
    }

    else
    {
      if (!v36)
      {
        v41 = v51;
        sub_100025668(v55, v51, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        Hasher._combine(_:)(5uLL);
        sub_100F8ED58();
        v42 = v41;
        v11 = v53;
        sub_100026028(v42, type metadata accessor for CRLBoardLibraryViewModel.Folder);
LABEL_29:
        v39 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
        v40 = v11;
        goto LABEL_30;
      }

      v37 = v36 != 1;
    }

    Hasher._combine(_:)(v37);
    goto LABEL_29;
  }

LABEL_44:

  *v1 = v20;
  return result;
}

uint64_t sub_100E76DA4()
{
  v1 = v0;
  v72 = type metadata accessor for UUID();
  v2 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v71 = &v62 - v14;
  v70 = type metadata accessor for CRLPreviewImages.Item(0);
  v73 = *(v70 - 8);
  v15 = __chkstk_darwin(v70);
  v77 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v76 = &v62 - v17;
  v18 = *v0;
  sub_1005B981C(&unk_1019F3470);
  result = static _SetStorage.resize(original:capacity:move:)();
  v20 = result;
  if (*(v18 + 16))
  {
    v63 = v9;
    v64 = v1;
    v21 = 0;
    v22 = (v18 + 56);
    v23 = 1 << *(v18 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(v18 + 56);
    v26 = (v23 + 63) >> 6;
    v66 = (v2 + 32);
    v65 = (v2 + 8);
    v27 = result + 56;
    v28 = v18;
    v29 = result;
    v67 = v13;
    v68 = result;
    while (1)
    {
      if (!v25)
      {
        v32 = v21;
        while (1)
        {
          v21 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            __break(1u);
            goto LABEL_47;
          }

          if (v21 >= v26)
          {
            break;
          }

          v33 = v22[v21];
          ++v32;
          if (v33)
          {
            v31 = __clz(__rbit64(v33));
            v75 = (v33 - 1) & v33;
            goto LABEL_15;
          }
        }

        v61 = 1 << *(v28 + 32);
        if (v61 >= 64)
        {
          bzero(v22, ((v61 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v22 = -1 << v61;
        }

        v1 = v64;
        *(v28 + 16) = 0;

        goto LABEL_45;
      }

      v31 = __clz(__rbit64(v25));
      v75 = (v25 - 1) & v25;
LABEL_15:
      v34 = *(v28 + 48);
      v74 = *(v73 + 72);
      v35 = v76;
      sub_100025668(v34 + v74 * (v31 | (v21 << 6)), v76, type metadata accessor for CRLPreviewImages.Item);
      Hasher.init(_seed:)();
      sub_10000C83C(v35, v77, type metadata accessor for CRLPreviewImages.Item);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload == 1)
      {
        sub_100025668(v77, v6, type metadata accessor for CRLBoardIdentifier);
        sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        type metadata accessor for CRLBoardIdentifierStorage(0);
        String.hash(into:)();
      }

      else
      {
        v41 = *(sub_1005B981C(&unk_1019FB780) + 48);
        v42 = v77;
        sub_100025668(v77, v6, type metadata accessor for CRLBoardIdentifier);
        v43 = v28;
        v44 = v6;
        v45 = v69;
        v46 = v72;
        (*v66)(v69, v42 + v41, v72);
        sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        type metadata accessor for CRLBoardIdentifierStorage(0);
        String.hash(into:)();
        v29 = v68;
        dispatch thunk of Hashable.hash(into:)();
        v47 = v45;
        v6 = v44;
        v28 = v43;
        v48 = v46;
        v13 = v67;
        (*v65)(v47, v48);
      }

      v49 = type metadata accessor for CRLBoardIdentifier;
      v50 = v6;
LABEL_31:
      sub_100026028(v50, v49);
      result = Hasher._finalize()();
      v54 = -1 << *(v29 + 32);
      v55 = result & ~v54;
      v56 = v55 >> 6;
      if (((-1 << v55) & ~*(v27 + 8 * (v55 >> 6))) == 0)
      {
        v57 = 0;
        v58 = (63 - v54) >> 6;
        while (++v56 != v58 || (v57 & 1) == 0)
        {
          v59 = v56 == v58;
          if (v56 == v58)
          {
            v56 = 0;
          }

          v57 |= v59;
          v60 = *(v27 + 8 * v56);
          if (v60 != -1)
          {
            v30 = __clz(__rbit64(~v60)) + (v56 << 6);
            goto LABEL_7;
          }
        }

LABEL_47:
        __break(1u);
        return result;
      }

      v30 = __clz(__rbit64((-1 << v55) & ~*(v27 + 8 * (v55 >> 6)))) | v55 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v27 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      result = sub_100025668(v76, *(v29 + 48) + v30 * v74, type metadata accessor for CRLPreviewImages.Item);
      ++*(v29 + 16);
      v25 = v75;
    }

    v37 = v71;
    sub_100025668(v77, v71, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_10000C83C(v37, v13, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v38 = sub_1005B981C(&qword_1019F3480);
    v39 = (*(*(v38 - 8) + 48))(v13, 5, v38);
    if (v39 > 2)
    {
      if (v39 == 3)
      {
        v40 = 2;
      }

      else if (v39 == 4)
      {
        v40 = 3;
      }

      else
      {
        v40 = 4;
      }
    }

    else
    {
      if (!v39)
      {
        v51 = v28;
        v52 = v63;
        sub_100025668(v13, v63, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        Hasher._combine(_:)(5uLL);
        sub_100F8ED58();
        v53 = v52;
        v28 = v51;
        v29 = v68;
        sub_100026028(v53, type metadata accessor for CRLBoardLibraryViewModel.Folder);
LABEL_30:
        v49 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
        v50 = v71;
        goto LABEL_31;
      }

      v40 = v39 != 1;
    }

    Hasher._combine(_:)(v40);
    goto LABEL_30;
  }

  v29 = v20;
LABEL_45:
  *v1 = v29;
  return result;
}

unint64_t sub_100E775F8()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_101A21CE8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v2 + 56);
    for (i = (v7 + 63) >> 6; v9; result = sub_100E7AE54(*v14, *(v14 + 8), *(v14 + 16), v4, *(v14 + 24)))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      v14 = *(v2 + 48) + 32 * (v11 | (v5 << 6));
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return result;
      }

      if (v5 >= i)
      {
        break;
      }

      v13 = v6[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    v15 = 1 << *(v2 + 32);
    if (v15 >= 64)
    {
      bzero((v2 + 56), ((v15 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v15;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100E77770()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardIdentifierAndValue(0);
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1005B981C(&qword_1019F3680);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v0;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
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
      v20 = *(v32 + 72);
      sub_100025668(v19 + v20 * (v16 | (v8 << 6)), v4, type metadata accessor for CRLBoardIdentifierAndValue);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      Hasher._combine(_:)(v4[*(v33 + 20)]);
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_100025668(v4, *(v7 + 48) + v15 * v20, type metadata accessor for CRLBoardIdentifierAndValue);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v30;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_100E77AF4()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v25 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v24 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1005B981C(&unk_1019F33F0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v22 = v0;
    v7 = 0;
    v8 = (v4 + 56);
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
    v23 = result + 56;
    for (i = v24; v11; ++*(v6 + 16))
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v17 = *(v25 + 72);
      sub_100025668(*(v4 + 48) + v17 * (v14 | (v7 << 6)), i, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      Hasher.init(_seed:)();
      sub_100F8ED58();
      Hasher._finalize()();
      v18 = v23;
      v19 = _HashTable.nextHole(atOrAfter:)();
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_100025668(i, *(v6 + 48) + v19 * v17, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    v20 = 1 << *(v4 + 32);
    if (v20 >= 64)
    {
      bzero((v4 + 56), ((v20 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v20;
    }

    v1 = v22;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_100E77D90()
{
  v1 = v0;
  v2 = _s4NodeVMa(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_1005B981C(&qword_101A21C90);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v6 + 56);
    for (i = (v11 + 63) >> 6; v13; result = sub_100E7AF84(v5, v8))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_11:
      sub_100025668(*(v6 + 48) + *(v3 + 72) * (v15 | (v9 << 6)), v5, _s4NodeVMa);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= i)
      {
        break;
      }

      v17 = v10[v9];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_11;
      }
    }

    v18 = 1 << *(v6 + 32);
    if (v18 >= 64)
    {
      bzero((v6 + 56), ((v18 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v18;
    }

    *(v6 + 16) = 0;
  }

  *v1 = v8;
  return result;
}

uint64_t sub_100E77F98(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = v5;
  v9 = a2(0);
  v38 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v39 = &v35 - v10;
  v11 = *v5;
  sub_1005B981C(a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v11 + 16))
  {
    v36 = v5;
    v37 = v11;
    v14 = 0;
    v15 = (v11 + 56);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v20 = result + 56;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = *(v11 + 48);
      v26 = *(v38 + 72);
      sub_100025668(v25 + v26 * (v22 | (v14 << 6)), v39, a5);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v13 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v20 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v20 + 8 * v29);
          if (v33 != -1)
          {
            v21 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v28) & ~*(v20 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_100025668(v39, *(v13 + 48) + v21 * v26, a5);
      ++*(v13 + 16);
      v11 = v37;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    v34 = 1 << *(v11 + 32);
    if (v34 >= 64)
    {
      bzero(v15, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v34;
    }

    v8 = v36;
    *(v11 + 16) = 0;
  }

  *v8 = v13;
  return result;
}

uint64_t sub_100E782F8()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_101A21C78);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
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
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100E78548()
{
  v1 = v0;
  v2 = type metadata accessor for CRLFolderIdentifier(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1005B981C(&qword_1019F3790);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v30 = v5;
    v8 = 0;
    v9 = (v5 + 56);
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
      sub_100025668(v19 + v20 * (v16 | (v8 << 6)), v4, type metadata accessor for CRLFolderIdentifier);
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_100025668(v4, *(v7 + 48) + v15 * v20, type metadata accessor for CRLFolderIdentifier);
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v29;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_100E788B8()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1005B981C(&qword_101A22058);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v30 = v5;
    v8 = 0;
    v9 = (v5 + 56);
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
      v34 = (v12 - 1) & v12;
LABEL_15:
      v19 = *(v5 + 48);
      v33 = *(v31 + 72);
      sub_100025668(v19 + v33 * (v16 | (v8 << 6)), v4, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
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
        v5 = v30;
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
      v5 = v30;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_100025668(v4, *(v7 + 48) + v15 * v33, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
      ++*(v7 + 16);
      v12 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v34 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero(v9, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v1 = v29;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

Swift::Int sub_100E78C90()
{
  v1 = v0;
  v2 = _s17CategoryViewModelVMa();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_1005B981C(&qword_101A21FB8);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v30 = v0;
    v9 = 0;
    v10 = *(v6 + 56);
    v31 = (v6 + 56);
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
    v15 = v7 + 56;
    v32 = v14;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v34 = (v13 - 1) & v13;
LABEL_15:
      v21 = *(v6 + 48);
      v33 = *(v3 + 72);
      sub_100025668(v21 + v33 * (v17 | (v9 << 6)), v5, _s17CategoryViewModelVMa);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      String.hash(into:)();
      if (*&v5[*(v2 + 24) + 8])
      {
        Hasher._combine(_:)(1u);
        v14 = v32;
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      String.hash(into:)();
      Hasher._combine(_:)(*&v5[*(v2 + 32)]);
      result = Hasher._finalize()();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_100025668(v5, *(v8 + 48) + v16 * v33, _s17CategoryViewModelVMa);
      ++*(v8 + 16);
      v13 = v34;
    }

    v18 = v9;
    result = v31;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v31[v9];
      ++v18;
      if (v20)
      {
        v17 = __clz(__rbit64(v20));
        v34 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v31, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v31 = -1 << v29;
    }

    v1 = v30;
    *(v6 + 16) = 0;
  }

  *v1 = v8;
  return result;
}

uint64_t sub_100E7909C()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_1019F3798);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v25 = v2;
    v5 = 0;
    v6 = (v2 + 56);
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
      v9 &= v9 - 1;
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

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v25;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero(v6, ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100E79330()
{
  v1 = v0;
  v35 = type metadata accessor for UTType();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1005B981C(&qword_101A21FF8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
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
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1000066D0(&unk_101A22910, &type metadata accessor for UTType);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_100E7968C()
{
  v1 = v0;
  v2 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v30 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1005B981C(&qword_101A21FE0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v8 = 0;
    v9 = (v5 + 56);
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
      v19 = *(v30 + 72);
      sub_100025668(*(v5 + 48) + v19 * (v16 | (v8 << 6)), v4, type metadata accessor for CRLSELibraryViewModel.Item);
      Hasher.init(_seed:)();
      sub_1007F0E00(v31);
      result = Hasher._finalize()();
      v20 = -1 << *(v7 + 32);
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_100025668(v4, *(v7 + 48) + v15 * v19, type metadata accessor for CRLSELibraryViewModel.Item);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v1 = v29;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_100E79994()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_101A21D98);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
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
    while (1)
    {
      if (!v9)
      {
        v15 = v5;
        while (1)
        {
          v5 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            goto LABEL_41;
          }

          if (v5 >= v10)
          {
            break;
          }

          v16 = v6[v5];
          ++v15;
          if (v16)
          {
            v14 = __clz(__rbit64(v16));
            v9 = (v16 - 1) & v16;
            goto LABEL_15;
          }
        }

        v29 = 1 << *(v2 + 32);
        if (v29 >= 64)
        {
          bzero((v2 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v6 = -1 << v29;
        }

        v1 = v0;
        *(v2 + 16) = 0;
        goto LABEL_39;
      }

      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 16 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      Hasher.init(_seed:)();
      if (v19 <= 1)
      {
        break;
      }

      if (v19 == 2)
      {
        v20 = 2;
        goto LABEL_19;
      }

      if (v18)
      {
        if (v18 == 1)
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
      if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v11 + 8 * v24);
          if (v28 != -1)
          {
            v12 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 16 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      ++*(v4 + 16);
    }

    v20 = v19 != 0;
LABEL_19:
    Hasher._combine(_:)(v20);
    NSObject.hash(into:)();
    goto LABEL_26;
  }

LABEL_39:

  *v1 = v4;
  return result;
}

unint64_t sub_100E79C50()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_101A21FC0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
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
    for (i = result + 56; v9; ++*(v4 + 16))
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      sub_100BD3B78(v17, *(v15 + 16));
      sub_100D6FEA0(v17);
      Hasher._finalize()();
      result = _HashTable.nextHole(atOrAfter:)();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v4 + 48) + 8 * result) = v15;
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v16 = 1 << *(v2 + 32);
    if (v16 >= 64)
    {
      bzero((v2 + 56), ((v16 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v16;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100E79E48()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLSpotlightManager.ChangeType(0);
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = __chkstk_darwin(v5);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v42 = &v36 - v8;
  v9 = *v0;
  sub_1005B981C(&qword_101A21FD0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v37 = v0;
    v38 = v9;
    v12 = 0;
    v13 = (v9 + 56);
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
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = *(v9 + 48);
      v24 = *(v40 + 72);
      v25 = v42;
      sub_100025668(v23 + v24 * (v20 | (v12 << 6)), v42, type metadata accessor for CRLSpotlightManager.ChangeType);
      Hasher.init(_seed:)();
      v26 = v39;
      sub_10000C83C(v25, v39, type metadata accessor for CRLSpotlightManager.ChangeType);
      v27 = swift_getEnumCaseMultiPayload() == 1;
      sub_100025668(v26, v4, type metadata accessor for CRLBoardIdentifier);
      Hasher._combine(_:)(v27);
      type metadata accessor for UUID();
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      sub_100026028(v4, type metadata accessor for CRLBoardIdentifier);
      result = Hasher._finalize()();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_100025668(v42, *(v11 + 48) + v19 * v24, type metadata accessor for CRLSpotlightManager.ChangeType);
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    v35 = 1 << *(v9 + 32);
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    v1 = v37;
    *(v9 + 16) = 0;
  }

  *v1 = v11;
  return result;
}

uint64_t sub_100E7A2AC()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_101A21E28);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
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
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = static Hasher._hash(seed:_:)();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100E7A4D0()
{
  v1 = v0;
  v35 = type metadata accessor for IndexPath();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1005B981C(&qword_101A21E98);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
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
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1000066D0(&unk_101A23C60, &type metadata accessor for IndexPath);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_100E7A82C()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_1019F3610);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
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
      v17 = *(v2 + 48) + 40 * (v14 | (v5 << 6));
      v26 = *v17;
      v27 = *(v17 + 16);
      v28 = *(v17 + 32);
      result = AnyHashable._rawHashValue(seed:)(*(v4 + 40));
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 40 * v12;
      *v13 = v26;
      *(v13 + 16) = v27;
      *(v13 + 32) = v28;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100E7AA8C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_1005B981C(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
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
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
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

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

unint64_t sub_100E7ACAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  v8 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  (*(v8 + 32))(ObjectType, v8);
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(v5 + 8))(v7, v4);
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_100E7AE54(uint64_t a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  Hasher.init(_seed:)();
  if (a3)
  {
    v10 = dbl_1014B71A8[a1];
  }

  else
  {
    v10 = *&a1;
  }

  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  Hasher._combine(_:)(*&v10);
  if (a3)
  {
    v11 = dbl_1014B71A8[a1];
  }

  else
  {
    v11 = *&a2;
  }

  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  Hasher._combine(_:)(*&v11);
  if (a5 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = a5;
  }

  Hasher._combine(_:)(*&v12);
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v14 = *(a4 + 48) + 32 * result;
  *v14 = a1;
  *(v14 + 8) = a2;
  *(v14 + 16) = a3 & 1;
  *(v14 + 24) = a5;
  ++*(a4 + 16);
  return result;
}

uint64_t sub_100E7AF84(uint64_t a1, uint64_t a2)
{
  v4 = _s5BoardVMa(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v10);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  Hasher.init(_seed:)();
  sub_10000C83C(a1, v12, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100025668(v12, v9, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_100F8D588();
      v14 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      v15 = v9;
    }

    else
    {
      sub_100025668(v12, v6, _s5BoardVMa);
      type metadata accessor for UUID();
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      v14 = _s5BoardVMa;
      v15 = v6;
    }

    sub_100026028(v15, v14);
  }

  else
  {
    Hasher._combine(_:)(*v12);
  }

  v16 = _s4NodeVMa(0);
  sub_100E90344(v20, *(a1 + *(v16 + 20)));
  Hasher._finalize()();
  v17 = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
  result = sub_100025668(a1, *(a2 + 48) + *(*(v16 - 8) + 72) * v17, _s4NodeVMa);
  ++*(a2 + 16);
  return result;
}

unint64_t sub_100E7B27C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CalculateExpression();
  sub_1000066D0(&qword_1019F37A0, &type metadata accessor for CalculateExpression);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_100E7B364(Swift::UInt a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_100E7B408(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  sub_100BD3B78(v5, *(a1 + 16));
  sub_100D6FEA0(v5);
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_100E7B4C4(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

uint64_t sub_100E7B548(uint64_t a1, unint64_t a2, char a3)
{
  v37 = a1;
  v6 = type metadata accessor for CRKeyPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v13 = _s6CellIDVMa(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*v3 + 16);
  v18 = *(*v3 + 24);
  v32 = v14;
  v33 = v3;
  if (v18 > v17 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100E73990();
  }

  else
  {
    if (v18 > v17)
    {
      sub_100E833DC();
      goto LABEL_12;
    }

    sub_100E869A0();
  }

  v19 = *v3;
  Hasher.init(_seed:)();
  UUID.hash(into:)();
  UUID.hash(into:)();
  v20 = Hasher._finalize()();
  v35 = v19 + 56;
  v36 = v19;
  v21 = -1 << *(v19 + 32);
  a2 = v20 & ~v21;
  if ((*(v19 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v34 = ~v21;
    v22 = *(v14 + 72);
    v23 = (v7 + 8);
    do
    {
      sub_10000C83C(*(v36 + 48) + v22 * a2, v16, _s6CellIDVMa);
      sub_1000066D0(&unk_101A0B020, _s6CellIDVMa);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      sub_1000066D0(&unk_101A2C5A0, &type metadata accessor for CRKeyPath);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *v23;
      (*v23)(v9, v6);
      v25(v12, v6);
      sub_100026028(v16, _s6CellIDVMa);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v34;
    }

    while (((*(v35 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v26 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100025668(v37, *(v26 + 48) + *(v32 + 72) * a2, _s6CellIDVMa);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100E7B90C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for UUID();
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
    sub_100E73CB0();
  }

  else
  {
    if (v11 > v10)
    {
      sub_100E8649C(&type metadata accessor for UUID, &qword_1019F37B8);
      goto LABEL_12;
    }

    sub_100E86C90();
  }

  v12 = *v3;
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
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
      sub_1000066D0(&qword_1019F37C0, &type metadata accessor for UUID);
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

uint64_t sub_100E7BBD4(uint64_t a1, unint64_t a2, char a3)
{
  v39 = a1;
  v38 = type metadata accessor for UUID();
  v6 = *(v38 - 8);
  v7 = __chkstk_darwin(v38);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v12 = v32 - v11;
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v33 = v3;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100E7400C();
  }

  else
  {
    if (v14 > v13)
    {
      result = sub_100E85FE8(&qword_101A21D90);
      goto LABEL_12;
    }

    sub_100E86FAC();
  }

  v15 = *v3;
  Hasher.init(_seed:)();
  v16 = *(v39 + 24);
  ObjectType = swift_getObjectType();
  (*(v16 + 32))(ObjectType, v16);
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
  v18 = v38;
  dispatch thunk of Hashable.hash(into:)();
  v19 = *(v6 + 8);
  v37 = v6 + 8;
  v19(v12, v18);
  result = Hasher._finalize()();
  v35 = v15 + 56;
  v36 = v15;
  v20 = -1 << *(v15 + 32);
  a2 = result & ~v20;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v34 = ~v20;
    v32[1] = type metadata accessor for CRLTransactableHashableWrapper();
    do
    {
      v21 = *(*(*(v36 + 48) + 8 * a2) + 24);
      v22 = swift_getObjectType();
      v23 = *(v21 + 32);

      v23(v22, v21);
      v24 = *(v39 + 24);
      v25 = swift_getObjectType();
      (*(v24 + 32))(v25, v24);
      v26 = static UUID.== infix(_:_:)();

      v27 = v38;
      v19(v9, v38);
      result = (v19)(v12, v27);
      if (v26)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v34;
    }

    while (((*(v35 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v28 = *v33;
  *(v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v28 + 48) + 8 * a2) = v39;
  v29 = *(v28 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v28 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100E7BF20(Swift::Int result, char a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a4)
  {
    sub_100E7436C();
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_100E83624();
      a3 = v9;
      goto LABEL_19;
    }

    sub_100E8730C();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v6);
  }

  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = *(v10 + 48) + 16 * a3;
      if (*(v13 + 8))
      {
        if (a2)
        {
          goto LABEL_18;
        }
      }

      else if ((a2 & 1) == 0 && *v13 == v6)
      {
LABEL_18:
        sub_1005B981C(&qword_101A21D10);
        result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        break;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_19:
  v14 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v15 = *(v14 + 48) + 16 * a3;
  *v15 = v6;
  *(v15 + 8) = a2 & 1;
  v16 = *(v14 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v18;
  }

  return result;
}

Swift::Int sub_100E7C0C4(Swift::Int result, char a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a4)
  {
    sub_100E74920(v8 + 1, &qword_101A21D28, &unk_1014B6650, &qword_1019FFF60);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100E83928(&qword_101A21D28);
      goto LABEL_19;
    }

    sub_100E87888(v8 + 1, &qword_101A21D28, &unk_1014B6650, &qword_1019FFF60);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  if (a2 == -1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_1005B981C(&qword_1019FFF60);
    CRExtensible.hash(into:)();
  }

  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      if (*(*(v10 + 48) + 16 * a3 + 8) == 255)
      {
        if (a2 == -1)
        {
          goto LABEL_18;
        }
      }

      else if (a2 != -1)
      {
        sub_1007A96C8();
        result = static CRExtensible.== infix(_:_:)();
        if (result)
        {
LABEL_18:
          sub_1005B981C(&qword_101A21D20);
          result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_19:
  v13 = *v18;
  *(*v18 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v14 = *(v13 + 48) + 16 * a3;
  *v14 = v7;
  *(v14 + 8) = a2;
  v15 = *(v13 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v17;
  }

  return result;
}

Swift::Int sub_100E7C350(Swift::Int result, char a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a4)
  {
    sub_100E74920(v8 + 1, &qword_101A21D88, &unk_1014B66F0, &qword_1019FFFD8);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100E83928(&qword_101A21D88);
      goto LABEL_19;
    }

    sub_100E87888(v8 + 1, &qword_101A21D88, &unk_1014B66F0, &qword_1019FFFD8);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  if (a2 == -1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_1005B981C(&qword_1019FFFD8);
    CRExtensible.hash(into:)();
  }

  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      if (*(*(v10 + 48) + 16 * a3 + 8) == 255)
      {
        if (a2 == -1)
        {
          goto LABEL_18;
        }
      }

      else if (a2 != -1)
      {
        type metadata accessor for CRLWPWritingDirection(0);
        sub_1000066D0(&unk_1019FFFE0, type metadata accessor for CRLWPWritingDirection);
        result = static CRExtensible.== infix(_:_:)();
        if (result)
        {
LABEL_18:
          sub_1005B981C(&qword_101A21D80);
          result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_19:
  v13 = *v18;
  *(*v18 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v14 = *(v13 + 48) + 16 * a3;
  *v14 = v7;
  *(v14 + 8) = a2;
  v15 = *(v13 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v17;
  }

  return result;
}

Swift::Int sub_100E7C610(Swift::Int result, char a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a4)
  {
    sub_100E74920(v8 + 1, &qword_101A21D38, &unk_1014B6668, &qword_1019FFF70);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100E83928(&qword_101A21D38);
      goto LABEL_19;
    }

    sub_100E87888(v8 + 1, &qword_101A21D38, &unk_1014B6668, &qword_1019FFF70);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  if (a2 == -1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_1005B981C(&qword_1019FFF70);
    CRExtensible.hash(into:)();
  }

  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      if (*(*(v10 + 48) + 16 * a3 + 8) == 255)
      {
        if (a2 == -1)
        {
          goto LABEL_18;
        }
      }

      else if (a2 != -1)
      {
        type metadata accessor for CRLWPParagraphAlignment(0);
        sub_1000066D0(&qword_1019FFF78, type metadata accessor for CRLWPParagraphAlignment);
        result = static CRExtensible.== infix(_:_:)();
        if (result)
        {
LABEL_18:
          sub_1005B981C(&qword_101A21D30);
          result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_19:
  v13 = *v18;
  *(*v18 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v14 = *(v13 + 48) + 16 * a3;
  *v14 = v7;
  *(v14 + 8) = a2;
  v15 = *(v13 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v17;
  }

  return result;
}

Swift::Int sub_100E7C8D0(Swift::Int result, unint64_t a2, char a3)
{
  v5 = v3;
  v7 = result;
  v8 = *(result + 80);
  v100 = *(result + 64);
  v101 = v8;
  v102 = *(result + 96);
  v9 = *(result + 16);
  v96 = *result;
  v97 = v9;
  v10 = *(result + 48);
  v98 = *(result + 32);
  v99 = v10;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100E745F0();
    }

    else
    {
      if (v12 > v11)
      {
        result = sub_100E83778();
        goto LABEL_23;
      }

      sub_100E87560();
    }

    v45 = *v3;
    Hasher.init(_seed:)();
    v13 = *(v7 + 96);
    if (v13)
    {
      v86 = v100;
      v87 = v101;
      v88 = v102;
      v82 = v96;
      v83 = v97;
      v84 = v98;
      v85 = v99;
      Hasher._combine(_:)(1u);
      v93 = v100;
      v94 = v101;
      v95 = v102;
      v89 = v96;
      v90 = v97;
      v91 = v98;
      v92 = v99;
      sub_1007A971C(&v89, &v55);
      sub_1007A9778();
      dispatch thunk of Hashable.hash(into:)();
      v59 = v86;
      v60 = v87;
      v61 = v88;
      v55 = v82;
      v56 = v83;
      v57 = v84;
      v58 = v85;
      sub_1007A97CC(&v55);
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    result = Hasher._finalize()();
    v14 = -1 << *(v45 + 32);
    a2 = result & ~v14;
    if ((*(v45 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v44 = ~v14;
      while (1)
      {
        v15 = (*(v45 + 48) + 112 * a2);
        v17 = v15[1];
        v16 = v15[2];
        v89 = *v15;
        v90 = v17;
        v91 = v16;
        v18 = v15[3];
        v19 = v15[4];
        v20 = v15[6];
        v94 = v15[5];
        v95 = v20;
        v92 = v18;
        v93 = v19;
        v21 = v15[3];
        v78 = v15[2];
        v79 = v21;
        v22 = v15[5];
        v80 = v15[4];
        v81 = v22;
        v23 = v15[1];
        v76 = *v15;
        v77 = v23;
        v4 = *(&v20 + 1);
        v24 = v20;
        v25 = *(v7 + 16);
        v70 = *v7;
        v71 = v25;
        v26 = *(v7 + 32);
        v27 = *(v7 + 48);
        v28 = *(v7 + 80);
        v74 = *(v7 + 64);
        v75 = v28;
        v72 = v26;
        v73 = v27;
        v29 = *(v7 + 104);
        if (!v24)
        {
          break;
        }

        v57 = v78;
        v58 = v79;
        v59 = v80;
        v60 = v81;
        v55 = v76;
        v56 = v77;
        v61 = __PAIR128__(v4, v24);
        v82 = v76;
        v83 = v77;
        v84 = v78;
        v85 = v79;
        v86 = v80;
        v87 = v81;
        v88 = __PAIR128__(v4, v24);
        if (!v13)
        {
          v52 = v59;
          v53 = v60;
          v54 = v61;
          v48 = v55;
          v49 = v56;
          v50 = v57;
          v51 = v58;
          sub_10000BE14(v7, v47, &qword_1019FFF80);
          sub_10000BE14(&v89, v47, &qword_1019FFF80);
          sub_10000BE14(&v55, v47, &qword_1019FFF80);
          sub_1007A97CC(&v48);
LABEL_20:
          v57 = v78;
          v58 = v79;
          v59 = v80;
          v60 = v81;
          v55 = v76;
          v56 = v77;
          *&v61 = v24;
          *(&v61 + 1) = v4;
          v62 = v70;
          v63 = v71;
          v66 = v74;
          v67 = v75;
          v64 = v72;
          v65 = v73;
          v68 = v13;
          v69 = v29;
          result = sub_10000CAAC(&v55, &qword_1019FFF90);
          goto LABEL_21;
        }

        v30 = *(v7 + 48);
        v50 = *(v7 + 32);
        v51 = v30;
        v31 = *(v7 + 80);
        v52 = *(v7 + 64);
        v53 = v31;
        v32 = *(v7 + 16);
        v48 = *v7;
        v49 = v32;
        *&v54 = v13;
        *(&v54 + 1) = v29;
        sub_10000BE14(v7, v47, &qword_1019FFF80);
        sub_10000BE14(&v89, v47, &qword_1019FFF80);
        sub_10000BE14(&v55, v47, &qword_1019FFF80);
        sub_1007A9820();
        v33 = dispatch thunk of static Equatable.== infix(_:_:)();
        v46[4] = v52;
        v46[5] = v53;
        v46[6] = v54;
        v46[0] = v48;
        v46[1] = v49;
        v46[2] = v50;
        v46[3] = v51;
        sub_1007A97CC(v46);
        v47[4] = v86;
        v47[5] = v87;
        v47[6] = v88;
        v47[0] = v82;
        v47[1] = v83;
        v47[2] = v84;
        v47[3] = v85;
        sub_1007A97CC(v47);
        v50 = v78;
        v51 = v79;
        v52 = v80;
        v53 = v81;
        v48 = v76;
        v49 = v77;
        v54 = __PAIR128__(v4, v24);
        result = sub_10000CAAC(&v48, &qword_1019FFF80);
        if (v33)
        {
          goto LABEL_27;
        }

LABEL_21:
        a2 = (a2 + 1) & v44;
        if (((*(v45 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_23;
        }

        v13 = *(v7 + 96);
      }

      if (!v13)
      {
        goto LABEL_26;
      }

      sub_10000BE14(v7, &v55, &qword_1019FFF80);
      sub_10000BE14(&v89, &v55, &qword_1019FFF80);
      goto LABEL_20;
    }
  }

LABEL_23:
  v34 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v35 = (*(v34 + 48) + 112 * a2);
  v37 = *(v7 + 16);
  v36 = *(v7 + 32);
  *v35 = *v7;
  v35[1] = v37;
  v35[2] = v36;
  v38 = *(v7 + 48);
  v39 = *(v7 + 64);
  v40 = *(v7 + 96);
  v35[5] = *(v7 + 80);
  v35[6] = v40;
  v35[3] = v38;
  v35[4] = v39;
  v41 = *(v34 + 16);
  v42 = __OFADD__(v41, 1);
  v43 = v41 + 1;
  if (v42)
  {
    __break(1u);
LABEL_26:
    v57 = v78;
    v58 = v79;
    v59 = v80;
    v60 = v81;
    v55 = v76;
    v56 = v77;
    *&v61 = 0;
    *(&v61 + 1) = v4;
    sub_10000BE14(v7, &v82, &qword_1019FFF80);
    sub_10000BE14(&v89, &v82, &qword_1019FFF80);
    sub_10000CAAC(&v55, &qword_1019FFF80);
LABEL_27:
    sub_1005B981C(&qword_1019FFF80);
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v34 + 16) = v43;
  }

  return result;
}

Swift::Int sub_100E7CE38(Swift::Int result, char a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a4)
  {
    sub_100E74920(v8 + 1, &qword_101A21D50, &unk_1014B6688, &unk_1019FFFA0);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100E83928(&qword_101A21D50);
      goto LABEL_19;
    }

    sub_100E87888(v8 + 1, &qword_101A21D50, &unk_1014B6688, &unk_1019FFFA0);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  if (a2 == -1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_1005B981C(&unk_1019FFFA0);
    CRExtensible.hash(into:)();
  }

  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      if (*(*(v10 + 48) + 16 * a3 + 8) == 255)
      {
        if (a2 == -1)
        {
          goto LABEL_18;
        }
      }

      else if (a2 != -1)
      {
        type metadata accessor for CRLWPStrikethru(0);
        sub_1000066D0(&unk_101A0DA50, type metadata accessor for CRLWPStrikethru);
        result = static CRExtensible.== infix(_:_:)();
        if (result)
        {
LABEL_18:
          sub_1005B981C(&qword_101A21D48);
          result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_19:
  v13 = *v18;
  *(*v18 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v14 = *(v13 + 48) + 16 * a3;
  *v14 = v7;
  *(v14 + 8) = a2;
  v15 = *(v13 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v17;
  }

  return result;
}

Swift::Int sub_100E7D0F8(Swift::Int result, char a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a4)
  {
    sub_100E74920(v8 + 1, &qword_101A21D60, &unk_1014B66A0, &unk_1019FFFB0);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100E83928(&qword_101A21D60);
      goto LABEL_19;
    }

    sub_100E87888(v8 + 1, &qword_101A21D60, &unk_1014B66A0, &unk_1019FFFB0);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  if (a2 == -1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_1005B981C(&unk_1019FFFB0);
    CRExtensible.hash(into:)();
  }

  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      if (*(*(v10 + 48) + 16 * a3 + 8) == 255)
      {
        if (a2 == -1)
        {
          goto LABEL_18;
        }
      }

      else if (a2 != -1)
      {
        type metadata accessor for CRLWPUnderline(0);
        sub_1000066D0(&unk_101A0DA60, type metadata accessor for CRLWPUnderline);
        result = static CRExtensible.== infix(_:_:)();
        if (result)
        {
LABEL_18:
          sub_1005B981C(&qword_101A21D58);
          result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_19:
  v13 = *v18;
  *(*v18 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v14 = *(v13 + 48) + 16 * a3;
  *v14 = v7;
  *(v14 + 8) = a2;
  v15 = *(v13 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v17;
  }

  return result;
}

Swift::Int sub_100E7D3B8(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    sub_100E74BB8();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100E83A6C();
      a2 = v7;
      goto LABEL_19;
    }

    sub_100E87AF0();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  if (v4 == 2)
  {
    v9 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v9 = v4 & 1;
  }

  Hasher._combine(_:)(v9);
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = *(*(v8 + 48) + a2);
      if (v12 == 2)
      {
        if (v4 == 2)
        {
          goto LABEL_18;
        }
      }

      else if (v4 != 2 && ((v12 ^ v4) & 1) == 0)
      {
LABEL_18:
        sub_1005B981C(&unk_101A08E00);
        result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        break;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_19:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }

  return result;
}

Swift::Int sub_100E7D554(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a3)
  {
    sub_100E74E24();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100E83BAC();
      a2 = v7;
      goto LABEL_25;
    }

    sub_100E87D2C();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  if ((v4 & 0x100000000) != 0)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v4 & 0x7FFFFF) == 0 && (v4 & 0x7F800000) == 0)
    {
      v10 = 0;
    }

    else
    {
      v10 = v4;
    }

    Hasher._combine(_:)(v10);
  }

  result = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  a2 = result & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(v8 + 48) + 8 * a2;
      if (*(v13 + 4))
      {
        if ((v4 & 0x100000000) != 0)
        {
          goto LABEL_24;
        }
      }

      else if ((v4 & 0x100000000) == 0 && *v13 == *&v4)
      {
LABEL_24:
        sub_1005B981C(&unk_101A095E0);
        result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        break;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_25:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = *(v14 + 48) + 8 * a2;
  *v15 = v4;
  *(v15 + 4) = BYTE4(v4) & 1;
  v16 = *(v14 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v18;
  }

  return result;
}

Swift::Int sub_100E7D6FC(Swift::Int result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v9 = result;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 > v10 && (a5 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a5)
  {
    sub_100E750AC();
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_100E83D00();
      goto LABEL_19;
    }

    sub_100E87F84();
  }

  v12 = *v5;
  Hasher.init(_seed:)();
  if (a3 == -1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_1005B981C(&qword_1019FFFC8);
    CRExtensible.hash(into:)();
  }

  result = Hasher._finalize()();
  v13 = -1 << *(v12 + 32);
  a4 = result & ~v13;
  if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v14 = ~v13;
    do
    {
      if (*(*(v12 + 48) + 24 * a4 + 16) == 255)
      {
        if (a3 == -1)
        {
          goto LABEL_18;
        }
      }

      else if (a3 != -1)
      {
        sub_1007A9874();
        result = static CRExtensible.== infix(_:_:)();
        if (result)
        {
LABEL_18:
          sub_1005B981C(&qword_1019FFFC0);
          result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      a4 = (a4 + 1) & v14;
    }

    while (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_19:
  v15 = *v20;
  *(*v20 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v16 = *(v15 + 48) + 24 * a4;
  *v16 = v9;
  *(v16 + 8) = a2;
  *(v16 + 16) = a3;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v19;
  }

  return result;
}

void sub_100E7D960(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
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
    sub_100006370(0, v11);
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

Swift::Int sub_100E7DAF0(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_100E755E8();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100E83FC4();
      goto LABEL_15;
    }

    sub_100E8844C();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  v9 = *(v5 + 40);
  Hasher._combine(_:)(v9);
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_10063FD8C(*(v8 + 48) + 48 * a2, v19);
      if (static AnyHashable.== infix(_:_:)())
      {
        v12 = v20;
        result = sub_10063FDE8(v19);
        if (v12 == v9)
        {
          result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      else
      {
        result = sub_10063FDE8(v19);
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = (*(v13 + 48) + 48 * a2);
  v15 = *(v5 + 16);
  *v14 = *v5;
  v14[1] = v15;
  v14[2] = *(v5 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v18;
  }

  return result;
}