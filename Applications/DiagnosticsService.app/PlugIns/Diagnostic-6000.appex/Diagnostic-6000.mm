uint64_t sub_1000011D0(uint64_t result)
{
  if (result)
  {
    v2 = v1;
    v3 = result;
    if (*(result + 16))
    {
      v4 = sub_100002080(*(v2 + OBJC_IVAR___UserAlertPresenterInputs_headerTextKey), *(v2 + OBJC_IVAR___UserAlertPresenterInputs_headerTextKey + 8));
      if (v5)
      {
        sub_100001640(*(v3 + 56) + 32 * v4, v17);
        if (swift_dynamicCast())
        {
          if (*(v3 + 16))
          {
            v6 = sub_100002080(*(v2 + OBJC_IVAR___UserAlertPresenterInputs_messageTextKey), *(v2 + OBJC_IVAR___UserAlertPresenterInputs_messageTextKey + 8));
            if (v7)
            {
              sub_100001640(*(v3 + 56) + 32 * v6, v17);
              if (swift_dynamicCast())
              {
                if (*(v3 + 16) && (v8 = sub_100002080(*(v2 + OBJC_IVAR___UserAlertPresenterInputs_buttonsTextKey), *(v2 + OBJC_IVAR___UserAlertPresenterInputs_buttonsTextKey + 8)), (v9 & 1) != 0) && (sub_100001640(*(v3 + 56) + 32 * v8, v17), sub_10000169C(&qword_1000087D8, &unk_100003640), (swift_dynamicCast() & 1) != 0))
                {
                  if (*(v15 + 16))
                  {
                    v10 = (v2 + OBJC_IVAR___UserAlertPresenterInputs_headerText);
                    v11 = *(v2 + OBJC_IVAR___UserAlertPresenterInputs_headerText + 8);
                    *v10 = v15;
                    v10[1] = v16;

                    v12 = (v2 + OBJC_IVAR___UserAlertPresenterInputs_messageText);
                    v13 = *(v2 + OBJC_IVAR___UserAlertPresenterInputs_messageText + 8);
                    *v12 = v15;
                    v12[1] = v16;

                    v14 = *(v2 + OBJC_IVAR___UserAlertPresenterInputs_buttonStrings);
                    *(v2 + OBJC_IVAR___UserAlertPresenterInputs_buttonStrings) = v15;

                    return 1;
                  }
                }

                else
                {
                }
              }
            }
          }
        }
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10000144C()
{
  v1 = &v0[OBJC_IVAR___UserAlertPresenterInputs_headerTextKey];
  *v1 = 0x6554726564616568;
  *(v1 + 1) = 0xEA00000000007478;
  v2 = &v0[OBJC_IVAR___UserAlertPresenterInputs_messageTextKey];
  *v2 = 0x546567617373656DLL;
  *(v2 + 1) = 0xEB00000000747865;
  v3 = &v0[OBJC_IVAR___UserAlertPresenterInputs_buttonsTextKey];
  *v3 = 0x736E6F74747562;
  *(v3 + 1) = 0xE700000000000000;
  v4 = &v0[OBJC_IVAR___UserAlertPresenterInputs_headerText];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v0[OBJC_IVAR___UserAlertPresenterInputs_messageText];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v0[OBJC_IVAR___UserAlertPresenterInputs_buttonStrings] = 0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for UserAlertPresenterInputs();
  return objc_msgSendSuper2(&v7, "init");
}

id sub_100001548()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserAlertPresenterInputs();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100001640(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000169C(uint64_t *a1, uint64_t *a2)
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

id sub_1000016E4()
{
  result = DiagnosticLogHandleForCategory();
  qword_100008830 = result;
  return result;
}

id sub_100001710(uint64_t a1, void *a2)
{
  if (a1)
  {
    type metadata accessor for UserAlertPresenterInputs();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *&v2[OBJC_IVAR___UserAlertPresenterController_inputs];
  *&v2[OBJC_IVAR___UserAlertPresenterController_inputs] = v4;

  if ([a2 respondsToSelector:"displayAlertWithHeader:message:buttonStrings:completion:"])
  {
    v6 = *&v2[OBJC_IVAR___UserAlertPresenterController_responder];
    *&v2[OBJC_IVAR___UserAlertPresenterController_responder] = a2;
    swift_unknownObjectRetain();

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_100002CA4();
    if (qword_100008650 != -1)
    {
      swift_once();
    }

    sub_100002C34();
    v8 = [v2 result];
    isa = sub_100002C94().super.super.isa;
    [v8 setStatusCode:isa];

    return [v2 setFinished:1];
  }
}

void sub_1000018A8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

void sub_1000019BC()
{
  v1 = *&v0[OBJC_IVAR___UserAlertPresenterController_responder];
  if (!v1)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (([*&v0[OBJC_IVAR___UserAlertPresenterController_responder] respondsToSelector:"displayAlertWithHeader:message:buttonStrings:completion:"] & 1) == 0)
  {
    return;
  }

  v2 = *&v0[OBJC_IVAR___UserAlertPresenterController_inputs];
  if (!v2)
  {
    goto LABEL_10;
  }

  if (!*(v2 + OBJC_IVAR___UserAlertPresenterInputs_headerText + 8))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!*(v2 + OBJC_IVAR___UserAlertPresenterInputs_messageText + 8))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!*(v2 + OBJC_IVAR___UserAlertPresenterInputs_buttonStrings))
  {
LABEL_13:
    __break(1u);
    return;
  }

  v3 = *(v2 + OBJC_IVAR___UserAlertPresenterInputs_headerText);
  v4 = *(v2 + OBJC_IVAR___UserAlertPresenterInputs_messageText);
  v5 = swift_allocObject();
  *(v5 + 16) = v0;

  swift_unknownObjectRetain();

  v6 = v0;
  v7 = sub_100002C64();

  v8 = sub_100002C64();

  isa = sub_100002C84().super.isa;

  v11[4] = sub_100001FAC;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1000018A8;
  v11[3] = &unk_1000042A0;
  v10 = _Block_copy(v11);
  [v1 displayAlertWithHeader:v7 message:v8 buttonStrings:isa completion:v10];
  swift_unknownObjectRelease();
  _Block_release(v10);
}

id sub_100001BCC(void *a1, uint64_t a2, id a3)
{
  v6 = [a3 result];
  if (a2)
  {
    isa = sub_100002C94().super.super.isa;
    [v6 setStatusCode:isa];

    return [a3 setFinished:1];
  }

  else
  {
    *(&v18 + 1) = 0x8000000100003730;
    sub_100002CE4();
    v19 = sub_100001FCC();
    *&v18 = a1;
    v9 = a1;
    v10 = [v6 data];
    v11 = sub_100002C54();

    v17 = v11;
    if (v19)
    {
      sub_1000023B4(&v18, v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100002820(v16, v20, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      sub_100002018(&v18);
      sub_1000022BC(v20, v16);
      sub_100002018(v16);
    }

    sub_100002360(v20);
    v13 = sub_100002C44().super.isa;

    [v6 setData:v13];

    v14 = [a3 result];
    v15 = sub_100002C94().super.super.isa;
    [v14 setStatusCode:v15];

    return [a3 setFinished:1];
  }
}

id sub_100001ED0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserAlertPresenterController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100001F74()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100001FB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100001FCC()
{
  result = qword_100008818;
  if (!qword_100008818)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100008818);
  }

  return result;
}

uint64_t sub_100002018(uint64_t a1)
{
  v2 = sub_10000169C(&qword_100008820, &qword_100003688);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100002080(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100002D34();
  sub_100002C74();
  v6 = sub_100002D44();

  return sub_10000213C(a1, a2, v6);
}

unint64_t sub_1000020F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100002CC4(*(v2 + 40));

  return sub_1000021F4(a1, v4);
}

unint64_t sub_10000213C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100002D14())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000021F4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100002B8C(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100002CD4();
      sub_100002360(v8);
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

double sub_1000022BC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1000020F8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000029E8();
      v11 = v13;
    }

    sub_100002360(*(v11 + 48) + 40 * v8);
    sub_1000023B4((*(v11 + 56) + 32 * v8), a2);
    sub_10000267C(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

_OWORD *sub_1000023B4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000023C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000169C(&qword_100008828, &unk_100003690);
  result = sub_100002D04();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_1000023B4((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_100002B8C(v24, &v37);
        sub_100001640(*(v5 + 56) + 32 * v23, v36);
      }

      result = sub_100002CC4(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_1000023B4(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_10000267C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100002CB4() + 1) & ~v5;
    do
    {
      sub_100002B8C(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_100002CC4(*(a2 + 40));
      result = sub_100002360(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_100002820(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1000020F8(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1000029E8();
      goto LABEL_7;
    }

    sub_1000023C4(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_1000020F8(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100002B8C(a2, v22);
      return sub_10000296C(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_100002D24();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_100002BE8(v17);

  return sub_1000023B4(a1, v17);
}

_OWORD *sub_10000296C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1000023B4(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_1000029E8()
{
  v1 = v0;
  sub_10000169C(&qword_100008828, &unk_100003690);
  v2 = *v0;
  v3 = sub_100002CF4();
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
        v18 = 40 * v17;
        sub_100002B8C(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_100001640(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1000023B4(v22, (*(v4 + 56) + v17));
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

uint64_t sub_100002BE8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}