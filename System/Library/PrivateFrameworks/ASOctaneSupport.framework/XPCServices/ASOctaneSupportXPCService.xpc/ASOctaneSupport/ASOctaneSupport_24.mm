uint64_t sub_1001C59D8()
{

  return sub_10004BD98(v0 + 16, v1);
}

void sub_1001C59F4(uint64_t a1@<X8>)
{
  *(v1 + 16) = a1;
  v7 = (v1 + 32 * v5);
  v7[4] = v6;
  v7[5] = v2;
  v7[6] = v3;
  v7[7] = v4;
}

uint64_t sub_1001C5A08()
{

  return swift_beginAccess();
}

unsigned __int8 *sub_1001C5A28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1001F5FE8();
  v70 = *(v4 - 8);
  __chkstk_darwin(v4, v5);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000183C4(&qword_1002B70B0);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v15 = &v57 - v14;
  v80 = 1;
  v16 = *(a1 + 40);
  v63 = *(a1 + 48);

  sub_1001F6018();

  sub_1001C6118(v15, v11);
  v17 = sub_1001F6028();
  v18 = sub_10001C990(v11, 1, v17);
  v64 = v16;
  v65 = a1;
  if (v18 == 1)
  {
    sub_1001C6188(v11);
    goto LABEL_104;
  }

  v19 = sub_1001F5FF8();
  result = (*(*(v17 - 8) + 8))(v11, v17);
  if (!v19)
  {
LABEL_104:
    v21 = 0;
    v55 = 0;
    v56 = 0;
LABEL_105:

    sub_1000E32F8(v63, v78);
    sub_1000402B8(v65);
    sub_1001C6188(v15);
    v72[0] = v21;
    LOBYTE(v72[1]) = v80;
    *(&v72[1] + 1) = *v79;
    HIDWORD(v72[1]) = *&v79[3];
    v72[2] = v55;
    v72[3] = v56;
    memcpy(&v72[4], v78, 0x139uLL);
    v73 = v21;
    LOBYTE(v74) = v80;
    *(&v74 + 1) = *v79;
    HIDWORD(v74) = *&v79[3];
    v75 = v55;
    v76 = v56;
    memcpy(v77, v78, sizeof(v77));
    sub_1001C61F0(v72, &v71);
    sub_1001C6228(&v73);
    return memcpy(a2, v72, 0x159uLL);
  }

  v69 = *(v19 + 16);
  if (!v69)
  {

    goto LABEL_104;
  }

  v57 = v15;
  v58 = a2;
  v21 = 0;
  v59 = 0;
  v60 = 0;
  v22 = 0;
  v68 = v19 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
  v66 = v70 + 8;
  v67 = v70 + 16;
  v61 = &v73 + 1;
  v62 = 0;
  while (v22 < *(v19 + 16))
  {
    (*(v70 + 16))(v7, v68 + *(v70 + 72) * v22, v4);
    v23 = sub_1001F5FD8();
    if (v24)
    {
      v25 = v23;
      v26 = v24;
      v28 = sub_1001F5FC8();
      v29 = v27;
      v30 = v28 == 0x746361736E617274 && v27 == 0xED000064496E6F69;
      if (v30 || (sub_1001F7EA8() & 1) != 0)
      {

        v31 = HIBYTE(v26) & 0xF;
        v32 = v25 & 0xFFFFFFFFFFFFLL;
        if ((v26 & 0x2000000000000000) != 0)
        {
          v33 = HIBYTE(v26) & 0xF;
        }

        else
        {
          v33 = v25 & 0xFFFFFFFFFFFFLL;
        }

        if (v33)
        {
          if ((v26 & 0x1000000000000000) != 0)
          {
            LOBYTE(v72[0]) = 0;
            v35 = sub_1001EE478(v25, v26, 10);
            v49 = v54;
            goto LABEL_94;
          }

          if ((v26 & 0x2000000000000000) != 0)
          {
            v73 = v25;
            v74 = v26 & 0xFFFFFFFFFFFFFFLL;
            if (v25 == 43)
            {
              if (!v31)
              {
                goto LABEL_108;
              }

              if (v31 != 1)
              {
                v35 = 0;
                while (1)
                {
                  sub_1001C6390();
                  if (!v30 && v36)
                  {
                    break;
                  }

                  sub_1001C6380();
                  if (!v30)
                  {
                    break;
                  }

                  sub_1001C63A0();
                  if (v36)
                  {
                    break;
                  }

                  sub_10002727C();
                  if (v30)
                  {
                    goto LABEL_93;
                  }
                }
              }
            }

            else if (v25 == 45)
            {
              if (!v31)
              {
                goto LABEL_110;
              }

              if (v31 != 1)
              {
                v35 = 0;
                while (1)
                {
                  sub_1001C6390();
                  if (!v30 && v36)
                  {
                    break;
                  }

                  sub_1001C6380();
                  if (!v30)
                  {
                    break;
                  }

                  v36 = 10 * v35 >= v41;
                  v35 = 10 * v35 - v41;
                  if (!v36)
                  {
                    break;
                  }

                  sub_10002727C();
                  if (v30)
                  {
                    goto LABEL_93;
                  }
                }
              }
            }

            else if (v31)
            {
              v35 = 0;
              while (1)
              {
                sub_1001C6390();
                if (!v30 && v36)
                {
                  break;
                }

                sub_1001C6380();
                if (!v30)
                {
                  break;
                }

                sub_1001C63A0();
                if (v36)
                {
                  break;
                }

                sub_10002727C();
                if (v30)
                {
                  goto LABEL_93;
                }
              }
            }
          }

          else
          {
            if ((v25 & 0x1000000000000000) != 0)
            {
              result = ((v26 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              result = sub_1001F7858();
            }

            v34 = *result;
            if (v34 == 43)
            {
              if (v32 < 1)
              {
                goto LABEL_109;
              }

              if (v32 != 1)
              {
                v35 = 0;
                if (!result)
                {
                  goto LABEL_82;
                }

                while (1)
                {
                  sub_1001C6390();
                  if (!v30 && v36)
                  {
                    break;
                  }

                  sub_1001C6380();
                  if (!v30)
                  {
                    break;
                  }

                  sub_1001C63A0();
                  if (v36)
                  {
                    break;
                  }

                  sub_10002727C();
                  if (v30)
                  {
                    goto LABEL_93;
                  }
                }
              }
            }

            else if (v34 == 45)
            {
              if (v32 < 1)
              {
                goto LABEL_107;
              }

              if (v32 != 1)
              {
                v35 = 0;
                if (result)
                {
                  while (1)
                  {
                    sub_1001C6390();
                    if (!v30 && v36)
                    {
                      goto LABEL_92;
                    }

                    sub_1001C6380();
                    if (!v30)
                    {
                      goto LABEL_92;
                    }

                    v36 = 10 * v35 >= v37;
                    v35 = 10 * v35 - v37;
                    if (!v36)
                    {
                      goto LABEL_92;
                    }

                    sub_10002727C();
                    if (v30)
                    {
                      goto LABEL_93;
                    }
                  }
                }

LABEL_82:
                v38 = 0;
LABEL_93:
                LOBYTE(v72[0]) = v38;
                v49 = v38;
LABEL_94:
                v50 = sub_1001C636C();
                v51(v50);

                if (v49)
                {
                  v21 = 0;
                }

                else
                {
                  v21 = v35;
                }

LABEL_97:
                v80 = v49 & 1;
                goto LABEL_98;
              }
            }

            else
            {
              if (!v32)
              {
                goto LABEL_92;
              }

              v35 = 0;
              if (!result)
              {
                goto LABEL_82;
              }

              while (1)
              {
                v48 = *result - 48;
                if (v48 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v35, 0xAuLL))
                {
                  break;
                }

                v36 = __CFADD__(10 * v35, v48);
                v35 = 10 * v35 + v48;
                if (v36)
                {
                  break;
                }

                ++result;
                if (!--v32)
                {
                  goto LABEL_82;
                }
              }
            }
          }

LABEL_92:
          v35 = 0;
          v38 = 1;
          goto LABEL_93;
        }

        v52 = sub_1001C636C();
        v53(v52);

        v21 = 0;
        v49 = 1;
        goto LABEL_97;
      }

      if (v28 == 1684632935 && v29 == 0xE400000000000000)
      {

        v46 = sub_1001C636C();
        v47(v46);
LABEL_55:

        v59 = v26;
        v60 = v25;
        v62 = v26;
        goto LABEL_98;
      }

      v43 = sub_1001F7EA8();

      v44 = sub_1001C636C();
      v45(v44);
      if (v43)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v39 = sub_1001C636C();
      result = v40(v39);
    }

LABEL_98:
    if (++v22 == v69)
    {

      v15 = v57;
      a2 = v58;
      v56 = v59;
      v55 = v60;
      goto LABEL_105;
    }
  }

  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
  return result;
}

uint64_t sub_1001C6118(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002B70B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C6188(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002B70B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001C6258(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 345))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001C62AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 344) = 0;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 345) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 345) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_1001C63B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1001F6198();
  sub_1001C6EB8();
  sub_1001F6188();
  sub_1001C6E88();
  sub_1001C6C9C();
  sub_1001F6178();
  sub_10003A36C(a3, a4);
  v4 = sub_100075518();
  sub_100040C70(v4, v5);
  v6 = sub_100075518();
  sub_1001C6EA0(v6, v7, v8, v9);

  v10 = sub_100075518();
  sub_10003A380(v10, v11);
  return sub_1001C6E20();
}

double sub_1001C64A0(__int128 *a1)
{
  v13 = *(a1 + 4);
  v1 = *a1;
  v12 = a1[1];
  v11 = v1;
  sub_1001F6198();
  sub_1001C6EB8();
  sub_1001F6188();
  sub_1001C6E88();
  sub_1001C6CF0();
  sub_1001F6178();
  sub_10001C838(&v11);
  sub_10001C838(&v12);
  sub_1001C6D44(&v13);
  v2 = sub_100075518();
  sub_100040C70(v2, v3);
  v4 = sub_100075518();
  sub_1001C6EA0(v4, v5, v6, v7);

  v8 = sub_100075518();
  sub_10003A380(v8, v9);
  return sub_1001C6E20();
}

double sub_1001C65C0@<D0>(uint64_t a1@<X8>)
{
  sub_1001F6198();
  swift_allocObject();
  sub_1001F6188();
  sub_1001F6168();
  sub_1001C6C48();
  v2 = sub_1001F6178();
  v4 = v3;

  sub_100040C70(v2, v4);
  sub_1000B77D0(v2, v4, 0xD000000000000017, 0x80000001002227B0, &v10);

  sub_10003A380(v2, v4);
  v5 = v11;
  v6 = v13;
  v7 = v14;
  v8 = v15;
  *a1 = v10;
  *(a1 + 16) = v5;
  result = v12;
  *(a1 + 24) = v12;
  *(a1 + 32) = v6;
  *(a1 + 36) = v7;
  *(a1 + 38) = v8;
  return result;
}

double sub_1001C673C(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1001F6198();
  sub_1001C6EB8();
  sub_1001F6188();
  sub_1001C6E88();
  a2(0);
  sub_1001C6DAC(a3, a4);
  v7 = sub_1001F6178();
  v9 = v8;

  sub_100040C70(v7, v9);
  sub_1001C6EA0(v7, v9, 0x80000001002227B0, v11);

  sub_10003A380(v7, v9);
  return sub_1001C6E20();
}

double sub_1001C6888@<D0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1001F6198();
  sub_1001C6EB8();
  sub_1001F6188();
  sub_1001C6E88();
  sub_1000581BC();
  sub_1001F6178();
  memcpy(v16, __dst, 0xD1uLL);
  sub_100057E48(v16);
  v3 = sub_100075518();
  sub_100040C70(v3, v4);
  v5 = sub_100075518();
  sub_1001C6EA0(v5, v6, v7, v8);

  v9 = sub_100075518();
  sub_10003A380(v9, v10);
  v11 = v19;
  result = v20;
  v13 = v21;
  v14 = v22;
  v15 = v23;
  *a2 = v18;
  *(a2 + 16) = v11;
  *(a2 + 24) = result;
  *(a2 + 32) = v13;
  *(a2 + 36) = v14;
  *(a2 + 38) = v15;
  return result;
}

__n128 sub_1001C69CC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1000593F4(a1, &v19);
  sub_1001C5A28(a1, &v19);
  if (v20)
  {
    type metadata accessor for InAppTransactionDoneResponse();
    v6 = sub_100042160(v21, v22 & 1, _swiftEmptyArrayStorage);
    sub_1001C6228(&v19);
    sub_1001C6E54();
    sub_1001C673C(v6, v7, v8, type metadata accessor for InAppTransactionDoneResponse);
    sub_1001C6E00();
  }

  else
  {
    sub_10001AE68((v3 + 88), *(v3 + 112));
    v9 = sub_10008E790();
    if (!v9)
    {
      sub_1001C6228(&v19);
      sub_1001C65C0(v23);
      sub_1001C6E00();
      v14 = 25;
      goto LABEL_9;
    }

    v10 = v9;
    v3 = *sub_10001AE68((v3 + 88), *(v3 + 112));
    sub_1000C2440(1);
    if (sub_10008EA08(v10, 0) != 4)
    {
      sub_1001C6228(&v19);
      sub_1001C65C0(v23);
      sub_1001C6E00();

      v14 = 21;
      goto LABEL_9;
    }

    type metadata accessor for InAppTransactionDoneResponse();
    sub_100042160(v21, v22 & 1, _swiftEmptyArrayStorage);
    sub_1001C6228(&v19);

    sub_1001C6E54();
    sub_1001C673C(v11, v12, v13, type metadata accessor for InAppTransactionDoneResponse);
    sub_1001C6E00();
  }

  v14 = 3;
LABEL_9:
  type metadata accessor for HTTPResponseHead._Storage();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = v14;
  *(v15 + 40) = 65537;
  *a2 = v15;
  *(a2 + 8) = _swiftEmptyArrayStorage;
  *(a2 + 16) = 2;
  result = v17;
  *(a2 + 24) = v18;
  *(a2 + 40) = v17;
  *(a2 + 62) = BYTE6(v3);
  *(a2 + 60) = WORD2(v3);
  *(a2 + 56) = v3;
  return result;
}

unint64_t sub_1001C6C48()
{
  result = qword_1002BBF90;
  if (!qword_1002BBF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBF90);
  }

  return result;
}

unint64_t sub_1001C6C9C()
{
  result = qword_1002BBFA0;
  if (!qword_1002BBFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBFA0);
  }

  return result;
}

unint64_t sub_1001C6CF0()
{
  result = qword_1002BBFB0;
  if (!qword_1002BBFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBFB0);
  }

  return result;
}

uint64_t sub_1001C6D44(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002BAA20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001C6DAC(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1001C6E20()
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 36);
  v5 = *(v1 + 38);
  *v0 = *v1;
  *(v0 + 16) = v2;
  result = *(v1 + 24);
  *(v0 + 24) = result;
  *(v0 + 32) = v3;
  *(v0 + 36) = v4;
  *(v0 + 38) = v5;
  return result;
}

double sub_1001C6E6C@<D0>(uint64_t a1@<X8>)
{

  return sub_1000B738C(0, 0xE000000000000000, 6, a1);
}

uint64_t sub_1001C6E88()
{

  return sub_1001F6168();
}

double sub_1001C6EA0@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{

  return sub_1000B77D0(a1, a2, 0xD000000000000017, a3, a4);
}

uint64_t sub_1001C6EB8()
{

  return swift_allocObject();
}

void *sub_1001C6ED0(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v30 = v1;
  if (v4)
  {
    while (1)
    {
      v7 = v6;
LABEL_8:
      v8 = __clz(__rbit64(v4)) | (v7 << 6);
      v9 = *(*(a1 + 48) + v8);
      sub_10002F9B0(*(a1 + 56) + 32 * v8, &v35);
      v34[0] = v9;
      sub_100057CB8(v34, v32, &qword_1002B6D70);
      v10 = v32[0];
      sub_10003708C((v32 + 8), v33);
      v11 = sub_10013EBCC(v10);
      v13 = v12;
      sub_10002F9B0(v33, v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = sub_10011108C();
      v17 = _swiftEmptyDictionarySingleton[2];
      v18 = (v16 & 1) == 0;
      v19 = v17 + v18;
      if (__OFADD__(v17, v18))
      {
        break;
      }

      v20 = v15;
      v21 = v16;
      sub_1000183C4(&unk_1002BCC50);
      if (sub_1001F7A98(isUniquelyReferenced_nonNull_native, v19))
      {
        v22 = sub_10011108C();
        if ((v21 & 1) != (v23 & 1))
        {
          goto LABEL_22;
        }

        v20 = v22;
      }

      v4 &= v4 - 1;
      if (v21)
      {

        v24 = (_swiftEmptyDictionarySingleton[7] + 32 * v20);
        sub_100019CCC(v24);
        sub_10003708C(v32, v24);
        sub_100019CCC(v33);
        sub_10013F8CC(v34);
      }

      else
      {
        _swiftEmptyDictionarySingleton[(v20 >> 6) + 8] |= 1 << v20;
        v25 = (_swiftEmptyDictionarySingleton[6] + 16 * v20);
        *v25 = v11;
        v25[1] = v13;
        sub_10003708C(v32, (_swiftEmptyDictionarySingleton[7] + 32 * v20));
        sub_100019CCC(v33);
        sub_10013F8CC(v34);
        v26 = _swiftEmptyDictionarySingleton[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_21;
        }

        _swiftEmptyDictionarySingleton[2] = v28;
      }

      v6 = v7;
      v1 = v30;
      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v5)
      {

        return _swiftEmptyDictionarySingleton;
      }

      v4 = *(v1 + 8 * v7);
      ++v6;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1001F7FC8();
  __break(1u);
  return result;
}

void *sub_1001C7160(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v28 = v5;
  v29 = v1;
  if (v4)
  {
    while (1)
    {
      v7 = v6;
LABEL_8:
      v8 = __clz(__rbit64(v4)) | (v7 << 6);
      v9 = *(*(a1 + 56) + 8 * v8);
      v10 = sub_10013EBCC(*(*(a1 + 48) + v8));
      v12 = v11;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = sub_10011108C();
      v16 = _swiftEmptyDictionarySingleton[2];
      v17 = (v15 & 1) == 0;
      v18 = v16 + v17;
      if (__OFADD__(v16, v17))
      {
        break;
      }

      v19 = v14;
      v20 = v15;
      sub_1000183C4(&qword_1002BBFC0);
      if (sub_1001F7A98(isUniquelyReferenced_nonNull_native, v18))
      {
        v21 = sub_10011108C();
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_22;
        }

        v19 = v21;
      }

      v4 &= v4 - 1;
      if (v20)
      {

        *(_swiftEmptyDictionarySingleton[7] + 8 * v19) = v9;
      }

      else
      {
        _swiftEmptyDictionarySingleton[(v19 >> 6) + 8] |= 1 << v19;
        v23 = (_swiftEmptyDictionarySingleton[6] + 16 * v19);
        *v23 = v10;
        v23[1] = v12;
        *(_swiftEmptyDictionarySingleton[7] + 8 * v19) = v9;

        v24 = _swiftEmptyDictionarySingleton[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_21;
        }

        _swiftEmptyDictionarySingleton[2] = v26;
      }

      v6 = v7;
      v5 = v28;
      v1 = v29;
      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v5)
      {

        return _swiftEmptyDictionarySingleton;
      }

      v4 = *(v1 + 8 * v7);
      ++v6;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1001F7FC8();
  __break(1u);
  return result;
}

void sub_1001C738C(uint64_t a1, char a2)
{
  sub_100057CB8(a1, v11, &qword_1002B34A0);
  v4 = v12;
  if (v12)
  {
    v5 = sub_10001AE68(v11, v12);
    v6 = *(v4 - 8);
    __chkstk_darwin(v5, v5);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_1001F7E98();
    (*(v6 + 8))(v8, v4);
    sub_100019CCC(v11);
  }

  else
  {
    v9 = 0;
  }

  sub_10013EBCC(a2);
  v10 = sub_1001F6B48();

  [v2 setValue:v9 forProperty:v10];
  swift_unknownObjectRelease();
}

uint64_t sub_1001C7504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1001C6ED0(a1);
  v8 = *(a2 + 16);
  if (v8)
  {
    v32 = a4;
    sub_1001C7F60();
    v9 = (a2 + 32);
    do
    {
      v10 = *v9++;
      v11 = sub_10013EBCC(v10);
      v13 = v12;
      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        v17 = sub_10005669C(v14);
        sub_1000375CC(v17, v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[2 * v15];
      v16[4] = v11;
      v16[5] = v13;
      --v8;
    }

    while (v8);
    a4 = v32;
  }

  v18 = *(a3 + 16);
  if (v18)
  {
    sub_1001C7F60();
    v19 = (a3 + 32);
    do
    {
      v20 = *v19++;
      v21 = sub_10013EBCC(v20);
      v23 = v22;
      v25 = _swiftEmptyArrayStorage[2];
      v24 = _swiftEmptyArrayStorage[3];
      if (v25 >= v24 >> 1)
      {
        v27 = sub_10005669C(v24);
        sub_1000375CC(v27, v25 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v25 + 1;
      v26 = &_swiftEmptyArrayStorage[2 * v25];
      v26[4] = v21;
      v26[5] = v23;
      --v18;
    }

    while (v18);
  }

  v28 = sub_1001C7160(a4);
  sub_1001C7874(v7, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v28);
  v30 = v29;

  return v30;
}

id sub_1001C76B0(char a1, void *a2, unsigned __int8 a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_10013EBCC(a1);
  v7 = sub_1001F6B48();

  sub_10001AE68(a2, a2[3]);
  v8 = [ObjCClassFromMetadata predicateWithProperty:v7 value:sub_1001F7E98() comparisonType:a3 + 1];

  swift_unknownObjectRelease();
  sub_100019CCC(a2);
  return v8;
}

id sub_1001C777C(uint64_t a1, SEL *a2)
{
  isa = sub_1001F6F18().super.isa;

  v4 = [swift_getObjCClassFromMetadata() *a2];

  return v4;
}

id sub_1001C77F8(char a1, SEL *a2)
{
  v4 = objc_opt_self();
  sub_10013EBCC(a1);
  v5 = sub_1001F6B48();

  v6 = [v4 *a2];

  return v6;
}

void sub_1001C7874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = _swiftEmptyArrayStorage;
  v82 = _swiftEmptyArrayStorage;
  v6 = a1 + 64;
  sub_1001C7F38();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;

  v12 = 0;
  if (!v9)
  {
    goto LABEL_3;
  }

  while (1)
  {
    v13 = v12;
LABEL_7:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v13 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    sub_10002F9B0(*(a1 + 56) + 32 * v15, v76);
    *&v77 = v18;
    *(&v77 + 1) = v17;
    sub_10003708C(v76, &v78);

LABEL_8:
    v80 = v77;
    v81[0] = v78;
    v81[1] = v79;
    v19 = *(&v77 + 1);
    if (!*(&v77 + 1))
    {
      break;
    }

    v20 = v80;
    sub_100019C0C(0, &qword_1002B3480);
    sub_10003708C(v81, &v77);
    v21 = sub_1001C7EA0(v20, v19, &v77);
    sub_1001F6F08();
    sub_1001C7F54();
    v24 = *(v22 + 16);
    v23 = *(v22 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_10005669C(v23);
      sub_1001F6F58();
    }

    sub_1001F6F98();

    v5 = v82;
    if (!v9)
    {
LABEL_3:
      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v13 >= v11)
        {
          v9 = 0;
          v78 = 0u;
          v79 = 0u;
          v77 = 0u;
          goto LABEL_8;
        }

        v9 = *(v6 + 8 * v13);
        ++v12;
        if (v9)
        {
          v12 = v13;
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_45;
    }
  }

  v25 = a4;
  v26 = *(a2 + 16);
  if (v26)
  {
    v27 = objc_opt_self();
    v28 = a2 + 40;
    do
    {

      v29 = sub_1001F6B48();

      v30 = [v27 isNullPredicateWithProperty:v29];

      v31 = v30;
      sub_1001F6F08();
      sub_1001C7F54();
      v34 = *(v32 + 16);
      v33 = *(v32 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_10005669C(v33);
        sub_1001F6F58();
      }

      sub_1001F6F98();

      v28 += 16;
      --v26;
    }

    while (v26);
    v5 = v82;
  }

  v35 = *(a3 + 16);
  if (v35)
  {
    v36 = objc_opt_self();
    v37 = a3 + 40;
    do
    {

      v38 = sub_1001F6B48();

      v39 = [v36 isNotNullPredicateWithProperty:v38];

      v40 = v39;
      sub_1001F6F08();
      sub_1001C7F54();
      v43 = *(v41 + 16);
      v42 = *(v41 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_10005669C(v42);
        sub_1001F6F58();
      }

      sub_1001F6F98();

      v37 += 16;
      --v35;
    }

    while (v35);
    v5 = v82;
    v25 = a4;
  }

  v44 = v25 + 64;
  sub_1001C7F38();
  v47 = v46 & v45;
  v49 = (v48 + 63) >> 6;

  v50 = 0;
  while (v47)
  {
LABEL_32:
    v52 = __clz(__rbit64(v47));
    v47 &= v47 - 1;
    v53 = v52 | (v50 << 6);
    v54 = *(*(v25 + 56) + 8 * v53);
    v55 = *(v54 + 16);
    if (v55)
    {
      v56 = (*(v25 + 48) + 16 * v53);
      v57 = v56[1];
      v72 = *v56;
      *&v76[0] = _swiftEmptyArrayStorage;
      v58 = v54 + 32;
      v74 = v57;

      do
      {
        sub_10002F9B0(v58, &v80);
        sub_10002F9B0(&v80, &v77);
        sub_100019C0C(0, &qword_1002B34A8);
        if (swift_dynamicCast())
        {

          v59 = objc_opt_self();
          v60 = sub_1001F6B48();
          v61 = [v59 isNullPredicateWithProperty:v60];
        }

        else
        {
          sub_100019C0C(0, &qword_1002B3480);
          sub_10002F9B0(&v80, &v77);

          v61 = sub_1001C7EA0(v72, v74, &v77);
        }

        v62 = v61;
        sub_1001F6F08();
        v63 = *((*&v76[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((*&v76[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v63 >> 1)
        {
          sub_10005669C(v63);
          sub_1001F6F58();
        }

        sub_1001F6F98();

        sub_100019CCC(&v80);
        v58 += 32;
        --v55;
      }

      while (v55);
      v64 = *&v76[0];

      sub_100019C0C(0, &qword_1002B3488);
      v65 = sub_10006E930(v64);

      sub_1001C777C(v65, &selRef_predicateMatchingAnyPredicates_);
      sub_1001F6F08();
      sub_1001C7F54();
      v68 = *(v66 + 16);
      v67 = *(v66 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_10005669C(v67);
        sub_1001F6F58();
      }

      sub_1001F6F98();
      v5 = v82;
      v25 = a4;
    }
  }

  while (1)
  {
    v51 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v51 >= v49)
    {

      sub_100019C0C(0, &qword_1002B3488);
      v69 = sub_10006E930(v5);

      sub_1001C777C(v69, &selRef_predicateMatchingAllPredicates_);
      return;
    }

    v47 = *(v44 + 8 * v51);
    ++v50;
    if (v47)
    {
      v50 = v51;
      goto LABEL_32;
    }
  }

LABEL_45:
  __break(1u);
}

id sub_1001C7EA0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1001F6B48();

  sub_10001AE68(a3, a3[3]);
  v5 = sub_1001F7E98();
  v6 = [swift_getObjCClassFromMetadata() predicateWithProperty:v4 equalToValue:v5];
  swift_unknownObjectRelease();

  sub_100019CCC(a3);
  return v6;
}

uint64_t sub_1001C7F60()
{

  return sub_1000375CC(0, v0, 0);
}

uint64_t sub_1001C7F80()
{
  v1 = sub_1000183C4(&qword_1002B23B8);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v15 - v3;
  type metadata accessor for PromotionalOfferData.SigningMethod(0);
  sub_100023520();
  __chkstk_darwin(v5, v6);
  sub_100023510();
  v9 = (v8 - v7);
  v10 = type metadata accessor for PromotionalOfferData(0);
  sub_1001CA768(v0 + *(v10 + 20), v9, type metadata accessor for PromotionalOfferData.SigningMethod);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001CA168(v9, v4);
    v11 = *(v4 + 2);

    sub_1000374B8(v4, &qword_1002B23B8);
  }

  else
  {
    v11 = v9[2];
    v12 = v9[6];
    v13 = v9[7];

    sub_10003A36C(v12, v13);
  }

  return v11;
}

uint64_t sub_1001C80E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v100 = a7;
  v99 = a6;
  v98 = a5;
  v101 = a3;
  v97 = a1;
  v89 = sub_1001F68E8();
  sub_10001A278();
  v88 = v11;
  __chkstk_darwin(v12, v13);
  sub_100023510();
  sub_100144CF8(v15 - v14);
  v91 = sub_1001F6968();
  sub_10001A278();
  v90 = v16;
  __chkstk_darwin(v17, v18);
  sub_100023510();
  v87 = v20 - v19;
  v21 = sub_1000183C4(&qword_1002BBFC8);
  __chkstk_darwin(v21 - 8, v22);
  sub_100144CF8(&v84 - v23);
  v96 = sub_1001F6938();
  sub_10001A278();
  v93 = v24;
  __chkstk_darwin(v25, v26);
  sub_100023510();
  sub_100144CF8(v28 - v27);
  v29 = sub_1001F6B98();
  sub_10001A278();
  v31 = v30;
  __chkstk_darwin(v32, v33);
  sub_100023510();
  v36 = v35 - v34;
  v108 = *(v7 + 32);
  v37 = *(&v108 + 1);
  if (!*(&v108 + 1) || (v38 = *(v8 + 56), v38 >> 60 == 15) || (v39 = *(v8 + 48), v107 = *(v8 + 64), v40 = *(&v107 + 1), v41 = v108, !*(&v107 + 1)))
  {
    if (qword_1002AC510 != -1)
    {
      sub_10001B230();
    }

    v50 = sub_1001F6688();
    sub_100019C94(v50, qword_1002E6180);

    sub_1001C8B74(v8, v105);
    v51 = sub_1001F6668();
    v52 = sub_1001F7298();
    sub_1000AC71C(v8);

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v105[0] = swift_slowAlloc();
      *v53 = 136315394;
      *(v53 + 4) = sub_1000E4544(*v8, *(v8 + 8), v105);
      *(v53 + 12) = 2080;
      *(v53 + 14) = sub_1000E4544(v101, a4, v105);
      _os_log_impl(&_mh_execute_header, v51, v52, "Missing promotional offer (%s) params to verify cryptographic signature for %s", v53, 0x16u);
      swift_arrayDestroy();
      sub_10003A72C();
      sub_10003A72C();
    }

    goto LABEL_12;
  }

  v85 = v107;
  v86 = v39;
  sub_1000183C4(&qword_1002AC7E0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_100200CB0;
  *(v42 + 32) = v97;
  *(v42 + 40) = a2;
  *v105 = *v100;
  *(v42 + 48) = *v105;
  *(v42 + 64) = v101;
  *(v42 + 72) = a4;
  v106 = *v8;
  *(v42 + 80) = v106;
  v43 = v99;
  *(v42 + 96) = v98;
  *(v42 + 104) = v43;
  *(v42 + 112) = v41;
  *(v42 + 120) = v37;
  *(v42 + 128) = v85;
  *(v42 + 136) = v40;
  v104 = v42;

  sub_1000552A0(v105, &v102);

  sub_1000552A0(&v106, &v102);

  v44 = v86;
  sub_100040C5C(v86, v38);
  sub_10004F684(&v108, &v102);
  sub_10004F684(&v107, &v102);
  sub_1000183C4(&qword_1002ACA10);
  sub_10003A2B4();
  sub_1001F6A68();

  sub_1001F6B88();
  v45 = sub_1001F6B68();
  v47 = v46;

  (*(v31 + 8))(v36, v29);
  if (v47 >> 60 != 15)
  {
    v56 = *(v100 + 40);
    if (v56)
    {
      v57 = *(v100 + 32);
      if (qword_1002AC510 != -1)
      {
        sub_10001B230();
      }

      v58 = sub_1001F6688();
      sub_100019C94(v58, qword_1002E6180);
      v59 = sub_1001F6668();
      v60 = sub_1001F72B8();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&_mh_execute_header, v59, v60, "Attempting legacy verification for offer signing key generated in Xcode 11", v61, 2u);
        sub_10003A72C();
      }

      v62 = sub_1000513C4();
      v54 = sub_1001C9AB4(v62, v63, v45, v47, v57, v56);
      sub_10003A36C(v45, v47);
      v64 = sub_1000513C4();
    }

    else
    {
      v102 = v44;
      v103 = v38;
      v66 = sub_1000513C4();
      sub_100040C70(v66, v67);
      sub_10003A3D8();
      v68 = v95;
      sub_1001F6908();
      v101 = v47;
      v69 = v96;
      sub_100018460(v68, 0, 1, v96);
      v70 = v68;
      v71 = v93;
      v72 = v94;
      (*(v93 + 32))(v94, v70, v69);
      v73 = sub_1001F6328();
      if (v74 >> 60 == 15)
      {
        (*(v71 + 8))(v72, v69);
        v75 = sub_1000513C4();
        sub_10003A36C(v75, v76);
        v48 = sub_1001CAA30();
        goto LABEL_6;
      }

      v77 = v74;
      v102 = v73;
      v103 = v74;
      v78 = v73;
      sub_100040C70(v73, v74);
      sub_10003A318();
      v79 = v92;
      sub_1001F6888();
      v80 = v87;
      sub_1001F6878();
      (*(v88 + 8))(v79, v89);
      v99 = v45;
      v102 = v45;
      v103 = v101;
      v81 = v94;
      v54 = sub_1001F6948();
      sub_10003A36C(v78, v77);
      v82 = sub_1000513C4();
      sub_10003A36C(v82, v83);
      (*(v90 + 8))(v80, v91);
      (*(v71 + 8))(v81, v69);
      v64 = v99;
      v65 = v101;
    }

    sub_10003A36C(v64, v65);
    return v54 & 1;
  }

  v48 = v44;
  v49 = v38;
LABEL_6:
  sub_10003A36C(v48, v49);
LABEL_12:
  v54 = 0;
  return v54 & 1;
}

uint64_t sub_1001C8BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v31 = a3;
  v9 = sub_1001F6508();
  sub_10001A278();
  v11 = v10;
  v14 = __chkstk_darwin(v12, v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = &v30 - v18;
  v20 = type metadata accessor for PromotionalOfferData.JWTPayload(0);
  v21 = (v4 + v20[6]);
  v22 = *v21 == 0xD000000000000011 && 0x800000010022DD60 == v21[1];
  if (v22 || (sub_1001F7EA8()) && (v30 = a4, sub_1001F64B8(), sub_1001F6468(), v23 = *(v11 + 8), v23(v16, v9), sub_1001F64E8(), sub_1001CA0C0(&qword_1002AD110, &type metadata accessor for Date), v24 = sub_1001F6A78(), v23(v16, v9), v23(v19, v9), (v24 & 1) == 0) && ((v26 = (v5 + v20[11]), *v26 == a1) ? (v27 = v26[1] == a2) : (v27 = 0), (v27 || (sub_1001F7EA8()) && ((v28 = (v5 + v20[8]), *v28 == v31) ? (v29 = v28[1] == v30) : (v29 = 0), v29 || (sub_1001F7EA8())))
  {
    return *(v5 + v20[12] + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001C8E10(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027D788;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1001C8E64(char a1)
{
  result = 7566185;
  switch(a1)
  {
    case 1:
      result = 7627113;
      break;
    case 2:
      result = 6583649;
      break;
    case 3:
      result = 0x65636E6F6ELL;
      break;
    case 4:
      result = 6580578;
      break;
    case 5:
      result = 0x49746375646F7270;
      break;
    case 6:
      result = 0x746361736E617274;
      break;
    case 7:
      result = 0x656449726566666FLL;
      break;
    case 8:
      result = 7370853;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001C8F68(void *a1)
{
  v3 = sub_1000183C4(&qword_1002BC1D8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v9[-v6];
  sub_10001AE68(a1, a1[3]);
  sub_1001CA714();
  sub_1001F8198();
  v9[31] = 0;
  sub_1001F6578();
  sub_1001CA0C0(&qword_1002AD1F0, &type metadata accessor for UUID);
  sub_1001F7DC8();
  if (!v1)
  {
    type metadata accessor for PromotionalOfferData.JWTPayload(0);
    v9[30] = 1;
    sub_1001F7DD8();
    v9[29] = 2;
    sub_1001F7D88();
    v9[28] = 3;
    sub_1001F7DC8();
    v9[27] = 4;
    sub_1001F7D88();
    v9[26] = 5;
    sub_1001F7D88();
    v9[25] = 6;
    sub_1001F7D18();
    v9[24] = 7;
    sub_1001F7D88();
    v9[15] = 8;
    sub_1001F7D68();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1001C9288@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v4 = sub_1001F6578();
  v61 = *(v4 - 8);
  __chkstk_darwin(v4, v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = &v51 - v10;
  v12 = sub_1000183C4(&qword_1002BC1C8);
  v55 = *(v12 - 8);
  v56 = v12;
  __chkstk_darwin(v12, v13);
  v15 = &v51 - v14;
  v59 = type metadata accessor for PromotionalOfferData.JWTPayload(0);
  __chkstk_darwin(v59, v16);
  v60 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v57 = a1;
  sub_10001AE68(a1, v18);
  sub_1001CA714();
  sub_1001F8178();
  v58 = v4;
  if (v2)
  {
    return sub_100019CCC(v57);
  }

  v53 = v7;
  v19 = v55;
  v70 = 0;
  sub_1001CA0C0(&qword_1002AD1E0, &type metadata accessor for UUID);
  v20 = v56;
  v21 = v15;
  sub_1001F7CB8();
  v22 = v60;
  v23 = v4;
  v24 = *(v61 + 32);
  v24(v60, v11, v23);
  v69 = 1;
  v25 = sub_1001F7CC8();
  v26 = v59;
  *&v22[*(v59 + 20)] = v25;
  v68 = 2;
  v27 = sub_1001F7C78();
  v52 = v24;
  v28 = &v22[v26[6]];
  *v28 = v27;
  v28[1] = v29;
  v67 = 3;
  v30 = v53;
  v31 = v58;
  sub_1001F7CB8();
  v52(&v22[v26[7]], v30, v31);
  v66 = 4;
  v32 = sub_1001F7C78();
  v33 = &v22[v26[8]];
  *v33 = v32;
  v33[1] = v34;
  v65 = 5;
  v35 = sub_1001F7C78();
  v36 = v26;
  v37 = &v22[v26[9]];
  *v37 = v35;
  v37[1] = v38;
  v64 = 6;
  v39 = sub_1001F7C08();
  v40 = &v22[v26[10]];
  *v40 = v39;
  v40[1] = v41;
  v63 = 7;
  v42 = sub_1001F7C78();
  v43 = &v60[v26[11]];
  *v43 = v42;
  v43[1] = v44;
  v62 = 8;
  v45 = sub_1001F7C58();
  LOBYTE(v26) = v46;
  (*(v19 + 8))(v21, v20);
  v47 = v36[12];
  v48 = v60;
  v49 = &v60[v47];
  *v49 = v45;
  v49[8] = v26 & 1;
  sub_1001CA768(v48, v54, type metadata accessor for PromotionalOfferData.JWTPayload);
  sub_100019CCC(v57);
  return sub_1001CA7C8(v48);
}

uint64_t sub_1001C996C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001C8E10(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1001C999C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001C8E64(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1001C99E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001C8E5C();
  *a1 = result;
  return result;
}

uint64_t sub_1001C9A0C(uint64_t a1)
{
  v2 = sub_1001CA714();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C9A48(uint64_t a1)
{
  v2 = sub_1001CA714();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_1001C9AB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v8 = sub_1001C9B88(a5, a6);
  if (v8)
  {
    v9 = v8;
    type metadata accessor for ECDSASignatureVerifier();
    inited = swift_initStackObject();
    *(inited + 16) = v9;
    *(inited + 24) = kSecKeyAlgorithmECDSASignatureDigestX962SHA256;
    v11 = kSecKeyAlgorithmECDSASignatureDigestX962SHA256;
    v12 = ECDSASignatureVerifier.verify(data:signature:)(a3, a4);
    swift_setDeallocating();
    ECDSASignatureVerifier.deinit();
    swift_deallocClassInstance();
  }

  else
  {
    return 0;
  }

  return v12;
}

SecKeyRef sub_1001C9B88(unint64_t a1, unint64_t a2)
{
  v5 = sub_1001F6328();
  if (v6 >> 60 != 15)
  {
    v7 = v6;
    v8 = v5;
    switch(v6 >> 62)
    {
      case 1uLL:
        LODWORD(v9) = HIDWORD(v5) - v5;
        if (__OFSUB__(HIDWORD(v5), v5))
        {
          goto LABEL_24;
        }

        v9 = v9;
        goto LABEL_7;
      case 2uLL:
        v11 = *(v5 + 16);
        v10 = *(v5 + 24);
        v12 = __OFSUB__(v10, v11);
        v9 = v10 - v11;
        if (!v12)
        {
          goto LABEL_7;
        }

        goto LABEL_25;
      case 3uLL:
        goto LABEL_12;
      default:
        v9 = BYTE6(v6);
LABEL_7:
        if (v9 <= 49)
        {
LABEL_12:
          sub_10003A36C(v5, v6);
          return 0;
        }

        v13 = sub_1001F63E8();
        if (__OFSUB__(v13, 49))
        {
          __break(1u);
        }

        else
        {
          v41 = a1;
          if (sub_1001F63E8() >= v13 - 49)
          {
            v14 = sub_1001F6398();
            v42 = v15;
            v43 = v14;
            sub_1000183C4(&qword_1002B1FF0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1001FEBE0;
            *(inited + 32) = kSecAttrKeyType;
            type metadata accessor for CFString(0);
            *(inited + 40) = kSecAttrKeyTypeEC;
            *(inited + 64) = v17;
            *(inited + 72) = kSecAttrKeyClass;
            *(inited + 104) = v17;
            *(inited + 80) = kSecAttrKeyClassPublic;
            sub_1001CA0C0(&qword_1002AC8D0, type metadata accessor for CFString);
            v18 = kSecAttrKeyType;
            v19 = kSecAttrKeyTypeEC;
            a1 = v42;
            v20 = kSecAttrKeyClass;
            v2 = v43;
            v21 = kSecAttrKeyClassPublic;
            sub_1001F69B8();
            error = 0;
            isa = sub_1001F63A8().super.isa;
            v23 = sub_1001F6988().super.isa;

            v24 = SecKeyCreateWithData(isa, v23, &error);

            if (v24)
            {
              sub_10003A380(v43, v42);
              sub_10003A36C(v8, v7);
              return v24;
            }

            if (qword_1002AC510 == -1)
            {
LABEL_16:
              v26 = sub_1001F6688();
              sub_100019C94(v26, qword_1002E6180);

              sub_100040C70(v2, a1);
              v27 = sub_1001F6668();
              v28 = sub_1001F7298();

              sub_10003A380(v2, a1);
              if (os_log_type_enabled(v27, v28))
              {
                v39 = v28;
                log = v27;
                v29 = swift_slowAlloc();
                v44 = swift_slowAlloc();
                *v29 = 136315650;
                swift_beginAccess();
                v30 = error;
                if (error)
                {
                  type metadata accessor for CFError(0);
                  sub_1001CA0C0(&qword_1002AFE30, type metadata accessor for CFError);
                  v31 = sub_1001F7FE8();
                  v33 = v32;
                }

                else
                {
                  v31 = 0;
                  v33 = 0xE000000000000000;
                }

                v34 = sub_1000E4544(v31, v33, &v44);

                *(v29 + 4) = v34;
                *(v29 + 12) = 2080;
                *(v29 + 14) = sub_1000E4544(v41, a2, &v44);
                *(v29 + 22) = 2080;
                sub_100040C70(v2, a1);
                v35 = sub_1001F6308();
                v37 = v36;
                sub_10003A380(v2, a1);
                v38 = sub_1000E4544(v35, v37, &v44);

                *(v29 + 24) = v38;
                _os_log_impl(&_mh_execute_header, log, v39, "    Key creation failed with error: %s\n    Attempted DER Container: %s\n    Attempted Key Data: %s", v29, 0x20u);
                swift_arrayDestroy();

                sub_10003A380(v2, a1);
                sub_10003A36C(v8, v7);
              }

              else
              {
                sub_10003A36C(v8, v7);

                sub_10003A380(v2, a1);
              }

              return 0;
            }

LABEL_26:
            swift_once();
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
    }
  }

  return 0;
}

uint64_t sub_1001CA0C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001CA168(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002B23B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1001CA1F0()
{
  sub_1001CA25C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1001CA25C()
{
  if (!qword_1002BC050)
  {
    type metadata accessor for PromotionalOfferData.JWTPayload(255);
    sub_1001CA0C0(&qword_1002BAC68, type metadata accessor for PromotionalOfferData.JWTPayload);
    sub_1001CA0C0(&unk_1002BC058, type metadata accessor for PromotionalOfferData.JWTPayload);
    v0 = type metadata accessor for JWS();
    if (!v1)
    {
      atomic_store(v0, &qword_1002BC050);
    }
  }
}

uint64_t sub_1001CA33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001F6578();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return sub_1001CAA40(*(a1 + *(a3 + 24) + 8));
  }

  return sub_10001C990(a1, a2, v6);
}

uint64_t sub_1001CA3F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1001F6578();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100018460(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1001CA4A0()
{
  sub_1001F6578();
  if (v0 <= 0x3F)
  {
    sub_100140004(319, &qword_1002ACF10);
    if (v1 <= 0x3F)
    {
      sub_100140004(319, &qword_1002AD180);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1001CA588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1001CAA40(*(a1 + 8));
  }

  v7 = type metadata accessor for PromotionalOfferData.SigningMethod(0);
  v8 = a1 + *(a3 + 20);

  return sub_10001C990(v8, a2, v7);
}

uint64_t sub_1001CA618(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PromotionalOfferData.SigningMethod(0);
    v8 = v5 + *(a4 + 20);

    return sub_100018460(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001CA698()
{
  result = type metadata accessor for PromotionalOfferData.SigningMethod(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1001CA714()
{
  result = qword_1002BC1D0;
  if (!qword_1002BC1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC1D0);
  }

  return result;
}

uint64_t sub_1001CA768(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100023520();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001CA7C8(uint64_t a1)
{
  v2 = type metadata accessor for PromotionalOfferData.JWTPayload(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for PromotionalOfferData.JWTPayload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x1001CA8F0);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001CA92C()
{
  result = qword_1002BC1E0;
  if (!qword_1002BC1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC1E0);
  }

  return result;
}

unint64_t sub_1001CA984()
{
  result = qword_1002BC1E8;
  if (!qword_1002BC1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC1E8);
  }

  return result;
}

unint64_t sub_1001CA9DC()
{
  result = qword_1002BC1F0;
  if (!qword_1002BC1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC1F0);
  }

  return result;
}

uint64_t sub_1001CAA40@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

void sub_1001CAA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v11 = *v5;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100111FB4();
    v11 = v12;
  }

  if (a5 >= *(v11 + 16))
  {
    __break(1u);
  }

  else
  {
    v13 = (v11 + 32 * a5);
    v14 = v13[4];
    v15 = v13[5];
    v16 = v13[6];
    v17 = v13[7];
    v13[4] = a1;
    v13[5] = a2;
    v13[6] = a3 & 0xFFFFFFFFFFFFFFLL;
    v13[7] = a4;
    sub_10003715C(v14, v15, v16, v17);
    *v5 = v11;
  }
}

void *sub_1001CAAEC(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a2;
    v5 = result;
    if (a2)
    {
      sub_1000183C4(&qword_1002ADD70);
      v6 = sub_1001F78F8();
      sub_1001CCC9C(v6);
      do
      {
        sub_1001CCC50();
        v3 += 72;
        --v4;
      }

      while (v4);
    }

    else
    {
      v2 = _swiftEmptyArrayStorage;
    }

    sub_10004BDE8(v5, &qword_1002ADD70);
    return v2;
  }

  return result;
}

void *sub_1001CAB90(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a2;
    v5 = result;
    if (a2)
    {
      sub_1000183C4(&qword_1002ADD30);
      v6 = sub_1001F78F8();
      sub_1001CCC9C(v6);
      do
      {
        sub_1001CCC50();
        v3 += 64;
        --v4;
      }

      while (v4);
    }

    else
    {
      v2 = _swiftEmptyArrayStorage;
    }

    sub_10004BDE8(v5, &qword_1002ADD30);
    return v2;
  }

  return result;
}

void *sub_1001CAC34(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a5;
    v9 = result;
    if (a5)
    {
      sub_1000183C4(&qword_1002ADC28);
      v10 = sub_1001F78F8();
      *(v10 + 16) = v5;
      for (i = (v10 + 56); ; i += 4)
      {
        --v5;
        *(i - 3) = v9;
        *(i - 2) = a2;
        *(i - 1) = a3;
        *i = a4;
        if (!v5)
        {
          break;
        }

        sub_10006E310(v9, a2, a3, a4);
      }
    }

    else
    {
      sub_10003715C(result, a2, a3, a4);
      return _swiftEmptyArrayStorage;
    }

    return v10;
  }

  return result;
}

void *sub_1001CAD00(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a2;
    v5 = result;
    if (a2)
    {
      sub_1000183C4(&qword_1002ADA18);
      v6 = sub_1001F78F8();
      sub_1001CCC9C(v6);
      do
      {
        sub_1001CCC50();
        v3 += 64;
        --v4;
      }

      while (v4);
    }

    else
    {
      v2 = _swiftEmptyArrayStorage;
    }

    sub_10004BDE8(v5, &qword_1002ADA18);
    return v2;
  }

  return result;
}

void *sub_1001CADA4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = a4;
    v7 = result;
    if (a4)
    {
      sub_1000183C4(&qword_1002ADE10);
      v10 = sub_1001F78F8();
      sub_1001CCC3C(v10);
      while (1)
      {
        v11 = v4 + v5;
        *v11 = v7;
        *(v11 + 8) = a2;
        *(v11 + 16) = a3;
        *(v11 + 22) = BYTE6(a3);
        *(v11 + 20) = WORD2(a3);
        if (!v6)
        {
          break;
        }

        v5 += 24;
        --v6;
      }
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }

    return v4;
  }

  return result;
}

void *sub_1001CAE60(void *result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = a4;
    v9 = result;
    if (a4)
    {
      sub_1000183C4(&qword_1002ADBB0);
      v10 = sub_1001F78F8();
      sub_1001CCC3C(v10);
      while (1)
      {
        v11 = v4 + v5;
        *v11 = v9;
        *(v11 + 8) = a2;
        *(v11 + 16) = a3;
        if (!v6)
        {
          break;
        }

        sub_10012DC6C(v9);
        v5 += 24;
        --v6;
      }
    }

    else
    {
      sub_1000370B8(result);
      return _swiftEmptyArrayStorage;
    }

    return v4;
  }

  return result;
}

__int128 *sub_1001CAF14(__int128 *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a2;
    v5 = result;
    if (a2)
    {
      sub_1000183C4(&qword_1002ADC00);
      v6 = sub_1001F78F8();
      sub_1001CCC3C(v6);
      while (1)
      {
        v7 = (v2 + v3);
        v8 = *v5;
        v9 = v5[1];
        v10 = v5[3];
        v7[2] = v5[2];
        v7[3] = v10;
        *v7 = v8;
        v7[1] = v9;
        if (!v4)
        {
          break;
        }

        sub_100057CB8(v5, &v11, &qword_1002ADC00);
        v3 += 64;
        --v4;
      }
    }

    else
    {
      sub_10004BDE8(result, &qword_1002ADC00);
      return _swiftEmptyArrayStorage;
    }

    return v2;
  }

  return result;
}

void *sub_1001CAFE4(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a3)
    {
      sub_1000183C4(&qword_1002BC2D0);
      v6 = sub_1001F78F8();
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

        sub_10012ECF0(v5);
        --v7;
      }
    }

    else
    {
      sub_1000375E0(result);
      return _swiftEmptyArrayStorage;
    }

    return v6;
  }

  return result;
}

uint64_t sub_1001CB094(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v7 = v6;
  v92 = a5;
  v93 = a6;
  v94 = a3;
  v95 = a4;
  v9 = a1;
  v89 = *(a1 + 192);
  v90 = 0;
  v91 = a1;
LABEL_2:
  sub_100047940();
  swift_beginAccess();
  sub_100047940();
  swift_beginAccess();
  while (2)
  {
    if (*(v9 + 200) != 1 || (*(v9 + 136) & 1) != 0)
    {
      goto LABEL_30;
    }

    switch(sub_1001933D8())
    {
      case 1u:
        v99 = v7;
        v100 = &v83;
        v32 = *(a2 + 104);
        v121 = *(a2 + 152);
        v33 = *(a2 + 136);
        v34 = *(a2 + 120);
        v120[0] = v32;
        v120[1] = v34;
        v120[2] = v33;
        v35 = *(a2 + 48);
        v97 = *(a2 + 56);
        v98 = v35;
        v36 = *(a2 + 16);
        v37 = *(a2 + 24);
        v38 = *(a2 + 64);
        v96 = *(a2 + 72);
        v40 = *(a2 + 32);
        v39 = *(a2 + 40);
        v41 = *(a2 + 80);
        v42 = *(a2 + 88);
        v43 = *(a2 + 96);
        sub_1001939D8(v120, v109);
        v44 = v99;
        v45 = sub_100191DF8(v120, v98, v97, v36, v37, v38, v96, v40, v39, v41, v42, v43, v92, v93);
        v7 = v44;
        if (v44)
        {
          sub_1001CCB10(v120);
          swift_getErrorValue();
          if (!sub_100191CDC(v111))
          {
            swift_willThrow();
          }

          v47 = *(a2 + 112);
          if (v47 == *(a2 + 120))
          {
            goto LABEL_43;
          }

          if ((v47 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          if (HIDWORD(v47))
          {
            goto LABEL_45;
          }

          if (v47 >= *(*(a2 + 104) + 16))
          {
            goto LABEL_46;
          }

          sub_1001CCC70(v47);
          if (!v57)
          {
            goto LABEL_49;
          }

          v58 = *(v56 + 48);
          v116[0] = *(v56 + 32);
          v116[1] = v58;
          v59 = v110;
          v118 = *(v56 + 72);
          v119 = *(v56 + 88);
          v117 = v110;
          v60 = sub_1001CCC1C(v48, v49, v50, v51, v52, v53, v54, v55, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109[0]);
          sub_1001CCC1C(v60, v61, v62, v63, v64, v65, v66, v67, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109[0]);
          sub_1000DFB14(v59, v116, v94);
          sub_100047940();
          v31 = sub_1001934DC(v74, v75, v76, v77, 1);
          sub_10004BDE8(v109, &qword_1002ADC00);

          v7 = 0;
          v9 = v91;
        }

        else
        {
          v68 = v45;
          v69 = v46;
          sub_1001CCB10(v120);
          v31 = sub_1001934DC(v68, v69 & 1, *(a2 + 16), *(a2 + 24), 0);
          v9 = v91;
        }

LABEL_24:
        if (!v31)
        {
          continue;
        }

        if (v31 == 2 || v90 == v89)
        {
          v79 = 1;
        }

        else
        {
          if (!__CFADD__(v90++, 1))
          {
            goto LABEL_2;
          }

          __break(1u);
LABEL_30:
          v79 = 0;
        }

        if (*(v9 + 184) == 1)
        {

          v80 = 0;
        }

        else
        {
          v81 = sub_1000069BC((*(v9 + 176) + 16));
          *(v9 + 184) = v81;

          if (v81)
          {
            v80 = 256;
          }

          else
          {
            v80 = 0;
          }
        }

        return v80 | v79;
      case 2u:
        goto LABEL_47;
      case 3u:
        continue;
      default:
        v10 = *(a2 + 112);
        if (v10 == *(a2 + 120))
        {
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
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          JUMPOUT(0x1001CB55CLL);
        }

        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        if (HIDWORD(v10))
        {
          goto LABEL_41;
        }

        if (v10 >= *(*(a2 + 104) + 16))
        {
          goto LABEL_42;
        }

        sub_1001CCC70(v10);
        if (!v20)
        {
          goto LABEL_48;
        }

        v21 = *(v19 + 48);
        v112[0] = *(v19 + 32);
        v112[1] = v21;
        v22 = v110;
        v114 = *(v19 + 72);
        v115 = *(v19 + 88);
        v113 = v110;
        v23 = sub_1001CCC1C(v11, v12, v13, v14, v15, v16, v17, v18, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109[0]);
        sub_1001CCC1C(v23, v24, v25, v26, v27, v28, v29, v30, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109[0]);
        sub_1000DFB14(v22, v112, v94);
        if (v7)
        {
          v31 = sub_100193694();
          v7 = 0;
        }

        else
        {
          sub_100047940();
          v31 = sub_1001934DC(v70, v71, v72, v73, 1);
        }

        sub_10004BDE8(v109, &qword_1002ADC00);
        goto LABEL_24;
    }
  }
}

uint64_t sub_1001CB56C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t), uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t), uint64_t a8)
{
  v9 = v8;
  v87 = a7;
  v88 = a8;
  v83 = a5;
  v84 = a6;
  v89 = a3;
  v90 = a4;
  v10 = a2;
  v11 = a1;
  v80 = *(a1 + 128);
  v81 = 0;
  v91 = a1;
  v82 = a2;
LABEL_2:
  sub_100047940();
  swift_beginAccess();
  sub_100047940();
  result = swift_beginAccess();
  while (1)
  {
    do
    {
      v13 = *(v11 + 136);
      v14 = __OFSUB__(v13, 1);
      if (v13 != 1 || (*(v11 + 48) & 1) != 0)
      {
        goto LABEL_84;
      }

      v15 = *(v11 + 24);
      if ((v15 & 0x8000000000000000) != 0)
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
        goto LABEL_103;
      }

      if (HIDWORD(v15))
      {
        goto LABEL_99;
      }

      v16 = *(v11 + 16);
      v17 = *(v16 + 16);
      v18 = v17 - 1;
      v19 = (v17 - 1) & (v15 + *(v11 + 40));
      if (v19 < 0 != v14)
      {
        goto LABEL_100;
      }

      if (HIDWORD(v19))
      {
        goto LABEL_101;
      }

      v20 = v19 < v15;
      v21 = v19 - v15;
      if (v20)
      {
        v22 = *(v16 + 16);
      }

      else
      {
        v22 = 0;
      }

      v23 = v21 + v22;
      v14 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v14)
      {
        goto LABEL_102;
      }
    }

    while (!v24);
    if (v24 == 1)
    {
      if (v15 == *(v11 + 32))
      {
        goto LABEL_110;
      }

      if (v15 >= v17)
      {
        goto LABEL_112;
      }

      v25 = v16 + 32 * v15;
      if (*(v25 + 56) == 1)
      {
        goto LABEL_130;
      }

      if ((*(v25 + 32) & 0x8000000000000000) == 0)
      {
LABEL_60:
        v54 = *(v10 + 24);
        if ((v54 & 0x8000000000000000) != 0)
        {
          goto LABEL_116;
        }

        if (HIDWORD(v54))
        {
          goto LABEL_117;
        }

        v55 = *(v10 + 16);
        v56 = *(v55 + 16);
        v57 = (v56 + 0xFFFFFFFF) & v54;
        if (v57 >= v56)
        {
          goto LABEL_118;
        }

        v58 = v55 + 32 * v57;
        v61 = *(v58 + 32);
        v59 = (v58 + 32);
        v60 = v61;
        if (v59[3] == 1)
        {
          goto LABEL_132;
        }

        if (v60 < 0)
        {
          goto LABEL_133;
        }

        v62 = v59[1];
        v63 = v59[2];
        sub_100047940();
        result = swift_beginAccess();
        if (HIDWORD(v62) < v62)
        {
          goto LABEL_119;
        }

        v64 = *(v60 + 24) + ((v63 >> 24) & 0xFFFF00 | BYTE6(v63)) + v62;
        sub_1001CCC8C();
        sub_100037154();
        v65 = v89(v64, v64 + (HIDWORD(v62) - v62));
        if (v9)
        {
          sub_1001CCC8C();
          sub_100034300();
        }

        v67 = sub_1001CC608(1uLL, v65, v66 & 1);
        sub_1001CCC8C();
        result = sub_100034300();
        v11 = v91;
        goto LABEL_78;
      }

      goto LABEL_68;
    }

    if (v15 >= v17)
    {
      goto LABEL_111;
    }

    v26 = v16 + 32;
    v27 = (v16 + 32 + 32 * v15);
    if (v27[3] == 1)
    {
      goto LABEL_129;
    }

    v28 = v18 & (v15 + 1);
    if (HIDWORD(v28))
    {
      goto LABEL_113;
    }

    v29 = (v26 + 32 * v28);
    v30 = v29[3];
    v31 = __OFSUB__(v30, 1);
    if (v30 == 1)
    {
      goto LABEL_131;
    }

    if ((*v27 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_68:
    result = sub_1001CC3F0(v10, v87, v88);
    if (v9)
    {
    }

    v67 = result;
LABEL_78:
    if (v67)
    {
      if (v67 == 2 || v81 == v80)
      {
        v76 = 1;
      }

      else
      {
        if (!__CFADD__(v81++, 1))
        {
          goto LABEL_2;
        }

        __break(1u);
LABEL_84:
        v76 = 0;
      }

      if (*(v11 + 120) == 1)
      {

        v77 = 0;
      }

      else
      {
        v78 = sub_1000069BC((*(v11 + 112) + 16));
        *(v11 + 120) = v78;

        if (v78)
        {
          v77 = 256;
        }

        else
        {
          v77 = 0;
        }
      }

      return v77 | v76;
    }
  }

  if ((*v29 & 0x8000000000000000) != 0)
  {
    goto LABEL_60;
  }

  v85 = v79;
  v86 = v9;
  v32 = *(v10 + 16);
  v33 = *(v10 + 64);
  v34 = *(v10 + 80);
  if ((*(v10 + 48) & 1) == 0)
  {
    v35 = *(v10 + 24);
    if (v35 < 0)
    {
      goto LABEL_122;
    }

    if (HIDWORD(v35))
    {
      goto LABEL_123;
    }

    v36 = *(v10 + 40) + v35;
    v96 = *(v32 + 16);
    v95 = v96 - 1;
    v37 = (v96 - 1) & v36;
    if (v37 < 0 != v31)
    {
      goto LABEL_124;
    }

    if (HIDWORD(v37))
    {
      goto LABEL_125;
    }

    v20 = v37 < v35;
    v38 = v37 - v35;
    v39 = v96;
    if (!v20)
    {
      v39 = 0;
    }

    v40 = v38 + v39;
    v14 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (v14)
    {
      goto LABEL_126;
    }

    if (v41 >= 1024)
    {
      v42 = 1024;
    }

    else
    {
      v42 = v41;
    }

    if (v41 < 0)
    {
      goto LABEL_120;
    }

    if (v41)
    {
      v79[1] = v32;
      v79[2] = v79;
      v43 = 0;
      v44 = 0;
      v93 = v35;
      v94 = v32 + 32;
      v79[0] = v33;
      v45 = (v33 + 8);
      v92 = v42;
      while (v43 < v42)
      {
        if (__OFADD__(v43, 1))
        {
          goto LABEL_104;
        }

        v46 = (v35 + v43) & v95;
        if (v46 < 0 != __OFSUB__(v43, -1))
        {
          goto LABEL_105;
        }

        if (HIDWORD(v46))
        {
          goto LABEL_106;
        }

        if (!v96)
        {
          goto LABEL_107;
        }

        v47 = (v94 + 32 * v46);
        if (v47[3] == 1)
        {
          goto LABEL_128;
        }

        v48 = *v47;
        if (*v47 < 0)
        {
          goto LABEL_59;
        }

        v49 = v47[1];
        v50 = v47[2];
        if (v43)
        {
          if (__OFSUB__(0x7FFFFFFFLL, v44))
          {
            goto LABEL_114;
          }

          v51 = HIDWORD(v49) - v49;
          if (HIDWORD(v49) < v49)
          {
            goto LABEL_115;
          }

          if (0x7FFFFFFF - v44 < v51)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v51 = HIDWORD(v49) - v49;
          if (HIDWORD(v49) < v49)
          {
            goto LABEL_108;
          }
        }

        if (v51 >= 0x7FFFFFFF)
        {
          v52 = 0x7FFFFFFFLL;
        }

        else
        {
          v52 = v51;
        }

        v14 = __OFADD__(v44, v52);
        v44 += v52;
        if (v14)
        {
          goto LABEL_109;
        }

        sub_100047940();
        swift_beginAccess();
        v53 = *(v48 + 24) + ((v50 >> 24) & 0xFFFF00 | BYTE6(v50));
        *(v34 + 8 * v43) = v48;
        *(v45 - 1) = v53 + v49;
        *v45 = v52;
        result = swift_unknownObjectRetain();
        v42 = v92;
        v35 = v93;
        v45 += 2;
        if (++v43 == v92)
        {
          v43 = v92;
LABEL_59:
          v11 = v91;
          v33 = v79[0];
          goto LABEL_71;
        }
      }

LABEL_103:
      __break(1u);
LABEL_104:
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
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      return result;
    }
  }

  v43 = 0;
LABEL_71:
  if (!v33)
  {
    goto LABEL_134;
  }

  v68 = v33;
  v69 = v86;
  result = v83(v68, v43);
  v9 = v69;
  if (!v69)
  {
    if ((v43 & 0x8000000000000000) != 0)
    {
      goto LABEL_121;
    }

    v71 = result;
    v72 = v70;
    if (v43)
    {
      v73 = v43;
      do
      {
        v34 += 8;
        swift_unknownObjectRelease();
        --v73;
      }

      while (v73);
    }

    v74 = v43;
    v10 = v82;
    result = sub_1001CC608(v74, v71, v72 & 1);
    v67 = result;
    goto LABEL_78;
  }

  if ((v43 & 0x8000000000000000) != 0)
  {
    goto LABEL_127;
  }

  for (; v43; --v43)
  {
    v34 += 8;
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1001CBB4C(uint64_t a1, char a2)
{
  if (a2)
  {
    *(v2 + 136) = 0;
  }

  swift_beginAccess();
  sub_1001CC1DC();
  v4 = v3;
  result = swift_endAccess();
  if (v4)
  {
    swift_errorRetain();
    sub_1000A13B0();
  }

  return result;
}

uint64_t sub_1001CBBD0()
{
  result = swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  if (v5 < 0 != v4)
  {
    v5 += *(*(v0 + 16) + 16);
  }

  v4 = __OFSUB__(v5, 1);
  v6 = v5 - 1 < 0;
  v7 = v5 - 1;
  if (v6 == v4)
  {
    *(v0 + 40) = v7;
    *(v0 + 48) = 0;
  }

  return result;
}

uint64_t sub_1001CBC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  sub_1001CBEAC(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL);
  swift_endAccess();
  if (*(v4 + 104) >= *(v4 + 56))
  {
    return 1;
  }

  v8 = 1;
  if (sub_100006980((*(v4 + 112) + 16), 1, 0))
  {
    v8 = 0;
    *(v4 + 120) = 0;
  }

  return v8;
}

uint64_t sub_1001CBCE4(uint64_t result)
{
  v2 = v1[1];
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(v2))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v3 = *v1;
  result = sub_100193C5C(v2 | 0x1FFFFFF00000000, result, *v1, v2, v1[2]);
  if (result >= *(v3 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3 + 32 * result;
  if (*(v4 + 56) != 1)
  {
    v5 = *(v4 + 32);
    sub_100037154();

    return v5;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1001CBD90(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (HIDWORD(v2))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v2 >= *(*v1 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v3 = *v1 + 32 * v2;
  v6 = *(v3 + 32);
  v4 = (v3 + 32);
  v5 = v6;
  v7 = v4[3];
  if (v7 != 1)
  {
    v9 = v4[1];
    v10 = v4[2];
    if (v5 < 0)
    {
      v14 = (v10 & 0xFFFFFFFFFFFFFFLL) + a1;
      if (__OFADD__(v10 & 0xFFFFFFFFFFFFFFLL, a1))
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v14 < 0)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v13 = static IntegerBitPacking.unpackUInt32UInt16UInt8(_:)(v14);
      v12 = v9;
    }

    else
    {
      v11 = (v9 + a1);
      if (__CFADD__(v9, a1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (v11 > HIDWORD(v9))
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v12 = v9 & 0xFFFFFFFF00000000 | v11;
      v13 = v10;
    }

    sub_100037154();

    sub_1001CAA54(v5, v12, v13 & 0xFFFFFFFFFFFFFFLL, v7, v2);
    v15 = v1[5];
    v16 = __OFSUB__(v15, a1);
    v17 = v15 - a1;
    if (!v16)
    {
      v1[5] = v17;
      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_22:
  __break(1u);
}

void sub_1001CBEAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10002F26C();
  if ((a1 & 0x8000000000000000) == 0)
  {
    v7 = HIDWORD(a2) - a2;
    if (HIDWORD(a2) < a2)
    {
      __break(1u);
      goto LABEL_9;
    }

    v8 = v3[5];
    v3 += 5;
    v9 = __OFADD__(v8, v7);
    v10 = v8 + v7;
    if (!v9)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v11 = FileRegion.readableBytes.getter(a1 & 0x7FFFFFFFFFFFFFFFLL, a2, a3 & 0xFFFFFFFFFFFFFFLL);
  v12 = v3[5];
  v3 += 5;
  v10 = v12 + v11;
  if (!__OFADD__(v12, v11))
  {
LABEL_7:
    *v3 = v10;
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1001CBF2C(unint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v5 = a2;
  if ((a3 & 1) != 0 || a2)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      v37 = 0;
      for (i = 0; ; ++i)
      {
        while (1)
        {
          v8 = v5;
          if (a1 == i)
          {
            return;
          }

          if (i >= a1)
          {
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

          if (__OFADD__(i, 1))
          {
            goto LABEL_49;
          }

          v10 = v4[1];
          v9 = v4[2];
          if (v9 == v10)
          {
            goto LABEL_50;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_51;
          }

          if (HIDWORD(v10))
          {
            goto LABEL_52;
          }

          v11 = *v4;
          v12 = *(*v4 + 16);
          if (v10 >= v12)
          {
            goto LABEL_53;
          }

          v13 = (v11 + 32 * v10);
          if (v13[7] == 1)
          {
            goto LABEL_63;
          }

          v14 = v13[5];
          if ((v13[4] & 0x8000000000000000) != 0)
          {
            if (v14 < 0)
            {
              goto LABEL_60;
            }

            v16 = v14 - (v13[6] & 0xFFFFFFFFFFFFFFLL);
          }

          else
          {
            v15 = HIDWORD(v14) >= v14;
            v16 = (HIDWORD(v14) - v14);
            if (!v15)
            {
              goto LABEL_58;
            }
          }

          v5 -= v16;
          if (v8 < v16)
          {
            sub_1001CBD90(v8);
            return;
          }

          if (__OFSUB__(v8, v16))
          {
            goto LABEL_54;
          }

          if ((v4[4] & 1) == 0)
          {
            v17 = v4[3];
            v18 = v17 < 1;
            v19 = v17 - 1;
            v20 = v18;
            if (v18)
            {
              v19 = 0;
            }

            v4[3] = v19;
            *(v4 + 32) = v20;
          }

          v18 = v9 < v10;
          v21 = v9 - v10;
          if (!v18)
          {
            v12 = 0;
          }

          if ((v21 + v12) < 1)
          {
            goto LABEL_55;
          }

          v22 = v13[7];
          if (v22 == 1)
          {
            goto LABEL_64;
          }

          v23 = v13[4];
          v24 = v13[5];
          v25 = v13[6];
          sub_100037154();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100111FB4();
            v11 = v26;
          }

          if (v10 >= *(v11 + 16))
          {
            goto LABEL_56;
          }

          v27 = (v11 + 32 * v10);
          v28 = v27[4];
          v29 = v27[5];
          v30 = v27[6];
          v31 = v27[7];
          v27[4] = 0;
          v27[5] = 0;
          v27[6] = 0;
          v27[7] = 1;
          sub_10003715C(v28, v29, v30, v31);
          *v4 = v11;
          v4[1] = (*(v11 + 16) + 0x1FFFFFFFFLL) & (v10 + 1);
          if (v23 < 0)
          {
            if (v24 < 0)
            {
              goto LABEL_61;
            }

            v32 = v24 - (v25 & 0xFFFFFFFFFFFFFFLL);
          }

          else
          {
            v32 = (HIDWORD(v24) - v24);
            if (HIDWORD(v24) < v24)
            {
              goto LABEL_59;
            }
          }

          v33 = v4[5];
          v34 = __OFSUB__(v33, v32);
          v35 = v33 - v32;
          if (v34)
          {
            goto LABEL_57;
          }

          v4[5] = v35;

          sub_10003715C(v23, v24, v25, v22);
          if (v22)
          {
            break;
          }

LABEL_43:
          ++i;
        }

        if (v37)
        {
          swift_retain_n();

          sub_10002FEFC(v36);

          goto LABEL_43;
        }

        v37 = v22;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
  }
}

void sub_1001CC1DC()
{
  v2 = v0[1];
  v1 = v0[2];
  if (v2 != v1)
  {
    v26 = 0;
    v27 = v0;
    v3 = v0[5];
    v4 = *v0;
    while (1)
    {
      if ((v0[4] & 1) == 0)
      {
        v5 = v0[3];
        v6 = v5 < 1;
        v7 = v5 - 1;
        v8 = v6;
        if (v6)
        {
          v7 = 0;
        }

        v0[3] = v7;
        *(v0 + 32) = v8;
      }

      v9 = v1 - v2;
      if (v1 < v2)
      {
        v9 += *(v4 + 16);
      }

      if (v9 < 1)
      {
        break;
      }

      if ((v2 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }

      if (HIDWORD(v2))
      {
        goto LABEL_38;
      }

      v10 = *(v4 + 16);
      if (v2 >= v10)
      {
        goto LABEL_39;
      }

      v11 = (v4 + 32 * v2);
      v12 = v11[7];
      if (v12 == 1)
      {
        goto LABEL_45;
      }

      if (v1 >= v2)
      {
        v10 = 0;
      }

      if ((v1 - v2 + v10) < 1)
      {
        goto LABEL_40;
      }

      v13 = v11[4];
      v14 = v11[5];
      v15 = v11[6];
      sub_100037154();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100111FB4();
        v4 = v16;
      }

      if (v2 >= *(v4 + 16))
      {
        goto LABEL_41;
      }

      v17 = (v4 + 32 * v2);
      v18 = v17[4];
      v19 = v17[5];
      v20 = v17[6];
      v21 = v17[7];
      v17[4] = 0;
      v17[5] = 0;
      v17[6] = 0;
      v17[7] = 1;
      sub_10003715C(v18, v19, v20, v21);
      v22 = *(v4 + 16);
      if (v13 < 0)
      {
        if (v14 < 0)
        {
          goto LABEL_44;
        }

        v23 = v14 - (v15 & 0xFFFFFFFFFFFFFFLL);
      }

      else
      {
        v23 = (HIDWORD(v14) - v14);
        if (HIDWORD(v14) < v14)
        {
          goto LABEL_43;
        }
      }

      v24 = __OFSUB__(v3, v23);
      v3 -= v23;
      if (v24)
      {
        goto LABEL_42;
      }

      sub_10003715C(v13, v14, v15, v12);
      if (v12)
      {
        if (v26)
        {
          swift_retain_n();

          sub_10002FEFC(v25);
        }

        else
        {
          v26 = v12;
        }
      }

      v2 = (v22 + 0x1FFFFFFFFLL) & (v2 + 1);
      v0 = v27;
      if (v2 == v1)
      {
        *v27 = v4;
        v27[1] = v1;
        v27[5] = v3;
        return;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
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
  }
}

uint64_t sub_1001CC3F0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  swift_beginAccess();
  v6 = sub_1001CBCE4(0);
  v8 = v7;
  v10 = v9;
  sub_100037154();
  sub_100034300();

  if (v6 < 0)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      swift_beginAccess();
      if (*((v6 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) == 1)
      {
        v11 = *((v6 & 0x7FFFFFFFFFFFFFFFLL) + 0x14);
        sub_100037154();

        v12 = v11;
        v13 = a3;
        v14 = a2(v12, v10 & 0xFFFFFFFFFFFFFFLL, v8);
        if (!v3)
        {
          v13 = sub_1001CC608(1uLL, v14, v15 & 1);

          sub_100034300();
          sub_100034300();
          return v13;
        }
      }

      else
      {
        v13 = 0x8000000100224AB0;
        sub_1000274C4();
        swift_allocError();
        *v16 = 0xD00000000000001FLL;
        *(v16 + 8) = 0x8000000100224AB0;
        *(v16 + 16) = 9;
        swift_willThrow();
        sub_100037154();
      }

      sub_100034300();
      sub_100034300();
      return v13;
    }

    __break(1u);
  }

  result = sub_100034300();
  __break(1u);
  return result;
}

uint64_t sub_1001CC608(unint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_beginAccess();
  sub_1001CBF2C(a1, a2, a3 & 1);
  v9 = v8;
  v11 = v10;
  swift_endAccess();
  if (v4[7] < v4[12])
  {
    sub_1000069C8((v4[14] + 16), 1);
  }

  if (v9)
  {

    sub_1000A13B0();
  }

  return v11;
}

uint64_t sub_1001CC6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_100106280(16);
  *(v4 + 16) = sub_1001CAC34(0, 0, 0, 1, v9);
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 1;
  *(v4 + 56) = 0;
  *(v4 + 96) = xmmword_1002141E0;
  sub_1000183C4(&qword_1002BA560);
  swift_bufferAllocate();
  v10 = swift_unknownObjectRetain();
  sub_1000069C8((v10 + 16), 1);
  swift_unknownObjectRelease();
  *(v4 + 112) = swift_dynamicCastClassUnconditional();
  *(v4 + 120) = 1;
  *(v4 + 128) = 16;
  *(v4 + 136) = 1;
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  *(v4 + 88) = a4;
  return v4;
}

uint64_t sub_1001CC7D4()
{

  return v0;
}

uint64_t sub_1001CC7FC()
{
  sub_1001CC7D4();

  return swift_deallocClassInstance();
}

uint64_t sub_1001CC854(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001CC894(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001CC8F0()
{
  sub_1001F77B8(49);

  sub_100047940();
  swift_beginAccess();
  if (*(v0 + 48))
  {
    v1._countAndFlagsBits = 0x65736C6166;
  }

  else
  {
    v1._countAndFlagsBits = 1702195828;
  }

  if (*(v0 + 48))
  {
    v2 = 0xE500000000000000;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  v1._object = v2;
  sub_1001F6CA8(v1);

  v8._countAndFlagsBits = 8236;
  v8._object = 0xE200000000000000;
  sub_1001F6CA8(v8);
  sub_1001F77B8(33);
  v9._object = 0x800000010022DDF0;
  v9._countAndFlagsBits = 0xD000000000000011;
  sub_1001F6CA8(v9);
  v3 = sub_1000069BC((*(v0 + 112) + 16));
  v4 = v3 == 0;
  if (v3)
  {
    v5._countAndFlagsBits = 1702195828;
  }

  else
  {
    v5._countAndFlagsBits = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v5._object = v6;
  sub_1001F6CA8(v5);

  v10._countAndFlagsBits = 0x6574617473202C29;
  v10._object = 0xEA0000000000203ALL;
  sub_1001F6CA8(v10);
  sub_1001F7A28();
  v11._countAndFlagsBits = 32032;
  v11._object = 0xE200000000000000;
  sub_1001F6CA8(v11);

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_1001F6CA8(v12);

  return 0xD00000000000002DLL;
}

uint64_t sub_1001CCB64(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001CCBB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1001CCC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{

  return sub_100057CB8(&a35, &a27, v35);
}

uint64_t sub_1001CCC50()
{

  return sub_100057CB8(v0, v2, v1);
}

uint64_t NIOThreadPool.runIfActive<A>(eventLoop:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v10 = EventLoop.makePromise<A>(of:file:line:)(a5, "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/NIOThreadPool.swift", 115, 2, 224, ObjectType, a5, a2);
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = v10;
  v11[4] = a3;
  v11[5] = a4;

  NIOThreadPool.submit(_:)(sub_1001CE2A8, v11);

  return v10;
}

uint64_t NIOThreadPool.shutdownGracefully(queue:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v42 = sub_1001F6738();
  sub_10001A278();
  v43 = v5;
  __chkstk_darwin(v6, v7);
  sub_100023510();
  v41 = v9 - v8;
  v39 = sub_1001F7308();
  sub_10001A278();
  v11 = v10;
  __chkstk_darwin(v12, v13);
  sub_100023510();
  v16 = v15 - v14;
  v17 = sub_1001F72E8();
  __chkstk_darwin(v17, v18);
  sub_100023510();
  v40 = sub_1001F6768();
  sub_10001A278();
  v46 = v19;
  __chkstk_darwin(v20, v21);
  sub_100023510();
  v24 = v23 - v22;
  v38 = dispatch_group_create();
  v25 = *(v3 + 24);

  v36 = sub_10015F600(v25, v3, a1);
  sub_10004B17C();
  sub_1001F6758();
  aBlock = _swiftEmptyArrayStorage;
  sub_10004B244(&qword_1002AE9B0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000183C4(&unk_1002BA640);
  sub_10004B28C(&qword_1002AE9B8, &unk_1002BA640);
  sub_1001F7708();
  (*(v11 + 104))(v16, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v39);
  v37 = sub_1001F7348();
  sub_10012F3D4();
  v26 = swift_allocObject();
  *(v26 + 16) = v36;
  v51 = sub_1001CE2EC;
  v52 = v26;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_1000172C0;
  v50 = &unk_1002946A0;
  v27 = _Block_copy(&aBlock);
  v35 = v38;
  sub_1001F6758();
  sub_1001CEA58();
  sub_10004B244(v28, v29);
  sub_1000183C4(&qword_1002AC880);
  sub_10004B28C(&qword_1002BA620, &qword_1002AC880);
  sub_1001F7708();
  sub_1001F7338();
  _Block_release(v27);

  v30 = *(v43 + 8);
  v30(v41, v42);
  v31 = *(v46 + 8);
  v31(v24, v40);

  sub_10004794C();
  v32 = swift_allocObject();
  *(v32 + 16) = a2;
  *(v32 + 24) = a3;
  v51 = sub_1001CE30C;
  v52 = v32;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_1000172C0;
  v50 = &unk_1002946F0;
  v33 = _Block_copy(&aBlock);

  sub_1001F6758();
  sub_1001F7708();
  sub_1001F72D8();
  _Block_release(v33);

  v30(v41, v42);
  v31(v24, v40);
}

void sub_1001CD358(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1001F6738();
  sub_10001A278();
  v36 = v5;
  __chkstk_darwin(v6, v7);
  sub_100023510();
  v10 = v9 - v8;
  sub_1001F6768();
  sub_10001A278();
  __chkstk_darwin(v11, v12);
  sub_100023510();
  v17 = v16 - v15;
  v18 = *(a1 + 48);
  if (*(a1 + 64) == 1)
  {
    v32 = a2;
    v19 = *(a1 + 40);
    v20 = *(a1 + 56);
    v34 = v14;
    v35 = v13;
    sub_1000A41C8();
    v21 = swift_allocObject();
    v21[2] = v19;
    v21[3] = v18;
    v21[4] = v20;
    v41 = sub_1001CEA28;
    v42 = v21;
    sub_1001CEA70();
    v38 = 1107296256;
    v39 = sub_1000172C0;
    v40 = &unk_100294990;
    v33 = _Block_copy(aBlock);
    sub_1001CE978(v19, v18, v20, 1);
    v31 = v19;

    sub_1001F6758();
    v43 = _swiftEmptyArrayStorage;
    sub_1001CEA58();
    sub_10004B244(v22, v23);
    sub_1000183C4(&qword_1002AC880);
    sub_10004B28C(&qword_1002BA620, &qword_1002AC880);
    sub_1001F7708();
    sub_1001F7338();
    _Block_release(v33);
    (*(v36 + 8))(v10, v4);
    (*(v34 + 8))(v17, v35);

    v24 = *(a1 + 72);
    v25 = sub_1000C6A50(1, v24);
    v27 = *(a1 + 40);
    v26 = *(a1 + 48);
    v28 = *(a1 + 56);
    *(a1 + 40) = v25;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    v29 = *(a1 + 64);
    *(a1 + 64) = 0;
    sub_100160308(v27, v26, v28, v29);
    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      for (; v24; --v24)
      {
        sub_1001F73A8();
      }

      swift_beginAccess();
      v30 = *(a1 + 32);
      if (v30)
      {

        sub_100160308(v31, v18, v20, 1);
        *v32 = v30;
        *(a1 + 32) = 0;

        return;
      }
    }

    __break(1u);
  }

  else
  {
    *a2 = _swiftEmptyArrayStorage;
  }
}

uint64_t sub_1001CD6C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 > 0xFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a3 | a2) < 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  if (a3 > 0xFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  v5 = result;
  v6 = result + 32;

  v7 = 1;
  LODWORD(v8) = a2;
  while (a3 < a2 == v7 || v8 != a3)
  {
    v10 = *(v5 + 16);
    if (v8 >= v10)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v11 = *(v6 + 16 * v8);
    if (!v11)
    {
      goto LABEL_21;
    }

    v8 = (v10 - 1) & (v8 + 1);
    if (HIDWORD(v8))
    {
      goto LABEL_17;
    }

    v7 = v8 >= a2;
    v12 = 1;

    v11(&v12);
    result = sub_1000375E0(v11);
  }
}

uint64_t sub_1001CD7F0(uint64_t a1)
{
  result = sub_10013B560(a1);
  v3 = result;
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = sub_1001F7808();
      v5 = result;
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    pthread_join(*(v5 + 32), 0);
  }

  return result;
}

uint64_t (*NIOThreadPool.submit(_:)(uint64_t a1, uint64_t a2))(unsigned __int8 *a1)
{
  v5 = *(v2 + 24);

  result = sub_10015F558(v5, v2, a1, a2);
  if (result)
  {
    v7 = result;
    v8[0] = 1;
    result(v8);
    return sub_1000375E0(v7);
  }

  return result;
}

void sub_1001CD928(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(unsigned __int8 *a1)@<X8>)
{
  if (*(a1 + 64) != 1)
  {
    sub_10004794C();
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    *a4 = sub_1001CE9C8;
    a4[1] = v16;

    return;
  }

  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 40);
  sub_10004794C();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  sub_1001CE978(v10, v8, v9, 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100112014();
    v10 = v12;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v9 >= *(v10 + 16))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v13 = v10 + 16 * v9;
  v14 = *(v13 + 32);
  *(v13 + 32) = sub_1001CEA48;
  *(v13 + 40) = v11;
  sub_1000375E0(v14);
  v15 = (*(v10 + 16) + 0x7FFFFFFFFFFFFFFFLL) & (v9 + 1);
  if (v8 == v15)
  {
    sub_1001143D4();
  }

  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  *(a1 + 40) = v10;
  *(a1 + 48) = v8;
  *(a1 + 56) = v15;
  v20 = *(a1 + 64);
  *(a1 + 64) = 1;
  sub_100160308(v17, v18, v19, v20);
  sub_1001F73A8();
  *a4 = 0;
  a4[1] = 0;
}

uint64_t NIOThreadPool.__allocating_init(numberOfThreads:)(uint64_t a1)
{
  v2 = swift_allocObject();
  NIOThreadPool.init(numberOfThreads:)(a1);
  return v2;
}

uint64_t NIOThreadPool.init(numberOfThreads:)(uint64_t a1)
{
  *(v1 + 16) = dispatch_semaphore_create(0);
  type metadata accessor for Lock();
  sub_10012F3D4();
  swift_allocObject();
  *(v1 + 24) = Lock.init()();
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 2;
  *(v1 + 72) = a1;
  return v1;
}

void sub_1001CDB7C(unint64_t a1)
{
  v2 = v1;
  while (1)
  {
    sub_1001F7398();

    Lock.lock()();
    v4 = *(v2 + 40);
    if (!*(v2 + 64))
    {

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((a1 & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_1001912BC();
        v4 = v22;
        if ((a1 & 0x8000000000000000) != 0)
        {
LABEL_22:
          __break(1u);
          return;
        }
      }

      if (*(v4 + 16) <= a1)
      {
        goto LABEL_26;
      }

      *(v4 + a1 + 32) = 0;
      v18 = *(v2 + 40);
      v19 = *(v2 + 48);
      v20 = *(v2 + 56);
      *(v2 + 40) = v4;
      *(v2 + 48) = 0;
      *(v2 + 56) = 0;
      v21 = *(v2 + 64);
      *(v2 + 64) = 0;
      sub_100160308(v18, v19, v20, v21);
LABEL_18:
      v8 = 0;
      goto LABEL_19;
    }

    if (*(v2 + 64) != 1)
    {
      goto LABEL_18;
    }

    v6 = *(v2 + 48);
    v5 = *(v2 + 56);
    if (v5 == v6)
    {
      break;
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      goto LABEL_25;
    }

    if (HIDWORD(v6))
    {
      goto LABEL_27;
    }

    sub_100030A54();
    v8 = v7;
    v9 = v5 - v6;
    if (v5 < v6)
    {
      v9 += *(v4 + 16);
    }

    if (v9 < 1)
    {
      goto LABEL_28;
    }

    sub_1001CE978(v4, v6, v5, 1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100112014();
      v4 = v10;
    }

    if (v6 >= *(v4 + 16))
    {
      goto LABEL_29;
    }

    v11 = v4 + 16 * v6;
    v12 = *(v11 + 32);
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    sub_1000375E0(v12);
    v13 = *(v4 + 16) + 0x1FFFFFFFFLL;
    v14 = *(v2 + 40);
    v15 = *(v2 + 48);
    v16 = *(v2 + 56);
    *(v2 + 40) = v4;
    *(v2 + 48) = v13 & (v6 + 1);
    *(v2 + 56) = v5;
    v17 = *(v2 + 64);
    *(v2 + 64) = 1;
    sub_100160308(v14, v15, v16, v17);
LABEL_19:
    Lock.unlock()();

    if (!v8)
    {
      return;
    }

    v23 = 0;
    v8(&v23);
    sub_1000375E0(v8);
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

Swift::Void __swiftcall NIOThreadPool.start()()
{
  v1 = v0;
  v2 = *(v0 + 24);

  if ((sub_10015F37C(v2, v1) & 1) == 0)
  {
    v3 = dispatch_group_create();
    Lock.lock()();
    sub_1001CDEF8(v1);
    Lock.unlock()();
    v4 = *(v1 + 72);
    if (v4 < 0)
    {
      __break(1u);

      Lock.unlock()();
      __break(1u);
    }

    else
    {
      if (v4)
      {
        type metadata accessor for NIOThread();
        for (i = 0; i != v4; ++i)
        {
          dispatch_group_enter(v3);
          v8._countAndFlagsBits = sub_1001F7E28();
          sub_1001F6CA8(v8);

          sub_1000A41C8();
          v6 = swift_allocObject();
          v6[2] = v1;
          v6[3] = v3;
          v6[4] = i;

          v7 = v3;
          sub_1000B35F4(590172244, 0xE400000000000000, 0, sub_1001CE374, v6);
        }
      }

      sub_1001F72C8();
    }
  }
}

uint64_t sub_1001CDEF8(uint64_t a1)
{
  swift_beginAccess();
  *(a1 + 32) = _swiftEmptyArrayStorage;

  sub_100073F34(*(a1 + 72), 0);
  return swift_endAccess();
}

void sub_1001CDF68(uint64_t a1, uint64_t a2, NSObject *a3, unint64_t a4)
{
  Lock.lock()();
  sub_1001CDFF0(a2);
  Lock.unlock()();
  dispatch_group_leave(a3);
  sub_1001CDB7C(a4);
}

uint64_t sub_1001CDFF0(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 32))
  {

    sub_1001F6F08();
    sub_1000375FC(*((*(a1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1001F6F98();
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NIOThreadPool.deinit()
{

  sub_100160308(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  return v0;
}

uint64_t NIOThreadPool.__deallocating_deinit()
{
  NIOThreadPool.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1001CE108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  v9 = __chkstk_darwin(a1, a2);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12)
  {
    sub_10010E53C();
    v13 = swift_allocError();
    EventLoopPromise.fail(_:)(v13);
  }

  else
  {
    v8(v9);
    EventLoopPromise.succeed(_:)(v11, a2, a5);
    return (*(v7 + 8))(v11, a5);
  }
}

uint64_t sub_1001CE268()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001CE2B8()
{

  sub_10012F3D4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1001CE2F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001CE338()
{

  sub_1000A41C8();

  return _swift_deallocObject(v1, v2, v3);
}

void NIOThreadPool.shutdownGracefully(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F6748();
  sub_10001A278();
  v6 = v5;
  __chkstk_darwin(v7, v8);
  sub_100023510();
  v11 = v10 - v9;
  sub_10004B17C();
  (*(v6 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v4);
  v12 = sub_1001F7358();
  (*(v6 + 8))(v11, v4);
  NIOThreadPool.shutdownGracefully(queue:_:)(v12, a1, a2);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NIOThreadPool.syncShutdownGracefully()()
{
  v0 = sub_1001F6738();
  __chkstk_darwin(v0, v1);
  sub_100023510();
  type metadata accessor for Lock();
  sub_10012F3D4();
  swift_allocObject();
  v2 = Lock.init()();
  sub_10012F3D4();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v12 = debugOnly(_:);
  v13 = 0;
  sub_1001CEA70();
  v9 = 1107296256;
  v10 = sub_1000172C0;
  v11 = &unk_100294768;
  _Block_copy(aBlock);
  v14 = _swiftEmptyArrayStorage;
  sub_1001CEA58();
  sub_10004B244(v4, v5);
  sub_1000183C4(&qword_1002AC880);
  sub_10004B28C(&qword_1002BA620, &qword_1002AC880);
  sub_1001F7708();
  sub_1001F6818();
  swift_allocObject();
  v6 = sub_1001F67F8();
  sub_1000A41C8();
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v6;

  NIOThreadPool.shutdownGracefully(_:)(sub_1000E5F68, v7);

  sub_1001F67E8();
  Lock.lock()();
  swift_beginAccess();
  if (*(v3 + 16))
  {
    swift_willThrow();
    swift_errorRetain();
  }

  Lock.unlock()();
}

uint64_t sub_1001CE740()
{

  sub_10012F3D4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1001CE774()
{

  sub_1000A41C8();

  return _swift_deallocObject(v0, v1, v2);
}

unint64_t sub_1001CE7BC()
{
  result = qword_1002BC2D8;
  if (!qword_1002BC2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC2D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NIOThreadPool.WorkItemState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001CE918);
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

uint64_t sub_1001CE94C(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_1001CE978(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  if (!a4)
  {
  }

  return result;
}

uint64_t sub_1001CE994()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1001CE9F4()
{

  sub_1000A41C8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1001CEAA0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027D880;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1001CEAEC(char a1)
{
  result = 6580578;
  switch(a1)
  {
    case 1:
      result = 1936881250;
      break;
    case 2:
      result = 1684632935;
      break;
    case 3:
      result = 0x6E4F707041534F69;
      break;
    case 4:
      result = 6580598;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001CEB7C(void *a1)
{
  v3 = sub_1000183C4(&qword_1002BC3B0);
  sub_10001A278();
  v5 = v4;
  __chkstk_darwin(v6, v7);
  v9 = &v11[-v8];
  sub_10001AE68(a1, a1[3]);
  sub_1001CF20C();
  sub_1001F8198();
  v11[15] = 0;
  sub_10005DBC4();
  sub_1001F7D88();
  if (!v1)
  {
    v11[14] = 1;
    sub_10005DBC4();
    sub_1001F7D88();
    v11[13] = 2;
    sub_10005DBC4();
    sub_1001F7D18();
    v11[12] = 3;
    sub_10005DBC4();
    sub_1001F7D18();
    v11[11] = 4;
    sub_10005DBC4();
    sub_1001F7D18();
  }

  return (*(v5 + 8))(v9, v3);
}

void *sub_1001CED24@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000183C4(&qword_1002BC3A0);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  v11 = &v25 - v10;
  sub_10001AE68(a1, a1[3]);
  sub_1001CF20C();
  sub_1001F8178();
  if (v2)
  {
    return sub_100019CCC(a1);
  }

  LOBYTE(v33[0]) = 0;
  v12 = sub_1001F7C78();
  v31 = v13;
  sub_100172948(1);
  v14 = sub_1001F7C78();
  v30 = v15;
  v27 = v14;
  sub_100172948(2);
  v26 = sub_1001F7C08();
  v29 = v16;
  sub_100172948(3);
  v25 = sub_1001F7C08();
  v28 = v17;
  v34 = 4;
  v18 = sub_1001F7C08();
  v20 = v19;
  (*(v7 + 8))(v11, v5);
  __src[0] = v12;
  __src[1] = v31;
  v21 = v30;
  __src[2] = v27;
  __src[3] = v30;
  v22 = v29;
  __src[4] = v26;
  __src[5] = v29;
  v23 = v28;
  __src[6] = v25;
  __src[7] = v28;
  __src[8] = v18;
  __src[9] = v20;
  sub_1001CF260(__src, v33);
  sub_100019CCC(a1);
  v33[0] = v12;
  v33[1] = v31;
  v33[2] = v27;
  v33[3] = v21;
  v33[4] = v26;
  v33[5] = v22;
  v33[6] = v25;
  v33[7] = v23;
  v33[8] = v18;
  v33[9] = v20;
  sub_100040BA4(v33);
  return memcpy(a2, __src, 0x50uLL);
}

uint64_t sub_1001CF0A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001CEAA0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1001CF0D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001CEAEC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1001CF108@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001CEAA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001CF130(uint64_t a1)
{
  v2 = sub_1001CF20C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001CF16C(uint64_t a1)
{
  v2 = sub_1001CF20C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1001CF1A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1001CED24(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x50uLL);
  }

  return result;
}

unint64_t sub_1001CF20C()
{
  result = qword_1002BC3A8;
  if (!qword_1002BC3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC3A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InAppQueueCheckRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001CF364);
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

unint64_t sub_1001CF3A0()
{
  result = qword_1002BC3B8;
  if (!qword_1002BC3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC3B8);
  }

  return result;
}

unint64_t sub_1001CF3F8()
{
  result = qword_1002BC3C0;
  if (!qword_1002BC3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC3C0);
  }

  return result;
}

unint64_t sub_1001CF450()
{
  result = qword_1002BC3C8;
  if (!qword_1002BC3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC3C8);
  }

  return result;
}

double sub_1001CF4AC(uint64_t a1, char a2, unsigned __int8 a3, uint64_t a4)
{
  if (a3 >> 6)
  {
    if (a3 >> 6 == 1)
    {
      v7 = sub_1001CF6F8(a2, a3 & 0x3F) * a1;
      sub_1001F6508();
      sub_1000B2EC8();
      (*(v8 + 8))(a4);
      if (a2 == 3)
      {
        return round(v7 / 60.0) * 60.0;
      }
    }

    else
    {
      sub_1001F6508();
      sub_1000B2EC8();
      (*(v11 + 8))(a4);
      return dbl_10021A540[a3 & 0x3F];
    }
  }

  else
  {
    v9 = sub_1001ECBB4(a4, a1, a2);
    sub_1001F6508();
    sub_1000B2EC8();
    (*(v10 + 8))(a4);
    return dbl_10021A570[a3] * v9;
  }

  return v7;
}

unint64_t sub_1001CF628(unint64_t a1)
{
  result = sub_1001CF6BC(a1);
  if (result == 7)
  {
    v3 = sub_1001CF7CC(a1);
    if (v3 == 6)
    {
      v4 = sub_1001CF858(a1);
      if (v4 == 6)
      {
        return 4294967288;
      }

      else
      {
        return *&v4 | 0xFFFFFF80;
      }
    }

    else
    {
      return v3 | 0x40u;
    }
  }

  return result;
}

uint64_t sub_1001CF690(uint64_t result)
{
  v1 = (result & 0x3F) + 10;
  if (result >> 6 != 1)
  {
    v1 = (result & 0x3F) + 1000;
  }

  if (result >> 6)
  {
    return v1;
  }

  else
  {
    return result;
  }
}

unint64_t sub_1001CF6BC(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

unint64_t sub_1001CF6CC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001CF6BC(*a1);
  *a2 = result;
  return result;
}

double sub_1001CF6F8(char a1, char a2)
{
  switch(a1)
  {
    case 1:
      v2 = 2;
      goto LABEL_7;
    case 2:
      v5 = sub_1001CF6F8(3);
      v6 = 24.0;
      goto LABEL_8;
    case 3:
      v5 = sub_1001CF6F8(4) * 0.666666667;
      v6 = 3.0;
      goto LABEL_8;
    case 4:
      v3 = a2;
      v4 = &unk_10021A5D8;
      goto LABEL_10;
    case 5:
      v3 = a2;
      v4 = &unk_10021A5A8;
LABEL_10:
      result = v4[v3];
      break;
    case 6:
      result = sub_1001CF6F8(5) * 12.0;
      break;
    default:
      v2 = 1;
LABEL_7:
      v5 = sub_1001CF6F8(v2);
      v6 = 60.0;
LABEL_8:
      result = v5 / v6;
      break;
  }

  return result;
}

uint64_t sub_1001CF7CC(uint64_t a1)
{
  if ((a1 - 10) >= 6)
  {
    return 6;
  }

  else
  {
    return a1 - 10;
  }
}

uint64_t sub_1001CF804@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001CF7CC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001CF830()
{
  v1 = sub_100056690();
  result = sub_1001CF7E0(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1001CF858(uint64_t a1)
{
  if ((a1 - 1000) >= 6)
  {
    return 6;
  }

  else
  {
    return a1 - 1000;
  }
}

uint64_t sub_1001CF890@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001CF858(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001CF8BC()
{
  v1 = sub_100056690();
  result = sub_1001CF86C(v1);
  *v0 = result;
  return result;
}

unint64_t sub_1001CF8E4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001CF628(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001CF910()
{
  v1 = sub_100056690();
  result = sub_1001CF690(v1);
  *v0 = result;
  return result;
}

_BYTE *sub_1001CF948(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x1001CFA14);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1001CFA48(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x1001CFB14);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1001CFB48(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x1E)
  {
    if (a2 + 226 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 226) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 227;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v5 >= 0x1D)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *sub_1001CFBE0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 226 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 226) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x1E)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x1D)
  {
    v6 = ((a2 - 30) >> 8) + 1;
    *result = a2 - 30;
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
        JUMPOUT(0x1001CFCB8);
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
          *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001CFD20()
{
  result = qword_1002BC3D0;
  if (!qword_1002BC3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC3D0);
  }

  return result;
}

unint64_t sub_1001CFD78()
{
  result = qword_1002BC3D8;
  if (!qword_1002BC3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC3D8);
  }

  return result;
}

unint64_t sub_1001CFDD0()
{
  result = qword_1002BC3E0;
  if (!qword_1002BC3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC3E0);
  }

  return result;
}

void sub_1001CFE54(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_1001CFEB8()
{
  v1 = v0;
  sub_100013EFC();
  swift_getObjectType();
  type metadata accessor for TransactionEntity();
  v2 = sub_1001EB55C(v0);
  v3 = sub_10013F1EC(v2, [v1 connection]);
  type metadata accessor for Transaction();
  v4 = v3;
  v5 = sub_1000C518C();
  v6 = sub_10006EB84(v5);

  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = sub_100013EFC();
  v9 = sub_1001D149C(v8, v6);

  return v9;
}

id sub_1001CFF90(uint64_t a1, unint64_t a2)
{
  v5 = [v2 connection];
  v6 = sub_1001F6B48();
  sub_10004794C();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_10004794C();
  v8 = swift_allocObject();
  v8[2] = sub_1001D43A0;
  v8[3] = v7;
  aBlock[4] = sub_1001D4948;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001DF3E0;
  aBlock[3] = &unk_100294EB0;
  v9 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v10 = [v5 executeStatement:v6 error:aBlock bindings:v9];
  _Block_release(v9);

  if (!v10)
  {
    v12 = aBlock[0];
    sub_1001F61B8();

    swift_willThrow();
    if (qword_1002AC510 != -1)
    {
      goto LABEL_11;
    }

    goto LABEL_4;
  }

  v11 = aBlock[0];
LABEL_7:

  while (1)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v10;
    }

    __break(1u);
LABEL_11:
    sub_10001B230();
LABEL_4:
    v13 = sub_1001F6688();
    sub_100019C94(v13, qword_1002E6180);

    swift_errorRetain();
    v14 = sub_1001F6668();
    v15 = sub_1001F7298();

    if (!os_log_type_enabled(v14, v15))
    {

      goto LABEL_7;
    }

    v16 = a1;
    a1 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *a1 = 136315394;
    *(a1 + 4) = sub_1000E4544(v16, a2, aBlock);
    *(a1 + 12) = 2080;
    swift_getErrorValue();
    v17 = sub_1001F7FE8();
    a2 = sub_1000E4544(v17, v18, aBlock);

    *(a1 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v14, v15, "Error deleting transactions for %s: %s", a1, 0x16u);
    swift_arrayDestroy();
    sub_10003A72C();
    sub_10003A72C();
  }
}

void sub_1001D0318(void *a1)
{
  v2 = sub_1001F6B48();
  [a1 bindString:v2 atPosition:1];
}

uint64_t sub_1001D037C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_100019C0C(0, &qword_1002AC800);
  sub_1000183C4(&unk_1002BC430);
  inited = swift_initStackObject();
  *(inited + 32) = 0x695F656C646E7562;
  *(inited + 40) = 0xE900000000000064;
  *(inited + 16) = xmmword_1001FEBE0;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x6C616E696769726FLL;
  *(inited + 120) = &type metadata for UInt;
  *(inited + 88) = 0xEB0000000064695FLL;
  *(inited + 96) = a3;

  v9 = sub_1001F69B8();
  sub_1000183C4(&unk_1002B3470);
  v10 = sub_1001F69B8();
  sub_1001C7874(v9, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v10);
  v12 = v11;

  type metadata accessor for TransactionEntity();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [v4 connection];
  v15 = [ObjCClassFromMetadata queryOnConnection:v14 predicate:v12];

  v22 = &_swiftEmptySetSingleton;
  v16 = swift_allocObject();
  *(v16 + 16) = &v22;
  sub_10004794C();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1001D1528;
  *(v17 + 24) = v16;
  aBlock[4] = sub_1001D153C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001CFE54;
  aBlock[3] = &unk_100294E38;
  v18 = _Block_copy(aBlock);

  [v15 enumerateMemoryEntitiesUsingBlock:v18];
  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  else
  {
    [v15 deleteAllEntities];

    v20 = v22;

    return v20;
  }

  return result;
}

void sub_1001D068C(void *a1)
{
  v2 = sub_1001F6B48();
  v3 = [a1 numberValueForProperty:v2];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];

    sub_1001D193C(&v5, v4);
  }
}

uint64_t sub_1001D071C(void *a1)
{
  if (![a1 databaseID])
  {
    return 2;
  }

  [swift_getObjCClassFromObject() databaseEntityClass];
  swift_getObjCClassMetadata();
  sub_100019C0C(0, &unk_1002BC420);
  v3 = 3;
  if (swift_dynamicCastMetatype())
  {
    v4 = [a1 databaseID];
    v5 = [v1 connection];
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v4 onConnection:v5];

    LODWORD(v5) = [v6 deleteFromDatabase];
    if (v5)
    {
      return 4;
    }

    else
    {
      return 3;
    }
  }

  return v3;
}

uint64_t sub_1001D0828(void *a1)
{
  swift_getObjectType();
  if (![a1 databaseID])
  {
    return 2;
  }

  [swift_getObjCClassFromObject() databaseEntityClass];
  swift_getObjCClassMetadata();
  sub_100019C0C(0, &unk_1002BC420);
  if (!swift_dynamicCastMetatype())
  {
    return 3;
  }

  v3 = [a1 databaseID];
  v4 = [v1 connection];
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v3 onConnection:v4];

  type metadata accessor for Transaction();
  v6 = swift_dynamicCastClass();
  if (!v6 || (*(v6 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels) & 2) != 0)
  {
    v11 = [a1 propertyValues];
    sub_1001D49BC();
    v12 = sub_1001F6998();

    sub_1001EB5C0(v12);

    sub_1001D49BC();
    v9.super.isa = sub_1001F6988().super.isa;

    [v5 setValuesWithDictionary:v9.super.isa];
  }

  else
  {
    v7 = a1;
    v8 = [v7 propertyValues];
    sub_1001D49BC();
    sub_1001F6998();

    sub_1001D49BC();
    v9.super.isa = sub_1001F6988().super.isa;

    [v5 setValuesWithDictionary:v9.super.isa];
  }

  return 4;
}

id sub_1001D0A84(uint64_t a1, void **a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a5;
  v47 = a4;
  v50 = a3;
  v48 = a2;
  v9 = sub_1001F6508();
  sub_10001A278();
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v14, v15);
  v16 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = [v6 connection];
  aBlock = 0;
  v52 = 0xE000000000000000;
  sub_1001F77B8(60);
  v57._countAndFlagsBits = 0x20455441445055;
  v57._object = 0xE700000000000000;
  sub_1001F6CA8(v57);
  v17 = [type metadata accessor for TransactionEntity() databaseTable];
  v18 = sub_1001F6B58();
  v20 = v19;

  v58._countAndFlagsBits = v18;
  v58._object = v20;
  sub_1001F6CA8(v58);

  v59._countAndFlagsBits = 0x2054455320;
  v59._object = 0xE500000000000000;
  sub_1001F6CA8(v59);
  v60._countAndFlagsBits = 0x6C616E696769726FLL;
  v60._object = 0xEB0000000064695FLL;
  sub_1001F6CA8(v60);
  v61._countAndFlagsBits = 0x202C3F203D20;
  v61._object = 0xE600000000000000;
  sub_1001F6CA8(v61);
  v62._countAndFlagsBits = 0xD000000000000016;
  v62._object = 0x8000000100222940;
  sub_1001F6CA8(v62);
  v63._countAndFlagsBits = 0x202C3F203D20;
  v63._object = 0xE600000000000000;
  sub_1001F6CA8(v63);
  v64._countAndFlagsBits = 0x6470755F7473616CLL;
  v64._object = 0xEC00000064657461;
  sub_1001F6CA8(v64);
  v65._countAndFlagsBits = 0x454857203F203D20;
  v65._object = 0xEB00000000204552;
  sub_1001F6CA8(v65);
  v66._countAndFlagsBits = 0x695F656C646E7562;
  v66._object = 0xE900000000000064;
  sub_1001F6CA8(v66);
  v67._countAndFlagsBits = 0x444E41203F203D20;
  v67._object = 0xE900000000000020;
  sub_1001F6CA8(v67);
  v68._object = 0x8000000100222970;
  v68._countAndFlagsBits = 0xD000000000000015;
  sub_1001F6CA8(v68);
  v69._countAndFlagsBits = 1059077408;
  v69._object = 0xE400000000000000;
  sub_1001F6CA8(v69);
  sub_1001F6B48();
  sub_100013EFC();

  (*(v11 + 16))(v16, a6, v9);
  v21 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v46;
  (*(v11 + 32))(v23 + v21, v16, v9);
  v25 = v47;
  v24 = v48;
  v26 = (v23 + v22);
  v46 = a1;
  *v26 = a1;
  v26[1] = v24;
  v27 = (v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8));
  v28 = v24;
  *v27 = v50;
  v27[1] = v25;
  sub_10004794C();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1001D13C8;
  *(v29 + 24) = v23;
  v55 = sub_1001D147C;
  v56 = v29;
  aBlock = _NSConcreteStackBlock;
  v52 = 1107296256;
  v53 = sub_1001DF3E0;
  v54 = &unk_100294DC0;
  v30 = _Block_copy(&aBlock);

  aBlock = 0;
  v31 = v49;
  v32 = [v49 executeStatement:&aBlock error:&aBlock bindings:v30];
  _Block_release(v30);

  if (!v32)
  {
    v34 = aBlock;
    sub_100013EFC();
    sub_1001F61B8();

    swift_willThrow();
    if (qword_1002AC510 != -1)
    {
      goto LABEL_11;
    }

    goto LABEL_4;
  }

  v33 = aBlock;
LABEL_7:

  while (1)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v32;
    }

    __break(1u);
LABEL_11:
    sub_10001B230();
LABEL_4:
    v35 = sub_1001F6688();
    sub_100019C94(v35, qword_1002E6180);

    swift_errorRetain();
    v36 = sub_1001F6668();
    v37 = sub_1001F7298();

    if (!os_log_type_enabled(v36, v37))
    {

      goto LABEL_7;
    }

    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = v28;
    v28 = v40;
    aBlock = v40;
    *v38 = 136315650;
    *(v38 + 4) = sub_1000E4544(v46, v41, &aBlock);
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_1000E4544(v50, v25, &aBlock);
    *(v38 + 22) = 2112;
    swift_errorRetain();
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v38 + 24) = v42;
    *v39 = v42;
    _os_log_impl(&_mh_execute_header, v36, v37, "Failed to update original ID for %s/%s: %@", v38, 0x20u);
    sub_1001327E0(v39);
    sub_10003A72C();
    swift_arrayDestroy();
    sub_10003A72C();
    sub_10003A72C();
  }
}

void sub_1001D10C8(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:a2];
  [a1 bindNumber:v3 atPosition:1];

  sub_1001F6428();
  [a1 bindDouble:2 atPosition:?];
  sub_1001F6438();
  [a1 bindDouble:3 atPosition:?];
  v4 = sub_1001F6B48();
  [a1 bindString:v4 atPosition:4];

  v5 = sub_1001F6B48();
  [a1 bindString:v5 atPosition:5];
}

id sub_1001D11EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DatabaseTransaction();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1001D1244(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DatabaseTransaction();
  v3 = objc_msgSendSuper2(&v5, "initWithConnection:", a1);

  return v3;
}

id sub_1001D12BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DatabaseTransaction();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001D1314()
{
  v1 = sub_1001F6508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

void sub_1001D13C8(void *a1)
{
  sub_1001F6508();
  v3 = *(v1 + 16);

  sub_1001D10C8(a1, v3);
}

uint64_t sub_1001D1484(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1001D149C(void *a1, uint64_t a2)
{
  if (a2)
  {
    v4.super.isa = sub_1001F6F18().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  v5 = [v2 initWithDatabaseEntity:a1 properties:v4.super.isa];

  return v5;
}

BOOL sub_1001D1564(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  sub_1001F8068();
  sub_1001F6C28();
  sub_1001F80D8();
  sub_1001D49B0();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v7 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_1001F7EA8() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v8 = v11 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v3;

  sub_1001D2B78(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v19;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

BOOL sub_1001D16AC(char *a1, char *a2)
{
  v26 = a1;
  v4 = sub_1001F6608();
  sub_10001A278();
  v6 = v5;
  __chkstk_darwin(v7, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2;
  v11 = *v2;
  sub_1001D48EC(&qword_1002BBAB8);
  v31 = a2;
  sub_1001F69F8();
  v28 = v11;
  v29 = v11 + 56;
  sub_1001D49B0();
  v14 = ~v13;
  v30 = v6 + 16;
  v27 = v6 + 8;
  while (1)
  {
    v15 = v12 & v14;
    v16 = (1 << (v12 & v14)) & *(v29 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v16)
    {
      v21 = v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v31;
      (*(v6 + 16))(v10, v31, v4);
      v32 = *v21;
      sub_1001D2CE0(v10, v15, isUniquelyReferenced_nonNull_native);
      *v21 = v32;
      (*(v6 + 32))(v26, v23, v4);
      return v16 == 0;
    }

    v17 = *(v6 + 72) * v15;
    v18 = *(v6 + 16);
    v18(v10, *(v28 + 48) + v17, v4);
    sub_1001D48EC(&qword_1002BC460);
    v19 = sub_1001F6B28();
    v20 = *(v6 + 8);
    v20(v10, v4);
    if (v19)
    {
      break;
    }

    v12 = v15 + 1;
  }

  v20(v31, v4);
  v18(v26, *(v28 + 48) + v17, v4);
  return v16 == 0;
}

BOOL sub_1001D193C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1001F8058();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  sub_1001D2F44(a2, v9, isUniquelyReferenced_nonNull_native);
  *v3 = v13;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_1001D1A0C(char *a1, char a2)
{
  v4 = *v2;
  sub_1001F8068();
  sub_100159E50(a2);
  sub_1001F6C28();

  sub_1001F80D8();
  sub_1001D49B0();
  v7 = v6 & ~v5;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v5;
    while (1)
    {
      v9 = 0xED0000746E65746ELL;
      v10 = 0x6F43646574736F68;
      switch(*(*(v4 + 48) + v7))
      {
        case 1:
          v9 = 0xE400000000000000;
          v10 = 1684957547;
          break;
        case 2:
          v10 = sub_1001D4974();
          break;
        case 3:
          v10 = sub_1000EC528();
          break;
        case 4:
          v10 = sub_1001D4994();
          break;
        default:
          break;
      }

      v11 = 0x6F43646574736F68;
      v12 = 0xED0000746E65746ELL;
      switch(a2)
      {
        case 1:
          v12 = 0xE400000000000000;
          v11 = 1684957547;
          break;
        case 2:
          sub_1000EC720();
          v12 = 0xEB00000000737265;
          break;
        case 3:
          sub_1001D49C8();
          v12 = 0xED00007372656666;
          break;
        case 4:
          sub_1001D49DC();
          v12 = 0xE900000000000065;
          break;
        default:
          break;
      }

      if (v10 == v11 && v9 == v12)
      {
        break;
      }

      v14 = sub_1001F7EA8();

      if (v14)
      {
        goto LABEL_21;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

LABEL_21:
    result = 0;
    a2 = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_19:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    sub_1001D3048(a2, v7, isUniquelyReferenced_nonNull_native);
    *v17 = v19;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1001D1C7C(_BYTE *a1, char a2)
{
  v4 = *v2;
  v19 = a2 & 1;
  sub_1000BE87C();
  sub_1001D49B0();
  v7 = v6 & ~v5;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v5;
    if (a2)
    {
      v9 = 1634497893;
    }

    else
    {
      v9 = 0xD000000000000010;
    }

    if (a2)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0x80000001002223B0;
    }

    while (1)
    {
      v11 = *(*(v4 + 48) + v7) ? 1634497893 : 0xD000000000000010;
      v12 = *(*(v4 + 48) + v7) ? 0xE400000000000000 : 0x80000001002223B0;
      if (v11 == v9 && v12 == v10)
      {
        break;
      }

      v14 = sub_1001F7EA8();

      if (v14)
      {
        goto LABEL_22;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

LABEL_22:
    result = 0;
    v16 = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_20:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v18;
    v16 = v19;
    sub_1001D32FC(v19, v7, isUniquelyReferenced_nonNull_native);
    *v18 = v21;
    result = 1;
  }

  *a1 = v16;
  return result;
}

uint64_t sub_1001D1E10()
{
  v1 = v0;
  v2 = *v0;
  sub_1000183C4(&unk_1002BC450);
  result = sub_1001F7778();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

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
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
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

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_1001D34D8(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    sub_1001F8068();
    sub_1001F6C28();
    result = sub_1001F80D8();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v4 + 48) + 16 * v21);
    *v26 = v16;
    v26[1] = v17;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1001D206C()
{
  v1 = v0;
  v36 = sub_1001F6608();
  v2 = *(v36 - 8);
  __chkstk_darwin(v36, v3);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1000183C4(&qword_1002BC468);
  result = sub_1001F7778();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v1 = v7;
    return result;
  }

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
  v34 = v2 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_1001D34D8(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v2 + 72) * (v15 | (v8 << 6));
    v19 = *(v2 + 32);
    v32 = *(v2 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_1001D48EC(&qword_1002BBAB8);
    result = sub_1001F69F8();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1001D23B0()
{
  v1 = v0;
  v2 = *v0;
  sub_1000183C4(&qword_1002BC440);
  result = sub_1001F7778();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v7 = (v2 + 56);
  v6 = *(v2 + 56);
  v8 = 1 << *(v2 + 32);
  v24 = v1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = result + 56;
  if ((v9 & v6) == 0)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= ((v8 + 63) >> 6))
      {
        break;
      }

      v14 = v7[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    if (v8 >= 64)
    {
      sub_1001D34D8(0, (v8 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v1 = v24;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    result = sub_1001F8058();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1001D25D4()
{
  v1 = v0;
  v2 = *v0;
  sub_1000183C4(&unk_1002BC470);
  v3 = sub_1001F7778();
  v4 = v3;
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
    v11 = v3 + 56;
    if (v9)
    {
LABEL_6:
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      goto LABEL_12;
    }

LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        JUMPOUT(0x1001D28D8);
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
LABEL_12:
        v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
        sub_1001F8068();
        sub_1001F6C28();

        v16 = sub_1001F80D8();
        v17 = -1 << *(v4 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) != 0)
        {
          v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v21 = 0;
          v22 = (63 - v17) >> 6;
          do
          {
            if (++v19 == v22 && (v21 & 1) != 0)
            {
              goto LABEL_29;
            }

            v23 = v19 == v22;
            if (v19 == v22)
            {
              v19 = 0;
            }

            v21 |= v23;
            v24 = *(v11 + 8 * v19);
          }

          while (v24 == -1);
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
        }

        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v4 + 48) + v20) = v15;
        ++*(v4 + 16);
        if (v9)
        {
          goto LABEL_6;
        }

        goto LABEL_7;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      sub_1001D34D8(0, (v25 + 63) >> 6, v2 + 56);
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

uint64_t sub_1001D28EC()
{
  v1 = v0;
  v2 = *v0;
  sub_1000183C4(&qword_1002BC448);
  result = sub_1001F7778();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

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
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
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

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_1001D34D8(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
    sub_1001F8068();
    sub_1001F6C28();

    result = sub_1001F80D8();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + v19) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

Swift::Int sub_1001D2B78(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1001D1E10();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1001D3C48();
LABEL_10:
      v15 = *v4;
      sub_1001F8068();
      sub_1001F6C28();
      result = sub_1001F80D8();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_1001F7EA8() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1001D353C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1001F7FB8();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_1001D2CE0(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_1001F6608();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1001D206C();
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1001D3E7C();
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_1001D48EC(&qword_1002BBAB8);
      v14 = sub_1001F69F8();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1001D48EC(&qword_1002BC460);
        v16 = sub_1001F6B28();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_1001D3674();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_1001F7FB8();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

uint64_t sub_1001D2F44(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1001D23B0();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1001D4180();
LABEL_10:
      v12 = *v3;
      result = sub_1001F8058();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1001D38A8();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1001F7FB8();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void sub_1001D3048(char a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1001D25D4();
    }

    else
    {
      if (v7 > v6)
      {
        sub_1001D39C8();
        goto LABEL_26;
      }

      sub_1001D43A8();
    }

    v8 = *v3;
    sub_1001F8068();
    sub_100159E50(a1);
    sub_1001F6C28();

    sub_1001F80D8();
    sub_1001D49B0();
    a2 = v10 & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v9;
      while (1)
      {
        v12 = 0xED0000746E65746ELL;
        v13 = 0x6F43646574736F68;
        switch(*(*(v8 + 48) + a2))
        {
          case 1:
            v12 = 0xE400000000000000;
            v13 = 1684957547;
            break;
          case 2:
            v13 = sub_1001D4974();
            break;
          case 3:
            v13 = sub_1000EC528();
            break;
          case 4:
            v13 = sub_1001D4994();
            break;
          default:
            break;
        }

        v14 = 0x6F43646574736F68;
        v15 = 0xED0000746E65746ELL;
        switch(a1)
        {
          case 1:
            v15 = 0xE400000000000000;
            v14 = 1684957547;
            break;
          case 2:
            sub_1000EC720();
            v15 = 0xEB00000000737265;
            break;
          case 3:
            sub_1001D49C8();
            v15 = 0xED00007372656666;
            break;
          case 4:
            sub_1001D49DC();
            v15 = 0xE900000000000065;
            break;
          default:
            break;
        }

        if (v13 == v14 && v12 == v15)
        {
          break;
        }

        v17 = sub_1001F7EA8();

        if (v17)
        {
          goto LABEL_30;
        }

        a2 = (a2 + 1) & v11;
        if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

LABEL_29:

LABEL_30:
      sub_1001F7FB8();
      __break(1u);
      JUMPOUT(0x1001D32D4);
    }
  }

LABEL_26:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
    goto LABEL_29;
  }

  *(v18 + 16) = v21;
}

Swift::Int sub_1001D32FC(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v22 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a3)
  {
    sub_1001D28EC();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1001D3B08();
      goto LABEL_27;
    }

    sub_1001D4690();
  }

  v8 = *v3;
  result = sub_1000BE87C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    if (v5)
    {
      v11 = 1634497893;
    }

    else
    {
      v11 = 0xD000000000000010;
    }

    if (v5)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0x80000001002223B0;
    }

    do
    {
      v13 = *(*(v8 + 48) + a2) ? 1634497893 : 0xD000000000000010;
      v14 = *(*(v8 + 48) + a2) ? 0xE400000000000000 : 0x80000001002223B0;
      if (v13 == v11 && v14 == v12)
      {
        goto LABEL_30;
      }

      v16 = sub_1001F7EA8();

      if (v16)
      {
        goto LABEL_31;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_27:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v22 & 1;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_30:

LABEL_31:
  result = sub_1001F7FB8();
  __break(1u);
  return result;
}

uint64_t sub_1001D34D8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_10021A610;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_1001D353C()
{
  v2 = v0;
  sub_1000183C4(&unk_1002BC450);
  v3 = *v0;
  v4 = sub_1001F7768();
  if (*(v3 + 16))
  {
    result = sub_1001D494C();
    if (v8)
    {
      v9 = result >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      result = memmove(result, v1, 8 * v6);
    }

    v10 = 0;
    *(v4 + 16) = *(v3 + 16);
    v11 = 1 << *(v3 + 32);
    v12 = *(v3 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v3 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = (*(v4 + 48) + 16 * v19);
        *v22 = *v20;
        v22[1] = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v1 + v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v4;
  }

  return result;
}

void *sub_1001D3674()
{
  v1 = v0;
  v2 = sub_1001F6608();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000183C4(&qword_1002BC468);
  v7 = *v0;
  v8 = sub_1001F7768();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
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
LABEL_17:
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
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

void *sub_1001D38A8()
{
  v2 = v0;
  sub_1000183C4(&qword_1002BC440);
  v3 = *v0;
  v4 = sub_1001F7768();
  if (*(v3 + 16))
  {
    result = sub_1001D494C();
    if (v8)
    {
      v9 = result >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      result = memmove(result, v1, 8 * v6);
    }

    v10 = 0;
    *(v4 + 16) = *(v3 + 16);
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v4 + 48) + 8 * v16) = *(*(v3 + 48) + 8 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v1 + v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v4;
  }

  return result;
}

void *sub_1001D39C8()
{
  v1 = v0;
  sub_1000183C4(&unk_1002BC470);
  v2 = *v0;
  v3 = sub_1001F7768();
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

void *sub_1001D3B08()
{
  v1 = v0;
  sub_1000183C4(&qword_1002BC448);
  v2 = *v0;
  v3 = sub_1001F7768();
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

uint64_t sub_1001D3C48()
{
  v1 = v0;
  v2 = *v0;
  sub_1000183C4(&unk_1002BC450);
  result = sub_1001F7778();
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
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v15 = *v14;
        v16 = v14[1];
        sub_1001F8068();

        sub_1001F6C28();
        result = sub_1001F80D8();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v15;
        v25[1] = v16;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v1 = v0;
          goto LABEL_25;
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

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1001D3E7C()
{
  v1 = v0;
  v33 = sub_1001F6608();
  v2 = *(v33 - 8);
  __chkstk_darwin(v33, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_1000183C4(&qword_1002BC468);
  v7 = sub_1001F7778();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v0;
    v9 = 0;
    v10 = v6 + 56;
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
    v31 = v2 + 16;
    v32 = v2;
    v15 = v7 + 56;
    v29 = (v2 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1001D48EC(&qword_1002BBAB8);
        result = sub_1001F69F8();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v1 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1001D4180()
{
  v1 = v0;
  v2 = *v0;
  sub_1000183C4(&qword_1002BC440);
  result = sub_1001F7778();
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
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        result = sub_1001F8058();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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
          goto LABEL_23;
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

    __break(1u);
  }

  else
  {
LABEL_23:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1001D436C()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1001D43A8()
{
  v1 = v0;
  v2 = *v0;
  sub_1000183C4(&unk_1002BC470);
  v3 = sub_1001F7778();
  v4 = v3;
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
    v10 = v3 + 56;
    if (v8)
    {
LABEL_6:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      goto LABEL_12;
    }

LABEL_7:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        JUMPOUT(0x1001D467CLL);
      }

      if (v5 >= v9)
      {
        break;
      }

      v13 = *(v2 + 56 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v8 = (v13 - 1) & v13;
LABEL_12:
        v14 = *(*(v2 + 48) + (v11 | (v5 << 6)));
        sub_1001F8068();
        sub_1001F6C28();

        v15 = sub_1001F80D8();
        v16 = -1 << *(v4 + 32);
        v17 = v15 & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) != 0)
        {
          v19 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = 0;
          v21 = (63 - v16) >> 6;
          do
          {
            if (++v18 == v21 && (v20 & 1) != 0)
            {
              goto LABEL_27;
            }

            v22 = v18 == v21;
            if (v18 == v21)
            {
              v18 = 0;
            }

            v20 |= v22;
            v23 = *(v10 + 8 * v18);
          }

          while (v23 == -1);
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
        }

        *(v10 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v4 + 48) + v19) = v14;
        ++*(v4 + 16);
        if (v8)
        {
          goto LABEL_6;
        }

        goto LABEL_7;
      }
    }

    v1 = v0;
  }

  else
  {
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1001D4690()
{
  v1 = v0;
  v2 = *v0;
  sub_1000183C4(&qword_1002BC448);
  result = sub_1001F7778();
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
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + (v11 | (v5 << 6)));
        sub_1001F8068();
        sub_1001F6C28();

        result = sub_1001F80D8();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v1 = v0;
          goto LABEL_25;
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

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1001D48EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1001F6608();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001D4A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000183C4(&unk_1002B3450);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 52);
    }

    else
    {
      v9 = sub_1000183C4(&qword_1002AF150);
      v10 = *(a3 + 68);
    }

    return sub_10001C990(a1 + v10, a2, v9);
  }
}

uint64_t sub_1001D4AFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = sub_1000183C4(&unk_1002B3450);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 52);
    }

    else
    {
      v9 = sub_1000183C4(&qword_1002AF150);
      v10 = *(a4 + 68);
    }

    return sub_100018460(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t type metadata accessor for IAPTransaction()
{
  result = qword_1002BC4D8;
  if (!qword_1002BC4D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001D4C28()
{
  sub_100140004(319, &qword_1002BC4E8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_100140004(319, &qword_1002B8F70);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_100140004(319, &qword_1002ACF10);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_1000AD1F8();
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_100140004(319, &qword_1002AEC50);
        v1 = v8;
        if (v9 <= 0x3F)
        {
          sub_1001D4D98();
          v1 = v10;
          if (v11 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_1001D4D98()
{
  if (!qword_1002BC4F0)
  {
    sub_100019BC4(&qword_1002AC7C8);
    v0 = sub_1001F74B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1002BC4F0);
    }
  }
}

void sub_1001D4DFC(void *a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a3;
  v7 = sub_1000183C4(&qword_1002AF150);
  __chkstk_darwin(v7 - 8, v8);
  v32 = &v31 - v9;
  v10 = sub_1000183C4(&unk_1002B3450);
  __chkstk_darwin(v10 - 8, v11);
  v13 = &v31 - v12;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  *(a4 + 24) = 0x65646F6358;
  *(a4 + 32) = 0xE500000000000000;
  *(a4 + 40) = 0;
  *(a4 + 48) = 1;
  v14 = type metadata accessor for IAPTransaction();
  *(a4 + 72) = 0;
  *(a4 + 80) = 0;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  v15 = v14[13];
  v16 = sub_1001F6508();
  sub_100018460(a4 + v15, 1, 1, v16);
  v17 = v14[14];
  sub_100018460(a4 + v17, 1, 1, v16);
  v18 = a4 + v14[15];
  *v18 = 0;
  *(v18 + 8) = 1;
  *(a4 + v14[16]) = xmmword_100202480;
  v19 = v14[17];
  v20 = sub_1000183C4(&qword_1002AC7C8);
  sub_100018460(a4 + v19, 1, 1, v20);
  *(a4 + 56) = sub_1000BFC24();
  *(a4 + 64) = v21;
  *(a4 + 88) = sub_1000BFC14();
  *(a4 + 96) = v22;
  v34 = sub_1000C1A68();
  *(a4 + 104) = sub_1001F7E28();
  *(a4 + 112) = v23;
  v24 = sub_1000C5458(8);
  v26 = v25;
  v27 = 0;
  v28 = 0;
  if ((v26 & 1) == 0)
  {
    v34 = v24;
    v27 = sub_1001F7E28();
  }

  *(a4 + 120) = v27;
  *(a4 + 128) = v28;
  sub_1000BFDA8();
  sub_1001F6418();
  sub_1001D5BD0();
  sub_1001D5950(v13, a4 + v15, &unk_1002B3450);
  sub_1000C5464(12);
  if (v29)
  {
    sub_1001033F4(a4 + v15, a4 + v17);
  }

  else
  {
    sub_1001F6418();
    sub_1001D5BD0();
    sub_1001D5950(v13, a4 + v17, &unk_1002B3450);
  }

  *v18 = sub_1000C2550();
  *(v18 + 8) = 0;
  if (a2)
  {

    v30 = v32;
    a2(a1);
    sub_100037408(a2);
    sub_100037408(a2);

    sub_1001D5950(v30, a4 + v19, &qword_1002AF150);
  }

  else
  {
  }
}

uint64_t sub_1001D511C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027D918;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1001D5178(char a1)
{
  result = 0x64692D6D657469;
  switch(a1)
  {
    case 1:
      result = 0x6D6574692D707061;
      break;
    case 2:
      result = 0x6D6E6F7269766E65;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 6580578;
      break;
    case 5:
      result = 1936881250;
      break;
    case 6:
      result = 0x616E2D726566666FLL;
      break;
    case 7:
      result = 0x746361736E617274;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0x6573616863727570;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0x797469746E617571;
      break;
    case 12:
      result = 0x2D74706965636572;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001D5364(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002BC550);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v14 - v8;
  sub_10001AE68(a1, a1[3]);
  sub_1001D5840();
  sub_1001F8198();
  LOBYTE(v16) = 0;
  sub_10001E6C8();
  sub_1001F7D78();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  LOBYTE(v16) = 1;
  sub_1001D5BC4();
  sub_10001E6C8();
  sub_1001F7DA8();
  sub_1001379E4(2);
  sub_1001F7D88();
  sub_1001379E4(3);
  sub_1001F7D48();
  sub_1001379E4(4);
  sub_1001F7D18();
  sub_1001379E4(5);
  sub_1001F7D18();
  sub_1001379E4(6);
  sub_1001F7D18();
  sub_1001379E4(7);
  sub_1001F7D18();
  sub_1001379E4(8);
  sub_1001F7D18();
  v14 = v6;
  v10 = type metadata accessor for IAPTransaction();
  LOBYTE(v16) = 9;
  sub_1001F6508();
  sub_1001D5894();
  sub_1001D5BC4();
  sub_10001E6C8();
  sub_1001F7D58();
  LOBYTE(v16) = 10;
  sub_1001D5BC4();
  sub_10001E6C8();
  sub_1001F7D58();
  sub_1001379E4(11);
  sub_1001F7D48();
  v11 = (v3 + *(v10 + 64));
  v12 = v11[1];
  v16 = *v11;
  v17 = v12;
  v15 = 12;
  sub_100040C5C(v16, v12);
  sub_10004FAD4();
  sub_10001E6C8();
  sub_1001F7D58();
  sub_10003A36C(v16, v17);
  LOBYTE(v16) = 13;
  sub_1000183C4(&qword_1002AC7C8);
  sub_1001D58EC();
  sub_1001D5BC4();
  sub_10001E6C8();
  sub_1001F7D58();
  return (*(v14 + 8))(v9, v5);
}