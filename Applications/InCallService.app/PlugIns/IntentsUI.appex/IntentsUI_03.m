uint64_t sub_1000714A0(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_10007B7F8();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (!(*v1 >> 62))
  {
    v10 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFADD__(v10, v9);
    result = v10 + v9;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = sub_10007BA18();
  v11 = __OFADD__(v17, v9);
  result = v17 + v9;
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_100071400(result);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = (*(v3 + 0x18) >> 1) - v13;
  result = sub_100072054(&v34, (v3 + 8 * v13 + 32), v14, v8);
  if (result < v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v11 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v3 + 16) = v16;
  }

  if (result != v14)
  {
LABEL_11:
    result = sub_100065D60();
    *v7 = v2;
    return result;
  }

LABEL_16:
  v4 = *(v3 + 16);
  v3 = v34;
  v5 = v35;
  v8 = v37;
  v31 = v36;
  v6 = v38;
  if (v34 < 0)
  {
LABEL_20:
    if (!sub_10007B818())
    {
      goto LABEL_11;
    }

    sub_100055038(0, &qword_1000C5C28);
    result = swift_dynamicCast();
    v19 = v33;
    goto LABEL_31;
  }

  if (!v38)
  {
    v20 = (v36 + 64) >> 6;
    if (v20 <= v37 + 1)
    {
      v21 = v37 + 1;
    }

    else
    {
      v21 = (v36 + 64) >> 6;
    }

    v22 = v21 - 1;
    while (1)
    {
      v18 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_59;
      }

      if (v18 >= v20)
      {
        v19 = 0;
        v6 = 0;
        goto LABEL_30;
      }

      v6 = *(v35 + 8 * v18);
      ++v8;
      if (v6)
      {
        goto LABEL_29;
      }
    }
  }

  v18 = v37;
LABEL_29:
  v23 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v19 = *(*(v34 + 48) + ((v18 << 9) | (8 * v23)));
  result = v19;
  v22 = v18;
LABEL_30:
  v37 = v22;
  v38 = v6;
  v8 = v22;
LABEL_31:
  if (!v19)
  {
    goto LABEL_11;
  }

  v24 = (v31 + 64) >> 6;
LABEL_33:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_10007B548();
  }

  v2 = *v7;
  v25 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v30 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v25)
  {
    v25 = v4;
  }

  v32 = v25;
  while (1)
  {
    while (1)
    {
      if (v4 == v32)
      {
        v4 = v32;
        *(v30 + 16) = v32;
        goto LABEL_33;
      }

      *(v30 + 32 + 8 * v4++) = v19;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_10007B818())
      {
        sub_100055038(0, &qword_1000C5C28);
        result = swift_dynamicCast();
        v19 = v33;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    if (!v6)
    {
      break;
    }

    v26 = v8;
LABEL_54:
    v29 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v19 = *(*(v3 + 48) + ((v26 << 9) | (8 * v29)));
    result = v19;
    v28 = v26;
LABEL_39:
    v34 = v3;
    v35 = v5;
    v36 = v31;
    v37 = v28;
    v8 = v28;
    v38 = v6;
    if (!v19)
    {
LABEL_56:
      *(v30 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v24 <= v8 + 1)
  {
    v27 = v8 + 1;
  }

  else
  {
    v27 = (v31 + 64) >> 6;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v19 = 0;
      v6 = 0;
      goto LABEL_39;
    }

    v6 = *(v5 + 8 * v26);
    ++v8;
    if (v6)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_100071828(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_10007BA18();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_10007BA18();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100071400(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100071C44(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100071918(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10007BA18();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_10007BA18();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100072270(&qword_1000C5E28, &unk_1000C5300);
          for (i = 0; i != v6; ++i)
          {
            sub_100030744(&unk_1000C5300);
            v9 = sub_100071DE4(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100030744(&unk_1000C5360);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100071AB4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10007BA18();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_10007BA18();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100072270(&qword_1000C5E20, &qword_1000C5E18);
          for (i = 0; i != v6; ++i)
          {
            sub_100030744(&qword_1000C5E18);
            v9 = sub_100071E6C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for MessageID(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100071C44(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10007BA18();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_10007BA18();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100072270(&qword_1000C5E10, &qword_1000C5E08);
          for (i = 0; i != v6; ++i)
          {
            sub_100030744(&qword_1000C5E08);
            v9 = sub_100071EF4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100055038(0, &qword_1000C5E00);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100071DE4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_10007B898();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_100071E64;
  }

  __break(1u);
  return result;
}

void (*sub_100071E6C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_10007B898();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100071EEC;
  }

  __break(1u);
  return result;
}

void (*sub_100071EF4(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_10007B898();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000722C4;
  }

  __break(1u);
  return result;
}

uint64_t sub_100071F8C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  if (!a2)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v10 = a3;
  if (!a3)
  {
LABEL_12:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = v10;
    return v10;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = *(a6 + 16);
    if (v11)
    {
      v13 = 0;
      v14 = a3 - 1;
      while (v13 < *(a6 + 16))
      {
        *(a2 + 8 * v13) = *(a6 + 32 + 8 * v13);
        if (v14 == v13)
        {
          swift_unknownObjectRetain();
          goto LABEL_12;
        }

        result = swift_unknownObjectRetain();
        if (v11 == ++v13)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    v10 = v11;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

id sub_100072054(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_10007B7E8();
  sub_100055038(0, &qword_1000C5C28);
  sub_100065A40();
  result = sub_10007B6A8();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_10007B818())
      {
        goto LABEL_30;
      }

      sub_100055038(0, &qword_1000C5C28);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t sub_100072270(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100035550(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000726D0()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000016;
    if (v1 != 1)
    {
      v5 = 0x6269726373627573;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 1684632949;
    }
  }

  else
  {
    v2 = 0x6C646E6148736168;
    if (v1 != 5)
    {
      v2 = 0xD000000000000012;
    }

    v3 = 0xD000000000000017;
    if (v1 != 3)
    {
      v3 = 0x6F697369766F7270;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1000727C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100073750(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100072804(uint64_t a1)
{
  v2 = sub_1000734F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100072840(uint64_t a1)
{
  v2 = sub_1000734F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t type metadata accessor for VoicemailAccount()
{
  result = qword_1000C5E58;
  if (!qword_1000C5E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100072950()
{
  result = sub_10007AE28();
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

uint64_t sub_1000729FC(void *a1)
{
  v3 = sub_100030744(&qword_1000C5E80);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v9[-v6];
  sub_1000355F8(a1, a1[3]);
  sub_1000734F4();
  sub_10007BC18();
  v9[15] = 0;
  sub_10007AE28();
  sub_100073AC0(&qword_1000C5E88);
  sub_10007BAF8();
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v9[14] = 1;
  sub_10007BAD8();
  v9[13] = 2;
  sub_10007BAD8();
  v9[12] = 3;
  sub_10007BAD8();
  v9[11] = 4;
  sub_10007BAD8();
  v9[10] = 5;
  sub_10007BAD8();
  v9[9] = 6;
  sub_10007BAC8();
  return (*(v4 + 8))(v7, v3);
}

void *sub_100072C8C(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_10007AE28();
  v21 = *(v3 - 8);
  __chkstk_darwin(v3, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100030744(&qword_1000C5E68);
  v7 = *(v22 - 8);
  __chkstk_darwin(v22, v8);
  v10 = &v20 - v9;
  sub_1000355F8(a1, a1[3]);
  sub_1000734F4();
  v23 = v10;
  sub_10007BC08();
  if (v1)
  {
    sub_100035504(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v7;
    v20 = a1;
    v12 = v21;
    v27 = 0;
    sub_100073AC0(&qword_1000C5E78);
    v13 = v22;
    sub_10007BAB8();
    v15 = *(v12 + 32);
    v16 = v24;
    v15(&v24[OBJC_IVAR___MPVoicemailAccount_uuid], v6, v3);
    v27 = 1;
    v16[OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported] = sub_10007BA98() & 1;
    v27 = 2;
    v16[OBJC_IVAR___MPVoicemailAccount_subscribed] = sub_10007BA98() & 1;
    v27 = 3;
    v16[OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported] = sub_10007BA98() & 1;
    v27 = 4;
    v16[OBJC_IVAR___MPVoicemailAccount_provisioned] = sub_10007BA98() & 1;
    v27 = 5;
    v16[OBJC_IVAR___MPVoicemailAccount_hasHandle] = sub_10007BA98() & 1;
    v27 = 6;
    v17 = sub_10007BA88();
    v18 = &v16[OBJC_IVAR___MPVoicemailAccount_accountDescription];
    *v18 = v17;
    v18[1] = v19;
    v26.receiver = v16;
    v26.super_class = ObjectType;
    a1 = objc_msgSendSuper2(&v26, "init");
    (*(v11 + 8))(v23, v13);
    sub_100035504(v20);
  }

  return a1;
}

void *sub_1000730EC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = sub_100072C8C(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1000731C8()
{
  sub_10007B888(119);
  v8._countAndFlagsBits = 0xD000000000000017;
  v8._object = 0x800000010008CF90;
  sub_10007B4C8(v8);
  sub_10007AE28();
  sub_100073AC0(&qword_1000C5D68);
  v9._countAndFlagsBits = sub_10007BB28();
  sub_10007B4C8(v9);

  v10._object = 0x800000010008CFB0;
  v10._countAndFlagsBits = 0xD00000000000001ALL;
  sub_10007B4C8(v10);
  if (*(v0 + OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported))
  {
    v1._countAndFlagsBits = 1702195828;
  }

  else
  {
    v1._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  v1._object = v2;
  sub_10007B4C8(v1);

  v11._countAndFlagsBits = 0x6972637362757320;
  v11._object = 0xED0000203A646562;
  sub_10007B4C8(v11);
  if (*(v0 + OBJC_IVAR___MPVoicemailAccount_subscribed))
  {
    v3._countAndFlagsBits = 1702195828;
  }

  else
  {
    v3._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___MPVoicemailAccount_subscribed))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v3._object = v4;
  sub_10007B4C8(v3);

  v12._object = 0x800000010008CFD0;
  v12._countAndFlagsBits = 0xD00000000000001ALL;
  sub_10007B4C8(v12);
  if (*(v0 + OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported))
  {
    v5._countAndFlagsBits = 1702195828;
  }

  else
  {
    v5._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v5._object = v6;
  sub_10007B4C8(v5);

  v13._countAndFlagsBits = 0xD000000000000015;
  v13._object = 0x800000010008CFF0;
  sub_10007B4C8(v13);

  sub_100030744(&qword_1000C59A0);
  v14._countAndFlagsBits = sub_10007B488();
  sub_10007B4C8(v14);

  return 0;
}

unint64_t sub_1000734F4()
{
  result = qword_1000C5E70;
  if (!qword_1000C5E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C5E70);
  }

  return result;
}

id sub_100073548(void *a1, char a2, char a3, char a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10007AE28();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 UUID];
  sub_10007AE08();

  (*(v11 + 32))(&v4[OBJC_IVAR___MPVoicemailAccount_uuid], v14, v10);
  v16 = [a1 accountDescription];
  if (v16)
  {
    v17 = v16;
    v18 = sub_10007B478();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = &v4[OBJC_IVAR___MPVoicemailAccount_accountDescription];
  *v21 = v18;
  v21[1] = v20;
  v4[OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported] = a2 & 1;
  v4[OBJC_IVAR___MPVoicemailAccount_subscribed] = a3 & 1;
  v4[OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported] = a4 & 1;
  v22 = [a1 isProvisioned];
  v4[OBJC_IVAR___MPVoicemailAccount_provisioned] = v22;
  v23 = [a1 handle];
  v24 = v23;
  if (v23)
  {
  }

  v4[OBJC_IVAR___MPVoicemailAccount_hasHandle] = v24 != 0;
  v26.receiver = v4;
  v26.super_class = ObjectType;
  return objc_msgSendSuper2(&v26, "init");
}

uint64_t sub_100073750(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_10007BB38() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010008CE50 == a2 || (sub_10007BB38() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6269726373627573 && a2 == 0xEA00000000006465 || (sub_10007BB38() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010008CE80 == a2 || (sub_10007BB38() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F697369766F7270 && a2 == 0xEB0000000064656ELL || (sub_10007BB38() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C646E6148736168 && a2 == 0xE900000000000065 || (sub_10007BB38() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010008CEB0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_10007BB38();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1000739B8(uint64_t a1, uint64_t a2)
{
  if ((sub_10007ADF8() & 1) == 0)
  {
    goto LABEL_15;
  }

  v4 = *(a1 + OBJC_IVAR___MPVoicemailAccount_accountDescription + 8);
  v5 = *(a2 + OBJC_IVAR___MPVoicemailAccount_accountDescription + 8);
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_15;
    }

    v6 = *(a1 + OBJC_IVAR___MPVoicemailAccount_accountDescription) == *(a2 + OBJC_IVAR___MPVoicemailAccount_accountDescription) && v4 == v5;
    if (!v6 && (sub_10007BB38() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v5)
  {
    goto LABEL_15;
  }

  if (*(a1 + OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported) == *(a2 + OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported) && *(a1 + OBJC_IVAR___MPVoicemailAccount_subscribed) == *(a2 + OBJC_IVAR___MPVoicemailAccount_subscribed) && *(a1 + OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported) == *(a2 + OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported) && *(a1 + OBJC_IVAR___MPVoicemailAccount_provisioned) == *(a2 + OBJC_IVAR___MPVoicemailAccount_provisioned))
  {
    v7 = *(a1 + OBJC_IVAR___MPVoicemailAccount_hasHandle) ^ *(a2 + OBJC_IVAR___MPVoicemailAccount_hasHandle) ^ 1;
    return v7 & 1;
  }

LABEL_15:
  v7 = 0;
  return v7 & 1;
}

uint64_t sub_100073AC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10007AE28();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VoicemailAccount.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VoicemailAccount.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100073C58()
{
  result = qword_1000C5E90;
  if (!qword_1000C5E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C5E90);
  }

  return result;
}

unint64_t sub_100073CB0()
{
  result = qword_1000C5E98;
  if (!qword_1000C5E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C5E98);
  }

  return result;
}

unint64_t sub_100073D08()
{
  result = qword_1000C5EA0;
  if (!qword_1000C5EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C5EA0);
  }

  return result;
}

uint64_t sub_100073D98(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10007B338();
  sub_10003C2DC(v3, a2);
  sub_1000345E8(v3, a2);
  return sub_10007B328();
}

uint64_t sub_100074180()
{
  sub_10007B888(126);
  v8._countAndFlagsBits = 0xD000000000000035;
  v8._object = 0x800000010008D160;
  sub_10007B4C8(v8);
  if (*(v0 + OBJC_IVAR____TtC9IntentsUI27VoicemailAccountManagerData_anyAccountSubscribed))
  {
    v1._countAndFlagsBits = 1702195828;
  }

  else
  {
    v1._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC9IntentsUI27VoicemailAccountManagerData_anyAccountSubscribed))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  v1._object = v2;
  sub_10007B4C8(v1);

  v9._countAndFlagsBits = 0x656E696C6E6F2029;
  v9._object = 0xEB0000000028203ALL;
  sub_10007B4C8(v9);
  if (*(v0 + OBJC_IVAR____TtC9IntentsUI27VoicemailAccountManagerData_online))
  {
    v3._countAndFlagsBits = 1702195828;
  }

  else
  {
    v3._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC9IntentsUI27VoicemailAccountManagerData_online))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v3._object = v4;
  sub_10007B4C8(v3);

  v10._countAndFlagsBits = 0xD000000000000015;
  v10._object = 0x800000010008D1A0;
  sub_10007B4C8(v10);
  if (*(v0 + OBJC_IVAR____TtC9IntentsUI27VoicemailAccountManagerData_isMessageWaiting))
  {
    v5._countAndFlagsBits = 1702195828;
  }

  else
  {
    v5._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC9IntentsUI27VoicemailAccountManagerData_isMessageWaiting))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v5._object = v6;
  sub_10007B4C8(v5);

  v11._object = 0x800000010008D1C0;
  v11._countAndFlagsBits = 0xD000000000000011;
  sub_10007B4C8(v11);
  v12._countAndFlagsBits = sub_10007BB28();
  sub_10007B4C8(v12);

  v13._countAndFlagsBits = 0x6E756F6363612029;
  v13._object = 0xED000028203A7374;
  sub_10007B4C8(v13);
  type metadata accessor for VoicemailAccount();
  v14._countAndFlagsBits = sub_10007B538();
  sub_10007B4C8(v14);

  v15._countAndFlagsBits = 41;
  v15._object = 0xE100000000000000;
  sub_10007B4C8(v15);
  return 0;
}

unint64_t sub_1000743B0()
{
  v1 = *v0;
  v2 = 0x656E696C6E6FLL;
  v3 = 0x55656761726F7473;
  v4 = 0xD000000000000014;
  if (v1 != 4)
  {
    v4 = 0x73746E756F636361;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100074478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10007494C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000744AC(uint64_t a1)
{
  v2 = sub_100074E80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000744E8(uint64_t a1)
{
  v2 = sub_100074E80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100074524(void *a1)
{
  v3 = v1;
  v5 = sub_100030744(&qword_1000C5F28);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v11[-v8];
  sub_1000355F8(a1, a1[3]);
  sub_100074E80();
  sub_10007BC18();
  v17 = 0;
  sub_10007BAD8();
  if (!v2)
  {
    v16 = 1;
    sub_10007BAD8();
    v15 = 2;
    sub_10007BAD8();
    v14 = 3;
    sub_10007BAE8();
    v13 = 4;
    sub_10007BAD8();
    v12 = *(v3 + OBJC_IVAR____TtC9IntentsUI27VoicemailAccountManagerData_accounts);
    v11[15] = 5;
    sub_100030744(&qword_1000C5D70);
    sub_100074ED4(&qword_1000C5F30, &qword_1000C5F38);
    sub_10007BAF8();
  }

  return (*(v6 + 8))(v9, v5);
}

void *sub_1000747E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100074B58(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100074830(uint64_t a1)
{
  sub_10005C7DC(a1, v4);
  if (!v5)
  {
    sub_10005EDC8(v4);
    goto LABEL_5;
  }

  type metadata accessor for VoicemailAccount();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v1 = 0;
    return v1 & 1;
  }

  sub_100074FA0();
  v1 = sub_10007B768();

  return v1 & 1;
}

uint64_t sub_10007494C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x800000010008BA00 == a2 || (sub_10007BB38() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E696C6E6FLL && a2 == 0xE600000000000000 || (sub_10007BB38() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010008B770 == a2 || (sub_10007BB38() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x55656761726F7473 && a2 == 0xEC00000065676173 || (sub_10007BB38() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010008BA40 == a2 || (sub_10007BB38() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73746E756F636361 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v5 = sub_10007BB38();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void *sub_100074B58(void *a1)
{
  v3 = sub_100030744(&qword_1000C5F08);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v15 - v6;
  v8 = sub_1000355F8(a1, a1[3]);
  sub_100074E80();
  sub_10007BC08();
  if (!v1)
  {
    LOBYTE(v20) = 0;
    v9 = sub_10007BA98();
    LOBYTE(v20) = 1;
    v10 = sub_10007BA98();
    LOBYTE(v20) = 2;
    v11 = sub_10007BA98();
    LOBYTE(v20) = 3;
    v17 = sub_10007BAA8();
    LOBYTE(v20) = 4;
    v16 = sub_10007BA98();
    sub_100030744(&qword_1000C5D70);
    v19 = 5;
    sub_100074ED4(&qword_1000C5F18, &qword_1000C5F20);
    sub_10007BAB8();
    v15 = v20;
    v13 = type metadata accessor for VoicemailAccountManagerData();
    v14 = objc_allocWithZone(v13);
    v14[OBJC_IVAR____TtC9IntentsUI27VoicemailAccountManagerData_anyAccountSubscribed] = v9 & 1;
    v14[OBJC_IVAR____TtC9IntentsUI27VoicemailAccountManagerData_online] = v10 & 1;
    v14[OBJC_IVAR____TtC9IntentsUI27VoicemailAccountManagerData_isMessageWaiting] = v11 & 1;
    *&v14[OBJC_IVAR____TtC9IntentsUI27VoicemailAccountManagerData_storageUsage] = v17;
    v14[OBJC_IVAR____TtC9IntentsUI27VoicemailAccountManagerData_transcriptionEnabled] = v16 & 1;
    *&v14[OBJC_IVAR____TtC9IntentsUI27VoicemailAccountManagerData_transcriptionProgress] = 0;
    *&v14[OBJC_IVAR____TtC9IntentsUI27VoicemailAccountManagerData_accounts] = v15;
    v18.receiver = v14;
    v18.super_class = v13;
    v8 = objc_msgSendSuper2(&v18, "init");
    (*(v4 + 8))(v7, v3);
  }

  sub_100035504(a1);
  return v8;
}

unint64_t sub_100074E80()
{
  result = qword_1000C5F10;
  if (!qword_1000C5F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C5F10);
  }

  return result;
}

uint64_t sub_100074ED4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100035550(&qword_1000C5D70);
    sub_100074F5C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100074F5C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VoicemailAccount();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100074FA0()
{
  result = qword_1000C5650;
  if (!qword_1000C5650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000C5650);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VoicemailAccountManagerData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VoicemailAccountManagerData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100075140()
{
  result = qword_1000C5F40;
  if (!qword_1000C5F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C5F40);
  }

  return result;
}

unint64_t sub_100075198()
{
  result = qword_1000C5F48;
  if (!qword_1000C5F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C5F48);
  }

  return result;
}

unint64_t sub_1000751F0()
{
  result = qword_1000C5F50;
  if (!qword_1000C5F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C5F50);
  }

  return result;
}

uint64_t sub_100075338()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100075370(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_10007538C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1000753A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000753E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_10007542C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_100075454(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      sub_10007B888(43);

      v2 = 0xD000000000000028;
      goto LABEL_7;
    }

LABEL_5:
    sub_10007B888(42);

    v2 = 0xD000000000000027;
LABEL_7:
    v4 = v2;
    type metadata accessor for MessageID(0);
    v5._countAndFlagsBits = sub_10007B538();
    sub_10007B4C8(v5);

    v6._countAndFlagsBits = 41;
    v6._object = 0xE100000000000000;
    sub_10007B4C8(v6);
    return v4;
  }

  if (a2 == 2)
  {
    goto LABEL_5;
  }

  return 0xD000000000000025;
}

void sub_100075598(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_10007AD28();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_100075608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_10007AD28();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_100075678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100030744(&qword_1000C4F48);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v13 - v8;
  sub_100070A6C(a2, &v13 - v8);
  v10 = sub_10007AE28();
  v11 = *(v10 - 8);
  isa = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    isa = sub_10007ADD8().super.isa;
    (*(v11 + 8))(v9, v10);
  }

  (*(a3 + 16))(a3, a1, isa);
}

uint64_t sub_100075818()
{
  v1 = *&v0[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8];
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 40))(ObjectType, v1);
  if (qword_1000C4E60 != -1)
  {
    swift_once();
  }

  v4 = sub_10007B338();
  sub_1000345E8(v4, qword_1000C76E8);
  v5 = v0;
  v6 = sub_10007B318();
  v7 = sub_10007B6E8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315394;
    swift_unknownObjectRetain();
    sub_100030744(&qword_1000C5DF0);
    v10 = sub_10007B498();
    v12 = sub_100052954(v10, v11, &v14);

    *(v8 + 4) = v12;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v3 & 1;
    _os_log_impl(&_mh_execute_header, v6, v7, "VMD(%s) online: %{BOOL}d", v8, 0x12u);
    sub_100035504(v9);
  }

  return v3 & 1;
}

uint64_t sub_100075A1C(const char *a1)
{
  v3 = *&v1[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8];
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 32))(ObjectType, v3);
  if (qword_1000C4E60 != -1)
  {
    swift_once();
  }

  v6 = sub_10007B338();
  sub_1000345E8(v6, qword_1000C76E8);
  v7 = v1;
  v8 = sub_10007B318();
  v9 = sub_10007B6E8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315394;
    swift_unknownObjectRetain();
    sub_100030744(&qword_1000C5DF0);
    v12 = sub_10007B498();
    v14 = sub_100052954(v12, v13, &v16);

    *(v10 + 4) = v14;
    *(v10 + 12) = 1024;
    *(v10 + 14) = v5 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, a1, v10, 0x12u);
    sub_100035504(v11);
  }

  return v5 & 1;
}

uint64_t sub_100075C18()
{
  v1 = *&v0[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8];
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 56))(ObjectType, v1);
  if (qword_1000C4E60 != -1)
  {
    swift_once();
  }

  v4 = sub_10007B338();
  sub_1000345E8(v4, qword_1000C76E8);
  v5 = v0;
  v6 = sub_10007B318();
  v7 = sub_10007B6E8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315394;
    swift_unknownObjectRetain();
    sub_100030744(&qword_1000C5DF0);
    v10 = sub_10007B498();
    v12 = sub_100052954(v10, v11, &v14);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v3;
    _os_log_impl(&_mh_execute_header, v6, v7, "VMD(%s) storageUsage: %lu", v8, 0x16u);
    sub_100035504(v9);
  }

  return v3;
}

uint64_t sub_100075E10()
{
  v1 = *&v0[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8];
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 64))(ObjectType, v1);
  if (v3 >> 62)
  {
    v4 = sub_10007BA18();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (qword_1000C4E60 != -1)
  {
    swift_once();
  }

  v5 = sub_10007B338();
  sub_1000345E8(v5, qword_1000C76E8);
  v6 = v0;
  v7 = sub_10007B318();
  v8 = sub_10007B6E8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315394;
    swift_unknownObjectRetain();
    sub_100030744(&qword_1000C5DF0);
    v11 = sub_10007B498();
    v13 = sub_100052954(v11, v12, &v15);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v7, v8, "VMD(%s) estimatedAccountCount: %ld", v9, 0x16u);
    sub_100035504(v10);
  }

  return v4;
}

void *sub_10007606C()
{
  v57 = sub_10007AE28();
  v1 = *(v57 - 8);
  __chkstk_darwin(v57, v2);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd;
  v7 = *(v0 + OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd);
  v6 = *(v5 + 8);
  ObjectType = swift_getObjectType();
  v9 = v6[8];
  v55 = ObjectType;
  v56 = v7;
  v58 = v6;
  v10 = v9(ObjectType, v6);
  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_16:

    return _swiftEmptyArrayStorage;
  }

  v42 = v10;
  v11 = sub_10007BA18();
  v10 = v42;
  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_3:
  v12 = v10;
  v63 = _swiftEmptyArrayStorage;
  result = sub_10007B8E8();
  if (v11 < 0)
  {
    __break(1u);
  }

  else
  {
    v14 = 0;
    v15 = v58[11];
    v16 = v58[12];
    v50 = v58 + 12;
    v51 = v15;
    v52 = v58 + 11;
    v53 = v11;
    v17 = v58[13];
    v48 = v58 + 13;
    v49 = v16;
    v18 = v12;
    v46 = v12 & 0xC000000000000001;
    v47 = v17;
    v44 = (v1 + 32);
    v45 = (v1 + 8);
    v54 = v12;
    do
    {
      v59 = v14;
      if (v46)
      {
        v19 = sub_10007B898();
      }

      else
      {
        v19 = *(v18 + 8 * v14 + 32);
      }

      v20 = v19;
      v21 = [v19 UUID];
      sub_10007AE08();

      v22 = v55;
      v23 = v58;
      v61 = v51(v4, v55, v58);
      v24 = *v45;
      v25 = v57;
      (*v45)(v4, v57);
      v26 = [v20 UUID];
      sub_10007AE08();

      v60 = v49(v4, v22, v23);
      v24(v4, v25);
      v27 = [v20 UUID];
      sub_10007AE08();

      v28 = v47(v4, v22, v23);
      v24(v4, v25);
      v29 = type metadata accessor for VoicemailAccount();
      v30 = objc_allocWithZone(v29);
      v31 = [v20 UUID];
      sub_10007AE08();

      (*v44)(&v30[OBJC_IVAR___MPVoicemailAccount_uuid], v4, v25);
      v32 = [v20 accountDescription];
      if (v32)
      {
        v33 = v32;
        v34 = sub_10007B478();
        v36 = v35;
      }

      else
      {
        v34 = 0;
        v36 = 0;
      }

      v37 = &v30[OBJC_IVAR___MPVoicemailAccount_accountDescription];
      *v37 = v34;
      v37[1] = v36;
      v30[OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported] = v61 & 1;
      v30[OBJC_IVAR___MPVoicemailAccount_subscribed] = v60 & 1;
      v30[OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported] = v28 & 1;
      v38 = [v20 isProvisioned];
      v30[OBJC_IVAR___MPVoicemailAccount_provisioned] = v38;
      v39 = [v20 handle];
      v40 = v39;
      v41 = v59;
      if (v39)
      {
      }

      v14 = v41 + 1;
      v30[OBJC_IVAR___MPVoicemailAccount_hasHandle] = v40 != 0;
      v62.receiver = v30;
      v62.super_class = v29;
      objc_msgSendSuper2(&v62, "init");

      sub_10007B8C8();
      sub_10007B8F8();
      sub_10007B908();
      sub_10007B8D8();
      v18 = v54;
    }

    while (v53 != v14);

    return v63;
  }

  return result;
}

uint64_t sub_100076614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = sub_100030744(&qword_1000C5D48);
  v4 = swift_task_alloc();
  v5 = OBJC_IVAR___MPVoicemailAccountManagerDecorator_updatesPublisher;
  v3[6] = v4;
  v3[7] = v5;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10003D1C8();
  v7 = sub_10007B578();

  return _swift_task_switch(sub_1000766F4, v7, v6);
}

uint64_t sub_100076720()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(v0[5] + 48);
  *v1 = v3;
  sub_100070A6C(v2, v1 + v4);
  v5 = v3;
  sub_10007B3B8();
  sub_1000789C8(v1);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100077540(uint64_t a1, uint64_t a2)
{
  v5 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v17 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_10007B608();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v12 = sub_10003D1C8();
  v13 = swift_allocObject();
  v13[2] = inited;
  v13[3] = v12;
  v13[4] = v2;
  v13[5] = v9;
  v14 = v2;

  sub_10007903C(0, 0, v8, &unk_1000A31D0, v13);
  sub_10007B398();
  swift_allocObject();
  v15 = sub_10007B3A8();

  return v15;
}

uint64_t sub_1000776E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10003D1C8();
  v7 = sub_10007B578();

  return _swift_task_switch(sub_10007777C, v7, v6);
}

uint64_t sub_10007777C()
{
  v1 = v0[3];
  v0[2] = *(v0[4] + OBJC_IVAR___MPVoicemailAccountManagerDecorator_updatesPublisher);

  sub_100030744(&qword_1000C5D38);
  sub_10006C398();
  v2 = sub_10007B3D8();

  *v1 = v2;
  v3 = v0[1];

  return v3();
}

uint64_t sub_100077990(uint64_t a1)
{
  [v1 setDelegate:a1];

  return swift_unknownObjectRelease();
}

uint64_t sub_100077A30()
{
  v1 = [v0 accounts];
  sub_100078A48();
  v2 = sub_10007B528();

  return v2;
}

id sub_100077AAC()
{
  v1 = [v0 transcriptionProgress];

  return v1;
}

id sub_100077AE4()
{
  v1 = v0;
  isa = sub_10007ADD8().super.isa;
  v3 = [v1 isCallVoicemailSupportedForAccountUUID:isa];

  return v3;
}

id sub_100077B30()
{
  v1 = v0;
  isa = sub_10007ADD8().super.isa;
  v3 = [v1 isAccountSubscribed:isa];

  return v3;
}

id sub_100077B7C()
{
  v1 = v0;
  isa = sub_10007ADD8().super.isa;
  v3 = [v1 isGreetingChangeSupportedForAccountUUID:isa];

  return v3;
}

id sub_100077BC8()
{
  v1 = v0;
  isa = sub_10007ADD8().super.isa;
  v3 = [v1 isPasscodeChangeSupportedForAccountUUID:isa];

  return v3;
}

id sub_100077C14()
{
  v1 = v0;
  isa = sub_10007ADD8().super.isa;
  v3 = [v1 maximumPasscodeLengthForAccountUUID:isa];

  return v3;
}

id sub_100077C60()
{
  v1 = v0;
  isa = sub_10007ADD8().super.isa;
  v3 = [v1 minimumPasscodeLengthForAccountUUID:isa];

  return v3;
}

uint64_t sub_100077CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = sub_10007B448();
  isa = sub_10007ADD8().super.isa;
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100069E3C;
  v13[3] = &unk_1000B46B8;
  v11 = _Block_copy(v13);

  [v6 setPasscode:v9 forAccountUUID:isa completion:v11];
  _Block_release(v11);
}

double sub_100077D90()
{
  v1 = v0;
  isa = sub_10007ADD8().super.isa;
  [v1 maximumGreetingDurationForAccountUUID:isa];
  v4 = v3;

  return v4;
}

uint64_t sub_100077DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  isa = sub_10007ADD8().super.isa;
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10006A27C;
  v10[3] = &unk_1000B4690;
  v8 = _Block_copy(v10);

  [v4 greetingForAccountUUID:isa completion:v8];
  _Block_release(v8);
}

uint64_t sub_100077EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  isa = sub_10007ADD8().super.isa;
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100069E3C;
  v12[3] = &unk_1000B4668;
  v10 = _Block_copy(v12);

  [v5 setGreeting:a1 forAccountUUID:isa completion:v10];
  _Block_release(v10);
}

uint64_t sub_100077FB0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100077FE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100078020()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100078068(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100031874;

  return sub_1000776E0(a1, v4, v5, v7, v6);
}

void *sub_100078128(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100030744(&qword_1000C56C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100030744(&qword_1000C56C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10007825C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100030744(&qword_1000C5FD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100030744(&qword_1000C5FD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100078390(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100030744(&qword_1000C5FC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100030744(&qword_1000C5FC8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000784C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100030744(&qword_1000C56B0);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1000785D4(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___MPVoicemailAccountManagerDecorator_updatesPublisher;
  sub_100030744(&qword_1000C5D38);
  swift_allocObject();
  *&v1[v4] = sub_10007B3C8();
  *&v1[OBJC_IVAR___MPVoicemailAccountManagerDecorator_cancellables] = _swiftEmptyArrayStorage;
  v5 = &v1[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  *v5 = a1;
  *(v5 + 1) = &off_1000B44A8;
  v32.receiver = v1;
  v32.super_class = ObjectType;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v32, "init");
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = type metadata accessor for VoicemailDelegateDecorator();
  v10 = objc_allocWithZone(v9);
  v11 = OBJC_IVAR____TtC9IntentsUI26VoicemailDelegateDecorator_queue;
  sub_10007AF38();
  v12 = v7;
  *&v10[v11] = sub_10007AF28();
  v13 = &v10[OBJC_IVAR____TtC9IntentsUI26VoicemailDelegateDecorator_lastTask];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = OBJC_IVAR____TtC9IntentsUI26VoicemailDelegateDecorator_logger;
  if (qword_1000C4E60 != -1)
  {
    swift_once();
  }

  v15 = sub_10007B338();
  v16 = sub_1000345E8(v15, qword_1000C76E8);
  (*(*(v15 - 8) + 16))(&v10[v14], v16, v15);
  v17 = &v10[OBJC_IVAR____TtC9IntentsUI26VoicemailDelegateDecorator_onUpdate];
  *v17 = &unk_1000A31E8;
  *(v17 + 1) = v8;
  v31.receiver = v10;
  v31.super_class = v9;
  v18 = objc_msgSendSuper2(&v31, "init");
  v19 = *&v12[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8];
  v20 = swift_getObjectType();
  v21 = *(v19 + 16);
  swift_unknownObjectRetain();
  v22 = v18;
  v21(v18, v20, v19);
  swift_unknownObjectRelease();
  v30 = v9;
  *&v29 = v22;
  v23 = OBJC_IVAR___MPVoicemailAccountManagerDecorator_cancellables;
  swift_beginAccess();
  v24 = *&v12[v23];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v12[v23] = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_1000784C4(0, *(v24 + 2) + 1, 1, v24);
    *&v12[v23] = v24;
  }

  v27 = *(v24 + 2);
  v26 = *(v24 + 3);
  if (v27 >= v26 >> 1)
  {
    v24 = sub_1000784C4((v26 > 1), v27 + 1, 1, v24);
  }

  *(v24 + 2) = v27 + 1;
  sub_1000444B4(&v29, &v24[32 * v27 + 32]);
  *&v12[v23] = v24;
  swift_endAccess();

  return v12;
}

uint64_t sub_1000788E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007891C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10003124C;

  return sub_100076614(a1, a2, v6);
}

uint64_t sub_1000789C8(uint64_t a1)
{
  v2 = sub_100030744(&qword_1000C5D48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100078A30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100078A48()
{
  result = qword_1000C5FE0;
  if (!qword_1000C5FE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000C5FE0);
  }

  return result;
}

uint64_t sub_100078AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100030744(&qword_1000C5110);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_100054004(a3, v24 - v9);
  v11 = sub_10007B608();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100079EE8(v10);
  }

  else
  {
    sub_10007B5F8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_10007B578();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_10007B4A8() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_100079EE8(a3);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100079EE8(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100078D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v26 - v11;
  sub_100054004(a3, v26 - v11);
  v13 = sub_10007B608();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100079EE8(v12);
  }

  else
  {
    sub_10007B5F8();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_10007B578();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v26[0] = a3;
      v20 = sub_10007B4A8() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;
      type metadata accessor for CachedVoicemailManager.Cache();

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_100079EE8(v26[0]);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100079EE8(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  type metadata accessor for CachedVoicemailManager.Cache();
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10007903C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v26 - v11;
  sub_100054004(a3, v26 - v11);
  v13 = sub_10007B608();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100079EE8(v12);
  }

  else
  {
    sub_10007B5F8();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_10007B578();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v26[0] = a3;
      v20 = sub_10007B4A8() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;
      sub_10007B398();

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_100079EE8(v26[0]);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100079EE8(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_10007B398();
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1000793F8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100079440(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_10007A1C4;

  return v5(v2 + 16);
}

uint64_t sub_100079534(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_100079628;

  return v5(v2 + 16);
}

uint64_t sub_100079628()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

char *sub_100079758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a3;
  v33 = a2;
  v37 = a1;
  v7 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v7 - 8, v8);
  v36 = &v33 - v9;
  v10 = sub_10007B338();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10007B608();
  v15 = *(v34 - 8);
  __chkstk_darwin(v34, v16);
  v39 = sub_10007B248();
  v40 = &off_1000B3010;
  v38[0] = a4;
  v17 = OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_analyticsReporter;
  if (qword_1000C4E60 != -1)
  {
    swift_once();
  }

  v18 = sub_1000345E8(v10, qword_1000C76E8);
  v19 = *(v11 + 16);
  v19(a5 + v17, v18, v10);
  *(a5 + OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_providers) = &off_1000B2530;
  *(a5 + OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_messageTypes) = &off_1000B2560;
  v20 = OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_messagesChangedPublisher;
  sub_100030744(&unk_1000C5350);
  swift_allocObject();
  *(a5 + v20) = sub_10007B3C8();
  v21 = OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_operationQueue;
  sub_10007AF38();
  sub_10007B5E8();
  *(a5 + v21) = sub_10007AF18();
  v22 = v37;
  v19(a5 + OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_logger, v37, v10);
  v23 = (a5 + OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_onVoicemailsChanged);
  v24 = v35;
  *v23 = v33;
  v23[1] = v24;
  sub_1000354A0(v38, a5 + OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_messageStoreController);
  v19(v14, v22, v10);
  type metadata accessor for MessageStoreDelegate(0);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v25 + 24) = 0;
  (*(v11 + 32))(v25 + OBJC_IVAR____TtC9IntentsUIP33_B434561B0979B3D53C321DBA9EFEB12220MessageStoreDelegate_logger, v14, v10);
  *(a5 + OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_messageStoreDelegate) = v25;

  v26 = sub_100036254(1397576774, 0xE400000000000000);
  v27 = v36;
  (*(v15 + 56))(v36, 1, 1, v34);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v29 = sub_10003D1C8();
  v30 = swift_allocObject();
  v30[2] = inited;
  v30[3] = v29;
  v30[4] = v26;
  v31 = v26;
  sub_100078AB0(0, 0, v27, &unk_1000A3258, v30);

  sub_1000355F8(v38, v39);

  sub_10007B1E8();

  (*(v11 + 8))(v22, v10);
  sub_100035504(v38);
  return v31;
}

char *sub_100079BD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B338();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000C4E60 != -1)
  {
    swift_once();
  }

  v9 = sub_1000345E8(v4, qword_1000C76E8);
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_10007B248();
  v11 = sub_10007B238();
  v22 = v10;
  v23 = &off_1000B3010;
  v21[0] = v11;
  v12 = objc_allocWithZone(type metadata accessor for FaceTimeVoicemailManager(0));
  v13 = sub_10003567C(v21, v22);
  __chkstk_darwin(v13, v13);
  v15 = (&v21[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;

  v18 = sub_100079758(v8, a1, a2, v17, v12);

  sub_100035504(v21);
  return v18;
}

uint64_t sub_100079DF4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100079E34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003124C;

  return sub_100044C3C(a1, v4, v5, v6);
}

uint64_t sub_100079EE8(uint64_t a1)
{
  v2 = sub_100030744(&qword_1000C5110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100079F50()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100079F88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100031874;

  return sub_100079534(a1, v4);
}

uint64_t sub_10007A040(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10003124C;

  return sub_100079534(a1, v4);
}

uint64_t sub_10007A0F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100031874;

  return sub_100079440(a1, v4);
}

void sub_10007A254(id *a1)
{
  v1 = [*a1 intent];
  sub_100009918();
  sub_100009908();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10007A2E4(void *a1)
{
  v1 = [a1 intent];
  sub_100009918();
  sub_100009908();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10007A430(void *a1)
{
  [a1 count];
  sub_100009918();
  sub_100009908();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10007A4C0()
{
  sub_100009918();
  sub_100009924();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10007A530()
{
  sub_100009918();
  sub_100009924();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10007A5A0(char a1, uint64_t a2, os_log_t log)
{
  v3[0] = 67109378;
  v3[1] = a1 & 1;
  v4 = 2112;
  v5 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "isTranscriptionAvailable: %d voicemail: %@", v3, 0x12u);
}

void sub_10007A640(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = [a1 localizedName];
  v7 = [a1 supportedHandleTypes];
  v8 = 134218498;
  v9 = a2;
  v10 = 2112;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Could not create a dial request due to an invalid handle type (%zd). For call provider %@, the supported handle types are (%@).", &v8, 0x20u);
}

void sub_10007A710(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not retrieve a call provider for the specified identifier %@.", &v2, 0xCu);
}

void sub_10007A84C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not create a dial request for the recent call (%@).", &v3, 0xCu);
}

void sub_10007A8C8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error initiating dial request %@: %@", &v4, 0x16u);
}

void sub_10007A97C(uint64_t a1, NSObject *a2)
{
  v2 = 138739971;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to fetch unified contact for identifier: %{sensitive}@", &v2, 0xCu);
}

void sub_10007AA08(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not create a CNPhoneNumber for the specified telephone number (%@).", &v2, 0xCu);
}

void sub_10007AA80(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Multiple instances of MPVoicemailController detected in same process which is not yet supported. (existing: %@, self: %@)", &v3, 0x16u);
}

void sub_10007AB1C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to get subscription information: %@", &v2, 0xCu);
}

void sub_10007AB94(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to get voicemail information: %@", &v2, 0xCu);
}