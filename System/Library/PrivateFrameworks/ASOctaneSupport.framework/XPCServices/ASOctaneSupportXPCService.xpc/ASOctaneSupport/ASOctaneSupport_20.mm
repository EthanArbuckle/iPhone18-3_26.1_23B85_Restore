uint64_t sub_1001812B8()
{

  return sub_1001F74A8();
}

void sub_1001812D4()
{
  v1._countAndFlagsBits = 32032;
  v1._object = 0xE200000000000000;

  sub_1001F6CA8(v1);
}

void sub_1001812F0()
{
  v3._countAndFlagsBits = v0;
  v3._object = v1;

  sub_1001F6CA8(v3);
}

void sub_10018130C()
{
  v1._countAndFlagsBits = 46;
  v1._object = 0xE100000000000000;

  sub_1001F6CA8(v1);
}

uint64_t sub_100181324()
{

  return sub_1001F7A28();
}

void sub_10018133C()
{

  sub_100032AD0();
}

uint64_t sub_100181360()
{

  return swift_allocObject();
}

uint64_t sub_1001813E4()
{
  *(v0 + 312) = 0;
  *(v0 + 320) = 1;

  return type metadata accessor for Socket();
}

uint64_t sub_100181404()
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_100181424()
{

  return swift_allocObject();
}

BOOL sub_100181474()
{

  return sub_100177B8C();
}

uint64_t sub_1001814AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return debugOnly(_:)(a1, a2, a3, a4, v5, v4);
}

uint64_t sub_1001814C4()
{
  sub_10002D83C(v3);
  sub_10002D83C(v2);
  sub_10002D83C(v1);
  return v0;
}

uint64_t sub_100181504()
{
  v1._countAndFlagsBits = 40;
  v1._object = 0xE100000000000000;
  sub_1001F6CA8(v1);
  sub_1001F70A8();
  v2._countAndFlagsBits = 44;
  v2._object = 0xE100000000000000;
  sub_1001F6CA8(v2);
  v3._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v3);

  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  sub_1001F6CA8(v4);
  return 0;
}

uint64_t sub_1001815C0(void *a1)
{
  v3 = sub_1001F6B98();
  __chkstk_darwin(v3 - 8, v4);
  v5 = a1[3];
  sub_10001AE68(a1, v5);
  sub_1001042A8();
  sub_1001F8168();
  if (v1)
  {
    goto LABEL_4;
  }

  sub_10001AE68(v69, v69[3]);
  sub_1001042A8();
  v7 = sub_1001F7EC8();
  v9 = v8;
  sub_1001F6328();
  if (v10 >> 60 == 15)
  {
LABEL_12:
    *&v62 = v7;
    *(&v62 + 1) = v9;
    v67 = 95;
    v68 = 0xE100000000000000;
    v65 = 46;
    v66 = 0xE100000000000000;
    v56 = type metadata for String;
    v57 = sub_10001C790();
    sub_1000B2EA4();
    v30 = sub_1001F75F8();
    v5 = v31;

    sub_100077944(v30, v5);
    if (v32)
    {
      sub_1000B2894();
      swift_allocError();
      *v33 = 0;
      swift_willThrow();
      goto LABEL_3;
    }

    goto LABEL_14;
  }

  v5 = v10;
  sub_1001F6B88();
  sub_1000C9970();
  v11 = sub_1001F6B78();
  if (!v12)
  {
    v28 = sub_1000C9970();
    sub_10003A36C(v28, v29);
    goto LABEL_12;
  }

  v13 = v11;
  v14 = v12;

  *&v62 = 44;
  *(&v62 + 1) = 0xE100000000000000;
  __chkstk_darwin(v15, v16);
  v58 = &v62;
  v17 = sub_1001BF6D8(0x7FFFFFFFFFFFFFFFLL, 1, sub_100048E80, &v56, v13, v14);
  v18 = v17;
  if (v17[2])
  {
    v19 = v17[6];
    v20 = v17[7];
    v62 = *(v17 + 2);
    v63 = v19;
    v64 = v20;
    v67 = 95;
    v68 = 0xE100000000000000;
    v65 = 46;
    v66 = 0xE100000000000000;
    v21 = sub_1001820C4();
    v58 = sub_10001C790();
    v59 = v58;
    v56 = type metadata for String;
    v57 = v21;
    sub_1000B2EA4();
    v22 = sub_1001F75F8();
    sub_100077944(v22, v23);
    if ((v24 & 1) == 0)
    {
      if (v18[2] < 2uLL)
      {
        __break(1u);
      }

      else
      {
        v34 = v18[8];
        v35 = v18[9];
        v61 = v18[10];

        if ((v35 ^ v34) >> 14)
        {
          v36 = sub_100182118();
          v60 = sub_100181BAC(v36, v37, v38, v39, v40);
          if ((v41 & 0x100) != 0)
          {
            v46 = sub_100182118();
            v45 = sub_1001F33D0(v46, v47, v48, v49, v50);
            v42 = v51;
            v52 = sub_1000C9970();
            sub_10003A36C(v52, v53);
          }

          else
          {
            v42 = v41;
            v43 = sub_1000C9970();
            sub_10003A36C(v43, v44);

            v45 = v60;
          }

          if (v42)
          {
            v5 = 0;
          }

          else
          {
            v5 = v45;
          }

          goto LABEL_23;
        }
      }

      v54 = sub_1000C9970();
      sub_10003A36C(v54, v55);

LABEL_14:
      v5 = 0;
LABEL_23:
      sub_100019CCC(v69);
      sub_100019CCC(a1);
      return v5;
    }
  }

  sub_1000B2894();
  swift_allocError();
  *v25 = 0;
  swift_willThrow();
  v26 = sub_1000C9970();
  sub_10003A36C(v26, v27);
LABEL_3:
  sub_100019CCC(v69);
LABEL_4:
  sub_100019CCC(a1);
  return v5;
}

uint64_t sub_100181998(void *a1, uint64_t a2)
{
  sub_1001F7098();
  v11[8] = 0xE100000000000000;
  v11[5] = 95;
  v11[6] = 0xE100000000000000;
  sub_10001C790();
  sub_1000B2EA4();
  v4 = sub_1001F75F8();
  v6 = v5;

  v11[0] = v4;
  v11[1] = v6;
  v12._countAndFlagsBits = 44;
  v12._object = 0xE100000000000000;
  sub_1001F6CA8(v12);
  v11[7] = a2;
  v13._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v13);

  v7 = sub_100141134(v4, v6);
  v9 = v8;
  sub_1001F63B8(0);
  sub_10003A380(v7, v9);
  sub_10001AE68(a1, a1[3]);
  sub_1001F8188();
  sub_10004BD98(v11, v11[3]);
  sub_1001F7EE8();

  return sub_100019CCC(v11);
}

uint64_t sub_100181B5C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1001815C0(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = result;
  }

  return result;
}

uint64_t sub_100181BAC(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_1001F7858();
  }

  result = sub_100181C88(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_100181C88(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, int64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_1001EE2BC(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_97;
    }

    result = sub_1001F6D28();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_1001EE2BC(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_1001EE2BC(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_93;
  }

  if (v23 < a4 >> 16)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  result = sub_1001F6D28();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_92;
  }

  if (v24 < v18)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a7 + 48;
        v40 = a7 + 55;
        v41 = a7 + 87;
        if (a7 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v42 = v25 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v35 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v35;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            if (!is_mul_ok(v30, a7))
            {
              return 0;
            }

            v46 = v30 * a7;
            v47 = v44 + v45;
            v38 = __CFADD__(v46, v47);
            v30 = v46 + v47;
            if (v38)
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_96;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v48 = a7 + 48;
      v49 = a7 + 55;
      v50 = a7 + 87;
      if (a7 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v51 = *v25;
          if (v51 < 0x30 || v51 >= v48)
          {
            if (v51 < 0x41 || v51 >= v49)
            {
              v35 = 0;
              if (v51 < 0x61 || v51 >= v50)
              {
                return v35;
              }

              v52 = -87;
            }

            else
            {
              v52 = -55;
            }
          }

          else
          {
            v52 = -48;
          }

          if (!is_mul_ok(v30, a7))
          {
            return 0;
          }

          v53 = v30 * a7;
          v54 = v51 + v52;
          v38 = __CFADD__(v53, v54);
          v30 = v53 + v54;
          if (v38)
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          if (!is_mul_ok(v30, a7))
          {
            return 0;
          }

          v36 = v30 * a7;
          v37 = v33 + v34;
          v38 = v36 >= v37;
          v30 = v36 - v37;
          if (!v38)
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
  return result;
}

unint64_t sub_1001820C4()
{
  result = qword_1002BA570;
  if (!qword_1002BA570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BA570);
  }

  return result;
}

void sub_100182130()
{
  sub_100037C08();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1000183C4(&qword_1002ADF60);
  v9 = sub_100056658(v8);
  __chkstk_darwin(v9, v10);
  v12 = v23 - v11;
  sub_10003E384(v5, v23 - v11);
  v13 = sub_1001F7058();
  v14 = sub_10001C990(v12, 1, v13);

  if (v14 == 1)
  {
    sub_10004BDE8(v12, &qword_1002ADF60);
  }

  else
  {
    sub_1001F7048();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1001F7008();
    v18 = v17;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v19 = sub_1001F6BD8() + 32;
      sub_10004794C();
      v20 = swift_allocObject();
      *(v20 + 16) = v3;
      *(v20 + 24) = v1;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v21 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v23[1] = 7;
      v23[2] = v21;
      v23[3] = v19;
      swift_task_create();

      sub_10004BDE8(v5, &qword_1002ADF60);

      goto LABEL_14;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_10004BDE8(v5, &qword_1002ADF60);
  sub_10004794C();
  v22 = swift_allocObject();
  *(v22 + 16) = v3;
  *(v22 + 24) = v1;
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  swift_task_create();
LABEL_14:
  sub_100037B00();
}

void sub_1001823E8(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void))
{

  sub_10018561C();
  a4[2](a4);

  _Block_release(a4);
}

void sub_10018248C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void))
{
  v11 = type metadata accessor for PurchaseConfiguration();
  v12 = (v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v26[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = v12[8];
  v17 = sub_1001F6578();
  sub_100018460(v15 + v16, 1, 1, v17);
  v18 = v12[10];
  v19 = sub_1001F6508();
  sub_100018460(v15 + v18, 1, 1, v19);
  v20 = v12[12];
  v21 = v12[13];
  *v15 = a3;
  v15[1] = a4;
  v15[2] = a1;
  v15[3] = a2;
  v22 = v15 + v12[9];
  *v22 = 1;
  v22[8] = 0;
  *(v15 + v12[11]) = 0;
  v23 = (v15 + v20);
  *v23 = 0;
  v23[1] = 0;
  *(v15 + v21) = 3;
  *(v15 + v12[14]) = 2;
  v24 = qword_1002AC468;

  if (v24 != -1)
  {
    swift_once();
  }

  sub_1000F9984(v15, v26);
  sub_10018D498(v26);
  a6[2](a6, 0);
  sub_10016C29C(v15);
  _Block_release(a6);
}

void sub_1001826E4(char a1, int a2, int a3, int a4, int a5, void *aBlock)
{
  _Block_copy(aBlock);

  sub_1001860E4("changeAutoRenewStatus(_:transactionID:bundleID:withReply:)", 58, 2, a5, a1, a2, a3, a4, aBlock);

  _Block_release(aBlock);
}

void sub_10018279C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  if (qword_1002AC468 != -1)
  {
    swift_once();
  }

  if (sub_1000FA414())
  {
    v6 = sub_1001F61A8();
  }

  else
  {
    v6 = 0;
  }

  (a5)[2](a5, v6);

  _Block_release(a5);
}

uint64_t sub_10018289C()
{
  sub_10018D98C();
  v4 = v3;
  v6 = v5;
  v8 = _Block_copy(v7);
  v9 = sub_1001F6B58();
  v11 = v10;
  _Block_copy(v8);
  v12 = v6;
  v0(v9, v11, v12, v8, v4, v2, v1);
  _Block_release(v8);
}

void sub_100182950(char a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *aBlock)
{
  _Block_copy(aBlock);

  sub_100186698("completeAskToBuyRequest(withResponse:transactionIdentifier:forBundleID:withReply:)", 82, 2, a5, a2, a3, a4, a1, aBlock);

  _Block_release(aBlock);
}

uint64_t sub_100182A08(void *a1, int a2, uint64_t a3, uint64_t a4, int a5, void *aBlock, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, id, void *))
{
  v11 = _Block_copy(aBlock);
  v12 = sub_1001F6B58();
  v14 = v13;
  _Block_copy(v11);
  v15 = a1;
  a7(a3, a4, v12, v14, v15, v11);
  _Block_release(v11);
}

uint64_t sub_100182B48()
{
  sub_100037C08();
  sub_10018D98C();
  sub_10018DA10();
  v7 = _Block_copy(v6);
  v8 = sub_1001F6B58();
  v10 = v9;
  _Block_copy(v7);
  v11 = v4;
  v5(v3, v8, v10, v11, v7, v2, v1, v0);
  _Block_release(v7);

  sub_100037B00();
}

void sub_100182BF0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *aBlock)
{
  _Block_copy(aBlock);

  sub_1001871EC("expireOrRenewSubscription(withIdentifier:expire:forBundleID:withReply:)", 71, 2, a6, a1, a2, a3, a4, a5, aBlock);

  _Block_release(aBlock);
}

void sub_100182D6C(int a1, void *aBlock)
{
  _Block_copy(aBlock);
  sub_1001877C4("getPortWithReply(_:)", 20, 2, a1, aBlock);

  _Block_release(aBlock);
}

void sub_100182E40()
{
  sub_10002E384();
  sub_10018D99C(v1, v2, v3, v4);

  sub_10018D934();
  sub_10018D9E8();
  v0();
  sub_10002E230();

  _Block_release(v5);
}

void sub_100182E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  if (qword_1002AC468 != -1)
  {
    swift_once();
  }

  sub_10001AE68((qword_1002E60C8 + 64), *(qword_1002E60C8 + 88));
  sub_10007A340();
  sub_10014BB58();
  sub_10001C7E4(&v7);
  isa = sub_1001F6988().super.isa;
  (a5)[2](a5, isa);

  _Block_release(a5);
}

void sub_100182FD0()
{
  sub_10002E384();
  sub_10018D99C(v1, v2, v3, v4);

  sub_10018D934();
  sub_10018D9E8();
  sub_1001882B0(v5, v6, v7, v8, v9, v10, v11, v0);
  sub_10002E230();

  _Block_release(v12);
}

void sub_10018302C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  if (qword_1002AC468 != -1)
  {
    swift_once();
  }

  v6 = sub_1000FA984();
  v8 = v7;
  if (v7 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_1001F63A8().super.isa;
  }

  (a5)[2](a5, isa);

  sub_10003A36C(v6, v8);
  _Block_release(a5);
}

void sub_10018325C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *aBlock)
{
  _Block_copy(aBlock);

  sub_100188C88("setStorefront(_:forBundleID:withReply:)", 39, 2, a5, a1, a2, a3, a4, aBlock);

  _Block_release(aBlock);
}

void sub_10018331C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *aBlock)
{
  _Block_copy(aBlock);
  v12 = a5;

  sub_100189244("startServingConfiguration(_:forBundleID:withReply:)", 51, 2, v12, v12, a1, a2, a3, a4, aBlock);

  _Block_release(aBlock);
}

uint64_t sub_1001833E4(void *a1, int a2, int a3, int a4, void *aBlock, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  v9 = sub_1001F6B58();
  v11 = v10;
  v12 = sub_1001F6B58();
  v14 = v13;
  _Block_copy(v8);
  v15 = a1;
  a6(v9, v11, v12, v14, v15, v8);
  _Block_release(v8);
}

void sub_100183594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(void, void))
{
  if (qword_1002AC468 != -1)
  {
    swift_once();
  }

  sub_10001AE68((qword_1002E60C8 + 64), *(qword_1002E60C8 + 88));
  if (sub_100079C88(a1, a2, a3, a4, a5))
  {
    v13 = sub_1001F61A8();
  }

  else
  {
    v13 = 0;
  }

  (a7)[2](a7, v13);

  _Block_release(a7);
}

uint64_t sub_100183758(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1000183C4(&qword_1002ADF60);
  v11 = sub_100056658(v10);
  __chkstk_darwin(v11, v12);
  v14 = &v18 - v13;
  v15 = sub_1001F7058();
  sub_100018460(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a1;
  v16[7] = a4;
  v16[8] = a5;
  sub_100040C70(a2, a3);

  sub_100182130();
}

uint64_t sub_100183870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[14] = a4;
  v9 = sub_1001F6578();
  v8[19] = v9;
  v8[20] = *(v9 - 8);
  v8[21] = swift_task_alloc();

  return _swift_task_switch(sub_100183938, 0, 0);
}

uint64_t sub_100183938()
{
  sub_10003E7B8();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  sub_100040C70(v1, v2);
  sub_10004CBAC(v1, v2, (v0 + 64));
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  *(v0 + 192) = v3;
  *(v0 + 176) = vzip1q_s64(v6, v4);
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  *(v0 + 40) = v4;
  *(v0 + 56) = v3;
  if (qword_1002AC420 != -1)
  {
    sub_10018D96C();
  }

  v7 = qword_1002E6078;
  *(v0 + 200) = qword_1002E6078;

  return _swift_task_switch(sub_100183A34, v7, 0);
}

uint64_t sub_100183A34()
{
  sub_10003E7B8();
  sub_10004DBE4(v0[16], v0 + 2, v0[21]);

  return _swift_task_switch(sub_100183AC8, 0, 0);
}

uint64_t sub_100183AC8()
{
  sub_10003E7B8();
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  (*(v0 + 136))(v1);
  (*(v2 + 8))(v1, v3);

  sub_10003E824();

  return v4();
}

void sub_100183C34(uint64_t a1, uint64_t a2)
{
  isa = sub_1001F6538().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_100183C90(uint64_t a1)
{
  v2 = sub_1001F6578();
  sub_10001A278();
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v7, v8);
  v9 = sub_1000183C4(&qword_1002ADF60);
  v10 = sub_100056658(v9);
  __chkstk_darwin(v10, v11);
  v13 = &v18 - v12;
  v14 = sub_1001F7058();
  sub_100018460(v13, 1, 1, v14);
  (*(v4 + 16))(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  (*(v4 + 32))(v16 + v15, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_100182130();
}

uint64_t sub_100183E4C()
{
  sub_10003E794();
  if (qword_1002AC420 != -1)
  {
    sub_10018D96C();
  }

  v1 = qword_1002E6078;
  *(v0 + 24) = qword_1002E6078;

  return _swift_task_switch(sub_100183ED0, v1, 0);
}

uint64_t sub_100183ED0()
{
  sub_10003E794();
  sub_10004E078(*(v0 + 16));
  sub_10003E824();

  return v1();
}

void sub_100184010(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  if (qword_1002AC468 != -1)
  {
    swift_once();
  }

  if (sub_1000FB65C())
  {
    v5.super.isa = sub_1001F6988().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  (a4)[2](a4, v5.super.isa);

  _Block_release(a4);
}

uint64_t sub_100184108(void *a1, int a2, int a3, void *aBlock, void (*a5)(uint64_t, uint64_t, id, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = sub_1001F6B58();
  v10 = v9;
  _Block_copy(v7);
  v11 = a1;
  a5(v8, v10, v11, v7);
  _Block_release(v7);
}

void sub_1001841A4(int a1, int a2, id a3, uint64_t a4, void (**a5)(void, void))
{
  v7 = sub_1000B536C([a3 integerValue]);
  if (v7 == 4)
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v8 = sub_1001F6688();
    sub_100019C94(v8, qword_1002E6180);
    v9 = a3;
    v10 = sub_1001F6668();
    v11 = sub_1001F7298();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = [v9 integerValue];

      _os_log_impl(&_mh_execute_header, v10, v11, "Invalid message reason %ld requested", v12, 0xCu);
    }

    else
    {

      v10 = v9;
    }

    a5[2](a5, 0);
  }

  else
  {
    v13 = v7;
    if (qword_1002AC468 != -1)
    {
      swift_once();
    }

    if (sub_1000FB934(v13))
    {
      if (qword_1002AC510 != -1)
      {
        swift_once();
      }

      v14 = sub_1001F6688();
      sub_100019C94(v14, qword_1002E6180);
      v15 = a3;
      v16 = sub_1001F6668();
      v17 = sub_1001F72B8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 134217984;
        *(v18 + 4) = [v15 integerValue];

        _os_log_impl(&_mh_execute_header, v16, v17, "Found message with type %ld", v18, 0xCu);
      }

      else
      {

        v16 = v15;
      }

      v24.super.isa = sub_1001F6988().super.isa;
    }

    else
    {
      if (qword_1002AC510 != -1)
      {
        swift_once();
      }

      v19 = sub_1001F6688();
      sub_100019C94(v19, qword_1002E6180);
      v20 = a3;
      v21 = sub_1001F6668();
      v22 = sub_1001F72B8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        *(v23 + 4) = [v20 integerValue];

        _os_log_impl(&_mh_execute_header, v21, v22, "No message found with type %ld", v23, 0xCu);
      }

      else
      {
      }

      v24.super.isa = 0;
    }

    (a5)[2](a5, v24.super.isa);
  }

  _Block_release(a5);
}

uint64_t sub_100184620(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 40) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return sub_10003E71C();
}

uint64_t sub_10018463C()
{
  sub_10003E7B8();
  if (qword_1002AC468 != -1)
  {
    sub_10018D920();
    swift_once();
  }

  sub_1000FB38C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  if (v1)
  {
    swift_willThrow();
  }

  sub_10003E824();

  return v2();
}

uint64_t sub_10018477C(uint64_t a1, int a2, char a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v9 = sub_1001F6B58();
  v11 = v10;
  v5[4] = v10;
  v12 = a5;
  v13 = swift_task_alloc();
  v5[5] = v13;
  *v13 = v5;
  v13[1] = sub_100184864;

  return sub_100184620(a1, v9, v11, a3);
}

uint64_t sub_100184864()
{
  sub_10018D9CC();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_10003E72C();
  *v5 = v4;
  v6 = *(v3 + 16);
  v7 = *v1;
  *v5 = *v1;

  if (v2)
  {
    v8 = sub_1001F61A8();

    v9 = sub_100075518();
    v10(v9);
  }

  else
  {
    (*(*(v3 + 24) + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v7 + 8);

  return v11();
}

uint64_t sub_1001849F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002ADF60);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = sub_1001F7058();
  sub_100018460(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_100213B58;
  v10[5] = v9;
  sub_10003DEB8(0, 0, v7, &unk_100213B68, v10);
}

uint64_t sub_100184B04(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 40) = a1;
  return sub_10003E71C();
}

uint64_t sub_100184B20()
{
  sub_10003E7B8();
  if (qword_1002AC468 != -1)
  {
    sub_10018D920();
    swift_once();
  }

  if (sub_1000FB424(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40)))
  {
    swift_willThrow();
  }

  sub_10003E824();

  return v1();
}

uint64_t sub_100184C60(char a1, uint64_t a2, int a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v9 = sub_1001F6B58();
  v11 = v10;
  v5[4] = v10;
  v12 = a5;
  v13 = swift_task_alloc();
  v5[5] = v13;
  *v13 = v5;
  v13[1] = sub_10018D914;

  return sub_100184B04(a1, a2, v9, v11);
}

void sub_100184D48(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  _Block_copy(a10);

  sub_10018A948("validateSKAdNetworkSignature(_:withPublicKey:source:andParameters:forBundleID:withReply:)", 89, 2, a9, a1, a2, a3, a4, a5, a6, a7, a8, a10);

  _Block_release(a10);
}

void sub_100184F54(uint64_t a1, int a2, void *aBlock)
{
  _Block_copy(aBlock);

  sub_10018AF4C("generateSKANPostbackSignature(_:withReply:)", 43, 2, a2, a1, aBlock);

  _Block_release(aBlock);
}

void sub_100184FD4(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  if (qword_1002AC468 != -1)
  {
    swift_once();
  }

  sub_1000FBCD0();
  if (v5)
  {
    v6 = sub_1001F6B48();
  }

  else
  {
    v6 = 0;
  }

  (a4)[2](a4, v6);

  _Block_release(a4);
}

void sub_10018512C()
{
  sub_10002E384();
  sub_10018D98C();
  sub_10018D958();
  _Block_copy(v1);

  sub_10018D934();
  sub_10018D9D8();
  v0();
  sub_10002E230();

  _Block_release(v2);
}

void sub_1001851F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t))
{
  sub_10018D958();
  _Block_copy(v10);

  sub_10018D9D8();
  a9(v11);

  _Block_release(a6);
}

uint64_t sub_1001852DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10018DA10();
  v15 = _Block_copy(v14);
  v16 = sub_1001F6B58();
  v18 = v17;
  _Block_copy(v15);
  v19 = v10;
  sub_1001851F4(v9, v8, v16, v18, v19, v15, a7, a8, v11);
  _Block_release(v15);
}

void sub_1001853A4(uint64_t a1, unint64_t a2, int a3, void *aBlock)
{
  _Block_copy(aBlock);
  sub_100040C70(a1, a2);
  sub_10018BFC0("buyProduct(withConfiguration:withReply:)", 40, 2, a3, a1, a2, aBlock);

  _Block_release(aBlock);
}

void sub_100185430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void))
{
  if (qword_1002AC468 != -1)
  {
    swift_once();
  }

  sub_1000F9F44(v10);
  if (v5)
  {
    swift_errorRetain();
    v7 = sub_1001F61A8();
    (a5)[2](a5, v7, 0);

    _Block_release(a5);
  }

  else
  {
    sub_10010B384();
    if (v8)
    {
      v9 = sub_1001F6B48();
    }

    else
    {
      v9 = 0;
    }

    (a5)[2](a5, 0, v9);

    sub_10018D498(v10);
    _Block_release(a5);
  }
}

void sub_10018561C()
{
  v26 = sub_10004B31C();
  v1 = v0;
  v2 = [objc_opt_self() currentConnection];
  if (v2)
  {
    v3 = v2;
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v4 = sub_1001F6688();
    sub_100019C94(v4, qword_1002E6180);

    v5 = v3;
    v6 = sub_1001F6668();
    v7 = sub_1001F72B8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v8 = 136315650;
      *(v8 + 4) = sub_1000E4544(v26, v1, &v27);
      *(v8 + 12) = 2080;
      v9 = sub_1001F77E8();
      v11 = sub_1000E4544(v9, v10, &v27);

      *(v8 + 14) = v11;
      *(v8 + 22) = 2112;
      *(v8 + 24) = v5;
      *v25 = v3;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "[%s] Entered %s from %@", v8, 0x20u);
      sub_10004BDE8(v25, &unk_1002BA650);

      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v13 = sub_1001F6688();
    sub_100019C94(v13, qword_1002E6180);

    v14 = sub_1001F6668();
    v15 = sub_1001F72B8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v16 = 136315394;
      *(v16 + 4) = sub_1000E4544(v26, v1, &v27);
      *(v16 + 12) = 2080;
      v17 = sub_1001F77E8();
      v19 = sub_1000E4544(v17, v18, &v27);

      *(v16 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%s] Entered %s", v16, 0x16u);
      swift_arrayDestroy();
    }
  }

  if (qword_1002AC468 != -1)
  {
    swift_once();
  }

  sub_1000F98E4();
  if (qword_1002AC510 != -1)
  {
    swift_once();
  }

  v20 = sub_1001F6688();
  sub_100019C94(v20, qword_1002E6180);

  v21 = sub_1001F6668();
  v22 = sub_1001F72B8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v27 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_1000E4544(v26, v1, &v27);
    _os_log_impl(&_mh_execute_header, v21, v22, "[%s] Exited", v23, 0xCu);
    sub_100019CCC(v24);
  }
}

uint64_t sub_100185B40(int a1, int a2, int a3, int a4, int a5, int a6, int a7, void *aBlock)
{
  _Block_copy(aBlock);
  v9 = sub_10004B31C();
  v11 = v10;
  v12 = [objc_opt_self() currentConnection];
  v13 = &off_1002AC000;
  v42 = v9;
  if (v12)
  {
    v14 = v12;
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v15 = sub_1001F6688();
    sub_100019C94(v15, qword_1002E6180);

    v16 = v14;
    v17 = sub_1001F6668();
    v18 = sub_1001F72B8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v19 = 136315650;
      *(v19 + 4) = sub_1000E4544(v9, v11, &v43);
      *(v19 + 12) = 2080;
      v20 = sub_1001F77E8();
      v22 = v11;
      v23 = sub_1000E4544(v20, v21, &v43);

      *(v19 + 14) = v23;
      v11 = v22;
      *(v19 + 22) = 2112;
      *(v19 + 24) = v16;
      *v41 = v14;
      v24 = v16;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%s] Entered %s from %@", v19, 0x20u);
      sub_10004BDE8(v41, &unk_1002BA650);

      swift_arrayDestroy();
    }

    else
    {
    }

    v13 = &off_1002AC000;
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v25 = sub_1001F6688();
    sub_100019C94(v25, qword_1002E6180);

    v26 = sub_1001F6668();
    v27 = sub_1001F72B8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = v9;
      v29 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v29 = 136315394;
      *(v29 + 4) = sub_1000E4544(v28, v11, &v43);
      *(v29 + 12) = 2080;
      v30 = sub_1001F77E8();
      v32 = sub_1000E4544(v30, v31, &v43);
      v13 = &off_1002AC000;

      *(v29 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "[%s] Entered %s", v29, 0x16u);
      swift_arrayDestroy();
    }
  }

  _Block_copy(aBlock);
  if (qword_1002AC468 != -1)
  {
    swift_once();
  }

  if (sub_1000FA204(0))
  {
    v33 = sub_1001F61A8();
  }

  else
  {
    v33 = 0;
  }

  (*(aBlock + 2))(aBlock, v33);

  _Block_release(aBlock);
  if (v13[162] != -1)
  {
    swift_once();
  }

  v34 = sub_1001F6688();
  sub_100019C94(v34, qword_1002E6180);

  v35 = sub_1001F6668();
  v36 = sub_1001F72B8();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = v11;
    v39 = swift_slowAlloc();
    v43 = v39;
    *v37 = 136315138;
    *(v37 + 4) = sub_1000E4544(v42, v38, &v43);
    _os_log_impl(&_mh_execute_header, v35, v36, "[%s] Exited", v37, 0xCu);
    sub_100019CCC(v39);
  }

  _Block_release(aBlock);
  _Block_release(aBlock);
}

uint64_t sub_1001860E4(int a1, int a2, int a3, int a4, char a5, int a6, int a7, int a8, void *aBlock)
{
  _Block_copy(aBlock);
  v9 = sub_10004B31C();
  v11 = v10;
  v12 = [objc_opt_self() currentConnection];
  v39 = v9;
  if (v12)
  {
    v13 = v12;
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v14 = sub_1001F6688();
    sub_100019C94(v14, qword_1002E6180);

    v15 = v13;
    v16 = sub_1001F6668();
    v17 = sub_1001F72B8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v18 = 136315650;
      *(v18 + 4) = sub_1000E4544(v9, v11, &v41);
      *(v18 + 12) = 2080;
      v19 = sub_1001F77E8();
      v21 = sub_1000E4544(v19, v20, &v41);

      *(v18 + 14) = v21;
      *(v18 + 22) = 2112;
      *(v18 + 24) = v15;
      *v38 = v13;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v16, v17, "[%s] Entered %s from %@", v18, 0x20u);
      sub_10004BDE8(v38, &unk_1002BA650);

      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v23 = sub_1001F6688();
    sub_100019C94(v23, qword_1002E6180);

    v24 = sub_1001F6668();
    v25 = sub_1001F72B8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v26 = 136315394;
      *(v26 + 4) = sub_1000E4544(v9, v11, &v41);
      *(v26 + 12) = 2080;
      v27 = sub_1001F77E8();
      v29 = v11;
      v30 = sub_1000E4544(v27, v28, &v41);

      *(v26 + 14) = v30;
      v11 = v29;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%s] Entered %s", v26, 0x16u);
      swift_arrayDestroy();
    }
  }

  _Block_copy(aBlock);
  if (qword_1002AC468 != -1)
  {
    swift_once();
  }

  if (sub_1000FA204(a5 & 1))
  {
    v31 = sub_1001F61A8();
  }

  else
  {
    v31 = 0;
  }

  (*(aBlock + 2))(aBlock, v31);

  _Block_release(aBlock);
  if (qword_1002AC510 != -1)
  {
    swift_once();
  }

  v32 = sub_1001F6688();
  sub_100019C94(v32, qword_1002E6180);

  v33 = sub_1001F6668();
  v34 = sub_1001F72B8();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v41 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_1000E4544(v39, v11, &v41);
    _os_log_impl(&_mh_execute_header, v33, v34, "[%s] Exited", v35, 0xCu);
    sub_100019CCC(v36);
  }

  _Block_release(aBlock);
  _Block_release(aBlock);
}

uint64_t sub_100186698(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, void *aBlock)
{
  _Block_copy(aBlock);
  v11 = sub_10004B31C();
  v13 = v12;
  v14 = [objc_opt_self() currentConnection];
  v41 = v11;
  if (v14)
  {
    v15 = v14;
    v42 = a6;
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v16 = sub_1001F6688();
    sub_100019C94(v16, qword_1002E6180);

    v17 = v15;
    v18 = sub_1001F6668();
    v19 = sub_1001F72B8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v20 = 136315650;
      *(v20 + 4) = sub_1000E4544(v11, v13, &v46);
      *(v20 + 12) = 2080;
      v21 = sub_1001F77E8();
      v23 = sub_1000E4544(v21, v22, &v46);

      *(v20 + 14) = v23;
      *(v20 + 22) = 2112;
      *(v20 + 24) = v17;
      *v40 = v15;
      v24 = v17;
      _os_log_impl(&_mh_execute_header, v18, v19, "[%s] Entered %s from %@", v20, 0x20u);
      sub_10004BDE8(v40, &unk_1002BA650);

      swift_arrayDestroy();
    }

    else
    {
    }

    a6 = v42;
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v25 = sub_1001F6688();
    sub_100019C94(v25, qword_1002E6180);

    v26 = sub_1001F6668();
    v27 = sub_1001F72B8();

    if (os_log_type_enabled(v26, v27))
    {
      v43 = a6;
      v28 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v28 = 136315394;
      *(v28 + 4) = sub_1000E4544(v11, v13, &v46);
      *(v28 + 12) = 2080;
      v29 = sub_1001F77E8();
      v31 = v13;
      v32 = sub_1000E4544(v29, v30, &v46);

      *(v28 + 14) = v32;
      v13 = v31;
      _os_log_impl(&_mh_execute_header, v26, v27, "[%s] Entered %s", v28, 0x16u);
      swift_arrayDestroy();

      a6 = v43;
    }
  }

  _Block_copy(aBlock);
  if (qword_1002AC468 != -1)
  {
    swift_once();
  }

  if (sub_1000FA4D8(a5, a6, a7, a8 & 1))
  {
    v33 = sub_1001F61A8();
  }

  else
  {
    v33 = 0;
  }

  (*(aBlock + 2))(aBlock, v33);

  _Block_release(aBlock);
  if (qword_1002AC510 != -1)
  {
    swift_once();
  }

  v34 = sub_1001F6688();
  sub_100019C94(v34, qword_1002E6180);

  v35 = sub_1001F6668();
  v36 = sub_1001F72B8();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v46 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_1000E4544(v41, v13, &v46);
    _os_log_impl(&_mh_execute_header, v35, v36, "[%s] Exited", v37, 0xCu);
    sub_100019CCC(v38);
  }

  _Block_release(aBlock);
  _Block_release(aBlock);
}

void sub_100186C50(int a1, int a2, int a3, int a4, int a5, int a6, void *aBlock)
{
  _Block_copy(aBlock);
  v36 = sub_10004B31C();
  v9 = v8;
  v10 = [objc_opt_self() currentConnection];
  v11 = &off_1002AC000;
  if (v10)
  {
    v12 = v10;
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v13 = sub_1001F6688();
    sub_100019C94(v13, qword_1002E6180);

    v14 = v12;
    v15 = sub_1001F6668();
    v16 = sub_1001F72B8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v17 = 136315650;
      *(v17 + 4) = sub_1000E4544(v36, v9, &v37);
      *(v17 + 12) = 2080;
      v18 = sub_1001F77E8();
      v20 = v9;
      v21 = sub_1000E4544(v18, v19, &v37);

      *(v17 + 14) = v21;
      v9 = v20;
      v11 = &off_1002AC000;
      *(v17 + 22) = 2112;
      *(v17 + 24) = v14;
      *v35 = v12;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v15, v16, "[%s] Entered %s from %@", v17, 0x20u);
      sub_10004BDE8(v35, &unk_1002BA650);

      swift_arrayDestroy();

      goto LABEL_12;
    }
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v23 = sub_1001F6688();
    sub_100019C94(v23, qword_1002E6180);

    v15 = sub_1001F6668();
    v24 = sub_1001F72B8();

    if (os_log_type_enabled(v15, v24))
    {
      v25 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v25 = 136315394;
      *(v25 + 4) = sub_1000E4544(v36, v9, &v37);
      *(v25 + 12) = 2080;
      v26 = sub_1001F77E8();
      v28 = sub_1000E4544(v26, v27, &v37);

      *(v25 + 14) = v28;
      v11 = &off_1002AC000;
      _os_log_impl(&_mh_execute_header, v15, v24, "[%s] Entered %s", v25, 0x16u);
      swift_arrayDestroy();
    }
  }

LABEL_12:
  _Block_copy(aBlock);
  if (qword_1002AC468 != -1)
  {
    swift_once();
  }

  sub_10001AE68((qword_1002E60C8 + 104), *(qword_1002E60C8 + 128));
  sub_10008CEC4();
  (*(aBlock + 2))(aBlock, 0);
  _Block_release(aBlock);
  if (v11[162] != -1)
  {
    swift_once();
  }

  v29 = sub_1001F6688();
  sub_100019C94(v29, qword_1002E6180);

  v30 = sub_1001F6668();
  v31 = sub_1001F72B8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = v9;
    v34 = swift_slowAlloc();
    v37 = v34;
    *v32 = 136315138;
    *(v32 + 4) = sub_1000E4544(v36, v33, &v37);
    _os_log_impl(&_mh_execute_header, v30, v31, "[%s] Exited", v32, 0xCu);
    sub_100019CCC(v34);
  }

  _Block_release(aBlock);
  _Block_release(aBlock);
}

uint64_t sub_1001871EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, void (**a10)(void, void))
{
  _Block_copy(a10);
  v42 = sub_10004B31C();
  v12 = v11;
  v13 = [objc_opt_self() currentConnection];
  v14 = &off_1002AC000;
  if (v13)
  {
    v15 = v13;
    v41 = a7;
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v16 = sub_1001F6688();
    sub_100019C94(v16, qword_1002E6180);

    v17 = v15;
    v18 = sub_1001F6668();
    v19 = sub_1001F72B8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v20 = 136315650;
      *(v20 + 4) = sub_1000E4544(v42, v12, &v45);
      *(v20 + 12) = 2080;
      v21 = sub_1001F77E8();
      v23 = sub_1000E4544(v21, v22, &v45);

      *(v20 + 14) = v23;
      *(v20 + 22) = 2112;
      *(v20 + 24) = v17;
      *v39 = v15;
      v24 = v17;
      _os_log_impl(&_mh_execute_header, v18, v19, "[%s] Entered %s from %@", v20, 0x20u);
      sub_10004BDE8(v39, &unk_1002BA650);

      swift_arrayDestroy();

      v14 = &off_1002AC000;
    }

    else
    {
    }

    a7 = v41;
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v25 = sub_1001F6688();
    sub_100019C94(v25, qword_1002E6180);

    v26 = sub_1001F6668();
    v27 = sub_1001F72B8();

    if (os_log_type_enabled(v26, v27))
    {
      v40 = v27;
      v28 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v28 = 136315394;
      *(v28 + 4) = sub_1000E4544(v42, v12, &v45);
      *(v28 + 12) = 2080;
      v29 = sub_1001F77E8();
      v31 = sub_1000E4544(v29, v30, &v45);

      *(v28 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v26, v40, "[%s] Entered %s", v28, 0x16u);
      swift_arrayDestroy();

      v14 = &off_1002AC000;
    }

    else
    {
    }
  }

  _Block_copy(a10);
  if (qword_1002AC468 != -1)
  {
    swift_once();
  }

  if (sub_1000FA5B8(a5, a6, a7 & 1))
  {
    v32 = sub_1001F61A8();
  }

  else
  {
    v32 = 0;
  }

  (a10)[2](a10, v32);

  _Block_release(a10);
  if (v14[162] != -1)
  {
    swift_once();
  }

  v33 = sub_1001F6688();
  sub_100019C94(v33, qword_1002E6180);

  v34 = sub_1001F6668();
  v35 = sub_1001F72B8();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v45 = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_1000E4544(v42, v12, &v45);
    _os_log_impl(&_mh_execute_header, v34, v35, "[%s] Exited", v36, 0xCu);
    sub_100019CCC(v37);
  }

  _Block_release(a10);
  _Block_release(a10);
}

void sub_1001877C4(int a1, int a2, int a3, int a4, void *aBlock)
{
  _Block_copy(aBlock);
  v6 = sub_10004B31C();
  v8 = v7;
  v9 = [objc_opt_self() currentConnection];
  v10 = &off_1002AC000;
  v38 = v6;
  if (v9)
  {
    v11 = v9;
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v12 = sub_1001F6688();
    sub_100019C94(v12, qword_1002E6180);

    v13 = v11;
    v14 = sub_1001F6668();
    v15 = sub_1001F72B8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v16 = 136315650;
      *(v16 + 4) = sub_1000E4544(v6, v8, &v39);
      *(v16 + 12) = 2080;
      v17 = sub_1001F77E8();
      v19 = sub_1000E4544(v17, v18, &v39);

      *(v16 + 14) = v19;
      *(v16 + 22) = 2112;
      *(v16 + 24) = v13;
      *v37 = v11;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%s] Entered %s from %@", v16, 0x20u);
      sub_10004BDE8(v37, &unk_1002BA650);

      swift_arrayDestroy();
    }

    else
    {
    }

    v10 = &off_1002AC000;
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v21 = sub_1001F6688();
    sub_100019C94(v21, qword_1002E6180);

    v22 = sub_1001F6668();
    v23 = sub_1001F72B8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v24 = 136315394;
      *(v24 + 4) = sub_1000E4544(v6, v8, &v39);
      *(v24 + 12) = 2080;
      v25 = sub_1001F77E8();
      v27 = v8;
      v28 = sub_1000E4544(v25, v26, &v39);

      *(v24 + 14) = v28;
      v8 = v27;
      _os_log_impl(&_mh_execute_header, v22, v23, "[%s] Entered %s", v24, 0x16u);
      swift_arrayDestroy();
      v10 = &off_1002AC000;
    }
  }

  _Block_copy(aBlock);
  if (qword_1002AC468 != -1)
  {
    swift_once();
  }

  v29 = qword_1002E60C8;
  v30 = *(*(qword_1002E60C8 + 48) + 16);

  os_unfair_lock_lock(v30);
  v31 = *(v29 + 40);
  os_unfair_lock_unlock(v30);

  (*(aBlock + 2))(aBlock, v31);
  _Block_release(aBlock);
  if (v10[162] != -1)
  {
    swift_once();
  }

  v32 = sub_1001F6688();
  sub_100019C94(v32, qword_1002E6180);

  v33 = sub_1001F6668();
  v34 = sub_1001F72B8();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v39 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_1000E4544(v38, v8, &v39);
    _os_log_impl(&_mh_execute_header, v33, v34, "[%s] Exited", v35, 0xCu);
    sub_100019CCC(v36);
  }

  _Block_release(aBlock);
  _Block_release(aBlock);
}

void sub_100187D34(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, void *aBlock)
{
  v7 = aBlock;
  _Block_copy(aBlock);
  v10 = sub_10004B31C();
  v12 = v11;
  v13 = [objc_opt_self() currentConnection];
  if (v13)
  {
    v14 = v13;
    v39 = a6;
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v15 = sub_1001F6688();
    sub_100019C94(v15, qword_1002E6180);

    v16 = v14;
    v17 = sub_1001F6668();
    v18 = sub_1001F72B8();

    if (os_log_type_enabled(v17, v18))
    {
      v38 = v7;
      v19 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v19 = 136315650;
      *(v19 + 4) = sub_1000E4544(v10, v12, &v40);
      *(v19 + 12) = 2080;
      v20 = sub_1001F77E8();
      v22 = sub_1000E4544(v20, v21, &v40);

      *(v19 + 14) = v22;
      *(v19 + 22) = 2112;
      *(v19 + 24) = v16;
      *v37 = v14;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%s] Entered %s from %@", v19, 0x20u);
      sub_10004BDE8(v37, &unk_1002BA650);

      swift_arrayDestroy();

      v7 = v38;
    }

    else
    {
    }

    a6 = v39;
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v24 = sub_1001F6688();
    sub_100019C94(v24, qword_1002E6180);

    v25 = sub_1001F6668();
    v26 = sub_1001F72B8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v27 = 136315394;
      *(v27 + 4) = sub_1000E4544(v10, v12, &v40);
      *(v27 + 12) = 2080;
      v28 = sub_1001F77E8();
      v30 = sub_1000E4544(v28, v29, &v40);

      *(v27 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%s] Entered %s", v27, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  _Block_copy(v7);
  sub_100182E9C(v10, v12, a5, a6, v7);
  if (qword_1002AC510 != -1)
  {
    swift_once();
  }

  v31 = sub_1001F6688();
  sub_100019C94(v31, qword_1002E6180);

  v32 = sub_1001F6668();
  v33 = sub_1001F72B8();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = v10;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v40 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_1000E4544(v34, v12, &v40);
    _os_log_impl(&_mh_execute_header, v32, v33, "[%s] Exited", v35, 0xCu);
    sub_100019CCC(v36);
  }

  _Block_release(v7);
  _Block_release(v7);
}

uint64_t sub_1001882B0(int a1, int a2, int a3, int a4, int a5, int a6, void *aBlock, void (*a8)(void))
{
  v9 = aBlock;
  _Block_copy(aBlock);
  v10 = sub_10004B31C();
  v12 = v11;
  v13 = [objc_opt_self() currentConnection];
  if (v13)
  {
    v14 = v13;
    if (qword_1002AC510 != -1)
    {
      sub_10001B230();
    }

    v15 = sub_1001F6688();
    sub_100019C94(v15, qword_1002E6180);

    v16 = v14;
    v17 = sub_1001F6668();
    v18 = sub_1001F72B8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = sub_10003A894();
      v50 = swift_slowAlloc();
      v52 = sub_10018DA44();
      *v19 = 136315650;
      v20 = sub_100075518();
      *(v19 + 4) = sub_1000E4544(v20, v21, v22);
      *(v19 + 12) = 2080;
      v23 = sub_1001F77E8();
      v51 = v18;
      v25 = v17;
      v26 = a8;
      v27 = sub_1000E4544(v23, v24, &v52);

      *(v19 + 14) = v27;
      a8 = v26;
      *(v19 + 22) = 2112;
      *(v19 + 24) = v16;
      *v50 = v14;
      v28 = v16;
      _os_log_impl(&_mh_execute_header, v25, v51, "[%s] Entered %s from %@", v19, 0x20u);
      sub_10004BDE8(v50, &unk_1002BA650);
      sub_10003A72C();
      swift_arrayDestroy();
      sub_10003A72C();
      sub_10003A72C();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      sub_10001B230();
    }

    v29 = sub_1001F6688();
    sub_100019C94(v29, qword_1002E6180);

    v30 = sub_1001F6668();
    v31 = sub_1001F72B8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v52 = sub_10018DA44();
      *v32 = 136315394;
      v33 = sub_100075518();
      *(v32 + 4) = sub_1000E4544(v33, v34, v35);
      *(v32 + 12) = 2080;
      v36 = sub_1001F77E8();
      v38 = v9;
      v39 = sub_1000E4544(v36, v37, &v52);

      *(v32 + 14) = v39;
      v9 = v38;
      _os_log_impl(&_mh_execute_header, v30, v31, "[%s] Entered %s", v32, 0x16u);
      swift_arrayDestroy();
      sub_10003A72C();
      sub_10003A72C();
    }
  }

  _Block_copy(v9);
  v40 = sub_100075518();
  a8(v40);
  if (qword_1002AC510 != -1)
  {
    sub_10001B230();
  }

  v41 = sub_1001F6688();
  sub_100019C94(v41, qword_1002E6180);

  v42 = sub_1001F6668();
  v43 = sub_1001F72B8();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = v10;
    v45 = swift_slowAlloc();
    v46 = sub_10003A894();
    v52 = v46;
    *v45 = 136315138;
    *(v45 + 4) = sub_1000E4544(v44, v12, &v52);
    sub_10018DA24(&_mh_execute_header, v47, v48, "[%s] Exited");
    sub_100019CCC(v46);
    sub_10003A72C();
    sub_10003A72C();
  }

  _Block_release(v9);
  _Block_release(v9);
}

uint64_t sub_100188780(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, void *aBlock, uint64_t (*a9)(uint64_t, uint64_t, uint64_t))
{
  _Block_copy(aBlock);
  v12 = sub_10004B31C();
  v14 = v13;
  v15 = [objc_opt_self() currentConnection];
  v16 = &off_1002AC000;
  v49 = v12;
  if (v15)
  {
    v17 = v15;
    if (qword_1002AC510 != -1)
    {
      sub_10001B230();
    }

    v18 = sub_1001F6688();
    sub_100019C94(v18, qword_1002E6180);

    v19 = v17;
    v20 = sub_1001F6668();
    v21 = sub_1001F72B8();

    if (os_log_type_enabled(v20, v21))
    {
      v47 = a6;
      v22 = sub_10003A894();
      v48 = a7;
      v46 = swift_slowAlloc();
      v51 = sub_10018DA44();
      *v22 = 136315650;
      *(v22 + 4) = sub_1000E4544(v12, v14, &v51);
      *(v22 + 12) = 2080;
      v23 = sub_1001F77E8();
      v25 = v14;
      v26 = sub_1000E4544(v23, v24, &v51);

      *(v22 + 14) = v26;
      v14 = v25;
      *(v22 + 22) = 2112;
      *(v22 + 24) = v19;
      *v46 = v17;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, v20, v21, "[%s] Entered %s from %@", v22, 0x20u);
      sub_10004BDE8(v46, &unk_1002BA650);
      a7 = v48;
      sub_10003A72C();
      swift_arrayDestroy();
      sub_10003A72C();
      a6 = v47;
      sub_10003A72C();
    }

    else
    {
    }

    v16 = &off_1002AC000;
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      sub_10001B230();
    }

    v28 = sub_1001F6688();
    sub_100019C94(v28, qword_1002E6180);

    v29 = sub_1001F6668();
    v30 = sub_1001F72B8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v12;
      v32 = swift_slowAlloc();
      v51 = sub_10018DA44();
      *v32 = 136315394;
      *(v32 + 4) = sub_1000E4544(v31, v14, &v51);
      *(v32 + 12) = 2080;
      v33 = sub_1001F77E8();
      v35 = sub_1000E4544(v33, v34, &v51);
      v16 = &off_1002AC000;

      *(v32 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "[%s] Entered %s", v32, 0x16u);
      swift_arrayDestroy();
      sub_10003A72C();
      sub_10003A72C();
    }
  }

  _Block_copy(aBlock);
  if (qword_1002AC468 != -1)
  {
    sub_10018D920();
    swift_once();
  }

  if (a9(a5, a6, a7))
  {
    v36 = sub_1001F61A8();
  }

  else
  {
    v36 = 0;
  }

  (*(aBlock + 2))(aBlock, v36);

  _Block_release(aBlock);
  if (v16[162] != -1)
  {
    sub_10001B230();
  }

  v37 = sub_1001F6688();
  sub_100019C94(v37, qword_1002E6180);

  v38 = sub_1001F6668();
  v39 = sub_1001F72B8();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = v14;
    v42 = sub_10003A894();
    v51 = v42;
    *v40 = 136315138;
    *(v40 + 4) = sub_1000E4544(v49, v41, &v51);
    sub_10018DA24(&_mh_execute_header, v43, v44, "[%s] Exited");
    sub_100019CCC(v42);
    sub_10003A72C();
    sub_10003A72C();
  }

  _Block_release(aBlock);
  _Block_release(aBlock);
}

uint64_t sub_100188C88(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *aBlock)
{
  v11 = aBlock;
  _Block_copy(aBlock);
  v12 = sub_10004B31C();
  v14 = v13;
  v15 = [objc_opt_self() currentConnection];
  v16 = &off_1002AC000;
  v46 = v12;
  if (v15)
  {
    v17 = v15;
    v47 = a7;
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v18 = sub_1001F6688();
    sub_100019C94(v18, qword_1002E6180);

    v19 = v17;
    v20 = sub_1001F6668();
    v21 = sub_1001F72B8();

    v45 = v21;
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v22 = 136315650;
      *(v22 + 4) = sub_1000E4544(v12, v14, &v51);
      *(v22 + 12) = 2080;
      v23 = sub_1001F77E8();
      v25 = sub_1000E4544(v23, v24, &v51);

      *(v22 + 14) = v25;
      *(v22 + 22) = 2112;
      *(v22 + 24) = v19;
      *v44 = v17;
      v26 = v19;
      _os_log_impl(&_mh_execute_header, v20, v45, "[%s] Entered %s from %@", v22, 0x20u);
      sub_10004BDE8(v44, &unk_1002BA650);

      swift_arrayDestroy();

      v16 = &off_1002AC000;
    }

    else
    {
    }

    a7 = v47;
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v27 = sub_1001F6688();
    sub_100019C94(v27, qword_1002E6180);

    v28 = sub_1001F6668();
    v29 = sub_1001F72B8();

    if (os_log_type_enabled(v28, v29))
    {
      v48 = a7;
      v30 = v12;
      v31 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v31 = 136315394;
      *(v31 + 4) = sub_1000E4544(v30, v14, &v51);
      *(v31 + 12) = 2080;
      v32 = sub_1001F77E8();
      v34 = v14;
      v35 = a8;
      v36 = sub_1000E4544(v32, v33, &v51);

      *(v31 + 14) = v36;
      a8 = v35;
      v14 = v34;
      v11 = aBlock;
      a7 = v48;
      _os_log_impl(&_mh_execute_header, v28, v29, "[%s] Entered %s", v31, 0x16u);
      swift_arrayDestroy();
    }

    v16 = &off_1002AC000;
  }

  _Block_copy(v11);
  if (qword_1002AC468 != -1)
  {
    swift_once();
  }

  if (sub_1000FB1DC(a5, a6, a7, a8))
  {
    v37 = sub_1001F61A8();
  }

  else
  {
    v37 = 0;
  }

  (*(v11 + 2))(v11, v37);

  _Block_release(v11);
  if (v16[162] != -1)
  {
    swift_once();
  }

  v38 = sub_1001F6688();
  sub_100019C94(v38, qword_1002E6180);

  v39 = sub_1001F6668();
  v40 = sub_1001F72B8();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v51 = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_1000E4544(v46, v14, &v51);
    _os_log_impl(&_mh_execute_header, v39, v40, "[%s] Exited", v41, 0xCu);
    sub_100019CCC(v42);
  }

  _Block_release(v11);
  _Block_release(v11);
}

void sub_100189244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, void (**a10)(void, void))
{
  _Block_copy(a10);
  v14 = sub_10004B31C();
  v16 = v15;
  v17 = [objc_opt_self() currentConnection];
  if (v17)
  {
    v18 = v17;
    v47 = a6;
    v51 = a5;
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v19 = sub_1001F6688();
    sub_100019C94(v19, qword_1002E6180);

    v20 = v18;
    v21 = sub_1001F6668();
    v22 = sub_1001F72B8();

    if (os_log_type_enabled(v21, v22))
    {
      v46 = v14;
      v23 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v23 = 136315650;
      *(v23 + 4) = sub_1000E4544(v46, v16, &v53);
      *(v23 + 12) = 2080;
      v24 = sub_1001F77E8();
      log = v16;
      v26 = v21;
      v27 = a7;
      v28 = sub_1000E4544(v24, v25, &v53);

      *(v23 + 14) = v28;
      a7 = v27;
      *(v23 + 22) = 2112;
      *(v23 + 24) = v20;
      *v45 = v18;
      v29 = v20;
      _os_log_impl(&_mh_execute_header, v26, v22, "[%s] Entered %s from %@", v23, 0x20u);
      sub_10004BDE8(v45, &unk_1002BA650);

      swift_arrayDestroy();

      v14 = v46;

      v16 = log;
    }

    else
    {
    }

    a5 = v51;
    v30 = a9;
    a6 = v47;
  }

  else
  {
    v30 = a9;
    v52 = a7;
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v31 = sub_1001F6688();
    sub_100019C94(v31, qword_1002E6180);

    v32 = sub_1001F6668();
    v33 = sub_1001F72B8();

    if (os_log_type_enabled(v32, v33))
    {
      v48 = a8;
      v34 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v34 = 136315394;
      *(v34 + 4) = sub_1000E4544(v14, v16, &v53);
      *(v34 + 12) = 2080;
      v35 = sub_1001F77E8();
      loga = v32;
      v37 = v33;
      v38 = a6;
      v39 = sub_1000E4544(v35, v36, &v53);

      *(v34 + 14) = v39;
      a6 = v38;
      _os_log_impl(&_mh_execute_header, loga, v37, "[%s] Entered %s", v34, 0x16u);
      swift_arrayDestroy();

      a8 = v48;
    }

    else
    {
    }

    a7 = v52;
  }

  _Block_copy(a10);
  sub_10018C558();
  if (qword_1002AC468 != -1)
  {
    swift_once();
  }

  sub_1000FB238(a6, a7, a8, v30);
  a10[2](a10, 0);
  _Block_release(a10);
  if (qword_1002AC510 != -1)
  {
    swift_once();
  }

  v40 = sub_1001F6688();
  sub_100019C94(v40, qword_1002E6180);

  v41 = sub_1001F6668();
  v42 = sub_1001F72B8();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v53 = v44;
    *v43 = 136315138;
    *(v43 + 4) = sub_1000E4544(v14, v16, &v53);
    _os_log_impl(&_mh_execute_header, v41, v42, "[%s] Exited", v43, 0xCu);
    sub_100019CCC(v44);
  }

  _Block_release(a10);
  _Block_release(a10);
}

void sub_100189844(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, void *aBlock)
{
  _Block_copy(aBlock);
  v12 = sub_10004B31C();
  v14 = v13;
  v15 = [objc_opt_self() currentConnection];
  v51 = v12;
  if (v15)
  {
    v16 = v15;
    v50 = a6;
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v17 = sub_1001F6688();
    sub_100019C94(v17, qword_1002E6180);

    v18 = v16;
    v19 = sub_1001F6668();
    v20 = sub_1001F72B8();

    if (os_log_type_enabled(v19, v20))
    {
      v48 = a5;
      v21 = swift_slowAlloc();
      v49 = a7;
      v47 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v21 = 136315650;
      *(v21 + 4) = sub_1000E4544(v12, v14, &v52);
      *(v21 + 12) = 2080;
      v22 = sub_1001F77E8();
      v24 = v14;
      v25 = sub_1000E4544(v22, v23, &v52);

      *(v21 + 14) = v25;
      v14 = v24;
      *(v21 + 22) = 2112;
      *(v21 + 24) = v18;
      *v47 = v16;
      v26 = v18;
      _os_log_impl(&_mh_execute_header, v19, v20, "[%s] Entered %s from %@", v21, 0x20u);
      sub_10004BDE8(v47, &unk_1002BA650);
      a7 = v49;

      swift_arrayDestroy();

      a5 = v48;
    }

    else
    {
    }

    a6 = v50;
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v27 = sub_1001F6688();
    sub_100019C94(v27, qword_1002E6180);

    v28 = sub_1001F6668();
    v29 = sub_1001F72B8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = v12;
      v31 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v31 = 136315394;
      *(v31 + 4) = sub_1000E4544(v30, v14, &v52);
      *(v31 + 12) = 2080;
      v32 = sub_1001F77E8();
      v34 = sub_1000E4544(v32, v33, &v52);

      *(v31 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "[%s] Entered %s", v31, 0x16u);
      swift_arrayDestroy();
    }
  }

  _Block_copy(aBlock);
  if (qword_1002AC468 != -1)
  {
    swift_once();
  }

  sub_10001AE68((qword_1002E60C8 + 64), *(qword_1002E60C8 + 88));
  v40 = sub_100079640(a5, a6, a7, v35, v36, v37, v38, v39);
  (*(aBlock + 2))(aBlock, v40);
  _Block_release(aBlock);
  if (qword_1002AC510 != -1)
  {
    swift_once();
  }

  v41 = sub_1001F6688();
  sub_100019C94(v41, qword_1002E6180);

  v42 = sub_1001F6668();
  v43 = sub_1001F72B8();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = v14;
    v46 = swift_slowAlloc();
    v52 = v46;
    *v44 = 136315138;
    *(v44 + 4) = sub_1000E4544(v51, v45, &v52);
    _os_log_impl(&_mh_execute_header, v42, v43, "[%s] Exited", v44, 0xCu);
    sub_100019CCC(v46);
  }

  _Block_release(aBlock);
  _Block_release(aBlock);
}

uint64_t sub_100189DE8(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *aBlock)
{
  _Block_copy(aBlock);
  v11 = sub_10004B31C();
  v13 = v12;
  v14 = [objc_opt_self() currentConnection];
  v41 = v11;
  if (v14)
  {
    v15 = v14;
    v42 = a7;
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v16 = sub_1001F6688();
    sub_100019C94(v16, qword_1002E6180);

    v17 = v15;
    v18 = sub_1001F6668();
    v19 = sub_1001F72B8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v20 = 136315650;
      *(v20 + 4) = sub_1000E4544(v11, v13, &v46);
      *(v20 + 12) = 2080;
      v21 = sub_1001F77E8();
      v23 = sub_1000E4544(v21, v22, &v46);

      *(v20 + 14) = v23;
      *(v20 + 22) = 2112;
      *(v20 + 24) = v17;
      *v40 = v15;
      v24 = v17;
      _os_log_impl(&_mh_execute_header, v18, v19, "[%s] Entered %s from %@", v20, 0x20u);
      sub_10004BDE8(v40, &unk_1002BA650);

      swift_arrayDestroy();
    }

    else
    {
    }

    a7 = v42;
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v25 = sub_1001F6688();
    sub_100019C94(v25, qword_1002E6180);

    v26 = sub_1001F6668();
    v27 = sub_1001F72B8();

    if (os_log_type_enabled(v26, v27))
    {
      v43 = a7;
      v28 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v28 = 136315394;
      *(v28 + 4) = sub_1000E4544(v11, v13, &v46);
      *(v28 + 12) = 2080;
      v29 = sub_1001F77E8();
      v31 = v13;
      v32 = sub_1000E4544(v29, v30, &v46);

      *(v28 + 14) = v32;
      v13 = v31;
      _os_log_impl(&_mh_execute_header, v26, v27, "[%s] Entered %s", v28, 0x16u);
      swift_arrayDestroy();

      a7 = v43;
    }
  }

  _Block_copy(aBlock);
  if (qword_1002AC468 != -1)
  {
    swift_once();
  }

  if (sub_1000FBE28(a5, a6, a7, a8))
  {
    v33 = sub_1001F61A8();
  }

  else
  {
    v33 = 0;
  }

  (*(aBlock + 2))(aBlock, v33);

  _Block_release(aBlock);
  if (qword_1002AC510 != -1)
  {
    swift_once();
  }

  v34 = sub_1001F6688();
  sub_100019C94(v34, qword_1002E6180);

  v35 = sub_1001F6668();
  v36 = sub_1001F72B8();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v46 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_1000E4544(v41, v13, &v46);
    _os_log_impl(&_mh_execute_header, v35, v36, "[%s] Exited", v37, 0xCu);
    sub_100019CCC(v38);
  }

  _Block_release(aBlock);
  _Block_release(aBlock);
}

uint64_t sub_10018A394(int a1, int a2, int a3, int a4, uint64_t a5, int a6, int a7, void *aBlock)
{
  _Block_copy(aBlock);
  v10 = sub_10004B31C();
  v12 = v11;
  v13 = [objc_opt_self() currentConnection];
  v43 = v10;
  if (v13)
  {
    v14 = v13;
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v15 = sub_1001F6688();
    sub_100019C94(v15, qword_1002E6180);

    v16 = v14;
    v17 = sub_1001F6668();
    v18 = sub_1001F72B8();

    if (os_log_type_enabled(v17, v18))
    {
      v42 = a5;
      v19 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v19 = 136315650;
      *(v19 + 4) = sub_1000E4544(v10, v12, &v44);
      *(v19 + 12) = 2080;
      v20 = sub_1001F77E8();
      v22 = v12;
      v23 = sub_1000E4544(v20, v21, &v44);

      *(v19 + 14) = v23;
      v12 = v22;
      *(v19 + 22) = 2112;
      *(v19 + 24) = v16;
      *v41 = v14;
      v24 = v16;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%s] Entered %s from %@", v19, 0x20u);
      sub_10004BDE8(v41, &unk_1002BA650);

      swift_arrayDestroy();

      a5 = v42;
    }

    else
    {
    }
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v25 = sub_1001F6688();
    sub_100019C94(v25, qword_1002E6180);

    v26 = sub_1001F6668();
    v27 = sub_1001F72B8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = v10;
      v29 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v29 = 136315394;
      *(v29 + 4) = sub_1000E4544(v28, v12, &v44);
      *(v29 + 12) = 2080;
      v30 = sub_1001F77E8();
      v32 = sub_1000E4544(v30, v31, &v44);

      *(v29 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "[%s] Entered %s", v29, 0x16u);
      swift_arrayDestroy();
    }
  }

  _Block_copy(aBlock);
  if (qword_1002AC468 != -1)
  {
    swift_once();
  }

  sub_10001AE68((qword_1002E60C8 + 64), *(qword_1002E60C8 + 88));
  sub_100079810(a5);
  v33 = sub_1001F6B48();
  (*(aBlock + 2))(aBlock, v33);

  _Block_release(aBlock);
  if (qword_1002AC510 != -1)
  {
    swift_once();
  }

  v34 = sub_1001F6688();
  sub_100019C94(v34, qword_1002E6180);

  v35 = sub_1001F6668();
  v36 = sub_1001F72B8();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = v12;
    v39 = swift_slowAlloc();
    v44 = v39;
    *v37 = 136315138;
    *(v37 + 4) = sub_1000E4544(v43, v38, &v44);
    _os_log_impl(&_mh_execute_header, v35, v36, "[%s] Exited", v37, 0xCu);
    sub_100019CCC(v39);
  }

  _Block_release(aBlock);
  _Block_release(aBlock);
}

uint64_t sub_10018A948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void (**a13)(void, void))
{
  _Block_copy(a13);
  v48 = sub_10004B31C();
  v16 = v15;
  v17 = [objc_opt_self() currentConnection];
  v49 = v16;
  if (v17)
  {
    v18 = v17;
    v45 = a7;
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v19 = sub_1001F6688();
    sub_100019C94(v19, qword_1002E6180);

    v20 = v16;
    v21 = v18;
    v22 = sub_1001F6668();
    v23 = sub_1001F72B8();

    if (os_log_type_enabled(v22, v23))
    {
      v44 = a8;
      v24 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v24 = 136315650;
      *(v24 + 4) = sub_1000E4544(v48, v20, &v51);
      *(v24 + 12) = 2080;
      v25 = sub_1001F77E8();
      v27 = sub_1000E4544(v25, v26, &v51);

      *(v24 + 14) = v27;
      *(v24 + 22) = 2112;
      *(v24 + 24) = v21;
      *v43 = v18;
      v28 = v21;
      _os_log_impl(&_mh_execute_header, v22, v23, "[%s] Entered %s from %@", v24, 0x20u);
      sub_10004BDE8(v43, &unk_1002BA650);

      swift_arrayDestroy();

      a8 = v44;
    }

    else
    {
    }

    a7 = v45;
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v29 = sub_1001F6688();
    sub_100019C94(v29, qword_1002E6180);

    v30 = sub_1001F6668();
    v31 = sub_1001F72B8();

    if (os_log_type_enabled(v30, v31))
    {
      v46 = a7;
      v32 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v32 = 136315394;
      *(v32 + 4) = sub_1000E4544(v48, v16, &v51);
      *(v32 + 12) = 2080;
      v33 = sub_1001F77E8();
      v35 = sub_1000E4544(v33, v34, &v51);

      *(v32 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v30, v31, "[%s] Entered %s", v32, 0x16u);
      swift_arrayDestroy();

      a7 = v46;
    }
  }

  _Block_copy(a13);
  if (qword_1002AC468 != -1)
  {
    swift_once();
  }

  if (sub_1000FBB94(a5, a6, a7, a8, a9))
  {
    v36 = sub_1001F61A8();
  }

  else
  {
    v36 = 0;
  }

  (a13)[2](a13, v36);

  _Block_release(a13);
  if (qword_1002AC510 != -1)
  {
    swift_once();
  }

  v37 = sub_1001F6688();
  sub_100019C94(v37, qword_1002E6180);

  v38 = sub_1001F6668();
  v39 = sub_1001F72B8();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v51 = v41;
    *v40 = 136315138;
    *(v40 + 4) = sub_1000E4544(v48, v49, &v51);
    _os_log_impl(&_mh_execute_header, v38, v39, "[%s] Exited", v40, 0xCu);
    sub_100019CCC(v41);
  }

  _Block_release(a13);
  _Block_release(a13);
}

uint64_t sub_10018AF4C(int a1, int a2, int a3, int a4, uint64_t a5, void *aBlock)
{
  _Block_copy(aBlock);
  v6 = sub_10004B31C();
  v8 = v7;
  v9 = [objc_opt_self() currentConnection];
  v10 = &off_1002AC000;
  if (v9)
  {
    v11 = v9;
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v12 = sub_1001F6688();
    sub_100019C94(v12, qword_1002E6180);

    v13 = v11;
    v14 = sub_1001F6668();
    v15 = sub_1001F72B8();

    if (os_log_type_enabled(v14, v15))
    {
      v36 = v8;
      v16 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v16 = 136315650;
      *(v16 + 4) = sub_1000E4544(v6, v36, &v39);
      *(v16 + 12) = 2080;
      v17 = sub_1001F77E8();
      v19 = sub_1000E4544(v17, v18, &v39);

      *(v16 + 14) = v19;
      *(v16 + 22) = 2112;
      *(v16 + 24) = v13;
      *v35 = v11;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%s] Entered %s from %@", v16, 0x20u);
      sub_10004BDE8(v35, &unk_1002BA650);

      swift_arrayDestroy();

      v8 = v36;

      goto LABEL_12;
    }
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v21 = sub_1001F6688();
    sub_100019C94(v21, qword_1002E6180);

    v14 = sub_1001F6668();
    v22 = sub_1001F72B8();

    if (os_log_type_enabled(v14, v22))
    {
      v23 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v23 = 136315394;
      *(v23 + 4) = sub_1000E4544(v6, v8, &v39);
      *(v23 + 12) = 2080;
      v24 = sub_1001F77E8();
      v26 = v8;
      v27 = sub_1000E4544(v24, v25, &v39);

      *(v23 + 14) = v27;
      v8 = v26;
      _os_log_impl(&_mh_execute_header, v14, v22, "[%s] Entered %s", v23, 0x16u);
      swift_arrayDestroy();

      v10 = &off_1002AC000;
    }
  }

LABEL_12:
  _Block_copy(aBlock);
  sub_100184FD4(v6, v8, a5, aBlock);
  if (v10[162] != -1)
  {
    swift_once();
  }

  v28 = sub_1001F6688();
  sub_100019C94(v28, qword_1002E6180);

  v29 = sub_1001F6668();
  v30 = sub_1001F72B8();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = v6;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v39 = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_1000E4544(v31, v8, &v39);
    _os_log_impl(&_mh_execute_header, v29, v30, "[%s] Exited", v32, 0xCu);
    sub_100019CCC(v33);
  }

  _Block_release(aBlock);
  _Block_release(aBlock);
}

uint64_t sub_10018B48C(int a1, int a2, int a3, int a4, unint64_t a5, uint64_t a6, uint64_t a7, void *aBlock)
{
  _Block_copy(aBlock);
  v12 = sub_10004B31C();
  v14 = v13;
  v15 = [objc_opt_self() currentConnection];
  v54 = v12;
  if (v15)
  {
    v16 = v15;
    v53 = a6;
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v17 = sub_1001F6688();
    sub_100019C94(v17, qword_1002E6180);

    v18 = v16;
    v19 = sub_1001F6668();
    v20 = sub_1001F72B8();

    if (os_log_type_enabled(v19, v20))
    {
      v51 = a5;
      v21 = swift_slowAlloc();
      v52 = a7;
      v50 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v21 = 136315650;
      *(v21 + 4) = sub_1000E4544(v12, v14, &v55);
      *(v21 + 12) = 2080;
      v22 = sub_1001F77E8();
      v24 = v14;
      v25 = sub_1000E4544(v22, v23, &v55);

      *(v21 + 14) = v25;
      v14 = v24;
      *(v21 + 22) = 2112;
      *(v21 + 24) = v18;
      *v50 = v16;
      v26 = v18;
      _os_log_impl(&_mh_execute_header, v19, v20, "[%s] Entered %s from %@", v21, 0x20u);
      sub_10004BDE8(v50, &unk_1002BA650);
      a7 = v52;

      swift_arrayDestroy();

      a5 = v51;
    }

    else
    {
    }

    a6 = v53;
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v27 = sub_1001F6688();
    sub_100019C94(v27, qword_1002E6180);

    v28 = sub_1001F6668();
    v29 = sub_1001F72B8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = v12;
      v31 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v31 = 136315394;
      *(v31 + 4) = sub_1000E4544(v30, v14, &v55);
      *(v31 + 12) = 2080;
      v32 = sub_1001F77E8();
      v34 = sub_1000E4544(v32, v33, &v55);

      *(v31 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "[%s] Entered %s", v31, 0x16u);
      swift_arrayDestroy();
    }
  }

  _Block_copy(aBlock);
  if (qword_1002AC468 != -1)
  {
    swift_once();
  }

  sub_10001AE68((qword_1002E60C8 + 64), *(qword_1002E60C8 + 88));
  v40 = sub_10007A214(a5, a6, a7, v35, v36, v37, v38, v39);
  if (v41)
  {
    v42 = 0;
  }

  else
  {
    v42 = v40;
  }

  (*(aBlock + 2))(aBlock, v42);
  _Block_release(aBlock);
  if (qword_1002AC510 != -1)
  {
    swift_once();
  }

  v43 = sub_1001F6688();
  sub_100019C94(v43, qword_1002E6180);

  v44 = sub_1001F6668();
  v45 = sub_1001F72B8();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = v14;
    v48 = swift_slowAlloc();
    v55 = v48;
    *v46 = 136315138;
    *(v46 + 4) = sub_1000E4544(v54, v47, &v55);
    _os_log_impl(&_mh_execute_header, v44, v45, "[%s] Exited", v46, 0xCu);
    sub_100019CCC(v48);
  }

  _Block_release(aBlock);
  _Block_release(aBlock);
}

void sub_10018BA2C(int a1, int a2, int a3, int a4, uint64_t a5, unint64_t a6, int a7, int a8, void *aBlock)
{
  _Block_copy(aBlock);
  v9 = sub_10004B31C();
  v11 = v10;
  v12 = [objc_opt_self() currentConnection];
  v37 = v9;
  if (v12)
  {
    v13 = v12;
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v14 = sub_1001F6688();
    sub_100019C94(v14, qword_1002E6180);

    v15 = v13;
    v16 = sub_1001F6668();
    v17 = sub_1001F72B8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v18 = 136315650;
      *(v18 + 4) = sub_1000E4544(v9, v11, &v40);
      *(v18 + 12) = 2080;
      v19 = sub_1001F77E8();
      v21 = sub_1000E4544(v19, v20, &v40);

      *(v18 + 14) = v21;
      *(v18 + 22) = 2112;
      *(v18 + 24) = v15;
      *v36 = v13;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v16, v17, "[%s] Entered %s from %@", v18, 0x20u);
      sub_10004BDE8(v36, &unk_1002BA650);

      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v23 = sub_1001F6688();
    sub_100019C94(v23, qword_1002E6180);

    v24 = sub_1001F6668();
    v25 = sub_1001F72B8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v26 = 136315394;
      *(v26 + 4) = sub_1000E4544(v9, v11, &v40);
      *(v26 + 12) = 2080;
      v27 = sub_1001F77E8();
      v29 = v11;
      v30 = sub_1000E4544(v27, v28, &v40);

      *(v26 + 14) = v30;
      v11 = v29;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%s] Entered %s", v26, 0x16u);
      swift_arrayDestroy();
    }
  }

  _Block_copy(aBlock);
  if (qword_1002AC468 != -1)
  {
    swift_once();
  }

  sub_10001AE68((qword_1002E60C8 + 64), *(qword_1002E60C8 + 88));
  sub_10007A2B0(a5, 0, a6);
  (*(aBlock + 2))(aBlock);
  _Block_release(aBlock);
  if (qword_1002AC510 != -1)
  {
    swift_once();
  }

  v31 = sub_1001F6688();
  sub_100019C94(v31, qword_1002E6180);

  v32 = sub_1001F6668();
  v33 = sub_1001F72B8();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_1000E4544(v37, v11, &v40);
    _os_log_impl(&_mh_execute_header, v32, v33, "[%s] Exited", v34, 0xCu);
    sub_100019CCC(v35);
  }

  _Block_release(aBlock);
  _Block_release(aBlock);
}

void sub_10018BFC0(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, void *aBlock)
{
  v7 = aBlock;
  _Block_copy(aBlock);
  v10 = sub_10004B31C();
  v12 = v11;
  v13 = [objc_opt_self() currentConnection];
  v42 = a6;
  if (v13)
  {
    v14 = v13;
    v41 = a5;
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v15 = sub_1001F6688();
    sub_100019C94(v15, qword_1002E6180);

    v16 = v14;
    v17 = sub_1001F6668();
    v18 = sub_1001F72B8();

    if (os_log_type_enabled(v17, v18))
    {
      v40 = v7;
      v19 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v19 = 136315650;
      *(v19 + 4) = sub_1000E4544(v10, v12, &v43);
      *(v19 + 12) = 2080;
      v20 = sub_1001F77E8();
      v22 = sub_1000E4544(v20, v21, &v43);

      *(v19 + 14) = v22;
      *(v19 + 22) = 2112;
      *(v19 + 24) = v16;
      *v39 = v14;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%s] Entered %s from %@", v19, 0x20u);
      sub_10004BDE8(v39, &unk_1002BA650);

      swift_arrayDestroy();

      v7 = v40;
    }

    else
    {
    }

    a5 = v41;
    a6 = v42;
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v24 = sub_1001F6688();
    sub_100019C94(v24, qword_1002E6180);

    v25 = sub_1001F6668();
    v26 = sub_1001F72B8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v27 = 136315394;
      *(v27 + 4) = sub_1000E4544(v10, v12, &v43);
      *(v27 + 12) = 2080;
      v28 = sub_1001F77E8();
      v30 = sub_1000E4544(v28, v29, &v43);

      *(v27 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%s] Entered %s", v27, 0x16u);
      swift_arrayDestroy();
    }
  }

  _Block_copy(v7);
  sub_100185430(v10, v12, a5, a6, v7);
  if (qword_1002AC510 != -1)
  {
    swift_once();
  }

  v31 = sub_1001F6688();
  sub_100019C94(v31, qword_1002E6180);

  v32 = sub_1001F6668();
  v33 = sub_1001F72B8();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = v10;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v43 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_1000E4544(v34, v12, &v43);
    _os_log_impl(&_mh_execute_header, v32, v33, "[%s] Exited", v35, 0xCu);
    sub_100019CCC(v36);

    v37 = a5;
    v38 = v42;
  }

  else
  {

    v37 = a5;
    v38 = a6;
  }

  sub_10003A380(v37, v38);
  _Block_release(v7);
  _Block_release(v7);
}

void sub_10018C558()
{
  sub_100037C08();
  v1 = v0;
  v3 = v2;
  v4 = sub_1001F6738();
  sub_10001A278();
  v24 = v5;
  __chkstk_darwin(v6, v7);
  sub_100023510();
  v10 = v9 - v8;
  v23 = sub_1001F6768();
  sub_10001A278();
  v12 = v11;
  __chkstk_darwin(v13, v14);
  sub_100023510();
  v17 = v16 - v15;
  if (qword_1002AC468 != -1)
  {
    sub_10018D920();
    swift_once();
  }

  v18 = qword_1002E60C8;
  v19 = *(*(qword_1002E60C8 + 48) + 16);

  os_unfair_lock_lock(v19);
  v20 = *(v18 + 56);
  os_unfair_lock_unlock(v19);

  if ((v20 & 1) == 0)
  {
    sub_10004794C();
    v21 = swift_allocObject();
    *(v21 + 16) = v3;
    *(v21 + 24) = v1;
    v25[4] = sub_10018CE40;
    v25[5] = v21;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 1107296256;
    v25[2] = sub_1000172C0;
    v25[3] = &unk_100290C70;
    v22 = _Block_copy(v25);

    sub_1001F6758();
    sub_10018D450(&qword_1002BA610, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000183C4(&qword_1002AC880);
    sub_10004B28C(&qword_1002BA620, &qword_1002AC880);
    sub_1001F7708();
    sub_1001F7338();
    _Block_release(v22);
    (*(v24 + 8))(v10, v4);
    (*(v12 + 8))(v17, v23);
  }

  sub_100037B00();
}

void sub_10018C840(uint64_t a1, unint64_t a2)
{
  if (qword_1002AC510 != -1)
  {
    swift_once();
  }

  v4 = sub_1001F6688();
  sub_100019C94(v4, qword_1002E6180);

  v5 = sub_1001F6668();
  v6 = sub_1001F72B8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000E4544(a1, a2, &v9);
    _os_log_impl(&_mh_execute_header, v5, v6, "[%s] Starting server", v7, 0xCu);
    sub_100019CCC(v8);
  }

  if (qword_1002AC468 != -1)
  {
    swift_once();
  }

  sub_1000E51A0();
}

void sub_10018CB3C()
{
  sub_100037C08();
  v14 = sub_1001F7308();
  sub_10001A278();
  v2 = v1;
  __chkstk_darwin(v3, v4);
  sub_100023510();
  v7 = v6 - v5;
  v8 = sub_1001F72E8();
  __chkstk_darwin(v8, v9);
  sub_100023510();
  v10 = sub_1001F6768();
  v11 = sub_100056658(v10);
  __chkstk_darwin(v11, v12);
  sub_100023510();
  v13 = OBJC_IVAR____TtC25ASOctaneSupportXPCService16OctaneXPCService_serverQueue;
  sub_10004B17C();
  sub_1001F6758();
  v16 = _swiftEmptyArrayStorage;
  sub_10018D450(&qword_1002AE9B0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000183C4(&unk_1002BA640);
  sub_10004B28C(&qword_1002AE9B8, &unk_1002BA640);
  sub_1001F7708();
  (*(v2 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  *&v0[v13] = sub_1001F7348();
  v15.receiver = v0;
  v15.super_class = type metadata accessor for OctaneXPCService();
  objc_msgSendSuper2(&v15, "init");
  sub_100037B00();
}

id sub_10018CDA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OctaneXPCService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10018CE0C()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10018CE48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10018CE60(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10003E6F4;

  return v6();
}

uint64_t sub_10018CF48(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10003C108;

  return v7();
}

uint64_t sub_10018D030()
{
  v1 = sub_1001F6578();
  sub_10001A278();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10018D0E8()
{
  sub_10018D9CC();
  v1 = sub_1001F6578();
  sub_100056658(v1);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10003E85C(v3);
  *v4 = v5;
  v4[1] = sub_10003E6F4;
  v6 = sub_10018D948();

  return sub_100183E2C(v6, v7, v2, v8);
}

uint64_t sub_10018D1C0()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10018D1F4()
{
  sub_10003E7B8();
  v0 = swift_task_alloc();
  v1 = sub_10003E85C(v0);
  *v1 = v2;
  v1[1] = sub_10003E6F4;
  v3 = sub_10018D948();

  return v4(v3);
}

uint64_t sub_10018D298()
{
  sub_10003E7B8();
  v0 = swift_task_alloc();
  v1 = sub_10003E85C(v0);
  *v1 = v2;
  v1[1] = sub_10003C108;
  v3 = sub_10018D948();

  return v4(v3);
}

uint64_t sub_10018D33C()
{
  swift_unknownObjectRelease();
  sub_10003A380(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10018D384()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  v8 = sub_10003E85C(v7);
  *v8 = v9;
  v8[1] = sub_10003C108;
  v10 = sub_10018D948();

  return sub_100183870(v10, v11, v1, v2, v3, v4, v5, v6);
}

uint64_t sub_10018D450(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10018D4EC()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10018D534()
{
  sub_10018D9CC();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  sub_10018D9FC(v7);

  return v8(v2, v3, v4, v6, v5);
}

uint64_t sub_10018D5F0()
{
  sub_10018D9CC();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10003E6F4;

  return sub_10018CE60(v2, v3, v4);
}

uint64_t sub_10018D6AC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10018D6EC()
{
  sub_10018D9CC();
  v0 = swift_task_alloc();
  v1 = sub_10003E85C(v0);
  *v1 = v2;
  v1[1] = sub_10003E6F4;
  v3 = sub_10018D948();

  return v4(v3);
}

uint64_t sub_10018D7A4()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10018D7EC()
{
  sub_10018D9CC();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  sub_10018D9FC(v7);

  return v8(v2, v3, v4, v6, v5);
}

uint64_t sub_10018D8A4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_10018D8D4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10018D96C()
{

  return swift_once();
}

void *sub_10018D99C(int a1, int a2, int a3, void *aBlock)
{

  return _Block_copy(aBlock);
}

void sub_10018DA24(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_10018DA44()
{

  return swift_slowAlloc();
}

void sub_10018DA5C()
{
  v26 = *v0;
  if (*(&v26 + 1))
  {
    sub_10018EE5C();
    if (v2)
    {
      if ((*(&v26 + 1) & 0x1000000000000000) != 0)
      {
        sub_10004F684(&v26, v25);
        v23 = sub_10012F960();
        sub_1001ED558(v23, v24, 10);
        sub_10018E9C4(&v26);
        return;
      }

      if ((*(&v26 + 1) & 0x2000000000000000) != 0)
      {
        sub_10018EE74();
        if (v6)
        {
          if (v10)
          {
            if (v10 != 1)
            {
              sub_10005B084();
              while (1)
              {
                sub_100027240();
                if (!v6 & v5)
                {
                  break;
                }

                sub_10018EDCC();
                if (!v6 || __OFADD__(v17, v16))
                {
                  break;
                }

                sub_10002727C();
                if (v6)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }

          goto LABEL_78;
        }

        if (v11 != 45)
        {
          if (v10)
          {
            sub_10018EE3C();
            while (1)
            {
              sub_100027240();
              if (!v6 & v5)
              {
                break;
              }

              sub_10018EDCC();
              if (!v6 || __OFADD__(v22, v21))
              {
                break;
              }

              sub_10002727C();
              if (v6)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_71;
        }

        if (v10)
        {
          if (v10 != 1)
          {
            sub_10005B084();
            while (1)
            {
              sub_100027240();
              if (!v6 & v5)
              {
                break;
              }

              sub_10018EDCC();
              if (!v6 || __OFSUB__(v13, v12))
              {
                break;
              }

              sub_10002727C();
              if (v6)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_71;
        }
      }

      else
      {
        if ((v0 & 0x1000000000000000) != 0)
        {
          v3 = ((*(&v26 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          sub_10012F960();
          v3 = sub_1001F7858();
        }

        v4 = *v3;
        if (v4 == 43)
        {
          if (v1 >= 1)
          {
            if (v1 != 1)
            {
              if (v3)
              {
                sub_10018EE30();
                while (1)
                {
                  sub_100027240();
                  if (!v6 & v5)
                  {
                    goto LABEL_71;
                  }

                  sub_10018EDCC();
                  if (!v6 || __OFADD__(v15, v14))
                  {
                    goto LABEL_71;
                  }

                  sub_10002727C();
                  if (v6)
                  {
                    goto LABEL_72;
                  }
                }
              }

              goto LABEL_61;
            }

            goto LABEL_71;
          }

          goto LABEL_77;
        }

        if (v4 != 45)
        {
          if (v1)
          {
            if (v3)
            {
              while (1)
              {
                sub_10018EE4C();
                if (!v6 & v5)
                {
                  goto LABEL_71;
                }

                sub_10018EE0C();
                if (!v6 || __OFADD__(v20, v19))
                {
                  goto LABEL_71;
                }

                if (v18 == 1)
                {
                  goto LABEL_61;
                }
              }
            }

            goto LABEL_61;
          }

LABEL_71:
          v9 = 1;
          goto LABEL_72;
        }

        if (v1 >= 1)
        {
          if (v1 != 1)
          {
            if (v3)
            {
              sub_10018EE30();
              while (1)
              {
                sub_100027240();
                if (!v6 & v5)
                {
                  goto LABEL_71;
                }

                sub_10018EDCC();
                if (!v6 || __OFSUB__(v8, v7))
                {
                  goto LABEL_71;
                }

                sub_10002727C();
                if (v6)
                {
                  goto LABEL_72;
                }
              }
            }

LABEL_61:
            v9 = 0;
LABEL_72:
            v25[16] = v9;
            return;
          }

          goto LABEL_71;
        }

        __break(1u);
      }

      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
    }
  }
}

void sub_10018DC90()
{
  v26 = *(v0 + 32);
  if (*(&v26 + 1))
  {
    sub_10018EE5C();
    if (v2)
    {
      if ((*(&v26 + 1) & 0x1000000000000000) != 0)
      {
        sub_10004F684(&v26, v25);
        v23 = sub_10012F960();
        sub_1001ED558(v23, v24, 10);
        sub_10018E9C4(&v26);
        return;
      }

      if ((*(&v26 + 1) & 0x2000000000000000) != 0)
      {
        sub_10018EE74();
        if (v6)
        {
          if (v10)
          {
            if (v10 != 1)
            {
              sub_10005B084();
              while (1)
              {
                sub_100027240();
                if (!v6 & v5)
                {
                  break;
                }

                sub_10018EDCC();
                if (!v6 || __OFADD__(v17, v16))
                {
                  break;
                }

                sub_10002727C();
                if (v6)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }

          goto LABEL_78;
        }

        if (v11 != 45)
        {
          if (v10)
          {
            sub_10018EE3C();
            while (1)
            {
              sub_100027240();
              if (!v6 & v5)
              {
                break;
              }

              sub_10018EDCC();
              if (!v6 || __OFADD__(v22, v21))
              {
                break;
              }

              sub_10002727C();
              if (v6)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_71;
        }

        if (v10)
        {
          if (v10 != 1)
          {
            sub_10005B084();
            while (1)
            {
              sub_100027240();
              if (!v6 & v5)
              {
                break;
              }

              sub_10018EDCC();
              if (!v6 || __OFSUB__(v13, v12))
              {
                break;
              }

              sub_10002727C();
              if (v6)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_71;
        }
      }

      else
      {
        if ((v0 & 0x1000000000000000) != 0)
        {
          v3 = ((*(&v26 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          sub_10012F960();
          v3 = sub_1001F7858();
        }

        v4 = *v3;
        if (v4 == 43)
        {
          if (v1 >= 1)
          {
            if (v1 != 1)
            {
              if (v3)
              {
                sub_10018EE30();
                while (1)
                {
                  sub_100027240();
                  if (!v6 & v5)
                  {
                    goto LABEL_71;
                  }

                  sub_10018EDCC();
                  if (!v6 || __OFADD__(v15, v14))
                  {
                    goto LABEL_71;
                  }

                  sub_10002727C();
                  if (v6)
                  {
                    goto LABEL_72;
                  }
                }
              }

              goto LABEL_61;
            }

            goto LABEL_71;
          }

          goto LABEL_77;
        }

        if (v4 != 45)
        {
          if (v1)
          {
            if (v3)
            {
              while (1)
              {
                sub_10018EE4C();
                if (!v6 & v5)
                {
                  goto LABEL_71;
                }

                sub_10018EE0C();
                if (!v6 || __OFADD__(v20, v19))
                {
                  goto LABEL_71;
                }

                if (v18 == 1)
                {
                  goto LABEL_61;
                }
              }
            }

            goto LABEL_61;
          }

LABEL_71:
          v9 = 1;
          goto LABEL_72;
        }

        if (v1 >= 1)
        {
          if (v1 != 1)
          {
            if (v3)
            {
              sub_10018EE30();
              while (1)
              {
                sub_100027240();
                if (!v6 & v5)
                {
                  goto LABEL_71;
                }

                sub_10018EDCC();
                if (!v6 || __OFSUB__(v8, v7))
                {
                  goto LABEL_71;
                }

                sub_10002727C();
                if (v6)
                {
                  goto LABEL_72;
                }
              }
            }

LABEL_61:
            v9 = 0;
LABEL_72:
            v25[16] = v9;
            return;
          }

          goto LABEL_71;
        }

        __break(1u);
      }

      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
    }
  }
}

void sub_10018DEC4()
{
  v1 = *(v0 + 96);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + 88);
  v3 = HIBYTE(v1) & 0xF;
  v4 = v2 & 0xFFFFFFFFFFFFLL;
  if (!((v1 & 0x2000000000000000) != 0 ? HIBYTE(v1) & 0xF : v2 & 0xFFFFFFFFFFFFLL))
  {
    return;
  }

  if ((v1 & 0x1000000000000000) != 0)
  {

    sub_1001ED558(v2, v1, 10);

    return;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    if (*(v0 + 88) == 43)
    {
      if (!v3)
      {
LABEL_79:
        __break(1u);
        return;
      }

      if (v3 != 1)
      {
        sub_10005B084();
        do
        {
          sub_100027240();
          if (!v9 & v8)
          {
            break;
          }

          sub_10018EDCC();
          if (!v9)
          {
            break;
          }

          if (__OFADD__(v17, v16))
          {
            break;
          }

          sub_10002727C();
        }

        while (!v9);
      }
    }

    else if (*(v0 + 88) == 45)
    {
      if (!v3)
      {
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      if (v3 != 1)
      {
        sub_10005B084();
        do
        {
          sub_100027240();
          if (!v9 & v8)
          {
            break;
          }

          sub_10018EDCC();
          if (!v9)
          {
            break;
          }

          if (__OFSUB__(v13, v12))
          {
            break;
          }

          sub_10002727C();
        }

        while (!v9);
      }
    }

    else if (v3)
    {
      sub_10018EE3C();
      do
      {
        sub_100027240();
        if (!v9 & v8)
        {
          break;
        }

        sub_10018EDCC();
        if (!v9)
        {
          break;
        }

        if (__OFADD__(v22, v21))
        {
          break;
        }

        sub_10002727C();
      }

      while (!v9);
    }
  }

  else
  {
    if ((v2 & 0x1000000000000000) != 0)
    {
      v6 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v6 = sub_1001F7858();
    }

    v7 = *v6;
    if (v7 == 43)
    {
      if (v4 < 1)
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      if (v4 != 1 && v6)
      {
        sub_10018EE30();
        do
        {
          sub_100027240();
          if (!v9 & v8)
          {
            break;
          }

          sub_10018EDCC();
          if (!v9)
          {
            break;
          }

          if (__OFADD__(v15, v14))
          {
            break;
          }

          sub_10002727C();
        }

        while (!v9);
      }
    }

    else
    {
      if (v7 == 45)
      {
        if (v4 >= 1)
        {
          if (v4 != 1 && v6)
          {
            sub_10018EE30();
            do
            {
              sub_100027240();
              if (!v9 & v8)
              {
                break;
              }

              sub_10018EDCC();
              if (!v9)
              {
                break;
              }

              if (__OFSUB__(v11, v10))
              {
                break;
              }

              sub_10002727C();
            }

            while (!v9);
          }

          return;
        }

        __break(1u);
        goto LABEL_77;
      }

      if (v4 && v6)
      {
        do
        {
          sub_10018EE4C();
          if (!v9 & v8)
          {
            break;
          }

          sub_10018EE0C();
          if (!v9)
          {
            break;
          }
        }

        while (!__OFADD__(v20, v19) && v18 != 1);
      }
    }
  }
}

uint64_t sub_10018E110(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027CC40;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10018E160(char a1)
{
  result = 1684632420;
  switch(a1)
  {
    case 1:
      result = 0x6449656C646E7562;
      break;
    case 2:
      result = 0x496D616441707061;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x6E6F697369766572;
      break;
    case 5:
      result = 0x74696D696CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10018E228(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002BA678);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  v11 = &v13[-v10];
  sub_10001AE68(a1, a1[3]);
  sub_10018EADC();
  sub_1001F8198();
  LOBYTE(v14) = 0;
  sub_1001F7D18();
  if (!v2)
  {
    sub_10018EDE0(1);
    sub_1001F7D18();
    sub_10018EDE0(2);
    sub_1001F7D18();
    sub_10018EDE0(3);
    sub_1001F7D88();
    v14 = *(v3 + 64);
    v15 = *(v3 + 80);
    v13[15] = 4;
    sub_1000B2B90();
    sub_1001F7D58();
    sub_10018EDE0(5);
    sub_1001F7D18();
  }

  return (*(v7 + 8))(v11, v5);
}

void *sub_10018E400@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000183C4(&qword_1002BA660);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  v11 = &v26 - v10;
  sub_10001AE68(a1, a1[3]);
  sub_10018EADC();
  sub_1001F8178();
  if (v2)
  {
    return sub_100019CCC(a1);
  }

  LOBYTE(v38) = 0;
  sub_10018EDF8();
  v12 = sub_1001F7C08();
  v14 = v13;
  LOBYTE(v38) = 1;
  sub_10018EDF8();
  v32 = sub_1001F7C08();
  v33 = v12;
  v36 = v15;
  LOBYTE(v38) = 2;
  sub_10018EDF8();
  v16 = sub_1001F7C08();
  v34 = v17;
  v31 = v16;
  LOBYTE(v38) = 3;
  sub_10018EDF8();
  v30 = sub_1001F7C78();
  v35 = v18;
  LOBYTE(__src[0]) = 4;
  sub_10018EB30();
  sub_1001F7C48();
  v29 = v38;
  v28 = v39;
  v51 = v40;
  v52 = 5;
  v19 = sub_1001F7C08();
  v21 = v20;
  (*(v7 + 8))(v11, v5);
  __src[0] = v33;
  __src[1] = v14;
  __src[2] = v32;
  v22 = v36;
  __src[3] = v36;
  __src[4] = v31;
  v23 = v34;
  __src[5] = v34;
  __src[6] = v30;
  v24 = v35;
  __src[7] = v35;
  __src[8] = v29;
  __src[9] = v28;
  v27 = v51;
  LOBYTE(__src[10]) = v51;
  __src[11] = v19;
  __src[12] = v21;
  sub_10018EB84(__src, &v38);
  sub_100019CCC(a1);
  v38 = v33;
  v39 = v14;
  v40 = v32;
  v41 = v22;
  v42 = v31;
  v43 = v23;
  v44 = v30;
  v45 = v24;
  v46 = v29;
  v47 = v28;
  v48 = v27;
  v49 = v19;
  v50 = v21;
  sub_1000B2768(&v38);
  return memcpy(a2, __src, 0x68uLL);
}

uint64_t sub_10018E850@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018E110(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_10018E880@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10018E160(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10018E8B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10018E15C();
  *a1 = result;
  return result;
}

uint64_t sub_10018E8E8(uint64_t a1)
{
  v2 = sub_10018EADC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018E924(uint64_t a1)
{
  v2 = sub_10018EADC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10018E960@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10018E400(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x68uLL);
  }

  return result;
}

uint64_t sub_10018E9C4(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002AEBE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10018EA34(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_10018EA74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10018EADC()
{
  result = qword_1002BA668;
  if (!qword_1002BA668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BA668);
  }

  return result;
}

unint64_t sub_10018EB30()
{
  result = qword_1002BA670;
  if (!qword_1002BA670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BA670);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TransactionHistoryRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10018EC88);
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

unint64_t sub_10018ECC4()
{
  result = qword_1002BA680;
  if (!qword_1002BA680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BA680);
  }

  return result;
}

unint64_t sub_10018ED1C()
{
  result = qword_1002BA688;
  if (!qword_1002BA688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BA688);
  }

  return result;
}

unint64_t sub_10018ED74()
{
  result = qword_1002BA690;
  if (!qword_1002BA690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BA690);
  }

  return result;
}

uint64_t sub_10018EE88()
{
  if (*(*v0 + 16))
  {
    v1 = *(*v0 + 32);

    sub_100036754();
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10018EED0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_100191258(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
    v9 = *(v8 + 0x20);
    sub_1000375D8(v8 + 40, v7, v8 + 32);
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

uint64_t sub_10018EF5C(uint64_t a1, void (*a2)(uint64_t))
{
  result = sub_1000675D4();
  v5 = *(a1 + 24);
  if (v5 == 255)
  {
    __break(1u);
  }

  else
  {
    if ((v5 & 1) == 0)
    {
      a2(result);
    }

    return _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
  }

  return result;
}

uint64_t sub_10018EFBC(uint64_t a1)
{
  sub_100191824(a1);
  result = sub_1000675D4();
  v5 = *(v2 + 32);
  if (v5 == 255)
  {
    __break(1u);
  }

  else
  {
    if ((v5 & 1) == 0)
    {
      v6 = sub_100191898();
      sub_1000A386C(v6, v7, v8);
      v1(v9);
      sub_10012E49C(v3, v2, v5);
    }

    return _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
  }

  return result;
}

uint64_t sub_10018F034(uint64_t a1)
{
  sub_100191824(a1);
  result = sub_100037C40();
  v4 = *(v2 + 24);
  if (v4 == 255)
  {
    __break(1u);
  }

  else
  {
    if ((v4 & 1) == 0)
    {
      v5 = *(v2 + 16);
      v6 = v5;
      sub_1000A3B30(v5, 0);
      v1(&v6);
      sub_10012ED08(v5, v4);
    }

    return _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
  }

  return result;
}

uint64_t sub_10018F0B0(uint64_t a1)
{
  sub_100191824(a1);
  result = sub_1000675D4();
  v5 = *(v2 + 32);
  if (v5 == 255)
  {
    __break(1u);
  }

  else
  {
    if ((v5 & 1) == 0)
    {
      v6 = sub_100191898();
      sub_1000A339C(v6, v7, v8);
      v1(v9);
      sub_10012DB40(v3, v2, v5);
    }

    return _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
  }

  return result;
}

uint64_t sub_10018F128(uint64_t a1)
{
  v3 = *v1;
  result = sub_10013B560(*v1);
  v5 = result;
  v6 = 0;
  while (v5 != v6)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = sub_1001F7808();
      result = swift_unknownObjectRelease();
      if (v8 == a1)
      {
LABEL_10:
        sub_10018EED0(v6);
      }
    }

    else
    {
      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        return result;
      }

      if (*(v3 + 8 * v6 + 32) == a1)
      {
        goto LABEL_10;
      }
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t NIOConnectionError.dnsAError.getter()
{
  v1 = *(v0 + 24);
  swift_errorRetain();
  return v1;
}

uint64_t NIOConnectionError.dnsAAAAError.getter()
{
  v1 = *(v0 + 32);
  swift_errorRetain();
  return v1;
}

uint64_t sub_10018F2B4()
{
  if (*v0)
  {
    if (!*(*(v0 + 8) + 16))
    {
      if (!*(*(v0 + 16) + 16))
      {
        return 0xF000000000000007;
      }

      goto LABEL_6;
    }

    goto LABEL_8;
  }

  if (*(*(v0 + 16) + 16))
  {
LABEL_6:
    v1 = 1;
LABEL_9:
    *v0 = v1;
    return sub_10018EE88();
  }

  if (*(*(v0 + 8) + 16))
  {
LABEL_8:
    v1 = 0;
    goto LABEL_9;
  }

  return 0xF000000000000007;
}

uint64_t sub_10018F33C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10018F2B4();
  *a1 = result;
  return result;
}

Swift::Int sub_10018F37C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1001F8068();
  a4(v8, v6);
  return sub_1001F80D8();
}

uint64_t sub_10018F3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  *(v12 + 176) = 0;
  *(v12 + 184) = _swiftEmptyArrayStorage;
  *(v12 + 192) = _swiftEmptyArrayStorage;
  *(v12 + 200) = _swiftEmptyArrayStorage;
  *(v12 + 208) = 0;
  sub_100026064(a1, v12 + 16);
  *(v12 + 56) = a2;
  *(v12 + 64) = a3;
  *(v12 + 72) = a4;
  *(v12 + 80) = a5;
  *(v12 + 88) = a6;
  *(v12 + 96) = a10;
  *(v12 + 104) = a11;
  *(v12 + 120) = 0;
  *(v12 + 136) = 0;
  *(v12 + 144) = a7;
  *(v12 + 152) = 0;
  *(v12 + 168) = 0;
  ObjectType = swift_getObjectType();
  v21 = sub_1000183C4(&qword_1002ADD50);
  EmbeddedChannel.WrongTypeError.actual.getter(ObjectType, v21);
  *(v12 + 160) = EventLoop.makePromise<A>(of:file:line:)(v21, "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/HappyEyeballs.swift", 115, 2, 294, ObjectType, v21, a3);

  result = sub_100019CCC(a1);
  *(v12 + 216) = a4;
  *(v12 + 224) = a5;
  *(v12 + 232) = a6;
  *(v12 + 240) = 0;
  *(v12 + 248) = 0;
  *(v12 + 256) = _swiftEmptyArrayStorage;
  if (a8 < 1)
  {
    __break(1u);
  }

  else
  {
    *(v12 + 112) = a8;
    if ((a9 - 2000000001) >= 0xFFFFFFFF8EC04CFFLL)
    {
      *(v12 + 128) = a9;
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10018F538()
{
  v2 = sub_1001918E4();
  v3 = *(v1 + 24);

  v3(sub_1001914D8, v0, v2, v1);
}

void sub_10018F5C4(void *a1)
{
  v2 = a1[8];
  ObjectType = swift_getObjectType();
  v4 = a1[18];
  v5 = *(v2 + 48);

  v6 = v5(v4, sub_1001914E0, a1, &type metadata for ()[8], ObjectType, v2);

  a1[19] = v6;

  sub_10018F680(0);
}

void sub_10018F680(unsigned __int8 a1)
{
  v2 = a1;
  switch(*(v1 + 168))
  {
    case 1:
      if (a1 == 5)
      {
        goto LABEL_25;
      }

      if (a1 == 2)
      {
        v2 = 4;
        goto LABEL_18;
      }

      if (a1 != 1)
      {
        goto LABEL_43;
      }

      *(v1 + 168) = 2;

      sub_10018FB24();
      break;
    case 2:
      if (a1 != 5)
      {
        if (a1 != 3)
        {
          if (a1 != 2)
          {
LABEL_43:
            sub_1001F77B8(50);
            v4._object = 0x800000010022C1E0;
            v4._countAndFlagsBits = 0xD000000000000026;
            sub_1001F6CA8(v4);
            sub_1001918C4();
            v5._countAndFlagsBits = 0x207475706E69202CLL;
            v5._object = 0xE800000000000000;
            sub_1001F6CA8(v5);
            sub_1001918C4();
            sub_1001F7AC8();
            __break(1u);
            JUMPOUT(0x10018F9ECLL);
          }

          v2 = 5;
        }

LABEL_18:
        *(v1 + 168) = v2;

        sub_10018FBFC();
        return;
      }

LABEL_25:
      *(v1 + 168) = 6;

      sub_10018FE44();
      break;
    case 3:
      switch(a1)
      {
        case 2u:
          goto LABEL_12;
        case 4u:
          goto LABEL_22;
        case 5u:
          goto LABEL_25;
        case 6u:
          goto LABEL_30;
        case 7u:
          goto LABEL_33;
        case 8u:
          return;
        default:
          goto LABEL_43;
      }

    case 4:
      switch(a1)
      {
        case 1u:
LABEL_12:
          *(v1 + 168) = 5;

          sub_10018FD28();
          return;
        case 4u:
          goto LABEL_22;
        case 5u:
          goto LABEL_25;
        case 6u:
          goto LABEL_30;
        case 7u:
          goto LABEL_33;
        case 8u:
          return;
        default:
          goto LABEL_43;
      }

    case 5:
      switch(a1)
      {
        case 4u:
LABEL_22:

          sub_10018FD38();
          return;
        case 5u:
          goto LABEL_25;
        case 6u:
LABEL_30:
          *(v1 + 168) = 6;

          sub_1001905D8();
          return;
        case 7u:
LABEL_33:

          sub_10018FD68();
          return;
        case 8u:
          *(v1 + 168) = 6;

          sub_10018FEC8();
          return;
        default:
          goto LABEL_43;
      }

    case 6:
      if (a1 - 1 < 7)
      {
        return;
      }

      goto LABEL_43;
    default:
      if (a1)
      {
        goto LABEL_43;
      }

      *(v1 + 168) = 1;

      sub_10018FA58();
      return;
  }
}

uint64_t sub_10018FA58()
{
  sub_10001AE68((v0 + 16), *(v0 + 40));
  v1 = sub_100191880();
  v2(v1);
  sub_100190D34();

  sub_10001AE68((v0 + 16), *(v0 + 40));
  v3 = sub_100191880();
  v4(v3);
  sub_100190B74();
}

uint64_t sub_10018FB24()
{
  v2 = sub_1001918E4();
  v3 = *(v0 + 112);
  sub_10004794C();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1001914C8;
  *(v4 + 24) = v0;
  v5 = *(v1 + 48);

  v6 = v5(v3, sub_100071D4C, v4, &type metadata for ()[8], v2, v1);

  *(v0 + 120) = v6;
}

void sub_10018FBFC()
{
  if (v0[17])
  {
    __break(1u);
  }

  else
  {
    v1 = v0;
    swift_beginAccess();
    v2 = sub_10018F2B4();
    swift_endAccess();
    if ((~v2 & 0xF000000000000007) != 0)
    {
      v3 = v0[7];
      v4 = v1[8];
      ObjectType = swift_getObjectType();
      v6 = v1[16];
      v7 = *(v4 + 48);

      v7(v6, sub_10019149C, v1, &type metadata for ()[8], ObjectType, v4);
      sub_100013EFC();

      v1[17] = v3;

      sub_10018FFB0(v2);
      sub_10002D83C(v2);
    }

    else
    {
      sub_1000675D4();
      if (!sub_10013B560(v0[25]))
      {
        sub_10018F680(8);
      }
    }
  }
}

void sub_10018FD28()
{
  if (!*(v0 + 136))
  {
    sub_10018FBFC();
  }
}

void sub_10018FD38()
{
  *(v0 + 136) = 0;

  sub_10018FBFC();
}

void sub_10018FD68()
{
  sub_1000675D4();
  v1 = *(v0 + 200);
  if (v1 >> 62)
  {
    if (sub_1001F7B48())
    {
      return;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if (*(v0 + 136))
  {
    sub_10002D864();
    sub_1000276A0();
    *v2 = 1;

    swift_errorRetain();
    sub_1000A13B0();
  }

  *(v0 + 136) = 0;

  sub_10018FBFC();
}

uint64_t sub_10018FE44()
{
  sub_1001905D8();
  v1 = *(v0 + 144);
  sub_10002D678();
  sub_1000276A0();
  *v2 = v1;
  *(v2 + 8) = 0;
  swift_errorRetain();
  sub_1000A1714();
}

uint64_t sub_10018FEC8()
{
  sub_100037C40();
  result = sub_10013B560(v0[25]);
  if (result)
  {
    __break(1u);
  }

  else
  {
    sub_1001905D8();
    sub_100037C40();
    v3 = v0[27];
    v2 = v0[28];
    v5 = v0[29];
    v4 = v0[30];
    v7 = v0[31];
    v6 = v0[32];
    sub_100191448();
    sub_1000276A0();
    *v8 = v3;
    v8[1] = v2;
    v8[2] = v5;
    v8[3] = v4;
    v8[4] = v7;
    v8[5] = v6;

    swift_errorRetain();
    swift_errorRetain();

    swift_errorRetain();
    sub_1000A1714();
  }

  return result;
}

uint64_t sub_10018FFB0(unint64_t a1)
{
  v3 = (*(v1 + 96))(*(v1 + 56), *(v1 + 64), *(&unk_10021419C + ((a1 >> 60) & 0xC)));
  swift_beginAccess();

  sub_1001F6F08();
  sub_1000375FC(*((*(v1 + 200) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1001F6F98();
  swift_endAccess();
  sub_1000A41C8();
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = a1;

  swift_retain_n();

  sub_1001918B0();
  sub_1001219F8();

  sub_1000A41C8();
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = a1;
  v5[4] = v3;
  swift_retain_n();

  sub_1001918B0();
  sub_100121B14();
}

uint64_t sub_10019013C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  if (*(a2 + 168) == 6)
  {
    swift_beginAccess();
    sub_10018F128(a3);
    swift_endAccess();
    ObjectType = swift_getObjectType();
    v9 = static NIOHTTPObjectAggregatorError.endingIgnoredMessage.getter();
    return Channel.close(mode:promise:)(v9, 0, ObjectType);
  }

  else
  {
    swift_getObjectType();
    ChannelOutboundInvoker.connect(to:file:line:)();
    v12 = swift_allocObject();
    v12[2] = a2;
    v12[3] = a3;
    v12[4] = v6;
    v12[5] = v7;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1001913E8;
    *(v13 + 24) = v12;

    swift_unknownObjectRetain();
    sub_10019F6C8();

    v14 = swift_allocObject();
    v14[2] = a2;
    v14[3] = a3;
    v14[4] = a4;

    sub_10011DD5C();
  }
}

uint64_t sub_100190344(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_10018F128(a2);
  swift_endAccess();
  if (*(a1 + 168) == 6)
  {
    ObjectType = swift_getObjectType();
    v5 = static NIOHTTPObjectAggregatorError.endingIgnoredMessage.getter();
    return Channel.close(mode:promise:)(v5, 0, ObjectType);
  }

  else
  {
    sub_10018F680(6);
    swift_unknownObjectRetain();
    sub_1000A1714();
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_100190418(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 168) != 6)
  {
    v7 = result;
    swift_beginAccess();

    swift_errorRetain();
    sub_10003215C();
    v8 = *(*(a2 + 256) + 16);
    sub_100032314();
    v9 = *(a2 + 256);
    *(v9 + 16) = v8 + 1;
    v10 = v9 + 16 * v8;
    *(v10 + 32) = a4;
    *(v10 + 40) = v7;
    *(a2 + 256) = v9;
    swift_endAccess();
    swift_beginAccess();
    sub_10018F128(a3);
    swift_endAccess();
    return sub_10018F680(7);
  }

  return result;
}

uint64_t sub_100190500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();

  swift_errorRetain();
  sub_10003215C();
  v8 = *(*(a2 + 256) + 16);
  sub_100032314();
  v9 = *(a2 + 256);
  *(v9 + 16) = v8 + 1;
  v10 = v9 + 16 * v8;
  *(v10 + 32) = a3;
  *(v10 + 40) = a1;
  *(a2 + 256) = v9;
  swift_endAccess();
  swift_beginAccess();
  sub_10018F128(a4);
  swift_endAccess();
  return sub_10018F680(7);
}

uint64_t sub_1001905D8()
{
  if (v0[26] <= 1)
  {
    v1 = v0[6];
    sub_10001AE68(v0 + 2, v0[5]);
    v2 = sub_100013EFC();
    v3(v2, v1);
  }

  if (v0[15])
  {
    sub_10002D864();
    v4 = sub_1000276A0();
    sub_100191838(v4, v5);
    swift_errorRetain();
    sub_10002E17C();

    v0[15] = 0;
  }

  if (v0[17])
  {
    sub_10002D864();
    v6 = sub_1000276A0();
    sub_100191838(v6, v7);
    swift_errorRetain();
    sub_10002E17C();

    v0[17] = 0;
  }

  if (v0[19])
  {
    sub_10002D864();
    v8 = sub_1000276A0();
    sub_100191838(v8, v9);
    swift_errorRetain();
    sub_10002E17C();

    v0[19] = 0;
  }

  swift_beginAccess();
  v10 = v0[25];
  v0[25] = _swiftEmptyArrayStorage;
  result = sub_10013B560(v10);
  if (!result)
  {
  }

  v12 = result;
  if (result >= 1)
  {
    v13 = 0;
    v40 = v10 & 0xC000000000000001;
    while (1)
    {
      if (v40)
      {
        v14 = sub_1001F7808();
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      sub_1000A41C8();
      v15 = swift_allocObject();
      sub_1001917E0(v15);
      v16 = *(v14 + 48);
      ObjectType = swift_getObjectType();
      v18 = *(v16 + 16);
      sub_100191904();
      if (v18(ObjectType, v16))
      {
        break;
      }

      sub_1000A41C8();
      v23 = swift_allocObject();
      v23[2] = v14;
      v23[3] = sub_10012DAE8;
      v23[4] = v15;
      v39 = v13;
      v24 = v10;
      v25 = v12;
      v26 = *(v16 + 24);

      v26(sub_1001912F4, v23, ObjectType, v16);
      v12 = v25;
      v10 = v24;
      v13 = v39;

LABEL_33:
      ++v13;

      if (v12 == v13)
      {
      }
    }

    sub_1000A41C8();
    v19 = swift_allocObject();
    sub_1001917E0(v19);
    v20 = *(v14 + 48);
    v21 = swift_getObjectType();
    debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 692, v21, v20);
    sub_100037C40();
    v22 = *(v14 + 32);
    if (v22 != 255)
    {
      if (v22)
      {
      }

      else
      {
        v32 = swift_getObjectType();
        v33 = static NIOHTTPObjectAggregatorError.endingIgnoredMessage.getter();
        sub_100191904();
        Channel.close(mode:promise:)(v33, 0, v32);
      }

      goto LABEL_32;
    }

    swift_beginAccess();
    if (*(v14 + 56))
    {
      if (*(v14 + 72))
      {
        sub_10004794C();
        v27 = swift_allocObject();
        sub_1001917FC(v27);
        v28 = *(v14 + 72);
        sub_100191904();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v14 + 72) = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100032AAC();
          v28 = v37;
          *(v14 + 72) = v37;
        }

        v30 = *(v28 + 16);
        if (v30 >= *(v28 + 24) >> 1)
        {
          sub_100032AAC();
          v28 = v38;
        }

        *(v28 + 16) = v30 + 1;
        v31 = v28 + 16 * v30;
        *(v31 + 32) = sub_1001917DC;
        *(v31 + 40) = v27;
        *(v14 + 72) = v28;
        goto LABEL_31;
      }

      sub_1000183C4(&qword_1002ADBD8);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1001FE9E0;
      sub_10004794C();
      v35 = swift_allocObject();
      v36 = sub_1001917FC(v35);
      *(v34 + 32) = sub_100191334;
      *(v34 + 40) = v36;
      *(v14 + 72) = v34;
    }

    else
    {
      *(v14 + 56) = sub_10012ED90;
      *(v14 + 64) = v19;
    }

    sub_100191904();

LABEL_31:
    swift_endAccess();

LABEL_32:

    _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
    CallbackList._run()();
    sub_100037408(0);

    goto LABEL_33;
  }

  __break(1u);
  return result;
}

uint64_t sub_100190B28()
{
  ObjectType = swift_getObjectType();
  v1 = static NIOHTTPObjectAggregatorError.endingIgnoredMessage.getter();
  return Channel.close(mode:promise:)(v1, 0, ObjectType);
}

uint64_t sub_100190B74()
{
  sub_100013EFC();

  v1 = sub_100191814();
  sub_10019FA60(v1, v2, v3, 608, v4, v0);
  sub_100013EFC();

  v5 = sub_100191814();
  sub_100124E34(v5, v6, v7, 610, v0, v0);

  swift_retain_n();

  sub_10011DE78();
}

uint64_t sub_100190C50()
{
  swift_beginAccess();

  sub_1001BA9D4(v0);
  return swift_endAccess();
}

uint64_t sub_100190CB0()
{
  sub_100191858();
  *(v0 + 240) = v1;
  swift_errorRetain();
}

uint64_t sub_100190CF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 208);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 208) = v4;
    return sub_10018F680(1);
  }

  return result;
}

uint64_t sub_100190D34()
{
  sub_100013EFC();

  v1 = sub_100191814();
  sub_10019FA60(v1, v2, v3, 620, v4, v0);
  sub_100013EFC();

  v5 = sub_100191814();
  sub_100124E1C(v5, v6, v7, 622, v0, v0);

  swift_retain_n();

  sub_10011DE78();
}

uint64_t sub_100190E10()
{
  swift_beginAccess();

  sub_1001BA9D4(v0);
  return swift_endAccess();
}

uint64_t sub_100190E70()
{
  sub_100191858();
  *(v0 + 248) = v1;
  swift_errorRetain();
}

uint64_t sub_100190EB8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 120))
  {
    sub_10002D864();
    swift_allocError();
    *v3 = 1;

    swift_errorRetain();
    sub_1000A13B0();
  }

  *(a2 + 120) = 0;

  v5 = *(a2 + 208);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 208) = v7;
    return sub_10018F680(2);
  }

  return result;
}

void sub_100190F78()
{
  *(v0 + 120) = 0;

  sub_10018F680(3u);
}

uint64_t sub_100190FAC()
{
  sub_100019CCC(v0 + 16);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_100191054()
{
  sub_100190FAC();

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for HappyEyeballsConnector.ConnectionState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100191188);
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

unint64_t sub_1001911C4()
{
  result = qword_1002BA8F8;
  if (!qword_1002BA8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BA8F8);
  }

  return result;
}

uint64_t sub_100191258(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1001F7B48();
  }

  return sub_1001F7818();
}

uint64_t sub_100191300()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10019134C()
{

  sub_1000A41C8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1001913A0()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001913F4()
{

  sub_1000A41C8();

  return _swift_deallocObject(v0, v1, v2);
}

unint64_t sub_100191448()
{
  result = qword_1002BA900;
  if (!qword_1002BA900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BA900);
  }

  return result;
}

uint64_t sub_1001914CC(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

_BYTE *storeEnumTagSinglePayload for HappyEyeballsConnector.ConnectorInput(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001915D8);
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

_BYTE *storeEnumTagSinglePayload for TargetIterator.AddressFamily(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001916DCLL);
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

unint64_t sub_100191718()
{
  result = qword_1002BA908;
  if (!qword_1002BA908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BA908);
  }

  return result;
}

unint64_t sub_100191770()
{
  result = qword_1002BA910;
  if (!qword_1002BA910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BA910);
  }

  return result;
}

void *sub_1001917E0(void *result)
{
  result[2] = v1;
  result[3] = sub_100190B28;
  result[4] = 0;
  return result;
}

uint64_t sub_1001917FC(uint64_t result)
{
  *(result + 16) = sub_10012ED90;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_100191838(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;
}

uint64_t sub_100191858()
{

  return swift_beginAccess();
}

uint64_t sub_1001918C4()
{

  return sub_1001F7A28();
}

uint64_t sub_1001918E4()
{

  return swift_getObjectType();
}

uint64_t sub_100191904()
{

  return swift_retain_n();
}

void sub_10019191C(uint64_t a1@<X8>)
{
  v2 = v1[1];
  if (v2 == v1[2])
  {
    __break(1u);
    goto LABEL_8;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (HIDWORD(v2))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v2 >= *(*v1 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = *v1 + (v2 << 6);
  v4 = *(v3 + 32);
  v5 = *(v3 + 56);
  v16 = *(v3 + 40);
  v17 = v5;
  v18 = *(v3 + 72);
  v19 = *(v3 + 88);
  if (v4)
  {
    *a1 = v4;
    v6 = v16;
    v7 = v17;
    *(a1 + 8) = v16;
    *(a1 + 24) = v7;
    v8 = v18;
    *(a1 + 40) = v18;
    v9 = v19;
    *(a1 + 56) = v19;
    v11 = v4;
    v12 = v6;
    v13 = v7;
    v14 = v8;
    v15 = v9;
    sub_1000370F8(&v11, &v10);
    sub_100031A14(1);
    return;
  }

LABEL_11:
  __break(1u);
}

unint64_t sub_1001919E4(unsigned int a1, unsigned int a2, int a3)
{
  v7 = v3[2];
  v8 = sub_10011349C(v7, *v3, v3[1]);
  v9 = UnsafeMutableRawBufferPointer.init(fastRebase:)(v8);
  v11 = v10;
  result = sub_10000BA98(4);
  v13 = result;
  if (v9)
  {
    if (v11 - v9 < result)
    {
      __break(1u);
    }

    else
    {
      v9[1] = a1;
      v9[2] = a2;
      result = sub_10000BA90(4);
      if ((result & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(result))
        {
          *v9 = result;
          result = sub_10013E95C(v9);
          if (v15)
          {
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }

          if (result && (v14 - result) >= 4)
          {
            *result = a3;
            if (!__OFADD__(v7, v13))
            {
              v3[2] = v7 + v13;
              return result;
            }

            goto LABEL_14;
          }

LABEL_13:
          __break(1u);
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_15:
  if (v13 <= 0)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100191AD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a3 + 16) - 1) & (a2 + result);
  if (v5 < 0 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(v5))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = 0x1FFFFFF00000000;
  if (v5 < a4)
  {
    v6 = 0xFFFFFF00000000;
  }

  return v6 | v5;
}

uint64_t sub_100191B1C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a1 + 6);
  v5 = *(a1 + 14);
  v6 = *(a1 + 30);
  v7 = *a1;
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v14 = *(a1 + 1);
  LODWORD(v15) = v4;
  WORD2(v15) = v5;
  BYTE6(v15) = v6;
  *(&v15 + 1) = a2;
  *&v16 = v7;
  *(&v16 + 1) = v8;
  *&v17 = v9;
  *(&v17 + 1) = v10;
  v13[0] = v14;
  v13[1] = v15;
  v13[2] = v16;
  v13[3] = v17;
  sub_100037AAC();

  sub_10007E65C(v8, v9);

  sub_1001928EC(v13);
  swift_endAccess();
  sub_1000DF9D4(&v14);
  if (*(v3 + 168) >= *(v3 + 152))
  {
    return 1;
  }

  v11 = 1;
  if (sub_100006980((*(v3 + 176) + 16), 1, 0))
  {
    v11 = 0;
    *(v3 + 184) = 0;
  }

  return v11;
}

uint64_t sub_100191C38()
{
  result = swift_beginAccess();
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  if (v5 < 0 != v4)
  {
    v5 += *(*(v0 + 104) + 16);
  }

  v4 = __OFSUB__(v5, 1);
  v6 = v5 - 1 < 0;
  v7 = v5 - 1;
  if (v6 == v4)
  {
    *(v0 + 128) = v7;
    *(v0 + 136) = 0;
  }

  return result;
}

uint64_t sub_100191C90(uint64_t a1, char a2)
{
  if (a2)
  {
    *(v2 + 200) = 0;
  }

  sub_100037AAC();
  sub_100192CDC(a1);
  return swift_endAccess();
}

BOOL sub_100191CDC(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = __chkstk_darwin(a1, v1);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v4);
  if (swift_dynamicCast())
  {
    v7 = v11[6];

    v9 = v7 == 40 || v7 == 65;
  }

  else
  {
    v9 = 0;
  }

  (*(v3 + 8))(v6, a1);
  return v9;
}

unint64_t sub_100191DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(uint64_t, uint64_t), uint64_t a14)
{
  v116 = a8;
  v124 = a6;
  v104 = a14;
  v105 = a13;
  v110 = a11;
  v111 = a10;
  sub_1001930B4(a1, v146);
  LODWORD(v17) = v149;
  v108 = v148;
  v18 = HIBYTE(v149);
  v19 = v150;
  v112 = *(&v146[0] + 1);
  v20 = *&v146[0];
  v142 = v146[0];
  v143 = v146[1];
  v145 = v147;
  i = HIWORD(v149);
  v144 = v146[2];
  sub_1001939D8(a1, v135);
  v151 = 0;
  v22 = 0;
  v23 = 0;
  v117 = v19 & 0xFF00000000000000;
  v119 = v19;
  v114 = v19;
  v115 = v20;
  v113 = v20 + 32;
  v107 = a4;
  v24 = (a4 + 48);
  v25 = (a2 + 8);
  v109 = a2;
  v26 = a2;
  v27 = v108;
  v103 = __PAIR64__(v17, v18);
  HIDWORD(v102) = WORD1(v17);
  v28 = WORD1(v17);
  BYTE4(v118) = v18;
  while (1)
  {
    if (v117 == 0x200000000000000)
    {
      v22 = 0;
      v94 = v103;
      LOWORD(v17) = WORD2(v103);
      LOBYTE(v28) = BYTE4(v102);
      v95 = v108;
LABEL_69:
      v135[0] = v142;
      v135[1] = v143;
      v135[2] = v144;
      v136 = v145;
      v137 = v95;
      v138 = v17;
      v139 = v28;
      v140 = v94;
      v141 = v119;
      sub_10015EDF0(v135);
LABEL_73:
      v96 = v116;
LABEL_74:
      if (v107)
      {
        v97 = v105(v107, v22);
        if (v106)
        {
          for (; v22; --v22)
          {
            v96 += 8;
            swift_unknownObjectRelease();
          }
        }

        else
        {
          for (i = v97; v22; --v22)
          {
            v96 += 8;
            swift_unknownObjectRelease();
          }
        }

        return i;
      }

LABEL_99:
      __break(1u);
LABEL_100:
      sub_1001F7AC8();
      __break(1u);
      JUMPOUT(0x1001926C4);
    }

    v29 = *(v115 + 16);
    if (v18)
    {
      if ((v119 & 0x100000000000000) != 0)
      {
        v30 = 0;
      }

      else
      {
        v30 = *(v115 + 16);
      }

      v31 = v114 - v27 + v30;
    }

    else if ((v119 & 0x100000000000000) != 0)
    {
      v32 = v27 - v114 + v29;
      v33 = __OFSUB__(0, v32);
      v31 = -v32;
      if (v33)
      {
        goto LABEL_95;
      }
    }

    else
    {
      v31 = v114 - v27;
    }

    if ((v31 & 0x8000000000000000) != 0)
    {
      v95 = v27;
      v94 = BYTE4(v118);
      goto LABEL_69;
    }

    if (v29 <= v27)
    {
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v34 = (v113 + (v27 << 6));
    v35 = v34[3];
    v37 = *v34;
    v36 = v34[1];
    v133 = v34[2];
    v134 = v35;
    v131 = v37;
    v132 = v36;
    v38 = v37;
    if (!v37)
    {
      goto LABEL_96;
    }

    v39 = (v29 + 0x1FFFFFFFFLL) & (v27 + 1);
    if (HIDWORD(v39))
    {
      goto LABEL_85;
    }

    HIDWORD(v118) = v39 >= v112;
    if (__OFSUB__(0x7FFFFFFFLL, v23))
    {
      goto LABEL_86;
    }

    v125 = v22;
    v40 = DWORD2(v131);
    v41 = (HIDWORD(v131) - DWORD2(v131));
    if (HIDWORD(v131) < DWORD2(v131))
    {
      goto LABEL_87;
    }

    v42 = *(&v133 + 1);
    i = v133;
    v43 = v134;
    if (0x7FFFFFFF - v23 < v41)
    {
      break;
    }

    if (v151 == 0x20000)
    {
      sub_100193C88();
      sub_10015EDF0(v135);
      v22 = 1024;
      goto LABEL_73;
    }

    v33 = __OFADD__(v23, v41);
    v44 = v23 + v41;
    if (v33)
    {
      goto LABEL_88;
    }

    HIDWORD(v120) = v39 >= v112;
    v121 = (v29 - 1) & (v27 + 1);
    v122 = v44;
    v123 = v24;
    v45 = v26;
    v46 = v25;
    v47 = WORD2(v132);
    v48 = BYTE6(v132);
    swift_beginAccess();
    v49 = *(v38 + 24);
    *(v116 + 8 * v125) = v38;
    swift_unknownObjectRetain();
    if (!v124)
    {
      goto LABEL_97;
    }

    v50 = i >> 62;
    if (i >> 62)
    {
      if (v50 != 1)
      {
        goto LABEL_100;
      }

      v52 = *((i & 0x3FFFFFFFFFFFFFFFLL) + 0x14);
      v54 = *((i & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v53 = *((i & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v55 = *((i & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v56 = v124 + v151;
      *v56 = *((i & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      *(v56 + 4) = v52;
      *(v56 + 8) = v54;
      *(v56 + 16) = v53;
      *(v56 + 24) = v55;
      v51 = 28;
    }

    else
    {
      *(v124 + v151) = *(i + 16);
      v51 = 16;
    }

    *(v46 - 1) = v49 + (v48 | (v47 << 8)) + v40;
    *v46 = v41;
    v57 = v125 * v111;
    if ((v125 * v111) >> 64 != (v125 * v111) >> 63)
    {
      goto LABEL_89;
    }

    v58 = (v125 + 1) * v111;
    if (((v125 + 1) * v111) >> 64 != v58 >> 63)
    {
      goto LABEL_90;
    }

    if (v58 < v57)
    {
      goto LABEL_91;
    }

    v59 = v110 + v57;
    v60 = v110 + v58;
    if (v110)
    {
      v17 = v59;
    }

    else
    {
      v60 = 0;
      v17 = 0;
    }

    v126 = v60;
    v127 = 0;
    if (v42 == 4)
    {
      LODWORD(v42) = v51;
      v61 = *(&v133 + 1);
      v62 = v134;

      v63 = v61;
      v64 = v62;
      v65 = v46;
      i = v41;
      sub_10007E65C(v63, v64);
      v46 = v45;
      v66 = v123;
    }

    else
    {
      v65 = v46;
      i = v41;
      if (v50)
      {
        sub_100193D14();
        v66 = v123;
        switch(v86)
        {
          case 1:
            sub_100193CE4(v78, v79, v80, v81, v82, v83, v84, v85, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v43, v120, v121, v122, v123, *(&v43 + 1), v124, v125, v17, v126, 0, v128, v129, v130, v131, *(&v131 + 1), v132, *(&v132 + 1), v133, *(&v133 + 1), v134, *(&v134 + 1), v135[0]);
            sub_100193CC8();
            v87 = &dword_1002E6160;
            v77 = v38;
            if (qword_1002AC4D0 != -1)
            {
              sub_10006E488();
              swift_once();
              v87 = &dword_1002E6160;
            }

            break;
          case 2:
            sub_100193CE4(v78, v79, v80, v81, v82, v83, v84, v85, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v43, v120, v121, v122, v123, *(&v43 + 1), v124, v125, v17, v126, 0, v128, v129, v130, v131, *(&v131 + 1), v132, *(&v132 + 1), v133, *(&v133 + 1), v134, *(&v134 + 1), v135[0]);
            sub_100193CC8();
            v87 = &dword_1002E6164;
            v77 = v38;
            if (qword_1002AC4D8 != -1)
            {
              sub_10006E49C();
              swift_once();
              v87 = &dword_1002E6164;
            }

            break;
          case 3:
            sub_100193CE4(v78, v79, v80, v81, v82, v83, v84, v85, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v43, v120, v121, v122, v123, *(&v43 + 1), v124, v125, v17, v126, 0, v128, v129, v130, v131, *(&v131 + 1), v132, *(&v132 + 1), v133, *(&v133 + 1), v134, *(&v134 + 1), v135[0]);
            sub_100193CC8();
            v87 = &dword_1002E6168;
            v77 = v38;
            if (qword_1002AC4E0 != -1)
            {
              sub_10006E474();
              swift_once();
              v87 = &dword_1002E6168;
            }

            break;
          default:
            sub_100193CE4(v78, v79, v80, v81, v82, v83, v84, v85, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v43, v120, v121, v122, v123, *(&v43 + 1), v124, v125, v17, v126, 0, v128, v129, v130, v131, *(&v131 + 1), v132, *(&v132 + 1), v133, *(&v133 + 1), v134, *(&v134 + 1), v135[0]);
            sub_100193CC8();
            v87 = &dword_1002E6158;
            v77 = v38;
            if (qword_1002AC4C0 != -1)
            {
              sub_100193D00();
              swift_once();
              v87 = &dword_1002E6158;
            }

            break;
        }

        v88 = *v87;
        v89 = 41;
        v90 = 36;
      }

      else
      {
        sub_100193D14();
        v66 = v123;
        switch(v75)
        {
          case 1:
            sub_100193CE4(v67, v68, v69, v70, v71, v72, v73, v74, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v43, v120, v121, v122, v123, *(&v43 + 1), v124, v125, v17, v126, 0, v128, v129, v130, v131, *(&v131 + 1), v132, *(&v132 + 1), v133, *(&v133 + 1), v134, *(&v134 + 1), v135[0]);
            sub_100193CC8();
            v76 = &dword_1002E6160;
            v77 = v38;
            if (qword_1002AC4D0 != -1)
            {
              sub_10006E488();
              swift_once();
              v76 = &dword_1002E6160;
            }

            break;
          case 2:
            sub_100193CE4(v67, v68, v69, v70, v71, v72, v73, v74, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v43, v120, v121, v122, v123, *(&v43 + 1), v124, v125, v17, v126, 0, v128, v129, v130, v131, *(&v131 + 1), v132, *(&v132 + 1), v133, *(&v133 + 1), v134, *(&v134 + 1), v135[0]);
            sub_100193CC8();
            v76 = &dword_1002E6164;
            v77 = v38;
            if (qword_1002AC4D8 != -1)
            {
              sub_10006E49C();
              swift_once();
              v76 = &dword_1002E6164;
            }

            break;
          case 3:
            sub_100193CE4(v67, v68, v69, v70, v71, v72, v73, v74, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v43, v120, v121, v122, v123, *(&v43 + 1), v124, v125, v17, v126, 0, v128, v129, v130, v131, *(&v131 + 1), v132, *(&v132 + 1), v133, *(&v133 + 1), v134, *(&v134 + 1), v135[0]);
            sub_100193CC8();
            v76 = &dword_1002E6168;
            v77 = v38;
            if (qword_1002AC4E0 != -1)
            {
              sub_10006E474();
              swift_once();
              v76 = &dword_1002E6168;
            }

            break;
          default:
            sub_100193CE4(v67, v68, v69, v70, v71, v72, v73, v74, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v43, v120, v121, v122, v123, *(&v43 + 1), v124, v125, v17, v126, 0, v128, v129, v130, v131, *(&v131 + 1), v132, *(&v132 + 1), v133, *(&v133 + 1), v134, *(&v134 + 1), v135[0]);
            sub_100193CC8();
            v76 = &dword_1002E6158;
            v77 = v38;
            if (qword_1002AC4C0 != -1)
            {
              sub_100193D00();
              swift_once();
              v76 = &dword_1002E6158;
            }

            break;
        }

        v88 = *v76;
        v89 = 0;
        v90 = 3;
      }

      sub_1001919E4(v89, v90, v88);
      sub_10003709C(v42, v77);
    }

    v91 = v127;
    if (v127)
    {
      if (v127 < 0)
      {
        goto LABEL_94;
      }

      v91 = v127 + v17;
      if (!v17)
      {
        v91 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    if (!v109)
    {
      goto LABEL_98;
    }

    v92 = v91 - v17;
    if (!v17)
    {
      v92 = 0;
    }

    if (v92 > 0xFFFFFFFFLL)
    {
      goto LABEL_92;
    }

    if (v92 < 0)
    {
      goto LABEL_93;
    }

    v93 = v151;
    *(v66 - 6) = v124 + v151;
    *(v66 - 10) = v42;
    *(v66 - 4) = v46;
    *(v66 - 6) = 1;
    *(v66 - 2) = v17;
    *(v66 - 2) = v92;
    *(v66 - 1) = 0;
    *v66 = i;
    v24 = v66 + 14;
    sub_100193930(&v131);
    v151 = v93 + 128;
    v26 = v46 + 2;
    v25 = v65 + 2;
    v22 = v125 + 1;
    LOBYTE(v28) = -1;
    LOWORD(v17) = -1;
    v27 = v121;
    v23 = v122;
    LOBYTE(v18) = BYTE4(v120);
  }

  sub_100193C88();

  sub_10007E65C(v42, v43);
  sub_10015EDF0(v135);
  v96 = v116;
  if (v151)
  {
    sub_100193930(&v131);
    v22 = v125;
    goto LABEL_74;
  }

  sub_1000274C4();
  sub_10002E0D8();
  swift_allocError();
  *v98 = 0xD000000000000023;
  *(v98 + 8) = 0x800000010022C340;
  *(v98 + 16) = 40;
  swift_willThrow();
  sub_100193930(&v131);
  return i;
}

void sub_1001926E4(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 64);
  v4 = 0uLL;
  if (HIBYTE(v3) == 2)
  {
    v5 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
LABEL_17:
    *a1 = v4;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
    return;
  }

  v8 = *v1;
  v9 = *(v1 + 56);
  v10 = *(v1 + 60);
  v11 = *(v1 + 62);
  v12 = *(v1 + 63);
  v13 = *(*v1 + 16);
  if (v12 == 1)
  {
    if ((v3 & 0x100000000000000) != 0)
    {
      v14 = v3 - v9;
    }

    else
    {
      v14 = v13 - v9 + v3;
    }
  }

  else if ((v3 & 0x100000000000000) != 0)
  {
    v15 = v9 - v3 + v13;
    v16 = __OFSUB__(0, v15);
    v14 = -v15;
    if (v16)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    v14 = v3 - v9;
  }

  v5 = 0uLL;
  v6 = 0uLL;
  v7 = 0uLL;
  if (v14 < 0)
  {
    goto LABEL_17;
  }

  if (v13 <= v9)
  {
    __break(1u);
    goto LABEL_19;
  }

  v17 = (v8 + (v9 << 6));
  v18 = v17[5];
  v20 = v17[2];
  v19 = v17[3];
  v27 = v17[4];
  v28 = v18;
  v25 = v20;
  v26 = v19;
  if (v20)
  {
    v21 = v12 == 0;
    v22 = 0x100000000000000;
    if (v21)
    {
      v22 = 0;
    }

    v23 = sub_100191AD0(v22 | (v11 << 48) | (v10 << 32) | v9, 1, v8, *(v1 + 8));
    *(v1 + 56) = v23;
    *(v1 + 60) = WORD2(v23);
    *(v1 + 62) = BYTE6(v23);
    *(v1 + 63) = HIBYTE(v23) & 1;
    sub_100193A10(&v25, &v24);
    v4 = v25;
    v5 = v26;
    v6 = v27;
    v7 = v28;
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
}

void sub_100192828()
{
  sub_1001938DC(v14);
  if (!*&v14[0])
  {
    goto LABEL_11;
  }

  v10 = v14[0];
  v11 = v14[1];
  v12 = v14[2];
  v13 = v14[3];
  v1 = *(v0 + 40);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = *(&v11 + 1);
  v6 = DWORD2(v10);
  v5 = HIDWORD(v10);
  *(v0 + 40) = v3;
  v7 = v5 - v6;
  if (v5 < v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = *(v0 + 48);
  v2 = __OFSUB__(v8, v7);
  v9 = v8 - v7;
  if (v2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  *(v0 + 48) = v9;
  if (v4)
  {

    sub_100193930(&v10);
    swift_errorRetain();
  }

  else
  {
    sub_100193930(&v10);
  }
}

void sub_1001928EC(uint64_t a1)
{
  sub_10002F0F8(a1);
  v3 = *(v1 + 40);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *(v1 + 40) = v5;
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  v8 = v7 >= v6;
  v9 = v7 - v6;
  if (!v8)
  {
    goto LABEL_7;
  }

  v10 = *(v1 + 48);
  v4 = __OFADD__(v10, v9);
  v11 = v10 + v9;
  if (!v4)
  {
    *(v1 + 48) = v11;
    return;
  }

LABEL_8:
  __break(1u);
}

void sub_100192948(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1000339AC();

  v6 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    goto LABEL_51;
  }

  if (v6 < 0)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = v6 + 1;
    v10 = a2 + 48;
    v50 = a2 + 48;
    v51 = v9;
    while (2)
    {
      v11 = ~v8;
      v12 = (v10 + 56 * v8);
      v13 = v9 - v8;
      if (v9 != v8)
      {
        while (1)
        {
          v15 = v3[1];
          v14 = v3[2];
          if (v14 == v15)
          {
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
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_41;
          }

          if (HIDWORD(v15))
          {
            goto LABEL_42;
          }

          v16 = *v3;
          v17 = *(*v3 + 16);
          if (v15 >= v17)
          {
            goto LABEL_43;
          }

          v18 = v16 + (v15 << 6);
          v20 = *(v18 + 32);
          v19 = (v18 + 32);
          if (!v20)
          {
            goto LABEL_53;
          }

          v22 = *(v19 + 2);
          v21 = *(v19 + 3);
          v23 = v21 >= v22;
          v24 = v21 - v22;
          if (!v23)
          {
            goto LABEL_44;
          }

          if (v24 < *v12)
          {
            goto LABEL_45;
          }

          if ((v3[4] & 1) == 0)
          {
            v25 = v3[3];
            v26 = v25 < 1;
            v27 = v25 - 1;
            v28 = v26;
            if (v26)
            {
              v27 = 0;
            }

            v3[3] = v27;
            *(v3 + 32) = v28;
          }

          v26 = v14 < v15;
          v29 = v14 - v15;
          if (!v26)
          {
            v17 = 0;
          }

          if ((v29 + v17) < 1)
          {
            goto LABEL_46;
          }

          v52 = v13;
          v53 = v12;
          v30 = v19[3];
          v32 = *v19;
          v31 = v19[1];
          v57 = v19[2];
          v58 = v30;
          v55 = v32;
          v56 = v31;
          if (!v32)
          {
            goto LABEL_54;
          }

          v33 = *(&v57 + 1);
          v34 = v58;

          sub_10007E65C(v33, v34);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100111F9C();
            v16 = v35;
          }

          if (v15 >= *(v16 + 16))
          {
            goto LABEL_47;
          }

          v36 = (v16 + (v15 << 6));
          v37 = v36[2];
          v38 = v36[3];
          v39 = v36[5];
          v54[2] = v36[4];
          v54[3] = v39;
          v54[0] = v37;
          v54[1] = v38;
          v36[4] = 0u;
          v36[5] = 0u;
          v36[2] = 0u;
          v36[3] = 0u;
          sub_100193930(v54);
          *v3 = v16;
          v3[1] = (*(v16 + 16) + 0x1FFFFFFFFLL) & (v15 + 1);
          v40 = v3[5];
          v41 = __OFSUB__(v40, 1);
          v42 = v40 - 1;
          if (v41)
          {
            goto LABEL_48;
          }

          v43 = *(&v56 + 1);
          v45 = DWORD2(v55);
          v44 = HIDWORD(v55);
          v3[5] = v42;
          v46 = v44 - v45;
          if (v44 < v45)
          {
            goto LABEL_49;
          }

          v47 = v3[6];
          v41 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          if (v41)
          {
            goto LABEL_50;
          }

          v3[6] = v48;
          if (v43)
          {
            break;
          }

          sub_100193930(&v55);
          if (v7)
          {

            swift_errorRetain();
LABEL_35:
          }

          --v11;
          v12 = v53 + 14;
          v13 = v52 - 1;
          if (v52 == 1)
          {
            return;
          }
        }

        sub_100193930(&v55);
        if (!v7)
        {
          v8 = -v11;
          v7 = v43;
          v10 = v50;
          v9 = v51;
          continue;
        }

        sub_100193998(v7);

        sub_10002FEFC(v49);

        goto LABEL_35;
      }

      break;
    }
  }
}

void sub_100192C50(uint64_t a1)
{
  v2 = v1[1];
  if (v2 == v1[2])
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (HIDWORD(v2))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v2 >= *(*v1 + 16))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = *v1 + (v2 << 6);
  v5 = *(v3 + 32);
  v4 = v3 + 32;
  if (v5)
  {
    v8 = v4 + 8;
    v6 = *(v4 + 8);
    v7 = *(v8 + 4);
    v9 = v7 >= v6;
    v10 = v7 - v6;
    if (v9)
    {
      if (v10 >= a1)
      {
        sub_100192828();
        return;
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
}

void sub_100192CDC(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = sub_1001F7818();
  v48 = v5;
  if (v4 == v2)
  {
LABEL_33:
    v28 = 0;
    v29 = *(v5 + 16);
    v30 = a1;
    while (1)
    {
      if (v29 == v28)
      {

        return;
      }

      if (v28 >= *(v5 + 16))
      {
        break;
      }

      v31 = *(v5 + 8 * v28 + 32);
      v32 = *(v31 + 40);
      ObjectType = swift_getObjectType();
      v34 = *(v32 + 16);

      swift_errorRetain();
      if (v34(ObjectType, v32))
      {
        v35 = sub_1001DBFE4(v30, 1);
        CallbackList._run()();

        sub_100037408(v35);
      }

      else
      {
        v36 = *(v31 + 40);
        v37 = swift_getObjectType();
        LOBYTE(v44) = 1;
        v38 = swift_allocObject();
        *(v38 + 16) = v31;
        *(v38 + 24) = v30;
        *(v38 + 32) = v44;
        v39 = *(v36 + 24);

        swift_errorRetain();
        v39(sub_1000A3B0C, v38, v37, v36);
        v30 = a1;
      }

      ++v28;
    }

    __break(1u);
  }

  else
  {
    v7 = *(v41 + 40);
    v6 = *(v41 + 48);
    v40 = v4;
    while (1)
    {
      if ((*(v41 + 32) & 1) == 0)
      {
        v8 = *(v41 + 24);
        v9 = v8 < 1;
        v10 = v8 - 1;
        v11 = v9;
        if (v9)
        {
          v10 = 0;
        }

        *(v41 + 24) = v10;
        *(v41 + 32) = v11;
      }

      v12 = v4 - v2;
      if (v4 < v2)
      {
        v12 += *(v3 + 16);
      }

      if (v12 < 1)
      {
        break;
      }

      if ((v2 & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }

      if (HIDWORD(v2))
      {
        goto LABEL_44;
      }

      v13 = *(v3 + 16);
      if (v2 >= v13)
      {
        goto LABEL_45;
      }

      v14 = (v3 + (v2 << 6));
      v15 = v14[5];
      v17 = v14[2];
      v16 = v14[3];
      v46 = v14[4];
      v47 = v15;
      v44 = v17;
      v45 = v16;
      if (!v17)
      {
        goto LABEL_51;
      }

      if (v4 >= v2)
      {
        v13 = 0;
      }

      if ((v4 - v2 + v13) < 1)
      {
        goto LABEL_46;
      }

      v18 = *(&v46 + 1);
      v19 = v47;

      sub_10007E65C(v18, v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100111F9C();
        v3 = v20;
      }

      if (v2 >= *(v3 + 16))
      {
        goto LABEL_47;
      }

      v21 = (v3 + (v2 << 6));
      v22 = v21[2];
      v23 = v21[3];
      v24 = v21[5];
      v43[2] = v21[4];
      v43[3] = v24;
      v43[0] = v22;
      v43[1] = v23;
      v21[4] = 0u;
      v21[5] = 0u;
      v21[2] = 0u;
      v21[3] = 0u;
      sub_100193930(v43);
      v25 = __OFSUB__(v7--, 1);
      if (v25)
      {
        goto LABEL_48;
      }

      v26 = HIDWORD(v44) - DWORD2(v44);
      if (HIDWORD(v44) < DWORD2(v44))
      {
        goto LABEL_49;
      }

      v25 = __OFSUB__(v6, v26);
      v6 -= v26;
      if (v25)
      {
        goto LABEL_50;
      }

      v27 = *(v3 + 16);
      if (*(&v45 + 1))
      {
        swift_retain_n();
        sub_1001F6F08();
        if (*(v48 + 16) >= *(v48 + 24) >> 1)
        {
          sub_1001F6F58();
        }

        sub_1001F6F98();
        sub_100193930(&v44);

        v5 = v48;
      }

      else
      {
        sub_100193930(&v44);
      }

      v2 = (v27 + 0x1FFFFFFFFLL) & (v2 + 1);
      v4 = v40;
      if (v2 == v40)
      {
        *v41 = v3;
        *(v41 + 8) = v40;
        *(v41 + 40) = v7;
        *(v41 + 48) = v6;
        goto LABEL_33;
      }
    }
  }

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
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
}

uint64_t sub_1001930B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (HIDWORD(v2))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v4 = result;
  if (*(result + 32))
  {
    v5 = 0x200000000000000;
  }

  else
  {
    result = sub_100191AD0(v2 | 0x1FFFFFF00000000, *(result + 24), *result, v2);
    v5 = result & 0x1FFFFFFFFFFFFFFLL;
  }

  v6 = *(v4 + 16);
  *a2 = *v4;
  *(a2 + 16) = v6;
  *(a2 + 32) = *(v4 + 32);
  *(a2 + 48) = *(v4 + 48);
  *(a2 + 56) = v2;
  *(a2 + 60) = 0x1FFFFFF;
  *(a2 + 64) = v5;
  return result;
}

double sub_10019325C@<D0>(_OWORD *a1@<X8>)
{
  sub_1001926E4(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

uint64_t sub_10019329C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v16 = sub_100106280(16);
  memset(v22, 0, sizeof(v22));
  *(v10 + 104) = sub_1001CAF14(v22, v16);
  *(v10 + 112) = 0;
  *(v10 + 120) = 0;
  *(v10 + 128) = 0;
  *(v10 + 136) = 1;
  *(v10 + 144) = 0;
  *(v10 + 152) = 0;
  *(v10 + 160) = xmmword_1002141E0;
  sub_1000183C4(&qword_1002BA560);
  swift_bufferAllocate();
  v17 = swift_unknownObjectRetain();
  sub_1000069C8((v17 + 16), 1);
  swift_unknownObjectRelease();
  sub_10002E0D8();
  *(v10 + 176) = swift_dynamicCastClassUnconditional();
  *(v10 + 184) = 1;
  *(v10 + 192) = 16;
  *(v10 + 200) = 1;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 48) = a3;
  *(v10 + 56) = a4;
  *(v10 + 64) = a5;
  *(v10 + 72) = a6;
  *(v10 + 32) = a7;
  *(v10 + 40) = a8;
  *(v10 + 80) = a9;
  *(v10 + 96) = a10;
  return v10;
}

uint64_t sub_1001933D8()
{
  result = swift_beginAccess();
  if (*(v0 + 136))
  {
    return 3;
  }

  v2 = *(v0 + 112);
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(v2))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v3 = *(v0 + 104);
  v4 = sub_100191AD0(v2 | 0x1FFFFFF00000000, *(v0 + 128), v3, *(v0 + 112));
  v5 = *(v3 + 16);
  if ((v4 & 0x100000000000000) != 0)
  {
    v5 = 0;
  }

  return (v5 - v2 + v4) > 0;
}

uint64_t sub_100193474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1001934A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void))
{
  result = a8();
  if (v8)
  {
    return v10;
  }

  return result;
}

uint64_t sub_1001934DC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  sub_100037AAC();
  if (a2)
  {
    if (a5)
    {
      sub_100192C50(a1);
    }

    else
    {
      sub_100192948(a1, a3);
    }

    v14 = v11;
    v15 = v12;
    v16 = v13;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 2;
  }

  swift_endAccess();
  if (v6[19] < v6[20])
  {
    sub_1000069C8((v6[22] + 16), 1);
  }

  sub_1001935BC(v14, v15);
  sub_10019389C(v14);
  return v16;
}

uint64_t sub_1001935BC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_100193998(v2);
      sub_1000A13B0();
    }

    else
    {

      swift_errorRetain();

      swift_errorRetain();
      sub_1000A13B0();
    }
  }

  return result;
}

uint64_t sub_100193694()
{
  v1 = v0;
  swift_errorRetain();
  sub_1000183C4(&qword_1002ACE88);
  if (swift_dynamicCast())
  {

    if (v10 == 65)
    {
      sub_10002D678();
      sub_10002E0D8();
      swift_allocError();
      v3 = 8;
      goto LABEL_7;
    }

    if (v10 == 40)
    {
      sub_10002D678();
      sub_10002E0D8();
      swift_allocError();
      v3 = 7;
LABEL_7:
      *v2 = v3;
      *(v2 + 8) = 3;
      swift_beginAccess();
      sub_100192828();
      v5 = v4;
      v7 = v6;
      v8 = *(v0 + 136);
      swift_endAccess();

      sub_1001935BC(v5, v7);
      sub_10019389C(v5);
      v1 = v8 ^ 1u;

      return v1;
    }
  }

  swift_willThrow();
  swift_errorRetain();
  return v1;
}

uint64_t sub_10019380C()
{

  return v0;
}

uint64_t sub_100193834()
{
  sub_10019380C();

  return swift_deallocClassInstance();
}

uint64_t sub_10019389C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

double sub_1001938DC@<D0>(_OWORD *a1@<X8>)
{
  if ((*(v1 + 32) & 1) == 0)
  {
    v2 = *(v1 + 24);
    v3 = v2 < 1;
    v4 = v2 - 1;
    v5 = v3;
    if (v3)
    {
      v4 = 0;
    }

    *(v1 + 24) = v4;
    *(v1 + 32) = v5;
  }

  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = __OFSUB__(v7, v6);
  v9 = v7 - v6;
  if (v9 < 0 != v8)
  {
    v9 += *(*v1 + 16);
  }

  if (v9 < 1)
  {
    result = 0.0;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  else
  {
    sub_10019191C(a1);
  }

  return result;
}

uint64_t sub_100193930(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002ADC00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100193998(uint64_t result)
{
  if (result)
  {

    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_100193A10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002ADC00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100193A80()
{

  sub_1000374AC(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100193AC4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100193B04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100193B64(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100193BA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100193C08()
{
  result = qword_1002BAA08;
  if (!qword_1002BAA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAA08);
  }

  return result;
}

uint64_t sub_100193CC8()
{

  return sub_10007E65C(v1, v0);
}

uint64_t sub_100193CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{

  return sub_100193A10(&a43, &a51);
}

void sub_100193D28(unint64_t a1@<X0>, __int128 *a2@<X1>, Swift::String *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (!(a1 >> 62))
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_13:
    __src[0] = *a2;
    sub_10001C838(__src);
    v17[0] = a2[1];
    sub_10001C838(v17);
    *&v22[0] = *(a2 + 4);
    sub_10001C88C(v22);
    sub_10001C7E4(a3);

    v11 = _swiftEmptyArrayStorage;
LABEL_14:
    sub_1001948C4();
    *(a5 + 32) = v11;
    return;
  }

  v9 = sub_1001F7B48();
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_3:
  v18 = _swiftEmptyArrayStorage;
  sub_10003412C(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = v18;
    v12 = *a2;
    v21 = a2[1];
    v22[0] = v12;
    v20 = *(a2 + 4);
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = sub_1001F7808();
      }

      else
      {
        v13 = *(a1 + 8 * v10 + 32);
      }

      sub_1000552A0(v22, v17);
      sub_1000552A0(&v21, v17);
      sub_10007B8A0(&v20, v17);
      sub_10007B844(a3, v17);
      sub_10007736C(v13, a2, a3, a4 & 1, __src);
      v18 = v11;
      v15 = v11[2];
      v14 = v11[3];
      if (v15 >= v14 >> 1)
      {
        sub_10003412C((v14 > 1), v15 + 1, 1);
        v11 = v18;
      }

      ++v10;
      v11[2] = v15 + 1;
      memcpy(&v11[28 * v15 + 4], __src, 0xD9uLL);
    }

    while (v9 != v10);

    sub_10001C7E4(a3);
    sub_10001C838(v22);
    sub_10001C838(&v21);
    sub_10001C88C(&v20);
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_100193F48(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027CCF0;
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

uint64_t sub_100193F94(char a1)
{
  if (!a1)
  {
    return 0x65762D65726F7473;
  }

  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return 0xD000000000000015;
}

uint64_t sub_100194004(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002BAA38);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  v11 = &v13[-v10];
  sub_10001AE68(a1, a1[3]);
  sub_10019452C();
  sub_1001F8198();
  v16 = 0;
  sub_1001F7D88();
  if (!v2)
  {
    v15 = 1;
    sub_1001F7D88();
    v14 = *(v3 + 32);
    v13[15] = 2;
    sub_1000183C4(&qword_1002BAA20);
    sub_1001945D4(&qword_1002BAA40, sub_10019464C);
    sub_1001F7DC8();
  }

  return (*(v7 + 8))(v11, v5);
}

void sub_1001941E0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000183C4(&qword_1002BAA10);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  v11 = &v13[-v10];
  sub_10001AE68(a1, a1[3]);
  sub_10019452C();
  sub_1001F8178();
  if (v2)
  {
    sub_100019CCC(a1);
  }

  else
  {
    sub_1000183C4(&qword_1002BAA20);
    v13[15] = 2;
    sub_1001945D4(&qword_1002BAA28, sub_100194580);
    sub_1001F7CB8();
    (*(v7 + 8))(v11, v5);
    v12 = v14;
    sub_100019CCC(a1);
    sub_1001948C4();
    *(a2 + 32) = v12;
  }
}

uint64_t sub_1001943C8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100193F48(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1001943F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100193F94(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10019442C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100193F48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100194454(uint64_t a1)
{
  v2 = sub_10019452C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100194490(uint64_t a1)
{
  v2 = sub_10019452C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001944CC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001941E0(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_10019452C()
{
  result = qword_1002BAA18;
  if (!qword_1002BAA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAA18);
  }

  return result;
}

unint64_t sub_100194580()
{
  result = qword_1002BAA30;
  if (!qword_1002BAA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAA30);
  }

  return result;
}

uint64_t sub_1001945D4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(&qword_1002BAA20);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10019464C()
{
  result = qword_1002BAA48;
  if (!qword_1002BAA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAA48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FetchSoftwareAddOnsResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10019476CLL);
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