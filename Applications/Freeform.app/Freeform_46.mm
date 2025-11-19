uint64_t sub_1007C1DB4(unsigned __int8 a1, uint64_t a2, void (*a3)(void *), uint64_t a4, int64_t a5, unint64_t a6)
{
  v37 = a2;
  v38 = a6;
  v35 = a5;
  v36 = a4;
  v9 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for CodingUserInfoKey();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  v16 = sub_1005B981C(&qword_101A006F0);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v6)
  {
    v34 = a3;
    v21 = v41;
    if (v41)
    {
      v16 = v40;
    }

    else
    {
      v21 = v38;
      if (!v38)
      {
        if (a1 <= 1u)
        {
          if (a1)
          {
            v22 = 0xE500000000000000;
            v23 = 0x656C616373;
          }

          else
          {
            v22 = 0xE600000000000000;
            v23 = 0x676E69727473;
          }
        }

        else if (a1 == 2)
        {
          v22 = 0xE600000000000000;
          v23 = 0x74657366666FLL;
        }

        else if (a1 == 3)
        {
          v22 = 0xEF7265696669746ELL;
          v23 = 0x6564695F65707974;
        }

        else
        {
          v22 = 0xE700000000000000;
          v23 = 0x6E6F6973726576;
        }

        v24 = KeyedDecodingContainer.codingPath.getter();
        v16 = *(v24 + 16);
        if (v16)
        {
          v37 = v23;
          v38 = v22;
          v40 = _swiftEmptyArrayStorage;
          sub_100034080(0, v16, 0);
          v25 = v40;
          v26 = v24 + 32;
          do
          {
            sub_10000630C(v26, v39);
            sub_100020E58(v39, v39[3]);
            v27 = dispatch thunk of CodingKey.stringValue.getter();
            v29 = v28;
            sub_100005070(v39);
            v40 = v25;
            v31 = v25[2];
            v30 = v25[3];
            if (v31 >= v30 >> 1)
            {
              sub_100034080((v30 > 1), v31 + 1, 1);
              v25 = v40;
            }

            v25[2] = v31 + 1;
            v32 = &v25[2 * v31];
            v32[4] = v27;
            v32[5] = v29;
            v26 += 40;
            --v16;
          }

          while (v16);

          v23 = v37;
          v22 = v38;
        }

        else
        {

          v25 = _swiftEmptyArrayStorage;
        }

        sub_1007CDECC();
        swift_allocError();
        *v33 = v23;
        v33[1] = v22;
        v33[2] = v25;
        swift_willThrow();
        goto LABEL_13;
      }

      v16 = v35;
    }

    v39[0] = v16;
    v39[1] = v21;
    if (v34)
    {
      v34(v39);
    }

    return v16;
  }

  if (!v38)
  {
LABEL_13:
    swift_willThrow();
    return v16;
  }

  CodingUserInfoKey.init(rawValue:)();
  result = (*(v13 + 48))(v11, 1, v12);
  if (result != 1)
  {
    (*(v13 + 32))(v15, v11, v12);
    v18 = v37;
    if (*(v37 + 16) && (v19 = sub_1007C8514(v15), (v20 & 1) != 0))
    {
      sub_100064288(*(v18 + 56) + 32 * v19, v39);
      (*(v13 + 8))(v15, v12);
      if (swift_dynamicCast() && (v40 & 1) != 0)
      {

        return v35;
      }
    }

    else
    {
      (*(v13 + 8))(v15, v12);
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007C226C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v45 = a4;
  v46 = a3;
  v47 = a2;
  v10 = *a5;
  v50 = *(a5 + 8);
  v51 = v10;
  v11 = *(a5 + 24);
  v49 = *(a5 + 16);
  v52 = v11;
  LODWORD(v53) = *(a5 + 32);
  v12 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v12 - 8);
  v14 = &v43 - v13;
  v15 = type metadata accessor for CodingUserInfoKey();
  v48 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  sub_1005B981C(&qword_101A006D8);
  sub_1007CE420();
  result = KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v44 = a6;
  if (!v6)
  {
    v19 = v61;
    if (v61 == 255)
    {
      v19 = v53;
      if (v53 == 255)
      {
        if (a1 <= 1u)
        {
          if (a1)
          {
            v30 = 0xE600000000000000;
            v31 = 0x74657366666FLL;
          }

          else
          {
            v30 = 0xE500000000000000;
            v31 = 0x656C616373;
          }
        }

        else if (a1 == 2)
        {
          v30 = 0xE800000000000000;
          v31 = 0x656372756F736572;
        }

        else if (a1 == 3)
        {
          v30 = 0xEF7265696669746ELL;
          v31 = 0x6564695F65707974;
        }

        else
        {
          v30 = 0xE700000000000000;
          v31 = 0x6E6F6973726576;
        }

        v32 = KeyedDecodingContainer.codingPath.getter();
        v33 = *(v32 + 16);
        if (v33)
        {
          v52 = v31;
          v53 = v30;
          v57 = _swiftEmptyArrayStorage;
          sub_100034080(0, v33, 0);
          v34 = v57;
          v35 = v32 + 32;
          do
          {
            sub_10000630C(v35, v54);
            sub_100020E58(v54, v55);
            v36 = dispatch thunk of CodingKey.stringValue.getter();
            v38 = v37;
            sub_100005070(v54);
            v57 = v34;
            v40 = v34[2];
            v39 = v34[3];
            if (v40 >= v39 >> 1)
            {
              sub_100034080((v39 > 1), v40 + 1, 1);
              v34 = v57;
            }

            v34[2] = v40 + 1;
            v41 = &v34[2 * v40];
            v41[4] = v36;
            v41[5] = v38;
            v35 += 40;
            --v33;
          }

          while (v33);

          v31 = v52;
          v30 = v53;
        }

        else
        {

          v34 = _swiftEmptyArrayStorage;
        }

        sub_1007CDECC();
        swift_allocError();
        *v42 = v31;
        v42[1] = v30;
        v42[2] = v34;
        swift_willThrow();
        return swift_willThrow();
      }

      v25 = v50;
      v28 = v51;
      v26 = v49;
      result = sub_10067F0D8();
      v24 = v28;
      v27 = v52;
    }

    else
    {
      v26 = v59;
      v27 = v60;
      v24 = v57;
      v25 = v58;
    }

    v54[0] = v24;
    v54[1] = v25;
    v54[2] = v26;
    v55 = v27;
    LOBYTE(v56) = v19 & 1;
    if (v46)
    {
      v43 = v27;
      result = v46(v54);
      v27 = v43;
    }

    goto LABEL_18;
  }

  v19 = v53;
  if (v53 == 255)
  {
    return swift_willThrow();
  }

  v46 = 0;
  sub_10067F0D8();
  CodingUserInfoKey.init(rawValue:)();
  v20 = v48;
  result = (*(v48 + 48))(v14, 1, v15);
  if (result != 1)
  {
    (*(v20 + 32))(v17, v14, v15);
    v21 = v47;
    if (*(v47 + 16) && (v22 = sub_1007C8514(v17), (v23 & 1) != 0))
    {
      sub_100064288(*(v21 + 56) + 32 * v22, v54);
      (*(v20 + 8))(v17, v15);
      if (swift_dynamicCast() && (v57 & 1) != 0)
      {

        v25 = v50;
        v24 = v51;
        v26 = v49;
        v27 = v52;
LABEL_18:
        v29 = v44;
        *v44 = v24;
        v29[1] = v25;
        v29[2] = v26;
        v29[3] = v27;
        *(v29 + 32) = v19 & 1;
        return result;
      }
    }

    else
    {
      (*(v20 + 8))(v17, v15);
    }

    sub_10000CAAC(a5, &qword_101A006E8);
    return swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_1007C27D0(unsigned __int8 a1, uint64_t a2, void (*a3)(void *), uint64_t a4, unint64_t a5)
{
  v38 = a5;
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v7 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - v8;
  v10 = type metadata accessor for CodingUserInfoKey();
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  sub_1005B981C(&qword_101A00640);
  sub_1005B981C(&qword_101A00648);
  sub_1007CE1D8(&qword_101A00650, &qword_101A00640, &unk_10147C758, sub_1007CE254);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v5)
  {
    v20 = v34;
    v14 = v40;
    if (v40)
    {
      v39[0] = v40;
      if (!v34)
      {
        return v14;
      }
    }

    else
    {
      v14 = v38;
      if (!v38)
      {
        if (a1 <= 3u)
        {
          if (a1 > 1u)
          {
            if (a1 == 2)
            {
              v21 = 0xE900000000000065;
            }

            else
            {
              v21 = 0xEE00656E6F6E5F65;
            }

            v22 = 0x6D616E5F746E6F66;
          }

          else
          {
            if (a1)
            {
              v21 = 0xEF656E6F6E5F726FLL;
            }

            else
            {
              v21 = 0xEA0000000000726FLL;
            }

            v22 = 0x6C6F635F746E6F66;
          }
        }

        else if (a1 <= 5u)
        {
          if (a1 == 4)
          {
            v21 = 0x80000001015525A0;
            v22 = 0xD000000000000011;
          }

          else
          {
            v21 = 0xE600000000000000;
            v22 = 0x776F64616873;
          }
        }

        else if (a1 == 6)
        {
          v21 = 0xE600000000000000;
          v22 = 0x736C6576656CLL;
        }

        else if (a1 == 7)
        {
          v21 = 0xEF7265696669746ELL;
          v22 = 0x6564695F65707974;
        }

        else
        {
          v21 = 0xE700000000000000;
          v22 = 0x6E6F6973726576;
        }

        v23 = KeyedDecodingContainer.codingPath.getter();
        v14 = *(v23 + 16);
        if (v14)
        {
          v37 = v22;
          v38 = v21;
          v40 = _swiftEmptyArrayStorage;
          sub_100034080(0, v14, 0);
          v24 = v40;
          v25 = v23 + 32;
          do
          {
            sub_10000630C(v25, v39);
            sub_100020E58(v39, v39[3]);
            v26 = dispatch thunk of CodingKey.stringValue.getter();
            v28 = v27;
            sub_100005070(v39);
            v40 = v24;
            v30 = v24[2];
            v29 = v24[3];
            if (v30 >= v29 >> 1)
            {
              sub_100034080((v29 > 1), v30 + 1, 1);
              v24 = v40;
            }

            v24[2] = v30 + 1;
            v31 = &v24[2 * v30];
            v31[4] = v26;
            v31[5] = v28;
            v25 += 40;
            --v14;
          }

          while (v14);

          v22 = v37;
          v21 = v38;
        }

        else
        {

          v24 = _swiftEmptyArrayStorage;
        }

        sub_1007CDECC();
        swift_allocError();
        *v32 = v22;
        v32[1] = v21;
        v32[2] = v24;
        swift_willThrow();
        goto LABEL_14;
      }

      v39[0] = v14;
      if (!v20)
      {
        return v14;
      }
    }

    v20(v39);
    return v14;
  }

  v13 = v10;
  v15 = v37;
  v14 = v38;
  if (!v38)
  {
LABEL_14:
    swift_willThrow();
    return v14;
  }

  CodingUserInfoKey.init(rawValue:)();
  result = (*(v15 + 48))(v9, 1, v13);
  if (result != 1)
  {
    (*(v15 + 32))(v12, v9, v13);
    v17 = v36;
    if (*(v36 + 16) && (v18 = sub_1007C8514(v12), (v19 & 1) != 0))
    {
      sub_100064288(*(v17 + 56) + 32 * v18, v39);
      (*(v15 + 8))(v12, v13);
      if (swift_dynamicCast() && (v40 & 1) != 0)
      {

        return v14;
      }
    }

    else
    {
      (*(v15 + 8))(v12, v13);
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007C2D58(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v36 = a5;
  v33[0] = a3;
  v33[1] = a4;
  v34 = a2;
  v7 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v7 - 8);
  v9 = v33 - v8;
  v37 = type metadata accessor for CodingUserInfoKey();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  sub_1005B981C(&qword_101A00608);
  sub_1005B981C(&qword_101A00610);
  sub_1007CEAC4(&qword_101A00618, &qword_101A00608);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v5)
  {
    v19 = v33[0];
    v13 = v39;
    if (v39)
    {
      goto LABEL_12;
    }

    v13 = v36;
    if (v36)
    {

LABEL_12:
      v38[0] = v13;
      if (v19)
      {
        v19(v38);
      }

      return v13;
    }

    if (a1 <= 1u)
    {
      if (!a1)
      {
        v20 = 0xE500000000000000;
        v21 = 0x746E756F63;
LABEL_28:
        v23 = KeyedDecodingContainer.codingPath.getter();
        v13 = *(v23 + 16);
        if (v13)
        {
          v36 = v21;
          v37 = v20;
          v39 = _swiftEmptyArrayStorage;
          sub_100034080(0, v13, 0);
          v24 = v39;
          v25 = v23 + 32;
          do
          {
            sub_10000630C(v25, v38);
            sub_100020E58(v38, v38[3]);
            v26 = dispatch thunk of CodingKey.stringValue.getter();
            v28 = v27;
            sub_100005070(v38);
            v39 = v24;
            v30 = v24[2];
            v29 = v24[3];
            if (v30 >= v29 >> 1)
            {
              sub_100034080((v29 > 1), v30 + 1, 1);
              v24 = v39;
            }

            v24[2] = v30 + 1;
            v31 = &v24[2 * v30];
            v31[4] = v26;
            v31[5] = v28;
            v25 += 40;
            --v13;
          }

          while (v13);

          v21 = v36;
          v20 = v37;
        }

        else
        {

          v24 = _swiftEmptyArrayStorage;
        }

        sub_1007CDECC();
        swift_allocError();
        *v32 = v21;
        v32[1] = v20;
        v32[2] = v24;
        swift_willThrow();
        goto LABEL_16;
      }

      v22 = 0x6E6D756C6F63;
    }

    else
    {
      if (a1 != 2)
      {
        if (a1 == 3)
        {
          v20 = 0xEF7265696669746ELL;
          v21 = 0x6564695F65707974;
        }

        else
        {
          v20 = 0xE700000000000000;
          v21 = 0x6E6F6973726576;
        }

        goto LABEL_28;
      }

      v22 = 0x726574747567;
    }

    v21 = v22 & 0xFFFFFFFFFFFFLL | 0x775F000000000000;
    v20 = 0xED00007368746469;
    goto LABEL_28;
  }

  v12 = v37;
  v14 = v35;
  v13 = v36;
  if (!v36)
  {
    goto LABEL_16;
  }

  CodingUserInfoKey.init(rawValue:)();
  result = (*(v14 + 48))(v9, 1, v12);
  if (result != 1)
  {
    (*(v14 + 32))(v11, v9, v12);
    v16 = v34;
    if (*(v34 + 16) && (v17 = sub_1007C8514(v11), (v18 & 1) != 0))
    {
      sub_100064288(*(v16 + 56) + 32 * v17, v38);
      (*(v14 + 8))(v11, v12);
      if (swift_dynamicCast() && (v39 & 1) != 0)
      {

        return v13;
      }
    }

    else
    {
      (*(v14 + 8))(v11, v12);
    }

LABEL_16:
    swift_willThrow();
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007C3244@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t (*a3)(__int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40[1] = a4;
  v41 = a2;
  v43 = a3;
  v40[0] = a6;
  v8 = *(a5 + 48);
  v73 = *(a5 + 32);
  v74 = v8;
  v75 = *(a5 + 64);
  v9 = *(a5 + 16);
  v71 = *a5;
  v72 = v9;
  v10 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v10 - 8);
  v42 = v40 - v11;
  v12 = type metadata accessor for CodingUserInfoKey();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  v16 = sub_1005B981C(&qword_101A00580);
  sub_1007CDE1C();
  v17 = v76;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v17)
  {
    result = v16;
    v23 = v43;
    if (*(&v56 + 1) >> 1 == 0xFFFFFFFFLL && v59 < 2u)
    {
      if (*(a5 + 24) >> 1 == 0xFFFFFFFFLL && *(a5 + 64) < 2u)
      {
        if (a1 <= 1u)
        {
          if (a1)
          {
            v24 = 0xEB00000000746E65;
            v25 = 0x646E695F74786574;
          }

          else
          {
            v24 = 0xEC000000746E6564;
            v25 = 0x6E695F6C6562616CLL;
          }
        }

        else if (a1 == 2)
        {
          v24 = 0xE500000000000000;
          v25 = 0x6C6562616CLL;
        }

        else if (a1 == 3)
        {
          v24 = 0xEF7265696669746ELL;
          v25 = 0x6564695F65707974;
        }

        else
        {
          v24 = 0xE700000000000000;
          v25 = 0x6E6F6973726576;
        }

        v29 = KeyedDecodingContainer.codingPath.getter();
        v30 = *(v29 + 16);
        if (v30)
        {
          v43 = v25;
          v76 = v24;
          v44 = _swiftEmptyArrayStorage;
          sub_100034080(0, v30, 0);
          v31 = v44;
          v42 = v29;
          v32 = v29 + 32;
          do
          {
            sub_10000630C(v32, &v45);
            sub_100020E58(&v45, *(&v46 + 1));
            v33 = dispatch thunk of CodingKey.stringValue.getter();
            v35 = v34;
            sub_100005070(&v45);
            v44 = v31;
            v37 = v31[2];
            v36 = v31[3];
            if (v37 >= v36 >> 1)
            {
              sub_100034080((v36 > 1), v37 + 1, 1);
              v31 = v44;
            }

            v31[2] = v37 + 1;
            v38 = &v31[2 * v37];
            v38[4] = v33;
            v38[5] = v35;
            v32 += 40;
            --v30;
          }

          while (v30);

          v24 = v76;
          v25 = v43;
        }

        else
        {

          v31 = _swiftEmptyArrayStorage;
        }

        sub_1007CDECC();
        swift_allocError();
        *v39 = v25;
        v39[1] = v24;
        v39[2] = v31;
        swift_willThrow();
        return swift_willThrow();
      }

      v47 = v73;
      v48 = v74;
      v49 = v75;
      v45 = v71;
      v46 = v72;
      result = sub_1007CDE70(&v45, &v44);
      v52 = v73;
      v53 = v74;
      v54 = v75;
      v50 = v71;
      v51 = v72;
    }

    else
    {
      v50 = v55;
      v51 = v56;
      v52 = v57;
      v53 = v58;
      v54 = v59;
    }

    v47 = v52;
    v48 = v53;
    v49 = v54;
    v45 = v50;
    v46 = v51;
    v62 = v52;
    v63 = v53;
    v64 = v54;
    v60 = v50;
    v61 = v51;
    if (v23)
    {
      result = v23(&v60);
    }

    v68 = v47;
    v69 = v48;
    v70 = v49;
    v66 = v45;
    v67 = v46;
    goto LABEL_25;
  }

  if (*(a5 + 24) >> 1 == 0xFFFFFFFFLL && *(a5 + 64) < 2u)
  {
    return swift_willThrow();
  }

  v57 = v73;
  v58 = v74;
  v59 = v75;
  v55 = v71;
  v56 = v72;
  v62 = v73;
  v63 = v74;
  v64 = v75;
  v60 = v71;
  v61 = v72;
  sub_1007CDE70(&v60, &v50);
  v18 = v42;
  CodingUserInfoKey.init(rawValue:)();
  result = (*(v13 + 48))(v18, 1, v12);
  if (result != 1)
  {
    (*(v13 + 32))(v15, v18, v12);
    v20 = v41;
    if (*(v41 + 16) && (v21 = sub_1007C8514(v15), (v22 & 1) != 0))
    {
      sub_100064288(*(v20 + 56) + 32 * v21, &v45);
      (*(v13 + 8))(v15, v12);
      if (swift_dynamicCast() && (v50 & 1) != 0)
      {

        v68 = v57;
        v69 = v58;
        v70 = v59;
        v66 = v55;
        v67 = v56;
LABEL_25:
        v26 = v40[0];
        v27 = v69;
        *(v40[0] + 32) = v68;
        *(v26 + 48) = v27;
        *(v26 + 64) = v70;
        v28 = v67;
        *v26 = v66;
        *(v26 + 16) = v28;
        return result;
      }
    }

    else
    {
      (*(v13 + 8))(v15, v12);
    }

    sub_10000CAAC(a5, &qword_101A00590);
    return swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t TSContentLanguage.Models.Textbox.encode(to:)(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v1;
  v5 = v4;
  v6 = sub_1005B981C(&qword_101A00428);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24[-v8];
  sub_100020E58(v5, v5[3]);
  sub_1007C7E18();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v30[0] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v10 = *(v3 + 48);
    v11 = *(v3 + 56);
    v12 = *(v3 + 58);
    v13 = *(v3 + 32);
    *v30 = *(v3 + 16);
    *&v30[16] = v13;
    *&v30[32] = v10;
    v30[42] = v12;
    *&v30[40] = v11;
    v27[0] = 1;
    sub_1007C869C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v30[0] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v30[0] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = *(v3 + 128);
    v15 = *(v3 + 96);
    v44 = *(v3 + 80);
    v45 = v15;
    v46 = *(v3 + 112);
    v47 = v14;
    v43 = 4;
    sub_1007C86F0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = *(v3 + 248);
    v41[6] = *(v3 + 232);
    v41[7] = v16;
    v17 = *(v3 + 184);
    v41[2] = *(v3 + 168);
    v41[3] = v17;
    v18 = *(v3 + 216);
    v41[4] = *(v3 + 200);
    v41[5] = v18;
    v19 = *(v3 + 152);
    v41[0] = *(v3 + 136);
    v41[1] = v19;
    *v42 = *(v3 + 264);
    *&v42[14] = *(v3 + 278);
    v38 = *(v3 + 232);
    v39 = *(v3 + 248);
    v40[0] = *(v3 + 264);
    *(v40 + 14) = *(v3 + 278);
    v20 = *(v3 + 184);
    v34 = *(v3 + 168);
    v35 = v20;
    v21 = *(v3 + 216);
    v36 = *(v3 + 200);
    v37 = v21;
    v22 = *(v3 + 152);
    v32 = *(v3 + 136);
    v33 = v22;
    v31 = 5;
    sub_10000BE14(v41, v30, &qword_101A003D0);
    sub_1007C8744();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v28[6] = v38;
    v28[7] = v39;
    v29[0] = v40[0];
    *(v29 + 14) = *(v40 + 14);
    v28[2] = v34;
    v28[3] = v35;
    v28[4] = v36;
    v28[5] = v37;
    v28[0] = v32;
    v28[1] = v33;
    sub_10000CAAC(v28, &qword_101A003D0);
    memcpy(v30, (v3 + 296), sizeof(v30));
    memcpy(v27, (v3 + 296), sizeof(v27));
    v26[1479] = 6;
    sub_10000BE14(v30, v26, &qword_101A003D8);
    sub_1007C8798();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    memcpy(v26, v27, 0x5C5uLL);
    sub_10000CAAC(v26, &qword_101A003D8);
    type metadata accessor for TSContentLanguage.Models.Textbox();
    LOBYTE(v25) = 7;
    type metadata accessor for TSContentLanguage.Models.Text();
    sub_10003EA68(&qword_101A00450, type metadata accessor for TSContentLanguage.Models.Text);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v25) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (qword_1019F1580 != -1)
    {
      swift_once();
    }

    v25 = static TSContentLanguage.Models.Textbox.version;
    v24[7] = 9;
    type metadata accessor for TSCLVersion();
    sub_10003EA68(&qword_101A00458, type metadata accessor for TSCLVersion);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t TSContentLanguage.Models.Textbox.isEquivalent(to:)(uint64_t a1)
{
  v3 = *(v1 + 56) | (*(v1 + 58) << 16);
  v4 = *(a1 + 56) | (*(a1 + 58) << 16);
  v5 = *(a1 + 56);
  if (*(v1 + 56) == 2)
  {
    if (v5 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == 2)
    {
      return 0;
    }

    v8 = *(v1 + 24);
    v10 = *(v1 + 32);
    v9 = *(v1 + 40);
    v11 = *(v1 + 48);
    v12 = *(a1 + 24);
    v14 = *(a1 + 32);
    v13 = *(a1 + 40);
    v15 = *(a1 + 48);
    if (!sub_1007C87EC(*(v1 + 16), *(a1 + 16)) || !sub_1007C87EC(v8, v12) || !sub_1007C87EC(v10, v14) || !sub_1007C87EC(v9, v13) || !sub_1007C87EC(v11, v15) || ((v4 ^ v3) & 1) != 0 || ((v4 & 0x100) == 0) == (v3 & 0x100) >> 8 || ((v4 & 0x10000) == 0) == (v3 & 0x10000u) >> 16)
    {
      return 0;
    }
  }

  v6 = *(v1 + 59);
  v7 = *(a1 + 59);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v16 = *(v1 + 72);
  v17 = *(a1 + 72);
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (!v17 || (*(v1 + 64) != *(a1 + 64) || v16 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  v18 = *(v1 + 96);
  v37 = *(v1 + 80);
  v38 = v18;
  v39 = *(v1 + 112);
  v40 = *(v1 + 128);
  v19 = *(a1 + 96);
  v35[0] = *(a1 + 80);
  v35[1] = v19;
  v35[2] = *(a1 + 112);
  v36 = *(a1 + 128);
  if ((sub_1007C54E0(v35) & 1) == 0)
  {
    return 0;
  }

  v20 = *(v1 + 248);
  v33[8] = *(v1 + 232);
  v33[9] = v20;
  v21 = *(v1 + 184);
  v33[4] = *(v1 + 168);
  v33[5] = v21;
  v22 = *(v1 + 216);
  v33[6] = *(v1 + 200);
  v33[7] = v22;
  v23 = *(v1 + 152);
  v33[2] = *(v1 + 136);
  v33[3] = v23;
  v34[0] = *(v1 + 264);
  *(v34 + 14) = *(v1 + 278);
  v24 = *(a1 + 248);
  v32[6] = *(a1 + 232);
  v32[7] = v24;
  v33[0] = *(a1 + 264);
  *(v33 + 14) = *(a1 + 278);
  v25 = *(a1 + 184);
  v32[2] = *(a1 + 168);
  v32[3] = v25;
  v26 = *(a1 + 216);
  v32[4] = *(a1 + 200);
  v32[5] = v26;
  v27 = *(a1 + 152);
  v32[0] = *(a1 + 136);
  v32[1] = v27;
  if ((sub_1007C76BC(v32) & 1) == 0)
  {
    return 0;
  }

  memcpy(__dst, (v1 + 296), sizeof(__dst));
  memcpy(v30, (a1 + 296), 0x5C5uLL);
  if ((sub_1007C41A4(v30) & 1) == 0)
  {
    return 0;
  }

  v28 = *(type metadata accessor for TSContentLanguage.Models.Textbox() + 44);

  return _s8Freeform17TSContentLanguageO6ModelsO4TextO21__derived_enum_equalsySbAG_AGtFZ_0(v1 + v28, a1 + v28);
}

uint64_t sub_1007C41A4(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  memcpy(v22, v1, 0x5C5uLL);
  memcpy(&v22[1480], v3, 0x5C5uLL);
  memcpy(v25, v1, 0x5C5uLL);
  if (sub_1007C8620(v25) != 1)
  {
    memcpy(v21, v22, 0x5C5uLL);
    memcpy(v20, &v22[1480], 0x5C5uLL);
    if (sub_1007C8620(v20) == 1)
    {
      goto LABEL_5;
    }

    memcpy(v19, v21, 0x5C5uLL);
    memcpy(__dst, &v22[1480], 0x5C5uLL);
    v5 = sub_1007CF078(v19);
    if (v5)
    {
      if (v5 != 1)
      {
        memcpy(v17, &v22[1480], 0x5C5uLL);
        if (sub_1007CF078(v17) == 2)
        {
          sub_10000BE14(v1, v16, &qword_101A003D8);
          sub_10000BE14(v3, v16, &qword_101A003D8);
          sub_10000BE14(v21, v16, &qword_101A003D8);
          v4 = 1;
LABEL_18:
          memcpy(v17, v22, 0x5C5uLL);
          sub_10000CAAC(v17, &qword_101A003D8);
          return v4 & 1;
        }

        sub_10000BE14(v1, v16, &qword_101A003D8);
        sub_10000BE14(v3, v16, &qword_101A003D8);
        v13 = v21;
LABEL_15:
        sub_10000BE14(v13, v16, &qword_101A003D8);
        sub_10000CAAC(__dst, &qword_101A003D8);
        v4 = 0;
        goto LABEL_18;
      }

      v7 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v19, v6);
      memcpy(v23, v7, 0x5C4uLL);
      memcpy(v17, &v22[1480], 0x5C5uLL);
      if (sub_1007CF078(v17) == 1)
      {
        v9 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v17, v8);
        memcpy(v24, v9, sizeof(v24));
        sub_10000BE14(v1, v16, &qword_101A003D8);
        sub_10000BE14(v3, v16, &qword_101A003D8);
        sub_10000BE14(v21, v16, &qword_101A003D8);
        v10 = _s8Freeform17TSContentLanguageO6ModelsO22ScaffoldParagraphStyleV23__derived_struct_equalsySbAG_AGtFZ_0(v23);
LABEL_17:
        v4 = v10;
        sub_10000CAAC(v21, &qword_101A003D8);
        sub_10000CAAC(__dst, &qword_101A003D8);
        goto LABEL_18;
      }
    }

    else
    {
      v11 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v19, v6);
      memcpy(v23, v11, 0x594uLL);
      memcpy(v17, &v22[1480], 0x5C5uLL);
      if (!sub_1007CF078(v17))
      {
        v14 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v17, v12);
        memcpy(v24, v14, 0x594uLL);
        sub_10000BE14(v1, v16, &qword_101A003D8);
        sub_10000BE14(v3, v16, &qword_101A003D8);
        sub_10000BE14(v21, v16, &qword_101A003D8);
        v10 = _s8Freeform17TSContentLanguageO6ModelsO19ParagraphPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(v23);
        goto LABEL_17;
      }
    }

    sub_10000BE14(v1, v16, &qword_101A003D8);
    v13 = v3;
    goto LABEL_15;
  }

  memcpy(v20, &v22[1480], 0x5C5uLL);
  if (sub_1007C8620(v20) != 1)
  {
LABEL_5:
    memcpy(v20, v22, 0xB8DuLL);
    sub_10000BE14(v1, v21, &qword_101A003D8);
    sub_10000BE14(v3, v21, &qword_101A003D8);
    sub_10000CAAC(v20, &qword_101A009C0);
    v4 = 0;
    return v4 & 1;
  }

  memcpy(v21, v22, 0x5C5uLL);
  sub_10000BE14(v1, v19, &qword_101A003D8);
  sub_10000BE14(v3, v19, &qword_101A003D8);
  sub_10000CAAC(v21, &qword_101A003D8);
  v4 = 1;
  return v4 & 1;
}

uint64_t sub_1007C46B0(uint64_t a1)
{
  v3 = *(v1 + 160);
  __src[11] = *(v1 + 176);
  v4 = *(v1 + 176);
  __src[12] = *(v1 + 192);
  v5 = *(v1 + 192);
  __src[13] = *(v1 + 208);
  v6 = *(v1 + 96);
  __src[7] = *(v1 + 112);
  v7 = *(v1 + 112);
  __src[8] = *(v1 + 128);
  v8 = *(v1 + 128);
  __src[9] = *(v1 + 144);
  v9 = *(v1 + 144);
  __src[10] = *(v1 + 160);
  v10 = *(v1 + 32);
  __src[3] = *(v1 + 48);
  v11 = *(v1 + 48);
  __src[4] = *(v1 + 64);
  v12 = *(v1 + 64);
  __src[5] = *(v1 + 80);
  v13 = *(v1 + 80);
  __src[6] = *(v1 + 96);
  v14 = *(v1 + 16);
  __src[0] = *v1;
  v15 = *v1;
  v16 = *(v1 + 16);
  __src[1] = v14;
  __src[2] = *(v1 + 32);
  v17 = *(a1 + 208);
  *(&__src[26] + 8) = *(a1 + 192);
  *(&__src[27] + 8) = v17;
  v18 = *(a1 + 144);
  *(&__src[22] + 8) = *(a1 + 128);
  *(&__src[23] + 8) = v18;
  v19 = *(a1 + 176);
  *(&__src[24] + 8) = *(a1 + 160);
  *(&__src[25] + 8) = v19;
  v20 = *(a1 + 80);
  *(&__src[18] + 8) = *(a1 + 64);
  *(&__src[19] + 8) = v20;
  v21 = *(a1 + 112);
  *(&__src[20] + 8) = *(a1 + 96);
  *(&__src[21] + 8) = v21;
  v22 = *(a1 + 48);
  *(&__src[16] + 8) = *(a1 + 32);
  *(&__src[17] + 8) = v22;
  v23 = *(a1 + 16);
  *(&__src[14] + 8) = *a1;
  *(&__src[15] + 8) = v23;
  v125[11] = v4;
  v125[12] = v5;
  v125[13] = *(v1 + 208);
  v125[8] = v8;
  v125[9] = v9;
  v125[10] = v3;
  v125[4] = v12;
  v125[5] = v13;
  v125[6] = v6;
  v125[7] = v7;
  v125[0] = v15;
  v125[1] = v16;
  LOBYTE(__src[14]) = *(v1 + 224);
  BYTE8(__src[28]) = *(a1 + 224);
  v126 = *(v1 + 224);
  v125[2] = v10;
  v125[3] = v11;
  if (sub_1007CE5DC(v125) != 1)
  {
    v92 = __src[11];
    v93 = __src[12];
    v94 = __src[13];
    v88 = __src[7];
    v89 = __src[8];
    v90 = __src[9];
    v91 = __src[10];
    v84 = __src[3];
    v85 = __src[4];
    v86 = __src[5];
    v87 = __src[6];
    v81 = __src[0];
    v95 = __src[14];
    v82 = __src[1];
    v83 = __src[2];
    __dst[12] = *(&__src[26] + 8);
    __dst[13] = *(&__src[27] + 8);
    LOBYTE(__dst[14]) = BYTE8(__src[28]);
    __dst[8] = *(&__src[22] + 8);
    __dst[9] = *(&__src[23] + 8);
    __dst[10] = *(&__src[24] + 8);
    __dst[11] = *(&__src[25] + 8);
    __dst[4] = *(&__src[18] + 8);
    __dst[5] = *(&__src[19] + 8);
    __dst[6] = *(&__src[20] + 8);
    __dst[7] = *(&__src[21] + 8);
    __dst[0] = *(&__src[14] + 8);
    __dst[1] = *(&__src[15] + 8);
    __dst[2] = *(&__src[16] + 8);
    __dst[3] = *(&__src[17] + 8);
    if (sub_1007CE5DC(__dst) == 1)
    {
      goto LABEL_5;
    }

    v78[12] = v93;
    v78[13] = v94;
    v79 = v95;
    v78[8] = v89;
    v78[9] = v90;
    v78[10] = v91;
    v78[11] = v92;
    v78[4] = v85;
    v78[5] = v86;
    v78[6] = v87;
    v78[7] = v88;
    v78[0] = v81;
    v78[1] = v82;
    v78[2] = v83;
    v78[3] = v84;
    v76[12] = *(&__src[26] + 8);
    v76[13] = *(&__src[27] + 8);
    v77 = BYTE8(__src[28]);
    v76[8] = *(&__src[22] + 8);
    v76[9] = *(&__src[23] + 8);
    v76[10] = *(&__src[24] + 8);
    v76[11] = *(&__src[25] + 8);
    v76[4] = *(&__src[18] + 8);
    v76[5] = *(&__src[19] + 8);
    v76[6] = *(&__src[20] + 8);
    v76[7] = *(&__src[21] + 8);
    v76[0] = *(&__src[14] + 8);
    v76[1] = *(&__src[15] + 8);
    v76[2] = *(&__src[16] + 8);
    v76[3] = *(&__src[17] + 8);
    v25 = sub_1007CE5F0(v78);
    if (v25)
    {
      if (v25 != 1)
      {
        v73 = *(&__src[26] + 8);
        v74 = *(&__src[27] + 8);
        v75 = BYTE8(__src[28]);
        v69 = *(&__src[22] + 8);
        v70 = *(&__src[23] + 8);
        v71 = *(&__src[24] + 8);
        v72 = *(&__src[25] + 8);
        v65 = *(&__src[18] + 8);
        v66 = *(&__src[19] + 8);
        v67 = *(&__src[20] + 8);
        v68 = *(&__src[21] + 8);
        v61 = *(&__src[14] + 8);
        v62 = *(&__src[15] + 8);
        v63 = *(&__src[16] + 8);
        v64 = *(&__src[17] + 8);
        if (sub_1007CE5F0(&v61) == 2)
        {
          sub_10000BE14(v1, v60, &qword_101A00730);
          sub_10000BE14(a1, v60, &qword_101A00730);
          sub_10000BE14(&v81, v60, &qword_101A00730);
          v24 = 1;
LABEL_18:
          v73 = __src[12];
          v74 = __src[13];
          v75 = __src[14];
          v69 = __src[8];
          v70 = __src[9];
          v71 = __src[10];
          v72 = __src[11];
          v65 = __src[4];
          v66 = __src[5];
          v67 = __src[6];
          v68 = __src[7];
          v61 = __src[0];
          v62 = __src[1];
          v63 = __src[2];
          v64 = __src[3];
          sub_10000CAAC(&v61, &qword_101A00730);
          return v24 & 1;
        }

        sub_10000BE14(v1, v60, &qword_101A00730);
        sub_10000BE14(a1, v60, &qword_101A00730);
        v52 = &v81;
LABEL_15:
        sub_10000BE14(v52, v60, &qword_101A00730);
        sub_10000CAAC(v76, &qword_101A00730);
        v24 = 0;
        goto LABEL_18;
      }

      v27 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v78, v26);
      v28 = v27[11];
      v107 = v27[10];
      v108 = v28;
      v29 = v27[13];
      v109 = v27[12];
      v110 = v29;
      v30 = v27[7];
      v103 = v27[6];
      v104 = v30;
      v31 = v27[9];
      v105 = v27[8];
      v106 = v31;
      v32 = v27[3];
      v99 = v27[2];
      v100 = v32;
      v33 = v27[5];
      v101 = v27[4];
      v102 = v33;
      v34 = v27[1];
      v97 = *v27;
      v98 = v34;
      v75 = BYTE8(__src[28]);
      v73 = *(&__src[26] + 8);
      v74 = *(&__src[27] + 8);
      v71 = *(&__src[24] + 8);
      v72 = *(&__src[25] + 8);
      v69 = *(&__src[22] + 8);
      v70 = *(&__src[23] + 8);
      v67 = *(&__src[20] + 8);
      v68 = *(&__src[21] + 8);
      v65 = *(&__src[18] + 8);
      v66 = *(&__src[19] + 8);
      v63 = *(&__src[16] + 8);
      v64 = *(&__src[17] + 8);
      v61 = *(&__src[14] + 8);
      v62 = *(&__src[15] + 8);
      if (sub_1007CE5F0(&v61) == 1)
      {
        v36 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v61, v35);
        v37 = v36[11];
        v121 = v36[10];
        v122 = v37;
        v38 = v36[13];
        v123 = v36[12];
        v124 = v38;
        v39 = v36[7];
        v117 = v36[6];
        v118 = v39;
        v40 = v36[9];
        v119 = v36[8];
        v120 = v40;
        v41 = v36[3];
        v113 = v36[2];
        v114 = v41;
        v42 = v36[5];
        v115 = v36[4];
        v116 = v42;
        v43 = v36[1];
        v111 = *v36;
        v112 = v43;
        sub_10000BE14(v1, v60, &qword_101A00730);
        sub_10000BE14(a1, v60, &qword_101A00730);
        sub_10000BE14(&v81, v60, &qword_101A00730);
        v44 = _s8Freeform17TSContentLanguageO6ModelsO17ScaffoldListStyleV23__derived_struct_equalsySbAG_AGtFZ_0(&v97, &v111);
LABEL_17:
        v24 = v44;
        sub_10000CAAC(&v81, &qword_101A00730);
        sub_10000CAAC(v76, &qword_101A00730);
        goto LABEL_18;
      }
    }

    else
    {
      v45 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v78, v26);
      v46 = v45[9];
      v105 = v45[8];
      v106 = v46;
      v107 = v45[10];
      v47 = v45[5];
      v101 = v45[4];
      v102 = v47;
      v48 = v45[7];
      v103 = v45[6];
      v104 = v48;
      v49 = v45[1];
      v97 = *v45;
      v98 = v49;
      v50 = v45[3];
      v99 = v45[2];
      v100 = v50;
      v75 = BYTE8(__src[28]);
      v73 = *(&__src[26] + 8);
      v74 = *(&__src[27] + 8);
      v71 = *(&__src[24] + 8);
      v72 = *(&__src[25] + 8);
      v69 = *(&__src[22] + 8);
      v70 = *(&__src[23] + 8);
      v67 = *(&__src[20] + 8);
      v68 = *(&__src[21] + 8);
      v65 = *(&__src[18] + 8);
      v66 = *(&__src[19] + 8);
      v63 = *(&__src[16] + 8);
      v64 = *(&__src[17] + 8);
      v61 = *(&__src[14] + 8);
      v62 = *(&__src[15] + 8);
      if (!sub_1007CE5F0(&v61))
      {
        v53 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v61, v51);
        v54 = v53[9];
        v119 = v53[8];
        v120 = v54;
        v121 = v53[10];
        v55 = v53[5];
        v115 = v53[4];
        v116 = v55;
        v56 = v53[7];
        v117 = v53[6];
        v118 = v56;
        v57 = v53[1];
        v111 = *v53;
        v112 = v57;
        v58 = v53[3];
        v113 = v53[2];
        v114 = v58;
        sub_10000BE14(v1, v60, &qword_101A00730);
        sub_10000BE14(a1, v60, &qword_101A00730);
        sub_10000BE14(&v81, v60, &qword_101A00730);
        v44 = _s8Freeform17TSContentLanguageO6ModelsO14ListPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(&v97, &v111);
        goto LABEL_17;
      }
    }

    sub_10000BE14(v1, v60, &qword_101A00730);
    v52 = a1;
    goto LABEL_15;
  }

  __dst[12] = *(&__src[26] + 8);
  __dst[13] = *(&__src[27] + 8);
  LOBYTE(__dst[14]) = BYTE8(__src[28]);
  __dst[8] = *(&__src[22] + 8);
  __dst[9] = *(&__src[23] + 8);
  __dst[10] = *(&__src[24] + 8);
  __dst[11] = *(&__src[25] + 8);
  __dst[4] = *(&__src[18] + 8);
  __dst[5] = *(&__src[19] + 8);
  __dst[6] = *(&__src[20] + 8);
  __dst[7] = *(&__src[21] + 8);
  __dst[0] = *(&__src[14] + 8);
  __dst[1] = *(&__src[15] + 8);
  __dst[2] = *(&__src[16] + 8);
  __dst[3] = *(&__src[17] + 8);
  if (sub_1007CE5DC(__dst) != 1)
  {
LABEL_5:
    memcpy(__dst, __src, 0x1C9uLL);
    sub_10000BE14(v1, &v81, &qword_101A00730);
    sub_10000BE14(a1, &v81, &qword_101A00730);
    sub_10000CAAC(__dst, &qword_101A00738);
    v24 = 0;
    return v24 & 1;
  }

  v92 = __src[11];
  v93 = __src[12];
  v94 = __src[13];
  v88 = __src[7];
  v89 = __src[8];
  v90 = __src[9];
  v91 = __src[10];
  v84 = __src[3];
  v85 = __src[4];
  v86 = __src[5];
  v87 = __src[6];
  v81 = __src[0];
  v82 = __src[1];
  v95 = __src[14];
  v83 = __src[2];
  sub_10000BE14(v1, v78, &qword_101A00730);
  sub_10000BE14(a1, v78, &qword_101A00730);
  sub_10000CAAC(&v81, &qword_101A00730);
  v24 = 1;
  return v24 & 1;
}

BOOL sub_1007C4E98(char a1, char a2)
{
  if (a2 == 3)
  {
    return a1 == 3;
  }

  if (a1 == 3)
  {
    return 0;
  }

  LOBYTE(v3) = a1;
  v4 = 0xED00007468676972;
  v5 = 0x5F6F745F7466656CLL;
  if (!a2)
  {
    v6 = 0x5F6F745F7466656CLL;
    v7 = 0xED00007468676972;
    v3 = v3;
    if (!v3)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if (a2 == 1)
  {
    v6 = 0x6C61727574616ELL;
  }

  else
  {
    v6 = 0x6F745F7468676972;
  }

  if (a2 == 1)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xED00007466656C5FLL;
  }

  v3 = v3;
  if (v3)
  {
LABEL_14:
    if (v3 == 1)
    {
      v5 = 0x6C61727574616ELL;
    }

    else
    {
      v5 = 0x6F745F7468676972;
    }

    if (v3 == 1)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xED00007466656C5FLL;
    }
  }

LABEL_20:
  if (v6 == v5 && v7 == v4)
  {

    return 1;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v8 & 1;
}

uint64_t sub_1007C5004(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  memcpy(v22, v1, 0x3ADuLL);
  memcpy(&v22[944], v3, 0x3ADuLL);
  memcpy(v25, v1, 0x3ADuLL);
  if (sub_10067EF0C(v25) != 1)
  {
    memcpy(v21, v22, 0x3ADuLL);
    memcpy(__dst, &v22[944], 0x3ADuLL);
    if (sub_10067EF0C(__dst) == 1)
    {
      goto LABEL_5;
    }

    memcpy(v19, v21, 0x3ADuLL);
    memcpy(v18, &v22[944], 0x3ADuLL);
    v5 = sub_10067EF20(v19);
    if (v5)
    {
      if (v5 != 1)
      {
        memcpy(v17, &v22[944], 0x3ADuLL);
        if (sub_10067EF20(v17) == 2)
        {
          sub_10000BE14(v1, v16, &qword_1019F6F18);
          sub_10000BE14(v3, v16, &qword_1019F6F18);
          sub_10000BE14(v21, v16, &qword_1019F6F18);
          v4 = 1;
LABEL_18:
          memcpy(v17, v22, 0x3ADuLL);
          sub_10000CAAC(v17, &qword_1019F6F18);
          return v4 & 1;
        }

        sub_10000BE14(v1, v16, &qword_1019F6F18);
        sub_10000BE14(v3, v16, &qword_1019F6F18);
        v13 = v21;
LABEL_15:
        sub_10000BE14(v13, v16, &qword_1019F6F18);
        sub_10000CAAC(v18, &qword_1019F6F18);
        v4 = 0;
        goto LABEL_18;
      }

      v7 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v19, v6);
      memcpy(v23, v7, 0x3ACuLL);
      memcpy(v17, &v22[944], 0x3ADuLL);
      if (sub_10067EF20(v17) == 1)
      {
        v9 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v17, v8);
        memcpy(v24, v9, sizeof(v24));
        sub_10000BE14(v1, v16, &qword_1019F6F18);
        sub_10000BE14(v3, v16, &qword_1019F6F18);
        sub_10000BE14(v21, v16, &qword_1019F6F18);
        v10 = _s8Freeform17TSContentLanguageO6ModelsO22ScaffoldCharacterStyleV23__derived_struct_equalsySbAG_AGtFZ_0(v23);
LABEL_17:
        v4 = v10;
        sub_10000CAAC(v21, &qword_1019F6F18);
        sub_10000CAAC(v18, &qword_1019F6F18);
        goto LABEL_18;
      }
    }

    else
    {
      v11 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v19, v6);
      memcpy(v23, v11, 0x37CuLL);
      memcpy(v17, &v22[944], 0x3ADuLL);
      if (!sub_10067EF20(v17))
      {
        v14 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v17, v12);
        memcpy(v24, v14, 0x37CuLL);
        sub_10000BE14(v1, v16, &qword_1019F6F18);
        sub_10000BE14(v3, v16, &qword_1019F6F18);
        sub_10000BE14(v21, v16, &qword_1019F6F18);
        v10 = _s8Freeform17TSContentLanguageO6ModelsO19CharacterPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(v23);
        goto LABEL_17;
      }
    }

    sub_10000BE14(v1, v16, &qword_1019F6F18);
    v13 = v3;
    goto LABEL_15;
  }

  memcpy(__dst, &v22[944], 0x3ADuLL);
  if (sub_10067EF0C(__dst) != 1)
  {
LABEL_5:
    memcpy(__dst, v22, 0x75DuLL);
    sub_10000BE14(v1, v21, &qword_1019F6F18);
    sub_10000BE14(v3, v21, &qword_1019F6F18);
    sub_10000CAAC(__dst, &unk_1019F6F20);
    v4 = 0;
    return v4 & 1;
  }

  memcpy(v21, v22, 0x3ADuLL);
  sub_10000BE14(v1, v19, &qword_1019F6F18);
  sub_10000BE14(v3, v19, &qword_1019F6F18);
  sub_10000CAAC(v21, &qword_1019F6F18);
  v4 = 1;
  return v4 & 1;
}

uint64_t sub_1007C54E0(uint64_t a1)
{
  v2 = v1;
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v10 = *v2;
  v9 = *(v2 + 8);
  v11 = *(v2 + 16);
  v12 = *(v2 + 48);
  v13 = *(v2 + 32);
  v30[0] = *v2;
  v30[1] = v11;
  v30[2] = *(v2 + 32);
  v31 = v12;
  if (*(&v30[0] + 1))
  {
    v22 = v13;
    v23 = v11;
    v24 = v7;
    v25 = v6;
    sub_1007CF0A8(v30, v32);
    v14 = *(a1 + 16);
    v27[0] = *a1;
    v27[1] = v14;
    v27[2] = *(a1 + 32);
    v28 = *(a1 + 48);
    if (*(&v27[0] + 1))
    {
      sub_1007CF0A8(v27, v29);
      v37[0] = v10;
      v37[1] = v9;
      v38 = v23;
      v39 = v22;
      v40 = v12 & 1;
      *&v33 = v5;
      *(&v33 + 1) = v4;
      v34 = v25;
      v35 = v24;
      v36 = v8 & 1;
      sub_10000BE14(v2, v26, &qword_101A003C8);
      sub_10000BE14(a1, v26, &qword_101A003C8);
      v17 = sub_101109874();
      v18 = sub_101109874();
      if (v17)
      {
        if (v18)
        {
          v16 = sub_100B5E638(v18, v17);
          sub_10000CAAC(a1, &qword_101A003C8);

          sub_10000CAAC(v2, &qword_101A003C8);
          return v16 & 1;
        }

        sub_10000CAAC(a1, &qword_101A003C8);

        v20 = v2;
        goto LABEL_7;
      }

      v19 = v18;
      sub_10000CAAC(a1, &qword_101A003C8);
      if (v19)
      {

        v20 = v2;
LABEL_7:
        sub_10000CAAC(v20, &qword_101A003C8);
        v16 = 0;
        return v16 & 1;
      }

      sub_10000CAAC(v2, &qword_101A003C8);
LABEL_15:
      v16 = 1;
      return v16 & 1;
    }
  }

  else
  {
    v15 = *(a1 + 16);
    v33 = *a1;
    v34 = v15;
    v35 = *(a1 + 32);
    v36 = *(a1 + 48);
    if (!*(&v33 + 1))
    {
      goto LABEL_15;
    }

    sub_1007CF0A8(&v33, v37);
  }

  sub_10000BE14(v2, v29, &qword_101A003C8);
  sub_10000BE14(a1, v29, &qword_101A003C8);

  v16 = 0;
  return v16 & 1;
}

uint64_t sub_1007C5814(uint64_t a1)
{
  v3 = *(v1 + 48);
  v47 = *(v1 + 32);
  v48 = v3;
  v49 = *(v1 + 64);
  v4 = *(v1 + 16);
  v45 = *v1;
  v46 = v4;
  v5 = *a1;
  *&v44[22] = *(a1 + 16);
  v6 = *(a1 + 48);
  *&v44[38] = *(a1 + 32);
  *&v44[54] = v6;
  *&v44[70] = *(a1 + 64);
  v7 = *(v1 + 80);
  *&v44[6] = v5;
  v8 = *(a1 + 80);
  if (v7 >> 8 < 0xFF)
  {
    v12 = *(v1 + 48);
    v40 = *(v1 + 32);
    v41 = v12;
    v42 = *(v1 + 64);
    v13 = *(v1 + 16);
    v38 = *v1;
    v39 = v13;
    v43 = v7;
    if (v8 >> 8 <= 0xFE)
    {
      v50[2] = v40;
      v50[3] = v41;
      v50[4] = v42;
      v51 = v43;
      v50[0] = v38;
      v50[1] = v39;
      v16 = *(a1 + 48);
      v20 = *(a1 + 32);
      v21 = v16;
      v22 = *(a1 + 64);
      v17 = *(a1 + 16);
      v19[0] = *a1;
      v19[1] = v17;
      v23 = v8;
      v31 = v8;
      v26 = v19[0];
      v27 = v17;
      v28 = v20;
      v29 = v16;
      v30 = v22;
      sub_10000BE14(v1, v24, &qword_101A00910);
      sub_10000BE14(a1, v24, &qword_101A00910);
      sub_10000BE14(&v38, v24, &qword_101A00910);
      v11 = _s8Freeform17TSContentLanguageO6ModelsO4FillO21__derived_enum_equalsySbAG_AGtFZ_0(v50, &v26);
      sub_10000CAAC(v19, &qword_101A00910);
      sub_10000CAAC(&v38, &qword_101A00910);
      v24[2] = v47;
      v24[3] = v48;
      v24[4] = v49;
      v24[0] = v45;
      v24[1] = v46;
      v25 = v7;
      sub_10000CAAC(v24, &qword_101A00910);
      return v11 & 1;
    }

    goto LABEL_5;
  }

  if (v8 >> 8 <= 0xFE)
  {
LABEL_5:
    v14 = *(v1 + 48);
    v28 = *(v1 + 32);
    v29 = v14;
    v30 = *(v1 + 64);
    v15 = *(v1 + 16);
    v26 = *v1;
    v27 = v15;
    v34 = *&v44[32];
    v35 = *&v44[48];
    *v36 = *&v44[64];
    v32 = *v44;
    v31 = v7;
    *&v36[14] = *&v44[78];
    v33 = *&v44[16];
    v37 = v8;
    sub_10000BE14(v1, v50, &qword_101A00910);
    sub_10000BE14(a1, v50, &qword_101A00910);
    sub_10000CAAC(&v26, &qword_101A00918);
    v11 = 0;
    return v11 & 1;
  }

  v9 = *(v1 + 48);
  v28 = *(v1 + 32);
  v29 = v9;
  v30 = *(v1 + 64);
  v10 = *(v1 + 16);
  v26 = *v1;
  v27 = v10;
  v31 = v7;
  sub_10000BE14(v1, v50, &qword_101A00910);
  sub_10000BE14(a1, v50, &qword_101A00910);
  sub_10000CAAC(&v26, &qword_101A00910);
  v11 = 1;
  return v11 & 1;
}

uint64_t sub_1007C5AE4(uint64_t a1)
{
  v56 = *v1;
  v3 = *(v1 + 24);
  v57 = *(v1 + 16);
  v4 = *(v1 + 80);
  v54 = *(v1 + 64);
  v55[0] = v4;
  *(v55 + 13) = *(v1 + 93);
  v5 = *(v1 + 48);
  v52 = *(v1 + 32);
  v53 = v5;
  v6 = *a1;
  v7 = *(a1 + 24);
  *&v51[19] = *(a1 + 16);
  *&v51[3] = v6;
  if ((v3 & 0xFF00) != 0x300)
  {
    v45 = *v1;
    *&v46 = *(v1 + 16);
    *(&v46 + 1) = v3;
    v11 = *(v1 + 80);
    v49 = *(v1 + 64);
    v50[0] = v11;
    *(v50 + 13) = *(v1 + 93);
    v12 = *(v1 + 48);
    v47 = *(v1 + 32);
    v48 = v12;
    if ((v7 & 0xFF00) != 0x300)
    {
      v37 = v49;
      *v38 = v50[0];
      *&v38[13] = *(v50 + 13);
      v33 = v45;
      v34 = v46;
      v35 = v47;
      v36 = v48;
      v20 = *a1;
      *&v21 = *(a1 + 16);
      *(&v21 + 1) = v7;
      *&v25[13] = *(a1 + 93);
      v17 = *(a1 + 80);
      v24 = *(a1 + 64);
      *v25 = v17;
      v18 = *(a1 + 48);
      v22 = *(a1 + 32);
      v23 = v18;
      v58[2] = v22;
      v58[3] = v18;
      v58[0] = v20;
      v58[1] = v21;
      *&v59[13] = *&v25[13];
      v58[4] = v24;
      *v59 = v17;
      sub_10000BE14(v1, &v26, &qword_101A00900);
      sub_10000BE14(a1, &v26, &qword_101A00900);
      sub_10000BE14(&v45, &v26, &qword_101A00900);
      v10 = TSContentLanguage.Models.LayoutProperties.isEquivalent(to:)(v58);
      sub_10000CAAC(&v20, &qword_101A00900);
      sub_10000CAAC(&v45, &qword_101A00900);
      v26 = v56;
      v27 = v57;
      v28 = v3;
      v31 = v54;
      v32[0] = v55[0];
      *(v32 + 13) = *(v55 + 13);
      v29 = v52;
      v30 = v53;
      sub_10000CAAC(&v26, &qword_101A00900);
      return v10 & 1;
    }

    goto LABEL_5;
  }

  if ((v7 & 0xFF00) != 0x300)
  {
LABEL_5:
    v33 = *v1;
    *&v34 = *(v1 + 16);
    *(&v34 + 1) = v3;
    v13 = *(v1 + 80);
    v37 = *(v1 + 64);
    *v38 = v13;
    *&v38[13] = *(v1 + 93);
    v14 = *(v1 + 48);
    v35 = *(v1 + 32);
    v36 = v14;
    *&v39[11] = *&v51[11];
    *v39 = *v51;
    v40 = v7;
    *(v44 + 13) = *(a1 + 93);
    v15 = *(a1 + 80);
    v43 = *(a1 + 64);
    v44[0] = v15;
    v16 = *(a1 + 48);
    v41 = *(a1 + 32);
    v42 = v16;
    sub_10000BE14(v1, v58, &qword_101A00900);
    sub_10000BE14(a1, v58, &qword_101A00900);
    sub_10000CAAC(&v33, &qword_101A00908);
    v10 = 0;
    return v10 & 1;
  }

  v33 = *v1;
  *&v34 = *(v1 + 16);
  *(&v34 + 1) = v3;
  v8 = *(v1 + 80);
  v37 = *(v1 + 64);
  *v38 = v8;
  *&v38[13] = *(v1 + 93);
  v9 = *(v1 + 48);
  v35 = *(v1 + 32);
  v36 = v9;
  sub_10000BE14(v1, v58, &qword_101A00900);
  sub_10000BE14(a1, v58, &qword_101A00900);
  sub_10000CAAC(&v33, &qword_101A00900);
  v10 = 1;
  return v10 & 1;
}

uint64_t sub_1007C5DF4(uint64_t a1)
{
  v2 = v1;
  v22 = a1;
  v3 = type metadata accessor for TSContentLanguage.Models.Text();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v10 = sub_1005B981C(&qword_101A003E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v21 - v11;
  v13 = sub_1005B981C(&qword_101A008F8);
  __chkstk_darwin(v13 - 8);
  v15 = &v21 - v14;
  v17 = *(v16 + 56);
  sub_10000BE14(v2, &v21 - v14, &qword_101A003E0);
  sub_10000BE14(v22, &v15[v17], &qword_101A003E0);
  v18 = *(v4 + 48);
  if (v18(v15, 1, v3) != 1)
  {
    sub_10000BE14(v15, v12, &qword_101A003E0);
    if (v18(&v15[v17], 1, v3) != 1)
    {
      sub_1007B5304(v12, v9);
      sub_1007B5304(&v15[v17], v6);
      v19 = _s8Freeform17TSContentLanguageO6ModelsO4TextO21__derived_enum_equalsySbAG_AGtFZ_0(v9, v6);
      sub_100048E24(v6, type metadata accessor for TSContentLanguage.Models.Text);
      sub_100048E24(v9, type metadata accessor for TSContentLanguage.Models.Text);
      sub_10000CAAC(v15, &qword_101A003E0);
      return v19 & 1;
    }

    sub_100048E24(v12, type metadata accessor for TSContentLanguage.Models.Text);
    goto LABEL_6;
  }

  if (v18(&v15[v17], 1, v3) != 1)
  {
LABEL_6:
    sub_10000CAAC(v15, &qword_101A008F8);
    v19 = 0;
    return v19 & 1;
  }

  sub_10000CAAC(v15, &qword_101A003E0);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_1007C60F0(uint64_t a1)
{
  v2 = *(v1 + 56);
  v66 = *(v1 + 48);
  v62 = *(v1 + 96);
  v3 = *(a1 + 56);
  *&v59[55] = *(a1 + 48);
  v4 = *(v1 + 16);
  v63 = *v1;
  v64 = v4;
  v65 = *(v1 + 32);
  v5 = *(v1 + 80);
  v60 = *(v1 + 64);
  v61 = v5;
  v6 = *a1;
  v7 = *(a1 + 16);
  *&v59[39] = *(a1 + 32);
  *&v59[23] = v7;
  *&v59[7] = v6;
  if (v2 == 1)
  {
    if (v3 == 1)
    {
      v8 = *(v1 + 16);
      v38 = *v1;
      v39 = v8;
      v40 = *(v1 + 32);
      v9 = 1;
      *&v41 = *(v1 + 48);
      *(&v41 + 1) = 1;
      v10 = *(v1 + 80);
      v42 = *(v1 + 64);
      v43 = v10;
      v44 = *(v1 + 96);
      sub_10000BE14(v1, v67, &qword_101A00978);
      sub_10000BE14(a1, v67, &qword_101A00978);
      v12 = &v38;
LABEL_7:
      sub_10000CAAC(v12, &qword_101A00978);
      return v9 & 1;
    }
  }

  else
  {
    v13 = *(v1 + 16);
    v52 = *v1;
    v53 = v13;
    v54 = *(v1 + 32);
    *&v55 = *(v1 + 48);
    *(&v55 + 1) = v2;
    v14 = *(v1 + 80);
    v56 = *(v1 + 64);
    v57 = v14;
    v58 = *(v1 + 96);
    if (v3 != 1)
    {
      v42 = v56;
      v43 = v57;
      v44 = v58;
      v38 = v52;
      v39 = v53;
      v40 = v54;
      v41 = v55;
      v19 = *a1;
      v20 = *(a1 + 32);
      v21 = *(a1 + 48);
      v26 = *(a1 + 16);
      v27 = v20;
      v25 = v19;
      *&v28 = v21;
      *(&v28 + 1) = v3;
      v31 = *(a1 + 96);
      v22 = *(a1 + 80);
      v29 = *(a1 + 64);
      v30 = v22;
      v67[0] = v19;
      v67[1] = v26;
      v67[4] = v29;
      v67[5] = v22;
      v68 = v31;
      v67[2] = v20;
      v67[3] = v28;
      sub_10000BE14(v1, v32, &qword_101A00978);
      sub_10000BE14(a1, v32, &qword_101A00978);
      sub_10000BE14(&v52, v32, &qword_101A00978);
      v9 = TSContentLanguage.Models.Image.Mask.isEquivalent(to:)(v67);
      sub_10000CAAC(&v25, &qword_101A00978);
      sub_10000CAAC(&v52, &qword_101A00978);
      v32[0] = v63;
      v32[1] = v64;
      v32[2] = v65;
      v33 = v66;
      v34 = v2;
      v35 = v60;
      v36 = v61;
      v37 = v62;
      v12 = v32;
      goto LABEL_7;
    }
  }

  v15 = *(v1 + 16);
  v38 = *v1;
  v39 = v15;
  v40 = *(v1 + 32);
  *&v41 = *(v1 + 48);
  *(&v41 + 1) = v2;
  v16 = *(v1 + 80);
  v42 = *(v1 + 64);
  v43 = v16;
  v44 = *(v1 + 96);
  *&v47[15] = *&v59[47];
  *v47 = *&v59[32];
  v46 = *&v59[16];
  v45 = *v59;
  v48 = v3;
  v51 = *(a1 + 96);
  v17 = *(a1 + 64);
  v50 = *(a1 + 80);
  v49 = v17;
  sub_10000BE14(v1, v67, &qword_101A00978);
  sub_10000BE14(a1, v67, &qword_101A00978);
  sub_10000CAAC(&v38, &qword_101A00980);
  v9 = 0;
  return v9 & 1;
}

uint64_t sub_1007C63F0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(v1 + 8);
  if (!v4)
  {
    if (!v3)
    {
      return 1;
    }

    goto LABEL_12;
  }

  if (!v3)
  {
LABEL_12:
    sub_10000BE14(v1, v15, &qword_101A00970);
    sub_10000BE14(a1, v15, &qword_101A00970);

    return 0;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *v1 == *a1 && v4 == v3;
  if (v11 || (v12 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v12 & 1) != 0))
  {
    if (v10)
    {
      if (v7)
      {
        return 1;
      }
    }

    else if ((v7 & 1) == 0)
    {
      sub_10000BE14(v1, v15, &qword_101A00970);
      sub_10000BE14(a1, v15, &qword_101A00970);
      if (sub_1007C87EC(v9, v6))
      {
        v14 = sub_1007C87EC(v8, v5);
        sub_10000CAAC(a1, &qword_101A00970);
        sub_10000CAAC(v1, &qword_101A00970);
        return v14;
      }

      sub_10000CAAC(a1, &qword_101A00970);
      sub_10000CAAC(v1, &qword_101A00970);
    }

    return 0;
  }

  return result;
}

BOOL sub_1007C65A4(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  memcpy(v11, v1, 0x37CuLL);
  memcpy(&v11[896], v3, 0x37CuLL);
  memcpy(v13, v1, 0x37CuLL);
  if (sub_1007CE3F8(v13) != 1)
  {
    memcpy(__src, v11, 0x37CuLL);
    memcpy(v10, &v11[896], 0x37CuLL);
    if (sub_1007CE3F8(v10) != 1)
    {
      memcpy(__dst, __src, 0x37CuLL);
      memcpy(v6, &v11[896], 0x37CuLL);
      memcpy(v12, &v11[896], 0x37CuLL);
      sub_10000BE14(v1, v7, &qword_101A006A0);
      sub_10000BE14(v3, v7, &qword_101A006A0);
      sub_10000BE14(__src, v7, &qword_101A006A0);
      v4 = TSContentLanguage.Models.CharacterProperties.isEquivalent(to:)(v12);
      sub_10000CAAC(v6, &qword_101A006A0);
      sub_10000CAAC(__src, &qword_101A006A0);
      memcpy(v7, v11, 0x37CuLL);
      sub_10000CAAC(v7, &qword_101A006A0);
      return v4;
    }

    goto LABEL_5;
  }

  memcpy(__dst, &v11[896], 0x37CuLL);
  if (sub_1007CE3F8(__dst) != 1)
  {
LABEL_5:
    memcpy(__dst, v11, 0x6FCuLL);
    sub_10000BE14(v1, v12, &qword_101A006A0);
    sub_10000BE14(v3, v12, &qword_101A006A0);
    sub_10000CAAC(__dst, &qword_101A006A8);
    return 0;
  }

  memcpy(v12, v11, 0x37CuLL);
  sub_10000BE14(v1, v10, &qword_101A006A0);
  sub_10000BE14(v3, v10, &qword_101A006A0);
  sub_10000CAAC(v12, &qword_101A006A0);
  return 1;
}

uint64_t sub_1007C686C(__int128 *a1)
{
  v3 = v1[7];
  v4 = v1[9];
  __src[8] = v1[8];
  __src[9] = v4;
  v5 = v1[3];
  v6 = v1[5];
  __src[4] = v1[4];
  __src[5] = v6;
  v8 = v1[5];
  v7 = v1[6];
  v9 = v7;
  __src[7] = v1[7];
  __src[6] = v7;
  v10 = v1[1];
  __src[0] = *v1;
  __src[1] = v10;
  v11 = v1[2];
  v13 = *v1;
  v12 = v1[1];
  v14 = v11;
  __src[3] = v1[3];
  __src[2] = v11;
  v15 = a1[8];
  v16 = a1[9];
  v17 = a1[6];
  __src[18] = a1[7];
  __src[19] = v15;
  v18 = a1[10];
  __src[20] = v16;
  __src[21] = v18;
  v19 = a1[4];
  v20 = a1[5];
  v21 = a1[2];
  __src[14] = a1[3];
  __src[15] = v19;
  __src[16] = v20;
  __src[17] = v17;
  v22 = *a1;
  v23 = a1[1];
  v24 = v1[9];
  __src[10] = v1[10];
  __src[11] = v22;
  __src[12] = v23;
  __src[13] = v21;
  v54[8] = __src[8];
  v54[9] = v24;
  v54[10] = v1[10];
  v54[4] = __src[4];
  v54[5] = v8;
  v54[6] = v9;
  v54[7] = v3;
  v54[0] = v13;
  v54[1] = v12;
  v54[2] = v14;
  v54[3] = v5;
  if (sub_1007CE118(v54) != 1)
  {
    v38 = __src[8];
    v39 = __src[9];
    v40 = __src[10];
    v34 = __src[4];
    v35 = __src[5];
    v36 = __src[6];
    v37 = __src[7];
    v30 = __src[0];
    v31 = __src[1];
    v32 = __src[2];
    v33 = __src[3];
    v41[8] = __src[19];
    v41[9] = __src[20];
    v41[10] = __src[21];
    v41[4] = __src[15];
    v41[5] = __src[16];
    v41[6] = __src[17];
    v41[7] = __src[18];
    v41[0] = __src[11];
    v41[1] = __src[12];
    v41[2] = __src[13];
    v41[3] = __src[14];
    if (sub_1007CE118(v41) != 1)
    {
      __dst[8] = v38;
      __dst[9] = v39;
      __dst[10] = v40;
      __dst[4] = v34;
      __dst[5] = v35;
      __dst[6] = v36;
      __dst[7] = v37;
      __dst[0] = v30;
      __dst[1] = v31;
      __dst[2] = v32;
      __dst[3] = v33;
      v27[8] = __src[19];
      v27[9] = __src[20];
      v27[10] = __src[21];
      v27[4] = __src[15];
      v27[5] = __src[16];
      v27[6] = __src[17];
      v27[7] = __src[18];
      v27[0] = __src[11];
      v27[1] = __src[12];
      v27[2] = __src[13];
      v27[3] = __src[14];
      v51 = __src[19];
      v52 = __src[20];
      v53 = __src[21];
      v47 = __src[15];
      v48 = __src[16];
      v50 = __src[18];
      v49 = __src[17];
      v43 = __src[11];
      v44 = __src[12];
      v46 = __src[14];
      v45 = __src[13];
      sub_10000BE14(v1, v28, &qword_101A005F0);
      sub_10000BE14(a1, v28, &qword_101A005F0);
      sub_10000BE14(&v30, v28, &qword_101A005F0);
      v25 = TSContentLanguage.Models.ListProperties.isEquivalent(to:)(&v43);
      sub_10000CAAC(v27, &qword_101A005F0);
      sub_10000CAAC(&v30, &qword_101A005F0);
      v28[8] = __src[8];
      v28[9] = __src[9];
      v28[10] = __src[10];
      v28[4] = __src[4];
      v28[5] = __src[5];
      v28[6] = __src[6];
      v28[7] = __src[7];
      v28[0] = __src[0];
      v28[1] = __src[1];
      v28[2] = __src[2];
      v28[3] = __src[3];
      sub_10000CAAC(v28, &qword_101A005F0);
      return v25 & 1;
    }

    goto LABEL_5;
  }

  __dst[8] = __src[19];
  __dst[9] = __src[20];
  __dst[10] = __src[21];
  __dst[4] = __src[15];
  __dst[5] = __src[16];
  __dst[6] = __src[17];
  __dst[7] = __src[18];
  __dst[0] = __src[11];
  __dst[1] = __src[12];
  __dst[2] = __src[13];
  __dst[3] = __src[14];
  if (sub_1007CE118(__dst) != 1)
  {
LABEL_5:
    memcpy(__dst, __src, sizeof(__dst));
    sub_10000BE14(v1, &v43, &qword_101A005F0);
    sub_10000BE14(a1, &v43, &qword_101A005F0);
    sub_10000CAAC(__dst, &qword_101A005F8);
    v25 = 0;
    return v25 & 1;
  }

  v51 = __src[8];
  v52 = __src[9];
  v53 = __src[10];
  v47 = __src[4];
  v48 = __src[5];
  v50 = __src[7];
  v49 = __src[6];
  v43 = __src[0];
  v44 = __src[1];
  v46 = __src[3];
  v45 = __src[2];
  sub_10000BE14(v1, v41, &qword_101A005F0);
  sub_10000BE14(a1, v41, &qword_101A005F0);
  sub_10000CAAC(&v43, &qword_101A005F0);
  v25 = 1;
  return v25 & 1;
}

BOOL sub_1007C6CBC(char a1, char a2)
{
  if (a2 == 3)
  {
    return a1 == 3;
  }

  if (a1 == 3)
  {
    return 0;
  }

  LOBYTE(v3) = a1;
  if (!a2)
  {
    v5 = 0xE400000000000000;
    v4 = 2036625250;
    v3 = v3;
    if (v3)
    {
      goto LABEL_14;
    }

LABEL_23:
    v7 = 0xE400000000000000;
    if (v4 != 2036625250)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (a2 == 1)
  {
    v4 = 0x676E6964616568;
  }

  else
  {
    v4 = 0x6669636570736E75;
  }

  if (a2 == 1)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xEB00000000646569;
  }

  v3 = v3;
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_14:
  if (v3 == 1)
  {
    v6 = 0x676E6964616568;
  }

  else
  {
    v6 = 0x6669636570736E75;
  }

  if (v3 == 1)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xEB00000000646569;
  }

  if (v4 != v6)
  {
    goto LABEL_27;
  }

LABEL_24:
  if (v5 == v7)
  {

    return 1;
  }

LABEL_27:
  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v8 & 1;
}

uint64_t sub_1007C6E18(double *a1)
{
  v2 = *(v1 + 1);
  v4 = v1[3];
  v3 = v1[4];
  v5 = v1[5];
  v6 = *(v1 + 48);
  v8 = *a1;
  v7 = *(a1 + 1);
  v9 = *(a1 + 2);
  v10 = *(a1 + 3);
  v11 = *(a1 + 4);
  v12 = *(a1 + 5);
  v13 = *(a1 + 48);
  v14 = v3 & 0xFFFFFFFFFFFFFF00;
  v16 = (v11 & 0xFFFFFFFFFFFFFF00) == 0xFFFFFFFE00 && v13 < 0x10;
  if (v14 == 0xFFFFFFFE00 && v6 <= 0xF)
  {
    if (v16)
    {
      return 1;
    }
  }

  else if (!v16)
  {
    v19 = (v11 & 0xFFFFFFFFFFFFFF00) == 0xFFFFFFFF00 && v13 < 0x10;
    if (v14 == 0xFFFFFFFF00 && v6 <= 0xF)
    {
      if (v19)
      {
        return 1;
      }
    }

    else if (!v19)
    {
      if (v6 >> 6)
      {
        if (v6 >> 6 == 1)
        {
          v28 = *v1;
          v29 = v2;
          v30 = v4;
          v31 = v3;
          v32 = v5;
          v33 = v6 & 0x3F;
          if ((v13 & 0xC0) == 0x40)
          {
            *v34 = v8;
            v34[1] = v7;
            v34[2] = v9;
            v34[3] = v10;
            v35 = v11;
            v36 = v12;
            v37 = v13 & 0x3F;
            if (_s8Freeform17TSContentLanguageO6ModelsO6StrokeO4LineV23__derived_struct_equalsySbAI_AItFZ_0(&v28, v34))
            {
              return 1;
            }
          }
        }

        else if ((v13 & 0xC0) == 0x80 && !(v7 | *&v8 | v9 | v10 | v11 | v12) && v13 == 128)
        {
          return 1;
        }
      }

      else if (v13 < 0x40)
      {
        v27 = *(v1 + 1);
        v20 = a1[1];
        v21 = TSContentLanguage.Models.Stroke.Frame.Name.rawValue.getter(*v1);
        v23 = v22;
        if (v21 == TSContentLanguage.Models.Stroke.Frame.Name.rawValue.getter(SLOBYTE(v8)) && v23 == v24)
        {

          v25 = *&v27;
        }

        else
        {
          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v25 = *&v27;
          if ((v26 & 1) == 0)
          {
            return 0;
          }
        }

        if (v25 == v20)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1007C7000(const void *a1)
{
  memcpy(__dst, v1, 0x190uLL);
  memcpy(&__dst[400], a1, 0x190uLL);
  memcpy(v12, v1, 0x190uLL);
  if (sub_1007CE6B0(v12) != 1)
  {
    memcpy(__src, __dst, sizeof(__src));
    memcpy(v9, &__dst[400], sizeof(v9));
    if (sub_1007CE6B0(v9) != 1)
    {
      memcpy(v11, __src, sizeof(v11));
      memcpy(v5, &__dst[400], sizeof(v5));
      memcpy(v7, &__dst[400], 0x190uLL);
      sub_10000BE14(v1, v6, &qword_101A00768);
      sub_10000BE14(a1, v6, &qword_101A00768);
      sub_10000BE14(__src, v6, &qword_101A00768);
      v3 = _s8Freeform17TSContentLanguageO6ModelsO12ScaffoldFillV0eF4TypeO21__derived_enum_equalsySbAI_AItFZ_0(v11, v7);
      sub_10000CAAC(v5, &qword_101A00768);
      sub_10000CAAC(__src, &qword_101A00768);
      memcpy(v6, __dst, sizeof(v6));
      sub_10000CAAC(v6, &qword_101A00768);
      return v3 & 1;
    }

    goto LABEL_5;
  }

  memcpy(v7, &__dst[400], 0x190uLL);
  if (sub_1007CE6B0(v7) != 1)
  {
LABEL_5:
    memcpy(v7, __dst, sizeof(v7));
    sub_10000BE14(v1, v11, &qword_101A00768);
    sub_10000BE14(a1, v11, &qword_101A00768);
    sub_10000CAAC(v7, &qword_101A00770);
    v3 = 0;
    return v3 & 1;
  }

  memcpy(v11, __dst, sizeof(v11));
  sub_10000BE14(v1, v9, &qword_101A00768);
  sub_10000BE14(a1, v9, &qword_101A00768);
  sub_10000CAAC(v11, &qword_101A00768);
  v3 = 1;
  return v3 & 1;
}

BOOL sub_1007C725C(char a1, char a2)
{
  if (a2 == 3)
  {
    return a1 == 3;
  }

  if (a1 == 3)
  {
    return 0;
  }

  LOBYTE(v3) = a1;
  if (!a2)
  {
    v5 = 0xE300000000000000;
    v4 = 7105633;
    v3 = v3;
    if (v3)
    {
      goto LABEL_11;
    }

LABEL_17:
    v7 = 0xE300000000000000;
    if (v4 != 7105633)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (a2 == 1)
  {
    v4 = 0x6465726975716572;
  }

  else
  {
    v4 = 0x647261646E617473;
  }

  v5 = 0xE800000000000000;
  v3 = v3;
  if (!v3)
  {
    goto LABEL_17;
  }

LABEL_11:
  if (v3 == 1)
  {
    v6 = 0x6465726975716572;
  }

  else
  {
    v6 = 0x647261646E617473;
  }

  v7 = 0xE800000000000000;
  if (v4 != v6)
  {
    goto LABEL_21;
  }

LABEL_18:
  if (v5 == v7)
  {

    return 1;
  }

LABEL_21:
  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v8 & 1;
}

uint64_t sub_1007C73A8(uint64_t a1)
{
  v2 = *(v1 + 96);
  v3 = *(a1 + 96);
  v4 = v2 == 4;
  if (v3 != 4)
  {
    v4 = 0;
  }

  if (v2 != 4 && v3 != 4)
  {
    if (v2 == 3)
    {
      if (v3 == 3)
      {
        v4 = 1;
        return v4 & 1;
      }
    }

    else
    {
      v6 = *(v1 + 48);
      v13[2] = *(v1 + 32);
      v13[3] = v6;
      v7 = *(v1 + 80);
      v13[4] = *(v1 + 64);
      v13[5] = v7;
      v8 = *(v1 + 16);
      v13[0] = *v1;
      v13[1] = v8;
      v14 = v2;
      if (v3 != 3)
      {
        v9 = *(a1 + 48);
        v15[2] = *(a1 + 32);
        v15[3] = v9;
        v10 = *(a1 + 80);
        v15[4] = *(a1 + 64);
        v15[5] = v10;
        v11 = *(a1 + 16);
        v15[0] = *a1;
        v15[1] = v11;
        v16 = v3;
        v4 = _s8Freeform17TSContentLanguageO6ModelsO14ScaffoldShadowO0eF4TypeV23__derived_struct_equalsySbAI_AItFZ_0(v13, v15);
        return v4 & 1;
      }
    }

    v4 = 0;
  }

  return v4 & 1;
}

BOOL sub_1007C7468(char a1, char a2)
{
  if (a2 == 3)
  {
    return a1 == 3;
  }

  if (a1 == 3)
  {
    return 0;
  }

  LOBYTE(v3) = a1;
  if (!a2)
  {
    v5 = 0xE600000000000000;
    v4 = 0x656C62756F64;
    v3 = v3;
    if (v3)
    {
      goto LABEL_14;
    }

LABEL_23:
    v7 = 0xE600000000000000;
    if (v4 != 0x656C62756F64)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (a2 == 1)
  {
    v4 = 1701736302;
  }

  else
  {
    v4 = 0x656C676E6973;
  }

  if (a2 == 1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  v3 = v3;
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_14:
  if (v3 == 1)
  {
    v6 = 1701736302;
  }

  else
  {
    v6 = 0x656C676E6973;
  }

  if (v3 == 1)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 != v6)
  {
    goto LABEL_27;
  }

LABEL_24:
  if (v5 == v7)
  {

    return 1;
  }

LABEL_27:
  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v8 & 1;
}

BOOL sub_1007C759C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8 == -1)
  {
    return a4 == -1;
  }

  if (a4 == -1)
  {
    return 0;
  }

  if (!a8)
  {
    if (a4 || a5 != a1)
    {
      return 0;
    }

    if ((a7 & 1) == 0)
    {
      return (a3 & 1) == 0 && *&a6 == *&a2;
    }

    return (a3 & 1) != 0;
  }

  if (a8 != 1)
  {
    return a4 == 2 && !(a2 | a1 | a3);
  }

  if (a4 != 1)
  {
    return 0;
  }

  if (a5 != a1)
  {
    return 0;
  }

  v8 = *(a6 + 16);
  if (v8 != *(a2 + 16))
  {
    return 0;
  }

  if (v8 && a6 != a2)
  {
    v9 = (a6 + 32);
    v10 = (a2 + 32);
    while (*v9 == *v10)
    {
      ++v9;
      ++v10;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

LABEL_13:
  if (!a7)
  {
    return !a3;
  }

  return a3 && (sub_100673058(a7, a3) & 1) != 0;
}

uint64_t sub_1007C76BC(__int128 *a1)
{
  v3 = v1[7];
  v4 = v1[5];
  __src[6] = v1[6];
  __src[7] = v3;
  v5 = *a1;
  v6 = a1[1];
  v7 = v1[7];
  __src[8] = v1[8];
  *(&__src[8] + 14) = *(v1 + 142);
  v8 = v1[3];
  v9 = v1[1];
  __src[2] = v1[2];
  __src[3] = v8;
  v10 = v1[3];
  v11 = v1[5];
  __src[4] = v1[4];
  __src[5] = v11;
  v12 = v1[1];
  __src[0] = *v1;
  __src[1] = v12;
  *(&__src[18] + 14) = *(a1 + 142);
  v13 = a1[6];
  v14 = a1[8];
  __src[17] = a1[7];
  __src[18] = v14;
  v15 = a1[2];
  v16 = a1[4];
  v17 = a1[5];
  __src[13] = a1[3];
  __src[14] = v16;
  __src[16] = v13;
  __src[15] = v17;
  __src[10] = v5;
  __src[12] = v15;
  __src[11] = v6;
  v85[6] = __src[6];
  v85[7] = v7;
  v86[0] = v1[8];
  *(v86 + 14) = *(v1 + 142);
  v85[2] = __src[2];
  v85[3] = v10;
  v85[4] = __src[4];
  v85[5] = v4;
  v85[0] = __src[0];
  v85[1] = v9;
  if (sub_1007C8634(v85) != 1)
  {
    v65 = __src[6];
    v66 = __src[7];
    v67[0] = __src[8];
    *(v67 + 14) = *(&__src[8] + 14);
    v61 = __src[2];
    v62 = __src[3];
    v63 = __src[4];
    v64 = __src[5];
    v59 = __src[0];
    v60 = __src[1];
    __dst[6] = __src[16];
    __dst[7] = __src[17];
    __dst[8] = __src[18];
    *(&__dst[8] + 14) = *(&__src[18] + 14);
    __dst[2] = __src[12];
    __dst[3] = __src[13];
    __dst[4] = __src[14];
    __dst[5] = __src[15];
    __dst[0] = __src[10];
    __dst[1] = __src[11];
    if (sub_1007C8634(__dst) == 1)
    {
      goto LABEL_5;
    }

    v56[6] = v65;
    v56[7] = v66;
    v57[0] = v67[0];
    *(v57 + 14) = *(v67 + 14);
    v56[2] = v61;
    v56[3] = v62;
    v56[4] = v63;
    v56[5] = v64;
    v56[0] = v59;
    v56[1] = v60;
    v54[6] = __src[16];
    v54[7] = __src[17];
    v55[0] = __src[18];
    *(v55 + 14) = *(&__src[18] + 14);
    v54[2] = __src[12];
    v54[3] = __src[13];
    v54[4] = __src[14];
    v54[5] = __src[15];
    v54[0] = __src[10];
    v54[1] = __src[11];
    v19 = sub_1007CF090(v56);
    if (v19)
    {
      if (v19 != 1)
      {
        v51 = __src[16];
        v52 = __src[17];
        v53[0] = __src[18];
        *(v53 + 14) = *(&__src[18] + 14);
        v47 = __src[12];
        v48 = __src[13];
        v49 = __src[14];
        v50 = __src[15];
        v45 = __src[10];
        v46 = __src[11];
        if (sub_1007CF090(&v45) == 2)
        {
          sub_10000BE14(v1, v44, &qword_101A003D0);
          sub_10000BE14(a1, v44, &qword_101A003D0);
          sub_10000BE14(&v59, v44, &qword_101A003D0);
          v18 = 1;
LABEL_18:
          v51 = __src[6];
          v52 = __src[7];
          v53[0] = __src[8];
          *(v53 + 14) = *(&__src[8] + 14);
          v47 = __src[2];
          v48 = __src[3];
          v49 = __src[4];
          v50 = __src[5];
          v45 = __src[0];
          v46 = __src[1];
          sub_10000CAAC(&v45, &qword_101A003D0);
          return v18 & 1;
        }

        sub_10000BE14(v1, v44, &qword_101A003D0);
        sub_10000BE14(a1, v44, &qword_101A003D0);
        v38 = &v59;
LABEL_15:
        sub_10000BE14(v38, v44, &qword_101A003D0);
        sub_10000CAAC(v54, &qword_101A003D0);
        v18 = 0;
        goto LABEL_18;
      }

      v21 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v56, v20);
      v22 = v21[7];
      *&v74[16] = v21[6];
      v75 = v22;
      v76[0] = v21[8];
      *(v76 + 13) = *(v21 + 141);
      v23 = v21[3];
      v71 = v21[2];
      v72 = v23;
      v24 = v21[5];
      v73 = v21[4];
      *v74 = v24;
      v25 = v21[1];
      v69 = *v21;
      v70 = v25;
      v45 = __src[10];
      v46 = __src[11];
      v47 = __src[12];
      v48 = __src[13];
      v49 = __src[14];
      v50 = __src[15];
      v51 = __src[16];
      v52 = __src[17];
      v53[0] = __src[18];
      *(v53 + 14) = *(&__src[18] + 14);
      if (sub_1007CF090(&v45) == 1)
      {
        v27 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v45, v26);
        v28 = v27[7];
        *&v82[16] = v27[6];
        v83 = v28;
        v84[0] = v27[8];
        *(v84 + 13) = *(v27 + 141);
        v29 = v27[3];
        v79 = v27[2];
        v80 = v29;
        v30 = v27[5];
        v81 = v27[4];
        *v82 = v30;
        v31 = v27[1];
        v77 = *v27;
        v78 = v31;
        sub_10000BE14(v1, v44, &qword_101A003D0);
        sub_10000BE14(a1, v44, &qword_101A003D0);
        sub_10000BE14(&v59, v44, &qword_101A003D0);
        v32 = _s8Freeform17TSContentLanguageO6ModelsO19ScaffoldLayoutStyleV23__derived_struct_equalsySbAG_AGtFZ_0(&v69, &v77);
LABEL_17:
        v18 = v32;
        sub_10000CAAC(&v59, &qword_101A003D0);
        sub_10000CAAC(v54, &qword_101A003D0);
        goto LABEL_18;
      }
    }

    else
    {
      v33 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v56, v20);
      v34 = v33[5];
      v73 = v33[4];
      *v74 = v34;
      *&v74[13] = *(v33 + 93);
      v35 = v33[1];
      v69 = *v33;
      v70 = v35;
      v36 = v33[2];
      v72 = v33[3];
      v71 = v36;
      v45 = __src[10];
      v46 = __src[11];
      v49 = __src[14];
      v50 = __src[15];
      v47 = __src[12];
      v48 = __src[13];
      *(v53 + 14) = *(&__src[18] + 14);
      v52 = __src[17];
      v53[0] = __src[18];
      v51 = __src[16];
      if (!sub_1007CF090(&v45))
      {
        v39 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v45, v37);
        v40 = v39[5];
        v81 = v39[4];
        *v82 = v40;
        *&v82[13] = *(v39 + 93);
        v41 = v39[1];
        v77 = *v39;
        v78 = v41;
        v42 = v39[2];
        v80 = v39[3];
        v79 = v42;
        sub_10000BE14(v1, v44, &qword_101A003D0);
        sub_10000BE14(a1, v44, &qword_101A003D0);
        sub_10000BE14(&v59, v44, &qword_101A003D0);
        v32 = _s8Freeform17TSContentLanguageO6ModelsO16LayoutPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(&v69, &v77);
        goto LABEL_17;
      }
    }

    sub_10000BE14(v1, v44, &qword_101A003D0);
    v38 = a1;
    goto LABEL_15;
  }

  __dst[6] = __src[16];
  __dst[7] = __src[17];
  __dst[8] = __src[18];
  *(&__dst[8] + 14) = *(&__src[18] + 14);
  __dst[2] = __src[12];
  __dst[3] = __src[13];
  __dst[4] = __src[14];
  __dst[5] = __src[15];
  __dst[0] = __src[10];
  __dst[1] = __src[11];
  if (sub_1007C8634(__dst) != 1)
  {
LABEL_5:
    memcpy(__dst, __src, 0x13EuLL);
    sub_10000BE14(v1, &v59, &qword_101A003D0);
    sub_10000BE14(a1, &v59, &qword_101A003D0);
    sub_10000CAAC(__dst, &qword_101A009B8);
    v18 = 0;
    return v18 & 1;
  }

  v65 = __src[6];
  v66 = __src[7];
  v67[0] = __src[8];
  *(v67 + 14) = *(&__src[8] + 14);
  v61 = __src[2];
  v62 = __src[3];
  v63 = __src[4];
  v64 = __src[5];
  v59 = __src[0];
  v60 = __src[1];
  sub_10000BE14(v1, v56, &qword_101A003D0);
  sub_10000BE14(a1, v56, &qword_101A003D0);
  sub_10000CAAC(&v59, &qword_101A003D0);
  v18 = 1;
  return v18 & 1;
}

unint64_t sub_1007C7E18()
{
  result = qword_101A003F8;
  if (!qword_101A003F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A003F8);
  }

  return result;
}

unint64_t sub_1007C7E6C()
{
  result = qword_101A00408;
  if (!qword_101A00408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00408);
  }

  return result;
}

unint64_t sub_1007C7EFC(char a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_10147C8EC[a1]);
  if (a3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = Hasher._finalize()();

  return sub_1007C9778(a1, a2, a3, v6);
}

unint64_t sub_1007C7FB8(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  v6 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  (*(v6 + 32))(ObjectType, v6);
  sub_10003EA68(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(v3 + 8))(v5, v2);
  v8 = Hasher._finalize()();
  return sub_1007C98E4(a1, v8);
}

unint64_t sub_1007C8150(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1007CA1F0(a1, v4, &qword_1019FCBC0);
}

unint64_t sub_1007C81A0(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();
  return sub_1007C9878(a1, v2);
}

unint64_t sub_1007C8208(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1007C9EC0(a1, v4, type metadata accessor for CRLCollaborationParticipant);
}

unint64_t sub_1007C825C(uint64_t a1)
{
  type metadata accessor for URL();
  sub_10003EA68(&qword_101A00578, &type metadata accessor for URL);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10003EB40(a1, v2, &type metadata accessor for URL, &qword_101A00190, &type metadata accessor for URL, &protocol conformance descriptor for URL);
}

unint64_t sub_1007C8330(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1007C9F88(a1, v2);
}

unint64_t sub_1007C84C4(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1007CA1F0(a1, v4, &qword_101A00570);
}

unint64_t sub_1007C8514(uint64_t a1)
{
  type metadata accessor for CodingUserInfoKey();
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1007CA2BC(a1, v2);
}

unint64_t sub_1007C8578()
{
  result = qword_101A00410;
  if (!qword_101A00410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00410);
  }

  return result;
}

unint64_t sub_1007C85CC()
{
  result = qword_101A00418;
  if (!qword_101A00418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00418);
  }

  return result;
}

uint64_t sub_1007C8620(uint64_t a1)
{
  v1 = *(a1 + 1476);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007C8634(uint64_t a1)
{
  v1 = *(a1 + 157);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1007C8648()
{
  result = qword_101A00420;
  if (!qword_101A00420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00420);
  }

  return result;
}

unint64_t sub_1007C869C()
{
  result = qword_101A00430;
  if (!qword_101A00430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00430);
  }

  return result;
}

unint64_t sub_1007C86F0()
{
  result = qword_101A00438;
  if (!qword_101A00438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00438);
  }

  return result;
}

unint64_t sub_1007C8744()
{
  result = qword_101A00440;
  if (!qword_101A00440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00440);
  }

  return result;
}

unint64_t sub_1007C8798()
{
  result = qword_101A00448;
  if (!qword_101A00448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00448);
  }

  return result;
}

unint64_t sub_1007C880C(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1006C83D0();
  v2 = Hasher._finalize()();
  return sub_1007CBF04(a1, v2, type metadata accessor for CRLPreviewImages.Item, type metadata accessor for CRLPreviewImages.Item, sub_1006CC4F0, type metadata accessor for CRLPreviewImages.Item);
}

unint64_t sub_1007C88C4(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10003EA68(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLFolderIdentifierStorage(0);
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1007CA454(a1, v2);
}

unint64_t sub_1007C8994(unsigned __int16 a1)
{
  v2 = static Hasher._hash(seed:bytes:count:)();

  return sub_1007CA604(a1, v2);
}

unint64_t sub_1007C89DC(Swift::UInt *a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*a1);
  Hasher._combine(_:)(a1[1]);
  Hasher._combine(_:)(a1[2]);
  NSObject.hash(into:)();
  Selector.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1007CA674(a1, v2);
}

unint64_t sub_1007C8A78(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1007CA1F0(a1, v4, &qword_1019F69D0);
}

unint64_t sub_1007C8AC8(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_10003EA68(&qword_101A00568, type metadata accessor for CFString);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1007CA7B0(a1, v2);
}

unint64_t sub_1007C8B7C(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1007CA1F0(a1, v4, &qword_1019F6E98);
}

unint64_t sub_1007C8BCC(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1007CA8BC(a1, v2);
}

unint64_t sub_1007C8CE8(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1007C9EC0(a1, v4, type metadata accessor for CRLContainerItem);
}

unint64_t sub_1007C8D3C(char a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1007CAF34(a1 & 1, v2);
}

unint64_t sub_1007C8DCC(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1007CB030(a1, v2);
}

unint64_t sub_1007C8EE4(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1007CA1F0(a1, v4, &qword_101A04270);
}

unint64_t sub_1007C8F34(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1007CB24C(a1, v2);
}

uint64_t sub_1007C9028(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a2(a1);
  String.hash(into:)();

  v5 = Hasher._finalize()();

  return a3(a1, v5);
}

unint64_t sub_1007C90DC(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1007CB738(a1, v2);
}

unint64_t sub_1007C91CC(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  sub_100CB05D0();
  v2 = Hasher._finalize()();

  return sub_1007CB8F0(a1, v2);
}

uint64_t sub_1007C9238(uint64_t (*a1)(uint64_t, __n128), double a2)
{
  v3 = static Hasher._hash(seed:_:)();
  v4.n128_f64[0] = a2;

  return a1(v3, v4);
}

unint64_t sub_1007C9298(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();
  return sub_1007CBBD4(a1, v2);
}

unint64_t sub_1007C9300(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1007CBC44(a1, v2);
}

unint64_t sub_1007C93B4(char a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1007CBDBC(a1 & 1, v2);
}

unint64_t sub_1007C9460(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1005C7194();
  v2 = Hasher._finalize()();
  return sub_1007CBF04(a1, v2, type metadata accessor for CRLAssetReferrerIdentifier, type metadata accessor for CRLAssetReferrerIdentifier, sub_1005C8734, type metadata accessor for CRLAssetReferrerIdentifier);
}

unint64_t sub_1007C9518(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1007C9EC0(a1, v4, type metadata accessor for CRLBoardItem);
}

unint64_t sub_1007C9598(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1007C9EC0(a1, v4, type metadata accessor for CRLSceneInfo);
}

unint64_t sub_1007C95EC(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1007C9EC0(a1, v4, type metadata accessor for CRLWPListStyle);
}

unint64_t sub_1007C9640(Swift::UInt a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  v4 = Hasher._finalize()();
  return sub_1007CC460(a1, a2, v4);
}

unint64_t sub_1007C96BC(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10147C928[a1]);
  v2 = Hasher._finalize()();

  return sub_1007CC4D8(a1, v2);
}

unint64_t sub_1007C9734(unsigned __int8 a1)
{
  v2 = sub_1007B4A04();

  return sub_1007CC558(a1, v2);
}

unint64_t sub_1007C9778(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = ~v6;
    v11 = dword_10147C8EC[a1];
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      if (dword_10147C8EC[*v13] == v11)
      {
        v14 = *(v13 + 2);
        if (v14)
        {
          if (a3)
          {
            v15 = *(v13 + 1) == a2 && v14 == a3;
            if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              return v7;
            }
          }
        }

        else if (!a3)
        {
          return v7;
        }
      }

      v7 = (v7 + 1) & v10;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1007C9878(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1007C98E4(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v25 = type metadata accessor for UUID();
  v4 = __chkstk_darwin(v25);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v9 = &v22 - v8;
  v27 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v24 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v23 = ~v10;
    v12 = (v7 + 8);
    do
    {
      v13 = *(*(*(v27 + 48) + 8 * v11) + 24);
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 32);

      v15(ObjectType, v13);
      v16 = *(v26 + 24);
      v17 = swift_getObjectType();
      (*(v16 + 32))(v17, v16);
      v18 = static UUID.== infix(_:_:)();

      v19 = *v12;
      v20 = v25;
      (*v12)(v6, v25);
      v19(v9, v20);
      if (v18)
      {
        break;
      }

      v11 = (v11 + 1) & v23;
    }

    while (((*(v24 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1007C9AF0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 5)
      {
        if (*(*(v2 + 48) + v4) > 8u)
        {
          if (v7 == 9)
          {
            v8 = 0x646E616865657266;
            v9 = 0xEC00000061746144;
            goto LABEL_30;
          }

          if (v7 == 10)
          {
            v10 = 1818386804;
LABEL_29:
            v8 = v10 | 0x7461446500000000;
            v9 = 0xE900000000000061;
            goto LABEL_30;
          }

          v8 = 0x4465636166727573;
          v9 = 0xEB00000000617461;
        }

        else
        {
          if (v7 == 6)
          {
            v9 = 0xE800000000000000;
            v11 = 1701603686;
          }

          else
          {
            if (v7 == 7)
            {
              v9 = 0xE700000000000000;
              v8 = 0x617461446C7275;
              goto LABEL_30;
            }

            v9 = 0xE800000000000000;
            v11 = 2053403509;
          }

          v8 = v11 | 0x6174614400000000;
        }
      }

      else
      {
        if (*(*(v2 + 48) + v4) > 2u)
        {
          if (v7 == 3)
          {
            v10 = 1734438249;
          }

          else if (v7 == 4)
          {
            v10 = 1769369453;
          }

          else
          {
            v10 = 1885431923;
          }

          goto LABEL_29;
        }

        if (*(*(v2 + 48) + v4))
        {
          if (v7 == 1)
          {
            v8 = 0x656E6961746E6F63;
          }

          else
          {
            v8 = 0x7461446472616F62;
          }

          if (v7 == 1)
          {
            v9 = 0xED00006174614472;
          }

          else
          {
            v9 = 0xE900000000000061;
          }
        }

        else
        {
          v8 = 0x61446E6F6D6D6F63;
          v9 = 0xEA00000000006174;
        }
      }

LABEL_30:
      v12 = 0x746144656C626174;
      if (v6 != 10)
      {
        v12 = 0x4465636166727573;
      }

      v13 = 0xEB00000000617461;
      if (v6 == 10)
      {
        v13 = 0xE900000000000061;
      }

      if (v6 == 9)
      {
        v12 = 0x646E616865657266;
        v13 = 0xEC00000061746144;
      }

      v14 = 0x617461447A647375;
      if (v6 == 7)
      {
        v14 = 0x617461446C7275;
      }

      v15 = 0xE700000000000000;
      if (v6 != 7)
      {
        v15 = 0xE800000000000000;
      }

      if (v6 == 6)
      {
        v14 = 0x61746144656C6966;
        v15 = 0xE800000000000000;
      }

      if (v6 <= 8)
      {
        v12 = v14;
        v13 = v15;
      }

      v16 = 0x7461446570616873;
      if (v6 == 4)
      {
        v16 = 0x7461446569766F6DLL;
      }

      if (v6 == 3)
      {
        v16 = 0x7461446567616D69;
      }

      v17 = 0x7461446472616F62;
      if (v6 == 1)
      {
        v17 = 0x656E6961746E6F63;
      }

      v18 = 0xED00006174614472;
      if (v6 != 1)
      {
        v18 = 0xE900000000000061;
      }

      if (!v6)
      {
        v17 = 0x61446E6F6D6D6F63;
        v18 = 0xEA00000000006174;
      }

      if (v6 > 2)
      {
        v19 = 0xE900000000000061;
      }

      else
      {
        v16 = v17;
        v19 = v18;
      }

      if (v6 <= 5)
      {
        v20 = v16;
      }

      else
      {
        v20 = v12;
      }

      if (v6 <= 5)
      {
        v21 = v19;
      }

      else
      {
        v21 = v13;
      }

      if (v8 == v20 && v9 == v21)
      {

        return v4;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1007C9EC0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    a3(0);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1007C9F88(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 > 2)
      {
        if (v6 == 3)
        {
          v7 = 0x44656C7573706163;
          v8 = 0xEB00000000617461;
        }

        else
        {
          if (v6 == 4)
          {
            v7 = 0xD000000000000017;
          }

          else
          {
            v7 = 0xD000000000000019;
          }

          if (v6 == 4)
          {
            v8 = 0x8000000101551690;
          }

          else
          {
            v8 = 0x80000001015516B0;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v6 == 1)
        {
          v7 = 0x52436E6F6D6D6F63;
        }

        else
        {
          v7 = 0xD000000000000010;
        }

        if (v6 == 1)
        {
          v8 = 0xEE00617461445444;
        }

        else
        {
          v8 = 0x8000000101551670;
        }
      }

      else
      {
        v7 = 0x61447463656A626FLL;
        v8 = 0xEA00000000006174;
      }

      v9 = 0xD000000000000017;
      if (v5 == 4)
      {
        v10 = 0x8000000101551690;
      }

      else
      {
        v9 = 0xD000000000000019;
        v10 = 0x80000001015516B0;
      }

      if (v5 == 3)
      {
        v9 = 0x44656C7573706163;
        v10 = 0xEB00000000617461;
      }

      v11 = 0x52436E6F6D6D6F63;
      if (v5 != 1)
      {
        v11 = 0xD000000000000010;
      }

      v12 = 0xEE00617461445444;
      if (v5 != 1)
      {
        v12 = 0x8000000101551670;
      }

      if (!v5)
      {
        v11 = 0x61447463656A626FLL;
        v12 = 0xEA00000000006174;
      }

      v13 = v5 <= 2 ? v11 : v9;
      v14 = v5 <= 2 ? v12 : v10;
      if (v7 == v13 && v8 == v14)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1007CA1F0(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_100006370(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1007CA2BC(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  v6 = __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4, v6);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1007CA454(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CRLFolderIdentifier(0) - 8;
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    while (1)
    {
      sub_100048DB4(*(v2 + 48) + v12 * v10, v8, type metadata accessor for CRLFolderIdentifier);
      if (static UUID.== infix(_:_:)())
      {
        v13 = *(type metadata accessor for CRLFolderIdentifierStorage(0) + 20);
        v14 = *&v8[v13];
        v15 = *&v8[v13 + 8];
        v16 = (a1 + v13);
        v17 = v14 == *v16 && v15 == v16[1];
        if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      sub_100048E24(v8, type metadata accessor for CRLFolderIdentifier);
      v10 = (v10 + 1) & v11;
      if (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        return v10;
      }
    }

    sub_100048E24(v8, type metadata accessor for CRLFolderIdentifier);
  }

  return v10;
}

unint64_t sub_1007CA604(unsigned __int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 2 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1007CA674(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    v9 = *a1;
    do
    {
      v10 = (*(v6 + 48) + 40 * v5);
      if (*v10 == v9 && v10[1] == a1[1] && v10[2] == a1[2])
      {
        v11 = v10[3];
        sub_100006370(0, &qword_1019F54D0);
        v12 = v11;
        if (static NSObject.== infix(_:_:)())
        {
          v13 = static Selector.== infix(_:_:)();

          if (v13)
          {
            return v5;
          }
        }

        else
        {
        }
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1007CA7B0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_10003EA68(&qword_101A00568, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1007CA8BC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v9 = 0xE800000000000000;
          v8 = 0x746E656D75636F64;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 0x746E656D6D6F63;
          }

          else
          {
            v8 = 0x6E776F6E6B6E75;
          }

          v9 = 0xE700000000000000;
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 0x6570616873;
        }

        else
        {
          v8 = 0x616964656DLL;
        }

        v9 = 0xE500000000000000;
      }

      else
      {
        v9 = 0xE400000000000000;
        v8 = 1954047348;
      }

      v10 = 0x746E656D6D6F63;
      if (v6 != 4)
      {
        v10 = 0x6E776F6E6B6E75;
      }

      v11 = 0xE700000000000000;
      if (v6 == 3)
      {
        v10 = 0x746E656D75636F64;
        v11 = 0xE800000000000000;
      }

      v12 = 0x6570616873;
      if (v6 != 1)
      {
        v12 = 0x616964656DLL;
      }

      v13 = 0xE500000000000000;
      if (!v6)
      {
        v12 = 1954047348;
        v13 = 0xE400000000000000;
      }

      v14 = v6 <= 2 ? v12 : v10;
      v15 = v6 <= 2 ? v13 : v11;
      if (v8 == v14 && v9 == v15)
      {
        break;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1007CAAD8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v46 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = v2;
    v45 = ~v3;
    do
    {
      v7 = *(v5 + 48) + 56 * v4;
      v9 = *(v7 + 16);
      v8 = *(v7 + 32);
      v10 = *v7;
      v51 = *(v7 + 48);
      v49 = v9;
      v50 = v8;
      v48 = v10;
      sub_1000693DC(&v48, v47);
      v11 = sub_100068F28();
      v13 = v12;
      if (v11 == sub_100068F28() && v13 == v14)
      {
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v15 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v16 = v49;
      v17 = BYTE8(v49);
      v18 = v51;
      v19 = v51 >> 6;
      if (v19 > 1)
      {
        v22 = v50;
        v23 = (*(&v49 + 9) << 8) | ((*(&v49 + 13) | (HIBYTE(v49) << 16)) << 40);
        if (v19 == 2)
        {
          v24 = *(a1 + 48);
          if ((v24 & 0xC0) != 0x80)
          {
            goto LABEL_4;
          }

          v25 = *(a1 + 8);
          v26 = *(a1 + 16);
          v28 = *(a1 + 24);
          v27 = *(a1 + 32);
          v29 = *(a1 + 40);
          if (*(&v48 + 1))
          {
            if (!v25)
            {
              goto LABEL_4;
            }

            if (v48 != *a1)
            {
              v43 = *(a1 + 32);
              v44 = *(a1 + 40);
              v41 = *(a1 + 16);
              v42 = *(a1 + 24);
              v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v26 = v41;
              v28 = v42;
              v27 = v43;
              v29 = v44;
              if ((v30 & 1) == 0)
              {
                goto LABEL_4;
              }
            }
          }

          else if (v25)
          {
            goto LABEL_4;
          }

          if (v23 | v17)
          {
            if (!v28 || (v16 != v26 || (v23 | v17) != v28) && (v31 = v29, v32 = v27, v33 = _stringCompareWithSmolCheck(_:_:expecting:)(), v27 = v32, v29 = v31, (v33 & 1) == 0))
            {
LABEL_4:
              sub_1000698D0(&v48);
              goto LABEL_5;
            }
          }

          else if (v28)
          {
            goto LABEL_4;
          }

          if (!*(&v22 + 1))
          {
            v38 = v29;
            sub_1000698D0(&v48);
            if (v38)
            {
              goto LABEL_5;
            }

            goto LABEL_63;
          }

          if (!v29)
          {
            goto LABEL_4;
          }

          if (v22 == __PAIR128__(v29, v27))
          {
            sub_1000698D0(&v48);
LABEL_63:
            if (((v18 ^ v24) & 1) == 0)
            {
              return v4;
            }

            goto LABEL_5;
          }

          v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_1000698D0(&v48);
          if ((v18 ^ v24) & 1) == 0 && (v39)
          {
            return v4;
          }
        }

        else
        {
          v34 = v23 | BYTE8(v49);
          v35 = v49 | *(&v48 + 1);
          if (v51 != 192 || v35 | v48 | v50 | *(&v50 + 1) | v34)
          {
            if (v51 == 192 && v48 == 1 && !(v35 | v50 | *(&v50 + 1) | v34))
            {
              if (*(a1 + 48) != 192 || *a1 != 1)
              {
                goto LABEL_5;
              }
            }

            else if (*(a1 + 48) != 192 || *a1 != 2)
            {
              goto LABEL_5;
            }

            v37 = vorrq_s8(*(a1 + 16), *(a1 + 32));
            if (!(*&vorr_s8(*v37.i8, *&vextq_s8(v37, v37, 8uLL)) | *(a1 + 8)))
            {
              return v4;
            }
          }

          else if (*(a1 + 48) == 192)
          {
            v36 = vorrq_s8(*(a1 + 16), *(a1 + 32));
            if (!(*&vorr_s8(*v36.i8, *&vextq_s8(v36, v36, 8uLL)) | *(a1 + 8) | *a1))
            {
              return v4;
            }
          }
        }
      }

      else if (v19)
      {
        if ((*(a1 + 48) & 0xC0) == 0x40 && *a1 == v48 && *(a1 + 8) == *(&v48 + 1))
        {
          if (BYTE8(v49))
          {
            if (*(a1 + 24))
            {
              return v4;
            }
          }

          else if ((*(a1 + 24) & 1) == 0 && *(a1 + 16) == *&v49)
          {
            return v4;
          }
        }
      }

      else
      {
        if (*(a1 + 48) >= 0x40u)
        {
          goto LABEL_4;
        }

        v20 = *(a1 + 8);
        if (*(&v48 + 1))
        {
          if (!v20)
          {
            goto LABEL_4;
          }

          if (v48 == *a1)
          {
            sub_1000698D0(&v48);
            return v4;
          }

          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_1000698D0(&v48);
          if (v21)
          {
            return v4;
          }
        }

        else
        {
          sub_1000698D0(&v48);
          if (!v20)
          {
            return v4;
          }
        }
      }

LABEL_5:
      v4 = (v4 + 1) & v45;
    }

    while (((*(v46 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1007CAF34(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6573616572636564;
    }

    else
    {
      v6 = 0x6573616572636E69;
    }

    while (1)
    {
      v7 = *(*(v2 + 48) + v4) ? 0x6573616572636564 : 0x6573616572636E69;
      if (v7 == v6)
      {
        break;
      }

      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      swift_bridgeObjectRelease_n();
      if ((v8 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

unint64_t sub_1007CB030(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 > 2)
      {
        if (v6 == 3)
        {
          v8 = 0xE600000000000000;
          v7 = 0x657261757173;
        }

        else
        {
          if (v6 == 4)
          {
            v7 = 1918989427;
          }

          else
          {
            v7 = 0x656C676E61697274;
          }

          if (v6 == 4)
          {
            v8 = 0xE400000000000000;
          }

          else
          {
            v8 = 0xE800000000000000;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v6 == 1)
        {
          v7 = 1701734764;
        }

        else
        {
          v7 = 0xD000000000000010;
        }

        if (v6 == 1)
        {
          v8 = 0xE400000000000000;
        }

        else
        {
          v8 = 0x8000000101551A80;
        }
      }

      else
      {
        v8 = 0xE600000000000000;
        v7 = 0x656C63726963;
      }

      v9 = 0x656C676E61697274;
      if (v5 == 4)
      {
        v9 = 1918989427;
      }

      v10 = 0xE800000000000000;
      if (v5 == 4)
      {
        v10 = 0xE400000000000000;
      }

      if (v5 == 3)
      {
        v9 = 0x657261757173;
        v10 = 0xE600000000000000;
      }

      v11 = 0xD000000000000010;
      if (v5 == 1)
      {
        v11 = 1701734764;
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0x8000000101551A80;
      }

      if (!v5)
      {
        v11 = 0x656C63726963;
        v12 = 0xE600000000000000;
      }

      v13 = v5 <= 2 ? v11 : v9;
      v14 = v5 <= 2 ? v12 : v10;
      if (v7 == v13 && v8 == v14)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1007CB24C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x69726F7661666E75;
          v8 = 0xEA00000000006574;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0xE600000000000000;
          v7 = 0x656C67676F74;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE800000000000000;
            if (v7 != 0x657469726F766166)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE800000000000000;
        v7 = 0x657469726F766166;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x69726F7661666E75;
      }

      else
      {
        v10 = 0x656C67676F74;
      }

      if (v9 == 1)
      {
        v11 = 0xEA00000000006574;
      }

      else
      {
        v11 = 0xE600000000000000;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1007CB3E0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v27 + 48) + v4);
      if (v6 > 4)
      {
        if (*(*(v27 + 48) + v4) <= 6u)
        {
          if (v6 == 5)
          {
            v12 = 0xE400000000000000;
            v11 = 1918989427;
          }

          else
          {
            v12 = 0xE700000000000000;
            v11 = 0x786F4274786574;
          }
        }

        else if (v6 == 7)
        {
          v12 = 0xE800000000000000;
          v11 = 0x656C676E61697274;
        }

        else if (v6 == 8)
        {
          v12 = 0xE300000000000000;
          v11 = 7107189;
        }

        else
        {
          v12 = 0xE500000000000000;
          v11 = 0x616964656DLL;
        }
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0x657261757173;
        }

        else
        {
          v7 = 0x6F4E796B63697473;
        }

        if (v6 == 3)
        {
          v8 = 0xE600000000000000;
        }

        else
        {
          v8 = 0xEA00000000006574;
        }

        if (v6 == 2)
        {
          v7 = 0xD000000000000010;
          v8 = 0x8000000101551A80;
        }

        v9 = *(*(v27 + 48) + v4) ? 1701734764 : 0x656C63726963;
        v10 = *(*(v27 + 48) + v4) ? 0xE400000000000000 : 0xE600000000000000;
        v11 = *(*(v27 + 48) + v4) <= 1u ? v9 : v7;
        v12 = *(*(v27 + 48) + v4) <= 1u ? v10 : v8;
      }

      v13 = 0x616964656DLL;
      if (v5 == 8)
      {
        v13 = 7107189;
      }

      v14 = 0xE300000000000000;
      if (v5 != 8)
      {
        v14 = 0xE500000000000000;
      }

      if (v5 == 7)
      {
        v13 = 0x656C676E61697274;
        v14 = 0xE800000000000000;
      }

      v15 = 0x786F4274786574;
      if (v5 == 5)
      {
        v15 = 1918989427;
      }

      v16 = 0xE700000000000000;
      if (v5 == 5)
      {
        v16 = 0xE400000000000000;
      }

      if (v5 <= 6)
      {
        v13 = v15;
        v14 = v16;
      }

      if (v5 == 3)
      {
        v17 = 0x657261757173;
      }

      else
      {
        v17 = 0x6F4E796B63697473;
      }

      if (v5 == 3)
      {
        v18 = 0xE600000000000000;
      }

      else
      {
        v18 = 0xEA00000000006574;
      }

      if (v5 == 2)
      {
        v17 = 0xD000000000000010;
        v18 = 0x8000000101551A80;
      }

      if (v5)
      {
        v19 = 1701734764;
      }

      else
      {
        v19 = 0x656C63726963;
      }

      if (v5)
      {
        v20 = 0xE400000000000000;
      }

      else
      {
        v20 = 0xE600000000000000;
      }

      if (v5 <= 1)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v5 <= 4 ? v17 : v13;
      v22 = v5 <= 4 ? v18 : v14;
      if (v11 == v21 && v12 == v22)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v23 & 1) == 0)
      {
        v4 = (v4 + 1) & v25;
        if ((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1007CB6D0(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1007CB738(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      v7 = v6 == 2 ? 0x6E696C7265646E75 : 0x6874656B69727473;
      v8 = v6 == 2 ? 0xE900000000000065 : 0xED00006867756F72;
      v9 = *(*(v2 + 48) + v4) ? 0x63696C617469 : 1684828002;
      v10 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE400000000000000;
      v11 = *(*(v2 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v2 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v5 == 2 ? 0x6E696C7265646E75 : 0x6874656B69727473;
      v14 = v5 == 2 ? 0xE900000000000065 : 0xED00006867756F72;
      v15 = v5 ? 0x63696C617469 : 1684828002;
      v16 = v5 ? 0xE600000000000000 : 0xE400000000000000;
      v17 = v5 <= 1 ? v15 : v13;
      v18 = v5 <= 1 ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        break;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1007CB8F0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v24 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v26 + 48) + v4);
      if (v6 <= 3)
      {
        v9 = 0x6F4274726F707865;
        if (v6 == 2)
        {
          v9 = 0x6F4274726F706D69;
        }

        v10 = *(*(v26 + 48) + v4) ? 0x64616F6C6E776F64 : 0x44496472616F62;
        v11 = *(*(v26 + 48) + v4) ? 0xEE00737574617453 : 0xE700000000000000;
        v7 = *(*(v26 + 48) + v4) <= 1u ? v10 : v9;
        v8 = *(*(v26 + 48) + v4) <= 1u ? v11 : 0xEB00000000647261;
      }

      else if (*(*(v26 + 48) + v4) <= 5u)
      {
        v7 = v6 == 4 ? 0x616F426572616873 : 0xD000000000000011;
        v8 = v6 == 4 ? 0xEA00000000006472 : 0x8000000101551F00;
      }

      else if (v6 == 6)
      {
        v7 = 0xD000000000000010;
        v8 = 0x8000000101551F20;
      }

      else if (v6 == 7)
      {
        v7 = 0x64616F6C6E776F64;
        v8 = 0xED00006472616F42;
      }

      else
      {
        v7 = 0x616F427465736572;
        v8 = 0xEA00000000006472;
      }

      v12 = 0x616F427465736572;
      if (v5 == 7)
      {
        v12 = 0x64616F6C6E776F64;
      }

      v13 = 0xED00006472616F42;
      v14 = 0xEA00000000006472;
      if (v5 != 7)
      {
        v13 = 0xEA00000000006472;
      }

      if (v5 == 6)
      {
        v12 = 0xD000000000000010;
        v13 = 0x8000000101551F20;
      }

      if (v5 == 4)
      {
        v15 = 0x616F426572616873;
      }

      else
      {
        v15 = 0xD000000000000011;
      }

      if (v5 != 4)
      {
        v14 = 0x8000000101551F00;
      }

      if (v5 <= 5)
      {
        v12 = v15;
        v13 = v14;
      }

      v16 = 0x6F4274726F707865;
      if (v5 == 2)
      {
        v16 = 0x6F4274726F706D69;
      }

      v17 = v5 ? 0x64616F6C6E776F64 : 0x44496472616F62;
      v18 = v5 ? 0xEE00737574617453 : 0xE700000000000000;
      if (v5 > 1)
      {
        v19 = 0xEB00000000647261;
      }

      else
      {
        v16 = v17;
        v19 = v18;
      }

      v20 = v5 <= 3 ? v16 : v12;
      v21 = v5 <= 3 ? v19 : v13;
      if (v7 == v20 && v8 == v21)
      {
        break;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
        v4 = (v4 + 1) & v24;
        if ((*(v25 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1007CBBD4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1007CBC44(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE400000000000000;
          v8 = 1701079400;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0xE600000000000000;
          v8 = 0x656C67676F74;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE400000000000000;
            if (v8 != 2003789939)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0xE400000000000000;
        v8 = 2003789939;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 1701079400;
      }

      else
      {
        v10 = 0x656C67676F74;
      }

      if (v9 == 1)
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v11 = 0xE600000000000000;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1007CBDBC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6F4E796B63697473;
    }

    else
    {
      v6 = 0x786F6274786574;
    }

    if (a1)
    {
      v7 = 0xEA00000000006574;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6F4E796B63697473 : 0x786F6274786574;
      v9 = *(*(v2 + 48) + v4) ? 0xEA00000000006574 : 0xE700000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1007CBF04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, uint64_t), uint64_t (*a6)(void))
{
  v22 = a6;
  v11 = a3(0) - 8;
  __chkstk_darwin(v11);
  v14 = &v21 - v13;
  v15 = -1 << *(v6 + 32);
  v16 = a2 & ~v15;
  if ((*(v6 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v12 + 72);
    do
    {
      sub_100048DB4(*(v6 + 48) + v18 * v16, v14, a4);
      v19 = a5(v14, a1);
      sub_100048E24(v14, v22);
      if (v19)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
    }

    while (((*(v6 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  return v16;
}

unint64_t sub_1007CC060(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v43 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v40 = v14;
    v39 = HIDWORD(a1) - a1;
    v41 = v10;
    v42 = BYTE6(a2);
    v36 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v42;
          if (v13)
          {
            v26 = v39;
            if (v40)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          return v6;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        return v6;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v45[0] = v17;
          LOWORD(v45[1]) = v16;
          BYTE2(v45[1]) = BYTE2(v16);
          BYTE3(v45[1]) = BYTE3(v16);
          BYTE4(v45[1]) = BYTE4(v16);
          BYTE5(v45[1]) = BYTE5(v16);
          sub_100024E98(v17, v16);
          sub_1009F9010(v45, v9, v8, &v44);
          sub_10002640C(v17, v16);
          if (v44)
          {
            return v6;
          }

          v10 = v41;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        sub_100024E98(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v33 = __DataStorage._offset.getter();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        sub_100024E98(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v32 = __DataStorage._offset.getter();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        __DataStorage._length.getter();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        sub_1009F9010(v34, a1, a2, v45);
        sub_10002640C(v17, v16);
        if (v45[0])
        {
          return v6;
        }

        v4 = v36;
        v10 = v41;
        goto LABEL_13;
      }

      memset(v45, 0, 14);
      sub_100024E98(v17, v16);
      sub_1009F9010(v45, v9, v8, &v44);
      sub_10002640C(v17, v16);
      if (v44)
      {
        return v6;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v43) & 1) == 0)
    {
      return v6;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  return v6;
}

unint64_t sub_1007CC460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1007CC4D8(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (qword_10147C928[*(*(v2 + 48) + result)] == qword_10147C928[a1])
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1007CC558(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v24 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v26 + 48) + v4);
      if (v6 > 3)
      {
        if (*(*(v26 + 48) + v4) > 5u)
        {
          if (v6 == 6)
          {
            v12 = 0xE300000000000000;
            v11 = 6579570;
          }

          else
          {
            v12 = 0xE600000000000000;
            v11 = 0x776F6C6C6579;
          }
        }

        else
        {
          if (v6 == 4)
          {
            v11 = 0x65676E61726FLL;
          }

          else
          {
            v11 = 0x656C70727570;
          }

          v12 = 0xE600000000000000;
        }
      }

      else
      {
        if (v6 == 2)
        {
          v7 = 2036429415;
        }

        else
        {
          v7 = 0x6E65657267;
        }

        if (v6 == 2)
        {
          v8 = 0xE400000000000000;
        }

        else
        {
          v8 = 0xE500000000000000;
        }

        if (*(*(v26 + 48) + v4))
        {
          v9 = 1702194274;
        }

        else
        {
          v9 = 0x6B63616C62;
        }

        if (*(*(v26 + 48) + v4))
        {
          v10 = 0xE400000000000000;
        }

        else
        {
          v10 = 0xE500000000000000;
        }

        if (*(*(v26 + 48) + v4) <= 1u)
        {
          v11 = v9;
        }

        else
        {
          v11 = v7;
        }

        if (*(*(v26 + 48) + v4) <= 1u)
        {
          v12 = v10;
        }

        else
        {
          v12 = v8;
        }
      }

      v13 = 0x776F6C6C6579;
      if (v5 == 6)
      {
        v13 = 6579570;
      }

      v14 = 0xE300000000000000;
      if (v5 != 6)
      {
        v14 = 0xE600000000000000;
      }

      v15 = 0x656C70727570;
      if (v5 == 4)
      {
        v15 = 0x65676E61726FLL;
      }

      if (v5 <= 5)
      {
        v13 = v15;
        v14 = 0xE600000000000000;
      }

      if (v5 == 2)
      {
        v16 = 2036429415;
      }

      else
      {
        v16 = 0x6E65657267;
      }

      if (v5 == 2)
      {
        v17 = 0xE400000000000000;
      }

      else
      {
        v17 = 0xE500000000000000;
      }

      if (v5)
      {
        v18 = 1702194274;
      }

      else
      {
        v18 = 0x6B63616C62;
      }

      if (v5)
      {
        v19 = 0xE400000000000000;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

      if (v5 <= 1)
      {
        v16 = v18;
        v17 = v19;
      }

      v20 = v5 <= 3 ? v16 : v13;
      v21 = v5 <= 3 ? v17 : v14;
      if (v11 == v20 && v12 == v21)
      {
        break;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
        v4 = (v4 + 1) & v24;
        if ((*(v25 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO7TextboxV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = *(v1 + 8);
  v4 = *(v2 + 8);
  if (v3)
  {
    if (!v4)
    {
      goto LABEL_50;
    }

    if (*v1 != *v2 || v3 != v4)
    {
      v6 = v1;
      v7 = v2;
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v2 = v7;
      v9 = v8;
      v1 = v6;
      if ((v9 & 1) == 0)
      {
        goto LABEL_50;
      }
    }
  }

  else if (v4)
  {
    goto LABEL_50;
  }

  v10 = *(v1 + 56) | (*(v1 + 58) << 16);
  v11 = *(v2 + 56) | (*(v2 + 58) << 16);
  v12 = *(v2 + 56);
  if (*(v1 + 56) == 2)
  {
    if (v12 != 2)
    {
      goto LABEL_50;
    }
  }

  else
  {
    if (v12 == 2)
    {
      goto LABEL_50;
    }

    v13 = *(v1 + 16);
    v14 = *(v1 + 32);
    v15 = *(v1 + 48);
    v16 = *(v2 + 32);
    v17 = *(v2 + 48);
    v161[0] = *(v2 + 16);
    v161[1] = v16;
    v162 = v17;
    v163 = v11;
    v164 = BYTE2(v11);
    v157[0] = v13;
    v157[1] = v14;
    v158 = v15;
    v159 = v10;
    v160 = BYTE2(v10);
    v18 = v1;
    v19 = v2;
    v20 = _s8Freeform17TSContentLanguageO6ModelsO8GeometryV23__derived_struct_equalsySbAG_AGtFZ_0(v157, v161);
    v2 = v19;
    v21 = v20;
    v1 = v18;
    if ((v21 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  v22 = *(v1 + 59);
  v23 = *(v2 + 59);
  if (v22 == 2)
  {
    if (v23 != 2)
    {
      goto LABEL_50;
    }

    goto LABEL_20;
  }

  v24 = 0;
  if (v23 != 2 && ((v23 ^ v22) & 1) == 0)
  {
LABEL_20:
    v25 = *(v1 + 72);
    v26 = *(v2 + 72);
    if (v25)
    {
      if (!v26)
      {
        goto LABEL_50;
      }

      if (*(v1 + 64) != *(v2 + 64) || v25 != v26)
      {
        v27 = v1;
        v28 = v2;
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v2 = v28;
        v30 = v29;
        v1 = v27;
        if ((v30 & 1) == 0)
        {
          goto LABEL_50;
        }
      }
    }

    else if (v26)
    {
      goto LABEL_50;
    }

    v31 = *(v1 + 88);
    v32 = *(v2 + 88);
    if (v31)
    {
      if (!v32)
      {
        goto LABEL_50;
      }

      v33 = *(v1 + 80);
      v34 = *(v1 + 96);
      v35 = *(v1 + 112);
      v36 = *(v1 + 128);
      v37 = *(v2 + 96);
      v38 = *(v2 + 112);
      v39 = *(v2 + 128);
      v152 = *(v2 + 80);
      v153 = v32;
      v154 = v37;
      v155 = v38;
      v156 = v39 & 1;
      v147 = v33;
      v148 = v31;
      v149 = v34;
      v150 = v35;
      v151 = v36 & 1;
      v40 = v1;
      v41 = v2;

      v42 = _s8Freeform17TSContentLanguageO6ModelsO4PathO2eeoiySbAG_AGtFZ_0();

      v1 = v40;
      v2 = v41;
      if ((v42 & 1) == 0)
      {
        goto LABEL_50;
      }

LABEL_32:
      v43 = *(v1 + 248);
      v124[6] = *(v1 + 232);
      v124[7] = v43;
      v125[0] = *(v1 + 264);
      *(v125 + 14) = *(v1 + 278);
      v44 = *(v1 + 184);
      v124[2] = *(v1 + 168);
      v124[3] = v44;
      v45 = *(v1 + 216);
      v124[4] = *(v1 + 200);
      v124[5] = v45;
      v46 = *(v1 + 152);
      v124[0] = *(v1 + 136);
      v124[1] = v46;
      v47 = *(v2 + 248);
      v126[6] = *(v2 + 232);
      v126[7] = v47;
      v127[0] = *(v2 + 264);
      *(v127 + 14) = *(v2 + 278);
      v48 = *(v2 + 184);
      v126[2] = *(v2 + 168);
      v126[3] = v48;
      v49 = *(v2 + 216);
      v126[4] = *(v2 + 200);
      v126[5] = v49;
      v50 = *(v2 + 152);
      v126[0] = *(v2 + 136);
      v126[1] = v50;
      v51 = *(v1 + 248);
      v120[6] = *(v1 + 232);
      v120[7] = v51;
      v52 = *(v2 + 136);
      v120[8] = *(v1 + 264);
      *(&v120[8] + 14) = *(v1 + 278);
      v53 = *(v1 + 184);
      v120[2] = *(v1 + 168);
      v120[3] = v53;
      v54 = *(v1 + 216);
      v120[4] = *(v1 + 200);
      v120[5] = v54;
      v55 = *(v1 + 152);
      v120[0] = *(v1 + 136);
      v120[1] = v55;
      *(&v120[18] + 14) = *(v2 + 278);
      v56 = *(v2 + 232);
      v57 = *(v2 + 264);
      v120[17] = *(v2 + 248);
      v120[18] = v57;
      v58 = *(v2 + 200);
      v120[13] = *(v2 + 184);
      v120[14] = v58;
      v59 = *(v2 + 216);
      v120[16] = v56;
      v120[15] = v59;
      v60 = *(v2 + 168);
      v120[10] = v52;
      v61 = v2;
      v62 = *(v2 + 152);
      v120[12] = v60;
      v120[11] = v62;
      v63 = *(v1 + 248);
      v128[6] = *(v1 + 232);
      v128[7] = v63;
      v129[0] = *(v1 + 264);
      *(v129 + 14) = *(v1 + 278);
      v64 = *(v1 + 184);
      v128[2] = *(v1 + 168);
      v128[3] = v64;
      v65 = *(v1 + 216);
      v128[4] = *(v1 + 200);
      v128[5] = v65;
      v66 = v1;
      v67 = *(v1 + 152);
      v128[0] = *(v1 + 136);
      v128[1] = v67;
      if (sub_1007C8634(v128) == 1)
      {
        v119[6] = v120[16];
        v119[7] = v120[17];
        v119[8] = v120[18];
        *(&v119[8] + 14) = *(&v120[18] + 14);
        v119[2] = v120[12];
        v119[3] = v120[13];
        v119[4] = v120[14];
        v119[5] = v120[15];
        v119[0] = v120[10];
        v119[1] = v120[11];
        if (sub_1007C8634(v119) == 1)
        {
          v123[6] = v120[6];
          v123[7] = v120[7];
          v123[8] = v120[8];
          *(&v123[8] + 14) = *(&v120[8] + 14);
          v123[2] = v120[2];
          v123[3] = v120[3];
          v123[4] = v120[4];
          v123[5] = v120[5];
          v123[0] = v120[0];
          v123[1] = v120[1];
          sub_10000BE14(v124, v122, &qword_101A003D0);
          sub_10000BE14(v126, v122, &qword_101A003D0);
          v68 = v123;
          goto LABEL_35;
        }

LABEL_40:
        memcpy(v119, v120, 0x13EuLL);
        sub_10000BE14(v124, v123, &qword_101A003D0);
        sub_10000BE14(v126, v123, &qword_101A003D0);
        v71 = &qword_101A009B8;
LABEL_48:
        v88 = v119;
LABEL_49:
        sub_10000CAAC(v88, v71);
        goto LABEL_50;
      }

      v119[6] = v120[16];
      v119[7] = v120[17];
      v119[8] = v120[18];
      *(&v119[8] + 14) = *(&v120[18] + 14);
      v119[2] = v120[12];
      v119[3] = v120[13];
      v119[4] = v120[14];
      v119[5] = v120[15];
      v119[0] = v120[10];
      v119[1] = v120[11];
      if (sub_1007C8634(v119) == 1)
      {
        goto LABEL_40;
      }

      v122[6] = v120[16];
      v122[7] = v120[17];
      v122[8] = v120[18];
      *(&v122[8] + 14) = *(&v120[18] + 14);
      v122[2] = v120[12];
      v122[3] = v120[13];
      v122[4] = v120[14];
      v122[5] = v120[15];
      v122[0] = v120[10];
      v122[1] = v120[11];
      v123[6] = v120[6];
      v123[7] = v120[7];
      v123[8] = v120[8];
      *(&v123[8] + 14) = *(&v120[8] + 14);
      v123[2] = v120[2];
      v123[3] = v120[3];
      v123[4] = v120[4];
      v123[5] = v120[5];
      v123[0] = v120[0];
      v123[1] = v120[1];
      v72 = sub_1007CF090(v123);
      if (v72)
      {
        if (v72 == 1)
        {
          v75 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v123, *&v73);
          v76 = v75[7];
          *&v136[16] = v75[6];
          v137 = v76;
          v138[0] = v75[8];
          *(v138 + 13) = *(v75 + 141);
          v77 = v75[3];
          v133 = v75[2];
          v134 = v77;
          v78 = v75[5];
          v135 = v75[4];
          *v136 = v78;
          v79 = v75[1];
          v131 = *v75;
          v132 = v79;
          v121[0] = v120[10];
          v121[1] = v120[11];
          v121[2] = v120[12];
          v121[3] = v120[13];
          v121[4] = v120[14];
          v121[5] = v120[15];
          v121[6] = v120[16];
          v121[7] = v120[17];
          v121[8] = v120[18];
          *(&v121[8] + 14) = *(&v120[18] + 14);
          if (sub_1007CF090(v121) == 1)
          {
            v82 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v121, *&v80);
            v83 = v82[7];
            *&v144[16] = v82[6];
            v145 = v83;
            v146[0] = v82[8];
            *(v146 + 13) = *(v82 + 141);
            v84 = v82[3];
            v141 = v82[2];
            v142 = v84;
            v85 = v82[5];
            v143 = v82[4];
            *v144 = v85;
            v86 = v82[1];
            v139 = *v82;
            v140 = v86;
            sub_10000BE14(v124, v118, &qword_101A003D0);
            sub_10000BE14(v126, v118, &qword_101A003D0);
            v87 = _s8Freeform17TSContentLanguageO6ModelsO19ScaffoldLayoutStyleV23__derived_struct_equalsySbAG_AGtFZ_0(&v131, &v139);
            sub_10000CAAC(v122, &qword_101A003D0);
            if (!v87)
            {
              v118[6] = v120[6];
              v118[7] = v120[7];
              v118[8] = v120[8];
              *(&v118[8] + 14) = *(&v120[8] + 14);
              v118[2] = v120[2];
              v118[3] = v120[3];
              v118[4] = v120[4];
              v118[5] = v120[5];
              v118[0] = v120[0];
              v118[1] = v120[1];
              v71 = &qword_101A003D0;
              v88 = v118;
              goto LABEL_49;
            }

            v118[6] = v120[6];
            v118[7] = v120[7];
            v118[8] = v120[8];
            *(&v118[8] + 14) = *(&v120[8] + 14);
            v118[2] = v120[2];
            v118[3] = v120[3];
            v118[4] = v120[4];
            v118[5] = v120[5];
            v118[0] = v120[0];
            v118[1] = v120[1];
            v68 = v118;
LABEL_35:
            sub_10000CAAC(v68, &qword_101A003D0);
            memcpy(v121, (v66 + 296), 0x5C5uLL);
            memcpy(v122, (v61 + 296), 0x5C5uLL);
            memcpy(v120, (v66 + 296), 0x5C5uLL);
            memcpy(&v120[92] + 8, (v61 + 296), 0x5C5uLL);
            memcpy(v123, (v66 + 296), 0x5C5uLL);
            if (sub_1007C8620(v123) == 1)
            {
              memcpy(v119, &v120[92] + 8, 0x5C5uLL);
              if (sub_1007C8620(v119) == 1)
              {
                memcpy(v118, v120, 0x5C5uLL);
                sub_10000BE14(v121, v117, &qword_101A003D8);
                sub_10000BE14(v122, v117, &qword_101A003D8);
                v69 = v118;
LABEL_38:
                sub_10000CAAC(v69, &qword_101A003D8);
                v70 = type metadata accessor for TSContentLanguage.Models.Textbox();
                v24 = _s8Freeform17TSContentLanguageO6ModelsO4TextO21__derived_enum_equalsySbAG_AGtFZ_0(v66 + *(v70 + 44), v61 + *(v70 + 44));
                return v24 & 1;
              }

              goto LABEL_47;
            }

            memcpy(v119, &v120[92] + 8, 0x5C5uLL);
            if (sub_1007C8620(v119) == 1)
            {
LABEL_47:
              memcpy(v119, v120, 0xB8DuLL);
              sub_10000BE14(v121, v118, &qword_101A003D8);
              sub_10000BE14(v122, v118, &qword_101A003D8);
              v71 = &qword_101A009C0;
              goto LABEL_48;
            }

            memcpy(v117, &v120[92] + 8, 0x5C5uLL);
            memcpy(v118, v120, 0x5C5uLL);
            v101 = sub_1007CF078(v118);
            if (v101)
            {
              if (v101 == 1)
              {
                v104 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v118, *&v102);
                memcpy(v130, v104, 0x5C4uLL);
                memcpy(__dst, &v120[92] + 8, 0x5C5uLL);
                if (sub_1007CF078(__dst) == 1)
                {
                  v107 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(__dst, *&v105);
                  memcpy(v114, v107, 0x5C4uLL);
                  sub_10000BE14(v121, v115, &qword_101A003D8);
                  sub_10000BE14(v122, v115, &qword_101A003D8);
                  v108 = _s8Freeform17TSContentLanguageO6ModelsO22ScaffoldParagraphStyleV23__derived_struct_equalsySbAG_AGtFZ_0(v130);
                  sub_10000CAAC(v117, &qword_101A003D8);
                  if (v108)
                  {
                    memcpy(v115, v120, 0x5C5uLL);
                    v69 = v115;
                    goto LABEL_38;
                  }

                  memcpy(v115, v120, 0x5C5uLL);
                  v71 = &qword_101A003D8;
                  v88 = v115;
                  goto LABEL_49;
                }
              }

              else
              {
                memcpy(__dst, &v120[92] + 8, 0x5C5uLL);
                if (sub_1007CF078(__dst) == 2)
                {
                  memcpy(v115, v120, 0x5C5uLL);
                  sub_10000BE14(v121, v114, &qword_101A003D8);
                  sub_10000BE14(v122, v114, &qword_101A003D8);
                  v69 = v115;
                  goto LABEL_38;
                }
              }
            }

            else
            {
              v109 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v118, *&v102);
              memcpy(v130, v109, 0x594uLL);
              memcpy(__dst, &v120[92] + 8, 0x5C5uLL);
              if (!sub_1007CF078(__dst))
              {
                v112 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(__dst, *&v110);
                memcpy(v114, v112, 0x594uLL);
                sub_10000BE14(v121, v115, &qword_101A003D8);
                sub_10000BE14(v122, v115, &qword_101A003D8);
                v113 = _s8Freeform17TSContentLanguageO6ModelsO19ParagraphPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(v130);
                sub_10000CAAC(v117, &qword_101A003D8);
                if (v113)
                {
                  memcpy(__dst, v120, 0x5C5uLL);
                  v69 = __dst;
                  goto LABEL_38;
                }

                goto LABEL_70;
              }
            }

            sub_10000BE14(v121, v115, &qword_101A003D8);
            sub_10000BE14(v122, v115, &qword_101A003D8);
            sub_10000CAAC(v117, &qword_101A003D8);
LABEL_70:
            memcpy(__dst, v120, 0x5C5uLL);
            v71 = &qword_101A003D8;
            v88 = __dst;
            goto LABEL_49;
          }
        }

        else
        {
          v121[6] = v120[16];
          v121[7] = v120[17];
          v121[8] = v120[18];
          *(&v121[8] + 14) = *(&v120[18] + 14);
          v121[2] = v120[12];
          v121[3] = v120[13];
          v121[4] = v120[14];
          v121[5] = v120[15];
          v121[0] = v120[10];
          v121[1] = v120[11];
          if (sub_1007CF090(v121) == 2)
          {
            v118[6] = v120[6];
            v118[7] = v120[7];
            v118[8] = v120[8];
            *(&v118[8] + 14) = *(&v120[8] + 14);
            v118[2] = v120[2];
            v118[3] = v120[3];
            v118[4] = v120[4];
            v118[5] = v120[5];
            v118[0] = v120[0];
            v118[1] = v120[1];
            sub_10000BE14(v124, v117, &qword_101A003D0);
            sub_10000BE14(v126, v117, &qword_101A003D0);
            v68 = v118;
            goto LABEL_35;
          }
        }
      }

      else
      {
        v90 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v123, *&v73);
        v91 = v90[5];
        v135 = v90[4];
        *v136 = v91;
        *&v136[13] = *(v90 + 93);
        v92 = v90[1];
        v131 = *v90;
        v132 = v92;
        v93 = v90[2];
        v134 = v90[3];
        v133 = v93;
        v121[1] = v120[11];
        v121[0] = v120[10];
        v121[5] = v120[15];
        v121[4] = v120[14];
        v121[3] = v120[13];
        v121[2] = v120[12];
        *(&v121[8] + 14) = *(&v120[18] + 14);
        v121[8] = v120[18];
        v121[7] = v120[17];
        v121[6] = v120[16];
        if (!sub_1007CF090(v121))
        {
          v96 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v121, *&v94);
          v97 = v96[5];
          v143 = v96[4];
          *v144 = v97;
          *&v144[13] = *(v96 + 93);
          v98 = v96[1];
          v139 = *v96;
          v140 = v98;
          v99 = v96[2];
          v142 = v96[3];
          v141 = v99;
          sub_10000BE14(v124, v118, &qword_101A003D0);
          sub_10000BE14(v126, v118, &qword_101A003D0);
          v100 = _s8Freeform17TSContentLanguageO6ModelsO16LayoutPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(&v131, &v139);
          sub_10000CAAC(v122, &qword_101A003D0);
          if (v100)
          {
            v121[6] = v120[6];
            v121[7] = v120[7];
            v121[8] = v120[8];
            *(&v121[8] + 14) = *(&v120[8] + 14);
            v121[2] = v120[2];
            v121[3] = v120[3];
            v121[4] = v120[4];
            v121[5] = v120[5];
            v121[0] = v120[0];
            v121[1] = v120[1];
            v68 = v121;
            goto LABEL_35;
          }

LABEL_58:
          v121[6] = v120[6];
          v121[7] = v120[7];
          v121[8] = v120[8];
          *(&v121[8] + 14) = *(&v120[8] + 14);
          v121[2] = v120[2];
          v121[3] = v120[3];
          v121[4] = v120[4];
          v121[5] = v120[5];
          v121[0] = v120[0];
          v121[1] = v120[1];
          v71 = &qword_101A003D0;
          v88 = v121;
          goto LABEL_49;
        }
      }

      sub_10000BE14(v124, v118, &qword_101A003D0);
      sub_10000BE14(v126, v118, &qword_101A003D0);
      sub_10000CAAC(v122, &qword_101A003D0);
      goto LABEL_58;
    }

    if (!v32)
    {
      goto LABEL_32;
    }

LABEL_50:
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_1007CD96C(uint64_t a1)
{
  result = sub_10003EA68(&qword_101A00460, type metadata accessor for TSContentLanguage.Models.Textbox);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1007CD9C4(uint64_t a1)
{
  result = sub_10003EA68(&qword_101A00468, type metadata accessor for TSContentLanguage.Models.Textbox);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1007CDA1C(void *a1)
{
  a1[2] = sub_10003EA68(&qword_101A00470, type metadata accessor for TSContentLanguage.Models.Textbox);
  a1[3] = sub_10003EA68(&qword_101A00478, type metadata accessor for TSContentLanguage.Models.Textbox);
  result = sub_10003EA68(&qword_101A00480, type metadata accessor for TSContentLanguage.Models.Textbox);
  a1[4] = result;
  return result;
}

void sub_1007CDAF0()
{
  sub_1005FEE9C(319, &qword_1019F5D48);
  if (v0 <= 0x3F)
  {
    sub_1005FEE9C(319, &qword_101A004F0);
    if (v1 <= 0x3F)
    {
      sub_1005FEE9C(319, &qword_1019F5D50);
      if (v2 <= 0x3F)
      {
        sub_1005FEE9C(319, &qword_101A004F8);
        if (v3 <= 0x3F)
        {
          sub_1005FEE9C(319, &qword_101A00500);
          if (v4 <= 0x3F)
          {
            sub_1005FEE9C(319, &unk_101A00508);
            if (v5 <= 0x3F)
            {
              type metadata accessor for TSContentLanguage.Models.Text();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1007CDC64()
{
  result = qword_101A00550;
  if (!qword_101A00550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00550);
  }

  return result;
}

unint64_t sub_1007CDCBC()
{
  result = qword_101A00558;
  if (!qword_101A00558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00558);
  }

  return result;
}

unint64_t sub_1007CDD14()
{
  result = qword_101A00560;
  if (!qword_101A00560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00560);
  }

  return result;
}

uint64_t sub_1007CDD68()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();
  return sub_10005F178(v0);
}

unint64_t sub_1007CDDD0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101874B60, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1007CDE1C()
{
  result = qword_101A00588;
  if (!qword_101A00588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00588);
  }

  return result;
}

unint64_t sub_1007CDECC()
{
  result = qword_101A00598;
  if (!qword_101A00598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00598);
  }

  return result;
}

unint64_t sub_1007CDF20()
{
  result = qword_101A005A8;
  if (!qword_101A005A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A005A8);
  }

  return result;
}

unint64_t sub_1007CDF74()
{
  result = qword_101A005C8;
  if (!qword_101A005C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A005C8);
  }

  return result;
}

unint64_t sub_1007CDFC8()
{
  result = qword_101A005D0;
  if (!qword_101A005D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A005D0);
  }

  return result;
}

unint64_t sub_1007CE01C()
{
  result = qword_101A005D8;
  if (!qword_101A005D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A005D8);
  }

  return result;
}

unint64_t sub_1007CE070()
{
  result = qword_101A005E0;
  if (!qword_101A005E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A005E0);
  }

  return result;
}

unint64_t sub_1007CE0C4()
{
  result = qword_101A005E8;
  if (!qword_101A005E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A005E8);
  }

  return result;
}

uint64_t sub_1007CE118(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1007CE130()
{
  result = qword_101A00630;
  if (!qword_101A00630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00630);
  }

  return result;
}

unint64_t sub_1007CE184()
{
  result = qword_101A00638;
  if (!qword_101A00638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00638);
  }

  return result;
}

uint64_t sub_1007CE1D8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1007CE254()
{
  result = qword_101A00658;
  if (!qword_101A00658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00658);
  }

  return result;
}

unint64_t sub_1007CE2A8()
{
  result = qword_101A00660;
  if (!qword_101A00660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00660);
  }

  return result;
}

unint64_t sub_1007CE2FC()
{
  result = qword_101A00678;
  if (!qword_101A00678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00678);
  }

  return result;
}

unint64_t sub_1007CE350()
{
  result = qword_101A00680;
  if (!qword_101A00680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00680);
  }

  return result;
}

unint64_t sub_1007CE3A4()
{
  result = qword_101A00698;
  if (!qword_101A00698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00698);
  }

  return result;
}

uint64_t sub_1007CE3F8(uint64_t a1)
{
  v1 = *(a1 + 168) >> 1;
  v2 = -2 - v1;
  if (-2 - v1 < 0)
  {
    v2 = -1;
  }

  if (v1 > 0x80000000)
  {
    return (v2 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1007CE420()
{
  result = qword_101A006E0;
  if (!qword_101A006E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A006E0);
  }

  return result;
}

uint64_t sub_1007CE474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_10067F154();
  }

  return result;
}

unint64_t sub_1007CE48C()
{
  result = qword_101A00700;
  if (!qword_101A00700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00700);
  }

  return result;
}

unint64_t sub_1007CE4E0()
{
  result = qword_101A00710;
  if (!qword_101A00710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00710);
  }

  return result;
}

unint64_t sub_1007CE534()
{
  result = qword_101A00718;
  if (!qword_101A00718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00718);
  }

  return result;
}

unint64_t sub_1007CE588()
{
  result = qword_101A00720;
  if (!qword_101A00720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00720);
  }

  return result;
}

uint64_t sub_1007CE5DC(uint64_t a1)
{
  v1 = *(a1 + 224);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007CE5F0(uint64_t a1)
{
  if (*(a1 + 224) <= 1u)
  {
    return *(a1 + 224);
  }

  else
  {
    return (*a1 + 2);
  }
}

unint64_t sub_1007CE608()
{
  result = qword_101A00748;
  if (!qword_101A00748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00748);
  }

  return result;
}

unint64_t sub_1007CE65C()
{
  result = qword_101A00760;
  if (!qword_101A00760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00760);
  }

  return result;
}

uint64_t sub_1007CE6B0(uint64_t a1)
{
  if ((*(a1 + 112) >> 1) > 0x80000000)
  {
    return -(*(a1 + 112) >> 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1007CE6C8()
{
  result = qword_101A00780;
  if (!qword_101A00780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00780);
  }

  return result;
}

unint64_t sub_1007CE71C()
{
  result = qword_101A00788;
  if (!qword_101A00788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00788);
  }

  return result;
}

unint64_t sub_1007CE770()
{
  result = qword_101A00790;
  if (!qword_101A00790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00790);
  }

  return result;
}

unint64_t sub_1007CE7C4()
{
  result = qword_101A007A8;
  if (!qword_101A007A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A007A8);
  }

  return result;
}

unint64_t sub_1007CE818()
{
  result = qword_101A007B0;
  if (!qword_101A007B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A007B0);
  }

  return result;
}

unint64_t sub_1007CE86C()
{
  result = qword_101A007B8;
  if (!qword_101A007B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A007B8);
  }

  return result;
}

unint64_t sub_1007CE8C0()
{
  result = qword_101A007C8;
  if (!qword_101A007C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A007C8);
  }

  return result;
}

unint64_t sub_1007CE914()
{
  result = qword_101A007D8;
  if (!qword_101A007D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A007D8);
  }

  return result;
}

unint64_t sub_1007CE968()
{
  result = qword_101A007E0;
  if (!qword_101A007E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A007E0);
  }

  return result;
}

unint64_t sub_1007CE9BC()
{
  result = qword_101A007E8;
  if (!qword_101A007E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A007E8);
  }

  return result;
}

uint64_t sub_1007CEA10(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1007CEA24(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1007CEA24(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  return result;
}

unint64_t sub_1007CEA70()
{
  result = qword_101A00820;
  if (!qword_101A00820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00820);
  }

  return result;
}

uint64_t sub_1007CEAC4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1007CEB2C()
{
  result = qword_101A00838;
  if (!qword_101A00838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00838);
  }

  return result;
}

unint64_t sub_1007CEB80()
{
  result = qword_101A00850;
  if (!qword_101A00850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00850);
  }

  return result;
}

unint64_t sub_1007CEBD4()
{
  result = qword_101A00878;
  if (!qword_101A00878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00878);
  }

  return result;
}

unint64_t sub_1007CEC28()
{
  result = qword_101A00890;
  if (!qword_101A00890)
  {
    sub_1005C4E5C(&qword_101A00880);
    sub_10003EA68(&qword_101A00898, type metadata accessor for TSContentLanguage.Models.CanvasObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00890);
  }

  return result;
}

unint64_t sub_1007CECDC()
{
  result = qword_101A008A8;
  if (!qword_101A008A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A008A8);
  }

  return result;
}

unint64_t sub_1007CED30()
{
  result = qword_101A008C0;
  if (!qword_101A008C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A008C0);
  }

  return result;
}

unint64_t sub_1007CED84()
{
  result = qword_101A008C8;
  if (!qword_101A008C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A008C8);
  }

  return result;
}

unint64_t sub_1007CEDD8()
{
  result = qword_101A008E8;
  if (!qword_101A008E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A008E8);
  }

  return result;
}

unint64_t sub_1007CEE2C()
{
  result = qword_101A00928;
  if (!qword_101A00928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00928);
  }

  return result;
}

unint64_t sub_1007CEE80()
{
  result = qword_101A00948;
  if (!qword_101A00948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00948);
  }

  return result;
}

unint64_t sub_1007CEED4()
{
  result = qword_101A00950;
  if (!qword_101A00950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00950);
  }

  return result;
}

unint64_t sub_1007CEF28()
{
  result = qword_101A00960;
  if (!qword_101A00960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00960);
  }

  return result;
}

unint64_t sub_1007CEF7C()
{
  result = qword_101A00990;
  if (!qword_101A00990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00990);
  }

  return result;
}

unint64_t sub_1007CEFD0()
{
  result = qword_101A009A0;
  if (!qword_101A009A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A009A0);
  }

  return result;
}

unint64_t sub_1007CF024()
{
  result = qword_101A009B0;
  if (!qword_101A009B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A009B0);
  }

  return result;
}

uint64_t sub_1007CF078(uint64_t a1)
{
  if (*(a1 + 1476) <= 1u)
  {
    return *(a1 + 1476);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1007CF090(uint64_t a1)
{
  if (*(a1 + 157) <= 1u)
  {
    return *(a1 + 157);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1007CF114(uint64_t a1, int a2)
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

uint64_t sub_1007CF15C(uint64_t result, int a2, int a3)
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

void *sub_1007CF1AC(uint64_t a1, double a2)
{
  v3 = sub_100788EF8(a1);
  v4 = v3[2];
  if (v4)
  {
    v5 = (v3 + 4);
    v6 = _swiftEmptyArrayStorage;
    v7 = 0.0;
    while (1)
    {
      sub_1007894E0(v5, v23);
      v8 = v25;
      v18 = v24;
      v9 = v24;
      sub_100020E58(v23, v24);
      v10 = *(v8 + 16);
      v21 = v18;
      v22 = v8;
      sub_10002C58C(v20);
      v10(v9, v8, v7);
      sub_1005B981C(&qword_101A009D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v19 = v21;
      v12 = v21;
      v13 = sub_100020E58(v20, v21);
      *(inited + 56) = v19;
      v14 = sub_10002C58C((inited + 32));
      (*(*(v12 - 8) + 16))(v14, v13, v12);
      v15 = v6[2];
      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v17 = v6[3] >> 1, v17 <= v15))
      {
        result = sub_100B364B4(result, v15 + 1, 1, v6);
        v6 = result;
        v17 = result[3] >> 1;
      }

      if (v17 <= v6[2])
      {
        break;
      }

      v7 = v7 + a2;
      sub_1005B981C(&qword_1019F7320);
      swift_arrayInitWithCopy();

      ++v6[2];
      sub_100005070(v20);
      sub_100005070(v23);
      v5 += 48;
      if (!--v4)
      {

        return v6;
      }
    }

    __break(1u);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

void *sub_1007CF3F4(uint64_t a1, double a2)
{
  v2 = sub_1007CF1AC(a1, a2);
  v3 = v2[2];
  if (!v3)
  {

    return _swiftEmptyArrayStorage;
  }

  v4 = _swiftEmptyArrayStorage;
  for (i = (v2 + 4); ; i += 40)
  {
    sub_10000630C(i, v17);
    v7 = v18;
    v8 = v19;
    sub_100020E58(v17, v18);
    v9 = (*(v8 + 40))(v7, v8);
    result = sub_100005070(v17);
    v10 = *(v9 + 16);
    v11 = v4[2];
    v12 = v11 + v10;
    if (__OFADD__(v11, v10))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v12 <= v4[3] >> 1)
    {
      if (*(v9 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v11 <= v12)
      {
        v13 = v11 + v10;
      }

      else
      {
        v13 = v11;
      }

      result = sub_100B36A2C(result, v13, 1, v4);
      v4 = result;
      if (*(v9 + 16))
      {
LABEL_14:
        if ((v4[3] >> 1) - v4[2] < v10)
        {
          goto LABEL_23;
        }

        sub_1005B981C(&qword_1019F5870);
        swift_arrayInitWithCopy();

        if (v10)
        {
          v14 = v4[2];
          v15 = __OFADD__(v14, v10);
          v16 = v14 + v10;
          if (v15)
          {
            goto LABEL_24;
          }

          v4[2] = v16;
        }

        goto LABEL_4;
      }
    }

    if (v10)
    {
      goto LABEL_22;
    }

LABEL_4:
    if (!--v3)
    {

      return v4;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1007CF5B4(uint64_t a1, double a2)
{
  v2 = sub_1007CF1AC(a1, a2);
  v3 = v2;
  v4 = v2[2];
  if (!v4)
  {
  }

  result = sub_10000630C((v2 + 4), &v15);
  if (v4 == 1)
  {
LABEL_3:

    sub_100050F74(&v15, &v18);
    v6 = v19;
    v7 = v20;
    sub_100020E58(&v18, v19);
    (*(*(v7 + 8) + 40))(v6);
    return sub_100005070(&v18);
  }

  else
  {
    v8 = (v3 + 9);
    v9 = 1;
    while (v9 < v3[2])
    {
      sub_10000630C(v8, &v18);
      v11 = v16;
      v10 = v17;
      sub_100020E58(&v15, v16);
      v12 = (*(*(v10 + 8) + 40))(v11);
      v14 = v19;
      v13 = v20;
      sub_100020E58(&v18, v19);
      if (v12 >= (*(*(v13 + 8) + 40))(v14))
      {
        result = sub_100005070(&v18);
      }

      else
      {
        sub_100005070(&v15);
        result = sub_100050F74(&v18, &v15);
      }

      ++v9;
      v8 += 40;
      if (v4 == v9)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_1007CF764(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC8Freeform53CRLCommandSetFreehandDrawingShapeItemSnappedShapeType_id;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a1, v7);
  *&v5[OBJC_IVAR____TtC8Freeform53CRLCommandSetFreehandDrawingShapeItemSnappedShapeType_snappedShapeType] = a2;
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, "init");
  (*(v8 + 8))(a1, v7);
  return v9;
}

void sub_1007CFAE0(void *a1, uint64_t a2, char a3)
{
  v5 = v3;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = [a1 getBoardItemForUUID:isa];

  if (v9)
  {
    type metadata accessor for CRLFreehandDrawingShapeItem();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      sub_1012E0400(v11, &off_10188FE10);

      if (v4)
      {
      }

      else
      {
        sub_100EB02F4(*(v5 + OBJC_IVAR____TtC8Freeform53CRLCommandSetFreehandDrawingShapeItemSnappedShapeType_snappedShapeType));
        v13 = v12;
        sub_1012CF6CC(v11, &off_10188FE10, a3);
      }

      return;
    }
  }

  v14 = objc_opt_self();
  v15 = [v14 _atomicIncrementAssertCount];
  v39 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v39);
  StaticString.description.getter();
  v16 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v17 = String._bridgeToObjectiveC()();

  v18 = [v17 lastPathComponent];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v22 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v15;
  v24 = sub_1005CF000();
  *(inited + 96) = v24;
  v25 = sub_1005CF04C();
  *(inited + 104) = v25;
  *(inited + 72) = v16;
  *(inited + 136) = &type metadata for String;
  v26 = sub_1000053B0();
  *(inited + 112) = v19;
  *(inited + 120) = v21;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v26;
  *(inited + 152) = 28;
  v27 = v39;
  *(inited + 216) = v24;
  *(inited + 224) = v25;
  *(inited + 192) = v27;
  v28 = v16;
  v29 = v27;
  v30 = static os_log_type_t.error.getter();
  sub_100005404(v22, &_mh_execute_header, v30, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v31 = static os_log_type_t.error.getter();
  sub_100005404(v22, &_mh_execute_header, v31, "Unable to retrieve freehand drawing shape item.", 47, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve freehand drawing shape item.");
  type metadata accessor for __VaListBuilder();
  v32 = swift_allocObject();
  v32[2] = 8;
  v32[3] = 0;
  v32[4] = 0;
  v32[5] = 0;
  v33 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v34 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v35 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v36 = String._bridgeToObjectiveC()();

  [v14 handleFailureInFunction:v34 file:v35 lineNumber:28 isFatal:1 format:v36 args:v33];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v37, v38);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1007CFFA4()
{
  v1 = OBJC_IVAR____TtC8Freeform53CRLCommandSetFreehandDrawingShapeItemSnappedShapeType_id;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_1007D000C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandSetFreehandDrawingShapeItemSnappedShapeType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLCommandSetFreehandDrawingShapeItemSnappedShapeType()
{
  result = qword_101A00A10;
  if (!qword_101A00A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1007D0104()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1007D01A0()
{
  v0 = sub_100B7694C();

  return sub_100B76520(v0);
}

BOOL sub_1007D01F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v11 = *(v6 + 16);
  v11(v18 - v12, v3, a2, v10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v20, 0, 304);
    v20[38] = 1;
    LODWORD(v20[39]) = 0;
    v14 = v20;
LABEL_7:
    sub_10000CAAC(v14, &qword_101A00A20);
    goto LABEL_8;
  }

  memcpy(v21, v20, 0x13CuLL);
  sub_10000630C(a1, v19);
  sub_1005B981C(&qword_1019FA4B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v18, 0, 304);
    v18[38] = 1;
    LODWORD(v18[39]) = 0;
    sub_1007D0604(v21);
    v14 = v18;
    goto LABEL_7;
  }

  memcpy(v20, v18, 0x13CuLL);
  v13 = sub_101236014(v21, v20);
  sub_1007D0604(v20);
  sub_1007D0604(v21);
  if (v13)
  {
    return 1;
  }

LABEL_8:
  (v11)(v8, v3, a2);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v20, 0, 300);
    v17 = v20;
LABEL_14:
    sub_10000CAAC(v17, &qword_1019FA4B8);
    return 0;
  }

  memcpy(v21, v20, 0x12CuLL);
  sub_10000630C(a1, v19);
  sub_1005B981C(&qword_1019FA4B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v18, 0, 300);
    sub_1005F8B14(v21);
    v17 = v18;
    goto LABEL_14;
  }

  memcpy(v20, v18, 0x12CuLL);
  v15 = sub_1006C0FF4(v21, v20);
  sub_1005F8B14(v20);
  sub_1005F8B14(v21);
  return (v15 & 1) != 0;
}

uint64_t sub_1007D05AC()
{
  v0 = sub_100B7694C();

  return sub_100B76520(v0);
}

uint64_t sub_1007D0658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = a3;
  v4[28] = v3;
  v4[25] = a1;
  v4[26] = a2;
  return _swift_task_switch(sub_1007D067C, 0, 0);
}

uint64_t sub_1007D067C()
{
  v1 = *(*(v0 + 200) + 16);
  *(v0 + 232) = v1;
  if (v1)
  {
    sub_100020E58(*(v0 + 216), *(*(v0 + 216) + 24));
    *(v0 + 240) = type metadata accessor for MainActor();
    *(v0 + 248) = static MainActor.shared.getter();
    v2 = swift_task_alloc();
    *(v0 + 256) = v2;
    *v2 = v0;
    v2[1] = sub_1007D07B4;
    v3 = *(v0 + 208);

    return sub_1010AF408(v3);
  }

  else
  {
    sub_10072BCBC();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1007D07B4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_1007D0ABC;
  }

  else
  {
    *(v4 + 272) = a1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_1007D0934;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_1007D0934()
{
  v1 = v0[34];

  v0[19] = &type metadata for CRLBoardLibraryHeadlessControllerDependency;
  v0[20] = &off_1018ADA90;
  v0[16] = v1;

  return _swift_task_switch(sub_1007D09B8, 0, 0);
}

uint64_t sub_1007D09B8()
{
  v1 = v0[25];
  if (v0[29] <= 0xAuLL)
  {
  }

  else
  {
    v2 = *(type metadata accessor for IntentFile() - 8);
    sub_100676620(v1, v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), 0, 0x15uLL);
    v1 = v3;
  }

  v0[35] = v1;
  v4 = swift_task_alloc();
  v0[36] = v4;
  *v4 = v0;
  v4[1] = sub_1007D0D5C;

  return sub_1007D16CC(v1, (v0 + 16));
}

uint64_t sub_1007D0ABC()
{

  return _swift_task_switch(sub_1007D0B24, 0, 0);
}

uint64_t sub_1007D0B24()
{
  if (qword_1019F2238 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = static OS_os_log.appIntents;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v16 = UUID.uuidString.getter();
  v17 = v4;

  v5._countAndFlagsBits = 58;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);

  v6 = (v1 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v7 = *v6;
  v8 = v6[1];

  v9._countAndFlagsBits = v7;
  v9._object = v8;
  String.append(_:)(v9);

  *(inited + 56) = &type metadata for String;
  v10 = sub_1000053B0();
  *(inited + 64) = v10;
  *(inited + 32) = v16;
  *(inited + 40) = v17;
  swift_getErrorValue();
  v11 = Error.publicDescription.getter(v0[22], v0[23]);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v10;
  *(inited + 72) = v11;
  *(inited + 80) = v12;
  v13 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v13, "Error inserting files to board: %@ - %@", 39, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  type metadata accessor for _PrebuiltAppIntentError();
  sub_1007D2540();
  swift_allocError();
  static _UnrecoverableError.unknownError.getter();
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1007D0D5C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 296) = a1;
  *(v3 + 304) = v1;

  if (v1)
  {
    v4 = sub_1007D1484;
  }

  else
  {

    v4 = sub_1007D0E78;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1007D0E78()
{
  sub_100020E58(v0 + 16, v0[19]);
  v1 = swift_task_alloc();
  v0[39] = v1;
  *v1 = v0;
  v1[1] = sub_1007D0F1C;
  v2 = v0[37];

  return sub_100FE17C4(v2);
}

uint64_t sub_1007D0F1C()
{

  return _swift_task_switch(sub_1007D1018, 0, 0);
}

uint64_t sub_1007D1018()
{
  v1 = *sub_100020E58(*(v0 + 216), *(*(v0 + 216) + 24));
  v2 = swift_task_alloc();
  *(v0 + 320) = v2;
  *v2 = v0;
  v2[1] = sub_1007D10C0;

  return sub_100FF8D2C(v0 + 128, v1);
}

uint64_t sub_1007D10C0()
{
  *(*v1 + 328) = v0;

  if (v0)
  {

    v2 = sub_1007D1244;
  }

  else
  {
    v2 = sub_1007D11DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1007D11DC()
{
  sub_100005070(v0 + 128);
  v1 = *(v0 + 8);
  v2 = *(v0 + 296);

  return v1(v2);
}

uint64_t sub_1007D1244()
{
  sub_100005070((v0 + 16));
  if (qword_1019F2238 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = static OS_os_log.appIntents;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v16 = UUID.uuidString.getter();
  v17 = v4;

  v5._countAndFlagsBits = 58;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);

  v6 = (v1 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v7 = *v6;
  v8 = v6[1];

  v9._countAndFlagsBits = v7;
  v9._object = v8;
  String.append(_:)(v9);

  *(inited + 56) = &type metadata for String;
  v10 = sub_1000053B0();
  *(inited + 64) = v10;
  *(inited + 32) = v16;
  *(inited + 40) = v17;
  swift_getErrorValue();
  v11 = Error.publicDescription.getter(v0[22], v0[23]);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v10;
  *(inited + 72) = v11;
  *(inited + 80) = v12;
  v13 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v13, "Error inserting files to board: %@ - %@", 39, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  type metadata accessor for _PrebuiltAppIntentError();
  sub_1007D2540();
  swift_allocError();
  static _UnrecoverableError.unknownError.getter();
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1007D1484()
{

  sub_100005070((v0 + 16));
  if (qword_1019F2238 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = static OS_os_log.appIntents;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v16 = UUID.uuidString.getter();
  v17 = v4;

  v5._countAndFlagsBits = 58;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);

  v6 = (v1 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v7 = *v6;
  v8 = v6[1];

  v9._countAndFlagsBits = v7;
  v9._object = v8;
  String.append(_:)(v9);

  *(inited + 56) = &type metadata for String;
  v10 = sub_1000053B0();
  *(inited + 64) = v10;
  *(inited + 32) = v16;
  *(inited + 40) = v17;
  swift_getErrorValue();
  v11 = Error.publicDescription.getter(v0[22], v0[23]);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v10;
  *(inited + 72) = v11;
  *(inited + 80) = v12;
  v13 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v13, "Error inserting files to board: %@ - %@", 39, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  type metadata accessor for _PrebuiltAppIntentError();
  sub_1007D2540();
  swift_allocError();
  static _UnrecoverableError.unknownError.getter();
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1007D16CC(uint64_t a1, uint64_t a2)
{
  v2[15] = a1;
  v2[16] = a2;
  sub_1005B981C(&unk_1019F33C0);
  v2[17] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v4 = type metadata accessor for IntentFile();
  v2[25] = v4;
  v2[26] = *(v4 - 8);
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_1007D1850, 0, 0);
}

uint64_t sub_1007D1850()
{
  v1 = *(v0 + 120);
  v2 = *(*(*sub_100020E58(*(v0 + 128), *(*(v0 + 128) + 24)) + OBJC_IVAR____TtC8Freeform33CRLBoardLibraryHeadlessController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  *(v0 + 112) = _swiftEmptyArrayStorage;
  *(v0 + 224) = v2;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = *(v0 + 208);
    v5 = *(v0 + 152);
    v6 = *(v4 + 16);
    v4 += 16;
    v50 = v6;
    v7 = *(v0 + 120) + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v49 = (v5 + 48);
    v48 = *(v4 + 56);
    v46 = (v5 + 32);
    v40 = v5;
    v42 = (v5 + 8);
    v43 = (v5 + 16);
    v47 = (v4 - 8);
    v41 = v2;
    v44 = _swiftEmptyArrayStorage;
    v45 = _swiftEmptyArrayStorage;
    do
    {
      v17 = *(v0 + 136);
      v16 = *(v0 + 144);
      v50(*(v0 + 216), v7, *(v0 + 200));
      IntentFile.fileURL.getter();
      if ((*v49)(v17, 1, v16) == 1)
      {
        sub_10000CAAC(*(v0 + 136), &unk_1019F33C0);
        if (qword_1019F2238 != -1)
        {
          swift_once();
        }

        v8 = *(v0 + 216);
        v9 = *(v0 + 200);
        v10 = static OS_os_log.appIntents;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        v12 = IntentFile.filename.getter();
        v14 = v13;
        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        *(inited + 32) = v12;
        *(inited + 40) = v14;
        v15 = static os_log_type_t.error.getter();
        sub_100005404(v10, &_mh_execute_header, v15, "Trying to import file url: %@", 29, 2, inited);
        swift_setDeallocating();
        sub_100005070(inited + 32);
        (*v47)(v8, v9);
      }

      else
      {
        v18 = *v46;
        (*v46)(*(v0 + 192), *(v0 + 136), *(v0 + 144));
        v19 = URL.startAccessingSecurityScopedResource()();
        v20 = *v43;
        if (v19)
        {
          v20(*(v0 + 184), *(v0 + 192), *(v0 + 144));
          v21 = v45;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_100B364FC(0, v45[2] + 1, 1, v45);
          }

          v23 = v21[2];
          v22 = v21[3];
          if (v23 >= v22 >> 1)
          {
            v21 = sub_100B364FC(v22 > 1, v23 + 1, 1, v21);
          }

          v24 = *(v0 + 184);
          v25 = *(v0 + 144);
          v21[2] = v23 + 1;
          v45 = v21;
          v18(v21 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v23, v24, v25);
        }

        v26 = *(v0 + 176);
        v20(v26, *(v0 + 192), *(v0 + 144));
        v27 = sub_1007D20FC();
        v29 = v28;
        v30 = objc_allocWithZone(type metadata accessor for CRLPreinsertionAssetWrapper());
        v31 = sub_100BA1E7C(v26, v27, v29, v41, v30);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v0 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v32 = *(v0 + 216);
        v34 = *(v0 + 192);
        v33 = *(v0 + 200);
        v35 = *(v0 + 144);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        (*v42)(v34, v35);
        (*v47)(v32, v33);
        v44 = *(v0 + 112);
      }

      v7 += v48;
      --v3;
    }

    while (v3);
  }

  else
  {
    v36 = v2;
    v44 = _swiftEmptyArrayStorage;
    v45 = _swiftEmptyArrayStorage;
  }

  *(v0 + 232) = v45;
  *(v0 + 240) = v44;
  v37 = swift_task_alloc();
  *(v0 + 248) = v37;
  *v37 = v0;
  v37[1] = sub_1007D1D48;
  v38 = *(v0 + 128);

  return (sub_100A090E8)(v44, v38);
}

uint64_t sub_1007D1D48(uint64_t a1)
{
  v3 = *v2;
  v3[11] = v2;
  v3[12] = a1;
  v3[13] = v1;
  v3[32] = v1;

  if (v1)
  {
    v4 = sub_1007D1FB4;
  }

  else
  {

    v4 = sub_1007D1E6C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1007D1E6C()
{
  v1 = *(v0 + 232);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 152);
    v6 = *(v3 + 16);
    v4 = v3 + 16;
    v5 = v6;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v8 = *(v4 + 56);
    do
    {
      v9 = *(v0 + 168);
      v10 = *(v0 + 144);
      v5(v9, v7, v10);
      URL.stopAccessingSecurityScopedResource()();
      (*(v4 - 8))(v9, v10);
      v7 += v8;
      --v2;
    }

    while (v2);
  }

  v11 = *(v0 + 96);

  v12 = *(v0 + 8);

  return v12(v11);
}

uint64_t sub_1007D1FB4()
{
  v1 = *(v0 + 232);

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 152);
    v6 = *(v3 + 16);
    v4 = v3 + 16;
    v5 = v6;
    v7 = *(v0 + 232) + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v8 = *(v4 + 56);
    do
    {
      v9 = *(v0 + 160);
      v10 = *(v0 + 144);
      v5(v9, v7, v10);
      URL.stopAccessingSecurityScopedResource()();
      (*(v4 - 8))(v9, v10);
      v7 += v8;
      --v2;
    }

    while (v2);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1007D20FC()
{
  v0 = sub_1005B981C(&unk_1019F8DB0);
  __chkstk_darwin(v0 - 8);
  v2 = &v31 - v1;
  v3 = type metadata accessor for UTType();
  v34 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  IntentFile.filename.getter();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v13 crl_pathUTI];

  if (v14)
  {

    return IntentFile.filename.getter();
  }

  v32 = v5;
  v33 = v12;
  v16 = v34;
  IntentFile.fileURL.getter();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v17 = &unk_1019F33C0;
    v18 = v8;
  }

  else
  {
    v19 = v33;
    (*(v10 + 32))(v33, v8, v9);
    URL.lastPathComponent.getter();
    v20 = String._bridgeToObjectiveC()();

    v21 = [v20 crl_pathUTI];

    if (!v21)
    {
      (*(v10 + 8))(v19, v9);
      return 0;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UTType.init(_:)();
    v22 = v16;
    v23 = *(v16 + 48);
    v24 = v3;
    if (v23(v2, 1, v3) != 1)
    {
      v25 = v32;
      (*(v22 + 32))(v32, v2, v24);
      IntentFile.filename.getter();
      v26 = String._bridgeToObjectiveC()();

      isa = UTType._bridgeToObjectiveC()().super.isa;
      v28 = v9;
      v29 = [v26 stringByAppendingPathExtensionForType:isa];

      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v22 + 8))(v25, v24);
      (*(v10 + 8))(v33, v28);
      return v30;
    }

    (*(v10 + 8))(v33, v9);
    v17 = &unk_1019F8DB0;
    v18 = v2;
  }

  sub_10000CAAC(v18, v17);
  return 0;
}

unint64_t sub_1007D2540()
{
  result = qword_101A00A28;
  if (!qword_101A00A28)
  {
    type metadata accessor for _PrebuiltAppIntentError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00A28);
  }

  return result;
}

id sub_1007D2778()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v47[-v3];
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *&v1[OBJC_IVAR____TtC8Freeform22CRLSendACopyActivity_i_activityItems];
  if (v10)
  {
    if (*(v10 + 16))
    {
      sub_100064288(v10 + 32, aBlock);
      v11 = swift_dynamicCast();
      (*(v6 + 56))(v4, v11 ^ 1u, 1, v5);
      if ((*(v6 + 48))(v4, 1, v5) != 1)
      {
        (*(v6 + 32))(v9, v4, v5);
        if (qword_1019F2168 != -1)
        {
          swift_once();
        }

        v12 = static OS_os_log.crlSendACopy;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        v14 = UUID.uuidString.getter();
        v16 = v15;
        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        *(inited + 32) = v14;
        *(inited + 40) = v16;
        v17 = static os_log_type_t.info.getter();
        sub_100005404(v12, &_mh_execute_header, v17, "CRLSendCopyActivity copied a Send A Copy url for board (UUID: %{public}@) to the clipboard", 90, 2, inited);
        swift_setDeallocating();
        sub_100005070(inited + 32);
        v18 = [objc_opt_self() generalPasteboard];
        URL._bridgeToObjectiveC()(v19);
        v21 = v20;
        [v18 setURL:v20];

        [v1 activityDidFinish:1];
        (*(v6 + 8))(v9, v5);
        return 0;
      }
    }

    else
    {
      (*(v6 + 56))(v4, 1, 1, v5, v7);
    }

    sub_100686028(v4);
  }

  if (qword_1019F2168 != -1)
  {
    swift_once();
  }

  v23 = static OS_os_log.crlSendACopy;
  sub_1005B981C(&qword_1019F54E0);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_10146C6B0;
  v25 = UUID.uuidString.getter();
  v27 = v26;
  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = sub_1000053B0();
  *(v24 + 32) = v25;
  *(v24 + 40) = v27;
  v28 = static os_log_type_t.error.getter();
  sub_100005404(v23, &_mh_execute_header, v28, "CRLSendCopyActivity failed to create Send A Copy url for board (UUID: %{public}@)", 81, 2, v24);
  swift_setDeallocating();
  sub_100005070(v24 + 32);
  v29 = sub_100B7098C(2u);
  v30 = [v29 localizedDescription];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = [v29 localizedRecoverySuggestion];
  if (v31)
  {
    v32 = v31;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  v35 = String._bridgeToObjectiveC()();

  if (v34)
  {
    v36 = String._bridgeToObjectiveC()();
  }

  else
  {
    v36 = 0;
  }

  v22 = [objc_opt_self() alertControllerWithTitle:v35 message:v36 preferredStyle:1];

  v37 = [objc_opt_self() mainBundle];
  v38 = String._bridgeToObjectiveC()();
  v39 = String._bridgeToObjectiveC()();
  v40 = [v37 localizedStringForKey:v38 value:v39 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = swift_allocObject();
  *(v41 + 16) = v1;
  v42 = v1;
  v43 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1007D3084;
  aBlock[5] = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10068B39C;
  aBlock[3] = &unk_101887280;
  v44 = _Block_copy(aBlock);

  v45 = [objc_opt_self() actionWithTitle:v43 style:0 handler:v44];
  _Block_release(v44);

  [v22 addAction:v45];
  sub_1011047E4(v22);

  return v22;
}

id sub_1007D2EC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLSendACopyActivity_i();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLSendACopyActivity_i()
{
  result = qword_101A00AC8;
  if (!qword_101A00AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1007D2FB0()
{
  result = type metadata accessor for CRLBoardIdentifierStorage(319);
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

NSString sub_1007D304C()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD6530 = result;
  return result;
}

void *sub_1007D3098(uint64_t a1)
{
  v43 = type metadata accessor for Participant();
  v3 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for UUID();
  v5 = *(v41 - 8);
  __chkstk_darwin(v41);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v8)
  {
    v39 = v7;
    v31 = v1;
    v47 = _swiftEmptyArrayStorage;
    v33 = a1;
    sub_100776524(0, v8, 0);
    v10 = v5;
    v11 = v33;
    v45 = v33 + 56;
    v46 = v47;
    result = _HashTable.startBucket.getter();
    v12 = result;
    v13 = 0;
    v37 = v3 + 8;
    v38 = v3 + 16;
    v40 = v10;
    v35 = v3;
    v36 = v10 + 32;
    v32 = v11 + 64;
    v34 = v8;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v11 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v45 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v44 = *(v11 + 36);
      v18 = v42;
      v17 = v43;
      (*(v3 + 16))(v42, *(v11 + 48) + *(v3 + 72) * v12, v43);
      v19 = v39;
      Participant.id.getter();
      (*(v3 + 8))(v18, v17);
      v20 = v46;
      v47 = v46;
      v22 = v46[2];
      v21 = v46[3];
      if (v22 >= v21 >> 1)
      {
        sub_100776524(v21 > 1, v22 + 1, 1);
        v20 = v47;
      }

      v20[2] = v22 + 1;
      v23 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v46 = v20;
      result = (*(v40 + 32))(v20 + v23 + *(v40 + 72) * v22, v19, v41);
      v14 = 1 << *(v11 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v24 = *(v45 + 8 * v16);
      if ((v24 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      if (v44 != *(v11 + 36))
      {
        goto LABEL_26;
      }

      v25 = v24 & (-2 << (v12 & 0x3F));
      if (v25)
      {
        v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v15 = v34;
        v3 = v35;
      }

      else
      {
        v26 = v16 << 6;
        v27 = v16 + 1;
        v28 = (v32 + 8 * v16);
        v15 = v34;
        v3 = v35;
        while (v27 < (v14 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_1000341AC(v12, v44, 0);
            v14 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        result = sub_1000341AC(v12, v44, 0);
LABEL_19:
        v11 = v33;
      }

      ++v13;
      v12 = v14;
      if (v13 == v15)
      {
        return v46;
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
  }

  return result;
}

void *sub_1007D345C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = _swiftEmptyArrayStorage;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v4 = &qword_101A00B88;
    v27 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v2);
      }

      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v6 = __OFADD__(v2++, 1);
      if (v6)
      {
        break;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v7 = v33[0];
      v8 = v33[0] >> 62;
      if (v33[0] >> 62)
      {
        v9 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v9 = *((v33[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v10)
        {
          v12 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v11 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_20;
      }

      if (v10)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v34 = v9;
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v8)
      {
        v16 = v12;
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v12 = v16;
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v14 >> 1) - v13) < v34)
          {
            goto LABEL_42;
          }

          v32 = v3;
          v17 = v12 + 8 * v13 + 32;
          v28 = v12;
          if (v8)
          {
            if (v15 < 1)
            {
              goto LABEL_44;
            }

            sub_10001A2F8(&qword_101A00E88, v4);
            v18 = v4;
            for (i = 0; i != v15; ++i)
            {
              sub_1005B981C(v18);
              v20 = sub_100777974(v33, i, v7);
              v22 = *v21;
              (v20)(v33, 0);
              v18 = v4;
              *(v17 + 8 * i) = v22;
            }
          }

          else
          {
            type metadata accessor for CRLCollaboratorPresence();
            swift_arrayInitWithCopy();
            v18 = v4;
          }

          v4 = v18;

          v1 = v27;
          v3 = v32;
          if (v34 >= 1)
          {
            v23 = *(v28 + 16);
            v6 = __OFADD__(v23, v34);
            v24 = v23 + v34;
            if (v6)
            {
              goto LABEL_43;
            }

            *(v28 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_25;
        }
      }

      if (v34 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
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
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return _swiftEmptyArrayStorage;
}

NSString sub_1007D3804()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD6540 = result;
  return result;
}

NSString sub_1007D383C()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD6548 = result;
  return result;
}

NSString sub_1007D3874()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD6550 = result;
  return result;
}

NSString sub_1007D38AC()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD6558 = result;
  return result;
}

void sub_1007D39D8(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_isFollowing];
  *&v1[OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_isFollowing] = a1;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = a1;
    v5 = static Published.subscript.modify();
    sub_100E6DF84(&v7, v1);

    v5(v8, 0);
  }

  else
  {
    if (!v2)
    {
      return;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v6 = static Published.subscript.modify();

    v6(v8, 0);
  }
}

uint64_t sub_1007D3CF8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1007D3D78(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_1007D40B4()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v23[0] >> 62)
  {
    goto LABEL_27;
  }

  v2 = *((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v2)
  {
    return result;
  }

  while (2)
  {
    v4 = *(v1 + OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_isFollowing);
    *(v1 + OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_isFollowing) = 0;
    if (v4)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v5 = static Published.subscript.modify();

      v5(v23, 0);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v6 = v23[0];
    if ((v23[0] & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for CRLCollaborationParticipant(0);
      sub_1007E03E8(&qword_101A00E38, type metadata accessor for CRLCollaborationParticipant);
      Set.Iterator.init(_cocoa:)();
      v6 = v23[0];
      v7 = v23[1];
      v1 = v23[2];
      v8 = v23[3];
      v9 = v23[4];
    }

    else
    {
      v10 = -1 << *(v23[0] + 32);
      v7 = v23[0] + 56;
      v1 = ~v10;
      v11 = -v10;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      else
      {
        v12 = -1;
      }

      v9 = v12 & *(v23[0] + 56);

      v8 = 0;
    }

    v13 = (v1 + 64) >> 6;
    v21 = v7;
    while (v6 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (type metadata accessor for CRLCollaborationParticipant(0), swift_dynamicCast(), v17 = v22, v16 = v8, v1 = v9, !v22))
      {
LABEL_24:
        sub_100035F90();
      }

LABEL_22:
      v18 = *&v17[OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_isFollowing];
      *&v17[OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_isFollowing] = 0;
      if (v18)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v19 = static Published.subscript.modify();

        v19(&v22, 0);
        v7 = v21;
      }

      v8 = v16;
      v9 = v1;
    }

    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (v9)
    {
LABEL_18:
      v1 = (v15 - 1) & v15;
      v17 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
      if (!v17)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        goto LABEL_24;
      }

      v15 = *(v7 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_27:
    v20 = _CocoaArrayWrapper.endIndex.getter();

    if (!v20)
    {
      continue;
    }

    return result;
  }
}