unint64_t sub_1000B9B5C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  v6 = *a1;
  swift_beginAccess();
  result = *a2;
  if (v6 >> 14 != *a2 >> 14)
  {
    if (v6 >> 14 < result >> 14)
    {
      __break(1u);
    }

    else
    {
      v8 = sub_1001F6DB8();
      v10 = v9;
      v12 = v11;
      v14 = v13;
      swift_beginAccess();
      sub_100031F5C();
      v15 = *(*a3 + 16);
      sub_100032190();
      v16 = *a3;
      *(v16 + 16) = v15 + 1;
      v17 = v16 + 40 * v15;
      *(v17 + 32) = v8;
      *(v17 + 40) = v10;
      *(v17 + 48) = v12;
      *(v17 + 56) = v14;
      *(v17 + 64) = 0;
      *a3 = v16;
      return swift_endAccess();
    }
  }

  return result;
}

void *sub_1000B9C60(uint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  if (*a2 < v4)
  {
    v6 = a1;
    v91 = a1 + 32;
    v88 = _swiftEmptyArrayStorage;
    v90 = *(a1 + 16);
    while (1)
    {
      if (v3 >= v4)
      {
        goto LABEL_70;
      }

      v7 = (v91 + 40 * v3);
      v8 = *v7;
      v9 = v7[1];
      v11 = v7[2];
      v10 = v7[3];
      v12 = *(v7 + 32);
      if (!(v12 >> 6))
      {

        v17 = v88;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000BA4B0();
          sub_100032824();
          v17 = v78;
        }

        v19 = v17[2];
        v18 = v17[3];
        v2 = v19 + 1;
        if (v19 >= v18 >> 1)
        {
          sub_10004B2F4(v18);
          sub_100032824();
        }

        sub_1000BA5A4();
        *(v20 + 72) = 0;
        goto LABEL_16;
      }

      if (v12 >> 6 == 1)
      {

        v13 = v88;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000BA4B0();
          sub_100032824();
          v13 = v77;
        }

        v15 = v13[2];
        v14 = v13[3];
        v2 = v15 + 1;
        if (v15 >= v14 >> 1)
        {
          sub_10004B2F4(v14);
          sub_100032824();
        }

        sub_1000BA5A4();
        *(v16 + 72) = 1;
LABEL_16:
        v6 = a1;
        goto LABEL_64;
      }

      v21 = v12 & 0x3F;
      if (v21 == 3)
      {
        if (!(v11 | v9 | v8 | v10) || (v8 == 1 ? (v22 = (v11 | v9 | v10) == 0) : (v22 = 0), v22))
        {
          sub_1000BA608();
          sub_1000BA29C(v84, v85, v86, v87, 3u);
          return v88;
        }
      }

      else if (v21 == 1)
      {
        return v88;
      }

      v23 = _swiftEmptyArrayStorage;
      while (1)
      {
        v24 = v3 >= v4;
        if (v3 >= v4)
        {
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
          JUMPOUT(0x1000BA154);
        }

        v25 = (v91 + 40 * v3);
        v26 = *(v25 + 32);
        if ((v26 & 0x80000000) == 0)
        {
          goto LABEL_57;
        }

        v28 = *v25;
        v27 = v25[1];
        v30 = v25[2];
        v29 = v25[3];
        v31 = *(v25 + 32);
        v2 = v26 & 0x3F;
        if (v24)
        {
          break;
        }

LABEL_33:
        *a2 = v3 + 1;
        v36 = sub_10009944C();
        sub_1000BA29C(v36, v37, v38, v39, v2);
        v40 = sub_1000B9C60(v6, a2);
        switch(v2)
        {
          case 0:
            v41 = sub_10009944C();
            v45 = 0;
            goto LABEL_36;
          case 1:
            v41 = sub_10009944C();
            v45 = 1;
LABEL_36:
            sub_1000BA29C(v41, v42, v43, v44, v45);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1000BA4B0();
              sub_100032808();
              v23 = v56;
            }

            v47 = v23[2];
            v46 = v23[3];
            v2 = v47 + 1;
            if (v47 >= v46 >> 1)
            {
              sub_10004B2F4(v46);
              sub_100032808();
              v23 = v57;
            }

            v48 = sub_10009944C();
            sub_1000BA23C(v48, v49, v50, v51, v31);
            v23[2] = v2;
            v52 = &v23[6 * v47];
            v52[4] = v28;
            v52[5] = v27;
            v52[6] = v30;
            v52[7] = v29;
            v52[8] = v40;
            *(v52 + 72) = 0;
            v6 = a1;
            v4 = v90;
            goto LABEL_47;
          case 2:
            v64 = sub_10009944C();
            sub_1000BA29C(v64, v65, v66, v67, 2u);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1000BA4B0();
              sub_100032824();
              v88 = v81;
            }

            v2 = v88[2];
            if (v2 >= v88[3] >> 1)
            {
              sub_100032824();
              v88 = v82;
            }

            v68 = sub_10009944C();
            sub_1000BA23C(v68, v69, v70, v71, v31);
            v88[2] = v2 + 1;
            v72 = &v88[6 * v2];
            v72[4] = v28;
            v72[5] = v27;
            v72[6] = v30;
            v72[7] = v29;
            v72[8] = v40;
            *(v72 + 72) = 3;
            goto LABEL_56;
          case 3:
            if (v30 | v27 | v28 | v29)
            {

              goto LABEL_56;
            }

            v4 = v90;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1000BA4B0();
              sub_100032808();
              v23 = v58;
            }

            v53 = v23[2];
            sub_1000BA688();
            if (v24)
            {
              sub_10004B2F4(v54);
              sub_100032808();
              v23 = v59;
            }

            v23[2] = v2;
            v55 = &v23[6 * v53];
            v55[4] = v40;
            *(v55 + 5) = 0u;
            *(v55 + 7) = 0u;
            *(v55 + 72) = 1;
LABEL_47:
            v3 = *a2;
            if (*a2 >= v4)
            {
              goto LABEL_57;
            }

            break;
          default:
            JUMPOUT(0);
        }
      }

      if (!(v30 | v27 | v28 | v29))
      {
        break;
      }

      sub_1000BA608();
      sub_1000BA23C(v60, v61, v62, v63, v31);
LABEL_56:
      v4 = v90;
LABEL_57:
      if (v23[2])
      {
        v73 = v88;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000BA4B0();
          sub_100032824();
          v73 = v79;
        }

        v74 = v73[2];
        sub_1000BA688();
        if (v24)
        {
          sub_10004B2F4(v75);
          sub_100032824();
          v73 = v80;
        }

        v73[2] = v2;
        v88 = v73;
        v76 = &v73[6 * v74];
        v76[4] = v23;
        *(v76 + 5) = 0u;
        *(v76 + 7) = 0u;
        *(v76 + 72) = 2;
      }

      else
      {
      }

LABEL_64:
      v3 = *a2 + 1;
      if (__OFADD__(*a2, 1))
      {
        goto LABEL_71;
      }

      *a2 = v3;
      if (v3 >= v4)
      {
        return v88;
      }
    }

    sub_1000BA608();
    sub_1000BA23C(v32, v33, v34, v35, v31);
    goto LABEL_33;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000BA164(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v8 = a1 == a5 && a2 == a6;
  if (v8 && !(a3 >> 16) && v7 == a4 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_1001F7E18() & 1;
  }
}

uint64_t sub_1000BA1CC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 == a3 && a2 == a4 && v5 == v6)
  {
    return 1;
  }

  else
  {
    return sub_1001F7E18() & 1;
  }
}

uint64_t sub_1000BA23C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  switch(a5 >> 6)
  {
    case 2:
      result = sub_1000BA284(result, a2, a3, a4, a5 & 0x3F);
      break;
    case 3:
      return result;
    default:

      break;
  }

  return result;
}

uint64_t sub_1000BA284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1000BA29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1000BA2B4(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_1000BA2DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3E && *(a1 + 33))
    {
      v2 = *a1 + 61;
    }

    else
    {
      v2 = (*(a1 + 32) & 0x3C | (*(a1 + 32) >> 6)) ^ 0x3F;
      if (v2 >= 0x3D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1000BA324(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 62;
    *(result + 8) = 0;
    if (a3 >= 0x3E)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1000BA3B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 33))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000BA3F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000BA43C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1000BA468()
{

  return swift_beginAccess();
}

void sub_1000BA498()
{
  *(v2 + 16) = v6;
  v7 = (v2 + 40 * v1);
  v7[4] = v0;
  v7[5] = v3;
  v7[6] = v4;
  v7[7] = v5;
}

void sub_1000BA4D0()
{

  sub_1000327EC();
}

uint64_t sub_1000BA504()
{

  return swift_beginAccess();
}

uint64_t sub_1000BA534()
{

  return sub_1001F6DB8();
}

uint64_t sub_1000BA554()
{

  return sub_1001F6C48();
}

uint64_t sub_1000BA574()
{

  return sub_1001F7E18();
}

void sub_1000BA5A4()
{
  *(v4 + 16) = v0;
  v7 = (v4 + 48 * v2);
  v7[4] = v3;
  v7[5] = v6;
  v7[6] = v5;
  v7[7] = v1;
  v7[8] = 0;
}

uint64_t sub_1000BA5E4()
{

  return sub_1001F7EA8();
}

uint64_t sub_1000BA618()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1000BA654()
{
}

uint64_t sub_1000BA66C()
{
  *(v1 - 88) = v0;

  return swift_endAccess();
}

uint64_t sub_1000BA6A0()
{

  return sub_1001F6DB8();
}

uint64_t sub_1000BA6C0(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_10027B350;
  v7._object = a2;
  v4 = sub_1001F7BD8(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000BA720(char a1)
{
  if (a1)
  {
    return 0x73656963696C6F70;
  }

  else
  {
    return 1634497893;
  }
}

uint64_t sub_1000BA774@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000BA6C0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1000BA7A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000BA720(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000BA7D8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000BA6C0(a1, a2);
  *a3 = result;
  return result;
}

_UNKNOWN **sub_1000BA800@<X0>(void *a1@<X8>)
{
  result = sub_1000BA714();
  *a1 = result;
  return result;
}

uint64_t sub_1000BA828(uint64_t a1)
{
  v2 = sub_1000BB5AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BA864(uint64_t a1)
{
  v2 = sub_1000BB5AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BA8A0(void *a1)
{
  v2 = swift_allocObject();
  sub_1000BA8F0(a1);
  return v2;
}

void *sub_1000BA8F0(void *a1)
{
  v14[0] = sub_1000183C4(&qword_1002B31B8);
  sub_10001A278();
  v5 = v4;
  sub_10001E844();
  __chkstk_darwin(v6, v7);
  v9 = v14 - v8;
  sub_10001AE68(a1, a1[3]);
  sub_1000BB5AC();
  sub_1001F8178();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v5;
    v16 = 0;
    v11 = v14[0];
    v1[2] = sub_1001F7C78();
    v1[3] = v12;
    sub_1000183C4(&qword_1002B3180);
    v15 = 1;
    sub_1000BB654(&qword_1002B31C0, &qword_1002B31C8);
    sub_1001F7CB8();
    (*(v10 + 8))(v9, v11);
    v1[4] = v14[1];
  }

  sub_100019CCC(a1);
  return v1;
}

uint64_t sub_1000BAB3C(void *a1)
{
  v4 = sub_1000183C4(&qword_1002B3170);
  sub_10001A278();
  v6 = v5;
  sub_10001E844();
  __chkstk_darwin(v7, v8);
  sub_100056624();
  sub_10001AE68(a1, a1[3]);
  sub_1000BB5AC();
  sub_1000566A8();
  sub_1000BBBC8();
  if (!v1)
  {
    sub_1000183C4(&qword_1002B3180);
    sub_1000BB654(&qword_1002B3188, &qword_1002B3190);
    sub_1001F7DC8();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_1000BACD0()
{

  return v0;
}

uint64_t sub_1000BACF8()
{
  sub_1000BACD0();

  return swift_deallocClassInstance();
}

uint64_t sub_1000BAD50(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027B3C8;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000BADA8(char a1)
{
  if (!a1)
  {
    return 0x656C61636F6CLL;
  }

  if (a1 == 1)
  {
    return 0x52557963696C6F70;
  }

  return 0x65547963696C6F70;
}

uint64_t sub_1000BAE04@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000BA8A0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1000BAE78@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000BAD50(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1000BAEA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000BADA8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000BAEDC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000BAD50(a1, a2);
  *a3 = result;
  return result;
}

_UNKNOWN **sub_1000BAF04@<X0>(void *a1@<X8>)
{
  result = sub_1000BAD9C();
  *a1 = result;
  return result;
}

uint64_t sub_1000BAF2C(uint64_t a1)
{
  v2 = sub_1000BB600();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BAF68(uint64_t a1)
{
  v2 = sub_1000BB600();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BAFA4(void *a1)
{
  v2 = swift_allocObject();
  sub_1000BAFF4(a1);
  return v2;
}

uint64_t sub_1000BAFF4(void *a1)
{
  v4 = v1;
  v6 = sub_1000183C4(&qword_1002B31A8);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v7, v8);
  sub_100056624();
  sub_10001AE68(a1, a1[3]);
  sub_1000BB600();
  sub_1001F8178();
  if (!v2)
  {
    sub_1000BBBE4();
    v9 = sub_1001F7C78();
    v13 = v9;
    v14 = v10;
    sub_1000E0BC4(v9, v10, &v23);
    v15 = v24;
    if (v24)
    {
      v16 = v23;
      v27 = v25;
      v28 = v26;

      *(v4 + 16) = v16;
      *(v4 + 24) = v15;
      *(v4 + 32) = v27;
      *(v4 + 48) = v28;
      sub_1000BBBE4();
      *(v4 + 56) = sub_1001F7C78();
      *(v4 + 64) = v17;
      sub_1000BBBE4();
      v18 = sub_1001F7C78();
      v20 = v19;
      sub_1000BBBF4();
      v22(v21, v6);
      *(v4 + 72) = v18;
      *(v4 + 80) = v20;
      goto LABEL_4;
    }

    v29 = 0;
    sub_1001F77B8(42);

    v30._countAndFlagsBits = v13;
    v30._object = v14;
    sub_1001F6CA8(v30);

    v31._object = 0x8000000100226ED0;
    v31._countAndFlagsBits = 0xD000000000000014;
    sub_1001F6CA8(v31);
    sub_1001F7848();
    swift_allocError();
    sub_100019C4C(&qword_1002B31B0, &qword_1002B31A8);
    sub_1001F7828();

    swift_willThrow();
    sub_1000BBBF4();
    v11(v3, v6);
  }

  swift_deallocPartialClassInstance();
LABEL_4:
  sub_100019CCC(a1);
  return v4;
}

uint64_t sub_1000BB370(void *a1)
{
  v4 = sub_1000183C4(&qword_1002B3198);
  sub_10001A278();
  v6 = v5;
  sub_10001E844();
  __chkstk_darwin(v7, v8);
  sub_100056624();
  sub_10001AE68(a1, a1[3]);
  sub_1000BB600();
  sub_1000566A8();
  sub_1000BBBC8();
  if (!v1)
  {
    sub_1000BBBC8();
    sub_1000BBBC8();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_1000BB4B0()
{

  return v0;
}

uint64_t sub_1000BB504()
{
  sub_1000BB4B0();

  return swift_deallocClassInstance();
}

uint64_t sub_1000BB55C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000BAFA4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1000BB5AC()
{
  result = qword_1002B3178;
  if (!qword_1002B3178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3178);
  }

  return result;
}

unint64_t sub_1000BB600()
{
  result = qword_1002B31A0;
  if (!qword_1002B31A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B31A0);
  }

  return result;
}

uint64_t sub_1000BB654(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(&qword_1002B3180);
    sub_1000BB6DC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000BB6DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OctaneAppPolicies.Policy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OctaneAppPolicies.Policy.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000BB7E8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OctaneAppPolicies.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000BB8ECLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000BB96C()
{
  result = qword_1002B31E0;
  if (!qword_1002B31E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B31E0);
  }

  return result;
}

unint64_t sub_1000BBA08()
{
  result = qword_1002B31F8;
  if (!qword_1002B31F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B31F8);
  }

  return result;
}

unint64_t sub_1000BBA60()
{
  result = qword_1002B3200;
  if (!qword_1002B3200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3200);
  }

  return result;
}

unint64_t sub_1000BBAB8()
{
  result = qword_1002B3208;
  if (!qword_1002B3208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3208);
  }

  return result;
}

unint64_t sub_1000BBB10()
{
  result = qword_1002B3210;
  if (!qword_1002B3210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3210);
  }

  return result;
}

unint64_t sub_1000BBB68()
{
  result = qword_1002B3218;
  if (!qword_1002B3218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3218);
  }

  return result;
}

uint64_t sub_1000BBBC8()
{

  return sub_1001F7D88();
}

uint64_t sub_1000BBC28()
{
  sub_1000B3DE0();
  sub_1001F6C28();
}

uint64_t sub_1000BBCA0(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
      sub_1000C94CC();
      break;
    case 6:
      sub_1000C98F4();
      break;
    case 7:
      sub_1000C9454();
      sub_1000C99E8();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BBDE8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_1000C98F4();
      break;
    case 2:
    case 3:
      sub_1000C9578();
      break;
    case 4:
      sub_1000C99D0();
      break;
    case 5:
      sub_1000C9454();
      break;
    case 6:
      sub_1000C9758();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BBF08(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
    case 5:
      sub_1000C9BB8();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BC07C()
{
  sub_1000C99F4();
  switch(v0)
  {
    case 3:
      sub_1000C9BC4();
      break;
    case 5:
      sub_1000C94CC();
      break;
    case 6:
      sub_1000C95EC();
      break;
    case 7:
      sub_1000C9454();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BC178(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1000C994C();
    sub_1000C9804();
  }

  else
  {
    sub_1000C95C8();
  }

  sub_1001F6C28();
}

uint64_t sub_1000BC1DC()
{
  sub_1000C93D4();
  switch(v0)
  {
    case 1:
      sub_1000C99B8();
      break;
    case 2:
      sub_1000C93BC();
      break;
    case 3:
      sub_1000C937C();
      break;
    case 4:
      sub_1000C9738();
      break;
    case 6:
    case 7:
      sub_1000C9454();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BC2C0(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      sub_1000C9718();
      break;
    case 3:
      sub_1000C95A4();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BC38C()
{
  sub_1000C93D4();
  switch(v0)
  {
    case 1:
      sub_1000C93BC();
      break;
    case 2:
      sub_1000C937C();
      break;
    case 3:
      sub_1000C9454();
      sub_1000C99E8();
      break;
    case 4:
      sub_1000C99B8();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BC43C()
{
  sub_1001F6C28();
}

uint64_t sub_1000BC49C()
{
  sub_1000C9C80();
  sub_1001F6C28();
}

uint64_t sub_1000BC500()
{
  sub_1001F6C28();
}

uint64_t sub_1000BC5EC()
{
  sub_1000B3DE0();
  sub_1001F6C28();
}

uint64_t sub_1000BC658(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      sub_1000C9454();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BC784(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      sub_1000C9454();
      sub_1000C99E8();
      break;
    case 4:
      sub_1000C9784();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BC884(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      sub_1000C9784();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BC940()
{
  sub_1000B3DE0();
  sub_1001F6C28();
}

uint64_t sub_1000BC9A4()
{
  sub_1001F6C28();
}

uint64_t sub_1000BC9E4()
{
  sub_1000B3DE0();
  sub_1001F6C28();
}

uint64_t sub_1000BCA48()
{
  sub_1000C99F4();
  switch(v0)
  {
    case 3:
      sub_1000C9BC4();
      break;
    case 5:
      sub_1000C94CC();
      break;
    case 6:
      sub_1000C95EC();
      break;
    case 7:
      sub_1000C98E4();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BCB30()
{
  sub_1001F6C28();
}

uint64_t sub_1000BCB90()
{
  sub_1001F6C28();
}

uint64_t sub_1000BCC14()
{
  sub_1001F6C28();
}

uint64_t sub_1000BCD08(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 4:
      sub_1000C9454();
      break;
    case 5:
      sub_1000C99E8();
      sub_1000C9454();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BCE48()
{
  sub_1001F6C28();
}

uint64_t sub_1000BCEC4()
{
  sub_1001F6C28();
}

uint64_t sub_1000BCF84()
{
  sub_1001F6C28();
}

uint64_t sub_1000BD028()
{
  sub_1001F6C28();
}

uint64_t sub_1000BD098()
{
  sub_1000C9718();
  switch(v0)
  {
    case 2:
      sub_1000C95A4();
      break;
    case 4:
    case 5:
    case 6:
      sub_1000C9454();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BD1AC()
{
  sub_1001F6C28();
}

uint64_t sub_1000BD224()
{
  sub_1000C98F4();
  switch(v0)
  {
    case 1:
    case 2:
      sub_1000C9578();
      break;
    case 4:
      sub_1000C9454();
      break;
    case 5:
      sub_1000C9758();
      break;
    case 7:
      sub_1000C98E4();
      break;
    case 8:
      sub_1000C99D0();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BD388()
{
  sub_1001F6C28();
}

uint64_t sub_1000BD3F4(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_1000C97CC();
  }

  sub_1001F6C28();
}

uint64_t sub_1000BD484()
{
  sub_1001F6C28();
}

uint64_t sub_1000BD530()
{
  sub_1001F6C28();
}

uint64_t sub_1000BD590(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_1000C9C60();
  }

  sub_1001F6C28();
}

uint64_t sub_1000BD614()
{
  sub_1001F6C28();
}

uint64_t sub_1000BD678()
{
  sub_1001F6C28();
}

uint64_t sub_1000BD720()
{
  sub_1000C953C();
  switch(v0)
  {
    case 1:
    case 2:
    case 3:
      break;
    default:
      sub_1000C9454();
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BD7F4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 2:
      sub_1000C9454();
      break;
    case 3:
      sub_1000C9344();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BD8B0()
{
  sub_1000C9B5C();
  sub_1001F6C28();
}

uint64_t sub_1000BD910()
{
  sub_1000C93D4();
  switch(v0)
  {
    case 1:
      sub_1000C937C();
      break;
    case 2:
      sub_1000C93BC();
      break;
    case 3:
      sub_1000C9738();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BDA2C()
{
  sub_1000C93D4();
  switch(v0)
  {
    case 1:
      sub_1000C937C();
      break;
    case 2:
      sub_1000C93BC();
      break;
    case 3:
      sub_1000C9454();
      sub_1000C99E8();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BDAB8()
{
  sub_1000C9934();
  switch(v0)
  {
    case 1:
      sub_1000C9368();
      break;
    case 2:
      sub_1000C9344();
      break;
    case 3:
      sub_1000C9454();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BDBC4(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_1000C953C();
  }

  sub_1001F6C28();
}

uint64_t sub_1000BDC30(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_1000C9454();
      break;
    case 2:
    case 3:
      sub_1000C9454();
      sub_1000C9C80();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BDD10()
{
  sub_1001F6C28();
}

uint64_t sub_1000BDE08()
{
  sub_1000C953C();
  sub_1001F6C28();
}

uint64_t sub_1000BDF44()
{
  sub_1001F6C28();
}

uint64_t sub_1000BDFA4()
{
  sub_1001F6C28();
}

uint64_t sub_1000BE008()
{
  sub_1000C9578();
  switch(v0)
  {
    case 1:
      sub_1000C9454();
      break;
    case 2:
      sub_1000C9578();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BE0CC(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_1000C9C4C();
  }

  sub_1001F6C28();
}

uint64_t sub_1000BE184(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1000C9634();
    sub_1000C97E8();
  }

  else
  {
    sub_1000C9610();
  }

  sub_1001F6C28();
}

uint64_t sub_1000BE1F8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_1000C9A68();
}

uint64_t sub_1000BE23C()
{
  sub_1000C9578();
  switch(v0)
  {
    case 1:
      sub_1000C9578();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BE308(uint64_t a1, uint64_t a2, unint64_t a3)
{
  HTTPMethod.rawValue.getter(a2, a3);
  sub_1000C9A68();
}

Swift::Int sub_1000BE370(uint64_t a1, Swift::UInt a2)
{
  sub_1001F8068();
  sub_1001F8088(a2);
  return sub_1001F80D8();
}

Swift::Int sub_1000BE3B4()
{
  sub_1000C96E8();
  sub_1000B3DE0();
  sub_1000C9700();

  return sub_1001F80D8();
}

Swift::Int sub_1000BE544()
{
  sub_1000C96E8();
  if (v0)
  {
    sub_1000C994C();
    sub_1000C9804();
  }

  else
  {
    sub_1000C95C8();
  }

  sub_1000C9700();

  return sub_1001F80D8();
}

Swift::Int sub_1000BE5F4()
{
  sub_1000C96E8();
  sub_1000C9700();

  return sub_1001F80D8();
}

Swift::Int sub_1000BE658()
{
  sub_1000C96E8();
  sub_1000C9C80();
  sub_1001F6C28();

  return sub_1001F80D8();
}

Swift::Int sub_1000BE6E0()
{
  sub_1000C96E8();
  sub_1000B3DE0();
  sub_1000C9700();

  return sub_1001F80D8();
}

Swift::Int sub_1000BE7C0()
{
  sub_1000C96E8();
  sub_1000B3DE0();
  sub_1000C9700();

  return sub_1001F80D8();
}

Swift::Int sub_1000BE828()
{
  sub_1000C96E8();
  sub_1001F6C28();

  return sub_1001F80D8();
}

Swift::Int sub_1000BE87C()
{
  sub_1000C96E8();
  sub_1000B3DE0();
  sub_1000C9700();

  return sub_1001F80D8();
}

Swift::Int sub_1000BE8FC()
{
  sub_1000C96E8();
  sub_1000C9700();

  return sub_1001F80D8();
}

Swift::Int sub_1000BE960()
{
  sub_1000C96E8();
  sub_1000C9700();

  return sub_1001F80D8();
}

Swift::Int sub_1000BEA18()
{
  sub_1000C96E8();
  sub_1000C9700();

  return sub_1001F80D8();
}

Swift::Int sub_1000BEAB0()
{
  sub_1000C96E8();
  sub_1000C9700();

  return sub_1001F80D8();
}

Swift::Int sub_1000BEB58()
{
  sub_1000C96E8();
  sub_1000C9700();

  return sub_1001F80D8();
}

Swift::Int sub_1000BEBE4()
{
  sub_1000C96E8();
  sub_1000C9700();

  return sub_1001F80D8();
}

Swift::Int sub_1000BECA8()
{
  sub_1000C96E8();
  sub_1000C9700();

  return sub_1001F80D8();
}

Swift::Int sub_1000BED18()
{
  sub_1000C96E8();
  if (!v0)
  {
    sub_1000C97CC();
  }

  sub_1000C9700();

  return sub_1001F80D8();
}

Swift::Int sub_1000BEDAC()
{
  sub_1000C96E8();
  sub_1000C9700();

  return sub_1001F80D8();
}

Swift::Int sub_1000BEE5C()
{
  sub_1000C96E8();
  sub_1000C9700();

  return sub_1001F80D8();
}

Swift::Int sub_1000BEEC0()
{
  sub_1000C96E8();
  if (!v0)
  {
    sub_1000C9C60();
  }

  sub_1000C9700();

  return sub_1001F80D8();
}

Swift::Int sub_1000BEF48()
{
  sub_1000C96E8();
  sub_1000C9700();

  return sub_1001F80D8();
}

Swift::Int sub_1000BEFB0()
{
  sub_1000C96E8();
  sub_1000C9700();

  return sub_1001F80D8();
}

Swift::Int sub_1000BF01C()
{
  sub_1001F8068();
  sub_1001F8088(2uLL);
  return sub_1001F80D8();
}

Swift::Int sub_1000BF0BC()
{
  sub_1000C96E8();
  sub_1000C9B5C();
  sub_1001F6C28();

  return sub_1001F80D8();
}

Swift::Int sub_1000BF140()
{
  sub_1000C96E8();
  sub_1001F8088(v0 + 10);
  return sub_1001F80D8();
}

Swift::Int sub_1000BF184()
{
  sub_1000C96E8();
  sub_1001F8088(v0 + 1000);
  return sub_1001F80D8();
}

Swift::Int sub_1000BF254()
{
  sub_1000C96E8();
  if (!v0)
  {
    sub_1000C953C();
  }

  sub_1000C9700();

  return sub_1001F80D8();
}

Swift::Int sub_1000BF2C8()
{
  sub_1000C96E8();
  sub_1001F80B8(v0);
  return sub_1001F80D8();
}

Swift::Int sub_1000BF364()
{
  sub_1000C96E8();
  sub_1001F8088(v0);
  return sub_1001F80D8();
}

Swift::Int sub_1000BF3A0()
{
  sub_1000C96E8();
  sub_1001F8088(qword_10020A7C0[v0]);
  return sub_1001F80D8();
}

Swift::Int sub_1000BF3EC()
{
  sub_1000C96E8();
  sub_1001F8088(v0 - 1);
  return sub_1001F80D8();
}

Swift::Int sub_1000BF42C()
{
  sub_1000C96E8();
  sub_1001F8088(v0 + 1);
  return sub_1001F80D8();
}

Swift::Int sub_1000BF484()
{
  sub_1000C96E8();
  sub_1001F8088(v0 & 1);
  return sub_1001F80D8();
}

Swift::Int sub_1000BF4D0()
{
  sub_1000C96E8();
  sub_1000C9700();

  return sub_1001F80D8();
}

Swift::Int sub_1000BF534()
{
  sub_1000C96E8();
  sub_1000C9700();

  return sub_1001F80D8();
}

Swift::Int sub_1000BF5B4()
{
  sub_1000C96E8();
  if (!v0)
  {
    sub_1000C9C4C();
  }

  sub_1000C9700();

  return sub_1001F80D8();
}

Swift::Int sub_1000BF654()
{
  sub_1001F8068();
  sub_1001F6C28();
  return sub_1001F80D8();
}

Swift::Int sub_1000BF6A8()
{
  sub_1000C96E8();
  if (v0)
  {
    sub_1000C9634();
    sub_1000C97E8();
  }

  else
  {
    sub_1000C9610();
  }

  sub_1000C9700();

  return sub_1001F80D8();
}

Swift::Int sub_1000BF720(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1001F8068();
  a3(a2);
  sub_1000C9A8C();

  return sub_1001F80D8();
}

Swift::Int sub_1000BF78C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_1001F8068();
  a3(v6, a2);
  return sub_1001F80D8();
}

Swift::Int sub_1000BF7D8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1001F8068();
  HTTPMethod.rawValue.getter(a2, a3);
  sub_1000C9A8C();

  return sub_1001F80D8();
}

Swift::Int sub_1000BF84C()
{
  sub_1001F8068();
  sub_1001F6C28();
  return sub_1001F80D8();
}

uint64_t sub_1000BF898(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = a1;
    sub_1001F8068();
    sub_1001F8088(v4);
    v5 = sub_1001F80D8();
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + v7) != v4);
  }

  return v2;
}

uint64_t sub_1000BF948(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1000BEAB0(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      if (*(*(a2 + 48) + v6))
      {
        if (*(*(a2 + 48) + v6) == 1)
        {
          v8 = 0xE800000000000000;
          v9 = 0x676E697473697865;
        }

        else
        {
          v8 = 0xE700000000000000;
          v9 = 0x64657269707865;
        }
      }

      else
      {
        v8 = 0xE300000000000000;
        v9 = 7824750;
      }

      if (a1)
      {
        v10 = a1 == 1 ? 0x676E697473697865 : 0x64657269707865;
        v11 = a1 == 1 ? 0xE800000000000000 : 0xE700000000000000;
      }

      else
      {
        v11 = 0xE300000000000000;
        v10 = 7824750;
      }

      if (v9 == v10 && v8 == v11)
      {
        break;
      }

      v13 = sub_1001F7EA8();

      if ((v13 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v13 & 1;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

BOOL sub_1000BFAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1001F8068();
  sub_1001F6C28();
  v6 = sub_1001F80D8();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_1001F7EA8();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t sub_1000BFBD0()
{
  v0 = sub_1000C5470(27);
  if (v0 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!v0)
  {
    v2 = 0;
  }

  if (v1)
  {
    return 2;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000BFC34(void *a1, char a2)
{
  v3 = (v2 + *a1);
  if (!v3[1])
  {
    v4 = sub_1000C5388(a2);
    if (v5)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0xE000000000000000;
    }

    *v3 = v6;
    v3[1] = v7;
  }

  return sub_100037A2C();
}

uint64_t sub_1000BFCB0@<X0>(_OWORD *a1@<X8>)
{
  result = sub_1000C5388(20);
  if (v3)
  {
    sub_10014B7DC(result, v3, v14);
    v12 = v14[1];
    v13 = v14[0];
    v10 = v14[3];
    v11 = v14[2];
    v9 = v14[4];

    v5 = v9;
    v4 = v10;
    v7 = v11;
    v6 = v12;
    v8 = v13;
  }

  else
  {
    v8 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
    v4 = 0uLL;
    v5 = 0uLL;
  }

  *a1 = v8;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v4;
  a1[4] = v5;
  return result;
}

void sub_1000BFD40()
{
  v0 = sub_1000C5470(21);
  if ((v2 & 1) == 0)
  {
    sub_1001F7468(v1, *&v0);
  }
}

double sub_1000BFDA8()
{
  sub_1001F6508();
  sub_10001A278();
  __chkstk_darwin(v1, v2);
  sub_100023510();
  sub_1000C9BD8();
  v3 = (v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___purchaseDate);
  if ((*(v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___purchaseDate + 8) & 1) == 0)
  {
    return *v3;
  }

  *&v4 = COERCE_DOUBLE(sub_1000C5470(11));
  if (v5)
  {
    sub_1001F64E8();
    sub_1001F6428();
    v7 = v6;
    v8 = sub_100037B7C();
    v9(v8);
  }

  else
  {
    v7 = *&v4;
  }

  *v3 = v7;
  v3[8] = 0;
  return v7;
}

uint64_t sub_1000BFEB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1000BFF04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LODWORD(v2) = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 = v4 | v2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1000BFF88()
{
  sub_1000C9ACC();
  v183 = v3;
  v184 = v4;
  sub_1000C9BAC();
  v168 = v5;
  v169 = sub_1001F6508();
  sub_10001A278();
  v164 = v6;
  __chkstk_darwin(v7, v8);
  sub_100023510();
  v163 = (v10 - v9);
  v11 = sub_1000183C4(&unk_1002B3450);
  v12 = sub_100056658(v11);
  v14 = __chkstk_darwin(v12, v13);
  v162 = &v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14, v16);
  v161 = &v160 - v18;
  __chkstk_darwin(v17, v19);
  sub_1000C98B4();
  sub_1000183C4(&unk_1002BC430);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100200C80;
  *(v20 + 32) = 0x6E6F69746361;
  *(v20 + 40) = 0xE600000000000000;
  sub_1000C22AC();
  sub_1000C9B98();
  switch(v21)
  {
    case 1:
      sub_1000C9BFC();
      break;
    case 2:
      sub_1000C9BAC();
      sub_1000C9B84();
      break;
    case 3:
      sub_1000C99A0();
      break;
    default:
      break;
  }

  sub_1000C9940();
  *(v20 + 48) = v23;
  *(v20 + 56) = v22;
  *(v20 + 96) = sub_1000C9C8C();
  *(v20 + 120) = &type metadata for UInt;
  *(v20 + 128) = 0x64656873696E6966;
  *(v20 + 136) = 0xE800000000000000;
  *(v20 + 144) = sub_1000C2448() & 1;
  sub_1000C9B3C();
  *(v20 + 168) = v25;
  *(v20 + 176) = v24;
  *(v20 + 184) = 0xE900000000000044;
  *(v20 + 192) = sub_1000BFC34(&OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___productID, 9);
  *(v20 + 200) = v26;
  sub_1000C9B28();
  *(v20 + 216) = &type metadata for String;
  *(v20 + 224) = v27;
  *(v20 + 232) = 0xEC00000065746144;
  *(v20 + 240) = sub_1000BFDA8();
  *(v20 + 264) = &type metadata for Double;
  *(v20 + 272) = 0x6574617473;
  *(v20 + 280) = 0xE500000000000000;
  *(v20 + 288) = sub_1000C43D8();
  *(v20 + 312) = &type metadata for Int;
  *(v20 + 320) = 1701869940;
  *(v20 + 328) = 0xE400000000000000;
  v28 = sub_1000C257C();
  v29 = 0x62616D75736E6F43;
  v30 = 0xEA0000000000656CLL;
  switch(v28)
  {
    case 1:
      sub_1000999EC();
      break;
    case 2:
      sub_1000B3DE0();
      v29 = v1 + 4;
      break;
    case 3:
      v30 = 0x8000000100221B90;
      v29 = v1 + 2;
      break;
    default:
      break;
  }

  *(v20 + 336) = v29;
  *(v20 + 344) = v30;
  sub_1000B3DE0();
  *(v20 + 360) = &type metadata for String;
  *(v20 + 368) = v1 - 3;
  *(v20 + 376) = v31;
  *(v20 + 384) = sub_1000C2750() & 1;
  sub_1000C9C24();
  *(v20 + 408) = &type metadata for Bool;
  *(v20 + 416) = v32;
  *(v20 + 424) = 0xE900000000000064;
  *(v20 + 432) = sub_1000BFBB0() & 1;
  sub_1000C9C10();
  *(v20 + 456) = &type metadata for Bool;
  *(v20 + 464) = v33;
  *(v20 + 472) = 0xE800000000000000;
  v34 = sub_1000C2550();
  *(v20 + 504) = &type metadata for Int;
  *(v20 + 480) = v34;
  sub_1000C9924();
  v35 = sub_1001F69B8();
  v36 = sub_1000C22E4();
  if (v36 == 3)
  {
    v37 = v35;
  }

  else
  {
    v179 = &type metadata for Int;
    *&v178 = v36 - 1;
    sub_10003708C(&v178, v180);
    swift_isUniquelyReferenced_nonNull_native();
    *&v176[0] = v35;
    sub_1000C9778();
    sub_1001E5A4C();
    v37 = *&v176[0];
  }

  sub_1000C5470(8);
  sub_1000C9940();
  v167 = 0x62616D75736E6F43;
  if ((v39 & 1) == 0)
  {
    v179 = &type metadata for UInt;
    sub_1000C96B0(v38);
    swift_isUniquelyReferenced_nonNull_native();
    *&v176[0] = v37;
    sub_1000C9778();
    sub_1001E5A4C();
    v37 = *&v176[0];
  }

  v40 = sub_1000C5470(12);
  if ((v41 & 1) == 0)
  {
    v179 = &type metadata for Double;
    sub_1000C96B0(v40);
    swift_isUniquelyReferenced_nonNull_native();
    *&v176[0] = v37;
    sub_1001E5A4C();
    v37 = *&v176[0];
  }

  v165 = OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___type;
  switch(*(v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___type))
  {
    case 1:
      sub_1000995FC();
      sub_100099938();
      goto LABEL_19;
    case 2:
      sub_1000C9874();
      goto LABEL_19;
    case 3:
      v166 = 0x8000000100221B90;

      goto LABEL_22;
    default:
LABEL_19:
      v166 = 0x8000000100221B90;
      v42 = sub_1001F7EA8();

      if (v42)
      {
LABEL_22:
        v45 = sub_1000C5470(4);
        if ((v46 & 1) == 0)
        {
          v179 = &type metadata for Double;
          sub_1000C96B0(v45);
          swift_isUniquelyReferenced_nonNull_native();
          *&v176[0] = v37;
          sub_1000C9778();
          sub_1001E5A4C();
        }

        v44 = v0;
        v47 = sub_1000C5388(15);
        if (v48)
        {
          v179 = &type metadata for String;
          *&v178 = v47;
          *(&v178 + 1) = v48;
          sub_1000C93EC();
          sub_1000C9460();
          sub_1000C9820();
          sub_1000C9AFC();
          v49 = *&v176[0];
        }

        else
        {
          v50 = sub_1000C9CEC();
          if (v51)
          {
            v52 = v50;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v180[0] = v0;
            v54 = *(v0 + 24);
            sub_1000183C4(&unk_1002BCC50);
            v55 = isUniquelyReferenced_nonNull_native;
            v44 = v0;
            sub_1001F7A98(v55, v54);
            v49 = *&v180[0];

            sub_10003708C((*(v49 + 56) + 32 * v52), &v178);
            sub_1001F7AB8();
          }

          else
          {
            sub_1000C97A4();
            v49 = v0;
          }

          sub_1000C8970(&v178, &qword_1002B34A0);
        }

        v56 = sub_1000C6260();
        v179 = &type metadata for Bool;
        LOBYTE(v178) = v56 & 1;
        sub_10003708C(&v178, v180);
        swift_isUniquelyReferenced_nonNull_native();
        *&v176[0] = v49;
        sub_1000C9BAC();
        sub_1000C9778();
        sub_1001E5A4C();
        v43 = *&v176[0];
        sub_1000C3914(29, v2);
        if (sub_1000C9CCC())
        {
          sub_1000C8970(v2, &unk_1002B3450);
          sub_10011108C();
          if (v57)
          {
            sub_1000C9D44();
            sub_1000C9470();
            sub_1000183C4(&unk_1002BCC50);
            sub_1000C951C();
            sub_1000C94FC();
            sub_1000C97B0();
            sub_1000377A8();
            sub_1001F7AB8();
          }

          else
          {
            sub_1000C97A4();
          }

          v64 = v161;
          sub_1000C8970(&v178, &qword_1002B34A0);
          v60 = v169;
        }

        else
        {
          sub_1000C9B70();
          v58 = v163;
          v59(v163, v2, v44);
          sub_1000C8970(v2, &unk_1002B3450);
          v60 = v44;
          sub_1001F6428();
          v62 = v61;
          sub_1000C9940();
          (*(v63 + 8))(v58, v44);
          v179 = &type metadata for Double;
          *&v178 = v62;
          sub_1000C93EC();
          sub_1000C9460();
          sub_1000C9820();
          sub_1001E5A4C();
          v43 = *&v176[0];
          v64 = v161;
        }

        sub_1000C3914(30, v64);
        if (sub_10001C990(v64, 1, v60))
        {
          sub_1000C8970(v64, &unk_1002B3450);
          sub_10011108C();
          if (v65)
          {
            sub_1000C9D44();
            sub_1000C9470();
            sub_1000183C4(&unk_1002BCC50);
            sub_1000C951C();
            sub_1000C94FC();
            sub_1000C97B0();
            sub_1000377A8();
            sub_1001F7AB8();
          }

          else
          {
            sub_1000C97A4();
          }

          sub_1000C8970(&v178, &qword_1002B34A0);
        }

        else
        {
          v66 = v163;
          v67 = v164;
          (*(v164 + 16))(v163, v64, v60);
          sub_1000C8970(v64, &unk_1002B3450);
          sub_1001F6428();
          v69 = v68;
          (*(v67 + 8))(v66, v60);
          v179 = &type metadata for Double;
          *&v178 = v69;
          sub_1000C93EC();
          sub_1000C94E4();
          sub_1000C9778();
          sub_1001E5A4C();
          v43 = *&v176[0];
        }

        v70 = sub_1000C152C();
        switch(v70)
        {
          case 1:
            v70 = 1;
            goto LABEL_47;
          case 2:
            v70 = 2;
            goto LABEL_47;
          case 3:
            v70 = 10;
            goto LABEL_47;
          case 4:
            v70 = 11;
            goto LABEL_47;
          case 5:
            sub_1000C9CEC();
            if (v159)
            {
              sub_1000C9D44();
              sub_1000C9470();
              sub_1000183C4(&unk_1002BCC50);
              sub_1000C951C();
              sub_1000C94FC();
              sub_1000C97B0();
              sub_1000377A8();
              sub_1001F7AB8();
            }

            else
            {
              sub_1000C97A4();
            }

            sub_1000C8970(&v178, &qword_1002B34A0);
            goto LABEL_48;
          default:
LABEL_47:
            v179 = &type metadata for Int;
            *&v178 = v70;
            sub_1000C93EC();
            sub_1000C9460();
            sub_1000C9820();
            sub_1000C9AFC();
            v43 = *&v176[0];
LABEL_48:
            v71 = sub_1000C5470(25);
            if (v72)
            {
              sub_10011108C();
              if (v73)
              {
                sub_1000C9D44();
                sub_1000C9470();
                sub_1000183C4(&unk_1002BCC50);
                sub_1000C951C();
                sub_1000C94FC();
                sub_1000C97B0();
                sub_1000377A8();
                sub_1001F7AB8();
              }

              else
              {
                sub_1000C97A4();
              }

              v74 = v162;
              sub_1000C8970(&v178, &qword_1002B34A0);
            }

            else
            {
              v179 = &type metadata for UInt;
              *&v178 = v71;
              sub_1000C93EC();
              sub_1000C94E4();
              sub_1000C9820();
              sub_1001E5A4C();
              v43 = *&v176[0];
              v74 = v162;
            }

            sub_1000C3914(33, v74);
            if (sub_1000C9CCC())
            {
              sub_1000C8970(v74, &unk_1002B3450);
              v75 = sub_10011108C();
              if (v76)
              {
                v77 = v75;
                swift_isUniquelyReferenced_nonNull_native();
                *&v180[0] = v43;
                v43 = *(v43 + 24);
                sub_1000183C4(&unk_1002BCC50);
                sub_1000C9D0C();
                sub_1000C9CAC();
                sub_10003708C((*(v43 + 56) + 32 * v77), &v178);
                sub_1000C9484();
                sub_1001F7AB8();
              }

              else
              {
                sub_1000C97A4();
              }

              sub_1000C8970(&v178, &qword_1002B34A0);
            }

            else
            {
              sub_1000C9B70();
              v78 = v163;
              v79(v163, v74, v44);
              sub_1000C8970(v74, &unk_1002B3450);
              sub_1001F6428();
              v81 = v80;
              (*(v35 + 8))(v78, v44);
              v179 = &type metadata for Double;
              *&v178 = v81;
              sub_1000C93EC();
              sub_1000C9460();
              sub_1000C9820();
              sub_1001E5A4C();
              v43 = *&v176[0];
            }

            break;
        }
      }

      else
      {
        v43 = v37;
        v44 = v0;
      }

      v82 = sub_1000C5470(3);
      if ((v83 & 1) == 0)
      {
        v179 = &type metadata for Double;
        *&v178 = v82;
        sub_1000C93EC();
        sub_1000C94E4();
        sub_1000C9BAC();
        sub_1001E5A4C();
        v43 = *&v176[0];
        v84 = sub_1000BFBD0();
        if (v84 == 2)
        {
          v85 = sub_10011108C();
          if (v86)
          {
            v87 = v85;
            swift_isUniquelyReferenced_nonNull_native();
            *&v180[0] = v43;
            v43 = *(v43 + 24);
            sub_1000183C4(&unk_1002BCC50);
            sub_1000C9D0C();
            sub_1000C9CAC();
            sub_10003708C((*(v43 + 56) + 32 * v87), &v178);
            sub_1000C9484();
            sub_1001F7AB8();
          }

          else
          {
            sub_1000C97A4();
          }

          sub_1000C8970(&v178, &qword_1002B34A0);
        }

        else
        {
          v179 = &type metadata for Int;
          *&v178 = v84;
          sub_1000C93EC();
          sub_1000C9460();
          sub_1000C9820();
          sub_1001E5A4C();
          v43 = *&v176[0];
        }
      }

      v88 = sub_1000C5670();
      if (v88 != 22)
      {
        v89 = sub_1000878CC(v88);
        v179 = &type metadata for String;
        *&v178 = v89;
        *(&v178 + 1) = v90;
        sub_1000C93EC();
        sub_1000C9460();
        sub_1000C9AFC();
        v43 = *&v176[0];
      }

      v91 = sub_1000C2E3C();
      if (v91)
      {
        v92 = v91;
        v93 = v91[2];
        if (v93)
        {
          v164 = v43;
          v169 = v44;
          *&v180[0] = _swiftEmptyArrayStorage;
          sub_1000375CC(0, v93, 0);
          v163 = v92;
          v94 = (v92 + 8);
          v95 = *&v180[0];
          do
          {
            v96 = *v94;
            v94 += 40;
            switch(v96)
            {
              case 1:
                sub_1000C98D4();
                *&v178 = v121;
                *(&v178 + 1) = 0xE600000000000000;
                v122 = sub_1000C9304();
                sub_10008A298(v122, v123, v124, v125, 1u);
                v189._countAndFlagsBits = sub_1000C9484();
                sub_1001F6CA8(v189);
                sub_1000998B0();
                sub_1000C9AB0();
                v102 = sub_1000C9304();
                v106 = 1;
                break;
              case 2:
                sub_1000C9904();
                *&v178 = v111;
                *(&v178 + 1) = 0xE500000000000000;
                v112 = sub_1000C9304();
                sub_10008A298(v112, v113, v114, v115, 2u);
                v187._countAndFlagsBits = sub_1000C9484();
                sub_1001F6CA8(v187);
                sub_1000998B0();
                sub_1000C9AB0();
                v102 = sub_1000C9304();
                v106 = 2;
                break;
              case 3:
                sub_1000C9558();
                *&v178 = v116 & 0xFFFFFFFFFFFFLL | 0x3A6B000000000000;
                *(&v178 + 1) = 0xE800000000000000;
                v117 = sub_1000C9304();
                sub_10008A298(v117, v118, v119, v120, 3u);
                v188._countAndFlagsBits = sub_1000C9484();
                sub_1001F6CA8(v188);
                sub_1000998B0();
                sub_1000C9AB0();
                v102 = sub_1000C9304();
                v106 = 3;
                break;
              case 4:
                *&v178 = 979661939;
                *(&v178 + 1) = 0xE400000000000000;
                v107 = sub_1000C9304();
                sub_10008A298(v107, v108, v109, v110, 4u);
                v186._countAndFlagsBits = sub_1000C9484();
                sub_1001F6CA8(v186);
                v102 = sub_1000C9304();
                v106 = 4;
                break;
              default:
                sub_1000C9914();
                *&v178 = v97;
                *(&v178 + 1) = 0xE600000000000000;
                v98 = sub_1000C9304();
                sub_10008A298(v98, v99, v100, v101, 0);
                v185._countAndFlagsBits = sub_1000C9484();
                sub_1001F6CA8(v185);
                v102 = sub_1000C9304();
                v106 = 0;
                break;
            }

            sub_100099050(v102, v103, v104, v105, v106);
            v126 = v178;
            *&v180[0] = v95;
            v128 = v95[2];
            v127 = v95[3];
            if (v128 >= v127 >> 1)
            {
              v129 = sub_10005669C(v127);
              sub_1000375CC(v129, v128 + 1, 1);
              v95 = *&v180[0];
            }

            v95[2] = v128 + 1;
            *&v95[2 * v128 + 4] = v126;
            --v93;
          }

          while (v93);

          v44 = v169;
        }

        else
        {

          v95 = _swiftEmptyArrayStorage;
        }

        v179 = sub_1000183C4(&qword_1002ACA10);
        *&v178 = v95;
        sub_1000C93EC();
        sub_1000C94E4();
        sub_1000C9778();
        sub_1001E5A4C();
        v43 = *&v176[0];
      }

      v130 = sub_1000C1570();
      if (v131)
      {
        v179 = &type metadata for String;
        *&v178 = v130;
        *(&v178 + 1) = v131;
        sub_1000C93EC();
        sub_1000C94E4();
        sub_1000C9778();
        sub_1001E5A4C();
        v43 = *&v176[0];
      }

      sub_1000C56AC(v176);
      if (v177 != 255)
      {
        v180[0] = v176[0];
        v180[1] = v176[1];
        v181 = v177;
        v132 = sub_1000C5C28();
        v134 = v133;
        sub_1000C8970(v176, &qword_1002B3310);
        v179 = &type metadata for String;
        *&v178 = v132;
        *(&v178 + 1) = v134;
        sub_10003708C(&v178, &v172);
        swift_isUniquelyReferenced_nonNull_native();
        *&v171[0] = v43;
        sub_1000C98E4();
        sub_1001E5A4C();
        v43 = *&v171[0];
      }

      switch(*(v44 + v165))
      {
        case 1:
          v167 = 0x75736E6F436E6F4ELL;
          sub_1000999EC();
          v168 = v135;
          goto LABEL_92;
        case 2:
          v167 = 0xD000000000000017;
          v168 = 0x8000000100221B70;
          goto LABEL_92;
        case 3:

          goto LABEL_93;
        default:
LABEL_92:
          v136 = sub_1001F7EA8();

          if (v136)
          {
LABEL_93:
            v137 = sub_1000C1570();
            v139 = *(v44 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___productID + 8);
            v140 = v139 == 0;
            if (v138)
            {
              if (v139)
              {
                if (v137 == *(v44 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___productID) && v138 == v139)
                {
                  v140 = 1;
                }

                else
                {
                  v140 = sub_1001F7EA8();
                }
              }

              else
              {
                v140 = 0;
              }
            }

            v179 = &type metadata for Bool;
            LOBYTE(v178) = v140 & 1;
            sub_10003708C(&v178, &v172);
            swift_isUniquelyReferenced_nonNull_native();
            *&v171[0] = v43;
            sub_1000C9AFC();
            v43 = *&v171[0];
          }

          sub_1000BFCB0(&v178);
          if (*(&v178 + 1))
          {
            v182 = v178;
            v175 = &type metadata for String;
            v172 = v178;
            sub_10003708C(&v172, v171);
            sub_1000552A0(&v182, &v170);
            swift_isUniquelyReferenced_nonNull_native();
            v170 = v43;
            sub_1001E5A4C();
            sub_1000C8970(&v178, &qword_1002AEDE0);
            v43 = v170;
          }

          sub_1000BFD40();
          if ((v144 & 0x100000000) == 0)
          {
            v145 = v142;
            v146 = v143;
            v147 = v144;
            v148 = HIDWORD(v142);
            v149 = v44;
            v150 = v43;
            v151 = HIWORD(v142);
            v152 = v143 >> 16;
            v153 = HIDWORD(v143);
            v169 = v149;
            v154 = HIWORD(v143);
            v168 = v144 >> 16;
            type metadata accessor for Decimal(0);
            v175 = v155;
            LODWORD(v172) = v145;
            WORD2(v172) = v148;
            WORD3(v172) = v151;
            WORD4(v172) = v146;
            WORD5(v172) = v152;
            WORD6(v172) = v153;
            HIWORD(v172) = v154;
            v173 = v147;
            v174 = v168;
            sub_10003708C(&v172, v171);
            swift_isUniquelyReferenced_nonNull_native();
            v170 = v150;
            sub_1000C9578();
            sub_1001E5A4C();
            v43 = v170;
          }

          v156 = sub_1000C2D8C();
          v157 = 3157553;
          if (v156)
          {
            v157 = 3157554;
          }

          v175 = &type metadata for String;
          *&v172 = v157;
          *(&v172 + 1) = 0xE300000000000000;
          sub_10003708C(&v172, v171);
          swift_isUniquelyReferenced_nonNull_native();
          v170 = v43;
          sub_1000C9AFC();
          return v170;
      }
  }
}

uint64_t sub_1000C152C()
{
  v0 = sub_1000C5470(32);
  if (v1)
  {
    return 5;
  }

  return sub_1000C4888(v0);
}

void *sub_1000C1570()
{
  result = sub_1000C2E3C();
  if (result)
  {
    sub_1000C45A0(result, &v1);

    if (v2 == 4)
    {
      return v1;
    }

    else
    {
      if (v2 != 255)
      {
        sub_1000C8970(&v1, &qword_1002B3310);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1000C15EC()
{
  v0 = sub_1000183C4(&unk_1002B3450);
  sub_100056658(v0);
  sub_10001E844();
  __chkstk_darwin(v1, v2);
  v4 = &v15 - v3;
  v5 = sub_1001F6508();
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  sub_100023510();
  v12 = v11 - v10;
  if (sub_1000C1760())
  {
    sub_1000C3914(29, v4);
    if (sub_10001C990(v4, 1, v5) != 1)
    {
      (*(v7 + 32))(v12, v4, v5);
      v13 = sub_1001F6498();
      (*(v7 + 8))(v12, v5);
      return v13 & 1;
    }

    sub_1000C8970(v4, &unk_1002B3450);
  }

  v13 = 0;
  return v13 & 1;
}

uint64_t sub_1000C1760()
{
  v3 = sub_1000183C4(&unk_1002B3450);
  sub_100056658(v3);
  sub_10001E844();
  __chkstk_darwin(v4, v5);
  sub_1000C9BD8();
  v6 = sub_1001F6508();
  sub_10001A278();
  v8 = v7;
  __chkstk_darwin(v9, v10);
  sub_1000C9858();
  __chkstk_darwin(v11, v12);
  sub_1000C98B4();
  sub_1000C3914(30, v0);
  if (sub_10001C990(v0, 1, v6) == 1)
  {
    sub_1000C8970(v0, &unk_1002B3450);
    v13 = 0;
  }

  else
  {
    v14 = sub_1000C9B14();
    v15(v14);
    sub_1001F64E8();
    sub_100075518();
    v13 = sub_1001F6498();
    v16 = *(v8 + 8);
    v16(v1, v6);
    v16(v2, v6);
  }

  return v13 & 1;
}

uint64_t sub_1000C18DC()
{
  sub_1000C9880();
  sub_1000C257C();
  sub_1000995FC();
  sub_100099938();
  switch(v0)
  {
    case 1:
      goto LABEL_5;
    case 2:
      sub_1000C9874();
      sub_1000C9358();
      goto LABEL_5;
    case 3:
      sub_1000C9874();
LABEL_5:
      sub_1000C9C38();
      v1 = sub_1001F7EA8();

      if (v1)
      {
        goto LABEL_14;
      }

      if (qword_1002AC438 != -1)
      {
        swift_once();
      }

      v2 = qword_1002B3220;
      v3 = sub_1000C43D8();
      if ((sub_1000BF898(v3, v2) & 1) == 0)
      {
        goto LABEL_14;
      }

      sub_1001F6428();
      v5 = v4;
      if (sub_1000BFBB0())
      {
        v6 = COERCE_DOUBLE(sub_1000C5470(3));
        if ((v7 & 1) == 0 && v5 > v6)
        {
          goto LABEL_14;
        }
      }

      v8 = COERCE_DOUBLE(sub_1000C5470(4));
      if ((v9 & 1) == 0 && v5 > v8)
      {
        goto LABEL_14;
      }

      result = 1;
      break;
    default:

LABEL_14:
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_1000C1A68()
{
  v1 = (v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___id);
  if (*(v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___id + 8) != 1)
  {
    return *v1;
  }

  result = sub_1000C5470(7);
  if (v3)
  {
    result = 0;
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

void sub_1000C1ACC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000183C4(&qword_1002ADB80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001FE9E0;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 4;

    sub_1000C6320();
  }

  else if (sub_1000C2E3C())
  {

    sub_1000C6320();
  }
}

uint64_t sub_1000C1B88(unsigned __int8 a1)
{
  v2 = a1;
  switch(a1)
  {
    case 1u:
      v2 = 1;
      goto LABEL_6;
    case 2u:
      v2 = 2;
      goto LABEL_6;
    case 3u:
      v2 = 10;
      goto LABEL_6;
    case 4u:
      v2 = 11;
      goto LABEL_6;
    case 5u:
      v5 = 0u;
      v6 = 0u;
      goto LABEL_7;
    default:
LABEL_6:
      *(&v6 + 1) = &type metadata for Int;
      *&v5 = v2;
LABEL_7:
      sub_1001C738C(&v5, 32);
      result = sub_1000C8970(&v5, &qword_1002B34A0);
      v4 = *(v1 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels);
      if ((v4 & 1) == 0)
      {
        *(v1 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels) = v4 | 1;
      }

      return result;
  }
}

uint64_t sub_1000C1C6C(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1000C1C90(unsigned __int8 a1)
{
  v2 = *v1;
  if ((*v1 & a1) != 0)
  {
    *v1 = v2 & ~a1;
  }

  return sub_1000C9A5C((v2 & a1));
}

uint64_t sub_1000C1CBC(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_1000C1CD4(char a1)
{
  v2 = *v1;
  *v1 |= a1;
  return sub_1000C9A5C((v2 & a1));
}

uint64_t sub_1000C1D48()
{
  sub_1000C9B98();
  switch(v2)
  {
    case 1:
      sub_1000C9BFC();
      break;
    case 2:
      sub_1000C9B84();
      break;
    case 3:
      sub_1000C99A0();
      break;
    default:
      break;
  }

  v4[3] = &type metadata for String;
  v4[0] = v1;
  v4[1] = v0;
  sub_1001C738C(v4, 0);
  return sub_1000C8970(v4, &qword_1002B34A0);
}

void sub_1000C1DF0(uint64_t a1, char a2)
{
  if (a2)
  {
    a1 = sub_1000C9594();
  }

  v4[0] = a1;
  sub_1000C954C();
  sub_1001C738C(v3, 12);
  sub_1000C8970(v4, &qword_1002B34A0);
  if ((*(v2 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels) & 2) == 0)
  {
    sub_1000C997C(OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels);
  }
}

void sub_1000C1E5C(char a1)
{
  v3 = &type metadata for Bool;
  v2[0] = a1;
  sub_1001C738C(v2, 24);
  sub_1000C8970(v2, &qword_1002B34A0);
  if ((*(v1 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels) & 2) == 0)
  {
    sub_1000C997C(OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels);
  }
}

uint64_t sub_1000C1EC0(char a1)
{
  result = 7959874;
  switch(a1)
  {
    case 1:
      result = 0x77656E6552;
      break;
    case 2:
      result = 0x6F6C6E776F646552;
      break;
    case 3:
      result = 0x65646172677055;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000C1F4C()
{
  sub_1000C9880();
  v3 = sub_100075518();
  v4 = sub_1000183C4(v3);
  sub_100056658(v4);
  sub_10001E844();
  __chkstk_darwin(v5, v6);
  sub_1000C982C(v7, v13);
  v8 = sub_1001F6508();
  if (sub_10001C990(v1, 1, v8) == 1)
  {
    sub_1000C8970(v1, &unk_1002B3450);
    v13 = 0u;
    v14 = 0u;
  }

  else
  {
    sub_1001F6428();
    *(&v14 + 1) = &type metadata for Double;
    *&v13 = v9;
    sub_10007E2C8();
    (*(v10 + 8))(v1, v8);
  }

  sub_1001C738C(&v13, 33);
  sub_1000C8970(&v13, &qword_1002B34A0);
  result = sub_1000C8970(v2, &unk_1002B3450);
  v12 = *(v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels);
  if ((v12 & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels) = v12 | 1;
  }

  return result;
}

uint64_t sub_1000C20A4(uint64_t a1, char a2)
{
  sub_1000C257C();
  sub_1000C92EC();
  switch(v4)
  {
    case 1:
      sub_1000995FC();
      goto LABEL_4;
    case 2:
      sub_1000C9358();
      goto LABEL_4;
    case 3:
      sub_1000C988C();
      if ((a2 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_6;
    default:
LABEL_4:
      sub_1000C94F0();
      v5 = sub_1000C9490();

      if (v5)
      {
        if (a2)
        {
LABEL_6:
          a1 = 0;
          v8[1] = 0;
          v8[2] = 0;
        }

LABEL_8:
        v8[0] = a1;
        sub_1000C954C();
        sub_1001C738C(v7, 34);
        return sub_1000C8970(v8, &qword_1002B34A0);
      }

      return result;
  }
}

void sub_1000C21D0(uint64_t a1, char a2)
{
  if (a2)
  {
    a1 = sub_1000C9594();
  }

  v5[0] = a1;
  sub_1000C954C();
  sub_1001C738C(v3, v4);
  sub_1000C8970(v5, &qword_1002B34A0);
  if ((*(v2 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels) & 2) == 0)
  {
    sub_1000C997C(OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels);
  }
}

void sub_1000C2244(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_1000C9BF0();
  }

  v3[0] = a1;
  v3[1] = a2;
  sub_1000C954C();
  sub_1001C738C(v2, 15);
  sub_1000C8970(v3, &qword_1002B34A0);
  sub_1000C9568(OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels);
}

uint64_t sub_1000C22AC()
{
  v0 = sub_1000C5388(0);
  if (!v1)
  {
    return 0;
  }

  LODWORD(result) = sub_1000C481C(v0, v1);
  if (result == 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1000C22E4()
{
  v0 = sub_1000C5470(1);
  if ((v0 + 1) < 3)
  {
    v2 = v0 + 1;
  }

  else
  {
    v2 = 3;
  }

  if (v1)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000C2320(unsigned __int8 a1)
{
  if (a1 == 3)
  {
    v2 = 0;
    v3 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  else
  {
    v2 = a1 - 1;
    v3 = &type metadata for Int;
  }

  v9[0] = v2;
  v9[3] = v3;
  sub_1001C738C(v9, 1);
  sub_1000C8970(v9, &qword_1002B34A0);
  v4 = OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels;
  v5 = *(v1 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels);
  if ((v5 & 2) == 0)
  {
    *(v1 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels) = v5 | 2;
  }

  result = sub_1000C5388(15);
  if (v7)
  {

    v8 = *(v1 + v4);
    if ((v8 & 1) == 0)
    {
      *(v1 + v4) = v8 | 1;
    }
  }

  return result;
}

void sub_1000C23D8(unsigned __int8 a1)
{
  v2[3] = &type metadata for Int;
  v2[0] = a1;
  sub_1001C738C(v2, 14);
  sub_1000C8970(v2, &qword_1002B34A0);
  if ((*(v1 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels) & 2) == 0)
  {
    sub_1000C997C(OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels);
  }
}

uint64_t sub_1000C2468()
{
  sub_1000C257C();
  sub_1000995FC();
  sub_1000C9368();
  switch(v1)
  {
    case 1:
      goto LABEL_5;
    case 2:
      sub_1000C932C();
      goto LABEL_5;
    case 3:
      sub_1000C9454();
LABEL_5:
      sub_1000C9C38();
      sub_1001F7EA8();
      sub_1000C9A28();
      if (v0)
      {
        goto LABEL_6;
      }

      goto LABEL_8;
    default:

LABEL_6:
      if (sub_1000C2448())
      {
        return 0;
      }

LABEL_8:

      return sub_1000C2858();
  }
}

uint64_t sub_1000C2550()
{
  result = sub_1000C5470(13);
  if (v1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000C257C()
{
  v1 = OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___type;
  result = *(v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___type);
  if (result == 4)
  {
    result = sub_1000C562C();
    *(v0 + v1) = result;
  }

  return result;
}

BOOL sub_1000C25B8()
{
  sub_1000C56AC(v2);
  if (v3 == 255)
  {
    return 0;
  }

  v0 = v3 == 0;
  sub_1000C8970(v2, &qword_1002B3310);
  return v0;
}

uint64_t sub_1000C2620(char a1)
{
  if (a1 == 2)
  {
    v1 = 0;
    v2 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  else
  {
    v1 = a1 & 1;
    v2 = &type metadata for Int;
  }

  v4[0] = v1;
  v4[3] = v2;
  sub_1001C738C(v4, 27);
  return sub_1000C8970(v4, &qword_1002B34A0);
}

void sub_1000C2698(uint64_t a1, char a2)
{
  if (a2)
  {
    a1 = sub_1000C9594();
  }

  v4[0] = a1;
  sub_1000C954C();
  sub_1001C738C(v2, v3);
  sub_1000C8970(v4, &qword_1002B34A0);
  sub_1000C9568(OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels);
}

uint64_t sub_1000C2704(char a1, char a2)
{
  v4 = &type metadata for Bool;
  v3[0] = a1;
  sub_1001C738C(v3, a2);
  return sub_1000C8970(v3, &qword_1002B34A0);
}

uint64_t sub_1000C2770()
{
  sub_1000C56AC(v1);
  if (v2 == 1)
  {
  }

  else if (v2 != 255)
  {
    sub_1000C8970(v1, &qword_1002B3310);
  }

  return sub_100037A2C();
}

uint64_t sub_1000C27E4()
{
  sub_1000C56AC(v1);
  if (v2 == 3)
  {
  }

  else if (v2 != 255)
  {
    sub_1000C8970(v1, &qword_1002B3310);
  }

  return sub_100037A2C();
}

uint64_t sub_1000C2858()
{
  if (sub_1000C43D8() != 1)
  {
    goto LABEL_10;
  }

  sub_1000C257C();
  sub_1000C92EC();
  switch(v1)
  {
    case 1:

      goto LABEL_7;
    case 2:
      sub_1000C932C();
      break;
    case 3:
      sub_1000C9454();
      break;
    default:
      break;
  }

  sub_1001F7EA8();
  sub_1000C9A28();
  if ((v0 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  sub_1000C5470(8);
  if ((v2 & 1) == 0)
  {
LABEL_10:
    v3 = 0;
    return v3 & 1;
  }

LABEL_8:
  switch(sub_1000C22AC())
  {
    case 2u:

      goto LABEL_10;
    default:
      v4 = sub_1001F7EA8();

      v3 = v4 ^ 1;
      break;
  }

  return v3 & 1;
}

uint64_t sub_1000C2A24(uint64_t a1, char a2)
{
  sub_1000C9880();
  v5 = sub_1000183C4(&unk_1002B3450);
  sub_100056658(v5);
  sub_10001E844();
  __chkstk_darwin(v6, v7);
  v9 = &v18 - v8;
  sub_1000C257C();
  sub_1000C92EC();
  switch(v10)
  {
    case 1:
      sub_100099938();
      sub_1000995FC();
      goto LABEL_4;
    case 2:
      sub_1000C9874();
      sub_1000C9358();
      goto LABEL_4;
    case 3:
      sub_1000C988C();
      goto LABEL_7;
    default:
LABEL_4:
      sub_1000C94F0();
      v11 = sub_1000C9490();

      if ((v11 & 1) == 0)
      {
        return sub_1000C8970(v3, &unk_1002B3450);
      }

LABEL_7:
      sub_1000C89FC(v3, v9, &unk_1002B3450);
      v13 = sub_1001F6508();
      if (sub_10001C990(v9, 1, v13) == 1)
      {
        sub_1000C8970(v9, &unk_1002B3450);
        v18 = 0u;
        v19 = 0u;
      }

      else
      {
        sub_1001F6428();
        *(&v19 + 1) = &type metadata for Double;
        *&v18 = v14;
        sub_10007E2C8();
        v15 = sub_1000377A8();
        v16(v15);
      }

      sub_1001C738C(&v18, a2);
      sub_1000C8970(&v18, &qword_1002B34A0);
      result = sub_1000C8970(v3, &unk_1002B3450);
      v17 = *(v2 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels);
      if ((v17 & 1) == 0)
      {
        *(v2 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels) = v17 | 1;
      }

      return result;
  }
}

void *sub_1000C2C60()
{
  result = sub_1000C2E3C();
  if (result)
  {
    v1 = result[2];

    if (v1 && (sub_1000C152C() - 1) <= 4u && sub_1000C152C() != 2 && sub_1000C22E4())
    {
      return (sub_1000C22E4() != 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000C2CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((sub_1000C15EC() & 1) != 0 && (sub_1000C5470(4), (v4 & 1) == 0))
  {

    return sub_1001F6418();
  }

  else
  {
    sub_1001F6508();
    sub_10007E2C8();
    v7 = *(v6 + 16);

    return v7(a2, a1, v5);
  }
}

uint64_t sub_1000C2D8C()
{
  v0 = sub_1000C5388(26);
  if (v1)
  {
    v2 = sub_1000E3FC8(v0, v1);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1000C2DBC@<X0>(uint64_t a1@<X8>)
{
  sub_1000C5388(22);
  if (v2)
  {
    sub_1001F6518();
  }

  else
  {
    v4 = sub_1001F6578();

    return sub_100018460(a1, 1, 1, v4);
  }
}

void *sub_1000C2E3C()
{
  sub_1000C257C();
  sub_1000C9934();
  sub_1000C92EC();
  switch(v1)
  {
    case 1:
      sub_1000C9368();
      sub_1000995FC();
      goto LABEL_4;
    case 2:
      sub_1000C932C();
      goto LABEL_4;
    case 3:
      sub_1000C988C();
      goto LABEL_7;
    default:
LABEL_4:
      sub_1000C942C();
      sub_1000C9A28();
      if ((v0 & 1) == 0)
      {
        return 0;
      }

LABEL_7:
      v2 = sub_1000C5544(19);
      if (!v2)
      {
        return 0;
      }

      v3 = v2;
      v4 = *(v2 + 16);
      if (v4)
      {
        sub_100033EA4();
        v5 = _swiftEmptyArrayStorage;
        v6 = (v3 + 40);
        do
        {
          v7 = *(v6 - 1);
          v8 = *v6;
          swift_bridgeObjectRetain_n();
          v9 = sub_100075518();
          sub_1000C57B4(v9, v10, v11);
          v12 = v22;
          if (v22 == 255)
          {
            v18 = 0u;
            v12 = 4;
            v13 = v8;
          }

          else
          {
            v18 = v21;
            v7 = v19;
            v13 = v20;
          }

          v15 = _swiftEmptyArrayStorage[2];
          v14 = _swiftEmptyArrayStorage[3];
          if (v15 >= v14 >> 1)
          {
            sub_10005669C(v14);
            sub_100033EA4();
          }

          _swiftEmptyArrayStorage[2] = v15 + 1;
          v16 = &_swiftEmptyArrayStorage[5 * v15];
          v16[4] = v7;
          v16[5] = v13;
          *(v16 + 3) = v18;
          *(v16 + 64) = v12;
          v6 += 2;
          --v4;
        }

        while (v4);
      }

      else
      {

        return _swiftEmptyArrayStorage;
      }

      return v5;
  }
}

void sub_1000C3010(void *a1@<X8>)
{
  v7 = sub_1000C2E3C();
  v8 = v7;
  if (!v7)
  {
    sub_1000C98C4();
    v14 = 0;
LABEL_95:
    v13 = 0;
    goto LABEL_96;
  }

  v70 = v7;
  v9 = sub_1000BFC34(&OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___productID, 9);
  v1 = sub_1000EE5B8(v9, v10);

  if (!v1)
  {

    v4 = 0;
    v3 = 0;
LABEL_94:
    v14 = 0;
    v8 = 0;
    goto LABEL_95;
  }

  v11 = *(v1 + 192);
  v12 = *(v1 + 200);

  v13 = sub_1000EE77C(v11, v12);

  v68 = v13;
  if (!v13)
  {

    sub_1000C98C4();
    v14 = 0;
    v8 = 0;
LABEL_96:
    v62 = 0;
    v63 = 0;
    goto LABEL_97;
  }

  v67 = v1;
  while (2)
  {
    if (!*(v8 + 16))
    {

      sub_1000C98C4();
      goto LABEL_94;
    }

    v4 = *(v8 + 32);
    v3 = *(v8 + 40);
    v1 = *(v8 + 48);
    v14 = *(v8 + 56);
    v15 = *(v8 + 64);
    v16 = sub_1000C93AC();
    sub_10008A298(v16, v17, v18, v14, v15);

    if (!*(v8 + 16))
    {
      goto LABEL_114;
    }

    sub_1000886C0(v8, v71);
    if (v71[32] == 255)
    {
      goto LABEL_115;
    }

    v13 = &v70;
    sub_100036830();
    v19 = sub_1000C8970(v71, &qword_1002B3310);
    v69 = v14;
    switch(v15)
    {
      case 1:
        sub_1000C96CC(v19, v20, v21, v22, v23, v24, v25, v26, v66, v67, v68);
        sub_1000C94AC();
        v40 = 0;
        while (2)
        {
          if (v5 == v40)
          {

            v57 = sub_1000C9398();
            v61 = 1;
            goto LABEL_88;
          }

          if (v2)
          {
            v13 = sub_1000C9AE4();
          }

          else
          {
            sub_1000C9994();
            if (v28)
            {
              goto LABEL_112;
            }

            sub_1000C9694();
          }

          if (__OFADD__(v40, 1))
          {
            goto LABEL_107;
          }

          sub_1000C9988();
          v42 = v30 && v3 == v41;
          if (!v42 && (sub_1000C9668() & 1) == 0)
          {

            ++v40;
            continue;
          }

          break;
        }

        v54 = sub_1000C98A4();
        v56 = sub_100025678(v54, v55);
        if (v56)
        {
          v8 = v56;

          v62 = v70;
          v63 = 1;
          goto LABEL_97;
        }

        v46 = sub_1000C93AC();
        v49 = v14;
        v50 = 1;
        goto LABEL_82;
      case 2:
        sub_1000C96CC(v19, v20, v21, v22, v23, v24, v25, v26, v66, v67, v68);
        sub_1000C94AC();
        v34 = 0;
        while (2)
        {
          if (v5 == v34)
          {

            v57 = sub_1000C9398();
            v61 = 2;
            goto LABEL_88;
          }

          if (v2)
          {
            v13 = sub_1000C9AE4();
          }

          else
          {
            sub_1000C9994();
            if (v28)
            {
              goto LABEL_109;
            }

            sub_1000C9694();
          }

          if (__OFADD__(v34, 1))
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            JUMPOUT(0x1000C35FCLL);
          }

          sub_1000C9988();
          v36 = v30 && v3 == v35;
          if (!v36 && (sub_1000C9668() & 1) == 0)
          {

            ++v34;
            continue;
          }

          break;
        }

        v43 = sub_1000C98A4();
        v45 = sub_10002574C(v43, v44);
        if (v45)
        {
          v8 = v45;

          v62 = v70;
          v63 = 2;
          goto LABEL_97;
        }

        v46 = sub_1000C93AC();
        v49 = v14;
        v50 = 2;
LABEL_82:
        sub_100099050(v46, v47, v48, v49, v50);

        goto LABEL_89;
      case 3:
        sub_1000C96CC(v19, v20, v21, v22, v23, v24, v25, v26, v66, v67, v68);
        sub_1000C94AC();
        v37 = 0;
        while (2)
        {
          if (v5 == v37)
          {

            v57 = sub_1000C9398();
            v61 = 3;
            goto LABEL_88;
          }

          if (v2)
          {
            v13 = sub_1000C9AE4();
          }

          else
          {
            sub_1000C9994();
            if (v28)
            {
              goto LABEL_111;
            }

            sub_1000C9694();
          }

          if (__OFADD__(v37, 1))
          {
            goto LABEL_108;
          }

          sub_1000C9988();
          v39 = v30 && v3 == v38;
          if (!v39 && (sub_1000C9668() & 1) == 0)
          {

            ++v37;
            continue;
          }

          break;
        }

        v51 = sub_1000C98A4();
        v53 = sub_100025820(v51, v52);
        if (v53)
        {
          v8 = v53;

          v62 = v70;
          v63 = 3;
          goto LABEL_97;
        }

        v46 = sub_1000C93AC();
        v49 = v14;
        v50 = 3;
        goto LABEL_82;
      case 4:
        sub_1000C96CC(v19, v20, v21, v22, v23, v24, v25, v26, v66, v67, v68);
        sub_1000C94AC();
        v31 = 0;
LABEL_23:
        if (v5 == v31)
        {

          v57 = sub_1000C9398();
          v61 = 4;
LABEL_88:
          sub_100099050(v57, v58, v59, v60, v61);
LABEL_89:
          v8 = v70;
          continue;
        }

        if (v2)
        {
          v13 = sub_1000C9AE4();
        }

        else
        {
          sub_1000C9994();
          if (v28)
          {
            goto LABEL_113;
          }

          sub_1000C9694();
        }

        if (__OFADD__(v31, 1))
        {
          goto LABEL_105;
        }

        sub_1000C9988();
        v33 = v30 && v3 == v32;
        if (!v33 && (sub_1000C9668() & 1) == 0)
        {

          ++v31;
          goto LABEL_23;
        }

        sub_1000183C4(&qword_1002ADB80);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_1001FE9E0;
        v64 = v13[10];
        v65 = v13[11];

        *(v62 + 32) = v64;
        *(v62 + 40) = v65;
        *(v62 + 48) = 0;
        *(v62 + 56) = 0;
        v63 = 4;
        *(v62 + 64) = 4;

        v8 = 0;
LABEL_99:
        v14 = v69;
LABEL_97:
        *a1 = v4;
        a1[1] = v3;
        a1[2] = v1;
        a1[3] = v14;
        a1[4] = v63;
        a1[5] = v8;
        a1[6] = v13;
        a1[7] = v62;
        return;
      default:
        sub_1000C96CC(v19, v20, v21, v22, v23, v24, v25, v26, v66, v67, v68);
        sub_1000C94AC();
        v27 = 0;
        while (2)
        {
          if (v5 == v27)
          {

            v57 = sub_1000C9398();
            v61 = 0;
            goto LABEL_88;
          }

          if (v2)
          {
            v13 = sub_1000C9AE4();
          }

          else
          {
            sub_1000C9994();
            if (v28)
            {
              goto LABEL_110;
            }

            sub_1000C9694();
          }

          if (__OFADD__(v27, 1))
          {
            goto LABEL_106;
          }

          sub_1000C9988();
          v30 = v30 && v3 == v29;
          if (!v30 && (sub_1000C9668() & 1) == 0)
          {

            ++v27;
            continue;
          }

          break;
        }

        v8 = v13[17];
        if (v8)
        {

          v63 = 0;
          v62 = v70;
          goto LABEL_99;
        }

        v46 = sub_1000C9398();
        v50 = 0;
        goto LABEL_82;
    }
  }
}

uint64_t sub_1000C3610()
{
  sub_1000C257C();
  sub_1000C9934();
  sub_1000C92EC();
  switch(v1)
  {
    case 1:
      sub_1000C9368();
      sub_1000995FC();
      goto LABEL_4;
    case 2:
      sub_1000C932C();
      goto LABEL_4;
    case 3:
      sub_1000C988C();
      return sub_1000C5470(34);
    default:
LABEL_4:
      sub_1000C942C();
      sub_1000C9A28();
      if (v0)
      {
        return sub_1000C5470(34);
      }

      else
      {
        return 0;
      }
  }
}

uint64_t sub_1000C36EC(char a1)
{
  v5 = sub_1000183C4(&unk_1002B3450);
  sub_100056658(v5);
  sub_10001E844();
  __chkstk_darwin(v6, v7);
  sub_1000C9BD8();
  v8 = sub_1001F6508();
  sub_10001A278();
  v10 = v9;
  __chkstk_darwin(v11, v12);
  sub_1000C9858();
  __chkstk_darwin(v13, v14);
  sub_1000C98B4();
  sub_1000C3914(a1, v1);
  if (sub_10001C990(v1, 1, v8) == 1)
  {
    sub_1000C8970(v1, &unk_1002B3450);
    v15 = 0;
  }

  else
  {
    v16 = sub_1000C9B14();
    v17(v16);
    sub_1001F64E8();
    sub_1000ACD54();
    sub_100075518();
    v18 = sub_1001F6A78();
    v19 = *(v10 + 8);
    v19(v2, v8);
    v19(v3, v8);
    v15 = v18 ^ 1;
  }

  return v15 & 1;
}

uint64_t sub_1000C3888()
{
  result = sub_1000C5470(31);
  if (v1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000C38B4(uint64_t a1, char a2)
{
  if (a2)
  {
    a1 = sub_1000C9594();
  }

  v4[0] = a1;
  sub_1000C954C();
  sub_1001C738C(v2, 31);
  return sub_1000C8970(v4, &qword_1002B34A0);
}

uint64_t sub_1000C3914@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1000C5470(a1);
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    sub_1001F6418();
    v4 = 0;
  }

  v5 = sub_1001F6508();

  return sub_100018460(a2, v4, 1, v5);
}

uint64_t sub_1000C398C(char a1)
{
  v1 = 3157553;
  if (a1)
  {
    v1 = 3157554;
  }

  v3[3] = &type metadata for String;
  v3[0] = v1;
  v3[1] = 0xE300000000000000;
  sub_1001C738C(v3, 26);
  return sub_1000C8970(v3, &qword_1002B34A0);
}

void sub_1000C39F0(__objc2_class **a1, char a2, char a3)
{
  v6 = a1;
  v7 = *a1;
  if (*a1 == _TtCC25ASOctaneSupportXPCService18OctaneSubscription17IntroductoryOffer)
  {
    sub_1000BFC34(&OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___productID, 9);
    sub_1000C9B50();
    sub_1000183C4(&qword_1002ADB80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001FE9E0;
    *(inited + 32) = sub_1000BFC34(&OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___productID, 9);
    *(inited + 40) = v10;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 4;
    if (a3)
    {
      sub_1000C56AC(v53);
      v11 = v54;
      if (v54 == 255)
      {
        v12 = _swiftEmptyArrayStorage;
      }

      else
      {
        v12 = swift_allocObject();
        v13 = v53[1];
        *(v12 + 2) = v53[0];
        *(v12 + 3) = v13;
        *(v12 + 1) = xmmword_1001FE9E0;
        *(v12 + 64) = v11;
      }

      v24 = sub_1000C2E3C();
      if (v24)
      {
        v25 = v24;

        inited = v25;
      }

      v57[0] = v12;
      sub_1001BA650(inited);
    }

    sub_1000C6320();
    v17 = 0;
    v18 = 0;
    v14 = 0;
    goto LABEL_21;
  }

  if (v7 == _TtCC25ASOctaneSupportXPCService18OctaneSubscription10AdHocOffer)
  {
    v14 = 1;
  }

  else
  {
    if (v7 == _TtCC25ASOctaneSupportXPCService18OctaneSubscription9CodeOffer)
    {
      v14 = 2;
      v15 = 3;
      v16 = 2;
      goto LABEL_11;
    }

    if (v7 != _TtCC25ASOctaneSupportXPCService18OctaneSubscription12WinbackOffer)
    {
      if (qword_1002AC510 == -1)
      {
        goto LABEL_45;
      }

      goto LABEL_52;
    }

    v14 = 3;
  }

  v15 = 13;
  v16 = 12;
LABEL_11:

  sub_1000BFC34(&OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___productID, 9);
  sub_1000C9B50();
  v17 = v6[v16];
  v18 = v6[v15];

  v19 = sub_1000C1570();
  if (v20)
  {
    v21 = v19;
    v22 = v20;
    sub_1000183C4(&qword_1002ADB80);
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_1001FE9E0;
    *(v23 + 32) = v21;
    *(v23 + 40) = v22;
    *(v23 + 48) = 0;
    *(v23 + 56) = 0;
    *(v23 + 64) = 4;
  }

  sub_1000C6320();
LABEL_21:
  v55[0] = v3;
  v55[1] = v4;
  v55[2] = v17;
  v55[3] = v18;
  v56 = v14;
  if (*(v6 + 56))
  {
    v26 = 1;
  }

  else
  {
    v26 = v6[6];
  }

  if ((a2 & 1) == 0)
  {
LABEL_36:
    v41 = sub_1000C2E3C();
    if (!v41)
    {
      v46 = sub_100075518();
      sub_100099050(v46, v47, v17, v18, v14);
LABEL_43:
      sub_1000C6320();
      return;
    }

    v6 = v41;
    v42 = sub_1000C69AC(v55, v26);
    v43 = v42[2];
    v44 = v6[2];
    if (!__OFADD__(v44, v43))
    {
      v45 = v42;
      if (!swift_isUniquelyReferenced_nonNull_native() || v44 + v43 > (v6[3] >> 1))
      {
        sub_1000327BC();
      }

      sub_1000C8354(0, 0, v43, v45);
      goto LABEL_43;
    }

    __break(1u);
    goto LABEL_51;
  }

  if (!__OFSUB__(v26--, 1))
  {
    v57[0] = v3;
    v57[1] = v4;
    v57[2] = v17;
    v57[3] = v18;
    v58 = v14;
    v28 = sub_100075518();
    sub_10008A298(v28, v29, v17, v18, v14);
    sub_1000C5AB4();
    sub_1000C5DD0(*(v6 + 57));
    sub_100161BA8();
    sub_1000C6038(v30, v31);
    if (*v6 == _TtCC25ASOctaneSupportXPCService18OctaneSubscription9CodeOffer)
    {
      v32 = v6[10];
      v33 = v6[11];
    }

    else
    {
      v32 = 0;
      v33 = 0;
    }

    sub_1000C62C4(v32, v33);
    switch(*(v6 + 57))
    {
      case 1:

        goto LABEL_32;
      default:
        v35 = sub_1001F7EA8();

        if (v35)
        {
LABEL_32:
          sub_1001F7418(v34, 0);
          v39 = v38;
        }

        else
        {
          v36 = sub_100161AA0();
          if ((v40 & 0x100000000) != 0)
          {
            goto LABEL_36;
          }

          v39 = v40;
        }

        sub_1000C617C(v36, v37, v39);
        break;
    }

    goto LABEL_36;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  sub_10001B230();
LABEL_45:
  v48 = sub_1001F6688();
  sub_100019C94(v48, qword_1002E6180);

  oslog = sub_1001F6668();
  v49 = sub_1001F72A8();

  if (os_log_type_enabled(oslog, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v57[0] = v51;
    *v50 = 136315138;
    *(v50 + 4) = sub_1000E4544(v6[2], v6[3], v57);
    _os_log_impl(&_mh_execute_header, oslog, v49, "Unknown offer type with id: %s, cannot add offer to transaction", v50, 0xCu);
    sub_100019CCC(v51);
    sub_10003A72C();
    sub_10003A72C();
  }

  else
  {
  }
}

uint64_t sub_1000C3FF4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1001F6508();
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  sub_100023510();
  v12 = v11 - v10;
  if (sub_1000C672C())
  {
    sub_100161BA8();
    v14 = v13;
    v16 = v15;
LABEL_5:

    sub_1000BFDA8();
    sub_1001F6418();
    v20 = sub_10004B73C(v14, v16, v12, a2);
    (*(v7 + 8))(v12, v5);
    sub_1000C2698(v20, 0);
    return sub_1000C5470(4);
  }

  v17 = sub_1000BFC34(&OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___productID, 9);
  v19 = sub_1000EE5B8(v17, v18);

  if (v19)
  {
    v14 = *(v19 + 176);
    v16 = *(v19 + 184);
    goto LABEL_5;
  }

  if (qword_1002AC510 != -1)
  {
    sub_10001B230();
  }

  v22 = sub_1001F6688();
  sub_100019C94(v22, qword_1002E6180);
  v23 = v3;
  v24 = sub_1001F6668();
  v25 = sub_1001F7298();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v26 = 136315138;

    v27 = sub_1000C9484();
    v30 = sub_1000E4544(v27, v28, v29);

    *(v26 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v24, v25, "missing subscription for id: %s, cannot compute expiration", v26, 0xCu);
    sub_100019CCC(v31);
    sub_10003A72C();
    sub_10003A72C();
  }

  return 0;
}

uint64_t sub_1000C4280()
{
  sub_1000C9880();
  v3 = sub_100075518();
  v4 = sub_1000183C4(v3);
  sub_100056658(v4);
  sub_10001E844();
  __chkstk_darwin(v5, v6);
  sub_1000C982C(v7, v13);
  v8 = sub_1001F6578();
  if (sub_10001C990(v1, 1, v8) == 1)
  {
    sub_1000C8970(v1, &qword_1002AFA30);
    v13 = 0u;
    v14 = 0u;
  }

  else
  {
    *(&v14 + 1) = &type metadata for String;
    *&v13 = sub_1001F6528();
    *(&v13 + 1) = v9;
    sub_10007E2C8();
    (*(v10 + 8))(v1, v8);
  }

  sub_1001C738C(&v13, 22);
  sub_1000C8970(&v13, &qword_1002B34A0);
  result = sub_1000C8970(v2, &qword_1002AFA30);
  v12 = *(v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels);
  if ((v12 & 2) == 0)
  {
    *(v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels) = v12 | 2;
  }

  return result;
}

uint64_t sub_1000C43D8()
{
  v0 = sub_1000C5470(14);
  if (v1)
  {
    return 0;
  }

  LODWORD(result) = sub_1000C480C(v0);
  if (result == 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

BOOL sub_1000C4420(char a1)
{
  sub_1001F6508();
  sub_10001A278();
  __chkstk_darwin(v2, v3);
  sub_100023510();
  sub_1000C9BD8();
  *&v4 = COERCE_DOUBLE(sub_1000C5470(a1));
  if (v5)
  {
    return 0;
  }

  v7 = *&v4;
  sub_1001F64F8();
  sub_1001F6428();
  v9 = v8;
  v10 = sub_100037B7C();
  v11(v10);
  return v9 > v7;
}

uint64_t sub_1000C450C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (v1 == v2)
  {
    LOBYTE(result) = 0;
    return result | ((v1 == v2) << 8);
  }

  result = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (result < v1 || v2 - 1 >= v2)
  {
    goto LABEL_12;
  }

  result = sub_100064380(result, 0, *v0, *(v0 + 8), *(v0 + 16) | (*(v0 + 20) << 32) | (*(v0 + 22) << 48));
  if ((result & 0x100) == 0)
  {
    return result | ((v1 == v2) << 8);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1000C45A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = result + 40 * v3;
    v5 = *(v4 - 8);
    v6 = *v4;
    v7 = *(v4 + 8);
    v8 = *(v4 + 16);
    v9 = *(v4 + 24);
    result = sub_10008A298(v5, *v4, v7, v8, v9);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = -1;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  return result;
}

uint64_t sub_1000C4628(uint64_t a1, unint64_t a2)
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

  sub_1001F6C58();
  return sub_1001F6D98();
}

uint64_t sub_1000C46A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  return sub_100037A2C();
}

char *sub_1000C46EC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1001C19A8(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    return sub_1001F7808();
  }

  result = sub_1001F7B48();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

double sub_1000C4780()
{
  v0 = sub_1000C5470(23);
  if ((v1 & 1) == 0)
  {
    return *&v0;
  }

  return sub_1000BFDA8();
}

uint64_t sub_1000C47C4()
{
  result = sub_1000C8768(&off_100279238);
  qword_1002B3220 = result;
  return result;
}

uint64_t sub_1000C47EC(uint64_t a1)
{
  if ((a1 + 1) < 3)
  {
    return a1 + 1;
  }

  else
  {
    return 3;
  }
}

unint64_t sub_1000C480C(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_1000C481C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100278EC0;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000C4868(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C4888(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return 5;
  }

  else
  {
    return byte_10020A7E8[a1];
  }
}

uint64_t sub_1000C48C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C47EC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000C48EC()
{
  v1 = sub_100056690();
  result = sub_1000C4800(v1);
  *v0 = result;
  return result;
}

unint64_t sub_1000C49E0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C480C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000C4B08@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C481C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1000C4B38()
{
  v1 = sub_100056690();
  result = sub_1000C1EC0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1000C4C40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C4868(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000C4C6C()
{
  v1 = sub_100056690();
  result = sub_1000C4880(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1000C4D68@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C4888(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000C4D94()
{
  v1 = sub_100056690();
  result = sub_1000C2C4C(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1000C4E78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10002DFF4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1000C4EA8(uint64_t a1)
{
  v2 = sub_1000C9584(a1);
  result = sub_1000EC36C(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1000C4EDC(uint64_t a1)
{
  v2 = sub_1000C9584(a1);
  result = sub_1000C1C60(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1000C4F04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000C1C6C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1000C4F38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000C1CBC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1000C4F74(uint64_t a1)
{
  v2 = sub_1000C9584(a1);
  result = sub_1000BFF60(v2, v3);
  *v1 = result;
  return result;
}

void *sub_1000C4FB8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000C4FC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000BFEB0(a1);
  *a2 = result;
  return result;
}

char *sub_1000C4FF0(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = a1;
  v5 = [v4 databaseID];
  v6 = [v4 propertyValues];
  sub_1001F6998();

  sub_1000C9924();
  isa = sub_1001F6988().super.isa;

  v8 = [v4 externalPropertyValues];

  sub_1000C9924();
  sub_1001F6998();

  v9 = sub_1001F6988().super.isa;

  v10 = [v3 initWithDatabaseID:v5 propertyValues:isa externalPropertyValues:v9];

  v11 = *&v4[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels];
  v12 = v10;

  *&v12[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels] = v11;
  return v12;
}

void *sub_1000C518C()
{
  sub_1000375CC(0, 37, 0);
  v0 = 0;
  do
  {
    v1 = sub_10013EBCC(*(&off_10027AD30 + v0 + 32));
    v3 = v2;
    v5 = _swiftEmptyArrayStorage[2];
    v4 = _swiftEmptyArrayStorage[3];
    if (v5 >= v4 >> 1)
    {
      sub_1000375CC(v4 > 1, v5 + 1, 1);
    }

    ++v0;
    _swiftEmptyArrayStorage[2] = v5 + 1;
    v6 = &_swiftEmptyArrayStorage[2 * v5];
    v6[4] = v1;
    v6[5] = v3;
  }

  while (v0 != 37);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000C52B0(char a1)
{
  sub_10013EBCC(a1);
  v2 = sub_1001F6B48();

  v3 = [v1 valueForProperty:v2];

  if (v3)
  {
    sub_1001F76D8();
    swift_unknownObjectRelease();
    sub_10003708C(&v5, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  sub_1000183C4(&qword_1002B34A0);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1000C5388(char a1)
{
  sub_10013EBCC(a1);
  v2 = sub_1001F6B48();

  v3 = [v1 valueForProperty:v2];

  if (v3)
  {
    sub_1001F76D8();
    v4 = swift_unknownObjectRelease();
    v12 = sub_1000C9BE4(v4, v5, v6, v7, v8, v9, v10, v11, v21);
    sub_10003708C(v12, v13);
  }

  v14 = sub_1000183C4(&qword_1002B34A0);
  sub_1000C9BE4(v14, v15, v14, &type metadata for String, v16, v17, v18, v19, v21);
  if (swift_dynamicCast())
  {
    return v22;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C5470(char a1)
{
  sub_10013EBCC(a1);
  v2 = sub_1001F6B48();

  v3 = [v1 valueForProperty:v2];

  if (v3)
  {
    sub_1001F76D8();
    v4 = swift_unknownObjectRelease();
    v12 = sub_1000C9BE4(v4, v5, v6, v7, v8, v9, v10, v11, v24);
    sub_10003708C(v12, v13);
  }

  v14 = sub_1000183C4(&qword_1002B34A0);
  sub_1000C9BE4(v14, v15, v14, v16, v17, v18, v19, v20, v24);
  v21 = swift_dynamicCast();
  v22 = v25;
  if (!v21)
  {
    return 0;
  }

  return v22;
}

uint64_t sub_1000C5544(char a1)
{
  sub_10013EBCC(a1);
  v2 = sub_1001F6B48();

  v3 = [v1 valueForProperty:v2];

  if (v3)
  {
    sub_1001F76D8();
    swift_unknownObjectRelease();
    sub_10003708C(&v5, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  sub_1000183C4(&qword_1002B34A0);
  sub_1000183C4(&qword_1002ACA10);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C562C()
{
  v0 = sub_1000C5388(16);
  if (!v1)
  {
    return 0;
  }

  LODWORD(result) = sub_1001E8640(v0, v1);
  if (result == 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1000C5670()
{
  sub_1000C5388(10);
  if (!v0)
  {
    return 22;
  }

  return sub_100087B8C();
}

void sub_1000C56AC(uint64_t a1@<X8>)
{
  sub_1000C257C();
  sub_1000C92EC();
  switch(v2)
  {
    case 1:
      sub_1000995FC();
      goto LABEL_4;
    case 2:
      sub_1000C9358();
      goto LABEL_4;
    case 3:
      sub_1000C988C();
      goto LABEL_7;
    default:
LABEL_4:
      sub_1000C94F0();
      v3 = sub_1000C9490();

      if ((v3 & 1) == 0)
      {
        goto LABEL_9;
      }

LABEL_7:
      v4 = sub_1000C5388(18);
      if (v5)
      {
        sub_1000C57B4(v4, v5, v9);
        v6 = v9[0];
        v7 = v9[1];
        v8 = v10;
      }

      else
      {
LABEL_9:
        v6 = 0uLL;
        v8 = -1;
        v7 = 0uLL;
      }

      *a1 = v6;
      *(a1 + 16) = v7;
      *(a1 + 32) = v8;
      return;
  }
}

void sub_1000C57B4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31[0] = 58;
  v31[1] = 0xE100000000000000;
  v30[2] = v31;
  v4 = sub_1001BF6D8(0x7FFFFFFFFFFFFFFFLL, 1, sub_100048E80, v30, a1, a2);
  v5 = v4[2];
  if (v5)
  {
    v31[0] = _swiftEmptyArrayStorage;
    sub_1000375CC(0, v5, 0);
    v6 = v31[0];
    v7 = v4 + 7;
    do
    {

      sub_1000377A8();
      v8 = sub_1001F6BE8();
      v10 = v9;

      v31[0] = v6;
      v12 = v6[2];
      v11 = v6[3];
      if (v12 >= v11 >> 1)
      {
        sub_1000375CC(v11 > 1, v12 + 1, 1);
        v6 = v31[0];
      }

      v6[2] = v12 + 1;
      v13 = &v6[2 * v12];
      v13[4] = v8;
      v13[5] = v10;
      v7 += 4;
      --v5;
    }

    while (v5);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  v14 = 0x6F72746E69;
  v15 = v6[2];
  if (v15 != 3)
  {
    if (v15 < 2)
    {
      goto LABEL_22;
    }

LABEL_23:
    v23 = v6[4];
    v24 = v6[5];
    v25 = v23 == 0x6F72746E69 && v24 == 0xE500000000000000;
    if (v25 || (sub_1000AD850(), (sub_1001F7EA8() & 1) != 0))
    {
      v19 = 0;
      v22 = 0;
      v21 = 0;
      v14 = v6[6];
      v26 = v6[7];
    }

    else
    {
      if (v23 != 6583411 || v24 != 0xE300000000000000)
      {
        sub_1000AD850();
        if ((sub_1001F7EA8() & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v19 = 0;
      v22 = 0;
      v14 = v6[6];
      v26 = v6[7];
      v21 = 4;
    }

    v16 = v26;
    goto LABEL_30;
  }

  v16 = v6[4];
  v17 = v6[5];
  if (v16 == 0x6F72746E69 && v17 == 0xE500000000000000)
  {
    goto LABEL_23;
  }

  v19 = 0xE500000000000000;
  sub_1000AD850();
  if (sub_1001F7EA8())
  {
    goto LABEL_23;
  }

  v20 = v16 == 0x636F686461 && v17 == 0xE500000000000000;
  if (v20 || (sub_1000C9A0C() & 1) != 0)
  {
    sub_1000C9A40();
    v21 = 1;
LABEL_20:
    v22 = v17;
LABEL_30:

    goto LABEL_31;
  }

  v28 = v16 == 1701080931 && v17 == 0xE400000000000000;
  if (v28 || (sub_1000C9A0C() & 1) != 0)
  {
    sub_1000C9A40();
    v21 = 2;
    goto LABEL_20;
  }

  v29 = v16 == 0x6B6361626E6977 && v17 == 0xE700000000000000;
  if (v29 || (sub_1000C9A0C() & 1) != 0)
  {
    sub_1000C9A40();
    v21 = 3;
    goto LABEL_20;
  }

LABEL_22:
  v14 = 0;
  v16 = 0;
  v19 = 0;
  v22 = 0;
  v21 = -1;
LABEL_31:

  *a3 = v14;
  *(a3 + 8) = v16;
  *(a3 + 16) = v19;
  *(a3 + 24) = v22;
  *(a3 + 32) = v21;
  sub_10001A1D4();
}

uint64_t sub_1000C5AB4()
{
  sub_1000C9880();
  sub_1000C257C();
  sub_1000C92EC();
  switch(v2)
  {
    case 1:
      sub_100099938();
      sub_1000995FC();
      goto LABEL_4;
    case 2:
      sub_1000C9874();
      sub_1000C9358();
      goto LABEL_4;
    case 3:
      sub_1000C988C();
      goto LABEL_7;
    default:
LABEL_4:
      sub_1000C94F0();
      v3 = sub_1000C9490();

      if ((v3 & 1) == 0)
      {
        return sub_1000C8970(v1, &qword_1002B3310);
      }

LABEL_7:
      v5 = *(v1 + 32);
      if (v5 == 255)
      {
        v7 = 0;
        v9 = 0;
        sub_1000C9BF0();
      }

      else
      {
        v6 = *(v1 + 16);
        v12 = *v1;
        v13 = v6;
        v14 = v5;
        v7 = sub_1000C5C28();
        v9 = v8;
        sub_1000C8970(v1, &qword_1002B3310);
      }

      v11[0] = v7;
      v11[1] = v9;
      sub_1000C954C();
      sub_1001C738C(v10, 18);
      result = sub_1000C8970(v11, &qword_1002B34A0);
      *(v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels) |= 3uLL;
      return result;
  }
}

uint64_t sub_1000C5C28()
{
  v1 = *v0;
  switch(*(v0 + 32))
  {
    case 1:
      sub_1000C98D4();
      goto LABEL_8;
    case 2:
      sub_1000C9904();
      goto LABEL_8;
    case 3:
      sub_1000C9558();
      v4 = v5 & 0xFFFFFFFFFFFFLL | 0x3A6B000000000000;
LABEL_8:
      v7 = v4;
      sub_1001F6CA8(v3);
      sub_1000998B0();
      v1._countAndFlagsBits = sub_100037B7C();
      goto LABEL_9;
    case 4:
      v2 = 979661939;
      goto LABEL_4;
    default:
      sub_1000C9914();
LABEL_4:
      v7 = v2;
LABEL_9:
      sub_1001F6CA8(v1);
      return v7;
  }
}

uint64_t sub_1000C5D00()
{
  sub_1000C257C();
  sub_1000C9934();
  sub_1000C92EC();
  switch(v1)
  {
    case 1:
      sub_1000C9368();
      sub_1000995FC();
      goto LABEL_4;
    case 2:
      sub_1000C932C();
      goto LABEL_4;
    case 3:
      sub_1000C988C();
      goto LABEL_7;
    default:
LABEL_4:
      sub_1000C942C();
      sub_1000C9A28();
      if ((v0 & 1) == 0)
      {
        return 4;
      }

LABEL_7:
      sub_1000C5388(35);
      if (!v2)
      {
        return 4;
      }

      return sub_1001617C8();
  }
}

void sub_1000C5DD0(char a1)
{
  sub_1000C257C();
  sub_1000C92EC();
  switch(v2)
  {
    case 1:
      sub_1000995FC();
      goto LABEL_4;
    case 2:
      sub_1000C9358();
      goto LABEL_4;
    case 3:
      sub_1000C988C();
      goto LABEL_7;
    default:
LABEL_4:
      sub_1000C94F0();
      v3 = sub_1000C9490();

      if (v3)
      {
LABEL_7:
        v4 = 0xE400000000000000;
        v5 = 1701736302;
        switch(a1)
        {
          case 1:
            v5 = 1701147238;
            goto LABEL_12;
          case 2:
            v4 = 0xEA00000000006F47;
            v5 = 0x756F597341796170;
            goto LABEL_12;
          case 3:
            v4 = 0xEA0000000000746ELL;
            v5 = 0x6F72467055796170;
            goto LABEL_12;
          case 4:
            v6 = 0u;
            v7 = 0u;
            goto LABEL_13;
          default:
LABEL_12:
            *(&v7 + 1) = &type metadata for String;
            *&v6 = v5;
            *(&v6 + 1) = v4;
LABEL_13:
            sub_1001C738C(&v6, 35);
            sub_1000C8970(&v6, &qword_1002B34A0);
            sub_1000C9568(OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels);
            break;
        }
      }

      return;
  }
}

void sub_1000C5F7C()
{
  sub_1000C257C();
  sub_1000C9934();
  sub_1000C92EC();
  switch(v1)
  {
    case 1:
      sub_1000C9368();
      sub_1000995FC();
      goto LABEL_4;
    case 2:
      sub_1000C932C();
      goto LABEL_4;
    case 3:
      sub_1000C988C();
      goto LABEL_7;
    default:
LABEL_4:
      sub_1000C942C();
      sub_1000C9A28();
      if (v0)
      {
LABEL_7:
        v2 = sub_1000C5388(36);
        if (v3)
        {
          sub_1001EB808(v2, v3);
        }
      }

      return;
  }
}

void sub_1000C6038(uint64_t a1, char a2)
{
  sub_1000C257C();
  sub_1000C92EC();
  switch(v4)
  {
    case 1:
      sub_1000995FC();
      goto LABEL_4;
    case 2:
      sub_1000C9358();
      goto LABEL_4;
    case 3:
      sub_1000C988C();
      goto LABEL_7;
    default:
LABEL_4:
      sub_1000C94F0();
      v5 = sub_1000C9490();

      if (v5)
      {
LABEL_7:
        if (a2 == 7)
        {
          sub_1000C9BF0();
        }

        else
        {
          v6 = sub_1001EBEE0(a1, a2);
        }

        v9[0] = v6;
        v9[1] = v7;
        sub_1000C954C();
        sub_1001C738C(v8, 36);
        sub_1000C8970(v9, &qword_1002B34A0);
        sub_1000C9568(OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels);
      }

      return;
  }
}

void sub_1000C617C(unint64_t a1, unint64_t a2, unint64_t a3)
{
  if ((a3 & 0x100000000) != 0)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = a1;
    v7 = HIDWORD(a1);
    v8 = HIWORD(a1);
    v9 = a2 >> 16;
    v10 = HIDWORD(a2);
    v11 = HIWORD(a2);
    v12 = a3 >> 16;
    type metadata accessor for Decimal(0);
    LODWORD(v14) = v6;
    WORD2(v14) = v7;
    HIWORD(v14) = v8;
    LOWORD(v15) = v5;
    WORD1(v15) = v9;
    WORD2(v15) = v10;
    HIWORD(v15) = v11;
    LOWORD(v16) = v4;
    WORD1(v16) = v12;
  }

  v17 = v13;
  sub_1001C738C(&v14, 21);
  sub_1000C8970(&v14, &qword_1002B34A0);
  if ((*(v3 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels) & 2) == 0)
  {
    sub_1000C997C(OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels);
  }
}

uint64_t sub_1000C6260()
{
  v1 = sub_1001F6B48();
  [v0 BOOLValueForProperty:v1];

  return sub_1000C52B0(24) & 1;
}

uint64_t sub_1000C62C4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_1000C9BF0();
  }

  v4[0] = a1;
  v4[1] = a2;
  sub_1000C954C();
  sub_1001C738C(v2, 28);
  return sub_1000C8970(v4, &qword_1002B34A0);
}

void sub_1000C6320()
{
  sub_1000C9880();
  sub_1000C257C();
  sub_1000C92EC();
  switch(v2)
  {
    case 1:
      sub_100099938();
      sub_1000995FC();
      goto LABEL_4;
    case 2:
      sub_1000C9874();
      sub_1000C9358();
      goto LABEL_4;
    case 3:
      sub_1000C988C();
      goto LABEL_9;
    default:
LABEL_4:
      sub_1000C94F0();
      v3 = sub_1000C9490();

      if (v3)
      {
LABEL_9:
        if (v1)
        {
          v5 = *(v1 + 16);
          if (v5)
          {
            sub_1000375CC(0, v5, 0);
            v6 = (v1 + 64);
            do
            {
              v7 = *v6;
              v6 += 40;
              switch(v7)
              {
                case 1:
                  sub_1000C98D4();
                  *&v42 = v32;
                  *(&v42 + 1) = 0xE600000000000000;
                  v33 = sub_1000C9318();
                  sub_10008A298(v33, v34, v35, v36, 1u);
                  v50._countAndFlagsBits = sub_100062234();
                  sub_1001F6CA8(v50);
                  sub_1000998B0();
                  v51._countAndFlagsBits = sub_1000C9970();
                  sub_1001F6CA8(v51);
                  v13 = sub_1000C9318();
                  v17 = 1;
                  break;
                case 2:
                  sub_1000C9904();
                  *&v42 = v22;
                  *(&v42 + 1) = 0xE500000000000000;
                  v23 = sub_1000C9318();
                  sub_10008A298(v23, v24, v25, v26, 2u);
                  v46._countAndFlagsBits = sub_100062234();
                  sub_1001F6CA8(v46);
                  sub_1000998B0();
                  v47._countAndFlagsBits = sub_1000C9970();
                  sub_1001F6CA8(v47);
                  v13 = sub_1000C9318();
                  v17 = 2;
                  break;
                case 3:
                  sub_1000C9558();
                  *&v42 = v27 & 0xFFFFFFFFFFFFLL | 0x3A6B000000000000;
                  *(&v42 + 1) = 0xE800000000000000;
                  v28 = sub_1000C9318();
                  sub_10008A298(v28, v29, v30, v31, 3u);
                  v48._countAndFlagsBits = sub_100062234();
                  sub_1001F6CA8(v48);
                  sub_1000998B0();
                  v49._countAndFlagsBits = sub_1000C9970();
                  sub_1001F6CA8(v49);
                  v13 = sub_1000C9318();
                  v17 = 3;
                  break;
                case 4:
                  *&v42 = 979661939;
                  *(&v42 + 1) = 0xE400000000000000;
                  v18 = sub_1000C9318();
                  sub_10008A298(v18, v19, v20, v21, 4u);
                  v45._countAndFlagsBits = sub_100062234();
                  sub_1001F6CA8(v45);
                  v13 = sub_1000C9318();
                  v17 = 4;
                  break;
                default:
                  sub_1000C9914();
                  *&v42 = v8;
                  *(&v42 + 1) = 0xE600000000000000;
                  v9 = sub_1000C9318();
                  sub_10008A298(v9, v10, v11, v12, 0);
                  v44._countAndFlagsBits = sub_100062234();
                  sub_1001F6CA8(v44);
                  v13 = sub_1000C9318();
                  v17 = 0;
                  break;
              }

              sub_100099050(v13, v14, v15, v16, v17);
              v37 = v42;
              v39 = _swiftEmptyArrayStorage[2];
              v38 = _swiftEmptyArrayStorage[3];
              if (v39 >= v38 >> 1)
              {
                v40 = sub_10005669C(v38);
                sub_1000375CC(v40, v39 + 1, 1);
              }

              _swiftEmptyArrayStorage[2] = v39 + 1;
              *&_swiftEmptyArrayStorage[2 * v39 + 4] = v37;
              --v5;
            }

            while (v5);
          }

          *(&v43 + 1) = sub_1000183C4(&qword_1002ACA10);
          *&v42 = _swiftEmptyArrayStorage;
        }

        else
        {
          v42 = 0u;
          v43 = 0u;
        }

        sub_1001C738C(&v42, 19);
        sub_1000C8970(&v42, &qword_1002B34A0);
        v41 = *(v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels);
        if ((v41 & 1) == 0)
        {
          *(v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels) = v41 | 1;
        }

        sub_10001A1D4();
      }

      else
      {
        sub_10001A1D4();
      }

      return;
  }
}

uint64_t sub_1000C66A0()
{
  v0 = sub_1000C2E3C();
  v1 = v0;
  if (v0)
  {
    sub_1000C45A0(v0, v3);

    v1 = 0;
    if (v4 != 255)
    {
      if (v4 == 4)
      {
        v1 = sub_1000EE5B8(v3[0], v3[1]);
      }

      sub_1000C8970(v3, &qword_1002B3310);
    }
  }

  return v1;
}

uint64_t sub_1000C672C()
{
  sub_1000C56AC(&v14);
  switch(v15)
  {
    case 0:
      v0 = sub_1000C9D2C(v14);
      sub_1000C8970(&v14, &qword_1002B3310);
      if (!v0)
      {
        return 0;
      }

      v1 = *(v0 + 136);

      return v1;
    case 1:
      v9 = sub_1000C9D2C(v14);

      if (!v9)
      {
        goto LABEL_12;
      }

      v10 = sub_100037B7C();
      v5 = sub_100025678(v10, v11);
      goto LABEL_11;
    case 2:
      v2 = sub_1000C9D2C(v14);

      if (!v2)
      {
        goto LABEL_12;
      }

      v3 = sub_100037B7C();
      v5 = sub_10002574C(v3, v4);
      goto LABEL_11;
    case 3:
      v6 = sub_1000C9D2C(v14);

      if (v6)
      {
        v7 = sub_100037B7C();
        v5 = sub_100025820(v7, v8);
LABEL_11:
        v12 = v5;

        return v12;
      }

      else
      {
LABEL_12:

        return 0;
      }

    case 4:
      sub_1000C8970(&v14, &qword_1002B3310);
      return 0;
    default:
      return 0;
  }
}

void *sub_1000C6894(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a3)
    {
      v5 = result;
      sub_1000183C4(&qword_1002B3358);
      v6 = sub_1001F6F88();
      *(v6 + 16) = a3;
      v7 = a3 - 1;
      for (i = 32; ; i += 16)
      {
        v9 = (v6 + i);
        *v9 = v5;
        v9[1] = a2;
        if (!v7)
        {
          break;
        }

        --v7;
      }
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }

    return v6;
  }

  return result;
}

void *sub_1000C693C(void *result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    v4 = sub_1001F6F88();
    *(v4 + 16) = a2;
    memset((v4 + 32), v3, a2);
    return v4;
  }

  return result;
}

void *sub_1000C69AC(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_1001F6F88();
      *(v4 + 16) = a2;
      v5 = a2 - 1;
      for (i = 32; ; i += 40)
      {
        v7 = v4 + i;
        v8 = *v3;
        v9 = *(v3 + 16);
        *(v7 + 32) = *(v3 + 32);
        *v7 = v8;
        *(v7 + 16) = v9;
        if (!v5)
        {
          break;
        }

        sub_1000C8908(v3, v10);
        --v5;
      }
    }

    else
    {
      sub_1000C8940(result);
      return _swiftEmptyArrayStorage;
    }

    return v4;
  }

  return result;
}

void *sub_1000C6A50(void *result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    v4 = sub_1001F6F88();
    *(v4 + 16) = a2;
    memset((v4 + 32), v3 & 1, a2);
    return v4;
  }

  return result;
}

void sub_1000C6AC4()
{
  sub_1000C9ACC();
  v2 = v1;
  v4 = v3;
  if (v0)
  {
    v5 = v0;
    v6 = *(v0 + 16);
    if (v6)
    {
      sub_1000375CC(0, v6, 0);
      v7 = (v5 + 32);
      do
      {
        v8 = *v7++;
        v9 = sub_10013EBCC(v8);
        v11 = v10;
        v13 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        if (v13 >= v12 >> 1)
        {
          v15 = sub_10005669C(v12);
          sub_1000375CC(v15, v13 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v13 + 1;
        v14 = &_swiftEmptyArrayStorage[2 * v13];
        v14[4] = v9;
        v14[5] = v11;
        --v6;
      }

      while (v6);
    }

    v16.super.isa = sub_1001F6F18().super.isa;
  }

  else
  {
    v16.super.isa = 0;
  }

  [swift_getObjCClassFromMetadata() queryOnConnection:v4 predicate:v2 orderingProperties:v16.super.isa];

  sub_1000A3DA0();
}

uint64_t sub_1000C6BE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v8.receiver = v2;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "copyWithZone:", a1);
  sub_1001F76D8();
  swift_unknownObjectRelease();
  result = swift_dynamicCast();
  *(v7 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels) = *&v2[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels];
  a2[3] = ObjectType;
  *a2 = v7;
  return result;
}

void sub_1000C6CF8()
{
  sub_1000C9ACC();
  v13 = v1;
  v14 = v2;
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels] = 0;
  v6 = &v0[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___bundleID];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v0[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___id];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v0[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___productID];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v0[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___purchaseDate];
  *v9 = 0;
  v9[8] = 1;
  v0[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___type] = 4;
  sub_1000377A8();
  isa = sub_1001F6988().super.isa;

  v11 = sub_1001F6988().super.isa;

  v12.receiver = v0;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, "initWithDatabaseID:propertyValues:externalPropertyValues:", v4, isa, v11);

  sub_1000A3DA0();
}

id sub_1000C6EC4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

_BYTE *storeEnumTagSinglePayload for Transaction.RevocationReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000C7050);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000C708C()
{
  result = qword_1002B3280;
  if (!qword_1002B3280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3280);
  }

  return result;
}

unint64_t sub_1000C70E4()
{
  result = qword_1002B3288;
  if (!qword_1002B3288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3288);
  }

  return result;
}

unint64_t sub_1000C713C()
{
  result = qword_1002B3290;
  if (!qword_1002B3290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3290);
  }

  return result;
}

unint64_t sub_1000C7194()
{
  result = qword_1002B3298;
  if (!qword_1002B3298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3298);
  }

  return result;
}

unint64_t sub_1000C71EC()
{
  result = qword_1002B32A0;
  if (!qword_1002B32A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B32A0);
  }

  return result;
}

uint64_t sub_1000C7240()
{
  sub_1000C9ACC();
  v145 = v1;
  v146 = v2;
  v140 = v3;
  ObjectType = swift_getObjectType();
  v138 = sub_1001F8118();
  sub_10001A278();
  v137 = v4;
  __chkstk_darwin(v5, v6);
  sub_100023510();
  v136 = v8 - v7;
  v9 = sub_1000183C4(&qword_1002B32E8);
  sub_100056658(v9);
  sub_10001E844();
  __chkstk_darwin(v10, v11);
  v135 = &v128 - v12;
  v13 = sub_1001F6508();
  sub_10001A278();
  v134 = v14;
  __chkstk_darwin(v15, v16);
  sub_100023510();
  v133 = v18 - v17;
  v141 = v0;
  sub_1000183C4(&unk_1002BC430);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100209D20;
  *(v19 + 32) = 0x4449656C646E7562;
  *(v19 + 40) = 0xE800000000000000;
  v20 = v0;
  *(v19 + 48) = sub_1000BFC34(&OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___bundleID, 2);
  *(v19 + 56) = v21;
  *(v19 + 96) = sub_1000C9C8C();
  sub_1000C9B3C();
  *(v19 + 120) = &type metadata for UInt;
  *(v19 + 128) = v22;
  *(v19 + 136) = 0xE900000000000044;
  *(v19 + 144) = sub_1000BFC34(&OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___productID, 9);
  *(v19 + 152) = v23;
  sub_1000C9B28();
  *(v19 + 168) = &type metadata for String;
  *(v19 + 176) = v24;
  *(v19 + 184) = 0xEC00000065746144;
  sub_1000BFDA8();
  *(v19 + 216) = v13;
  sub_1000629FC((v19 + 192));
  sub_1001F6418();
  *(v19 + 224) = 1701869940;
  *(v19 + 232) = 0xE400000000000000;
  *(v19 + 240) = sub_1000C257C();
  *(v19 + 264) = &type metadata for OctaneIAPType;
  *(v19 + 272) = 0x6E6F69746361;
  *(v19 + 280) = 0xE600000000000000;
  *(v19 + 288) = sub_1000C22AC();
  *(v19 + 312) = &type metadata for Transaction.Action;
  *(v19 + 320) = 0x6C616E696769726FLL;
  *(v19 + 328) = 0xEA00000000004449;
  v25 = sub_1000C5470(8);
  v27 = v26;
  sub_1000183C4(&qword_1002B32F0);
  *(v19 + 336) = v25;
  *(v19 + 344) = v27 & 1;
  sub_1000B3DE0();
  v131 = v28;
  *(v19 + 360) = v28;
  *(v19 + 368) = 0xD000000000000014;
  *(v19 + 376) = v29;
  sub_1000C5470(12);
  v31 = v30;
  v32 = sub_1000183C4(&unk_1002B3450);
  *(v19 + 408) = v32;
  v33 = sub_1000629FC((v19 + 384));
  if (v31)
  {
    v34 = 1;
  }

  else
  {
    sub_1001F6418();
    v34 = 0;
  }

  v35 = 1;
  sub_100018460(v33, v34, 1, v13);
  strcpy((v19 + 416), "askToBuyStatus");
  *(v19 + 431) = -18;
  v36 = sub_1000C22E4();
  v37 = sub_1000183C4(&qword_1002B32F8);
  *(v19 + 432) = v36;
  *(v19 + 456) = v37;
  *(v19 + 464) = 0x61446C65636E6163;
  *(v19 + 472) = 0xEA00000000006574;
  v38 = sub_1000C5470(3);
  v40 = v39;
  v41 = sub_1000183C4(&qword_1002B3300);
  *(v19 + 480) = v38;
  *(v19 + 488) = v40 & 1;
  *(v19 + 504) = v41;
  strcpy((v19 + 512), "expirationDate");
  *(v19 + 527) = -18;
  v42 = sub_1000C5470(4);
  v44 = v43;
  v132 = v32;
  *(v19 + 552) = v32;
  v45 = sub_1000629FC((v19 + 528));
  if ((v44 & 1) == 0)
  {
    sub_1001F6418();
    v35 = 0;
  }

  sub_100018460(v45, v35, 1, v13);
  *(v19 + 560) = 0x64656873696E6966;
  *(v19 + 568) = 0xE800000000000000;
  v46 = sub_1000C2448();
  v130 = v13;
  *(v19 + 600) = &type metadata for Bool;
  *(v19 + 576) = v46 & 1;
  sub_1000C9964();
  *(v19 + 608) = 0xD000000000000010;
  *(v19 + 616) = v47;
  v48 = sub_1000C2750();
  *(v19 + 648) = &type metadata for Bool;
  *(v19 + 624) = v48 & 1;
  sub_1000B3DE0();
  *(v19 + 656) = 0xD000000000000013;
  sub_1000C9940();
  *(v19 + 664) = v49;
  v50 = sub_1000C5670();
  *(v19 + 696) = sub_1000183C4(&qword_1002B3308);
  *(v19 + 672) = v50;
  *(v19 + 704) = 0x6574617473;
  *(v19 + 712) = 0xE500000000000000;
  v51 = sub_1000C43D8();
  *(v19 + 744) = &type metadata for Transaction.State;
  *(v19 + 720) = v51;
  sub_1000B3DE0();
  *(v19 + 752) = v45;
  *(v19 + 760) = v52;
  sub_1000C5388(15);
  sub_1000C9B50();
  v53 = sub_1000183C4(&qword_1002AEBE0);
  *(v19 + 792) = v53;
  *(v19 + 768) = v45;
  *(v19 + 776) = v42;
  sub_1000C9C10();
  *(v19 + 800) = v54;
  *(v19 + 808) = 0xE800000000000000;
  v55 = sub_1000C2550();
  *(v19 + 840) = &type metadata for Int;
  *(v19 + 816) = v55;
  sub_1000C9C24();
  *(v19 + 848) = v56;
  sub_1000C9BB8();
  *(v19 + 856) = v57;
  v58 = sub_1000BFBB0();
  *(v19 + 888) = &type metadata for Bool;
  *(v19 + 864) = v58 & 1;
  *(v19 + 896) = 0x726566666FLL;
  *(v19 + 904) = 0xE500000000000000;
  sub_1000C56AC(v142);
  *(v19 + 936) = sub_1000183C4(&qword_1002B3310);
  v59 = swift_allocObject();
  *(v19 + 912) = v59;
  v60 = v142[1];
  *(v59 + 16) = v142[0];
  *(v59 + 32) = v60;
  *(v59 + 48) = v143;
  sub_1000B3DE0();
  *(v19 + 944) = 0xD000000000000010;
  v129 = 0xD000000000000010;
  *(v19 + 952) = v61;
  v62 = sub_1000C5D00();
  *(v19 + 984) = sub_1000183C4(&qword_1002B3318);
  *(v19 + 960) = v62;
  *(v19 + 992) = 0x726550726566666FLL;
  *(v19 + 1000) = 0xEB00000000646F69;
  sub_1000C5F7C();
  v64 = v63;
  v66 = v65;
  *(v19 + 1032) = sub_1000183C4(&qword_1002B3320);
  *(v19 + 1008) = v64;
  *(v19 + 1016) = v66;
  *(v19 + 1040) = 0x6F726665726F7473;
  *(v19 + 1048) = 0xEA0000000000746ELL;
  sub_1000BFCB0(v144);
  *(v19 + 1080) = sub_1000183C4(&qword_1002AEDE0);
  v67 = swift_allocObject();
  *(v19 + 1056) = v67;
  memcpy((v67 + 16), v144, 0x50uLL);
  *(v19 + 1088) = 0x6563697270;
  *(v19 + 1096) = 0xE500000000000000;
  sub_1000BFD40();
  sub_1000C9B50();
  v69 = v68;
  *(v19 + 1128) = sub_1000183C4(&qword_1002B3328);
  *(v19 + 1104) = v64;
  *(v19 + 1112) = v66;
  *(v19 + 1120) = v69;
  *(v19 + 1124) = BYTE4(v69) & 1;
  *(v19 + 1136) = 0x756F636341707061;
  *(v19 + 1144) = 0xEF6E656B6F54746ELL;
  *(v19 + 1176) = sub_1000183C4(&qword_1002AFA30);
  v70 = sub_1000629FC((v19 + 1152));
  sub_1000C2DBC(v70);
  *(v19 + 1184) = 0x616470557473616CLL;
  *(v19 + 1192) = 0xEB00000000646574;
  sub_1000C4780();
  *(v19 + 1224) = v13;
  sub_1000629FC((v19 + 1200));
  sub_1001F6418();
  *(v19 + 1232) = 0x6461726770557369;
  *(v19 + 1240) = 0xEA00000000006465;
  v71 = sub_1000C6260();
  *(v19 + 1272) = &type metadata for Bool;
  *(v19 + 1248) = v71 & 1;
  sub_1000C9964();
  sub_1000C9940();
  v72 = v64 - 1;
  *(v19 + 1280) = v64 - 1;
  *(v19 + 1288) = v73;
  v74 = sub_1000C5470(25);
  *(v19 + 1320) = v131;
  *(v19 + 1296) = v74;
  *(v19 + 1304) = v75 & 1;
  sub_1000B3DE0();
  *(v19 + 1328) = v64;
  *(v19 + 1336) = v76;
  v77 = sub_1000C2D8C();
  *(v19 + 1368) = &unk_1002889A8;
  *(v19 + 1344) = v77;
  sub_1000B3DE0();
  *(v19 + 1376) = 0xD000000000000010;
  *(v19 + 1384) = v78;
  v79 = sub_1000BFBD0();
  *(v19 + 1416) = sub_1000183C4(&qword_1002B3330);
  *(v19 + 1392) = v79;
  sub_1000B3DE0();
  *(v19 + 1424) = 0xD000000000000016;
  *(v19 + 1432) = v80;
  v81 = sub_1000C5388(28);
  *(v19 + 1464) = v53;
  *(v19 + 1440) = v81;
  *(v19 + 1448) = v82;
  *(v19 + 1472) = 0x52676E696C6C6962;
  *(v19 + 1480) = 0xEF646E4579727465;
  v83 = v132;
  *(v19 + 1512) = v132;
  v84 = sub_1000629FC((v19 + 1488));
  sub_1000C3914(30, v84);
  v131 = 0xD00000000000001CLL;
  *(v19 + 1520) = 0xD00000000000001CLL;
  *(v19 + 1528) = 0x80000001002270D0;
  *(v19 + 1560) = v83;
  v85 = sub_1000629FC((v19 + 1536));
  sub_1000C3914(29, v85);
  *(v19 + 1568) = 0x6553736568737570;
  *(v19 + 1576) = 0xEA0000000000746ELL;
  v86 = sub_1000C3888();
  LOBYTE(v64) = v87;
  *(v19 + 1608) = sub_1000183C4(&qword_1002B3338);
  *(v19 + 1584) = v86;
  *(v19 + 1592) = v64 & 1;
  sub_1000B3DE0();
  *(v19 + 1616) = 0xD000000000000013;
  *(v19 + 1624) = v88;
  LOBYTE(v86) = sub_1000C152C();
  *(v19 + 1656) = sub_1000183C4(&qword_1002B02E0);
  *(v19 + 1632) = v86;
  *(v19 + 1664) = 0xD00000000000001BLL;
  *(v19 + 1672) = 0x8000000100222E30;
  *(v19 + 1704) = v83;
  v89 = sub_1000629FC((v19 + 1680));
  sub_1000C3914(33, v89);
  sub_1000B3DE0();
  *(v19 + 1712) = v72;
  *(v19 + 1720) = v90;
  v91 = sub_1000C3610();
  LOBYTE(v64) = v92;
  *(v19 + 1752) = sub_1000183C4(&qword_1002B1470);
  *(v19 + 1728) = v91;
  *(v19 + 1736) = v64 & 1;
  strcpy((v19 + 1760), "adHocOfferID");
  *(v19 + 1773) = 0;
  *(v19 + 1774) = -5120;
  v93 = sub_1000C2770();
  *(v19 + 1800) = v53;
  *(v19 + 1776) = v93;
  *(v19 + 1784) = v94;
  sub_1000C9558();
  *(v19 + 1808) = v95 & 0xFFFFFFFFFFFFLL | 0x4F6B000000000000;
  *(v19 + 1816) = 0xEE00444972656666;
  v96 = sub_1000C27E4();
  *(v19 + 1848) = v53;
  *(v19 + 1824) = v96;
  *(v19 + 1832) = v97;
  strcpy((v19 + 1856), "nextRenewalIDs");
  *(v19 + 1871) = -18;
  v98 = sub_1000C2E3C();
  *(v19 + 1896) = sub_1000183C4(&qword_1002B3340);
  *(v19 + 1872) = v98;
  *(v19 + 1904) = 0x7541646C756F6873;
  *(v19 + 1912) = 0xEF77656E65726F74;
  v99 = sub_1000C2C60();
  *(v19 + 1944) = &type metadata for Bool;
  *(v19 + 1920) = v99 & 1;
  strcpy((v19 + 1952), "hasIntroOffer");
  *(v19 + 1966) = -4864;
  v100 = sub_1000C25B8();
  *(v19 + 1992) = &type metadata for Bool;
  *(v19 + 1968) = v100;
  sub_1000B3DE0();
  *(v19 + 2000) = v72;
  *(v19 + 2008) = v101;
  v102 = sub_1000C1570();
  *(v19 + 2040) = v53;
  *(v19 + 2016) = v102;
  *(v19 + 2024) = v103;
  *(v19 + 2048) = 0x6572697078457369;
  sub_1000C9BB8();
  *(v19 + 2056) = v104;
  v105 = sub_1000C4420(4);
  *(v19 + 2088) = &type metadata for Bool;
  *(v19 + 2064) = v105;
  *(v19 + 2096) = 0x6C65636E61437369;
  *(v19 + 2104) = 0xEB0000000064656CLL;
  v106 = sub_1000C4420(3);
  *(v19 + 2136) = &type metadata for Bool;
  *(v19 + 2112) = v106;
  sub_1000B3DE0();
  *(v19 + 2144) = v129;
  *(v19 + 2152) = v107;
  v108 = sub_1000C1760();
  *(v19 + 2184) = &type metadata for Bool;
  *(v19 + 2160) = v108 & 1;
  sub_1000B3DE0();
  *(v19 + 2192) = 0xD000000000000016;
  *(v19 + 2200) = v109;
  v110 = v133;
  sub_1001F64E8();
  LOBYTE(v53) = sub_1000C15EC();
  v111 = *(v134 + 8);
  v112 = v130;
  v111(v110, v130);
  *(v19 + 2232) = &type metadata for Bool;
  *(v19 + 2208) = v53 & 1;
  sub_1000C9964();
  *(v19 + 2240) = 0xD000000000000011;
  *(v19 + 2248) = v113;
  v114 = sub_1000C36EC(30);
  *(v19 + 2280) = &type metadata for Bool;
  *(v19 + 2256) = v114 & 1;
  sub_1000B3DE0();
  *(v19 + 2288) = v131;
  *(v19 + 2296) = v115;
  v116 = sub_1000C36EC(29);
  *(v19 + 2328) = &type metadata for Bool;
  *(v19 + 2304) = v116 & 1;
  sub_1000B3DE0();
  *(v19 + 2336) = 0xD000000000000013;
  *(v19 + 2344) = v117;
  v118 = sub_1000C2858();
  *(v19 + 2376) = &type metadata for Bool;
  *(v19 + 2352) = v118 & 1;
  sub_1000C9964();
  *(v19 + 2384) = 0xD00000000000001ALL;
  *(v19 + 2392) = v119;
  v120 = sub_1000C2468();
  *(v19 + 2424) = &type metadata for Bool;
  *(v19 + 2400) = v120 & 1;
  *(v19 + 2432) = 0x6576697463417369;
  *(v19 + 2440) = 0xE800000000000000;
  sub_1001F64E8();
  LOBYTE(v53) = sub_1000C18DC();
  v121 = sub_1000C9970();
  (v111)(v121);
  *(v19 + 2472) = &type metadata for Bool;
  *(v19 + 2448) = v53 & 1;
  sub_1000C9964();
  *(v19 + 2480) = 0xD000000000000017;
  *(v19 + 2488) = v122;
  sub_1001F64E8();
  *(v19 + 2520) = v112;
  v123 = sub_1000629FC((v19 + 2496));
  sub_1000C2CD8(v110, v123);
  v124 = sub_1000C9970();
  (v111)(v124);
  strcpy((v19 + 2528), "updatedModels");
  *(v19 + 2542) = -4864;
  v125 = *&v20[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels];
  *(v19 + 2568) = &type metadata for Transaction.UpdatedModels;
  *(v19 + 2544) = v125;
  v126 = sub_1001F8108();
  sub_100018460(v135, 1, 1, v126);
  (*(v137 + 104))(v136, enum case for Mirror.AncestorRepresentation.generated(_:), v138);
  return sub_1001F8148();
}

uint64_t sub_1000C8184()
{
  v1 = *(v0 + 48);
  if (v1 != 255)
  {
    sub_100099050(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v1);
  }

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1000C81CC()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 96, 7);
}

void sub_1000C8228()
{
  sub_1000C9ACC();
  v7 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3;
  v9 = v2;
  v10 = v4;
  v11 = v5;
  v23 = v6;
  v12 = *v0;
  v13 = v12 + 32 + 24 * v1;
  sub_100075518();
  swift_arrayDestroy();
  v14 = v8 - v7;
  if (__OFSUB__(v8, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = *(v12 + 16);
  if (__OFSUB__(v15, v9))
  {
    goto LABEL_16;
  }

  sub_100033CE4((v12 + 32 + 24 * v9), v15 - v9, (v13 + 24 * v8));
  v16 = *(v12 + 16);
  v17 = __OFADD__(v16, v14);
  v18 = v16 + v14;
  if (v17)
  {
LABEL_17:
    __break(1u);
    return;
  }

  *(v12 + 16) = v18;
LABEL_7:
  if (v8 < 1)
  {
    sub_1000A3DA0();

    sub_1000C89CC(v19, v20, v21);
  }

  else
  {
    *v13 = v10;
    *(v13 + 8) = v11;
    *(v13 + 16) = v23;
    if (v13 + 24 < (v13 + 24 * v8))
    {
      sub_1000C89E4(v10, v11, v23);
      __break(1u);
    }

    sub_1000A3DA0();
  }
}

uint64_t sub_1000C8354(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = *(v9 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_15;
  }

  result = sub_100033CA0((v9 + 32 + 40 * a2), v13 - a2, (v10 + 40 * a3));
  v14 = *(v9 + 16);
  v11 = __OFADD__(v14, v12);
  v15 = v14 + v12;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v9 + 16) = v15;
LABEL_7:
  if (a3 >= 1)
  {
    if (*(a4 + 16) == a3)
    {
      swift_arrayInitWithCopy();
      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
    return result;
  }

LABEL_10:
}

uint64_t sub_1000C844C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for SubscriptionRenewalCoordinator.RenewalTask();
  sub_1000AD850();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_1001F7B48();
LABEL_6:
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1000375D8(&v7[v6], result - v6, v5 + 8 * v3);
  if (v8)
  {
    result = sub_1001F7B48();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_18;
  }

  v4[2] = result + v9;
LABEL_12:
  if (v3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C8530(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_1000AD850();
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = *(v7 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_11;
  }

  result = sub_100033C80((v7 + 32 + 16 * a2), v11 - a2, (v8 + 16 * a3));
  v12 = *(v7 + 16);
  v9 = __OFADD__(v12, v10);
  v13 = v12 + v10;
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v7 + 16) = v13;
LABEL_7:
  if (a3 > 0)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C85D8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_19;
  }

  sub_1000183C4(&unk_1002BC450);
  result = sub_1001F7788();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_1001F8068();

    sub_1001F6C28();
    result = sub_1001F80D8();
    v10 = ~(-1 << v3[32]);
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 6) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_1001F7EA8() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 6) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 2);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 2) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1000C8768(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_14;
  }

  sub_1000183C4(&qword_1002B3348);
  result = sub_1001F7788();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = *(a1 + 32 + v5++);
    sub_1001F8068();
    sub_1001F8088(v7);
    result = sub_1001F80D8();
    v8 = ~(-1 << v3[32]);
    while (1)
    {
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v6 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) == 0)
      {
        break;
      }

      if (*(*(v3 + 6) + v9) == v7)
      {
        goto LABEL_11;
      }

      result = v9 + 1;
    }

    *(v6 + 8 * v10) = v12 | v11;
    *(*(v3 + 6) + v9) = v7;
    v13 = *(v3 + 2);
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      goto LABEL_16;
    }

    *(v3 + 2) = v15;
LABEL_11:
    if (v5 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1000C88B4()
{
  result = qword_1002B3350;
  if (!qword_1002B3350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3350);
  }

  return result;
}

uint64_t sub_1000C8970(uint64_t a1, uint64_t *a2)
{
  sub_1000183C4(a2);
  sub_10007E2C8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000C89CC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xBFu)
  {
  }

  return result;
}

uint64_t sub_1000C89E4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xBFu)
  {
  }

  return result;
}

uint64_t sub_1000C89FC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1000183C4(a3);
  sub_10007E2C8();
  v4 = sub_100037A2C();
  v5(v4);
  return a2;
}

uint64_t sub_1000C8A90(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 33))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000C8AD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

_BYTE *sub_1000C8B30(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000C8BFCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Transaction.AskToBuyStatus(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000C8D00);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Transaction.Action(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000C8E04);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000C8E40()
{
  result = qword_1002B3360;
  if (!qword_1002B3360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3360);
  }

  return result;
}

unint64_t sub_1000C8E98()
{
  result = qword_1002B3368;
  if (!qword_1002B3368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3368);
  }

  return result;
}

unint64_t sub_1000C8EF0()
{
  result = qword_1002B3370;
  if (!qword_1002B3370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3370);
  }

  return result;
}

unint64_t sub_1000C8F48()
{
  result = qword_1002B3378;
  if (!qword_1002B3378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3378);
  }

  return result;
}

unint64_t sub_1000C8FA0()
{
  result = qword_1002B3380;
  if (!qword_1002B3380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3380);
  }

  return result;
}

unint64_t sub_1000C8FF8()
{
  result = qword_1002B3388;
  if (!qword_1002B3388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3388);
  }

  return result;
}

unint64_t sub_1000C9050()
{
  result = qword_1002B3390;
  if (!qword_1002B3390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3390);
  }

  return result;
}

unint64_t sub_1000C90A8()
{
  result = qword_1002B3398;
  if (!qword_1002B3398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3398);
  }

  return result;
}

unint64_t sub_1000C90FC()
{
  result = qword_1002B33A0;
  if (!qword_1002B33A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B33A0);
  }

  return result;
}

unint64_t sub_1000C9150()
{
  result = qword_1002B33A8;
  if (!qword_1002B33A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B33A8);
  }

  return result;
}

unint64_t sub_1000C91A4()
{
  result = qword_1002B33B0;
  if (!qword_1002B33B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B33B0);
  }

  return result;
}

unint64_t sub_1000C91F8()
{
  result = qword_1002B33B8;
  if (!qword_1002B33B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B33B8);
  }

  return result;
}

uint64_t sub_1000C93EC()
{
  sub_10003708C((v0 + 208), (v1 - 160));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1000C942C()
{

  return sub_1001F7EA8();
}

uint64_t sub_1000C9490()
{

  return sub_1001F7EA8();
}

uint64_t sub_1000C94AC()
{
}

uint64_t sub_1000C94FC()
{
}

BOOL sub_1000C951C()
{

  return sub_1001F7A98(v0, v1);
}

uint64_t sub_1000C9668()
{

  return sub_1001F7EA8();
}

uint64_t sub_1000C9694()
{
}

_OWORD *sub_1000C96B0(uint64_t a1)
{
  *(v1 + 208) = a1;

  return sub_10003708C((v1 + 208), (v2 - 160));
}

uint64_t sub_1000C96CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a11 + 56);

  return sub_10013B560(v12);
}

uint64_t sub_1000C96E8()
{

  return sub_1001F8068();
}

uint64_t sub_1000C9700()
{

  return sub_1001F6C28();
}

double sub_1000C97A4()
{
  result = 0.0;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  return result;
}

_OWORD *sub_1000C97B0()
{
  v4 = (*(v2 + 56) + 32 * v1);

  return sub_10003708C(v4, (v0 + 208));
}

uint64_t sub_1000C982C@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1000C89FC(v2, &a2 - a1, v3);
}

uint64_t sub_1000C988C()
{
}

uint64_t sub_1000C9A0C()
{

  return sub_1001F7EA8();
}

uint64_t sub_1000C9A28()
{
}

uint64_t sub_1000C9A40()
{
}

uint64_t sub_1000C9A68()
{

  return sub_1001F6C28();
}

uint64_t sub_1000C9A8C()
{

  return sub_1001F6C28();
}

void sub_1000C9AB0()
{
  v3._countAndFlagsBits = v1;
  v3._object = v0;

  sub_1001F6CA8(v3);
}

uint64_t sub_1000C9AE4()
{

  return sub_1001F7808();
}

_OWORD *sub_1000C9AFC()
{

  return sub_1001E5A4C();
}

uint64_t sub_1000C9C8C()
{
  v1[9] = v0;
  v1[10] = 25705;
  v1[11] = 0xE200000000000000;

  return sub_1000C1A68();
}

uint64_t sub_1000C9CAC()
{
}

uint64_t sub_1000C9CCC()
{
  v3 = *(v0 + 72);

  return sub_10001C990(v1, 1, v3);
}

unint64_t sub_1000C9CEC()
{

  return sub_10011108C();
}

BOOL sub_1000C9D0C()
{

  return sub_1001F7A98(v0, v1);
}

uint64_t sub_1000C9D2C(uint64_t a1)
{

  return sub_1000EE5B8(a1, v1);
}

uint64_t sub_1000C9D44()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

id sub_1000C9E10(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC25ASOctaneSupportXPCService15DatabaseSession_connection] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DatabaseSession();
  return objc_msgSendSuper2(&v3, "init");
}

void sub_1000C9E78()
{
  sub_100037C08();
  v128 = v1;
  v119 = v6;
  v120 = v7;
  v121 = v8;
  v122 = v9;
  v10 = sub_1001F6508();
  sub_10001A278();
  v127 = v11;
  __chkstk_darwin(v12, v13);
  sub_10004FE10();
  v118[4] = v14;
  sub_100099510();
  __chkstk_darwin(v15, v16);
  sub_100099670();
  v118[3] = v17;
  sub_100099510();
  __chkstk_darwin(v18, v19);
  sub_1000AD704();
  v118[2] = v20;
  v21 = sub_1000D4DE4();
  sub_10001A278();
  v118[1] = v22;
  __chkstk_darwin(v23, v24);
  sub_100023510();
  v25 = sub_1000183C4(&unk_1002B3450);
  v26 = sub_100056658(v25);
  __chkstk_darwin(v26, v27);
  sub_10004FE10();
  v123 = v28;
  sub_100099510();
  __chkstk_darwin(v29, v30);
  sub_1000D47C8();
  __chkstk_darwin(v31, v32);
  sub_1000D47DC();
  __chkstk_darwin(v33, v34);
  sub_1000D47F0();
  __chkstk_darwin(v35, v36);
  sub_1000D4930();
  __chkstk_darwin(v37, v38);
  v40 = v118 - v39;
  v41 = sub_1000183C4(&qword_1002AFA30);
  v42 = sub_100056658(v41);
  __chkstk_darwin(v42, v43);
  sub_100099484();
  sub_1000D48F8();
  __chkstk_darwin(v44, v45);
  sub_1000D4AD4();
  v46 = sub_1000D48E8();
  sub_100018460(v46, v47, v48, v21);
  v124 = v40;
  sub_1000995D4();
  sub_100018460(v49, v50, v51, v10);
  v125 = v1;
  sub_1000995D4();
  sub_100018460(v52, v53, v54, v10);
  v126 = v4;
  v55 = sub_1000D4818();
  sub_100018460(v55, v56, v57, v10);
  v129 = _swiftEmptyDictionarySingleton;
  v132 = &type metadata for String;
  v130 = v119;
  v131 = v120;

  sub_100145028(&v130, 2);
  v132 = &type metadata for String;
  v130 = v121;
  v131 = v122;

  sub_100145028(&v130, 15);
  v58 = sub_1000D50F0();
  sub_100057CB8(v58, v59, &qword_1002AFA30);
  v60 = sub_1000D4AC8();
  sub_1000D4A44(v60, v61, v21);
  if (v62)
  {
    sub_10004BDE8(v3, &qword_1002AFA30);
  }

  else
  {
    v63 = sub_1000D4C28();
    v64(v63);
    v65 = sub_1001F6528();
    v132 = &type metadata for String;
    v130 = v65;
    v131 = v66;
    sub_100145028(&v130, 22);
    v67 = sub_1000D50B8();
    v68(v67);
  }

  v69 = sub_1000D4A80();
  sub_100057CB8(v69, v70, v71);
  v72 = sub_1000D4B24();
  if (sub_10001C990(v72, v73, v10) == 1)
  {
    sub_10004BDE8(v0, &unk_1002B3450);
  }

  else
  {
    sub_1000D4A8C();
    sub_1000D4A5C();
    v74();
    sub_1001F6428();
    v76 = sub_1000D48A4(v75);
    sub_100145028(v76, 30);
    sub_1000D4B6C();
    v77 = sub_1000D4D28();
    v78(v77);
  }

  v79 = sub_1000D4D58();
  sub_100057CB8(v79, v80, v81);
  sub_1000994CC(v2);
  if (v62)
  {
    sub_10004BDE8(v2, &unk_1002B3450);
  }

  else
  {
    sub_1000D4A8C();
    v82 = sub_1000A3CB4();
    v83(v82);
    sub_1001F6428();
    v85 = sub_1000D48A4(v84);
    sub_100145028(v85, 29);
    v86 = sub_1000D48C4();
    v87(v86);
  }

  v88 = v123;
  v89 = sub_1000D4D4C();
  sub_100057CB8(v89, v90, v91);
  sub_1000994CC(v88);
  if (v62)
  {
    sub_10004BDE8(v88, &unk_1002B3450);
  }

  else
  {
    sub_1000D4A8C();
    sub_1000D49EC();
    v92();
    sub_1001F6428();
    v94 = sub_1000D48A4(v93);
    sub_100145028(v94, 33);
    v95 = sub_1000D4AA8();
    v96(v95);
  }

  sub_100019C0C(0, &qword_1002AC800);
  sub_1000D4A5C();
  sub_10004BDE8(v97, v98);
  sub_1000D4A5C();
  sub_10004BDE8(v99, v100);
  sub_1000D4A5C();
  sub_10004BDE8(v101, v102);
  sub_10004BDE8(v5, &qword_1002AFA30);
  sub_1000183C4(&unk_1002B3470);
  sub_100098F08();
  v103 = sub_1001F69B8();
  v104 = sub_1000AD850();
  v107 = sub_1001C7504(v104, v105, v106, v103);

  sub_1000D4F30();
  v111 = sub_1000D4168(v108, v109, v110);
  v112 = sub_10013B560(v111);
  if (v112)
  {
    v113 = v112;
    v114 = 0;
    while (1)
    {
      if ((v111 & 0xC000000000000001) != 0)
      {
        sub_1000D4E20();
        v115 = sub_1001F7808();
      }

      else
      {
        if (v114 >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v115 = *(v111 + 8 * v114 + 32);
      }

      v116 = v115;
      v117 = v114 + 1;
      if (__OFADD__(v114, 1))
      {
        break;
      }

      sub_1000C56AC(&v130);

      if (v133 != 255)
      {
        if (!v133)
        {
          sub_10004BDE8(&v130, &qword_1002B3310);

          goto LABEL_26;
        }

        sub_10004BDE8(&v130, &qword_1002B3310);
      }

      ++v114;
      if (v117 == v113)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_24:

LABEL_26:
    sub_100037B00();
  }
}

void sub_1000CA54C()
{
  sub_100037C08();
  v115 = v6;
  v116 = v7;
  v117 = v8;
  v10 = v9;
  v114 = v11;
  v12 = sub_1001F6508();
  sub_10001A278();
  v122 = v13;
  __chkstk_darwin(v14, v15);
  sub_10004FE10();
  v113 = v16;
  sub_100099510();
  __chkstk_darwin(v17, v18);
  sub_100099670();
  v112 = v19;
  sub_100099510();
  __chkstk_darwin(v20, v21);
  sub_1000AD704();
  v111 = v22;
  v23 = sub_1000D4DE4();
  sub_10001A278();
  v110 = v24;
  __chkstk_darwin(v25, v26);
  sub_1000D4804();
  v109 = v27;
  v28 = sub_1000183C4(&unk_1002B3450);
  v29 = sub_100056658(v28);
  __chkstk_darwin(v29, v30);
  sub_10004FE10();
  v118 = v31;
  sub_100099510();
  __chkstk_darwin(v32, v33);
  sub_1000D47C8();
  __chkstk_darwin(v34, v35);
  sub_1000D47DC();
  __chkstk_darwin(v36, v37);
  sub_1000D484C();
  __chkstk_darwin(v38, v39);
  sub_1000D47F0();
  __chkstk_darwin(v40, v41);
  sub_1000D4AD4();
  v42 = sub_1000183C4(&qword_1002AFA30);
  v43 = sub_100056658(v42);
  __chkstk_darwin(v43, v44);
  sub_100099484();
  sub_1000D48F8();
  __chkstk_darwin(v45, v46);
  v48 = &v108 - v47;
  sub_1000995D4();
  sub_100018460(v49, v50, v51, v23);
  v119 = v5;
  v52 = sub_1000D48E8();
  sub_100018460(v52, v53, v54, v12);
  v120 = v4;
  v55 = sub_1000D4818();
  sub_100018460(v55, v56, v57, v12);
  v121 = v2;
  sub_1000995D4();
  sub_100018460(v58, v59, v60, v12);
  v126 = _swiftEmptyDictionarySingleton;
  v125 = &type metadata for String;
  v123 = v114;
  v124 = v10;

  v61 = sub_1000D4B84();
  sub_100145028(v61, 2);
  if (v115)
  {
    v125 = &type metadata for Int;
    v123 = 1;
    sub_100145028(&v123, 14);
  }

  v125 = &type metadata for String;
  v123 = v116;
  v124 = v117;

  sub_100145028(&v123, 15);
  v62 = v48;
  sub_100057CB8(v48, v3, &qword_1002AFA30);
  v63 = sub_1000D4AC8();
  sub_1000D4A44(v63, v64, v23);
  if (v65)
  {
    sub_10004BDE8(v3, &qword_1002AFA30);
  }

  else
  {
    v67 = v109;
    v66 = v110;
    sub_1000D4A8C();
    v68 = sub_1000D50F0();
    v69(v68);
    v70 = sub_1001F6528();
    v125 = &type metadata for String;
    v123 = v70;
    v124 = v71;
    v72 = sub_1000D4B84();
    sub_100145028(v72, 22);
    (*(v66 + 8))(v67, v23);
  }

  v73 = sub_1000D4A80();
  sub_100057CB8(v73, v74, v75);
  v76 = sub_1000D4B24();
  if (sub_10001C990(v76, v77, v12) == 1)
  {
    sub_10004BDE8(v0, &unk_1002B3450);
  }

  else
  {
    sub_1000D4A8C();
    sub_1000D4A5C();
    v78();
    sub_1001F6428();
    v80 = sub_1000D4838(v79);
    sub_100145028(v80, 30);
    sub_1000D4B6C();
    v81 = sub_100099700();
    v82(v81);
  }

  v83 = sub_1000D4D58();
  sub_100057CB8(v83, v84, v85);
  sub_1000994CC(v1);
  if (v65)
  {
    sub_10004BDE8(v1, &unk_1002B3450);
  }

  else
  {
    sub_1000D4A8C();
    v86 = sub_1000A3CB4();
    v87(v86);
    sub_1001F6428();
    v89 = sub_1000D4838(v88);
    sub_100145028(v89, 29);
    v90 = sub_1000D48C4();
    v91(v90);
  }

  v92 = v118;
  v93 = sub_1000D4D4C();
  sub_100057CB8(v93, v94, v95);
  sub_1000994CC(v92);
  if (v65)
  {
    sub_10004BDE8(v92, &unk_1002B3450);
  }

  else
  {
    sub_1000D4A8C();
    sub_1000D49EC();
    v96();
    sub_1001F6428();
    v98 = sub_1000D4838(v97);
    sub_100145028(v98, 33);
    v99 = sub_1000D4AA8();
    v100(v99);
  }

  sub_100019C0C(0, &qword_1002AC800);
  sub_1000D4A5C();
  sub_10004BDE8(v101, v102);
  sub_1000D4A5C();
  sub_10004BDE8(v103, v104);
  sub_1000D4A5C();
  sub_10004BDE8(v105, v106);
  sub_10004BDE8(v62, &qword_1002AFA30);
  sub_1000183C4(&unk_1002B3470);
  sub_100098F08();
  sub_1000D4D1C();
  v107 = sub_1001F69B8();
  sub_1000D4958(v107);
  sub_1000D5058();

  sub_1000D3FD0(_swiftEmptyArrayStorage);

  sub_100037B00();
}

void sub_1000CAB58()
{
  sub_100037C08();
  v94 = v4;
  v95 = v5;
  v6 = sub_1001F6508();
  sub_10001A278();
  __chkstk_darwin(v7, v8);
  sub_10004FE10();
  sub_100099510();
  __chkstk_darwin(v9, v10);
  sub_100099670();
  sub_100099510();
  __chkstk_darwin(v11, v12);
  sub_1000AD704();
  v13 = sub_1000D4DE4();
  sub_10001A278();
  __chkstk_darwin(v14, v15);
  sub_1000D4804();
  v16 = sub_1000183C4(&unk_1002B3450);
  v17 = sub_100056658(v16);
  __chkstk_darwin(v17, v18);
  sub_10004FE10();
  v96 = v19;
  sub_100099510();
  __chkstk_darwin(v20, v21);
  sub_1000D47C8();
  __chkstk_darwin(v22, v23);
  sub_1000D47DC();
  __chkstk_darwin(v24, v25);
  sub_1000D47F0();
  __chkstk_darwin(v26, v27);
  sub_1000D484C();
  __chkstk_darwin(v28, v29);
  sub_1000D4ED0();
  v30 = sub_1000183C4(&qword_1002AFA30);
  v31 = sub_100056658(v30);
  __chkstk_darwin(v31, v32);
  sub_100099484();
  sub_1000D48F8();
  __chkstk_darwin(v33, v34);
  sub_1000D4AD4();
  v35 = sub_1000D48E8();
  sub_100018460(v35, v36, v37, v13);
  sub_1000995D4();
  sub_100018460(v38, v39, v40, v6);
  sub_1000995D4();
  sub_100018460(v41, v42, v43, v6);
  v44 = sub_1000D4818();
  sub_100018460(v44, v45, v46, v6);
  v100 = _swiftEmptyDictionarySingleton;

  v47 = sub_1000D4B84();
  sub_100145028(v47, 2);
  v99 = &type metadata for String;
  v97 = v94;
  v98 = v95;

  sub_100145028(&v97, 9);
  v99 = &type metadata for Int;
  v97 = 1;
  sub_100145028(&v97, 14);
  v99 = &type metadata for Bool;
  LOBYTE(v97) = 0;
  sub_100145028(&v97, 17);
  v48 = sub_1000D50F0();
  sub_100057CB8(v48, v49, &qword_1002AFA30);
  v50 = sub_1000D4AC8();
  sub_1000D4A44(v50, v51, v13);
  if (v52)
  {
    sub_10004BDE8(v2, &qword_1002AFA30);
  }

  else
  {
    v53 = sub_1000D4C28();
    v54(v53);
    v55 = sub_1001F6528();
    v99 = &type metadata for String;
    v97 = v55;
    v98 = v56;
    v57 = sub_1000D4B84();
    sub_100145028(v57, 22);
    v58 = sub_1000D50B8();
    v59(v58);
  }

  v60 = sub_1000D4A80();
  sub_100057CB8(v60, v61, v62);
  v63 = sub_1000D4B24();
  if (sub_10001C990(v63, v64, v6) == 1)
  {
    sub_10004BDE8(v0, &unk_1002B3450);
  }

  else
  {
    sub_1000D4A8C();
    sub_1000D4A5C();
    v65();
    sub_1001F6428();
    v67 = sub_1000D4838(v66);
    sub_100145028(v67, 30);
    sub_1000D4B6C();
    v68 = sub_1000D4D28();
    v69(v68);
  }

  v70 = sub_1000D4D58();
  sub_100057CB8(v70, v71, v72);
  sub_1000994CC(v1);
  if (v52)
  {
    sub_10004BDE8(v1, &unk_1002B3450);
  }

  else
  {
    sub_1000D4A8C();
    v73 = sub_1000A3CB4();
    v74(v73);
    sub_1001F6428();
    v76 = sub_1000D4838(v75);
    sub_100145028(v76, 29);
    v77 = sub_1000D48C4();
    v78(v77);
  }

  v79 = sub_1000D4D4C();
  sub_100057CB8(v79, v80, v81);
  sub_1000994CC(v96);
  if (v52)
  {
    sub_10004BDE8(v96, &unk_1002B3450);
  }

  else
  {
    sub_1000D4A8C();
    sub_1000D49EC();
    v82();
    sub_1001F6428();
    v84 = sub_1000D4838(v83);
    sub_100145028(v84, 33);
    v85 = sub_1000D4AA8();
    v86(v85);
  }

  sub_100019C0C(0, &qword_1002AC800);
  sub_1000D4A5C();
  sub_10004BDE8(v87, v88);
  sub_1000D4A5C();
  sub_10004BDE8(v89, v90);
  sub_1000D4A5C();
  sub_10004BDE8(v91, v92);
  sub_10004BDE8(v3, &qword_1002AFA30);
  sub_1000183C4(&unk_1002B3470);
  sub_100098F08();
  sub_1000D4D1C();
  v93 = sub_1001F69B8();
  sub_1000D4958(v93);
  sub_1000D5058();

  sub_1000D3FD0(_swiftEmptyArrayStorage);

  sub_100037B00();
}

void sub_1000CB160()
{
  sub_100037C08();
  v151 = v6;
  v153 = v7;
  v8 = sub_1001F6508();
  sub_10001A278();
  __chkstk_darwin(v9, v10);
  sub_10004FE10();
  sub_10004FE44();
  __chkstk_darwin(v11, v12);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v13, v14);
  sub_1000AD704();
  sub_100099A14(v15);
  v16 = sub_1001F6578();
  sub_10001A278();
  v150 = v17;
  __chkstk_darwin(v18, v19);
  sub_100023510();
  v22 = v21 - v20;
  v23 = sub_1000183C4(&unk_1002B3450);
  v24 = sub_100056658(v23);
  __chkstk_darwin(v24, v25);
  sub_10004FE10();
  v157 = v26;
  sub_100099510();
  __chkstk_darwin(v27, v28);
  sub_1000D47C8();
  __chkstk_darwin(v29, v30);
  sub_1000D47DC();
  __chkstk_darwin(v31, v32);
  sub_1000D4930();
  __chkstk_darwin(v33, v34);
  sub_1000D4AE4();
  __chkstk_darwin(v35, v36);
  sub_1000D4AD4();
  v37 = sub_1000183C4(&qword_1002AFA30);
  v38 = sub_100056658(v37);
  __chkstk_darwin(v38, v39);
  sub_100099484();
  v42 = v40 - v41;
  __chkstk_darwin(v43, v44);
  sub_1000D4C7C();
  sub_1000995D4();
  sub_100018460(v45, v46, v47, v16);
  v48 = sub_1000D48E8();
  sub_100018460(v48, v49, v50, v8);
  v51 = sub_1000D48D8();
  sub_100018460(v51, v52, v53, v8);
  sub_1000995D4();
  sub_100018460(v54, v55, v56, v8);
  v159[0] = _swiftEmptyDictionarySingleton;
  v163 = &type metadata for String;
  v161 = v151;
  v162 = v153;

  v57 = sub_1000D4A74();
  sub_100145028(v57, 2);
  sub_1000D5160(&type metadata for Bool);
  sub_100057CB8(v3, v42, &qword_1002AFA30);
  v58 = sub_1000D4B0C();
  sub_1000D4A44(v58, v59, v16);
  if (v60)
  {
    sub_10004BDE8(v42, &qword_1002AFA30);
  }

  else
  {
    sub_1000D4C70();
    v61(v22, v42, v16);
    v163 = &type metadata for String;
    v161 = sub_1001F6528();
    v162 = v62;
    v63 = sub_1000D4A74();
    sub_100145028(v63, 22);
    (*(v150 + 8))(v22, v16);
  }

  sub_100057CB8(v5, v0, &unk_1002B3450);
  v64 = sub_1000D4B24();
  if (sub_10001C990(v64, v65, v8) == 1)
  {
    sub_10004BDE8(v0, &unk_1002B3450);
  }

  else
  {
    sub_1000D4A8C();
    sub_1000D4A5C();
    v66();
    sub_1001F6428();
    v163 = &type metadata for Double;
    v68 = sub_1000D4828(v67);
    sub_100145028(v68, 30);
    sub_1000D4B6C();
    v69 = sub_100099700();
    v70(v69);
  }

  sub_100057CB8(v4, v2, &unk_1002B3450);
  sub_1000994CC(v2);
  if (v60)
  {
    sub_10004BDE8(v2, &unk_1002B3450);
  }

  else
  {
    sub_1000D4A8C();
    v71 = sub_1000A3CB4();
    v72(v71);
    sub_1001F6428();
    v163 = &type metadata for Double;
    v74 = sub_1000D4828(v73);
    sub_100145028(v74, 29);
    v75 = sub_1000D48C4();
    v76(v75);
  }

  sub_100057CB8(v1, v157, &unk_1002B3450);
  sub_1000994CC(v157);
  if (v60)
  {
    sub_1000D49F8();
    sub_10004BDE8(v77, v78);
    v79 = sub_1000D498C();
    sub_10004BDE8(v79, v80);
    sub_1000D49F8();
    sub_10004BDE8(v81, v82);
    sub_10004BDE8(v3, &qword_1002AFA30);
    sub_1000D49F8();
  }

  else
  {
    sub_1000D4A8C();
    v83 = sub_1000A3CB4();
    v84(v83);
    sub_1001F6428();
    v163 = &type metadata for Double;
    v86 = sub_1000D4828(v85);
    sub_100145028(v86, 33);
    v87 = sub_1000D4AA8();
    v88(v87);
    sub_1000D49F8();
    sub_10004BDE8(v89, v90);
    v91 = sub_1000D498C();
    sub_10004BDE8(v91, v92);
    sub_1000D49F8();
    sub_10004BDE8(v93, v94);
    v95 = &qword_1002AFA30;
    v96 = v3;
  }

  sub_10004BDE8(v96, v95);
  v152 = v159[0];
  sub_1000183C4(&qword_1002B3498);
  sub_100098F08();
  v97 = sub_1001F69B8();
  sub_1000D5000();
  v98 = 0;
  v99 = 0;
  v100 = v161;
  v101 = *(v161 + 16);
  v102 = 32 * v101;
  do
  {
    v103 = v98;
    v104 = *(&off_10027ADF0 + v99 + 32);
    if (v104 == 5)
    {
      v105 = 0;
    }

    else
    {
      v105 = &type metadata for Int;
    }

    if (v104 == 5)
    {
      v106 = 0;
    }

    else
    {
      v106 = *(&off_10027ADF0 + v99 + 32);
    }

    v161 = v100;
    v107 = v101 + 1;
    if (v101 >= *(v100 + 24) >> 1)
    {
      sub_10003444C();
      v100 = v161;
    }

    *(v100 + 16) = v107;
    v108 = (v100 + v102);
    v108[4] = v106;
    v108[5] = 0;
    v102 += 32;
    v98 = 1;
    v101 = v107;
    v99 = &_mh_execute_header.magic + 1;
    v108[6] = 0;
    v108[7] = v105;
  }

  while ((v103 & 1) == 0);
  swift_isUniquelyReferenced_nonNull_native();
  v161 = v97;
  sub_1001E627C();
  sub_1000D50E4();

  sub_1000183C4(&unk_1002B3470);
  v109 = sub_1001F69B8();
  sub_1000D47A0();
  v112 = v111 & v110;
  v114 = (v113 + 63) >> 6;
  v156 = v106;

  v115 = 0;
  v154 = v114;
  while (v112)
  {
    v116 = v115;
LABEL_29:
    v117 = __clz(__rbit64(v112)) | (v116 << 6);
    v158 = *(*(v156 + 48) + v117);
    v118 = *(*(v156 + 56) + 8 * v117);
    v119 = *(v118 + 16);
    if (v119)
    {
      v155 = v109;
      v160 = _swiftEmptyArrayStorage;

      sub_10003442C(0, v119, 0);
      v120 = v160;
      v121 = v118 + 32;
      do
      {
        sub_1000D51A0(v121, v159);
        v122 = sub_1000D5094();
        sub_1000D51A0(v122, v123);
        if (v163)
        {
          sub_1000D5024(v159);
          sub_1000D4C8C();
        }

        else
        {
          sub_1000D5024(&v161);
          [objc_allocWithZone(NSNull) init];
          v124 = sub_1000D4D04();
          v125 = sub_100019C0C(v124, &qword_1002B34A8);
          v126 = sub_1000D4C08(v125);
          sub_1000D5024(v126);
        }

        v160 = v120;
        v128 = v120[2];
        v127 = v120[3];
        if (v128 >= v127 >> 1)
        {
          sub_10005669C(v127);
          sub_1000D50AC();
          sub_10003442C(v129, v130, v131);
          v120 = v160;
        }

        v120[2] = v128 + 1;
        sub_1000D51B8(&v120[4 * v128]);
        v121 += 32;
        --v119;
      }

      while (v119);
      v109 = v155;
    }

    else
    {

      v120 = _swiftEmptyArrayStorage;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v161 = v109;
    v133 = sub_1001110F0(v158);
    v135 = *(v109 + 16);
    v136 = (v134 & 1) == 0;
    v137 = v135 + v136;
    if (__OFADD__(v135, v136))
    {
      goto LABEL_49;
    }

    v138 = v133;
    v139 = v134;
    sub_1000183C4(&unk_1002B34B0);
    if (sub_1001F7A98(isUniquelyReferenced_nonNull_native, v137))
    {
      v140 = sub_1001110F0(v158);
      if ((v139 & 1) != (v141 & 1))
      {
        goto LABEL_51;
      }

      v138 = v140;
    }

    v112 &= v112 - 1;
    v142 = v161;
    if (v139)
    {
      *(*(v161 + 56) + 8 * v138) = v120;

      v115 = v116;
      v114 = v154;
      v109 = v142;
    }

    else
    {
      sub_1000D48B4(v161 + 8 * (v138 >> 6));
      *(v142[6] + v138) = v158;
      *(v142[7] + 8 * v138) = v120;

      v143 = v142[2];
      v144 = __OFADD__(v143, 1);
      v145 = v143 + 1;
      if (v144)
      {
        goto LABEL_50;
      }

      v109 = v142;
      v142[2] = v145;
      v115 = v116;
      v114 = v154;
    }
  }

  while (1)
  {
    v116 = v115 + 1;
    if (__OFADD__(v115, 1))
    {
      break;
    }

    if (v116 >= v114)
    {

      sub_100019C0C(0, &qword_1002AC800);
      v146 = sub_1001C7504(v152, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v109);

      sub_1000D4F30();
      sub_1000D4168(v147, v148, v149);

      sub_100037B00();
      return;
    }

    v112 = *(&v161 + v116);
    ++v115;
    if (v112)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  sub_1001F7FC8();
  __break(1u);
}

void sub_1000CBB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100037C08();
  a19 = v26;
  a20 = v27;
  v177 = v28;
  v30 = sub_1000D4F18(v29, &a9);
  sub_10001A278();
  v181 = v31;
  __chkstk_darwin(v32, v33);
  sub_10004FE10();
  sub_10004FE44();
  __chkstk_darwin(v34, v35);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v36, v37);
  sub_1000AD704();
  sub_100099A14(v38);
  v39 = sub_1001F6578();
  sub_10001A278();
  *(&v172 + 1) = v40;
  __chkstk_darwin(v41, v42);
  sub_1000D4804();
  sub_100099A14(v43);
  v44 = sub_1000183C4(&unk_1002B3450);
  v45 = sub_100056658(v44);
  __chkstk_darwin(v45, v46);
  sub_10004FE10();
  sub_10004FE44();
  __chkstk_darwin(v47, v48);
  sub_1000D491C();
  __chkstk_darwin(v49, v50);
  sub_1000D47C8();
  __chkstk_darwin(v51, v52);
  sub_1000D4930();
  __chkstk_darwin(v53, v54);
  sub_100099918();
  __chkstk_darwin(v55, v56);
  sub_1000D4EC0();
  v57 = sub_1000183C4(&qword_1002AFA30);
  v58 = sub_100056658(v57);
  __chkstk_darwin(v58, v59);
  sub_100099484();
  sub_1000D4AE4();
  __chkstk_darwin(v60, v61);
  sub_1000D4C7C();
  v62 = *(v20 + OBJC_IVAR____TtC25ASOctaneSupportXPCService15DatabaseSession_connection);
  sub_1000183C4(&unk_1002B3460);
  inited = swift_initStackObject();
  sub_1000D4DFC(inited, &a10, xmmword_100208ED0);
  sub_1000995D4();
  sub_100018460(v64, v65, v66, v39);
  v67 = sub_1000D4818();
  sub_100018460(v67, v68, v69, v30);
  v70 = sub_1000D48E8();
  sub_100018460(v70, v71, v72, v30);
  sub_1000995D4();
  sub_100018460(v73, v74, v75, v30);
  v190[0] = _swiftEmptyDictionarySingleton;
  if (v177)
  {
    v186 = type metadata for String;
    *&v184 = v174;
    *(&v184 + 1) = v177;
    v76 = v62;

    sub_100145028(&v184, 2);
  }

  else
  {
    v77 = v62;
  }

  sub_1000B3DE0();
  v186 = type metadata for String;
  *&v184 = 0xD000000000000015;
  *(&v184 + 1) = v78;
  sub_100145028(&v184, 16);
  v186 = &type metadata for Int;
  *&v184 = 1;
  sub_100145028(&v184, 14);
  v79 = sub_1000D4F60();
  sub_100057CB8(v79, v23, v80);
  sub_1000994CC(v23);
  if (v81)
  {
    sub_10004BDE8(v23, &qword_1002AFA30);
  }

  else
  {
    sub_1000D4C70();
    v82(v172, v23, v39);
    v83 = sub_1001F6528();
    v186 = type metadata for String;
    *&v184 = v83;
    *(&v184 + 1) = v84;
    sub_100145028(&v184, 22);
    v85 = sub_100099700();
    v86(v85);
  }

  sub_100057CB8(v24, v21, &unk_1002B3450);
  if (sub_10001C990(v21, 1, v30) == 1)
  {
    sub_10004BDE8(v21, &unk_1002B3450);
  }

  else
  {
    sub_1000D4C70();
    v87(v173, v21, v30);
    sub_1001F6428();
    v89 = sub_1000D4CC0(v88);
    sub_100145028(v89, 30);
    v90 = sub_1000D50FC();
    v91(v90);
  }

  sub_100057CB8(v25, v22, &unk_1002B3450);
  sub_1000D49CC(v22);
  if (v81)
  {
    sub_10004BDE8(v22, &unk_1002B3450);
  }

  else
  {
    sub_1000D4C70();
    v92(*(&v173 + 1), v22, v30);
    sub_1001F6428();
    v94 = sub_1000D4CC0(v93);
    sub_100145028(v94, 29);
    v95 = sub_1000D50FC();
    v96(v95);
  }

  v97 = sub_1000D4CF8();
  sub_100057CB8(v97, v180, v98);
  sub_1000D49CC(v180);
  v176 = v62;
  if (v81)
  {
    sub_1000D4CF8();
    sub_1000D49EC();
    sub_10004BDE8(v99, v100);
    sub_1000D49EC();
    sub_10004BDE8(v101, v102);
    sub_1000D49EC();
    sub_10004BDE8(v103, v104);
    v105 = sub_1000D4F60();
    sub_10004BDE8(v105, v106);
    sub_1000D49EC();
  }

  else
  {
    sub_1000D4C70();
    v107 = sub_1000D4B3C();
    v108(v107, v180, v30);
    sub_1001F6428();
    v110 = sub_1000D4CC0(v109);
    sub_100145028(v110, 33);
    (*(v181 + 8))(v21, v30);
    sub_1000D4CF8();
    sub_1000D49EC();
    sub_10004BDE8(v111, v112);
    sub_1000D49EC();
    sub_10004BDE8(v113, v114);
    sub_1000D49EC();
    sub_10004BDE8(v115, v116);
    v117 = sub_1000D4F60();
  }

  sub_10004BDE8(v117, v118);
  v178 = v190[0];
  sub_1000183C4(&qword_1002B3498);
  sub_100098F08();
  sub_100062888();
  v119 = sub_1001F69B8();
  sub_10006EA78(&off_10027AFA8, v120, v121, v122, v123, v124, v125, v126, v171, v172, v173);
  swift_isUniquelyReferenced_nonNull_native();
  *&v184 = v119;
  v127 = &v184;
  sub_1001E627C();

  sub_1000183C4(&unk_1002B3470);
  sub_100062888();
  v182 = sub_1001F69B8();
  sub_1000D47A0();
  v130 = v129 & v128;
  v132 = (v131 + 63) >> 6;
  sub_1000D4D40(&a15);

  v133 = 0;
  v179 = v132;
  if (v130)
  {
    while (1)
    {
      v134 = v133;
LABEL_21:
      sub_1000D4C60();
      v183 = v135;
      v138 = *(v137 + 8 * v136);
      v139 = *(v138 + 16);
      if (v139)
      {
        v191[0] = _swiftEmptyArrayStorage;

        v127 = v191;
        sub_10003442C(0, v139, 0);
        v140 = v191[0];
        v141 = v138 + 32;
        do
        {
          sub_1000D4FC4(v141, v190);
          sub_1000D4FC4(v190, &v184);
          if (v186)
          {
            sub_1000D4E78(v190);
            sub_10003708C(&v184, v189);
            sub_10003708C(v189, &v184);
          }

          else
          {
            sub_1000D4E78(&v184);
            [objc_allocWithZone(NSNull) init];
            v142 = sub_1000D4D04();
            v186 = sub_100019C0C(v142, &qword_1002B34A8);
            *&v184 = v191;
            sub_1000D4E78(v190);
          }

          v191[0] = v140;
          v144 = v140[2];
          v143 = v140[3];
          if (v144 >= v143 >> 1)
          {
            v145 = sub_10005669C(v143);
            v127 = v191;
            sub_10003442C(v145, v144 + 1, 1);
            v140 = v191[0];
          }

          v140[2] = v144 + 1;
          sub_10003708C(&v184, &v140[4 * v144 + 4]);
          v141 += 32;
          --v139;
        }

        while (v139);
      }

      else
      {

        v140 = _swiftEmptyArrayStorage;
      }

      v146 = sub_1000D51D0();
      *&v184 = v127;
      sub_1001110F0(v183);
      sub_1000D499C();
      v151 = v149 + v150;
      if (__OFADD__(v149, v150))
      {
        break;
      }

      v152 = v147;
      v153 = v148;
      sub_1000183C4(&unk_1002B34B0);
      if (sub_1001F7A98(v146, v151))
      {
        v154 = sub_1001110F0(v183);
        if ((v153 & 1) != (v155 & 1))
        {
          goto LABEL_47;
        }

        v152 = v154;
      }

      v130 &= v130 - 1;
      v182 = v184;
      if (v153)
      {
        *(*(v184 + 56) + 8 * v152) = v140;
      }

      else
      {
        sub_1000D50D8();
        sub_1000D48B4(v156);
        sub_1000D4E90(*(v157 + 48));
        *(v158 + 8 * v152) = v140;

        sub_1000D4C18();
        if (v161)
        {
          goto LABEL_45;
        }

        *(v160 + 16) = v159;
      }

      v133 = v134;
      v127 = &v184;
      v132 = v179;
      if (!v130)
      {
        goto LABEL_18;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    sub_1001F7FC8();
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_18:
      v134 = v133 + 1;
      if (__OFADD__(v133, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v134 >= v132)
      {
        break;
      }

      v130 = *(&v184 + v134);
      ++v133;
      if (v130)
      {
        goto LABEL_21;
      }
    }

    type metadata accessor for Transaction();
    sub_100019C0C(0, &qword_1002AC800);
    v162 = sub_1001C7504(v178, _swiftEmptyArrayStorage, &off_10027AF80, v182);

    *(v175 + 32) = v162;
    sub_100019C0C(0, &qword_1002B3480);
    v186 = type metadata for String;
    *&v184 = 0x6F6C6E776F646552;
    *(&v184 + 1) = 0xEA00000000006461;
    *(v175 + 40) = sub_1001C76B0(0, &v184, 1u);
    sub_100019C0C(0, &qword_1002B3488);
    v163 = sub_10007BB78(v175);
    sub_10006E930(v163);
    sub_1000D5058();
    v164 = sub_1001C7770(v175);
    sub_1000D4D58();
    sub_1000C6AC4();
    v166 = v165;

    v190[0] = sub_1001F69B8();
    v167 = swift_allocObject();
    *(v167 + 16) = v190;
    v168 = sub_1000D4F90();
    *(v168 + 16) = sub_1000D4758;
    *(v168 + 24) = v167;
    v187 = sub_1000D479C;
    v188 = v168;
    *&v184 = _NSConcreteStackBlock;
    *(&v184 + 1) = 1107296256;
    v185 = sub_1001CFE54;
    v186 = &unk_100287C50;
    v169 = _Block_copy(&v184);

    [v166 enumerateMemoryEntitiesUsingBlock:v169];
    _Block_release(v169);
    LOBYTE(v169) = swift_isEscapingClosureAtFileLocation();

    if (v169)
    {
      goto LABEL_46;
    }

    sub_10007BC0C(v170);

    sub_100037B00();
  }
}