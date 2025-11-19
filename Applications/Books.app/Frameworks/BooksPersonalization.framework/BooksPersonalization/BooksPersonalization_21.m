uint64_t type metadata accessor for ClientCurrency.Request()
{
  result = qword_22E678;
  if (!qword_22E678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Package.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B3F34();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Package.fileURL.setter(uint64_t a1)
{
  v3 = sub_1B3F34();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ClientCurrency.Request.method.getter()
{
  v1 = (v0 + *(type metadata accessor for ClientCurrency.Request() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ClientCurrency.Request.method.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ClientCurrency.Request() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ClientCurrency.Request.headers.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for ClientCurrency.Request() + 24));
}

uint64_t ClientCurrency.Request.headers.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for ClientCurrency.Request() + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = v2;
  return result;
}

uint64_t ClientCurrency.Request.body.getter()
{
  v1 = v0 + *(type metadata accessor for ClientCurrency.Request() + 28);
  v2 = *v1;
  sub_1642BC(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_1642BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_4161C(a1, a2);
  }

  return a1;
}

uint64_t ClientCurrency.Request.body.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for ClientCurrency.Request() + 28);
  result = sub_85D94(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

void ClientCurrency.Request.hash(into:)()
{
  v1 = v0;
  sub_1B3F34();
  sub_165434(&qword_22E608, &type metadata accessor for URL);
  sub_1B4754();
  v2 = type metadata accessor for ClientCurrency.Request();
  v3 = (v0 + v2[5]);
  v4 = *v3;
  v5 = v3[1];
  sub_1B4884();
  v6 = *(v0 + v2[6]);
  v7 = *(v6 + 16);
  sub_1B5804(v7);
  if (v7)
  {
    v8 = (v6 + 56);
    do
    {
      v9 = *(v8 - 3);
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *v8;

      sub_1B4884();
      sub_1B4884();

      v8 += 4;
      --v7;
    }

    while (v7);
  }

  v13 = (v1 + v2[7]);
  if (v13[1] >> 60 == 15)
  {
    sub_1B5814(0);
  }

  else
  {
    v14 = *v13;
    sub_1B5814(1u);

    sub_1B3FA4();
  }
}

Swift::Int ClientCurrency.Request.hashValue.getter()
{
  v1 = v0;
  sub_1B57F4();
  sub_1B3F34();
  sub_165434(&qword_22E608, &type metadata accessor for URL);
  sub_1B4754();
  v2 = type metadata accessor for ClientCurrency.Request();
  v3 = (v0 + v2[5]);
  v4 = *v3;
  v5 = v3[1];
  sub_1B4884();
  v6 = *(v0 + v2[6]);
  v7 = *(v6 + 16);
  sub_1B5804(v7);
  if (v7)
  {
    v8 = (v6 + 56);
    do
    {
      v9 = *(v8 - 3);
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *v8;

      sub_1B4884();
      sub_1B4884();

      v8 += 4;
      --v7;
    }

    while (v7);
  }

  v13 = (v1 + v2[7]);
  if (v13[1] >> 60 == 15)
  {
    sub_1B5814(0);
  }

  else
  {
    v14 = *v13;
    sub_1B5814(1u);
    sub_1B3FA4();
  }

  return sub_1B5844();
}

void sub_16467C(uint64_t a1, int *a2)
{
  sub_1B3F34();
  sub_165434(&qword_22E608, &type metadata accessor for URL);
  sub_1B4754();
  v5 = (v2 + a2[5]);
  v6 = *v5;
  v7 = v5[1];
  sub_1B4884();
  sub_1BA44(a1, *(v2 + a2[6]));
  v8 = (v2 + a2[7]);
  if (v8[1] >> 60 == 15)
  {
    sub_1B5814(0);
  }

  else
  {
    v9 = *v8;
    sub_1B5814(1u);

    sub_1B3FA4();
  }
}

Swift::Int sub_16477C(uint64_t a1, int *a2)
{
  sub_1B57F4();
  sub_1B3F34();
  sub_165434(&qword_22E608, &type metadata accessor for URL);
  sub_1B4754();
  v4 = (v2 + a2[5]);
  v5 = *v4;
  v6 = v4[1];
  sub_1B4884();
  sub_1BA44(v10, *(v2 + a2[6]));
  v7 = (v2 + a2[7]);
  if (v7[1] >> 60 == 15)
  {
    sub_1B5814(0);
  }

  else
  {
    v8 = *v7;
    sub_1B5814(1u);
    sub_1B3FA4();
  }

  return sub_1B5844();
}

uint64_t ClientCurrency.Response.headers.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);

  *(v1 + 8) = v2;
  return result;
}

uint64_t ClientCurrency.Response.body.getter()
{
  v1 = *(v0 + 16);
  sub_4161C(v1, *(v0 + 24));
  return v1;
}

uint64_t ClientCurrency.Response.body.setter(uint64_t a1, uint64_t a2)
{
  result = sub_41670(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static ClientCurrency.Response.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[2];
  v2 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  if ((sub_9210(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  return sub_165110(v3, v2, v5, v4);
}

uint64_t ClientCurrency.Response.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  sub_1B5804(*v0);
  v4 = *(v1 + 16);
  sub_1B5804(v4);
  if (v4)
  {
    v5 = (v1 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;

      sub_1B4884();
      sub_1B4884();

      v5 += 4;
      --v4;
    }

    while (v4);
  }

  return sub_1B3FA4();
}

Swift::Int ClientCurrency.Response.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1B57F4();
  sub_1B5804(v1);
  v5 = *(v2 + 16);
  sub_1B5804(v5);
  if (v5)
  {
    v6 = (v2 + 56);
    do
    {
      v7 = *(v6 - 3);
      v8 = *(v6 - 2);
      v9 = *(v6 - 1);
      v10 = *v6;

      sub_1B4884();
      sub_1B4884();

      v6 += 4;
      --v5;
    }

    while (v5);
  }

  sub_1B3FA4();
  return sub_1B5844();
}

Swift::Int sub_164B44()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1B57F4();
  sub_1B5804(v1);
  sub_1BA44(v6, v2);
  sub_1B3FA4();
  return sub_1B5844();
}

uint64_t sub_164BBC(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  sub_1B5804(*v1);
  sub_1BA44(a1, v3);

  return sub_1B3FA4();
}

Swift::Int sub_164C24()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1B57F4();
  sub_1B5804(v1);
  sub_1BA44(v6, v2);
  sub_1B3FA4();
  return sub_1B5844();
}

uint64_t sub_164C98@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1B3D84();
    if (v10)
    {
      v11 = sub_1B3DA4();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1B3D94();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1B3D84();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1B3DA4();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1B3D94();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_164EC8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_165058(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_41670(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_164C98(v13, a3, a4, &v12);
  v10 = v4;
  sub_41670(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_165058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1B3D84();
  v11 = result;
  if (result)
  {
    result = sub_1B3DA4();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1B3D94();
  sub_164C98(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_165110(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_4161C(a3, a4);
          return sub_164EC8(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL _s20BooksPersonalization14ClientCurrencyO7RequestV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1B3ED4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ClientCurrency.Request();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1B5604() & 1) == 0 || (sub_9210(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0)
  {
    return 0;
  }

  v10 = v4[7];
  v12 = *(a1 + v10);
  v11 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v15 = *v13;
  v14 = v13[1];
  if (v11 >> 60 == 15)
  {
    if (v14 >> 60 == 15)
    {
      sub_1642BC(v12, v11);
      sub_1642BC(v15, v14);
      sub_85D94(v12, v11);
      return 1;
    }

    goto LABEL_12;
  }

  if (v14 >> 60 == 15)
  {
LABEL_12:
    sub_1642BC(v12, v11);
    sub_1642BC(v15, v14);
    sub_85D94(v12, v11);
    sub_85D94(v15, v14);
    return 0;
  }

  sub_1642BC(v12, v11);
  sub_1642BC(v15, v14);
  v17 = sub_165110(v12, v11, v15, v14);
  sub_85D94(v15, v14);
  sub_85D94(v12, v11);
  return (v17 & 1) != 0;
}

uint64_t sub_165434(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_165480()
{
  result = qword_22E618;
  if (!qword_22E618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E618);
  }

  return result;
}

uint64_t dispatch thunk of ClientTransport.makeCall(with:operationId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_226C;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_165644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B3F34();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_165718(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B3F34();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1657D4()
{
  sub_1B3F34();
  if (v0 <= 0x3F)
  {
    sub_165870();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_165870()
{
  if (!qword_22E688)
  {
    v0 = sub_1B4EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_22E688);
    }
  }
}

BooksPersonalization::BookHistoryFeature_optional __swiftcall BookHistoryFeature.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B5754();

  v5 = 18;
  if (v3 < 0x12)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t BookHistoryFeature.rawValue.getter()
{
  result = 0x6E49776569766572;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      v2 = 11;
      goto LABEL_16;
    case 3:
      return result;
    case 4:
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD00000000000002BLL;
      break;
    case 0xA:
    case 0xD:
      v2 = 9;
LABEL_16:
      result = v2 | 0xD000000000000014;
      break;
    case 0xB:
    case 0x11:
      result = 0xD000000000000021;
      break;
    case 0xC:
      result = 0xD000000000000013;
      break;
    case 0xE:
      result = 0xD00000000000001CLL;
      break;
    case 0xF:
      result = 0xD000000000000014;
      break;
    case 0x10:
      result = 0xD000000000000022;
      break;
    default:
      result = 0xD000000000000019;
      break;
  }

  return result;
}

unint64_t sub_165BA0@<X0>(unint64_t *a1@<X8>)
{
  result = BookHistoryFeature.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_165BCC()
{
  result = qword_22E6C0;
  if (!qword_22E6C0)
  {
    sub_1CC1C(&qword_22E6C8, &qword_1CFF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E6C0);
  }

  return result;
}

uint64_t sub_165CF0(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = BookHistoryFeature.rawValue.getter();
  v4 = v3;
  if (v2 == BookHistoryFeature.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B5604();
  }

  return v7 & 1;
}

unint64_t sub_165D90()
{
  result = qword_22E6D0;
  if (!qword_22E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E6D0);
  }

  return result;
}

Swift::Int sub_165DE4()
{
  v1 = *v0;
  sub_1B57F4();
  BookHistoryFeature.rawValue.getter();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_165E4C()
{
  v2 = *v0;
  BookHistoryFeature.rawValue.getter();
  sub_1B4884();
}

Swift::Int sub_165EB0()
{
  v1 = *v0;
  sub_1B57F4();
  BookHistoryFeature.rawValue.getter();
  sub_1B4884();

  return sub_1B5844();
}

unint64_t sub_165F24()
{
  result = qword_22E6D8;
  if (!qword_22E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E6D8);
  }

  return result;
}

uint64_t sub_165F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[146] = v4;
  v5[145] = a4;
  v5[144] = a3;
  v5[143] = a2;
  v5[142] = a1;
  return _swift_task_switch(sub_165FA8, 0, 0);
}

uint64_t sub_165FA8()
{
  v15 = v0[145];
  v1 = v0[143];
  v2 = v0[142];
  sub_2B0C(&qword_2292F0, &qword_1D0320);
  v3 = *(type metadata accessor for SeedBasedRecommendationRequest(0) - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[147] = v6;
  *(v6 + 16) = xmmword_1BCA80;
  sub_8478C(v2, v6 + v5);
  memcpy(v0 + 2, v1, 0x460uLL);
  v7 = *(v15 + 8);
  v14 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[148] = v9;
  *v9 = v0;
  v9[1] = sub_166188;
  v10 = v0[146];
  v11 = v0[145];
  v12 = v0[144];

  return (v14)(v6, v0 + 2, v12, v11);
}

uint64_t sub_166188(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1184);
  v8 = *v2;
  v3[149] = a1;
  v3[150] = v1;

  v5 = v3[147];

  if (v1)
  {
    v6 = sub_16642C;
  }

  else
  {
    v6 = sub_1662B0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1662B0()
{
  if (*(v0[149] + 16) && (v1 = sub_3AC78(v0[142]), (v2 & 1) != 0))
  {
    v3 = *(*(v0[149] + 56) + 8 * v1);

    v4 = v0[1];

    return v4(v3);
  }

  else
  {
    v6 = v0[142];

    type metadata accessor for Errors(0);
    sub_1675CC(&qword_22E7E0, type metadata accessor for Errors);
    swift_allocError();
    v8 = v7;
    v9 = sub_1B40F4();
    (*(*(v9 - 8) + 16))(v8, v6, v9);
    swift_willThrow();
    v10 = v0[1];

    return v10();
  }
}

int *SeedBasedRecommendationRequest.init(uuid:seedBooks:userInfo:storeInfo:mediaType:allGenresAllowed:allowedSales:explicitAllowed:excludedStoreIDs:bookCandidateLimitPerSeedBook:bookCandidateLimit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, char a6@<W5>, uint64_t *a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = *a3;
  v16 = a3[1];
  v17 = *a4;
  v18 = a4[1];
  v19 = *a5;
  v20 = *a7;
  v21 = sub_1B40F4();
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  result = type metadata accessor for SeedBasedRecommendationRequest(0);
  *(a9 + result[5]) = a2;
  v23 = (a9 + result[6]);
  *v23 = v15;
  v23[1] = v16;
  v24 = (a9 + result[7]);
  *v24 = v17;
  v24[1] = v18;
  *(a9 + result[8]) = v19;
  *(a9 + result[9]) = a6;
  *(a9 + result[10]) = v20;
  *(a9 + result[11]) = a8;
  *(a9 + result[12]) = a10;
  *(a9 + result[13]) = a11;
  *(a9 + result[14]) = a12;
  return result;
}

uint64_t SeedBasedRecommendationRequest.seedBooks.getter()
{
  v1 = *(v0 + *(type metadata accessor for SeedBasedRecommendationRequest(0) + 20));
}

uint64_t SeedBasedRecommendationRequest.userInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SeedBasedRecommendationRequest(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t SeedBasedRecommendationRequest.storeInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SeedBasedRecommendationRequest(0) + 28));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t SeedBasedRecommendationRequest.mediaType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SeedBasedRecommendationRequest(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t SeedBasedRecommendationRequest.allowedSales.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for SeedBasedRecommendationRequest(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t SeedBasedRecommendationRequest.excludedStoreIDs.getter()
{
  v1 = *(v0 + *(type metadata accessor for SeedBasedRecommendationRequest(0) + 48));
}

unint64_t sub_16677C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 1684632949;
    v7 = 0x6F666E4972657375;
    v8 = 0x666E4965726F7473;
    if (a1 != 3)
    {
      v8 = 0x707954616964656DLL;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6B6F6F4264656573;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000010;
    v2 = 0xD00000000000001DLL;
    if (a1 != 9)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    v4 = 0x536465776F6C6C61;
    if (a1 != 6)
    {
      v4 = 0x746963696C707865;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_166908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_167D24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_16693C(uint64_t a1)
{
  v2 = sub_166E44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_166978(uint64_t a1)
{
  v2 = sub_166E44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SeedBasedRecommendationRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2B0C(&qword_22E6E0, &qword_1D00F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_166E44();
  sub_1B5884();
  LOBYTE(v22) = 0;
  sub_1B40F4();
  sub_1675CC(&qword_22C878, &type metadata accessor for UUID);
  sub_1B5544();
  if (!v2)
  {
    v11 = type metadata accessor for SeedBasedRecommendationRequest(0);
    v22 = *(v3 + v11[5]);
    v24 = 1;
    sub_2B0C(&qword_229300, &qword_1BC3B8);
    sub_167614(&qword_22E6F0, sub_90C14);
    sub_1B5544();
    v12 = (v3 + v11[6]);
    v13 = v12[1];
    v22 = *v12;
    v23 = v13;
    v24 = 2;
    sub_1008F0();

    sub_1B5544();

    v14 = (v3 + v11[7]);
    v15 = v14[1];
    v22 = *v14;
    v23 = v15;
    v24 = 3;
    sub_100944();

    sub_1B5544();

    LOBYTE(v22) = *(v3 + v11[8]);
    v24 = 4;
    sub_8E75C();
    sub_1B5544();
    v17 = *(v3 + v11[9]);
    LOBYTE(v22) = 5;
    sub_1B5504();
    v22 = *(v3 + v11[10]);
    v24 = 6;
    sub_100998();
    sub_1B5544();
    v18 = *(v3 + v11[11]);
    LOBYTE(v22) = 7;
    sub_1B5504();
    v22 = *(v3 + v11[12]);
    v24 = 8;
    sub_2B0C(&qword_2292C8, &unk_1BCB00);
    sub_8E804(&qword_22A8C8);
    sub_1B5544();
    v19 = *(v3 + v11[13]);
    LOBYTE(v22) = 9;
    sub_1B5534();
    v20 = *(v3 + v11[14]);
    LOBYTE(v22) = 10;
    sub_1B5534();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_166E44()
{
  result = qword_22E6E8;
  if (!qword_22E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E6E8);
  }

  return result;
}

uint64_t SeedBasedRecommendationRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_1B40F4();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  __chkstk_darwin(v4);
  v30 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2B0C(&qword_22E6F8, &qword_1D00F8);
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for SeedBasedRecommendationRequest(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_2698(a1, a1[3]);
  sub_166E44();
  v33 = v10;
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  v26 = v14;
  v27 = a1;
  v25 = v11;
  LOBYTE(v34) = 0;
  sub_1675CC(&qword_22C8C0, &type metadata accessor for UUID);
  v16 = v30;
  sub_1B5404();
  v17 = v26;
  (*(v29 + 32))(v26, v16, v4);
  sub_2B0C(&qword_229300, &qword_1BC3B8);
  v35 = 1;
  sub_167614(&qword_22E700, sub_90CE0);
  sub_1B5404();
  v24 = v4;
  v18 = v25;
  *&v17[v25[5]] = v34;
  v35 = 2;
  sub_101570();
  v30 = 0;
  sub_1B5404();
  *&v17[v18[6]] = v34;
  v35 = 3;
  sub_1015C4();
  sub_1B5404();
  v19 = *(&v34 + 1);
  v20 = &v17[v18[7]];
  *v20 = v34;
  *(v20 + 1) = v19;
  v35 = 4;
  sub_8E8C4();
  sub_1B5404();
  v17[v18[8]] = v34;
  LOBYTE(v34) = 5;
  v17[v18[9]] = sub_1B53C4() & 1;
  v35 = 6;
  sub_101618();
  sub_1B5404();
  *&v17[v18[10]] = v34;
  LOBYTE(v34) = 7;
  v17[v18[11]] = sub_1B53C4() & 1;
  sub_2B0C(&qword_2292C8, &unk_1BCB00);
  v35 = 8;
  sub_8E804(&qword_22A8F8);
  sub_1B5404();
  *&v17[v18[12]] = v34;
  LOBYTE(v34) = 9;
  *&v26[v25[13]] = sub_1B53F4();
  LOBYTE(v34) = 10;
  v21 = sub_1B53F4();
  (*(v31 + 8))(v33, v32);
  v22 = v26;
  *&v26[v25[14]] = v21;
  sub_8478C(v22, v28);
  sub_2BF8(v27);
  return sub_155848(v22);
}

uint64_t sub_1675CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_167614(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_229300, &qword_1BC3B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1676D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B40F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1677A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B40F4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_167858()
{
  sub_1B40F4();
  if (v0 <= 0x3F)
  {
    sub_167940();
    if (v1 <= 0x3F)
    {
      sub_B90C4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_167940()
{
  if (!qword_22E770)
  {
    sub_42AA8();
    v0 = sub_1B4CF4();
    if (!v1)
    {
      atomic_store(v0, &qword_22E770);
    }
  }
}

uint64_t dispatch thunk of SeedBasedRecommendationServiceType.fetchBooks(for:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_441B4;

  return v13(a1, a2, a3, a4);
}

uint64_t getEnumTagSinglePayload for SeedBasedRecommendationRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SeedBasedRecommendationRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_167C20()
{
  result = qword_22E7C8;
  if (!qword_22E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E7C8);
  }

  return result;
}

unint64_t sub_167C78()
{
  result = qword_22E7D0;
  if (!qword_22E7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E7D0);
  }

  return result;
}

unint64_t sub_167CD0()
{
  result = qword_22E7D8;
  if (!qword_22E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E7D8);
  }

  return result;
}

uint64_t sub_167D24(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B6F6F4264656573 && a2 == 0xE900000000000073 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x666E4965726F7473 && a2 == 0xE90000000000006FLL || (sub_1B5604() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065 || (sub_1B5604() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000001D7AF0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x536465776F6C6C61 && a2 == 0xEC00000073656C61 || (sub_1B5604() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746963696C707865 && a2 == 0xEF6465776F6C6C41 || (sub_1B5604() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000001D7B10 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000000001D4CC0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x80000000001D4CE0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1680D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22E7E8, &qword_1D0328);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_168148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2B0C(&qword_22E7E8, &qword_1D0328);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_1681D0(uint64_t a1)
{
  sub_168288();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = sub_1B40F4();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

void sub_168288()
{
  if (!qword_22E870)
  {
    v0 = sub_1B40F4();
    if (!v1)
    {
      atomic_store(v0, &qword_22E870);
    }
  }
}

Swift::Int sub_1682D0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_56BA8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1686D4(v5);
  *a1 = v2;
  return result;
}

void *Dictionary<>.primarySeed.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5[0] = 0;
  sub_1683E0(v5, a1, __src);
  if (sub_6153C(__src) == 1)
  {
    sub_15C54C(v5);
  }

  else
  {
    memcpy(&v4[7], __src, 0x231uLL);
    v5[0] = 0;
    memcpy(&v5[1], v4, 0x238uLL);
    AuthorRecommendationSource.id.getter(v5);
  }

  return memcpy(a2, v5, 0x239uLL);
}

void *sub_1683E0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 16))
  {
    v5 = sub_3AB0C(*a1);
    if (v6)
    {
      __dst[0] = *(*(a2 + 56) + 8 * v5);
      swift_bridgeObjectRetain_n();
      sub_1682D0(__dst);

      v7 = *(__dst[0] + 2);
      if (v7)
      {
        memcpy(__dst, &__dst[0][568 * v7 - 536], 0x231uLL);
        sub_4299C(__dst, v9);

        memcpy(a3, __dst, 0x231uLL);
        return AuthorRecommendationSource.id.getter(a3);
      }
    }
  }

  sub_61554(__dst);
  return memcpy(a3, __dst, 0x231uLL);
}

BOOL sub_1684E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 144);
  v34 = *(a1 + 128);
  v35 = v3;
  v36 = *(a1 + 160);
  v4 = *(a1 + 112);
  v32 = *(a1 + 96);
  v33 = v4;
  v5 = v35;
  v6 = 0.0;
  v7 = 0.0;
  if (v35 >> 1 != 0xFFFFFFFF)
  {
    v8 = v32;
    v9 = v33;
    v10 = v34;
    if ((v35 >> 62) > 2)
    {
      v11 = v32;
    }

    else
    {
      sub_2B0C(&qword_229488, &qword_1BC520);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1BCA80;
      *(v11 + 32) = v8;
      *(v11 + 48) = v9;
      *(v11 + 64) = v10;
      *(v11 + 80) = v5 & 1;
    }

    sub_42CD4(&v32, &v27);
    v12 = Array<A>.affinity.getter(v11);
    v14 = v13;

    if ((v14 & 1) == 0)
    {
      v7 = *&v12;
    }
  }

  v15 = *(a2 + 144);
  v29 = *(a2 + 128);
  v30 = v15;
  v31 = *(a2 + 160);
  v16 = *(a2 + 112);
  v27 = *(a2 + 96);
  v28 = v16;
  v17 = v30;
  if (v30 >> 1 != 0xFFFFFFFF)
  {
    v18 = v27;
    v19 = v28;
    v20 = v29;
    if ((v30 >> 62) > 2)
    {
      v21 = v27;
    }

    else
    {
      sub_2B0C(&qword_229488, &qword_1BC520);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1BCA80;
      *(v21 + 32) = v18;
      *(v21 + 48) = v19;
      *(v21 + 64) = v20;
      *(v21 + 80) = v17 & 1;
    }

    sub_42CD4(&v27, v26);
    v22 = Array<A>.affinity.getter(v21);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      v6 = *&v22;
    }
  }

  return v7 < v6;
}

Swift::Int sub_1686D4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B5584(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      if (v2 <= 1)
      {
        v4 = _swiftEmptyArrayStorage;
      }

      else
      {
        v4 = sub_1B4B34();
        v4[2] = v2 / 2;
      }

      v6[0] = v4 + 4;
      v6[1] = v2 / 2;
      v5 = v4;
      sub_168AE0(v6);
      v5[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1687CC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1687CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v31 = *a4;
    v4 = *a4 + 568 * a3 - 568;
    v5 = result - a3 + 1;
LABEL_5:
    v29 = v4;
    v30 = a3;
    v28 = v5;
    for (i = v5; ; ++i)
    {
      memcpy(__dst, (v4 + 568), 0x231uLL);
      memcpy(v40, v4, 0x231uLL);
      v7 = __dst[18];
      v32 = i;
      if (__dst[18] >> 1 == 0xFFFFFFFFLL)
      {
        sub_4299C(__dst, __src);
        sub_4299C(v40, __src);
        v8 = 0.0;
      }

      else
      {
        v9 = __dst[12];
        v10 = __dst[13];
        v11 = __dst[14];
        v12 = __dst[15];
        v13 = __dst[16];
        v14 = __dst[17];
        if ((__dst[18] >> 62) > 2)
        {
          v15 = __dst[12];
        }

        else
        {
          sub_2B0C(&qword_229488, &qword_1BC520);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_1BCA80;
          *(v15 + 32) = v9;
          *(v15 + 40) = v10;
          *(v15 + 48) = v11;
          *(v15 + 56) = v12;
          *(v15 + 64) = v13;
          *(v15 + 72) = v14;
          *(v15 + 80) = v7 & 1;
        }

        sub_4299C(__dst, __src);
        sub_4299C(v40, __src);
        sub_169DD8(&__dst[12], __src);
        v16 = Array<A>.affinity.getter(v15);
        v18 = v17;

        v8 = 0.0;
        i = v32;
        if ((v18 & 1) == 0)
        {
          v8 = *&v16;
        }
      }

      v35 = v40[8];
      v36 = v40[9];
      v37 = *&v40[10];
      v33 = v40[6];
      v34 = v40[7];
      v19 = v40[9];
      if (*&v40[9] >> 1 == 0xFFFFFFFFLL)
      {
        break;
      }

      v20 = v33;
      v21 = v34;
      v22 = v35;
      if ((*&v40[9] >> 62) > 2)
      {
        v23 = v33;
      }

      else
      {
        sub_2B0C(&qword_229488, &qword_1BC520);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1BCA80;
        *(v23 + 32) = v20;
        *(v23 + 48) = v21;
        *(v23 + 64) = v22;
        *(v23 + 80) = v19 & 1;
      }

      sub_42CD4(&v33, __src);
      v24 = COERCE_DOUBLE(Array<A>.affinity.getter(v23));
      v26 = v25;

      sub_2601C(v40);
      result = sub_2601C(__dst);
      i = v32;
      if (v26)
      {
        goto LABEL_19;
      }

      if (v8 >= v24)
      {
        goto LABEL_4;
      }

LABEL_22:
      if (!v31)
      {
        __break(1u);
        return result;
      }

      memcpy(__src, (v4 + 568), 0x231uLL);
      memcpy((v4 + 568), v4, 0x238uLL);
      result = memcpy(v4, __src, 0x231uLL);
      if (!i)
      {
LABEL_4:
        a3 = v30 + 1;
        v4 = v29 + 568;
        v5 = v28 - 1;
        if (v30 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      v4 -= 568;
    }

    sub_2601C(v40);
    result = sub_2601C(__dst);
LABEL_19:
    if (v8 >= 0.0)
    {
      goto LABEL_4;
    }

    goto LABEL_22;
  }

  return result;
}

uint64_t sub_168AE0(uint64_t a1)
{
  *&result = COERCE_DOUBLE(__chkstk_darwin(a1));
  v111 = result;
  v117 = v5;
  v6 = v5[1];
  if (v6 < 1)
  {
    *&v8 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
LABEL_123:
    v2 = *v111;
    if (!*v111)
    {
      goto LABEL_166;
    }

    i = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_160;
    }

    result = i;
LABEL_126:
    v138 = *&result;
    v105 = *(result + 16);
    if (v105 >= 2)
    {
      i = 568;
      while (*v117)
      {
        v106 = *(result + 16 * v105);
        v107 = result;
        v108 = *(result + 16 * (v105 - 1) + 40);
        sub_169690((*v117 + 568 * v106), (*v117 + 568 * *(result + 16 * (v105 - 1) + 32)), (*v117 + 568 * v108), *&v2);
        if (v1)
        {
          goto LABEL_138;
        }

        if (v108 < v106)
        {
          goto LABEL_153;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          *&v107 = COERCE_DOUBLE(sub_52E40(v107));
        }

        if (v105 - 2 >= *(v107 + 2))
        {
          goto LABEL_154;
        }

        v109 = &v107[16 * v105];
        *v109 = v106;
        *(v109 + 1) = v108;
        v138 = *&v107;
        sub_52DB4(v105 - 1);
        *&result = v138;
        v105 = *(*&v138 + 16);
        if (v105 <= 1)
        {
          goto LABEL_138;
        }
      }

      goto LABEL_164;
    }

LABEL_138:
    *&result = COERCE_DOUBLE();
    return result;
  }

  v110 = v4;
  v7 = 0.0;
  *&v8 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
  while (1)
  {
    i = *&v7 + 1;
    v113 = v7;
    v114 = v8;
    if (*&v7 + 1 >= v6)
    {
      v13 = *&v7 + 1;
      goto LABEL_34;
    }

    v10 = v7;
    v11 = *v117;
    v12 = (*v117 + 568 * i);
    memcpy(v136, v12, 0x231uLL);
    memcpy(__dst, v12, 0x231uLL);
    *&v2 = v11 + 568 * *&v10;
    memcpy(v137, *&v2, sizeof(v137));
    memcpy(__src, *&v2, 0x231uLL);
    sub_4299C(v136, v133);
    sub_4299C(v137, v133);
    v122 = sub_1684E0(__dst, __src);
    if (v1)
    {
      memcpy(v132, __src, 0x231uLL);
      sub_2601C(v132);
      memcpy(v133, __dst, 0x231uLL);
      sub_2601C(v133);
      goto LABEL_138;
    }

    memcpy(v132, __src, 0x231uLL);
    sub_2601C(v132);
    memcpy(v133, __dst, 0x231uLL);
    *&result = COERCE_DOUBLE(sub_2601C(v133));
    v13 = *&v10 + 2;
    if (*&v10 + 2 >= v6)
    {
      goto LABEL_31;
    }

    v14 = v11 + 568 * *&v10 + 568;
    v120 = v6;
    while (1)
    {
      memcpy(v130, (v14 + 568), 0x231uLL);
      memcpy(v131, v14, sizeof(v131));
      v15 = v130[18];
      v118 = v13;
      if (v130[18] >> 1 == 0xFFFFFFFFLL)
      {
        sub_4299C(v130, &v125);
        sub_4299C(v131, &v125);
        v16 = 0.0;
      }

      else
      {
        v17 = v130[12];
        v18 = v130[13];
        v19 = v130[14];
        v20 = v130[15];
        v21 = v130[16];
        v22 = v130[17];
        if ((v130[18] >> 62) > 2)
        {
          v23 = v130[12];
        }

        else
        {
          sub_2B0C(&qword_229488, &qword_1BC520);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_1BCA80;
          *(v23 + 32) = v17;
          *(v23 + 40) = v18;
          *(v23 + 48) = v19;
          *(v23 + 56) = v20;
          *(v23 + 64) = v21;
          *(v23 + 72) = v22;
          *(v23 + 80) = v15 & 1;
        }

        sub_4299C(v130, &v125);
        sub_4299C(v131, &v125);
        sub_169DD8(&v130[12], &v125);
        v2 = COERCE_DOUBLE(Array<A>.affinity.getter(v23));
        v25 = v24;

        v16 = 0.0;
        v13 = v118;
        v6 = v120;
        if ((v25 & 1) == 0)
        {
          v16 = v2;
        }
      }

      v127 = *&v131[128];
      v128 = *&v131[144];
      v129 = *&v131[160];
      v125 = *&v131[96];
      v126 = *&v131[112];
      v26 = v131[144];
      if (*&v131[144] >> 1 == 0xFFFFFFFFLL)
      {
        sub_2601C(v131);
        *&result = COERCE_DOUBLE(sub_2601C(v130));
LABEL_21:
        v33 = v16 < 0.0;
        goto LABEL_23;
      }

      v27 = v125;
      v28 = v126;
      v29 = v127;
      if ((*&v131[144] >> 62) > 2)
      {
        v30 = v125;
      }

      else
      {
        sub_2B0C(&qword_229488, &qword_1BC520);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1BCA80;
        *(v30 + 32) = v27;
        *(v30 + 48) = v28;
        *(v30 + 64) = v29;
        *(v30 + 80) = v26 & 1;
      }

      sub_42CD4(&v125, v124);
      v2 = COERCE_DOUBLE(Array<A>.affinity.getter(v30));
      v32 = v31;

      sub_2601C(v131);
      *&result = COERCE_DOUBLE(sub_2601C(v130));
      v13 = v118;
      v6 = v120;
      if (v32)
      {
        goto LABEL_21;
      }

      v33 = v16 < v2;
LABEL_23:
      v34 = !v33;
      if (((v122 ^ v34) & 1) == 0)
      {
        break;
      }

      ++v13;
      v14 += 568;
      if (v6 == v13)
      {
        i = v13 - 1;
        v13 = v6;
        goto LABEL_31;
      }
    }

    i = v13 - 1;
LABEL_31:
    if (v122)
    {
      v2 = v113;
      if (v13 >= *&v113)
      {
        if (*&v113 <= i)
        {
          i = 568 * v13 - 568;
          v102 = 568 * *&v113;
          v103 = v13;
          do
          {
            if (*&v2 != --v103)
            {
              v104 = *v117;
              if (!*v117)
              {
                goto LABEL_163;
              }

              memcpy(v131, (v104 + v102), sizeof(v131));
              memmove((v104 + v102), (v104 + i), 0x238uLL);
              *&result = COERCE_DOUBLE(memcpy((v104 + i), v131, 0x231uLL));
            }

            ++*&v2;
            i -= 568;
            v102 += 568;
          }

          while (*&v2 < v103);
        }

        goto LABEL_34;
      }

LABEL_159:
      __break(1u);
LABEL_160:
      *&result = COERCE_DOUBLE(sub_52E40(i));
      goto LABEL_126;
    }

LABEL_34:
    v35 = v117[1];
    if (v13 < v35)
    {
      if (__OFSUB__(v13, *&v113))
      {
        goto LABEL_156;
      }

      if (v13 - *&v113 < v110)
      {
        v36 = *&v113 + v110;
        if (__OFADD__(*&v113, v110))
        {
          goto LABEL_157;
        }

        if (v36 >= v35)
        {
          v36 = v117[1];
        }

        if (v36 < *&v113)
        {
LABEL_158:
          __break(1u);
          goto LABEL_159;
        }

        if (v13 != v36)
        {
          break;
        }
      }
    }

LABEL_65:
    if (v13 < *&v113)
    {
      goto LABEL_155;
    }

    *&result = COERCE_DOUBLE(swift_isUniquelyReferenced_nonNull_native());
    if (result)
    {
      v8 = v114;
    }

    else
    {
      *&result = COERCE_DOUBLE(sub_32F04(0, *(v114 + 2) + 1, 1, v114));
      v8 = result;
    }

    i = *(v8 + 2);
    v57 = *(v8 + 3);
    v58 = i + 1;
    if (i >= v57 >> 1)
    {
      *&result = COERCE_DOUBLE(sub_32F04((v57 > 1), i + 1, 1, v8));
      v8 = result;
    }

    *(v8 + 2) = v58;
    v59 = &v8[16 * i];
    v59[4] = v113;
    v59[5] = *&v13;
    v60 = *v111;
    if (!*v111)
    {
      goto LABEL_165;
    }

    if (*&i != 0.0)
    {
      while (1)
      {
        v61 = v58 - 1;
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v62 = *(v8 + 4);
          v63 = *(v8 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_85:
          if (v65)
          {
            goto LABEL_144;
          }

          v78 = &v8[16 * v58];
          v80 = *v78;
          v79 = *(v78 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_147;
          }

          v84 = &v8[16 * v61 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_150;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_151;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v61 = v58 - 2;
            }

            goto LABEL_106;
          }

          goto LABEL_99;
        }

        v88 = &v8[16 * v58];
        v90 = *v88;
        v89 = *(v88 + 1);
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_99:
        if (v83)
        {
          goto LABEL_146;
        }

        v91 = &v8[16 * v61];
        v93 = *(v91 + 4);
        v92 = *(v91 + 5);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_149;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_106:
        i = v61 - 1;
        if (v61 - 1 >= v58)
        {
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
          goto LABEL_158;
        }

        if (!*v117)
        {
          goto LABEL_162;
        }

        v2 = *&v8;
        v99 = *&v8[16 * i + 32];
        v100 = *&v8[16 * v61 + 40];
        sub_169690((*v117 + 568 * v99), (*v117 + 568 * *&v8[16 * v61 + 32]), (*v117 + 568 * v100), v60);
        if (v1)
        {
          goto LABEL_138;
        }

        if (v100 < v99)
        {
          goto LABEL_140;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = COERCE_DOUBLE(sub_52E40(*&v2));
        }

        if (i >= *(*&v2 + 16))
        {
          goto LABEL_141;
        }

        v101 = *&v2 + 16 * i;
        *(v101 + 32) = v99;
        *(v101 + 40) = v100;
        v138 = v2;
        *&result = COERCE_DOUBLE(sub_52DB4(v61));
        *&v8 = v138;
        v58 = *(*&v138 + 16);
        if (v58 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = &v8[16 * v58 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_142;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_143;
      }

      v73 = &v8[16 * v58];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_145;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_148;
      }

      if (v77 >= v69)
      {
        v95 = &v8[16 * v61 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_152;
        }

        if (v64 < v98)
        {
          v61 = v58 - 2;
        }

        goto LABEL_106;
      }

      goto LABEL_85;
    }

LABEL_3:
    v7 = *&v13;
    v6 = v117[1];
    if (v13 >= v6)
    {
      goto LABEL_123;
    }
  }

  v121 = *v117;
  v37 = *v117 + 568 * v13 - 568;
  v38 = *&v113 - v13 + 1;
  v112 = v36;
LABEL_44:
  v119 = v13;
  v115 = v38;
  v116 = v37;
  for (i = v38; ; ++i)
  {
    memcpy(v136, (v37 + 568), 0x231uLL);
    memcpy(v137, v37, sizeof(v137));
    v39 = v136[18];
    v123 = i;
    if (v136[18] >> 1 == 0xFFFFFFFFLL)
    {
      sub_4299C(v136, __dst);
      sub_4299C(v137, __dst);
      v40 = 0.0;
    }

    else
    {
      v41 = v136[12];
      v42 = v136[13];
      v43 = v136[14];
      v44 = v136[15];
      v45 = v136[16];
      v46 = v136[17];
      if ((v136[18] >> 62) > 2)
      {
        v47 = v136[12];
      }

      else
      {
        sub_2B0C(&qword_229488, &qword_1BC520);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_1BCA80;
        *(v47 + 32) = v41;
        *(v47 + 40) = v42;
        *(v47 + 48) = v43;
        *(v47 + 56) = v44;
        *(v47 + 64) = v45;
        *(v47 + 72) = v46;
        *(v47 + 80) = v39 & 1;
      }

      sub_4299C(v136, __dst);
      sub_4299C(v137, __dst);
      sub_169DD8(&v136[12], __dst);
      v2 = COERCE_DOUBLE(Array<A>.affinity.getter(v47));
      v49 = v48;

      v40 = 0.0;
      i = v123;
      if ((v49 & 1) == 0)
      {
        v40 = v2;
      }
    }

    __src[2] = *&v137[128];
    __src[3] = *&v137[144];
    *&__src[4] = *&v137[160];
    __src[0] = *&v137[96];
    __src[1] = *&v137[112];
    v50 = v137[144];
    if (*&v137[144] >> 1 == 0xFFFFFFFFLL)
    {
      sub_2601C(v137);
      *&result = COERCE_DOUBLE(sub_2601C(v136));
LABEL_58:
      if (v40 >= 0.0)
      {
        goto LABEL_43;
      }

      goto LABEL_61;
    }

    v51 = __src[0];
    v52 = __src[1];
    v53 = __src[2];
    if ((*&v137[144] >> 62) > 2)
    {
      v54 = *&__src[0];
    }

    else
    {
      sub_2B0C(&qword_229488, &qword_1BC520);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1BCA80;
      *(v54 + 32) = v51;
      *(v54 + 48) = v52;
      *(v54 + 64) = v53;
      *(v54 + 80) = v50 & 1;
    }

    sub_42CD4(__src, __dst);
    v2 = COERCE_DOUBLE(Array<A>.affinity.getter(v54));
    v56 = v55;

    sub_2601C(v137);
    *&result = COERCE_DOUBLE(sub_2601C(v136));
    i = v123;
    if (v56)
    {
      goto LABEL_58;
    }

    if (v40 >= v2)
    {
      goto LABEL_43;
    }

LABEL_61:
    if (!v121)
    {
      break;
    }

    memcpy(__dst, (v37 + 568), 0x231uLL);
    memcpy((v37 + 568), v37, 0x238uLL);
    memcpy(v37, __dst, 0x231uLL);
    if (*&i == 0.0)
    {
LABEL_43:
      v13 = v119 + 1;
      v37 = v116 + 568;
      v38 = v115 - 1;
      if (v119 + 1 == v112)
      {
        v13 = v112;
        goto LABEL_65;
      }

      goto LABEL_44;
    }

    v37 -= 568;
  }

  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
  return result;
}

uint64_t sub_169690(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 568;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 568;
  if (v9 >= v11)
  {
    v37 = 568 * v11;
    if (a4 != __src || &__src[v37] <= a4)
    {
      memmove(a4, __src, 568 * v11);
    }

    v13 = &v4[v37];
    if (v10 < 568 || v6 <= v7)
    {
      goto LABEL_75;
    }

    v72 = v4;
    v66 = v7;
LABEL_36:
    v68 = v6;
    v38 = v6 - 568;
    v5 -= 568;
    v39 = v13;
    v64 = v6 - 568;
    while (1)
    {
      v13 = v39;
      v39 -= 568;
      memcpy(__dsta, v39, 0x231uLL);
      memcpy(v80, v38, 0x231uLL);
      v40 = __dsta[18];
      v70 = v13;
      if (__dsta[18] >> 1 == 0xFFFFFFFFLL)
      {
        sub_4299C(__dsta, &v74);
        sub_4299C(v80, &v74);
        v41 = 0.0;
        goto LABEL_49;
      }

      v42 = __dsta[12];
      v43 = __dsta[13];
      v44 = __dsta[14];
      v45 = __dsta[16];
      v46 = __dsta[17];
      if ((__dsta[18] >> 62) <= 1)
      {
        break;
      }

      if (__dsta[18] >> 62 == 2)
      {
        v62 = __dsta[15];
        goto LABEL_45;
      }

      v47 = __dsta[12];
LABEL_47:
      sub_4299C(__dsta, &v74);
      sub_4299C(v80, &v74);
      sub_169DD8(&__dsta[12], &v74);
      v48 = Array<A>.affinity.getter(v47);
      v50 = v49;

      v41 = 0.0;
      v13 = v70;
      v38 = v64;
      if ((v50 & 1) == 0)
      {
        v41 = *&v48;
      }

LABEL_49:
      v76 = v80[8];
      v77 = v80[9];
      v78 = *&v80[10];
      v74 = v80[6];
      v75 = v80[7];
      v51 = v80[9];
      if (*&v80[9] >> 1 != 0xFFFFFFFFLL)
      {
        v52 = v74;
        v53 = v75;
        v54 = v76;
        if ((*&v80[9] >> 62) <= 1)
        {
          v63 = *(&v76 + 1);
          goto LABEL_56;
        }

        if (*&v80[9] >> 62 == 2)
        {
          v63 = *(&v76 + 1);
LABEL_56:
          sub_2B0C(&qword_229488, &qword_1BC520);
          v55 = swift_allocObject();
          *(v55 + 16) = xmmword_1BCA80;
          *(v55 + 32) = v52;
          *(v55 + 48) = v53;
          *(v55 + 64) = v54;
          *(v55 + 72) = v63;
          *(v55 + 80) = v51 & 1;
        }

        else
        {
          v55 = v74;
        }

        sub_42CD4(&v74, v73);
        v56 = COERCE_DOUBLE(Array<A>.affinity.getter(v55));
        v58 = v57;

        sub_2601C(v80);
        sub_2601C(__dsta);
        v38 = v64;
        if (v58)
        {
          v13 = v70;
          if (v41 < 0.0)
          {
            goto LABEL_66;
          }
        }

        else
        {
          v13 = v70;
          if (v41 < v56)
          {
LABEL_66:
            v4 = v72;
            if ((v5 + 568) < v68 || v5 >= v68)
            {
              memmove(v5, v38, 0x238uLL);
              v59 = v66;
            }

            else
            {
              v59 = v66;
              if (v5 + 568 != v68)
              {
                memmove(v5, v38, 0x238uLL);
              }
            }

            if (v13 <= v72 || (v6 = v38, v38 <= v59))
            {
              v6 = v38;
              goto LABEL_75;
            }

            goto LABEL_36;
          }
        }

        goto LABEL_62;
      }

      sub_2601C(v80);
      sub_2601C(__dsta);
      if (v41 < 0.0)
      {
        goto LABEL_66;
      }

LABEL_62:
      v4 = v72;
      if ((v5 + 568) < v13 || v5 >= v13 || v5 + 568 != v13)
      {
        memmove(v5, v39, 0x238uLL);
      }

      v5 -= 568;
      if (v39 <= v72)
      {
        v13 = v39;
        v6 = v68;
        goto LABEL_75;
      }
    }

    v62 = __dsta[15];
LABEL_45:
    sub_2B0C(&qword_229488, &qword_1BC520);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1BCA80;
    *(v47 + 32) = v42;
    *(v47 + 40) = v43;
    *(v47 + 48) = v44;
    *(v47 + 56) = v62;
    *(v47 + 64) = v45;
    *(v47 + 72) = v46;
    *(v47 + 80) = v40 & 1;
    goto LABEL_47;
  }

  v12 = 568 * v9;
  if (a4 != __dst || &__dst[v12] <= a4)
  {
    memmove(a4, __dst, v12);
  }

  v13 = &v4[v12];
  if (v8 >= 568 && v6 < v5)
  {
    v69 = v13;
    while (1)
    {
      v65 = v7;
      v67 = v6;
      memcpy(__dsta, v6, 0x231uLL);
      memcpy(v80, v4, 0x231uLL);
      v14 = __dsta[18];
      v71 = v4;
      if (__dsta[18] >> 1 == 0xFFFFFFFFLL)
      {
        sub_4299C(__dsta, &v74);
        sub_4299C(v80, &v74);
        v15 = 0.0;
      }

      else
      {
        v16 = __dsta[12];
        v17 = __dsta[13];
        v18 = __dsta[14];
        v19 = __dsta[15];
        v20 = __dsta[16];
        v21 = __dsta[17];
        if ((__dsta[18] >> 62) > 2)
        {
          v22 = __dsta[12];
        }

        else
        {
          sub_2B0C(&qword_229488, &qword_1BC520);
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_1BCA80;
          *(v22 + 32) = v16;
          *(v22 + 40) = v17;
          *(v22 + 48) = v18;
          *(v22 + 56) = v19;
          *(v22 + 64) = v20;
          *(v22 + 72) = v21;
          *(v22 + 80) = v14 & 1;
        }

        sub_4299C(__dsta, &v74);
        sub_4299C(v80, &v74);
        sub_169DD8(&__dsta[12], &v74);
        v23 = Array<A>.affinity.getter(v22);
        v25 = v24;

        v15 = 0.0;
        v4 = v71;
        if ((v25 & 1) == 0)
        {
          v15 = *&v23;
        }
      }

      v76 = v80[8];
      v77 = v80[9];
      v78 = *&v80[10];
      v74 = v80[6];
      v75 = v80[7];
      v26 = v80[9];
      if (*&v80[9] >> 1 == 0xFFFFFFFFLL)
      {
        break;
      }

      v27 = v74;
      v28 = v75;
      v29 = v76;
      if ((*&v80[9] >> 62) > 2)
      {
        v30 = v74;
      }

      else
      {
        sub_2B0C(&qword_229488, &qword_1BC520);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1BCA80;
        *(v30 + 32) = v27;
        *(v30 + 48) = v28;
        *(v30 + 64) = v29;
        *(v30 + 80) = v26 & 1;
      }

      sub_42CD4(&v74, v73);
      v31 = COERCE_DOUBLE(Array<A>.affinity.getter(v30));
      v33 = v32;

      sub_2601C(v80);
      sub_2601C(__dsta);
      v4 = v71;
      if (v33)
      {
        goto LABEL_21;
      }

      v13 = v69;
      if (v15 >= v31)
      {
LABEL_25:
        v35 = v4;
        v34 = v65;
        v6 = v67;
        v36 = v65 == v4;
        v4 += 568;
        if (v36)
        {
          goto LABEL_27;
        }

LABEL_26:
        memmove(v34, v35, 0x238uLL);
        goto LABEL_27;
      }

LABEL_22:
      v34 = v65;
      v35 = v67;
      v6 = v67 + 568;
      if (v65 != v67)
      {
        goto LABEL_26;
      }

LABEL_27:
      v7 = v34 + 568;
      if (v4 >= v13 || v6 >= v5)
      {
        goto LABEL_29;
      }
    }

    sub_2601C(v80);
    sub_2601C(__dsta);
LABEL_21:
    v13 = v69;
    if (v15 >= 0.0)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

LABEL_29:
  v6 = v7;
LABEL_75:
  v60 = 568 * ((v13 - v4) / 568);
  if (v6 != v4 || v6 >= &v4[v60])
  {
    memmove(v6, v4, v60);
  }

  return 1;
}

uint64_t sub_169DD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22A4E0, &unk_1C01D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_169E48@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_264B8(a1, a4);
  v7 = type metadata accessor for AccessManager.RequirementEntry();
  return (*(*(a3 - 8) + 32))(a4 + *(v7 + 52), a2, a3);
}

uint64_t AccessManager.register(requirement:for:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v9 = &v17 - v8;
  *&v19.val[0].f64[0] = v5;
  v19.val[0].f64[1] = *(v10 + 88);
  v19.val[1] = v19.val[0];
  v11 = v18;
  vst2q_f64(v11, v19);
  v12 = type metadata accessor for AccessManager.RequirementEntry();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v17 - v14;
  sub_404C4(a1, v18);
  (*(v6 + 16))(v9, a2, v5);
  sub_169E48(v18, v9, v5, v15);
  swift_beginAccess();
  sub_1B4B94();
  sub_1B4B64();
  return swift_endAccess();
}

uint64_t AggregateFlattener.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t dispatch thunk of AccessRequirementType.isSatisfied()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_441B4;

  return v9(a1, a2);
}

uint64_t sub_16A280(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_16A2DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 24) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_16A45C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 24) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 24) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

unint64_t sub_16A6A0(uint64_t a1)
{
  result = sub_16AB08();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_16A728(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 40) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 40) & ~v6);
      }

      v15 = *(a1 + 3);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_16A8AC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 40) & ~v9) + *(*(*(a4 + 24) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 40] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 3) = a2 - 1;
  }
}

unint64_t sub_16AB08()
{
  result = qword_22EA18;
  if (!qword_22EA18)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_22EA18);
  }

  return result;
}

uint64_t sub_16AB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_79E9C(a3, v27 - v11);
  v13 = sub_1B4C54();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_79E34(v12);
  }

  else
  {
    sub_1B4C44();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1B4BC4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1B4854() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_79E34(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_79E34(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_16AE2C()
{
  v0 = sub_1B4644();
  sub_5EA10(v0, qword_22EA20);
  sub_50E58(v0, qword_22EA20);
  return sub_1B4634();
}

uint64_t static Logger.historyServiceStress.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_228338 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4644();
  v3 = sub_50E58(v2, qword_22EA20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

Swift::Void __swiftcall BookHistoryServiceStressTest.fetchBookHistoryForStressTesting()()
{
  v1 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v7 - v3;
  v5 = sub_1B4C54();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  sub_16AB6C(0, 0, v4, &unk_1D0420, v6);
}

uint64_t sub_16B05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[426] = a4;
  v5 = sub_1B40C4();
  v4[427] = v5;
  v6 = *(v5 - 8);
  v4[428] = v6;
  v7 = *(v6 + 64) + 15;
  v4[429] = swift_task_alloc();
  v4[430] = swift_task_alloc();
  v4[431] = swift_task_alloc();

  return _swift_task_switch(sub_16B134, 0, 0);
}

uint64_t sub_16B134()
{
  if (qword_228338 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4644();
  v0[432] = sub_50E58(v1, qword_22EA20);
  v2 = sub_1B4624();
  v3 = sub_1B4DB4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Beginning to fetch book histories", v4, 2u);
  }

  v5 = v0[426];

  v6 = v5[10];
  v7 = v5[11];
  sub_2698(v5 + 7, v6);
  v8 = *(v7 + 16);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[433] = v10;
  *v10 = v0;
  v10[1] = sub_16B324;

  return (v12)(v0 + 2, v6, v7);
}

uint64_t sub_16B324()
{
  v2 = *(*v1 + 3464);
  v5 = *v1;
  *(*v1 + 3472) = v0;

  if (v0)
  {
    v3 = sub_16B860;
  }

  else
  {
    v3 = sub_16B438;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_16B438()
{
  v1 = v0[431];
  v2 = v0[426];
  memcpy(v0 + 142, v0 + 2, 0x460uLL);
  sub_1B40B4();
  v4 = v2[5];
  v3 = v2[6];
  sub_2698(v2 + 2, v4);
  v5 = sub_40228(&off_20E7A8);
  v0[435] = v5;
  memcpy(v0 + 282, v0 + 142, 0x460uLL);
  v6 = swift_task_alloc();
  v0[436] = v6;
  *v6 = v0;
  v6[1] = sub_16B540;

  return BookHistoryServiceType.fetchBookHistory(for:limit:configuration:)(v5, 0x7FFFFFFFFFFFFFFFLL, v0 + 282, v4, v3);
}

uint64_t sub_16B540()
{
  v2 = *v1;
  v3 = *(*v1 + 3488);
  v4 = *(*v1 + 3480);
  v5 = *v1;
  *(*v1 + 3496) = v0;

  if (v0)
  {
    v6 = sub_16B9FC;
  }

  else
  {

    sub_2B54(v2 + 1136);
    v6 = sub_16B698;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_16B698()
{
  v1 = v0[432];
  (*(v0[428] + 16))(v0[430], v0[431], v0[427]);
  v2 = sub_1B4624();
  v3 = sub_1B4DB4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[430];
  if (v4)
  {
    v6 = v0[429];
    v7 = v0[428];
    v8 = v0[427];
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    sub_1B40B4();
    sub_1B3FF4();
    v11 = v10;
    v12 = *(v7 + 8);
    v12(v6, v8);
    v12(v5, v8);
    *(v9 + 4) = v11;
    _os_log_impl(&dword_0, v2, v3, "Finished fetching book histories.  Total time=%f", v9, 0xCu);
  }

  else
  {
    v13 = v0[428];
    v14 = v0[427];

    v12 = *(v13 + 8);
    v12(v5, v14);
  }

  v12(v0[431], v0[427]);
  v15 = v0[431];
  v16 = v0[430];
  v17 = v0[429];

  v18 = v0[1];

  return v18();
}

uint64_t sub_16B860()
{
  v19 = v0;
  v1 = v0[434];
  v2 = v0[432];
  swift_errorRetain();
  v3 = sub_1B4624();
  v4 = sub_1B4D94();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = v0[422];
    v8 = v0[423];
    v9 = v0[424];
    v10 = sub_1B5794();
    v12 = sub_60FF4(v10, v11, &v18);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_0, v3, v4, "Error fetching book history: %s", v5, 0xCu);
    sub_2BF8(v6);
  }

  else
  {
  }

  v13 = v0[431];
  v14 = v0[430];
  v15 = v0[429];

  v16 = v0[1];

  return v16();
}

uint64_t sub_16B9FC()
{
  v19 = v0;
  (*(v0[428] + 8))(v0[431], v0[427]);
  sub_2B54((v0 + 142));
  v1 = v0[437];
  v2 = v0[432];
  swift_errorRetain();
  v3 = sub_1B4624();
  v4 = sub_1B4D94();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = v0[422];
    v8 = v0[423];
    v9 = v0[424];
    v10 = sub_1B5794();
    v12 = sub_60FF4(v10, v11, &v18);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_0, v3, v4, "Error fetching book history: %s", v5, 0xCu);
    sub_2BF8(v6);
  }

  else
  {
  }

  v13 = v0[431];
  v14 = v0[430];
  v15 = v0[429];

  v16 = v0[1];

  return v16();
}

uint64_t sub_16BBC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_7A038;

  return sub_16B05C(a1, v4, v5, v6);
}

uint64_t BookHistoryServiceStressTest.deinit()
{
  sub_2BF8((v0 + 16));
  sub_2BF8((v0 + 56));
  return v0;
}

uint64_t sub_16BC9C()
{
  v1 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = *v0;
  v6 = sub_1B4C54();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;

  sub_16AB6C(0, 0, v4, &unk_1D04B0, v7);
}

uint64_t sub_16BDF8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_16BE38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226C;

  return sub_16B05C(a1, v4, v5, v6);
}

uint64_t sub_16BEEC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_16BF24(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_7A038;

  return sub_797FC(a1, v5);
}

uint64_t sub_16BFDC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226C;

  return sub_797FC(a1, v5);
}

id FrameworkAssembly.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___BPAssembly_assemblies;
  sub_2B0C(&qword_22EAE8, &qword_1D04E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D04D0;
  v4 = type metadata accessor for Assembly();
  v5 = swift_allocObject();
  *(v3 + 56) = v4;
  *(v3 + 64) = sub_16C41C(&qword_22EAF0, type metadata accessor for Assembly);
  *(v3 + 32) = v5;
  v6 = type metadata accessor for AuthorRecommendationServiceAssembly();
  v7 = swift_allocObject();
  *(v3 + 96) = v6;
  *(v3 + 104) = sub_16C41C(&qword_22EAF8, type metadata accessor for AuthorRecommendationServiceAssembly);
  *(v3 + 72) = v7;
  v8 = type metadata accessor for CollectionServiceAssembly();
  v9 = swift_allocObject();
  *(v3 + 136) = v8;
  *(v3 + 144) = sub_16C41C(&qword_22EB00, type metadata accessor for CollectionServiceAssembly);
  *(v3 + 112) = v9;
  v10 = type metadata accessor for GenreRecommendationServiceAssembly();
  v11 = swift_allocObject();
  *(v3 + 176) = v10;
  *(v3 + 184) = sub_16C41C(&qword_22EB08, type metadata accessor for GenreRecommendationServiceAssembly);
  *(v3 + 152) = v11;
  v12 = type metadata accessor for MediaTypeRecommendationServiceAssembly();
  v13 = swift_allocObject();
  *(v3 + 216) = v12;
  *(v3 + 224) = sub_16C41C(&qword_22EB10, type metadata accessor for MediaTypeRecommendationServiceAssembly);
  *(v3 + 192) = v13;
  v14 = type metadata accessor for MediaTypesRecommendationServiceAssembly();
  v15 = swift_allocObject();
  *(v3 + 256) = v14;
  *(v3 + 264) = sub_16C41C(&qword_22EB18, type metadata accessor for MediaTypesRecommendationServiceAssembly);
  *(v3 + 232) = v15;
  v16 = type metadata accessor for ScorerAssembly();
  v17 = swift_allocObject();
  *(v3 + 296) = v16;
  *(v3 + 304) = sub_16C41C(&qword_22EB20, type metadata accessor for ScorerAssembly);
  *(v3 + 272) = v17;
  v18 = type metadata accessor for WorkServiceAssembly();
  v19 = swift_allocObject();
  *(v3 + 336) = v18;
  *(v3 + 344) = sub_16C41C(&qword_22EB28, type metadata accessor for WorkServiceAssembly);
  *(v3 + 312) = v19;
  *&v0[v2] = v3;
  v21.receiver = v0;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, "init");
}

uint64_t sub_16C41C(unint64_t *a1, void (*a2)(uint64_t))
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

BooksPersonalization::SeedBasedRecommendationSource_optional __swiftcall SeedBasedRecommendationSource.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_213E40;
  v8._object = object;
  v5 = sub_1B52E4(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v3 = v7;
  return result;
}

unint64_t sub_16C544()
{
  result = qword_22EB58;
  if (!qword_22EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22EB58);
  }

  return result;
}

uint64_t sub_16C598@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_213E40;
  v8._object = v3;
  v5 = sub_1B52E4(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

unint64_t sub_16C5FC()
{
  result = qword_22EB60;
  if (!qword_22EB60)
  {
    sub_1CC1C(&qword_22EB68, &qword_1D05E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22EB60);
  }

  return result;
}

unint64_t sub_16C674()
{
  result = qword_22EB70;
  if (!qword_22EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22EB70);
  }

  return result;
}

uint64_t sub_16C6D8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16) && (v6 = sub_3B0C8(v4), (v7 & 1) != 0))
  {
    sub_404C4(*(v5 + 56) + 40 * v6, v10);
    sub_264B8(v10, a2);
    return swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_16C7C4();
    swift_allocError();
    *v9 = v4;
    return swift_willThrow();
  }
}

unint64_t sub_16C7C4()
{
  result = qword_22EC18;
  if (!qword_22EC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22EC18);
  }

  return result;
}

Swift::Int sub_16C828(void **a1)
{
  v2 = *(sub_2B0C(&qword_2293C8, &qword_1D07B0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_56B1C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_16CE50(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_16C8DC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_2B0C(&qword_2293C8, &qword_1D07B0);
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_16C9A8, 0, 0);
}

uint64_t sub_16C9A8()
{
  v35 = v0;
  v1 = v0[8];
  v2 = *(v1 + 64);
  v34 = _swiftEmptyArrayStorage;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & v2;
  v6 = (63 - v4) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = *(*(v1 + 56) + ((v9 << 9) | (8 * v10)));

      result = sub_5EF0C(v12);
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  v13 = v0[8];
  v14 = v0[9];

  v15 = v34;
  v16 = v14[5];
  v17 = v14[6];
  sub_2698(v14 + 2, v16);
  v18 = *(v17 + 8);
  v19 = sub_42B50();
  v20 = v18(sub_16CD28, 0, v34, &type metadata for Book.MediaType, v19, v16, v17);
  v21 = *(v20 + 16);
  if (!v21)
  {

    v23 = _swiftEmptyArrayStorage;
    goto LABEL_15;
  }

  v22 = v0[11];
  v23 = sub_350D4(v21, 0);
  v24 = sub_3EC90(&v34, v23 + ((*(v22 + 80) + 32) & ~*(v22 + 80)), v21, v20);

  result = sub_417B8();
  if (v24 != v21)
  {
LABEL_22:
    __break(1u);
    return result;
  }

LABEL_15:
  v34 = v23;
  sub_16C828(&v34);
  v25 = v34[2];
  if (v25)
  {
    v26 = v0[12];
    v27 = v0[10];
    sub_16E298(v34 + ((*(v0[11] + 80) + 32) & ~*(v0[11] + 80)) + *(v0[11] + 72) * (v25 - 1), v26);

    v28 = *v26;
    sub_EBB90(&v26[*(v27 + 48)]);
    sub_2B0C(&qword_22ECC0, &qword_1D07B8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BCA80;
    *(inited + 32) = v28;
    v30 = sub_40D04(v15);

    *(inited + 40) = v30;
    v31 = sub_12D970(inited);
    swift_setDeallocating();
    sub_42F48(inited + 32, &qword_22ECC8, &unk_1D07C0);
  }

  else
  {

    v31 = sub_12D970(_swiftEmptyArrayStorage);
  }

  v32 = v0[12];

  v33 = v0[1];

  return v33(v31);
}

Swift::Int sub_16CD28(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_2B0C(&qword_2293B8, &qword_1BC458);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BCA80;
  *(inited + 32) = v1;
  v3 = sub_9EABC(inited);
  swift_setDeallocating();
  return v3;
}

uint64_t sub_16CDB8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_91B58;

  return sub_16C8DC(a1);
}

Swift::Int sub_16CE50(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B5584(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_2B0C(&qword_2293C8, &qword_1D07B0);
        v6 = sub_1B4B34();
        v6[2] = v5;
      }

      v7 = *(sub_2B0C(&qword_2293C8, &qword_1D07B0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_16D24C(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_16CF94(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_16CF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_2B0C(&qword_2293C8, &qword_1D07B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v47 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v48 = &v38 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v38 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v38 - v18;
  result = __chkstk_darwin(v17);
  v23 = &v38 - v22;
  v40 = a2;
  if (a3 != a2)
  {
    v24 = *a4;
    v25 = *(v21 + 72);
    v26 = *a4 + v25 * (a3 - 1);
    v45 = -v25;
    v46 = v24;
    v27 = a1 - a3;
    v39 = v25;
    v28 = v24 + v25 * a3;
LABEL_5:
    v43 = v26;
    v44 = a3;
    v41 = v28;
    v42 = v27;
    v29 = v27;
    v30 = v26;
    while (1)
    {
      sub_16E298(v28, v23);
      sub_16E298(v30, v19);
      sub_16E298(v23, v16);
      v31 = *(v8 + 48);
      v32 = *&v16[v31];
      sub_EBB90(&v16[v31]);
      v33 = v48;
      sub_16E298(v19, v48);
      v34 = *(v8 + 48);
      v35 = *(v33 + v34);
      sub_EBB90(v33 + v34);
      sub_42F48(v19, &qword_2293C8, &qword_1D07B0);
      result = sub_42F48(v23, &qword_2293C8, &qword_1D07B0);
      if (v32 >= v35)
      {
LABEL_4:
        a3 = v44 + 1;
        v26 = v43 + v39;
        v27 = v42 - 1;
        v28 = v41 + v39;
        if (v44 + 1 == v40)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v46)
      {
        break;
      }

      v36 = v47;
      sub_42C64(v28, v47);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_42C64(v36, v30);
      v30 += v45;
      v28 += v45;
      if (__CFADD__(v29++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_16D24C(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v114 = a4;
  v115 = a1;
  v6 = sub_2B0C(&qword_2293C8, &qword_1D07B0);
  v122 = *(v6 - 8);
  v7 = *(v122 + 64);
  v8 = __chkstk_darwin(v6);
  v118 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v127 = &v112 - v11;
  v12 = __chkstk_darwin(v10);
  v129 = &v112 - v13;
  v14 = __chkstk_darwin(v12);
  v128 = &v112 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v112 - v17;
  result = __chkstk_darwin(v16);
  v21 = &v112 - v20;
  v124 = a3;
  v22 = *(a3 + 8);
  if (v22 < 1)
  {
    v24 = _swiftEmptyArrayStorage;
LABEL_99:
    a3 = *v115;
    if (!*v115)
    {
      goto LABEL_138;
    }

    v4 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v125;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v4;
    }

    else
    {
LABEL_132:
      result = sub_52E40(v4);
    }

    v131 = result;
    v4 = *(result + 16);
    if (v4 >= 2)
    {
      while (*v124)
      {
        v108 = *(result + 16 * v4);
        v109 = result;
        v110 = *(result + 16 * (v4 - 1) + 40);
        sub_16DC10(*v124 + *(v122 + 72) * v108, *v124 + *(v122 + 72) * *(result + 16 * (v4 - 1) + 32), *v124 + *(v122 + 72) * v110, a3);
        if (v23)
        {
        }

        if (v110 < v108)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = sub_52E40(v109);
        }

        if (v4 - 2 >= *(v109 + 2))
        {
          goto LABEL_126;
        }

        v111 = &v109[16 * v4];
        *v111 = v108;
        *(v111 + 1) = v110;
        v131 = v109;
        sub_52DB4(v4 - 1);
        result = v131;
        v4 = *(v131 + 16);
        if (v4 <= 1)
        {
        }
      }

      goto LABEL_136;
    }
  }

  v23 = 0;
  v24 = _swiftEmptyArrayStorage;
  v130 = v6;
  while (1)
  {
    v25 = v23;
    v119 = v24;
    if (v23 + 1 >= v22)
    {
      v41 = (v23 + 1);
      v42 = v114;
    }

    else
    {
      v126 = v22;
      v26 = *v124;
      v27 = *(v122 + 72);
      a3 = *v124 + v27 * (v23 + 1);
      sub_16E298(a3, v21);
      sub_16E298(v26 + v27 * v23, v18);
      v28 = v128;
      sub_16E298(v21, v128);
      v29 = *(v6 + 48);
      v30 = *(v28 + v29);
      sub_EBB90(v28 + v29);
      v31 = v129;
      sub_16E298(v18, v129);
      v32 = *(v6 + 48);
      v33 = *(v31 + v32);
      sub_EBB90(v31 + v32);
      sub_42F48(v18, &qword_2293C8, &qword_1D07B0);
      result = sub_42F48(v21, &qword_2293C8, &qword_1D07B0);
      v113 = v23;
      v4 = v23 + 2;
      v123 = v27;
      v34 = v26 + v27 * (v23 + 2);
      while (v126 != v4)
      {
        sub_16E298(v34, v21);
        sub_16E298(a3, v18);
        v35 = v128;
        sub_16E298(v21, v128);
        v36 = *(v6 + 48);
        v37 = *(v35 + v36);
        sub_EBB90(v35 + v36);
        v38 = v129;
        sub_16E298(v18, v129);
        v39 = *(v6 + 48);
        v40 = *(v38 + v39);
        sub_EBB90(v38 + v39);
        v23 = &qword_1D07B0;
        sub_42F48(v18, &qword_2293C8, &qword_1D07B0);
        result = sub_42F48(v21, &qword_2293C8, &qword_1D07B0);
        ++v4;
        v34 += v123;
        a3 += v123;
        if (v30 < v33 == v37 >= v40)
        {
          v41 = (v4 - 1);
          goto LABEL_11;
        }
      }

      v41 = v126;
LABEL_11:
      v42 = v114;
      v25 = v113;
      if (v30 < v33)
      {
        if (v41 < v113)
        {
          goto LABEL_129;
        }

        if (v113 < v41)
        {
          v4 = v123 * (v41 - 1);
          v43 = v41 * v123;
          v126 = v41;
          v23 = v41;
          v44 = v113;
          a3 = v113 * v123;
          do
          {
            v23 = (v23 - 1);
            if (v44 != v23)
            {
              v45 = *v124;
              if (!*v124)
              {
                goto LABEL_135;
              }

              sub_42C64(v45 + a3, v118);
              if (a3 < v4 || v45 + a3 >= v45 + v43)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a3 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_42C64(v118, v45 + v4);
            }

            v44 = (v44 + 1);
            v4 -= v123;
            v43 -= v123;
            a3 += v123;
          }

          while (v44 < v23);
          v42 = v114;
          v6 = v130;
          v25 = v113;
          v41 = v126;
        }
      }
    }

    v46 = v124[1];
    if (v41 < v46)
    {
      if (__OFSUB__(v41, v25))
      {
        goto LABEL_128;
      }

      if (v41 - v25 < v42)
      {
        if (__OFADD__(v25, v42))
        {
          goto LABEL_130;
        }

        if (v25 + v42 >= v46)
        {
          v23 = v124[1];
        }

        else
        {
          v23 = (v25 + v42);
        }

        if (v23 < v25)
        {
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (v41 != v23)
        {
          break;
        }
      }
    }

    v23 = v41;
    if (v41 < v25)
    {
      goto LABEL_127;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v24 = v119;
    }

    else
    {
      result = sub_32F04(0, *(v119 + 2) + 1, 1, v119);
      v24 = result;
    }

    v4 = *(v24 + 2);
    v47 = *(v24 + 3);
    a3 = v4 + 1;
    if (v4 >= v47 >> 1)
    {
      result = sub_32F04((v47 > 1), v4 + 1, 1, v24);
      v24 = result;
    }

    *(v24 + 2) = a3;
    v48 = &v24[16 * v4];
    *(v48 + 4) = v25;
    *(v48 + 5) = v23;
    if (!*v115)
    {
      goto LABEL_137;
    }

    if (v4)
    {
      v49 = *v115;
      while (1)
      {
        v50 = a3 - 1;
        if (a3 >= 4)
        {
          break;
        }

        if (a3 == 3)
        {
          v51 = *(v24 + 4);
          v52 = *(v24 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_55:
          if (v54)
          {
            goto LABEL_116;
          }

          v67 = &v24[16 * a3];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_119;
          }

          v73 = &v24[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_122;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_123;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = a3 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v77 = &v24[16 * a3];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_69:
        if (v72)
        {
          goto LABEL_118;
        }

        v80 = &v24[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_121;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_76:
        v4 = v50 - 1;
        if (v50 - 1 >= a3)
        {
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
          goto LABEL_131;
        }

        if (!*v124)
        {
          goto LABEL_134;
        }

        v88 = v24;
        a3 = *&v24[16 * v4 + 32];
        v89 = *&v24[16 * v50 + 40];
        v90 = v125;
        sub_16DC10(*v124 + *(v122 + 72) * a3, *v124 + *(v122 + 72) * *&v24[16 * v50 + 32], *v124 + *(v122 + 72) * v89, v49);
        v125 = v90;
        if (v90)
        {
        }

        if (v89 < a3)
        {
          goto LABEL_112;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v91 = v88;
        }

        else
        {
          v91 = sub_52E40(v88);
        }

        v6 = v130;
        if (v4 >= *(v91 + 2))
        {
          goto LABEL_113;
        }

        v92 = &v91[16 * v4];
        *(v92 + 4) = a3;
        *(v92 + 5) = v89;
        v131 = v91;
        v4 = &v131;
        result = sub_52DB4(v50);
        v24 = v131;
        a3 = *(v131 + 16);
        if (a3 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v24[16 * a3 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_114;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_115;
      }

      v62 = &v24[16 * a3];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_117;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_120;
      }

      if (v66 >= v58)
      {
        v84 = &v24[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_124;
        }

        if (v53 < v87)
        {
          v50 = a3 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v22 = v124[1];
    if (v23 >= v22)
    {
      goto LABEL_99;
    }
  }

  v4 = *v124;
  v93 = *(v122 + 72);
  v94 = *v124 + v93 * (v41 - 1);
  v95 = -v93;
  v113 = v25;
  v96 = v25 - v41;
  v116 = v93;
  v117 = v23;
  a3 = v4 + v41 * v93;
LABEL_88:
  v126 = v41;
  v120 = a3;
  v121 = v96;
  v123 = v94;
  v97 = v94;
  v98 = v130;
  while (1)
  {
    sub_16E298(a3, v21);
    sub_16E298(v97, v18);
    v99 = v128;
    sub_16E298(v21, v128);
    v100 = *(v98 + 48);
    v101 = *(v99 + v100);
    sub_EBB90(v99 + v100);
    v102 = v129;
    sub_16E298(v18, v129);
    v103 = *(v98 + 48);
    v104 = *(v102 + v103);
    sub_EBB90(v102 + v103);
    sub_42F48(v18, &qword_2293C8, &qword_1D07B0);
    result = sub_42F48(v21, &qword_2293C8, &qword_1D07B0);
    if (v101 >= v104)
    {
LABEL_87:
      v41 = (v126 + 1);
      v23 = v117;
      v94 = v123 + v116;
      v96 = v121 - 1;
      a3 = v120 + v116;
      if ((v126 + 1) != v117)
      {
        goto LABEL_88;
      }

      v6 = v130;
      v25 = v113;
      if (v117 < v113)
      {
        goto LABEL_127;
      }

      goto LABEL_35;
    }

    if (!v4)
    {
      break;
    }

    v105 = v127;
    sub_42C64(a3, v127);
    v98 = v130;
    swift_arrayInitWithTakeFrontToBack();
    sub_42C64(v105, v97);
    v97 += v95;
    a3 += v95;
    if (__CFADD__(v96++, 1))
    {
      goto LABEL_87;
    }
  }

  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
  return result;
}

uint64_t sub_16DC10(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v59 = a3;
  v58 = sub_2B0C(&qword_2293C8, &qword_1D07B0);
  v7 = *(*(v58 - 8) + 64);
  v8 = __chkstk_darwin(v58);
  v57 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v49 - v11;
  v13 = __chkstk_darwin(v10);
  v56 = &v49 - v14;
  result = __chkstk_darwin(v13);
  v55 = &v49 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_59;
  }

  v19 = v59 - a2;
  if (v59 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_60;
  }

  v20 = (a2 - a1) / v18;
  v62 = a1;
  v61 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v32 = a4 + v22;
    if (v22 >= 1)
    {
      v33 = -v18;
      v34 = a4 + v22;
      v52 = a1;
      v53 = a4;
      v51 = v33;
      do
      {
        v49 = v32;
        v35 = a2 + v33;
        v54 = a2;
        while (1)
        {
          v37 = v59;
          if (a2 <= a1)
          {
            v62 = a2;
            v60 = v49;
            goto LABEL_57;
          }

          v50 = v32;
          v59 += v33;
          v38 = v34 + v33;
          v39 = v55;
          sub_16E298(v38, v55);
          v40 = v35;
          v41 = v56;
          sub_16E298(v35, v56);
          sub_16E298(v39, v12);
          v42 = v58;
          v43 = *(v58 + 48);
          v44 = *&v12[v43];
          v45 = v12;
          sub_EBB90(&v12[v43]);
          v46 = v57;
          sub_16E298(v41, v57);
          v47 = *(v42 + 48);
          v48 = *(v46 + v47);
          sub_EBB90(v46 + v47);
          sub_42F48(v41, &qword_2293C8, &qword_1D07B0);
          sub_42F48(v39, &qword_2293C8, &qword_1D07B0);
          if (v44 < v48)
          {
            break;
          }

          v32 = v38;
          if (v37 < v34 || v59 >= v34)
          {
            swift_arrayInitWithTakeFrontToBack();
            v12 = v45;
            v35 = v40;
            a1 = v52;
          }

          else
          {
            v12 = v45;
            v35 = v40;
            a1 = v52;
            if (v37 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v34 = v38;
          a2 = v54;
          v36 = v38 > v53;
          v33 = v51;
          if (!v36)
          {
            goto LABEL_55;
          }
        }

        if (v37 < v54 || v59 >= v54)
        {
          a2 = v40;
          swift_arrayInitWithTakeFrontToBack();
          v12 = v45;
          v33 = v51;
          a1 = v52;
          v32 = v50;
        }

        else
        {
          v12 = v45;
          a2 = v40;
          v33 = v51;
          a1 = v52;
          v32 = v50;
          if (v37 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v34 > v53);
    }

LABEL_55:
    v62 = a2;
    v60 = v32;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v54 = a4 + v21;
    v60 = a4 + v21;
    if (v21 >= 1 && a2 < v59)
    {
      do
      {
        v24 = v55;
        sub_16E298(a2, v55);
        v25 = v56;
        sub_16E298(a4, v56);
        sub_16E298(v24, v12);
        v26 = v58;
        v27 = *(v58 + 48);
        v28 = *&v12[v27];
        sub_EBB90(&v12[v27]);
        v29 = v57;
        sub_16E298(v25, v57);
        v30 = *(v26 + 48);
        v31 = *(v29 + v30);
        sub_EBB90(v29 + v30);
        sub_42F48(v25, &qword_2293C8, &qword_1D07B0);
        sub_42F48(v24, &qword_2293C8, &qword_1D07B0);
        if (v28 >= v31)
        {
          if (a1 < a4 || a1 >= a4 + v18)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v61 = a4 + v18;
          a4 += v18;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v18)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v18;
        }

        a1 += v18;
        v62 = a1;
      }

      while (a4 < v54 && a2 < v59);
    }
  }

LABEL_57:
  sub_16E1A8(&v62, &v61, &v60);
  return 1;
}

uint64_t sub_16E1A8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_2B0C(&qword_2293C8, &qword_1D07B0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_16E298(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_2293C8, &qword_1D07B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of BooksBySuggestedAuthorsServiceType.fetchBooks(with:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_441B4;

  return v13(a1, a2, a3, a4);
}

uint64_t StoreBookRating.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StoreBookRating() + 24);

  return sub_16E4D8(v3, a1);
}

uint64_t type metadata accessor for StoreBookRating()
{
  result = qword_22ED30;
  if (!qword_22ED30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_16E4D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t StoreBookRating.init(storeID:rating:timestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  v6 = a5 + *(type metadata accessor for StoreBookRating() + 24);

  return sub_E50D4(a4, v6);
}

void StoreBookRating.hash(into:)()
{
  v1 = sub_1B40C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  sub_1B5834(*v0);
  if (*(v0 + 16) == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    v10 = *(v0 + 8);
    sub_1B5814(1u);
    if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    sub_1B5834(v11);
  }

  v12 = type metadata accessor for StoreBookRating();
  sub_16E4D8(v0 + *(v12 + 24), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_1B5814(1u);
    sub_16F328(&qword_229268, &type metadata accessor for Date);
    sub_1B4754();
    (*(v2 + 8))(v5, v1);
  }
}

Swift::Int StoreBookRating.hashValue.getter()
{
  v1 = sub_1B40C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  sub_1B57F4();
  sub_1B5834(*v0);
  if (*(v0 + 16) == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    v10 = *(v0 + 8);
    sub_1B5814(1u);
    if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    sub_1B5834(v11);
  }

  v12 = type metadata accessor for StoreBookRating();
  sub_16E4D8(v0 + *(v12 + 24), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_1B5814(1u);
    sub_16F328(&qword_229268, &type metadata accessor for Date);
    sub_1B4754();
    (*(v2 + 8))(v5, v1);
  }

  return sub_1B5844();
}

Swift::Int sub_16E9E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B40C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v16 - v11;
  sub_1B57F4();
  sub_1B5834(*v2);
  if (*(v2 + 16) == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    v13 = *(v2 + 8);
    sub_1B5814(1u);
    if ((v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    sub_1B5834(v14);
  }

  sub_16E4D8(v2 + *(a2 + 24), v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1B5814(1u);
    sub_16F328(&qword_229268, &type metadata accessor for Date);
    sub_1B4754();
    (*(v5 + 8))(v8, v4);
  }

  return sub_1B5844();
}

BOOL _s20BooksPersonalization15StoreBookRatingV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B40C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v26 - v11;
  v13 = sub_2B0C(&qword_22DD90, &qword_1CE238);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v26 - v16;
  if (*a1 != *a2)
  {
    return 0;
  }

  v18 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  v19 = v15;
  v20 = *(type metadata accessor for StoreBookRating() + 24);
  v21 = *(v19 + 48);
  sub_16E4D8(a1 + v20, v17);
  sub_16E4D8(a2 + v20, &v17[v21]);
  v22 = *(v5 + 48);
  if (v22(v17, 1, v4) != 1)
  {
    sub_16E4D8(v17, v12);
    if (v22(&v17[v21], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v21], v4);
      sub_16F328(&qword_229270, &type metadata accessor for Date);
      v24 = sub_1B4784();
      v25 = *(v5 + 8);
      v25(v8, v4);
      v25(v12, v4);
      sub_42F48(v17, &qword_229528, &qword_1BC5A0);
      return (v24 & 1) != 0;
    }

    (*(v5 + 8))(v12, v4);
LABEL_13:
    sub_42F48(v17, &qword_22DD90, &qword_1CE238);
    return 0;
  }

  if (v22(&v17[v21], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_42F48(v17, &qword_229528, &qword_1BC5A0);
  return 1;
}

uint64_t sub_16EFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_16F03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_16F0C4()
{
  sub_16F158();
  if (v0 <= 0x3F)
  {
    sub_16F1A8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_16F158()
{
  if (!qword_22DC60)
  {
    v0 = sub_1B4EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_22DC60);
    }
  }
}

void sub_16F1A8()
{
  if (!qword_22DD40)
  {
    sub_1B40C4();
    v0 = sub_1B4EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_22DD40);
    }
  }
}

uint64_t dispatch thunk of StoreBookRatingsServiceType.fetchStoreRatings(storeIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_441B4;

  return v11(a1, a2, a3);
}

uint64_t sub_16F328(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_16F370(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v24 = *(a1 + 16);
  sub_3741C(0, v1, 0);
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = sub_1B4F84();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 56) + 384 * result);
    v12 = *(a1 + 36);
    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_3741C((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    _swiftEmptyArrayStorage[v14 + 4] = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v3 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_E56C8(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_E56C8(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_16F5A0(void *__src, uint64_t a2)
{
  v3[376] = v2;
  v3[375] = a2;
  v3[374] = __src;
  memcpy(v3 + 2, __src, 0x460uLL);

  return _swift_task_switch(sub_16F620, 0, 0);
}

uint64_t sub_16F620()
{
  v1 = *(v0 + 3008);
  memcpy((v0 + 2256), (*(v0 + 2992) + 88), 0x16BuLL);
  v3 = v1[5];
  v2 = v1[6];
  sub_2698(v1 + 2, v3);
  if (qword_228360 != -1)
  {
    swift_once();
  }

  v4 = qword_22F7B8;
  memcpy((v0 + 1136), *(v0 + 2992), 0x460uLL);
  v5 = swift_task_alloc();
  *(v0 + 3016) = v5;
  *v5 = v0;
  v5[1] = sub_16F744;
  v6 = *(v0 + 3000);

  return BookHistoryServiceType.fetchBookHistory(for:limit:configuration:)(v4, v6, (v0 + 1136), v3, v2);
}

uint64_t sub_16F744(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 3016);
  v7 = *v2;
  *(v3 + 3024) = a1;
  *(v3 + 3032) = v1;

  if (v1)
  {
    v5 = sub_16FBDC;
  }

  else
  {
    v5 = sub_16F85C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_16F85C()
{
  v1 = v0[379];
  v2 = v0[378];
  v3 = v0[376];
  v4 = v3[10];
  v5 = v3[11];
  sub_2698(v3 + 7, v4);

  v7 = sub_16F370(v6);
  v0[380] = v7;

  v8 = *(v5 + 16);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[381] = v10;
  *v10 = v0;
  v10[1] = sub_16F9B8;

  return v12(v7, v4, v5);
}

uint64_t sub_16F9B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 3048);
  v6 = *v2;
  *(*v2 + 3056) = v1;

  if (v1)
  {
    v7 = v4[380];
    v8 = v4[378];

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    v11 = v4[380];

    v4[383] = a1;

    return _swift_task_switch(sub_16FB24, 0, 0);
  }
}

uint64_t sub_16FB24()
{
  v1 = v0[383];
  v2 = v0[382];
  v3 = v0[378];

  sub_71E28((v0 + 13), (v0 + 328));
  v4 = sub_1705AC(v3, v1, v0 + 282);
  sub_72470((v0 + 13));
  swift_bridgeObjectRelease_n();

  v5 = v0[1];

  return v5(v4);
}

void *sub_16FBF4@<X0>(void *__src@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, void *a4@<X8>)
{
  memcpy(v65, __src, 0x179uLL);
  if (!*(a2 + 16))
  {
    goto LABEL_8;
  }

  v9 = v65[0];
  v10 = sub_43124(v65[0]);
  if ((v11 & 1) == 0)
  {
    goto LABEL_8;
  }

  v12 = *(a2 + 56) + 88 * v10;
  v13 = *(v12 + 16);
  v57 = *v12;
  v58 = v13;
  v15 = *(v12 + 48);
  v14 = *(v12 + 64);
  v16 = *(v12 + 80);
  v59 = *(v12 + 32);
  v62 = v16;
  v61 = v14;
  v60 = v15;
  sub_5EDD8(&v57, v64);
  if (qword_228360 != -1)
  {
    swift_once();
  }

  memcpy(v64, v65, 0x179uLL);
  BookHistory.pruned(to:)(qword_22F7B8, v63);
  if (sub_42D84(v63) == 1 || (memcpy(v64, v63, 0x179uLL), memcpy(v32, a3, 0x16BuLL), BookHistory.internalAffinitySource(with:)(v32, &v52), v18 = v55, v55 >> 1 == 0xFFFFFFFF))
  {
    sub_85554(&v57);
LABEL_8:
    sub_61554(v64);
    v19 = v64;
    return memcpy(a4, v19, 0x231uLL);
  }

  v66 = &v31;
  __chkstk_darwin(v17);
  sub_2B0C(&qword_22D2E0, &qword_1CB140);
  sub_12EAB4();
  v21 = sub_1B4AE4();
  memcpy(v51, __src, 0x179uLL);
  AuthorRecommendationSource.id.getter(v51);
  v47 = v59;
  v48 = v60;
  v49 = v61;
  v50 = v62;
  v45 = v57;
  v46 = v58;
  memcpy(v44, v51, sizeof(v44));
  v39 = v52;
  v40 = v53;
  v41 = v54;
  v43 = v56;
  v42 = v18;
  sub_12700C(&v38);
  if (v4)
  {
    sub_5EDD8(&v57, v64);

    v22 = 12;
  }

  else
  {
    v22 = v38;
    sub_5EDD8(&v57, v64);
  }

  *&v64[40] = v47;
  *&v64[56] = v48;
  *&v64[72] = v49;
  *v64 = v9;
  *&v64[88] = v50;
  *&v64[8] = v45;
  *&v64[24] = v46;
  *&v64[128] = v54;
  *&v64[112] = v53;
  *&v64[96] = v52;
  *&v64[144] = v18;
  *&v64[152] = v56;
  result = memcpy(&v64[168], v44, 0x179uLL);
  *&v64[552] = v21;
  v64[560] = v22;
  v35 = v54;
  v36 = *&v64[144];
  v37 = *(&v56 + 1);
  v33 = v52;
  v34 = v53;
  if (v18 >> 1 != 0xFFFFFFFF)
  {
    v23 = v36 >> 62;
    sub_85554(&v57);
    v24 = v33;
    v25 = v34;
    if (v23 > 1)
    {
      if (v23 != 2)
      {
        v26 = v33;
LABEL_20:
        sub_42CD4(&v33, v32);
        v28 = Array<A>.affinity.getter(v26);
        v30 = v29;

        if ((v30 & 1) != 0 || (v28 & 0x7FFFFFFFFFFFFFFFLL) == 0)
        {
          sub_2601C(v64);
          sub_61554(v32);
        }

        else
        {
          memcpy(v32, v64, 0x231uLL);
          AuthorRecommendationSource.id.getter(v32);
        }

        v19 = v32;
        return memcpy(a4, v19, 0x231uLL);
      }

      v66 = *(&v35 + 1);
      v31 = v35;
    }

    else
    {
      v66 = *(&v35 + 1);
      v31 = v35;
    }

    sub_2B0C(&qword_229488, &qword_1BC520);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1BCA80;
    *(v26 + 32) = v24;
    *(v26 + 48) = v25;
    v27 = v66;
    *(v26 + 64) = v31;
    *(v26 + 72) = v27;
    *(v26 + 80) = v18 & 1;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

void *BookHistory.seedBook(using:metadata:configuration:)@<X0>(void *__src@<X2>, uint64_t a2@<X0>, __int128 *a3@<X1>, void *a4@<X8>)
{
  v7 = a3[3];
  v39 = a3[2];
  v40 = v7;
  v41 = a3[4];
  v42 = *(a3 + 10);
  v8 = a3[1];
  v37 = *a3;
  v38 = v8;
  memcpy(v36, __src, sizeof(v36));
  memcpy(v35, v4, 0x179uLL);
  memcpy(v34, v4, 0x179uLL);
  BookHistory.pruned(to:)(a2, v43);
  if (sub_42D84(v43) == 1 || (memcpy(v34, v43, 0x179uLL), memcpy(v28, v36, 0x16BuLL), BookHistory.internalAffinitySource(with:)(v28, &v29), v10 = v32, v32 >> 1 == 0xFFFFFFFF))
  {
    sub_61554(v34);
  }

  else
  {
    __chkstk_darwin(v9);
    sub_2B0C(&qword_22D2E0, &qword_1CB140);
    sub_12EAB4();
    v14 = sub_1B4AE4();
    v11 = v35[0];
    memcpy(v28, v4, 0x179uLL);
    AuthorRecommendationSource.id.getter(v28);
    v24 = v39;
    v25 = v40;
    v26 = v41;
    v27 = v42;
    v22 = v37;
    v23 = v38;
    memcpy(v21, v28, sizeof(v21));
    v16 = v29;
    v17 = v30;
    v18 = v31;
    v20 = v33;
    v19 = v10;
    sub_12700C(&v15);
    v12 = v15;
    sub_5EDD8(&v37, v34);
    *&v34[96] = v29;
    *&v34[112] = v30;
    *&v34[128] = v31;
    *&v34[152] = v33;
    *&v34[40] = v24;
    *&v34[56] = v25;
    *&v34[72] = v26;
    *&v34[8] = v22;
    *v34 = v11;
    *&v34[88] = v27;
    *&v34[24] = v23;
    *&v34[144] = v10;
    memcpy(&v34[168], v21, 0x179uLL);
    *&v34[552] = v14;
    v34[560] = v12;
    AuthorRecommendationSource.id.getter(v34);
  }

  return memcpy(a4, v34, 0x231uLL);
}

uint64_t sub_170398(void *a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_91B58;

  return sub_16F5A0(a1, a2);
}

uint64_t dispatch thunk of SeedBookServiceType.fetchSeedBooks(with:limit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_441B4;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1705AC(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = _swiftEmptyDictionarySingleton;
  v7 = a1 + 64;
  v6 = *(a1 + 64);
  v36 = _swiftEmptyDictionarySingleton;
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_11:
  while (1)
  {
    v15 = __clz(__rbit64(v10)) | (v13 << 6);
    v16 = *(*(a1 + 48) + 8 * v15);
    memcpy(v35, (*(a1 + 56) + 384 * v15), 0x179uLL);
    v34 = v16;
    sub_16FBF4(v35, a2, a3, __src);
    if (v3)
    {
      break;
    }

    v10 &= v10 - 1;
    memcpy(v32, __src, 0x231uLL);
    if (sub_6153C(v32) == 1)
    {
      memcpy(__dst, __src, 0x231uLL);
      result = sub_170834(__dst);
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    else
    {
      memcpy(v30, __src, sizeof(v30));
      v17 = v5[2];
      if (v5[3] <= v17)
      {
        sub_17D114(v17 + 1, 1);
        v5 = v36;
      }

      v18 = v5[5];
      result = sub_1B57E4();
      v19 = v5 + 8;
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~v5[(v21 >> 6) + 8]) == 0)
      {
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
          v27 = v19[v22];
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_25;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~v5[(v21 >> 6) + 8])) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(v5[6] + 8 * v23) = v16;
      result = memcpy((v5[7] + 568 * v23), v30, 0x231uLL);
      ++v5[2];
      if (!v10)
      {
LABEL_7:
        while (1)
        {
          v14 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v14 >= v11)
          {
            goto LABEL_28;
          }

          v10 = *(v7 + 8 * v14);
          ++v13;
          if (v10)
          {
            v13 = v14;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_30;
      }
    }
  }

LABEL_28:

  return v5;
}

uint64_t sub_170834(uint64_t a1)
{
  v2 = sub_2B0C(&qword_229890, &qword_1BCCE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_17089C@<X0>(char *a1@<X0>, char **a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *a1;
  memcpy(__dst, v4, sizeof(__dst));
  v10 = v6;
  memcpy(v8, v5, 0x16BuLL);
  result = BookHistory.affinityInfos(for:with:)(&v10, v8);
  *a2 = result;
  return result;
}

uint64_t sub_170998()
{
  v0 = sub_2B0C(&qword_22C1F8, &qword_1CFD60);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  sub_170BA0(&v7 - v2);
  v4 = sub_1B3F34();
  v5 = *(v4 - 8);
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1B3EC4();
    return (*(v5 + 8))(v3, v4);
  }

  return result;
}

uint64_t Package.id.getter()
{
  v1 = (v0 + *(type metadata accessor for Package() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Package.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Package() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_170B8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 20));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_170BA0@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() defaultManager];
  v10 = 0;
  v3 = [v2 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:1 error:&v10];

  v4 = v10;
  if (v3)
  {
    sub_1B3EE4();
    v5 = v4;

    v6 = 0;
  }

  else
  {
    v7 = v10;
    sub_1B3E64();

    swift_willThrow();

    v6 = 1;
  }

  v8 = sub_1B3F34();
  return (*(*(v8 - 8) + 56))(a1, v6, 1, v8);
}

uint64_t type metadata accessor for Package()
{
  result = qword_22EED8;
  if (!qword_22EED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PackageService.fetchPackages(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_170D50, 0, 0);
}

uint64_t sub_170D50()
{
  v1 = sub_2B0C(&qword_22EE68, &qword_1D09B0);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v3 = sub_2B0C(&qword_22EE70, &qword_1D09C8);
  v4 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_170E70;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v1, v3, 0, 0, &unk_1D09C0, v2, v1);
}

uint64_t sub_170E70()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_170F8C;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_77F84;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_170F8C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_170FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[213] = a4;
  v4[212] = a3;
  v4[211] = a2;
  v4[210] = a1;
  v5 = sub_2B0C(&qword_22EE68, &qword_1D09B0);
  v4[214] = v5;
  v6 = *(v5 - 8);
  v4[215] = v6;
  v7 = *(v6 + 64) + 15;
  v4[216] = swift_task_alloc();
  v8 = type metadata accessor for Package();
  v4[217] = v8;
  v9 = *(v8 - 8);
  v4[218] = v9;
  v10 = *(v9 + 64) + 15;
  v4[219] = swift_task_alloc();
  v4[220] = swift_task_alloc();
  v11 = *(*(sub_2B0C(&qword_2296C0, &qword_1C3800) - 8) + 64) + 15;
  v4[221] = swift_task_alloc();
  v4[222] = swift_task_alloc();
  v12 = *(*(sub_2B0C(&qword_22F0F8, &qword_1D0BF0) - 8) + 64) + 15;
  v4[223] = swift_task_alloc();
  v13 = sub_2B0C(&qword_22F100, &qword_1D0BF8);
  v4[224] = v13;
  v14 = *(v13 - 8);
  v4[225] = v14;
  v15 = *(v14 + 64) + 15;
  v4[226] = swift_task_alloc();
  v16 = *(*(sub_2B0C(&qword_22C1F8, &qword_1CFD60) - 8) + 64) + 15;
  v4[227] = swift_task_alloc();
  v17 = sub_1B3F34();
  v4[228] = v17;
  v18 = *(v17 - 8);
  v4[229] = v18;
  v4[230] = *(v18 + 64);
  v4[231] = swift_task_alloc();
  v4[232] = swift_task_alloc();
  v4[233] = swift_task_alloc();
  v4[234] = swift_task_alloc();
  v4[235] = swift_task_alloc();
  v4[236] = swift_task_alloc();

  return _swift_task_switch(sub_171318, 0, 0);
}

uint64_t sub_171318()
{
  v120 = v0;
  v0[203] = _swiftEmptyDictionarySingleton;
  v1 = [objc_opt_self() sharedSession];
  v0[237] = v1;
  v2 = [objc_opt_self() defaultManager];
  v0[238] = v2;
  v0[204] = 0;
  v3 = [v2 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:v0 + 204];
  v4 = v0[204];
  v118 = v0;
  if (!v3)
  {
    v34 = v4;
    sub_1B3E64();

    swift_willThrow();
    goto LABEL_30;
  }

  v5 = v0[236];
  v6 = v0[235];
  v7 = v3;
  sub_1B3EE4();
  v8 = v4;

  sub_1B3EC4();
  sub_1B3F04();
  v9 = sub_1B4794();

  v10 = [v2 fileExistsAtPath:v9];

  if ((v10 & 1) == 0)
  {
    v12 = v0[235];
    sub_1B3EB4(v11);
    v14 = v13;
    v0[205] = 0;
    v15 = [v2 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:v0 + 205];

    v16 = v0[205];
    if (!v15)
    {
      v80 = v0[236];
      v81 = v0[235];
      v82 = v0[229];
      v83 = v0[228];
      v84 = v16;
      sub_1B3E64();

      swift_willThrow();
      v85 = *(v82 + 8);
      v85(v81, v83);
      v85(v80, v83);
      goto LABEL_30;
    }

    v17 = v16;
  }

  v18 = v0[229];
  v19 = v0[228];
  v20 = v0[227];
  v21 = *(v0[212] + 16);
  v22 = v21[5];
  v23 = v21[6];
  sub_2698(v21 + 2, v22);
  v24 = *(v23 + 8);
  v25 = v23;
  v26 = v0;
  v24(__src, v22, v25);
  memcpy(v0 + 2, __src, 0x460uLL);
  sub_71E98((v26 + 88), (v26 + 142));
  sub_2B54((v0 + 2));
  v27 = v0[90];
  v28 = v0[91];

  sub_726C8((v0 + 88));
  sub_1B3F14();

  if ((*(v18 + 48))(v20, 1, v19) == 1)
  {
    v29 = v0[236];
    v30 = v0[235];
    v31 = v0[229];
    v32 = v0[228];
    sub_42F48(v0[227], &qword_22C1F8, &qword_1CFD60);
    sub_174654();
    swift_allocError();
    swift_willThrow();

    v33 = *(v31 + 8);
    v33(v30, v32);
    v33(v29, v32);
LABEL_30:
    v86 = v0[236];
    v87 = v0[235];
    v88 = v0[234];
    v89 = v0[233];
    v90 = v0[232];
    v91 = v0[231];
    v92 = v0[227];
    v93 = v0[226];
    v94 = v0[223];
    v95 = v0[222];
    v110 = v0[221];
    v112 = v0[220];
    v115 = v0[219];
    v117 = v0[216];

    v96 = v0[1];

    return v96();
  }

  v104 = v1;
  v35 = v0[230];
  v36 = v0[229];
  v37 = v0[213];
  v101 = *(v36 + 32);
  v101(v0[234], v0[227], v0[228]);
  v38 = v37 + 56;
  v39 = -1;
  v40 = -1 << *(v37 + 32);
  if (-v40 < 64)
  {
    v39 = ~(-1 << -v40);
  }

  v41 = v39 & *(v37 + 56);
  v42 = (63 - v40) >> 6;
  v102 = v37;
  v103 = v36;
  v98 = v35 + 7;

  v43 = 0;
  v99 = v42;
  v100 = v37 + 56;
  while (v41)
  {
LABEL_18:
    v48 = v118[235];
    v49 = v118[233];
    v50 = v118[232];
    v105 = v50;
    v51 = v118[228];
    v52 = v118[222];
    v107 = v52;
    v113 = v118[234];
    v116 = v118[221];
    v53 = (*(v102 + 48) + ((v43 << 10) | (16 * __clz(__rbit64(v41)))));
    v109 = v53[1];
    v111 = *v53;
    v106 = sub_1B4C54();
    v108 = *(v106 - 8);
    (*(v108 + 56))(v52, 1, 1, v106);
    v54 = *(v103 + 16);
    v54(v49, v48, v51);
    v54(v50, v113, v51);
    v55 = *(v103 + 80);
    v56 = (v55 + 32) & ~v55;
    v57 = (v56 + v98) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v55 + v57 + 16) & ~v55;
    v59 = swift_allocObject();
    *(v59 + 16) = 0;
    v114 = (v59 + 16);
    *(v59 + 24) = 0;
    v101(v59 + v56, v49, v51);
    v60 = (v59 + v57);
    *v60 = v111;
    v60[1] = v109;
    v26 = v118;
    v101(v59 + v58, v105, v51);
    *(v59 + ((v58 + v98) & 0xFFFFFFFFFFFFFFF8)) = v104;
    sub_79E9C(v107, v116);
    LODWORD(v56) = (*(v108 + 48))(v116, 1, v106);

    v61 = v104;
    v62 = v118[221];
    if (v56 == 1)
    {
      sub_42F48(v118[221], &qword_2296C0, &qword_1C3800);
    }

    else
    {
      sub_1B4C44();
      (*(v108 + 8))(v62, v106);
    }

    v42 = v99;
    if (*v114)
    {
      v63 = *(v59 + 24);
      v64 = *v114;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v65 = sub_1B4BC4();
      v67 = v66;
      swift_unknownObjectRelease();
    }

    else
    {
      v65 = 0;
      v67 = 0;
    }

    v68 = *v118[211];

    if (v67 | v65)
    {
      v44 = v118 + 196;
      v118[196] = 0;
      v118[197] = 0;
      v118[198] = v65;
      v118[199] = v67;
    }

    else
    {
      v44 = 0;
    }

    v41 &= v41 - 1;
    v45 = v118[222];
    v46 = v118[214];
    v118[200] = 1;
    v118[201] = v44;
    v118[202] = v68;
    swift_task_create();

    sub_42F48(v45, &qword_2296C0, &qword_1C3800);
    v38 = v100;
  }

  while (1)
  {
    v47 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
    }

    if (v47 >= v42)
    {
      break;
    }

    v41 = *(v38 + 8 * v47);
    ++v43;
    if (v41)
    {
      v43 = v47;
      goto LABEL_18;
    }
  }

  v69 = v26[226];
  v70 = v26[214];
  v71 = v26[213];
  v72 = v26[211];

  v73 = *v72;
  sub_2B0C(&qword_229560, &unk_1BFC70);
  sub_1B4C74();
  v74 = v26[203];
  v26[240] = _swiftEmptyDictionarySingleton;
  v26[239] = v74;
  v75 = _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v76 = swift_task_alloc();
  v26[241] = v76;
  *v76 = v26;
  v76[1] = sub_171CE4;
  v77 = v26[226];
  v78 = v26[224];
  v79 = v26[223];

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v79, 0, 0, v78, v26 + 206);
}

uint64_t sub_171CE4()
{
  v2 = *(*v1 + 1928);
  v5 = *v1;
  *(*v1 + 1936) = v0;

  if (v0)
  {
    v3 = sub_1726BC;
  }

  else
  {
    v3 = sub_171E24;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_171E24()
{
  v1 = *(v0 + 1784);
  if ((*(*(v0 + 1720) + 48))(v1, 1, *(v0 + 1712)) == 1)
  {
    v2 = *(v0 + 1904);
    v3 = *(v0 + 1880);
    (*(*(v0 + 1800) + 8))(*(v0 + 1808), *(v0 + 1792));
    sub_1B3EB4(v4);
    v6 = v5;
    sub_2B0C(&qword_22F110, &qword_1D0C18);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BCA80;
    *(v7 + 32) = NSURLIsDirectoryKey;
    type metadata accessor for URLResourceKey(0);
    v8 = NSURLIsDirectoryKey;
    isa = sub_1B4AA4().super.isa;

    *(v0 + 1656) = 0;
    v10 = [v2 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:isa options:0 error:v0 + 1656];

    v11 = *(v0 + 1656);
    if (v10)
    {
      v12 = *(v0 + 1936);
      v13 = *(v0 + 1824);
      v14 = sub_1B4AC4();
      v15 = v11;

      v16 = sub_174920(v14, (v0 + 1624));

      v18 = v16[2];
      if (v18)
      {
        v19 = 0;
        v20 = *(v0 + 1832);
        v21 = (v20 + 8);
        while (v19 < v16[2])
        {
          v22 = *(v0 + 1904);
          (*(*(v0 + 1832) + 16))(*(v0 + 1848), v16 + ((*(*(v0 + 1832) + 80) + 32) & ~*(*(v0 + 1832) + 80)) + *(v20 + 72) * v19, *(v0 + 1824));
          sub_1B3EB4(v23);
          v25 = v24;
          *(v0 + 1664) = 0;
          LODWORD(v22) = [v22 removeItemAtURL:v24 error:v0 + 1664];

          v26 = *(v0 + 1664);
          if (!v22)
          {
            v67 = *(v0 + 1920);
            v68 = *(v0 + 1904);
            v69 = *(v0 + 1896);
            v106 = *(v0 + 1880);
            v110 = *(v0 + 1888);
            v103 = *(v0 + 1872);
            v70 = *(v0 + 1848);
            v71 = *(v0 + 1824);
            v72 = v26;

            sub_1B3E64();

            swift_willThrow();
            v73 = *v21;
            (*v21)(v70, v71);
            v73(v103, v71);
            v73(v106, v71);
            v73(v110, v71);
            goto LABEL_22;
          }

          v12 = *(v0 + 1848);
          v14 = *(v0 + 1824);
          ++v19;
          v27 = *v21;
          v28 = v26;
          v17 = (v27)(v12, v14);
          if (v18 == v19)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

LABEL_8:
      v29 = *(v0 + 1920);
      v30 = *(v0 + 1896);
      v31 = *(v0 + 1888);
      v32 = *(v0 + 1880);
      v33 = *(v0 + 1872);
      v93 = *(v0 + 1864);
      v94 = *(v0 + 1856);
      v34 = *(v0 + 1832);
      v35 = *(v0 + 1824);
      v95 = *(v0 + 1848);
      v96 = *(v0 + 1816);
      v97 = *(v0 + 1808);
      v98 = *(v0 + 1784);
      v99 = *(v0 + 1776);
      v100 = *(v0 + 1768);
      v102 = *(v0 + 1760);
      v105 = *(v0 + 1752);
      v108 = *(v0 + 1728);
      v36 = *(v0 + 1680);

      v37 = *(v34 + 8);
      v37(v33, v35);
      v37(v32, v35);
      v37(v31, v35);
      *v36 = v29;

      v38 = *(v0 + 8);
    }

    else
    {
      v109 = *(v0 + 1920);
      v55 = *(v0 + 1904);
      v56 = *(v0 + 1896);
      v57 = *(v0 + 1888);
      v58 = *(v0 + 1880);
      v59 = *(v0 + 1872);
      v60 = *(v0 + 1832);
      v61 = *(v0 + 1824);
      v62 = v11;
      sub_1B3E64();

      swift_willThrow();
      v63 = *(v60 + 8);
      v63(v59, v61);
      v63(v58, v61);
      v63(v57, v61);
LABEL_22:

      v74 = *(v0 + 1888);
      v75 = *(v0 + 1880);
      v76 = *(v0 + 1872);
      v77 = *(v0 + 1864);
      v78 = *(v0 + 1856);
      v79 = *(v0 + 1848);
      v80 = *(v0 + 1816);
      v81 = *(v0 + 1808);
      v82 = *(v0 + 1784);
      v83 = *(v0 + 1776);
      v101 = *(v0 + 1768);
      v104 = *(v0 + 1760);
      v107 = *(v0 + 1752);
      v111 = *(v0 + 1728);

      v38 = *(v0 + 8);
    }

    return v38();
  }

  v39 = *(v0 + 1744);
  v40 = *(v0 + 1736);
  v41 = *(v0 + 1728);
  sub_174CF0(v1, v41);
  if ((*(v39 + 48))(v41, 1, v40) == 1)
  {
    sub_42F48(*(v0 + 1728), &qword_22EE68, &qword_1D09B0);
LABEL_29:
    v87 = _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v88 = swift_task_alloc();
    *(v0 + 1928) = v88;
    *v88 = v0;
    v88[1] = sub_171CE4;
    v89 = *(v0 + 1808);
    v90 = *(v0 + 1792);
    v91 = *(v0 + 1784);

    return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v91, 0, 0, v90, v0 + 1648);
  }

  v42 = *(v0 + 1912);
  v14 = *(v0 + 1760);
  v43 = *(v0 + 1752);
  v44 = *(v0 + 1736);
  sub_174D60(*(v0 + 1728), v14);
  v45 = (v14 + *(v44 + 20));
  v12 = *v45;
  v16 = v45[1];
  sub_174DC4(v14, v43);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 1672) = v42;
  v17 = sub_3A678(v12, v16);
  v48 = *(v42 + 16);
  v49 = (v47 & 1) == 0;
  v50 = __OFADD__(v48, v49);
  v51 = v48 + v49;
  if (v50)
  {
    goto LABEL_33;
  }

  LOBYTE(v14) = v47;
  if (*(*(v0 + 1912) + 24) >= v51)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_34:
      v92 = v17;
      sub_1880A0();
      v17 = v92;
    }

LABEL_19:
    v64 = *(v0 + 1672);
    v65 = *(v0 + 1752);
    v66 = *(v0 + 1744);
    if (v14)
    {
      sub_174E84(*(v0 + 1752), v64[7] + *(v66 + 72) * v17);
    }

    else
    {
      v64[(v17 >> 6) + 8] |= 1 << v17;
      v84 = (v64[6] + 16 * v17);
      *v84 = v12;
      v84[1] = v16;
      sub_174D60(v65, v64[7] + *(v66 + 72) * v17);
      v85 = v64[2];
      v50 = __OFADD__(v85, 1);
      v86 = v85 + 1;
      if (v50)
      {
        __break(1u);
      }

      v64[2] = v86;
    }

    sub_174E28(*(v0 + 1760));
    *(v0 + 1624) = v64;
    *(v0 + 1920) = v64;
    *(v0 + 1912) = v64;
    goto LABEL_29;
  }

  sub_183B7C(v51, isUniquelyReferenced_nonNull_native);
  v52 = *(v0 + 1672);
  v17 = sub_3A678(v12, v16);
  if ((v14 & 1) == (v53 & 1))
  {
    goto LABEL_19;
  }

  return sub_1B5784();
}

uint64_t sub_1726BC()
{
  v27 = *(v0 + 1920);
  v1 = *(v0 + 1896);
  v2 = *(v0 + 1888);
  v3 = *(v0 + 1880);
  v4 = *(v0 + 1872);
  v5 = *(v0 + 1832);
  v6 = *(v0 + 1824);
  v7 = *(v0 + 1808);
  v8 = *(v0 + 1800);
  v9 = *(v0 + 1792);

  (*(v8 + 8))(v7, v9);
  v10 = *(v5 + 8);
  v10(v4, v6);
  v10(v3, v6);
  v10(v2, v6);

  v11 = *(v0 + 1888);
  v12 = *(v0 + 1880);
  v13 = *(v0 + 1872);
  v14 = *(v0 + 1864);
  v15 = *(v0 + 1856);
  v16 = *(v0 + 1848);
  v17 = *(v0 + 1816);
  v18 = *(v0 + 1808);
  v19 = *(v0 + 1784);
  v20 = *(v0 + 1776);
  v23 = *(v0 + 1648);
  v24 = *(v0 + 1768);
  v25 = *(v0 + 1760);
  v26 = *(v0 + 1752);
  v28 = *(v0 + 1728);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1728B0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_7A038;

  return sub_170FF0(a1, a2, v7, v6);
}

uint64_t sub_172964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a1;
  v8[4] = a4;
  v9 = sub_1B3B64();
  v8[9] = v9;
  v10 = *(v9 - 8);
  v8[10] = v10;
  v11 = *(v10 + 64) + 15;
  v8[11] = swift_task_alloc();
  v12 = sub_1B3F34();
  v8[12] = v12;
  v13 = *(v12 - 8);
  v8[13] = v13;
  v14 = *(v13 + 64) + 15;
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();

  return _swift_task_switch(sub_172AD8, 0, 0);
}

uint64_t sub_172AD8()
{
  v1 = v0[17];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  sub_1B3EC4();
  v5 = objc_opt_self();
  v0[18] = v5;
  v6 = [v5 defaultManager];
  sub_1B3F04();
  v7 = sub_1B4794();

  LODWORD(v4) = [v6 fileExistsAtPath:v7];

  if (v4)
  {
    v9 = v0[5];
    v8 = v0[6];
    v10 = v0[3];
    (*(v0[13] + 32))(v10, v0[17], v0[12]);
    v11 = type metadata accessor for Package();
    v12 = (v10 + *(v11 + 20));
    *v12 = v9;
    v12[1] = v8;
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
    v13 = v0[16];
    v14 = v0[17];
    v16 = v0[14];
    v15 = v0[15];
    v17 = v0[11];
    v18 = v0[6];

    v19 = v0[1];

    return v19();
  }

  else
  {
    v21 = v0[16];
    v23 = v0[13];
    v22 = v0[14];
    v25 = v0[11];
    v24 = v0[12];
    v26 = v0[6];
    v27 = v0[7];
    v28 = v0[5];
    sub_1B3EC4();
    (*(v23 + 16))(v22, v21, v24);
    sub_1B3B14();
    v29 = async function pointer to NSURLSession.download(for:delegate:)[1];
    v30 = swift_task_alloc();
    v0[19] = v30;
    *v30 = v0;
    v30[1] = sub_172D90;
    v31 = v0[15];
    v32 = v0[11];
    v33 = v0[8];

    return NSURLSession.download(for:delegate:)(v31, v32, 0);
  }
}

uint64_t sub_172D90(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(*v2 + 160) = v1;

  v7 = v4[11];
  v8 = v4[10];
  v9 = v4[9];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_173224;
  }

  else
  {

    (*(v8 + 8))(v7, v9);
    v10 = sub_172F5C;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_172F5C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = [*(v0 + 144) defaultManager];
  sub_1B3EB4(v4);
  v6 = v5;
  sub_1B3EB4(v7);
  v9 = v8;
  *(v0 + 16) = 0;
  v10 = [v3 moveItemAtURL:v6 toURL:v8 error:v0 + 16];

  v11 = *(v0 + 16);
  v12 = *(v0 + 136);
  v13 = *(v0 + 128);
  v14 = *(v0 + 120);
  v15 = *(v0 + 96);
  v16 = *(v0 + 104);
  if (v10)
  {
    v37 = *(v0 + 40);
    v38 = *(v0 + 48);
    v17 = *(v0 + 24);
    v18 = *(v16 + 8);
    v19 = v11;
    v18(v14, v15);
    v18(v13, v15);
    (*(v16 + 32))(v17, v12, v15);
    v20 = type metadata accessor for Package();
    v21 = (v17 + *(v20 + 20));
    *v21 = v37;
    v21[1] = v38;
    (*(*(v20 - 8) + 56))(v17, 0, 1, v20);
    v22 = *(v0 + 128);
    v23 = *(v0 + 136);
    v25 = *(v0 + 112);
    v24 = *(v0 + 120);
    v26 = *(v0 + 88);
    v27 = *(v0 + 48);
  }

  else
  {
    v29 = v11;
    sub_1B3E64();

    swift_willThrow();
    v30 = *(v16 + 8);
    v30(v14, v15);
    v30(v13, v15);
    v30(v12, v15);
    v32 = *(v0 + 128);
    v31 = *(v0 + 136);
    v34 = *(v0 + 112);
    v33 = *(v0 + 120);
    v35 = *(v0 + 88);
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_173224()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = *(v0[13] + 8);
  v3(v0[16], v2);
  v3(v1, v2);
  v4 = v0[20];
  v6 = v0[16];
  v5 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[11];

  v10 = v0[1];

  return v10();
}

uint64_t PackageService.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PackageService.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1733DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Package();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_173438(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return _swift_task_switch(sub_17345C, 0, 0);
}

uint64_t sub_17345C()
{
  v1 = sub_2B0C(&qword_22EE68, &qword_1D09B0);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v3 = sub_2B0C(&qword_22EE70, &qword_1D09C8);
  v4 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_17357C;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v1, v3, 0, 0, &unk_1D0BE8, v2, v1);
}

uint64_t sub_17357C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_174F50;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_174F58;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1736AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B3F34();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_173780(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B3F34();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_17383C()
{
  result = sub_1B3F34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_173914(uint64_t a1)
{
  *(v2 + 2688) = a1;
  *(v2 + 2696) = *v1;
  return _swift_task_switch(sub_17393C, 0, 0);
}

uint64_t sub_17393C()
{
  v1 = *(v0 + 2696);
  v2 = v1[5];
  v3 = v1[6];
  sub_2698(v1 + 2, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 2704) = v6;
  *v6 = v0;
  v6[1] = sub_173A6C;

  return v8(v0 + 16, v2, v3);
}

uint64_t sub_173A6C()
{
  v2 = *(*v1 + 2704);
  v5 = *v1;
  *(*v1 + 2712) = v0;

  if (v0)
  {
    v3 = sub_173C14;
  }

  else
  {
    v3 = sub_173B80;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_173B80()
{
  v1 = v0[336];
  memcpy(v0 + 142, v0 + 2, 0x460uLL);
  sub_71E98((v0 + 228), (v0 + 282));
  sub_2B54((v0 + 142));
  memcpy(v1, v0 + 228, 0x1B0uLL);
  v2 = v0[1];

  return v2();
}

uint64_t sub_173C2C()
{
  v1 = v0[6];
  sub_2698(v0 + 2, v0[5]);
  sub_2B0C(&qword_22E5C0, &unk_1CFD20);
  result = sub_1B4254();
  if (result)
  {
    v3 = v0[6];
    sub_2698(v0 + 2, v0[5]);
    sub_2B0C(&qword_22E5C8, &qword_1D0BC0);
    result = sub_1B4264();
    if (v10)
    {
      v4 = sub_264B8(&v9, v11);
      __chkstk_darwin(v4);
      v5 = sub_2B0C(&qword_22F0F0, &unk_1D0BC8);
      v6 = *(v5 + 48);
      v7 = *(v5 + 52);
      swift_allocObject();
      v8 = sub_1B4354();

      sub_2BF8(v11);
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_173D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v20 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = sub_1B4C54();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_404C4(a6, v21);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a5;
  sub_264B8(v21, (v18 + 5));
  v18[10] = sub_1744E8;
  v18[11] = v16;
  v18[12] = a3;
  v18[13] = a4;

  sub_16AB6C(0, 0, v15, &unk_1D0BE0, v18);
}

uint64_t sub_173F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a8;
  v8[6] = v17;
  v8[3] = a6;
  v8[4] = a7;
  v8[2] = a5;
  v9 = sub_1B45D4();
  v8[7] = v9;
  v10 = *(v9 - 8);
  v8[8] = v10;
  v11 = *(v10 + 64) + 15;
  v8[9] = swift_task_alloc();
  v12 = *(&async function pointer to dispatch thunk of ComputeService.startup() + 1);
  v15 = (&async function pointer to dispatch thunk of ComputeService.startup() + async function pointer to dispatch thunk of ComputeService.startup());
  v13 = swift_task_alloc();
  v8[10] = v13;
  *v13 = v8;
  v13[1] = sub_17402C;

  return v15();
}

uint64_t sub_17402C()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return _swift_task_switch(sub_174128, 0, 0);
}

uint64_t sub_174128()
{
  v1 = *sub_2698(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_1741D0;
  v3 = *(v0 + 72);

  return sub_85E74(v3, 1);
}

uint64_t sub_1741D0()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_174368;
  }

  else
  {
    (*(v2[8] + 8))(v2[9], v2[7]);
    v4 = sub_1742FC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1742FC()
{
  v1 = *(v0 + 32);
  (*(v0 + 24))();
  v2 = *(v0 + 72);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_174368()
{
  v1 = *(v0 + 48);
  (*(v0 + 40))(*(v0 + 96));

  v2 = *(v0 + 72);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_17440C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for StartupTaskExecutionPhase.afterLaunching(_:);
  v3 = sub_1B4324();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1744B0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1744E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_174510()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_2BF8(v0 + 5);
  v3 = v0[11];

  v4 = v0[13];

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_174568(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = v1[13];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_226C;

  return sub_173F18(a1, v4, v5, v6, (v1 + 5), v7, v8, v9);
}

unint64_t sub_174654()
{
  result = qword_22F108;
  if (!qword_22F108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22F108);
  }

  return result;
}

uint64_t sub_1746A8()
{
  v1 = sub_1B3F34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64) + 7;
  v6 = (v5 + v4) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v3 + v6 + 16) & ~v3;
  v8 = (v5 + v7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  v11 = *(v0 + v6 + 8);

  v10(v0 + v7, v1);

  return _swift_deallocObject(v0, v8 + 8, v3 | 7);
}

uint64_t sub_1747C4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1B3F34() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64) + 7;
  v9 = (v7 + v8) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v6 + v9 + 16) & ~v6;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v9);
  v14 = *(v1 + v9 + 8);
  v15 = *(v1 + ((v10 + v8) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_226C;

  return sub_172964(a1, v11, v12, v1 + v7, v13, v14, v1 + v10, v15);
}

void *sub_174920(uint64_t a1, uint64_t *a2)
{
  v43 = a2;
  v3 = sub_2B0C(&qword_22EE68, &qword_1D09B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v42 = &v37 - v5;
  v6 = sub_1B3F34();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v45 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v46 = &v37 - v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    v14 = *(v10 + 16);
    v13 = v10 + 16;
    v15 = *(v13 + 56);
    v39 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v40 = v14;
    v16 = a1 + v39;
    v38 = (v13 - 8);
    v44 = (v13 + 16);
    v17 = _swiftEmptyArrayStorage;
    v41 = v13;
    while (1)
    {
      v23 = v6;
      v40(v46, v16, v6);
      v24 = sub_1B3EA4();
      v26 = *v43;
      if (!*(*v43 + 16))
      {
        break;
      }

      v27 = sub_3A678(v24, v25);
      v29 = v28;

      if ((v29 & 1) == 0)
      {
        goto LABEL_9;
      }

      v18 = *(v26 + 56);
      v19 = type metadata accessor for Package();
      v20 = *(v19 - 8);
      v21 = v18 + *(v20 + 72) * v27;
      v22 = v42;
      sub_174DC4(v21, v42);
      (*(v20 + 56))(v22, 0, 1, v19);
      sub_42F48(v22, &qword_22EE68, &qword_1D09B0);
      v6 = v23;
      (*v38)(v46, v23);
LABEL_4:
      v16 += v15;
      if (!--v12)
      {
        return v17;
      }
    }

LABEL_9:
    v30 = type metadata accessor for Package();
    v31 = v42;
    (*(*(v30 - 8) + 56))(v42, 1, 1, v30);
    sub_42F48(v31, &qword_22EE68, &qword_1D09B0);
    v32 = *v44;
    v6 = v23;
    (*v44)(v45, v46, v23);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_37A78(0, v17[2] + 1, 1);
      v6 = v23;
      v17 = v47;
    }

    v35 = v17[2];
    v34 = v17[3];
    if (v35 >= v34 >> 1)
    {
      sub_37A78(v34 > 1, v35 + 1, 1);
      v6 = v23;
      v17 = v47;
    }

    v17[2] = v35 + 1;
    v32(v17 + v39 + v35 * v15, v45, v6);
    goto LABEL_4;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_174CF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22EE68, &qword_1D09B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_174D60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Package();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_174DC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Package();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_174E28(uint64_t a1)
{
  v2 = type metadata accessor for Package();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_174E84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Package();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_174EFC()
{
  result = qword_22F118;
  if (!qword_22F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22F118);
  }

  return result;
}

uint64_t dispatch thunk of MediaTypeRecommendationServiceType.fetchRecommendedMediaType()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_7A038;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MediaTypeRecommendationServiceType.fetchRecommendedMediaType(from:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_226C;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MediaTypeRecommendationSubserviceType.fetchRecommendedMediaType(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_7A038;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MangaYouMightLikeServiceType.fetchBooks(with:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_441B4;

  return v13(a1, a2, a3, a4);
}

BooksPersonalization::StoreBookTaste_optional __swiftcall StoreBookTaste.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_17548C()
{
  result = qword_22F120;
  if (!qword_22F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22F120);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StoreBookTasteInfo(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StoreBookTasteInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of StoreBookTastesServiceType.fetchStoreTastes(storeIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_441B4;

  return v11(a1, a2, a3);
}

unint64_t sub_17577C()
{
  v1 = *v0;
  v2 = 0x65726E654778616DLL;
  v3 = 0xD00000000000001FLL;
  if (v1 != 4)
  {
    v3 = 0xD00000000000001DLL;
  }

  if (v1 == 3)
  {
    v3 = 0xD00000000000001ALL;
  }

  v4 = 0xD000000000000023;
  if (v1 == 1)
  {
    v4 = 0x6F6874754178616DLL;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_175850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_176168(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_175878(uint64_t a1)
{
  v2 = sub_175B30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1758B4(uint64_t a1)
{
  v2 = sub_175B30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WorkServiceConfiguration.SeedBookRecommendationConfiguration.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22F128, &qword_1D0FA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v22 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v22[5] = v1[2];
  v22[6] = v8;
  v11 = v1[5];
  v22[3] = v1[4];
  v22[4] = v10;
  v12 = v1[6];
  v13 = v1[7];
  v22[1] = v11;
  v22[2] = v12;
  v14 = v1[8];
  v15 = a1[3];
  v16 = a1[4];
  v17 = a1;
  v19 = v18;
  sub_2698(v17, v15);
  sub_175B30();
  sub_1B5884();
  v29 = 0;
  v20 = v23;
  sub_1B5534();
  if (v20)
  {
    return (*(v4 + 8))(v7, v19);
  }

  v23 = v13;
  v28 = 1;
  sub_1B5534();
  v27 = 2;
  sub_1B54F4();
  v26 = 3;
  sub_1B54F4();
  v25 = 4;
  sub_1B54F4();
  v24 = 5;
  sub_1B5534();
  return (*(v4 + 8))(v7, v19);
}

unint64_t sub_175B30()
{
  result = qword_22F130;
  if (!qword_22F130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22F130);
  }

  return result;
}

uint64_t WorkServiceConfiguration.SeedBookRecommendationConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_22F138, &qword_1D0FA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_175B30();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  LOBYTE(v34[0]) = 0;
  v11 = sub_1B53F4();
  LOBYTE(v34[0]) = 1;
  v28 = sub_1B53F4();
  LOBYTE(v34[0]) = 2;
  *&v27 = sub_1B53B4();
  *(&v27 + 1) = v12;
  LOBYTE(v34[0]) = 3;
  v13 = sub_1B53B4();
  *(&v26 + 1) = v14;
  *&v26 = v13;
  LOBYTE(v34[0]) = 4;
  v25 = sub_1B53B4();
  v16 = v15;
  v39 = 5;
  v17 = sub_1B53F4();
  (*(v6 + 8))(v9, v5);
  v19 = *(&v27 + 1);
  v18 = v28;
  *&v29 = v11;
  *(&v29 + 1) = v28;
  v20 = v27;
  v30 = v27;
  v31 = v26;
  *&v32 = v25;
  *(&v32 + 1) = v16;
  v33 = v17;
  *(a2 + 64) = v17;
  v21 = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v21;
  v22 = v30;
  *a2 = v29;
  *(a2 + 16) = v22;
  sub_175F10(&v29, v34);
  sub_2BF8(a1);
  v34[0] = v11;
  v34[1] = v18;
  v34[2] = v20;
  v34[3] = v19;
  v35 = v26;
  v36 = v25;
  v37 = v16;
  v38 = v17;
  return sub_175F48(v34);
}

uint64_t sub_175FA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_175FF0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_176064()
{
  result = qword_22F140;
  if (!qword_22F140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22F140);
  }

  return result;
}

unint64_t sub_1760BC()
{
  result = qword_22F148;
  if (!qword_22F148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22F148);
  }

  return result;
}

unint64_t sub_176114()
{
  result = qword_22F150;
  if (!qword_22F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22F150);
  }

  return result;
}

uint64_t sub_176168(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726E654778616DLL && a2 == 0xEB00000000734449;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6874754178616DLL && a2 == 0xEC00000073444972 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000023 && 0x80000000001D8A70 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000000001D7730 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000000001D8AA0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000000001D8AC0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_176370()
{
  v0 = sub_1B3CE4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5EA10(v3, qword_22F158);
  sub_50E58(v0, qword_22F158);
  sub_1B3CD4();
  sub_1B3C94();
  sub_1B3CC4();
  v6 = *(v1 + 8);
  v6(v5, v0);
  sub_1B3CB4();
  sub_1B3CC4();
  v6(v5, v0);
  sub_1B3CA4();
  sub_1B3CC4();
  return (v6)(v5, v0);
}

Swift::String __swiftcall AggregateFlattener.flatten(string:)(Swift::String string)
{
  object = string._object;
  countAndFlagsBits = string._countAndFlagsBits;
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;

    do
    {
      sub_404C4(v6, v14);
      v7 = v15;
      v8 = v16;
      sub_2698(v14, v15);
      countAndFlagsBits = (*(v8 + 8))(countAndFlagsBits, object, v7, v8);
      v10 = v9;

      sub_2BF8(v14);
      v6 += 40;
      object = v10;
      --v5;
    }

    while (v5);
  }

  else
  {

    v10 = object;
  }

  v11 = countAndFlagsBits;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t _s20BooksPersonalization24StringOperationFlattenerC7flatten6stringS2S_tF_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B3CE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  v16 = a2;
  if (qword_228340 != -1)
  {
    swift_once();
  }

  v9 = sub_50E58(v4, qword_22F158);
  (*(v5 + 16))(v8, v9, v4);
  sub_402F4();
  sub_1B4EE4();
  (*(v5 + 8))(v8, v4);
  isa = sub_1B4AA4().super.isa;

  v11 = sub_1B4794();
  v12 = [(objc_class *)isa componentsJoinedByString:v11, v15, v16];

  sub_1B47C4();
  v13 = sub_1B4844();

  return v13;
}

uint64_t sub_176828(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_17686C(uint64_t a1)
{
  v2 = sub_2B0C(&qword_229708, &unk_1BCB60);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v34 - v4;
  v39 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v6 = *(*(v39 - 8) + 64);
  v7 = __chkstk_darwin(v39);
  v35 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v36 = &v34 - v10;
  v11 = _swiftEmptyDictionarySingleton;
  v41 = _swiftEmptyDictionarySingleton;
  v12 = 1 << *(a1 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;
  v38 = (v9 + 48);
  v34 = v9;
  v37 = (v9 + 32);

  v17 = 0;
  while (1)
  {
    v18 = v17;
    if (!v14)
    {
      break;
    }

LABEL_9:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = (v17 << 9) | (8 * v19);
    v21 = *(*(a1 + 48) + v20);
    v40 = *(*(a1 + 56) + v20);

    sub_2B0C(&qword_229710, &unk_1D32C0);
    sub_179FD4();
    sub_1B43C4();
    if ((*v38)(v5, 1, v39) == 1)
    {
      result = sub_17A038(v5);
    }

    else
    {
      v22 = *v37;
      (*v37)(v36, v5, v39);
      v22(v35, v36, v39);
      v23 = v11[2];
      if (v11[3] <= v23)
      {
        sub_17DB3C(v23 + 1, 1);
        v11 = v41;
      }

      v24 = v11[5];
      result = sub_1B57E4();
      v25 = v11 + 8;
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~v11[(v27 >> 6) + 8]) == 0)
      {
        v30 = 0;
        v31 = (63 - v26) >> 6;
        while (++v28 != v31 || (v30 & 1) == 0)
        {
          v32 = v28 == v31;
          if (v28 == v31)
          {
            v28 = 0;
          }

          v30 |= v32;
          v33 = v25[v28];
          if (v33 != -1)
          {
            v29 = __clz(__rbit64(~v33)) + (v28 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v29 = __clz(__rbit64((-1 << v27) & ~v11[(v27 >> 6) + 8])) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v25 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      *(v11[6] + 8 * v29) = v21;
      result = (v22)(v11[7] + *(v34 + 72) * v29, v35, v39);
      ++v11[2];
    }
  }

  while (1)
  {
    v17 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      return v11;
    }

    v14 = *(a1 + 64 + 8 * v17);
    ++v18;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_176C28(uint64_t a1, const void *a2)
{
  v3[683] = v2;
  v3[677] = a2;
  v3[671] = a1;
  v5 = sub_2B0C(&qword_22E178, &unk_1CF3C0);
  v3[689] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[695] = swift_task_alloc();
  v3[696] = swift_task_alloc();
  memcpy(v3 + 167, a2, 0x460uLL);

  return _swift_task_switch(sub_176CF0, 0, 0);
}

uint64_t sub_176CF0()
{
  v1 = *(v0 + 5464);
  v2 = *(v0 + 5416);
  v3 = *(v0 + 5368);
  v4 = sub_177B34(*(v0 + 1960) & 1, v3);
  v5 = swift_allocObject();
  *(v0 + 5576) = v5;
  v5[2] = v1;
  v5[3] = v3;
  memcpy(v5 + 4, v2, 0x460uLL);

  sub_84BC0(v0 + 1336, v0 + 2456);
  *(v0 + 5584) = sub_2B0C(&qword_22A410, &qword_1C0110);
  swift_asyncLet_begin();
  v6 = swift_allocObject();
  *(v0 + 5592) = v6;
  v6[2] = v1;
  v6[3] = v4;
  memcpy(v6 + 4, (v0 + 1336), 0x460uLL);

  sub_84BC0(v0 + 1336, v0 + 3576);
  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 656, v0 + 5272, sub_176E98, v0 + 1296);
}

uint64_t sub_176E98()
{
  v1[700] = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 82, v1 + 659, sub_17774C, v1 + 604);
  }

  else
  {
    v1[701] = v1[659];

    return _swift_asyncLet_get_throwing(v1 + 2, v1 + 653, sub_176F5C, v1 + 648);
  }
}

uint64_t sub_176F5C()
{
  *(v1 + 5616) = v0;
  if (v0)
  {
    v2 = sub_17783C;
  }

  else
  {
    v2 = sub_176F90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_176F90()
{
  v62 = v0;
  v1 = (v0 + 587);
  v2 = (v0 + 609);
  v3 = v0 + 665;
  v4 = v0[653];
  v5 = *(v4 + 64);
  v54 = v4 + 64;
  v57 = v0[689];
  v58 = v4;
  v6 = -1;
  v7 = -1 << *(v4 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v5;
  v53 = (63 - v7) >> 6;
  isUniquelyReferenced_nonNull_native = swift_bridgeObjectRetain_n();
  v13 = 0;
  v14 = _swiftEmptyArrayStorage;
  v55 = v0;
  v56 = v0 + 665;
  while (1)
  {
    v60 = v14;
    if (!v8)
    {
      break;
    }

LABEL_10:
    v16 = v0[696];
    v17 = v0[695];
    v18 = __clz(__rbit64(v8)) | (v13 << 6);
    v59 = *(v58 + 48);
    v19 = sub_1B40F4();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v16, v59 + *(v20 + 72) * v18, v19);
    *(v16 + *(v57 + 48)) = *(*(v58 + 56) + 8 * v18);
    sub_179858(v16, v17);
    v21 = *(v17 + *(v57 + 48));
    v22 = *(v20 + 8);

    isUniquelyReferenced_nonNull_native = v22(v17, v19);
    v23 = *(v21 + 16);
    v14 = v60;
    v24 = *(v60 + 2);
    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return _swift_asyncLet_get_throwing(isUniquelyReferenced_nonNull_native, v10, v11, v12);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v25 > *(v60 + 3) >> 1)
    {
      if (v24 <= v25)
      {
        v26 = v24 + v23;
      }

      else
      {
        v26 = v24;
      }

      isUniquelyReferenced_nonNull_native = sub_33358(isUniquelyReferenced_nonNull_native, v26, 1, v60);
      v14 = isUniquelyReferenced_nonNull_native;
    }

    v3 = v56;
    v8 &= v8 - 1;
    if (*(v21 + 16))
    {
      if ((*(v14 + 3) >> 1) - *(v14 + 2) < v23)
      {
        goto LABEL_33;
      }

      swift_arrayInitWithCopy();

      v0 = v55;
      if (v23)
      {
        v27 = *(v14 + 2);
        v28 = __OFADD__(v27, v23);
        v29 = v27 + v23;
        if (v28)
        {
          goto LABEL_34;
        }

        *(v14 + 2) = v29;
      }
    }

    else
    {

      v0 = v55;
      if (v23)
      {
        goto LABEL_32;
      }
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v15 >= v53)
    {
      break;
    }

    v8 = *(v54 + 8 * v15);
    ++v13;
    if (v8)
    {
      v13 = v15;
      goto LABEL_10;
    }
  }

  *v3 = _swiftEmptyDictionarySingleton;
  v30 = *(v14 + 2);
  if (v30)
  {
    v31 = v14 + 32;
    v32 = v0[702];
    do
    {
      *v1 = *v31;
      v33 = *(v31 + 1);
      v34 = *(v31 + 2);
      v35 = *(v31 + 4);
      *(v1 + 48) = *(v31 + 3);
      *(v1 + 64) = v35;
      *(v1 + 16) = v33;
      *(v1 + 32) = v34;
      v36 = *(v31 + 5);
      v37 = *(v31 + 6);
      v38 = *(v31 + 7);
      v39 = *(v31 + 128);
      *(v1 + 128) = v39;
      *(v1 + 96) = v37;
      *(v1 + 112) = v38;
      *(v1 + 80) = v36;
      v40 = *(v1 + 48);
      *(v2 + 32) = *(v1 + 32);
      *(v2 + 48) = v40;
      v41 = *(v1 + 16);
      *v2 = *v1;
      *(v2 + 16) = v41;
      *(v2 + 128) = v39;
      v42 = *(v1 + 112);
      *(v2 + 96) = *(v1 + 96);
      *(v2 + 112) = v42;
      v43 = *(v1 + 80);
      *(v2 + 64) = *(v1 + 64);
      *(v2 + 80) = v43;
      sub_429F8(v1, (v0 + 631));
      v44 = sub_1786C4(v2);
      v45 = swift_task_alloc();
      *(v45 + 16) = v3;
      *(v45 + 24) = v2;
      sub_157E64(sub_179C84, v45, v44);

      sub_5C740(v1);

      v31 += 17;
      --v30;
    }

    while (v30);
    v46 = *v3;
  }

  else
  {
    v47 = v0[702];
    v46 = _swiftEmptyDictionarySingleton;
  }

  v48 = v0[701];
  v49 = v0[683];
  v50 = sub_17686C(v46);

  memcpy(__dst, v0 + 167, 0x460uLL);
  v0[703] = sub_178938(v48, v50, __dst);

  sub_2B0C(&qword_22F358, &qword_1D12E8);
  v51 = swift_allocObject();
  v0[704] = v51;
  *(v51 + 16) = xmmword_1BFC80;
  v11 = sub_177414;
  isUniquelyReferenced_nonNull_native = (v0 + 2);
  v10 = v0 + 653;
  v12 = v0 + 666;

  return _swift_asyncLet_get_throwing(isUniquelyReferenced_nonNull_native, v10, v11, v12);
}

uint64_t sub_177414()
{
  *(v1 + 5640) = v0;
  if (v0)
  {
    v2 = *(v1 + 5624);

    v3 = sub_1779A0;
  }

  else
  {
    v3 = sub_177494;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_177494()
{
  v18 = v0;
  v1 = v0[704];
  v2 = v0[703];
  v3 = v0[671];
  *(v1 + 32) = v0[653];
  *(v1 + 40) = v2;
  v4 = _swiftEmptyDictionarySingleton;
  v17[0] = _swiftEmptyDictionarySingleton;
  v5 = *(v3 + 16);

  if (!v5)
  {
LABEL_10:
    v15 = v0[704];
    v16 = v0[698];
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v0[706] = v4;

    return _swift_asyncLet_finish(v0 + 82, v0 + 659, sub_177658, v0 + 684);
  }

  v6 = v0[705];
  v7 = v0[704];
  v8 = v0[671];
  v9 = *(type metadata accessor for SeedBasedRecommendationRequest(0) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = *(v9 + 72);
  sub_178B60(v17, v8 + v10, v7);
  if (!v6)
  {
    for (i = v11 + v10; --v5; i = v13)
    {
      v13 = i + v11;
      sub_178B60(v17, v0[671] + i, v0[704]);
    }

    v4 = v17[0];
    goto LABEL_10;
  }
}

uint64_t sub_1776B8()
{
  v1 = v0[699];
  v2 = v0[697];
  v3 = v0[696];
  v4 = v0[695];

  v5 = v0[1];
  v6 = v0[706];

  return v5(v6);
}

uint64_t sub_1777AC()
{
  v1 = v0[700];
  v2 = v0[699];
  v3 = v0[697];
  v4 = v0[696];
  v5 = v0[695];

  v6 = v0[1];

  return v6();
}

uint64_t sub_17783C()
{
  v1 = *(v0 + 5608);

  return _swift_asyncLet_finish(v0 + 656, v0 + 5272, sub_1778B0, v0 + 5232);
}

uint64_t sub_177910()
{
  v1 = v0[702];
  v2 = v0[699];
  v3 = v0[697];
  v4 = v0[696];
  v5 = v0[695];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1779A0()
{
  v1 = *(v0 + 5632);
  v2 = *(v0 + 5584);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return _swift_asyncLet_finish(v0 + 656, v0 + 5272, sub_177A44, v0 + 5376);
}

uint64_t sub_177AA4()
{
  v1 = v0[705];
  v2 = v0[699];
  v3 = v0[697];
  v4 = v0[696];
  v5 = v0[695];

  v6 = v0[1];

  return v6();
}