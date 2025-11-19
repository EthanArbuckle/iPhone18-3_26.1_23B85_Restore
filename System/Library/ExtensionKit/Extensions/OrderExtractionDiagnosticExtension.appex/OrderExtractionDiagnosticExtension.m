char *sub_100001448(uint64_t a1)
{
  v2 = sub_10000C450();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  if ((sub_100009B08(a1) & 1) == 0)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000163C();
  v5 = sub_100001D00(v4);

  return v5;
}

void sub_10000163C()
{
  v0 = sub_10000C340();
  v64 = *(v0 - 8);
  v1 = *(v64 + 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v54 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v54 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = (&v54 - v12);
  v14 = __chkstk_darwin(v11);
  v16 = &v54 - v15;
  __chkstk_darwin(v14);
  v18 = &v54 - v17;
  sub_10000C1D0();
  sub_10000C1B0();
  v19 = sub_10000C1C0();

  v20.super.isa = sub_10000C120().super.isa;
  v21 = v66;
  sub_100001FF0(v18);
  if (v21)
  {
    v66 = v21;
  }

  else
  {
    v61 = v13;
    v62 = v16;
    v59 = v7;
    v60 = v10;
    v58 = v4;
    v23 = v64;
    v63 = v0;
    v68 = &_swiftEmptyArrayStorage;
    __chkstk_darwin(v22);
    *(&v54 - 4) = v20.super.isa;
    *(&v54 - 3) = &v68;
    *(&v54 - 2) = v65;
    *(&v54 - 1) = v18;
    sub_10000C580();
    isa = v20.super.isa;
    sub_1000033B8(v62);
    v66 = 0;
    v56 = v19;
    v24 = v68;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      v24 = sub_100007684(0, *(v24 + 2) + 1, 1, v24, &qword_1000143F0, &qword_10000CEA8, &type metadata accessor for URL);
    }

    v26 = *(v24 + 2);
    v25 = *(v24 + 3);
    if (v26 >= v25 >> 1)
    {
      v24 = sub_100007684(v25 > 1, v26 + 1, 1, v24, &qword_1000143F0, &qword_10000CEA8, &type metadata accessor for URL);
    }

    *(v24 + 2) = v26 + 1;
    v27 = *(v23 + 4);
    v28 = (v23[80] + 32) & ~v23[80];
    v29 = *(v23 + 9);
    v30 = &v24[v28 + v29 * v26];
    v31 = v63;
    v27(v30, v62, v63);
    v32 = v66;
    sub_100003578(v61);
    if (v32)
    {
      v66 = v32;

      (*(v23 + 1))(v18, v31);
    }

    else
    {
      v54 = v23 + 32;
      v55 = v27;
      v62 = v29;
      v34 = *(v24 + 2);
      v33 = *(v24 + 3);
      if (v34 >= v33 >> 1)
      {
        v24 = sub_100007684(v33 > 1, v34 + 1, 1, v24, &qword_1000143F0, &qword_10000CEA8, &type metadata accessor for URL);
      }

      *(v24 + 2) = v34 + 1;
      v35 = &v24[v28 + v34 * v62];
      v36 = v63;
      v55(v35, v61, v63);
      sub_10000373C(v60);
      v38 = *(v24 + 2);
      v37 = *(v24 + 3);
      v39 = v24;
      if (v38 >= v37 >> 1)
      {
        v39 = sub_100007684(v37 > 1, v38 + 1, 1, v24, &qword_1000143F0, &qword_10000CEA8, &type metadata accessor for URL);
      }

      *(v39 + 16) = v38 + 1;
      v24 = v39;
      v55((v39 + v28 + v38 * v62), v60, v36);
      sub_100003900(v18, v59);
      v66 = 0;
      v41 = *(v24 + 2);
      v40 = *(v24 + 3);
      v65 = (v41 + 1);
      if (v41 >= v40 >> 1)
      {
        v24 = sub_100007684(v40 > 1, v65, 1, v24, &qword_1000143F0, &qword_10000CEA8, &type metadata accessor for URL);
      }

      *(v24 + 2) = v65;
      v42 = &v24[v28];
      v55(&v24[v28 + v41 * v62], v59, v36);
      v67 = &_swiftEmptyArrayStorage;
      sub_10000C710();
      v43 = 0;
      v61 = (v23 + 16);
      v64 = v23 + 8;
      v23 = v58;
      while (1)
      {
        if (v43 >= *(v24 + 2))
        {
          __break(1u);
          goto LABEL_21;
        }

        v44 = v24;
        v45 = v63;
        (*v61)(v23, v42, v63);
        v46 = objc_allocWithZone(DEAttachmentItem);
        sub_10000C310(v47);
        v49 = v48;
        v50 = [v46 initWithPathURL:v48];

        if (!v50)
        {
          break;
        }

        ++v43;
        v51 = v45;
        v52 = *v64;
        (*v64)(v23, v51);
        sub_10000C6F0();
        v53 = v67[2];
        sub_10000C720();
        sub_10000C730();
        sub_10000C700();
        v42 += v62;
        v24 = v44;
        if (v65 == v43)
        {

          v52(v18, v63);
          return;
        }
      }

      __break(1u);
    }
  }
}

char *sub_100001D00(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_10000C750();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_10000796C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_10000C6E0();
        sub_10000ADC0(0, &qword_1000142D0, DEAttachmentItem_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_10000796C((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100009D64(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_10000ADC0(0, &qword_1000142D0, DEAttachmentItem_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_10000796C((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100009D64(v12, &v3[4 * v11 + 4]);
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

void sub_100001FF0(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_10000C3E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10000C340();
  v6 = *(v26 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  v11 = [v10 defaultManager];
  v12 = [v11 temporaryDirectory];

  sub_10000C330();
  v13 = v25;
  v14 = [v10 defaultManager];
  sub_10000C3D0();
  sub_10000C3B0();
  (*(v2 + 8))(v5, v1);
  sub_10000C320();

  sub_10000C310(v15);
  v17 = v16;
  v27 = 0;
  LOBYTE(v1) = [v14 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:&v27];

  if (v1)
  {
    v18 = *(v6 + 8);
    v19 = v27;
    v18(v9, v26);
  }

  else
  {
    v20 = v27;
    sub_10000C300();

    swift_willThrow();
    v21 = *(v6 + 8);
    v22 = v13;
    v23 = v26;
    v21(v22, v26);
    v21(v9, v23);
  }
}

void sub_1000022CC(void *a1, size_t *a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v7 = sub_10000C340();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v40 - v13;
  v15 = [objc_opt_self() currentQueryGenerationToken];
  v44 = 0;
  v16 = [a1 setQueryGenerationFromToken:v15 error:&v44];

  if (v16)
  {
    v17 = v44;
    sub_10000268C(a4, v14);
    if (!v4)
    {
      v18 = v43;
      v19 = *v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v18 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_100007684(0, v19[2] + 1, 1, v19, &qword_1000143F0, &qword_10000CEA8, &type metadata accessor for URL);
        *v43 = v19;
      }

      v22 = v19[2];
      v21 = v19[3];
      v23 = v22 + 1;
      v42 = v7;
      if (v22 >= v21 >> 1)
      {
        v41 = v22 + 1;
        v38 = sub_100007684(v21 > 1, v22 + 1, 1, v19, &qword_1000143F0, &qword_10000CEA8, &type metadata accessor for URL);
        v23 = v41;
        v19 = v38;
        *v43 = v38;
      }

      v19[2] = v23;
      v25 = *(v8 + 32);
      v24 = v8 + 32;
      v26 = (*(v24 + 48) + 32) & ~*(v24 + 48);
      v27 = v19 + v26;
      v28 = *(v24 + 40);
      v29 = &v27[v28 * v22];
      v30 = v25;
      (v25)(v29, v14, v42);
      sub_100002D64(a1, a4, v12);
      v41 = v26;
      v31 = v43;
      v32 = *v43;
      v33 = swift_isUniquelyReferenced_nonNull_native();
      *v31 = v32;
      if ((v33 & 1) == 0)
      {
        v32 = sub_100007684(0, *(v32 + 2) + 1, 1, v32, &qword_1000143F0, &qword_10000CEA8, &type metadata accessor for URL);
        *v43 = v32;
      }

      v34 = v41;
      v36 = *(v32 + 2);
      v35 = *(v32 + 3);
      if (v36 >= v35 >> 1)
      {
        v39 = sub_100007684(v35 > 1, v36 + 1, 1, v32, &qword_1000143F0, &qword_10000CEA8, &type metadata accessor for URL);
        v34 = v41;
        v32 = v39;
        *v43 = v39;
      }

      *(v32 + 2) = v36 + 1;
      v30(&v32[v34 + v36 * v28], v12);
    }
  }

  else
  {
    v37 = v44;
    sub_10000C300();

    swift_willThrow();
  }
}

void sub_10000268C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v54 = a1;
  v52 = a2;
  v55 = sub_10000C2B0();
  v51 = *(v55 - 8);
  v2 = *(v51 + 64);
  __chkstk_darwin();
  v50 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C290();
  v61 = *(v4 - 8);
  v5 = *(v61 + 64);
  __chkstk_darwin();
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*(sub_100009D1C(&qword_100014498, &qword_10000CF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = v47 - v9;
  v11 = sub_10000C1E0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C250();
  v16 = sub_10000C240();
  v17 = v60;
  v18 = sub_10000C590();
  v19 = v17;
  if (v17)
  {
  }

  else
  {
    v59 = v15;
    v60 = v18;
    v53 = v12;
    v47[1] = v7;
    v47[2] = v4;
    if (v18 >> 62)
    {
      goto LABEL_27;
    }

    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    v21 = v61;
    v22 = v55;
    v48 = v16;
    v49 = v19;
    if (v20)
    {
      v16 = 0;
      v57 = v18 & 0xFFFFFFFFFFFFFF8;
      v58 = v18 & 0xC000000000000001;
      v23 = (v53 + 48);
      v19 = (v53 + 32);
      v24 = &_swiftEmptyArrayStorage;
      v56 = v20;
      while (1)
      {
        if (v58)
        {
          sub_10000C6E0();
          v27 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v16 >= *(v57 + 16))
          {
            goto LABEL_26;
          }

          v26 = *(v18 + 8 * v16 + 32);
          v27 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            v20 = sub_10000C750();
            v18 = v60;
            goto LABEL_5;
          }
        }

        sub_10000C1F0();
        if ((*v23)(v10, 1, v11) == 1)
        {
          sub_10000B7F0(v10, &qword_100014498, &qword_10000CF10);
        }

        else
        {
          v28 = *v19;
          (*v19)(v59, v10, v11);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_100007684(0, v24[2] + 1, 1, v24, &qword_1000144B8, &qword_10000CF20, &type metadata accessor for CascadeExtractedOrder);
          }

          v30 = v24[2];
          v29 = v24[3];
          v31 = v24;
          if (v30 >= v29 >> 1)
          {
            v31 = sub_100007684(v29 > 1, v30 + 1, 1, v24, &qword_1000144B8, &qword_10000CF20, &type metadata accessor for CascadeExtractedOrder);
          }

          *(v31 + 16) = v30 + 1;
          v24 = v31;
          v28((v31 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v30), v59, v11);
          v22 = v55;
        }

        ++v16;
        v25 = v27 == v56;
        v18 = v60;
        v21 = v61;
        if (v25)
        {
          goto LABEL_22;
        }
      }
    }

    v24 = &_swiftEmptyArrayStorage;
LABEL_22:

    v63 = v24;
    v32 = v52;
    sub_10000C320();
    v33 = sub_10000C2F0();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    sub_10000C2E0();
    sub_100009D1C(&qword_100014410, &qword_10000CEB8);
    v36 = v21;
    v37 = *(v21 + 72);
    v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_10000CE00;
    sub_10000C280();
    sub_10000C270();
    v62 = v39;
    sub_10000B904(&qword_100014418, &type metadata accessor for JSONEncoder.OutputFormatting);
    sub_100009D1C(&qword_100014420, &qword_10000CEC0);
    sub_10000AE6C();
    sub_10000C5E0();
    sub_10000C2A0();
    (*(v51 + 104))(v50, enum case for JSONEncoder.DateEncodingStrategy.iso8601(_:), v22);
    sub_10000C2C0();
    sub_100009D1C(&qword_1000144A0, &qword_10000CF18);
    sub_10000B0B0();
    v40 = v49;
    v41 = sub_10000C2D0();
    if (v40)
    {
      v43 = sub_10000C340();
      (*(*(v43 - 8) + 8))(v32, v43);
    }

    else
    {
      v44 = v41;
      v45 = v42;

      sub_10000C380();
      v46 = v48;

      sub_100009F70(v44, v45);
    }
  }
}

void sub_100002D64(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a1;
  v51 = a2;
  v49 = a3;
  v3 = type metadata accessor for ExtractedOrderSnapshot();
  v45 = *(v3 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = sub_10000C2B0();
  v48 = *(v54 - 8);
  v7 = *(v48 + 64);
  __chkstk_darwin(v54);
  v47 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10000C290();
  v50 = *(v46 - 8);
  v9 = *(v50 + 64);
  __chkstk_darwin(v46);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C230();
  v12 = sub_10000C210();
  sub_100009D1C(&qword_100014400, &qword_10000CEB0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10000CE10;
  v14 = objc_allocWithZone(NSSortDescriptor);
  v15 = sub_10000C4B0();
  v16 = [v14 initWithKey:v15 ascending:0];

  v17 = v12;
  *(v13 + 32) = v16;
  sub_10000ADC0(0, &qword_100014408, NSSortDescriptor_ptr);
  isa = sub_10000C520().super.isa;

  [v12 setSortDescriptors:isa];

  v19 = v53;
  v20 = sub_10000C590();
  if (v19)
  {
    goto LABEL_2;
  }

  v21 = v20;
  v52 = v11;
  v53 = 0;
  if (v20 >> 62)
  {
    v22 = sub_10000C750();
  }

  else
  {
    v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = v54;
  v24 = v50;
  if (v22)
  {
    v44 = v12;
    v56 = &_swiftEmptyArrayStorage;
    sub_10000798C(0, v22 & ~(v22 >> 63), 0);
    if (v22 < 0)
    {
      __break(1u);
      return;
    }

    v25 = 0;
    v26 = v56;
    v27 = v45;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v28 = sub_10000C6E0();
      }

      else
      {
        v28 = *(v21 + 8 * v25 + 32);
      }

      sub_1000042CC(v28, v6);
      v56 = v26;
      v30 = v26[2];
      v29 = v26[3];
      if (v30 >= v29 >> 1)
      {
        sub_10000798C(v29 > 1, v30 + 1, 1);
        v27 = v45;
        v26 = v56;
      }

      ++v25;
      v26[2] = v30 + 1;
      sub_10000AE08(v6, v26 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v30);
      v23 = v54;
    }

    while (v22 != v25);

    v17 = v44;
    v24 = v50;
  }

  else
  {

    v26 = &_swiftEmptyArrayStorage;
  }

  v56 = v26;
  v31 = v49;
  sub_10000C320();
  v32 = sub_10000C2F0();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  sub_10000C2E0();
  sub_100009D1C(&qword_100014410, &qword_10000CEB8);
  v35 = *(v24 + 72);
  v36 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_10000CE00;
  sub_10000C280();
  sub_10000C270();
  v55 = v37;
  sub_10000B904(&qword_100014418, &type metadata accessor for JSONEncoder.OutputFormatting);
  sub_100009D1C(&qword_100014420, &qword_10000CEC0);
  sub_10000AE6C();
  sub_10000C5E0();
  sub_10000C2A0();
  (*(v48 + 104))(v47, enum case for JSONEncoder.DateEncodingStrategy.iso8601(_:), v23);
  sub_10000C2C0();
  sub_100009D1C(&qword_100014430, &qword_10000CEC8);
  sub_10000AF18();
  v38 = v53;
  v39 = sub_10000C2D0();
  if (!v38)
  {
    v42 = v39;
    v43 = v40;

    sub_10000C380();

    sub_100009F70(v42, v43);
LABEL_2:

    return;
  }

  v41 = sub_10000C340();
  (*(*(v41 - 8) + 8))(v31, v41);
}

uint64_t sub_1000033B8@<X0>(uint64_t a1@<X8>)
{
  v3 = swift_allocObject();
  *(v3 + 16) = &_swiftEmptyArrayStorage;
  sub_10000C3F0();
  sub_10000B904(&qword_1000143F8, &type metadata accessor for Library.Streams.WalletPaymentsCommerce.FoundIn.OrderEmail);
  sub_10000C420();
  if (v1)
  {
  }

  sub_10000AC28(v7, v7[3]);

  sub_10000C460();

  sub_10000ACA4(v7);
  swift_beginAccess();
  v5 = *(v3 + 16);

  sub_100004D80(v6, 0x616D45726564724FLL, 0xEA00000000006C69, a1);
}

uint64_t sub_100003578@<X0>(uint64_t a1@<X8>)
{
  v3 = swift_allocObject();
  *(v3 + 16) = &_swiftEmptyArrayStorage;
  sub_10000C410();
  sub_10000B904(&qword_1000143E8, &type metadata accessor for Library.Streams.WalletPaymentsCommerce.FoundIn.TrackedOrder);
  sub_10000C420();
  if (v1)
  {
  }

  sub_10000AC28(v7, v7[3]);

  sub_10000C460();

  sub_10000ACA4(v7);
  swift_beginAccess();
  v5 = *(v3 + 16);

  sub_100004D80(v6, 0x4F64656B63617254, 0xEC00000072656472, a1);
}

uint64_t sub_10000373C@<X0>(uint64_t a1@<X8>)
{
  v3 = swift_allocObject();
  *(v3 + 16) = &_swiftEmptyArrayStorage;
  sub_10000C400();
  sub_10000B904(&qword_1000143E0, &type metadata accessor for Library.Streams.WalletPaymentsCommerce.FoundIn.ClassicOrder);
  sub_10000C420();
  if (v1)
  {
  }

  sub_10000AC28(v7, v7[3]);

  sub_10000C460();

  sub_10000ACA4(v7);
  swift_beginAccess();
  v5 = *(v3 + 16);

  sub_100004D80(v6, 0x4F63697373616C43, 0xEC00000072656472, a1);
}

uint64_t sub_100003900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v3 = sub_10000C340();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v57 = &xmmword_10000CE00;
  v8 = sub_10000C4B0();
  v9 = [v7 setEnumeratorWithUseCase:v8];

  aBlock = 0;
  v10 = [v9 allSets:&aBlock];
  swift_unknownObjectRelease();
  v11 = aBlock;
  if (!v10)
  {
    v31 = aBlock;
    sub_10000C300();

    return swift_willThrow();
  }

  sub_100009D1C(&qword_1000142E0, qword_10000CE58);
  v12 = sub_10000C530();
  v13 = v11;

  v14 = swift_allocObject();
  v15 = sub_100009DD0(&_swiftEmptyArrayStorage);
  v59 = v14;
  *(v14 + 16) = v15;
  v49 = (v14 + 16);
  v46 = a2;
  v47 = v4;
  v48 = v3;
  if (v12 >> 62)
  {
    v16 = sub_10000C750();
    if (v16)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v16 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
LABEL_4:
      if (v16 < 1)
      {
        __break(1u);
      }

      v17 = 0;
      v53 = &v63;
      v54 = v12 & 0xC000000000000001;
      v55 = v16;
      v56 = v12;
      do
      {
        if (v54)
        {
          v18 = sub_10000C6E0();
        }

        else
        {
          v18 = *(v12 + 8 * v17 + 32);
        }

        v19 = v18;
        ++v17;
        v20 = sub_10000C4B0();
        v21 = [v19 changePublisherWithUseCase:v20];

        v22 = swift_allocObject();
        *(v22 + 16) = 1;
        v65 = sub_100009EE4;
        v66 = v22;
        aBlock = _NSConcreteStackBlock;
        v62 = 1107296256;
        v63 = sub_1000057EC;
        v64 = &unk_1000109B8;
        v23 = _Block_copy(&aBlock);

        v24 = swift_allocObject();
        v25 = v58;
        v26 = v59;
        v24[2] = v58;
        v24[3] = v19;
        v24[4] = v26;
        v65 = sub_100009F4C;
        v66 = v24;
        aBlock = _NSConcreteStackBlock;
        v62 = 1107296256;
        v63 = sub_1000062F4;
        v64 = &unk_100010A08;
        v27 = _Block_copy(&aBlock);
        v28 = v25;
        v29 = v19;

        v30 = [v21 drivableSinkWithBookmark:0 completion:v23 shouldContinue:v27];
        _Block_release(v27);
        _Block_release(v23);

        v12 = v56;
      }

      while (v55 != v17);
    }
  }

  v33 = objc_opt_self();
  v34 = v49;
  swift_beginAccess();
  v35 = *v34;

  sub_100009D1C(&qword_1000143A8, &qword_10000CE70);
  isa = sub_10000C470().super.isa;

  v60 = 0;
  v37 = [v33 dataWithJSONObject:isa options:3 error:&v60];

  v38 = v60;
  if (v37)
  {
    v39 = sub_10000C370();
    v41 = v40;

    v42 = v51;
    sub_10000C320();
    v43 = v52;
    sub_10000C380();
    if (v43)
    {
      (*(v47 + 8))(v42, v48);
      sub_100009F70(v39, v41);
    }

    else
    {
      sub_100009F70(v39, v41);
      (*(v47 + 32))(v46, v42, v48);
    }
  }

  else
  {
    v44 = v38;
    sub_10000C300();

    swift_willThrow();
  }
}

uint64_t sub_100003EE4(uint64_t a1)
{
  v37 = sub_10000C150();
  v39 = *(v37 - 8);
  v3 = *(v39 + 64);
  __chkstk_darwin();
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_10000C650();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  v7 = &_swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v38 = v5;
  v45 = &_swiftEmptyArrayStorage;
  sub_100007A14(0, v6 & ~(v6 >> 63), 0);
  v7 = v45;
  if (v40)
  {
    result = sub_10000C610();
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    result = sub_10000C5F0();
    v9 = *(a1 + 36);
  }

  v42 = result;
  v43 = v9;
  v44 = v40 != 0;
  v11 = v38;
  if ((v6 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v35 = v6;
    v36 = v39 + 32;
    v13 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v13 = a1;
    }

    v33 = a1 + 56;
    v34 = v13;
    v31[1] = v1;
    v32 = a1 + 64;
    while (v12 < v6)
    {
      if (__OFADD__(v12++, 1))
      {
        goto LABEL_38;
      }

      v16 = v42;
      v17 = v43;
      v18 = v44;
      sub_100009908(v42, v43, v44, a1);
      sub_10000C160();
      v45 = v7;
      v20 = v7[2];
      v19 = v7[3];
      if (v20 >= v19 >> 1)
      {
        sub_100007A14(v19 > 1, v20 + 1, 1);
        v11 = v38;
        v7 = v45;
      }

      v7[2] = v20 + 1;
      result = (*(v39 + 32))(v7 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v20, v11, v37);
      if (v40)
      {
        if (!v18)
        {
          goto LABEL_43;
        }

        if (sub_10000C620())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v6 = v35;
        sub_100009D1C(&qword_100014480, &qword_10000CEF8);
        v14 = sub_10000C550();
        sub_10000C670();
        result = v14(v41, 0);
      }

      else
      {
        if (v18)
        {
          goto LABEL_44;
        }

        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        v21 = 1 << *(a1 + 32);
        if (v16 >= v21)
        {
          goto LABEL_39;
        }

        v22 = v16 >> 6;
        v23 = *(v33 + 8 * (v16 >> 6));
        if (((v23 >> v16) & 1) == 0)
        {
          goto LABEL_40;
        }

        if (*(a1 + 36) != v17)
        {
          goto LABEL_41;
        }

        v24 = v23 & (-2 << (v16 & 0x3F));
        if (v24)
        {
          v21 = __clz(__rbit64(v24)) | v16 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v25 = v22 << 6;
          v26 = v22 + 1;
          v27 = (v32 + 8 * v22);
          while (v26 < (v21 + 63) >> 6)
          {
            v29 = *v27++;
            v28 = v29;
            v25 += 64;
            ++v26;
            if (v29)
            {
              result = sub_10000B0A4(v16, v17, 0);
              v21 = __clz(__rbit64(v28)) + v25;
              goto LABEL_34;
            }
          }

          result = sub_10000B0A4(v16, v17, 0);
        }

LABEL_34:
        v30 = *(a1 + 36);
        v42 = v21;
        v43 = v30;
        v44 = 0;
        v6 = v35;
      }

      v11 = v38;
      if (v12 == v6)
      {
        sub_10000B0A4(v42, v43, v44);
        return v7;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

void sub_1000042CC(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100009D1C(&qword_100014448, &qword_10000CED0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v120 = &v113 - v10;
  __chkstk_darwin(v9);
  v119 = &v113 - v11;
  v12 = sub_100009D1C(&qword_100014450, &qword_10000CED8);
  v129 = *(v12 - 8);
  v13 = *(v129 + 64);
  __chkstk_darwin(v12);
  v126 = (&v113 - v14);
  v137 = sub_10000C190();
  v15 = *(v137 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v137);
  v136 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v130 = (&v113 - v19);
  v20 = sub_100009D1C(&qword_100014458, &qword_10000CEE0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v133 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v131 = (&v113 - v24);
  v25 = type metadata accessor for ExtractedOrderSnapshot();
  v26 = v25[9];
  v27 = sub_10000C3A0();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v30 = v28 + 56;
  v113 = v26;
  (v29)(a2 + v26, 1, 1, v27);
  v114 = v25[11];
  (v29)(a2 + v114, 1, 1, v27);
  v115 = v25[15];
  v122 = v29;
  v123 = v27;
  v121 = v30;
  (v29)(a2 + v115, 1, 1, v27);
  v31 = [a1 trackedOrderIdentifier];
  v32 = sub_10000C4C0();
  v34 = v33;

  *a2 = v32;
  a2[1] = v34;
  v35 = [a1 trackedOrderIdentifier];
  sub_10000C4C0();

  v36 = [a1 orderContent];
  v37 = a2 + v25[5];
  sub_10000C130();
  v38 = [a1 orderContentModificationDate];
  v39 = a2 + v25[6];
  sub_10000C390();

  v40 = sub_10000C200();
  v41 = sub_100003EE4(v40);
  v135 = 0;

  v132 = sub_100009FC4(v41);

  isUniquelyReferenced_nonNull_native = sub_10000C220();
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_53;
  }

  v43 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v134 = v12;
    v118 = a2;
    v117 = a1;
    v124 = v8;
    v116 = v25;
    if (!v43)
    {

      a1 = &_swiftEmptyArrayStorage;
      goto LABEL_14;
    }

    v44 = isUniquelyReferenced_nonNull_native;
    v138 = &_swiftEmptyArrayStorage;
    sub_1000079D0(0, v43 & ~(v43 >> 63), 0);
    if (v43 < 0)
    {
      break;
    }

    v45 = 0;
    a1 = v138;
    v46 = v44;
    v47 = v44 & 0xC000000000000001;
    v48 = v130;
    v49 = v46;
    do
    {
      if (v47)
      {
        sub_10000C6E0();
      }

      else
      {
        v50 = *(v46 + 8 * v45 + 32);
      }

      sub_10000C1A0();
      v138 = a1;
      v52 = a1[2];
      v51 = a1[3];
      if (v52 >= v51 >> 1)
      {
        sub_1000079D0(v51 > 1, v52 + 1, 1);
        v48 = v130;
        a1 = v138;
      }

      ++v45;
      a1[2] = v52 + 1;
      (*(v15 + 32))(a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v52, v48, v137);
      v12 = v134;
      v46 = v49;
    }

    while (v43 != v45);

LABEL_14:
    v125 = v15 + 16;
    v53 = a1[2];
    v54 = v129;
    v129 += 48;
    v130 = (v54 + 56);
    v127 = v15 + 8;
    v128 = (v15 + 32);

    v55 = 0;
    a2 = a1;
    v25 = v132;
    v8 = v133;
    if (!v53)
    {
LABEL_15:
      v56 = 1;
      v55 = v53;
      goto LABEL_18;
    }

    while (v55 < a1[2])
    {
      v57 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v55;
      v58 = *(v12 + 48);
      v59 = v126;
      *v126 = v55;
      (*(v15 + 16))(v59 + v58, v57, v137);
      sub_10000AFCC(v59, v8, &qword_100014450, &qword_10000CED8);
      v56 = 0;
      ++v55;
LABEL_18:
      (*v130)(v8, v56, 1, v12);
      v60 = v131;
      sub_10000AFCC(v8, v131, &qword_100014458, &qword_10000CEE0);
      if ((*v129)(v60, 1, v12) == 1)
      {
        goto LABEL_26;
      }

      v8 = *v60;
      (*v128)(v136, v60 + *(v12 + 48), v137);
      v61 = sub_10000C170();

      v62 = v135;
      v12 = sub_10000A50C(v61, v25);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_native = sub_100008260(a2);
        a2 = isUniquelyReferenced_nonNull_native;
        if ((v8 & 0x8000000000000000) != 0)
        {
LABEL_25:
          __break(1u);
LABEL_26:

          v64 = v116;
          v65 = v118;
          *(v118 + v116[7]) = a2;
          v66 = v117;
          *(v65 + v64[8]) = [v117 isMarkedAsComplete];
          v67 = [v66 isMarkedAsCompleteModificationDate];
          if (v67)
          {
            v68 = v119;
            v69 = v67;
            sub_10000C390();

            v70 = 0;
            v72 = v123;
            v71 = v124;
            v73 = v122;
          }

          else
          {
            v70 = 1;
            v72 = v123;
            v71 = v124;
            v73 = v122;
            v68 = v119;
          }

          (v73)(v68, v70, 1, v72);
          sub_10000B034(v68, v65 + v113);
          *(v65 + v64[10]) = [v66 notificationsEnabled];
          v74 = [v66 notificationsEnabledModificationDate];
          if (v74)
          {
            v75 = v120;
            v76 = v74;
            sub_10000C390();

            v77 = v75;
          }

          else
          {
            v77 = v120;
          }

          v78 = v77;
          v73();
          sub_10000B034(v78, v65 + v114);
          v79 = [v66 merchantEmailMessageID];
          if (v79)
          {
            v80 = v79;
            v81 = sub_10000C4C0();
            v83 = v82;
          }

          else
          {
            v81 = 0;
            v83 = 0;
          }

          v84 = (v65 + v64[12]);
          *v84 = v81;
          v84[1] = v83;
          v85 = [v66 merchantEmailMessageIDHash];
          if (v85)
          {
            v86 = v85;
            v87 = sub_10000C4C0();
            v89 = v88;
          }

          else
          {
            v87 = 0;
            v89 = 0;
          }

          v90 = (v65 + v64[13]);
          *v90 = v87;
          v90[1] = v89;
          v91 = [v66 merchantEmailAddress];
          if (v91)
          {
            v92 = v91;
            v93 = sub_10000C4C0();
            v95 = v94;
          }

          else
          {
            v93 = 0;
            v95 = 0;
          }

          v96 = (v65 + v64[14]);
          *v96 = v93;
          v96[1] = v95;
          v97 = [v66 merchantEmailDateSent];
          if (v97)
          {
            v98 = v97;
            sub_10000C390();

            v99 = 0;
          }

          else
          {
            v99 = 1;
          }

          (v73)(v71, v99, 1, v72);
          sub_10000B034(v71, v65 + v115);
          v100 = [v66 merchantEmailDisplayName];
          if (v100)
          {
            v101 = v100;
            v102 = sub_10000C4C0();
            v104 = v103;
          }

          else
          {
            v102 = 0;
            v104 = 0;
          }

          v105 = (v65 + v64[16]);
          *v105 = v102;
          v105[1] = v104;
          v106 = [v66 recipientEmailAddress];
          if (v106)
          {
            v107 = v106;
            v108 = sub_10000C4C0();
            v110 = v109;
          }

          else
          {

            v108 = 0;
            v110 = 0;
          }

          v111 = (v65 + v64[17]);
          *v111 = v108;
          v111[1] = v110;
          return;
        }
      }

      if (v8 >= a2[2])
      {
        __break(1u);
        break;
      }

      v135 = v62;
      v63 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v8;
      sub_10000C180();
      isUniquelyReferenced_nonNull_native = (*(v15 + 8))(v136, v137);
      v8 = v133;
      v12 = v134;
      if (v55 == v53)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_53:
    v112 = isUniquelyReferenced_nonNull_native;
    v43 = sub_10000C750();
    isUniquelyReferenced_nonNull_native = v112;
  }

  __break(1u);
}

uint64_t sub_100004D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v51 = sub_10000C4F0();
  v48 = *(v51 - 8);
  v8 = *(v48 + 64);
  __chkstk_darwin();
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C340();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v54[0] = a2;
  *(&v54[0] + 1) = a3;

  v55._countAndFlagsBits = 0x6E6F736A2ELL;
  v55._object = 0xE500000000000000;
  sub_10000C510(v55);
  v49 = v15;
  sub_10000C320();

  v16 = *(a1 + 16);
  if (v16)
  {
    v44 = a4;
    v45 = v12;
    v46 = v11;
    v53 = &_swiftEmptyArrayStorage;
    sub_10000796C(0, v16, 0);
    v17 = v53;
    v50 = objc_opt_self();
    v18 = (v48 + 8);
    v19 = (a1 + 40);
    while (1)
    {
      v20 = *(v19 - 1);
      v21 = *v19;

      sub_10000C4E0();
      v22 = sub_10000C4D0();
      v24 = v23;
      (*v18)(v10, v51);
      if (v24 >> 60 == 15)
      {
        __break(1u);
      }

      isa = sub_10000C360().super.isa;
      sub_10000ACF0(v22, v24);
      v52 = 0;
      v26 = [v50 JSONObjectWithData:isa options:0 error:&v52];

      v27 = v52;
      if (!v26)
      {
        break;
      }

      sub_10000C5D0();

      swift_unknownObjectRelease();
      v53 = v17;
      v29 = v17[2];
      v28 = v17[3];
      if (v29 >= v28 >> 1)
      {
        sub_10000796C((v28 > 1), v29 + 1, 1);
        v17 = v53;
      }

      v17[2] = v29 + 1;
      sub_100009D64(v54, &v17[4 * v29 + 4]);
      v19 += 2;
      if (!--v16)
      {
        v12 = v45;
        v11 = v46;
        v32 = v44;
        goto LABEL_11;
      }
    }

    v30 = v27;
    sub_10000C300();

    swift_willThrow();
    (*(v45 + 8))(v49, v46);
  }

  else
  {
    v32 = a4;
LABEL_11:
    v33 = objc_opt_self();
    v34 = sub_10000C520().super.isa;

    *&v54[0] = 0;
    v35 = [v33 dataWithJSONObject:v34 options:3 error:v54];

    v36 = *&v54[0];
    if (v35)
    {
      v37 = sub_10000C370();
      v39 = v38;

      v40 = v49;
      v41 = v47;
      sub_10000C380();
      if (v41)
      {
        (*(v12 + 8))(v40, v11);
      }

      else
      {
        (*(v12 + 32))(v32, v40, v11);
      }

      return sub_100009F70(v37, v39);
    }

    else
    {
      v42 = v36;
      sub_10000C300();

      swift_willThrow();
      return (*(v12 + 8))(v49, v11);
    }
  }
}

uint64_t sub_100005224(void *a1)
{
  v2 = sub_10000C450();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    sub_10000C430();
    swift_errorRetain();
    v8 = sub_10000C440();
    v9 = sub_10000C560();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to read the order emails: %@", v10, 0xCu);
      sub_10000B7F0(v11, &qword_1000142C8, "h\n");
    }

    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t sub_1000053D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *(*(sub_10000C450() - 8) + 64);
  v6 = __chkstk_darwin();
  v7 = a3(v6);
  v9 = v8;
  swift_beginAccess();
  v10 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_100007860(0, *(v10 + 2) + 1, 1, v10);
    *(a2 + 16) = v10;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = sub_100007860((v12 > 1), v13 + 1, 1, v10);
  }

  *(v10 + 2) = v13 + 1;
  v14 = &v10[16 * v13];
  *(v14 + 4) = v7;
  *(v14 + 5) = v9;
  *(a2 + 16) = v10;
  return swift_endAccess();
}

uint64_t sub_10000565C(void *a1, uint64_t a2)
{
  v4 = sub_10000C450();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (*(a2 + 16) == 1 && ![a1 state])
  {
    sub_10000C430();
    v10 = sub_10000C440();
    v11 = sub_10000C570();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Successfully processed all cascade set updates. Updating bookmark.", v12, 2u);
    }

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    result = swift_beginAccess();
    *(a2 + 16) = 0;
  }

  return result;
}

void sub_1000057EC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  swift_unknownObjectRetain();
  v6(v7, a3);

  swift_unknownObjectRelease();
}

void sub_100005874(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_10000C450();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v67 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C3E0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 sharedItem];
  sub_100005FF8(a3, v16);
  v17 = [a1 sharedItemChangeType];
  if (v17 == 2)
  {
    v18 = sub_10000C3B0();
    v20 = v19;
    swift_beginAccess();
    sub_1000061FC(0, v18, v20);
    swift_endAccess();

    (*(v12 + 8))(v15, v11);
    return;
  }

  if (v17 == 1)
  {
    (*(v12 + 8))(v15, v11);

    return;
  }

  v61 = v8;
  if (v17)
  {
LABEL_36:
    sub_10000C740();
    __break(1u);
    return;
  }

  v63 = a4;
  v64 = v15;
  v21 = [a1 allLocalInstances];
  sub_100009D1C(&qword_1000143B0, &qword_10000CE78);
  v22 = sub_10000C530();

  if (v22 >> 62)
  {
LABEL_34:
    v23 = sub_10000C750();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v62 = v7;
  v66 = v16;
  v65 = v12;
  if (v23)
  {
    v12 = 0;
    v7 = v22 & 0xC000000000000001;
    v24 = &_swiftEmptyArrayStorage;
    v16 = &OrderExtractionDiagnosticExtension;
    do
    {
      v25 = v12;
      while (1)
      {
        if (v7)
        {
          v26 = sub_10000C6E0();
        }

        else
        {
          if (v25 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v26 = *(v22 + 8 * v25 + 32);
        }

        v27 = v26;
        v12 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v28 = [v26 metaContent];
        if (v28)
        {
          break;
        }

        ++v25;
        if (v12 == v23)
        {
          goto LABEL_26;
        }
      }

      v60 = v11;
      v29 = v28;
      v30 = [v28 sourceItemIdentifier];

      v59 = sub_10000C4C0();
      v32 = v31;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_100007860(0, *(v24 + 2) + 1, 1, v24);
      }

      v34 = *(v24 + 2);
      v33 = *(v24 + 3);
      if (v34 >= v33 >> 1)
      {
        v24 = sub_100007860((v33 > 1), v34 + 1, 1, v24);
      }

      *(v24 + 2) = v34 + 1;
      v35 = &v24[16 * v34];
      *(v35 + 4) = v59;
      *(v35 + 5) = v32;
      v11 = v60;
    }

    while (v12 != v23);
  }

  else
  {
    v24 = &_swiftEmptyArrayStorage;
  }

LABEL_26:

  if (*(v24 + 2))
  {
    v36 = *(v24 + 4);
    v37 = *(v24 + 5);
    swift_bridgeObjectRetain_n();

    v38 = v66;
    v39 = [(__objc2_class_ro *)v66 content];
    if (v39)
    {
      v40 = v39;

      objc_opt_self();
      v41 = swift_dynamicCastObjCClassUnconditional();
      sub_100009D1C(&qword_1000143B8, &qword_10000CE80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10000CE00;
      v69 = 0xD000000000000014;
      v70 = 0x800000010000D1D0;
      sub_10000C6A0();
      *(inited + 96) = &type metadata for String;
      *(inited + 72) = v36;
      *(inited + 80) = v37;
      v69 = 0x73746E65746E6F63;
      v70 = 0xE800000000000000;
      sub_10000C6A0();
      v43 = [v41 jsonDictionary];
      v44 = sub_10000C480();

      *(inited + 168) = sub_100009D1C(&qword_1000143A8, &qword_10000CE70);
      *(inited + 144) = v44;
      v45 = sub_10000A9EC(inited);
      swift_setDeallocating();
      sub_100009D1C(&qword_1000143C0, &qword_10000CE88);
      swift_arrayDestroy();
      v46 = v64;
      v47 = sub_10000C3B0();
      v49 = v48;
      v50 = v63;
      swift_beginAccess();
      v51 = *(v50 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = *(v50 + 16);
      *(v50 + 16) = 0x8000000000000000;
      sub_10000961C(v45, v47, v49, isUniquelyReferenced_nonNull_native);

      *(v50 + 16) = v68;
      swift_endAccess();

      (*(v65 + 8))(v46, v11);
      return;
    }

    __break(1u);
    goto LABEL_36;
  }

  v53 = v67;
  sub_10000C430();
  v54 = sub_10000C440();
  v55 = sub_10000C560();
  v56 = os_log_type_enabled(v54, v55);
  v57 = v66;
  if (v56)
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&_mh_execute_header, v54, v55, "Failed to find sourceItemIdentifier for added cascade set item.", v58, 2u);
  }

  (*(v61 + 8))(v53, v62);
  (*(v65 + 8))(v64, v11);
}

uint64_t sub_100005FF8(void *a1, uint64_t a2)
{
  v2 = [a1 prefixedSharedIdentifier:a2];
  v3 = sub_10000C370();
  v5 = v4;

  sub_10000C350();
  sub_10000C350();
  sub_10000C350();
  sub_10000C350();
  sub_10000C350();
  sub_10000C350();
  sub_10000C350();
  sub_10000C350();
  sub_10000C350();
  sub_10000C350();
  sub_10000C350();
  sub_10000C350();
  sub_10000C350();
  sub_10000C350();
  sub_10000C350();
  sub_10000C350();
  sub_10000C3C0();

  return sub_100009F70(v3, v5);
}

uint64_t sub_1000061FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_10000961C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_100007D88(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_100009798();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_10000946C(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_1000062F4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

id sub_10000638C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000063E8(char a1)
{
  result = 0x6E6F43726564726FLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0x6D6574496C69616DLL;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000022;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000024;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
    case 13:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

Swift::Int sub_1000065DC()
{
  v1 = *v0;
  sub_10000C860();
  sub_10000C870(v1);
  return sub_10000C880();
}

Swift::Int sub_100006650()
{
  v1 = *v0;
  sub_10000C860();
  sub_10000C870(v1);
  return sub_10000C880();
}

uint64_t sub_10000669C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000BC88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000066DC(uint64_t a1)
{
  v2 = sub_10000B6E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100006718(uint64_t a1)
{
  v2 = sub_10000B6E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100006754(void *a1)
{
  v3 = v1;
  v5 = sub_100009D1C(&qword_100014590, &qword_10000CF98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v37[-v8];
  v10 = a1[4];
  sub_10000AC28(a1, a1[3]);
  sub_10000B6E8();
  sub_10000C8A0();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v38) = 0;
  sub_10000C800();
  if (!v2)
  {
    v13 = type metadata accessor for ExtractedOrderSnapshot();
    v14 = v13[5];
    LOBYTE(v38) = 1;
    sub_10000C140();
    sub_10000B904(&qword_100014598, &type metadata accessor for ExtractedOrder);
    sub_10000C820();
    v15 = v13[6];
    LOBYTE(v38) = 2;
    sub_10000C3A0();
    sub_10000B904(&qword_1000145A0, &type metadata accessor for Date);
    sub_10000C820();
    v38 = *(v3 + v13[7]);
    v37[15] = 3;
    sub_100009D1C(&qword_1000145A8, &qword_10000CFA0);
    sub_10000B73C();
    sub_10000C820();
    v16 = *(v3 + v13[8]);
    LOBYTE(v38) = 4;
    sub_10000C810();
    v17 = v13[9];
    LOBYTE(v38) = 5;
    sub_10000C7F0();
    v18 = *(v3 + v13[10]);
    LOBYTE(v38) = 6;
    sub_10000C810();
    v19 = v13[11];
    LOBYTE(v38) = 7;
    sub_10000C7F0();
    v20 = (v3 + v13[12]);
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v38) = 8;
    sub_10000C7E0();
    v23 = (v3 + v13[13]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v38) = 9;
    sub_10000C7E0();
    v26 = (v3 + v13[14]);
    v27 = *v26;
    v28 = v26[1];
    LOBYTE(v38) = 10;
    sub_10000C7E0();
    v29 = v13[15];
    LOBYTE(v38) = 11;
    sub_10000C7F0();
    v30 = (v3 + v13[16]);
    v31 = *v30;
    v32 = v30[1];
    LOBYTE(v38) = 12;
    sub_10000C7E0();
    v33 = (v3 + v13[17]);
    v34 = *v33;
    v35 = v33[1];
    LOBYTE(v38) = 13;
    sub_10000C7E0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100006BCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = sub_100009D1C(&qword_100014448, &qword_10000CED0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v78 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v79 = &v73 - v8;
  __chkstk_darwin(v7);
  v80 = &v73 - v9;
  v10 = sub_10000C3A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v83 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C140();
  v81 = *(v14 - 8);
  v82 = v14;
  v15 = *(v81 + 64);
  __chkstk_darwin(v14);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_100009D1C(&qword_1000145C0, &qword_10000CFA8);
  v84 = *(v86 - 8);
  v18 = *(v84 + 64);
  __chkstk_darwin(v86);
  v20 = &v73 - v19;
  v21 = type metadata accessor for ExtractedOrderSnapshot();
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v25 = (&v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v11 + 56);
  v92 = *(v23 + 36);
  v26(v25 + v92, 1, 1, v10);
  v91 = *(v21 + 44);
  v26(v25 + v91, 1, 1, v10);
  v89 = *(v21 + 60);
  v90 = v25;
  v26(v25 + v89, 1, 1, v10);
  v27 = a1[3];
  v28 = a1[4];
  v88 = a1;
  sub_10000AC28(a1, v27);
  sub_10000B6E8();
  v85 = v20;
  v29 = v87;
  sub_10000C890();
  if (v29)
  {
    v33 = v90;
    sub_10000ACA4(v88);
LABEL_4:
    sub_10000B7F0(v33 + v92, &qword_100014448, &qword_10000CED0);
    sub_10000B7F0(v33 + v91, &qword_100014448, &qword_10000CED0);

    sub_10000B7F0(v33 + v89, &qword_100014448, &qword_10000CED0);
  }

  v30 = v83;
  v87 = v21;
  v75 = v11;
  v76 = v10;
  LOBYTE(v94) = 0;
  v31 = sub_10000C7B0();
  v33 = v90;
  *v90 = v31;
  v33[1] = v34;
  LOBYTE(v94) = 1;
  sub_10000B904(&qword_1000145C8, &type metadata accessor for ExtractedOrder);
  v35 = v82;
  sub_10000C7D0();
  v36 = v87;
  (*(v81 + 32))(v33 + v87[5], v17, v35);
  LOBYTE(v94) = 2;
  v37 = sub_10000B904(&qword_1000145D0, &type metadata accessor for Date);
  v38 = v76;
  sub_10000C7D0();
  v73 = v37;
  v74 = 0;
  (*(v75 + 32))(v33 + v36[6], v30, v38);
  sub_100009D1C(&qword_1000145A8, &qword_10000CFA0);
  v93 = 3;
  sub_10000B850();
  sub_10000C7D0();
  v39 = v84;
  v40 = v38;
  *(v33 + v36[7]) = v94;
  LOBYTE(v94) = 4;
  *(v33 + MEMORY[0x20]) = sub_10000C7C0() & 1;
  LOBYTE(v94) = 5;
  v41 = v80;
  sub_10000C7A0();
  sub_10000B034(v41, v33 + v92);
  LOBYTE(v94) = 6;
  *(v33 + v87[10]) = sub_10000C7C0() & 1;
  LOBYTE(v94) = 7;
  v45 = v79;
  v46 = v85;
  sub_10000C7A0();
  v83 = 0;
  v47 = v74;
  sub_10000B034(v45, v33 + v91);
  LOBYTE(v94) = 8;
  v48 = v83;
  v49 = sub_10000C790();
  v83 = v48;
  if (v48)
  {
    (*(v39 + 8))(v46, v86);
    goto LABEL_6;
  }

  v51 = (v33 + v87[12]);
  *v51 = v49;
  v51[1] = v50;
  LOBYTE(v94) = 9;
  v52 = v83;
  v53 = sub_10000C790();
  v83 = v52;
  if (v52)
  {
    (*(v84 + 8))(v85, v86);
    v40 = v76;
    v33 = v90;
    v47 = v74;
LABEL_6:
    sub_10000ACA4(v88);
    v42 = v33[1];

    v43 = v87;
    if (v47)
    {
LABEL_7:
      (*(v75 + 8))(v33 + v43[6], v40);
      v44 = *(v33 + v43[7]);

      goto LABEL_4;
    }

LABEL_8:
    (*(v81 + 8))(v33 + v43[5], v82);
    goto LABEL_7;
  }

  v55 = (v90 + v87[13]);
  *v55 = v53;
  v55[1] = v54;
  LOBYTE(v94) = 10;
  v56 = v83;
  v57 = sub_10000C790();
  v83 = v56;
  if (v56)
  {
    goto LABEL_16;
  }

  v59 = (v90 + v87[14]);
  *v59 = v57;
  v59[1] = v58;
  LOBYTE(v94) = 11;
  v60 = v83;
  sub_10000C7A0();
  v83 = v60;
  if (v60)
  {
    goto LABEL_16;
  }

  sub_10000B034(v78, v90 + v89);
  LOBYTE(v94) = 12;
  v61 = v83;
  v62 = sub_10000C790();
  v83 = v61;
  if (v61 || (v65 = (v90 + v87[16]), *v65 = v62, v65[1] = v63, LOBYTE(v94) = 13, v66 = v83, v67 = sub_10000C790(), (v83 = v66) != 0))
  {
LABEL_16:
    (*(v84 + 8))(v85, v86);
    sub_10000ACA4(v88);
    v33 = v90;
    v64 = v90[1];

    v40 = v76;
    v43 = v87;
    goto LABEL_8;
  }

  v69 = v67;
  v70 = v68;
  v71 = v90;
  v72 = (v90 + v87[17]);
  (*(v84 + 8))(v85, v86);
  *v72 = v69;
  v72[1] = v70;
  sub_10000B94C(v71, v77);
  sub_10000ACA4(v88);
  return sub_10000B9B0(v71);
}

size_t sub_100007684(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100009D1C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_100007860(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100009D1C(&qword_1000143D8, &qword_10000CEA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000796C(char *a1, int64_t a2, char a3)
{
  result = sub_100007A58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10000798C(size_t a1, int64_t a2, char a3)
{
  result = sub_100007B68(a1, a2, a3, *v3, &qword_100014490, &qword_10000CF08, type metadata accessor for ExtractedOrderSnapshot);
  *v3 = result;
  return result;
}

size_t sub_1000079D0(size_t a1, int64_t a2, char a3)
{
  result = sub_100007B68(a1, a2, a3, *v3, &qword_100014460, &qword_10000CEE8, &type metadata accessor for FoundInMailItem);
  *v3 = result;
  return result;
}

size_t sub_100007A14(size_t a1, int64_t a2, char a3)
{
  result = sub_100007B68(a1, a2, a3, *v3, &qword_100014488, &qword_10000CF00, &type metadata accessor for FoundInMailItem.OrderDetails);
  *v3 = result;
  return result;
}

char *sub_100007A58(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100009D1C(&qword_1000142D8, &qword_10000CE50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100007B68(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100009D1C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_100007D44(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C680(*(v2 + 40));

  return sub_100007E00(a1, v4);
}

unint64_t sub_100007D88(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10000C860();
  sub_10000C500();
  v6 = sub_10000C880();

  return sub_100007EC8(a1, a2, v6);
}

unint64_t sub_100007E00(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000AB78(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_10000C690();
      sub_10000ABD4(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100007EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_10000C830())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100007F80(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10000C150();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10000B904(&qword_100014468, &type metadata accessor for FoundInMailItem.OrderDetails);
  v36 = a2;
  v13 = sub_10000C490();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_10000B904(&qword_100014470, &type metadata accessor for FoundInMailItem.OrderDetails);
      v23 = sub_10000C4A0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1000089CC(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1000082AC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_10000C150();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin();
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100009D1C(&qword_100014478, &qword_10000CEF0);
  result = sub_10000C6C0();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_10000B904(&qword_100014468, &type metadata accessor for FoundInMailItem.OrderDetails);
      result = sub_10000C490();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

unint64_t *sub_100008608(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_10000A160(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1000086A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_10000C150();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100009D1C(&qword_100014478, &qword_10000CEF0);
  result = sub_10000C6D0();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_10000B904(&qword_100014468, &type metadata accessor for FoundInMailItem.OrderDetails);
    result = sub_10000C490();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000089CC(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_10000C150();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000082AC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100008C70();
      goto LABEL_12;
    }

    sub_100008EA8(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_10000B904(&qword_100014468, &type metadata accessor for FoundInMailItem.OrderDetails);
  v15 = sub_10000C490();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_10000B904(&qword_100014470, &type metadata accessor for FoundInMailItem.OrderDetails);
      v23 = sub_10000C4A0();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_10000C840();
  __break(1u);
  return result;
}

void *sub_100008C70()
{
  v1 = v0;
  v2 = sub_10000C150();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009D1C(&qword_100014478, &qword_10000CEF0);
  v7 = *v0;
  v8 = sub_10000C6B0();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
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

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_100008EA8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_10000C150();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100009D1C(&qword_100014478, &qword_10000CEF0);
  v10 = sub_10000C6C0();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_10000B904(&qword_100014468, &type metadata accessor for FoundInMailItem.OrderDetails);
      result = sub_10000C490();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
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

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1000091C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100009D1C(&qword_1000143C8, &qword_10000CE90);
  v38 = a2;
  result = sub_10000C770();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_10000C860();
      sub_10000C500();
      result = sub_10000C880();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10000946C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10000C600() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_10000C860();

      sub_10000C500();
      v13 = sub_10000C880();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10000961C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100007D88(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000091C4(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100007D88(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_10000C850();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100009798();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void *sub_100009798()
{
  v1 = v0;
  sub_100009D1C(&qword_1000143C8, &qword_10000CE90);
  v2 = *v0;
  v3 = sub_10000C760();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_100009908(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_10000C660();
      sub_10000C260();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10000C260();
    if (sub_10000C630() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_10000C640();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_10000C5A0(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_10000C5B0();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_100009B08(uint64_t a1)
{
  v2 = sub_10000C450();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_9;
  }

  v13[1] = 0xD00000000000002DLL;
  v13[2] = 0x800000010000D250;
  sub_10000C6A0();
  if (!*(a1 + 16) || (v7 = sub_100007D44(v14), (v8 & 1) == 0))
  {
    sub_10000ABD4(v14);
LABEL_9:
    v15 = 0u;
    v16 = 0u;
    goto LABEL_10;
  }

  sub_10000B164(*(a1 + 56) + 32 * v7, &v15);
  sub_10000ABD4(v14);
  if (!*(&v16 + 1))
  {
LABEL_10:
    sub_10000B7F0(&v15, &qword_1000144C0, &qword_10000CF28);
    goto LABEL_11;
  }

  if (swift_dynamicCast() && (v14[0] & 1) != 0)
  {
    return 1;
  }

LABEL_11:
  sub_10000C430();
  v10 = sub_10000C440();
  v11 = sub_10000C560();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "User did not give consent", v12, 2u);
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_100009D1C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

_OWORD *sub_100009D64(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100009D98()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100009DD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009D1C(&qword_1000143C8, &qword_10000CE90);
    v3 = sub_10000C780();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100007D88(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100009EEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009F04()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100009F70(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100009FC4(uint64_t a1)
{
  v2 = sub_10000C150();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_10000B904(&qword_100014468, &type metadata accessor for FoundInMailItem.OrderDetails);
  result = sub_10000C540();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_100007F80(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_10000A160(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = a2;
  v39 = a1;
  v6 = sub_10000C150();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v51 = &v38 - v13;
  v14 = 0;
  v44 = v12;
  v45 = a3;
  v15 = *(a3 + 56);
  v40 = a3 + 56;
  v41 = 0;
  v16 = 1 << *(a3 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v49 = v12 + 16;
  v50 = a4;
  v47 = a4 + 7;
  v20 = (v12 + 8);
  v43 = v19;
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v46 = (v18 - 1) & v18;
LABEL_13:
    v24 = v21 | (v14 << 6);
    v25 = *(v45 + 48);
    v26 = *(v44 + 72);
    v42 = v24;
    v48 = v26;
    v27 = *(v44 + 16);
    v27(v51, v25 + v26 * v24, v6);
    if (v50[2] && (v28 = v50, v29 = v50[5], sub_10000B904(&qword_100014468, &type metadata accessor for FoundInMailItem.OrderDetails), v30 = sub_10000C490(), v31 = -1 << *(v28 + 32), v32 = v30 & ~v31, ((*(v47 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
    {
      v33 = ~v31;
      while (1)
      {
        v27(v10, v50[6] + v32 * v48, v6);
        sub_10000B904(&qword_100014470, &type metadata accessor for FoundInMailItem.OrderDetails);
        v34 = sub_10000C4A0();
        v35 = *v20;
        (*v20)(v10, v6);
        if (v34)
        {
          break;
        }

        v32 = (v32 + 1) & v33;
        if (((*(v47 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      result = v35(v51, v6);
      *(v39 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
      v36 = __OFADD__(v41++, 1);
      v19 = v43;
      v18 = v46;
      if (v36)
      {
        __break(1u);
LABEL_22:
        v37 = v45;

        return sub_1000086A4(v39, v38, v41, v37);
      }
    }

    else
    {
LABEL_5:
      result = (*v20)(v51, v6);
      v19 = v43;
      v18 = v46;
    }
  }

  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      goto LABEL_22;
    }

    v23 = *(v40 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v46 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000A50C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000C150();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v51 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v56 = &v40 - v11;
  v12 = *(a1 + 32);
  v13 = v12 & 0x3F;
  v14 = ((1 << v12) + 63) >> 6;
  v15 = (8 * v14);

  if (v13 > 0xD)
  {
LABEL_27:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v39 = swift_slowAlloc();

      v37 = sub_100008608(v39, v14, a1, a2);

      return v37;
    }
  }

  v41 = v14;
  v42 = v3;
  v40 = &v40;
  __chkstk_darwin(v16);
  v43 = &v40 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v43, v15);
  v17 = 0;
  v18 = 0;
  v48 = v7;
  v49 = a1;
  v20 = *(a1 + 56);
  a1 += 56;
  v19 = v20;
  v44 = a1;
  v21 = 1 << *(a1 - 24);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v19;
  v24 = (v21 + 63) >> 6;
  v52 = a2 + 56;
  v54 = (v7 + 8);
  v55 = v7 + 16;
  v47 = v24;
  while (2)
  {
    v45 = v17;
    while (1)
    {
      v25 = v49;
      if (!v23)
      {
        v27 = v18;
        while (1)
        {
          v18 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          if (v18 >= v24)
          {
            goto LABEL_24;
          }

          v28 = *(v44 + 8 * v18);
          ++v27;
          if (v28)
          {
            v26 = __clz(__rbit64(v28));
            v50 = (v28 - 1) & v28;
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_27;
      }

      v26 = __clz(__rbit64(v23));
      v50 = (v23 - 1) & v23;
LABEL_15:
      v29 = v26 | (v18 << 6);
      v30 = *(v49 + 48);
      v31 = *(v48 + 72);
      v46 = v29;
      v53 = v31;
      v15 = *(v48 + 16);
      v15(v56, v30 + v31 * v29, v6);
      if (*(a2 + 16))
      {
        v32 = *(a2 + 40);
        sub_10000B904(&qword_100014468, &type metadata accessor for FoundInMailItem.OrderDetails);
        v7 = v56;
        v33 = sub_10000C490();
        v34 = -1 << *(a2 + 32);
        v14 = v33 & ~v34;
        if ((*(v52 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
        {
          break;
        }
      }

LABEL_7:
      (*v54)(v56, v6);
      v24 = v47;
      v23 = v50;
    }

    a1 = ~v34;
    while (1)
    {
      v35 = a2;
      v3 = v51;
      v15(v51, *(a2 + 48) + v14 * v53, v6);
      sub_10000B904(&qword_100014470, &type metadata accessor for FoundInMailItem.OrderDetails);
      v7 = sub_10000C4A0();
      v36 = *v54;
      (*v54)(v3, v6);
      if (v7)
      {
        break;
      }

      v14 = (v14 + 1) & a1;
      a2 = v35;
      if (((*(v52 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v36(v56, v6);
    v24 = v47;
    *&v43[(v46 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v46;
    v17 = v45 + 1;
    a2 = v35;
    v23 = v50;
    if (!__OFADD__(v45, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_24:
  v37 = sub_1000086A4(v43, v41, v45, v25);

  return v37;
}

unint64_t sub_10000A9EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009D1C(&qword_1000143D0, &qword_10000CE98);
    v3 = sub_10000C780();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000AB08(v4, v13);
      result = sub_100007D44(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100009D64(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000AB08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009D1C(&qword_1000143C0, &qword_10000CE88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_10000AC28(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000ACA4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000ACF0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100009F70(a1, a2);
  }

  return a1;
}

uint64_t type metadata accessor for ExtractedOrderSnapshot()
{
  result = qword_100014650;
  if (!qword_100014650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000ADC0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000AE08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrderSnapshot();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000AE6C()
{
  result = qword_100014428;
  if (!qword_100014428)
  {
    sub_10000AED0(&qword_100014420, &qword_10000CEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014428);
  }

  return result;
}

uint64_t sub_10000AED0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000AF18()
{
  result = qword_100014438;
  if (!qword_100014438)
  {
    sub_10000AED0(&qword_100014430, &qword_10000CEC8);
    sub_10000B904(&qword_100014440, type metadata accessor for ExtractedOrderSnapshot);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014438);
  }

  return result;
}

uint64_t sub_10000AFCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100009D1C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000B034(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009D1C(&qword_100014448, &qword_10000CED0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B0A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_10000B0B0()
{
  result = qword_1000144A8;
  if (!qword_1000144A8)
  {
    sub_10000AED0(&qword_1000144A0, &qword_10000CF18);
    sub_10000B904(&qword_1000144B0, &type metadata accessor for CascadeExtractedOrder);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144A8);
  }

  return result;
}

uint64_t sub_10000B164(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000B1D4(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_10000C140();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_10000C3A0();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_100009D1C(&qword_100014448, &qword_10000CED0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_10000B360(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_10000C140();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10000C3A0();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_100009D1C(&qword_100014448, &qword_10000CED0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

void sub_10000B4D8()
{
  sub_10000C140();
  if (v0 <= 0x3F)
  {
    sub_10000C3A0();
    if (v1 <= 0x3F)
    {
      sub_10000B634(319, &qword_100014520, &type metadata accessor for FoundInMailItem, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_10000B634(319, &qword_100014528, &type metadata accessor for Date, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10000B698();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10000B634(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10000B698()
{
  if (!qword_100014530)
  {
    v0 = sub_10000C5C0();
    if (!v1)
    {
      atomic_store(v0, &qword_100014530);
    }
  }
}

unint64_t sub_10000B6E8()
{
  result = qword_100014760[0];
  if (!qword_100014760[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100014760);
  }

  return result;
}

unint64_t sub_10000B73C()
{
  result = qword_1000145B0;
  if (!qword_1000145B0)
  {
    sub_10000AED0(&qword_1000145A8, &qword_10000CFA0);
    sub_10000B904(&qword_1000145B8, &type metadata accessor for FoundInMailItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000145B0);
  }

  return result;
}

uint64_t sub_10000B7F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100009D1C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_10000B850()
{
  result = qword_1000145D8;
  if (!qword_1000145D8)
  {
    sub_10000AED0(&qword_1000145A8, &qword_10000CFA0);
    sub_10000B904(&unk_1000145E0, &type metadata accessor for FoundInMailItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000145D8);
  }

  return result;
}

uint64_t sub_10000B904(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000B94C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrderSnapshot();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B9B0(uint64_t a1)
{
  v2 = type metadata accessor for ExtractedOrderSnapshot();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ExtractedOrderSnapshot.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExtractedOrderSnapshot.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000BB84()
{
  result = qword_100014870[0];
  if (!qword_100014870[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100014870);
  }

  return result;
}

unint64_t sub_10000BBDC()
{
  result = qword_100014980;
  if (!qword_100014980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014980);
  }

  return result;
}

unint64_t sub_10000BC34()
{
  result = qword_100014988[0];
  if (!qword_100014988[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100014988);
  }

  return result;
}

uint64_t sub_10000BC88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x800000010000D280 == a2;
  if (v3 || (sub_10000C830() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F43726564726FLL && a2 == 0xEC000000746E6574 || (sub_10000C830() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000010000D2A0 == a2 || (sub_10000C830() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D6574496C69616DLL && a2 == 0xE900000000000073 || (sub_10000C830() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010000D2C0 == a2 || (sub_10000C830() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000022 && 0x800000010000D2E0 == a2 || (sub_10000C830() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010000D310 == a2 || (sub_10000C830() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000024 && 0x800000010000D330 == a2 || (sub_10000C830() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010000D360 == a2 || (sub_10000C830() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010000D380 == a2 || (sub_10000C830() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010000D3A0 == a2 || (sub_10000C830() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010000D3C0 == a2 || (sub_10000C830() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010000D3E0 == a2 || (sub_10000C830() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010000D400 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_10000C830();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}