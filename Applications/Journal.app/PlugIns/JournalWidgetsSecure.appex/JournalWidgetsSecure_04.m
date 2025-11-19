unint64_t sub_1000640F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007BC0(&qword_100123920);
    v3 = sub_1000DCB44();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1000631BC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

id sub_1000641E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = [objc_opt_self() preferredFontDescriptorWithTextStyle:a1 compatibleWithTraitCollection:a3];
  v4 = *(a2 + 16);
  v5 = v15;
  v6 = v5;
  v7 = v5;
  if (v4)
  {
    v8 = (a2 + 48);
    v7 = v5;
    do
    {
      v9 = *v8;
      v13 = *(v8 - 1);
      v14 = v9;
      sub_100062938(&v15, &v13, &v12);

      v7 = v12;
      v15 = v12;
      v8 += 24;
      --v4;
    }

    while (v4);
  }

  v10 = [objc_opt_self() fontWithDescriptor:v7 size:0.0];
  return v10;
}

unint64_t sub_1000642E0()
{
  result = qword_10011FF98;
  if (!qword_10011FF98)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FF98);
  }

  return result;
}

unint64_t sub_100064394(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007BC0(&qword_100122758);
    v3 = sub_1000DCB44();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007F58(v4, v13, &qword_100122760);
      result = sub_1000630F0(v13);
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
      result = sub_100007EAC(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1000644D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007BC0(&qword_100123928);
    v3 = sub_1000DCB44();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_100063134(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1000645BC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_100007BC0(a2);
    v7 = sub_1000DCB44();
    v8 = a1 + 32;

    while (1)
    {
      sub_100007F58(v8, &v15, a4);
      v9 = v15;
      result = sub_1000631BC(v15);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      result = sub_100007EAC(&v16, (v7[7] + 32 * result));
      v12 = v7[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v7[2] = v14;
      v8 += 40;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_1000646D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100007BC0(&qword_100123930);
  v3 = sub_1000DCB44();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_1000632C0(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 8);
    v13 = *v8;
    v14 = v5;
    result = sub_1000632C0(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000647D8(uint64_t a1)
{
  v2 = sub_100007BC0(&qword_100123950);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100007BC0(&qword_100123958);
    v7 = sub_1000DCB44();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_100007F58(v9, v5, &qword_100123950);
      v11 = *v5;
      result = sub_10006332C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1000D98D4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
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

__n128 initializeBufferWithCopyOfBuffer for WidgetLabelStyle.Appearance(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000649D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100064A1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100064AA0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = sub_1000DA374();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v38 - v14;
  __chkstk_darwin(v13);
  v17 = &v38 - v16;
  v18 = [objc_opt_self() mainScreen];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v39.origin.x = v20;
  v39.origin.y = v22;
  v39.size.width = v24;
  v39.size.height = v26;
  v27 = CGRectGetWidth(v39) + -8.0 + -4.0;
  v40.origin.x = a1;
  v40.origin.y = a2;
  v40.size.width = a3;
  v40.size.height = a4;
  Width = CGRectGetWidth(v40);
  v29 = v27 * 0.5;
  if (v27 * 0.5 >= Width)
  {
    v31 = v27 * 0.25;
    if (Width < v29 && v31 < Width)
    {
      v43.origin.x = a1;
      v43.origin.y = a2;
      v43.size.width = a3;
      v43.size.height = a4;
      if (CGRectGetHeight(v43) >= v31)
      {
        return 3;
      }

      else
      {
        return 4;
      }
    }

    else if (Width < v31 && (v42.origin.x = a1, v42.origin.y = a2, v42.size.width = a3, v42.size.height = a4, Width <= CGRectGetHeight(v42) * 0.5) && ((*(v9 + 104))(v12, enum case for JournalFeatureFlags.portraitAssetGrid(_:), v8), v33 = sub_1000DA364(), (*(v9 + 8))(v12, v8), (v33 & 1) != 0))
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }

  else
  {
    v41.origin.x = a1;
    v41.origin.y = a2;
    v41.size.width = a3;
    v41.size.height = a4;
    if (Width == CGRectGetHeight(v41))
    {
      return 7;
    }

    v34 = *(v9 + 104);
    v34(v17, enum case for JournalFeatureFlags.fullScreenViewer(_:), v8);
    v35 = sub_1000DA364();
    v36 = *(v9 + 8);
    v36(v17, v8);
    if ((v35 & 1) != 0 && (v44.origin.x = a1, v44.origin.y = a2, v44.size.width = a3, v44.size.height = a4, Width * 1.5 <= CGRectGetHeight(v44)))
    {
      return 7;
    }

    else
    {
      v45.origin.x = a1;
      v45.origin.y = a2;
      v45.size.width = a3;
      v45.size.height = a4;
      if (v27 * 0.25 >= CGRectGetHeight(v45))
      {
        return 2;
      }

      else
      {
        v34(v15, enum case for JournalFeatureFlags.portraitAssetGrid(_:), v8);
        v37 = sub_1000DA364();
        v36(v15, v8);
        result = 1;
        if (v37)
        {
          v46.origin.x = a1;
          v46.origin.y = a2;
          v46.size.width = a3;
          v46.size.height = a4;
          if (CGRectGetHeight(v46) == Width * 1.5)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100064E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007BC0(&qword_1001203B8);
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 20);

  return v7(v8, a2, v6);
}

uint64_t sub_100064EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100007BC0(&qword_1001203B8);
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 20);

  return v8(v9, a2, a2, v7);
}

uint64_t type metadata accessor for LastReportedStreaks()
{
  result = qword_100123A58;
  if (!qword_100123A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100064FD4()
{
  sub_100024818();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10006505C(void *a1)
{
  v3 = sub_100007BC0(&qword_100123AA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_100007E68(a1, a1[3]);
  sub_1000658A4();
  sub_1000DCDB4();
  v14 = 0;
  sub_1000DCC14();
  if (!v1)
  {
    type metadata accessor for LastReportedStreaks();
    v13 = 1;
    sub_1000DA084();
    sub_10003C96C(&qword_100121360);
    sub_1000DCBF4();
    v12 = 2;
    sub_1000DCC14();
    v11 = 3;
    sub_1000DCBF4();
    v10 = 4;
    sub_1000DCC14();
    v9 = 5;
    sub_1000DCC14();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000652C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_100007BC0(&qword_1001203B8);
  v4 = __chkstk_darwin(v3 - 8);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v8 = sub_100007BC0(&qword_100123AB0);
  v28 = *(v8 - 8);
  v29 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  ReportedStreaks = type metadata accessor for LastReportedStreaks();
  __chkstk_darwin(ReportedStreaks);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100007E68(a1, a1[3]);
  sub_1000658A4();
  v14 = v10;
  v15 = v30;
  sub_1000DCDA4();
  if (v15)
  {
    return sub_100007FC0(a1);
  }

  v30 = a1;
  v16 = v28;
  v17 = v29;
  v36 = 0;
  v18 = v14;
  *v13 = sub_1000DCBB4();
  sub_1000DA084();
  v35 = 1;
  sub_10003C96C(&qword_100121330);
  sub_1000DCB94();
  v19 = ReportedStreaks;
  sub_1000658F8(v7, v13 + *(ReportedStreaks + 20));
  v34 = 2;
  *(v13 + *(ReportedStreaks + 24)) = sub_1000DCBB4();
  v33 = 3;
  v20 = v27;
  sub_1000DCB94();
  v21 = v30;
  sub_1000658F8(v20, v13 + *(v19 + 28));
  v32 = 4;
  *(v13 + *(v19 + 32)) = sub_1000DCBB4();
  v31 = 5;
  v22 = v19;
  v23 = sub_1000DCBB4();
  (*(v16 + 8))(v18, v17);
  *(v13 + *(v22 + 36)) = v23;
  sub_100065968(v13, v26);
  sub_100007FC0(v21);
  return sub_1000659CC(v13);
}

unint64_t sub_100065728()
{
  v1 = 0xD000000000000013;
  v2 = *v0;
  v3 = 0xD000000000000011;
  if (v2 != 4)
  {
    v3 = 0xD000000000000012;
  }

  if (v2 == 3)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 1)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000657C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100065B40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000657FC(uint64_t a1)
{
  v2 = sub_1000658A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100065838(uint64_t a1)
{
  v2 = sub_1000658A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1000658A4()
{
  result = qword_100123AA8;
  if (!qword_100123AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123AA8);
  }

  return result;
}

uint64_t sub_1000658F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_1001203B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100065968(uint64_t a1, uint64_t a2)
{
  ReportedStreaks = type metadata accessor for LastReportedStreaks();
  (*(*(ReportedStreaks - 8) + 16))(a2, a1, ReportedStreaks);
  return a2;
}

uint64_t sub_1000659CC(uint64_t a1)
{
  ReportedStreaks = type metadata accessor for LastReportedStreaks();
  (*(*(ReportedStreaks - 8) + 8))(a1, ReportedStreaks);
  return a1;
}

unint64_t sub_100065A3C()
{
  result = qword_100123AB8;
  if (!qword_100123AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123AB8);
  }

  return result;
}

unint64_t sub_100065A94()
{
  result = qword_100123AC0;
  if (!qword_100123AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123AC0);
  }

  return result;
}

unint64_t sub_100065AEC()
{
  result = qword_100123AC8;
  if (!qword_100123AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123AC8);
  }

  return result;
}

uint64_t sub_100065B40(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001000E9BF0 == a2 || (sub_1000DCC74() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000E9C10 == a2 || (sub_1000DCC74() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001000E9C30 == a2 || (sub_1000DCC74() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001000E9C50 == a2 || (sub_1000DCC74() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000E9C70 == a2 || (sub_1000DCC74() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000E9C90 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_1000DCC74();

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

void sub_100065D44()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9.origin.x = v2;
  v9.origin.y = v4;
  v9.size.width = v6;
  v9.size.height = v8;
  ceil(ceil(CGRectGetWidth(v9)) * 0.25);
}

uint64_t sub_100065E3C()
{
  v0 = sub_1000DAFF4();
  sub_100007EF4(v0, qword_100123AD0);
  v1 = sub_100007EBC(v0, qword_100123AD0);
  if (qword_10011FA58 != -1)
  {
    swift_once();
  }

  v2 = sub_100007EBC(v0, qword_1001270C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_100065F04()
{
  sub_1000DCD24();
  sub_1000DA0E4();
  sub_100068394(&qword_1001202E8, &type metadata accessor for UUID);
  sub_1000DBDC4();
  return sub_1000DCD74();
}

uint64_t sub_100065FA0()
{
  sub_1000DA0E4();
  sub_100068394(&qword_1001202E8, &type metadata accessor for UUID);
  return sub_1000DBDC4();
}

Swift::Int sub_100066020()
{
  sub_1000DCD24();
  sub_1000DA0E4();
  sub_100068394(&qword_1001202E8, &type metadata accessor for UUID);
  sub_1000DBDC4();
  return sub_1000DCD74();
}

size_t sub_1000660C8(uint64_t a1, double a2)
{
  v5 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v2[OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager30MOSuggestionAssetMapsClusterer_skipRows] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager30MOSuggestionAssetMapsClusterer_skipColumns] = &_swiftEmptySetSingleton;
  v8 = &off_100123000;
  *&v2[OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager30MOSuggestionAssetMapsClusterer_inputClusters] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager30MOSuggestionAssetMapsClusterer_results] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager30MOSuggestionAssetMapsClusterer_separationThreshold] = a2;
  v9 = _s30MOSuggestionAssetMapsClustererCMa();
  v52.receiver = v2;
  v52.super_class = v9;
  v10 = objc_msgSendSuper2(&v52, "init");
  v11 = v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v51 = _swiftEmptyArrayStorage;
    v38 = v10;
    v13 = v10;
    result = sub_1000178A8(0, v12, 0);
    v15 = 0;
    v16 = v51;
    v17 = a1 + 48;
    v39 = v12;
    v40 = a1;
    while (v15 < *(a1 + 16))
    {
      v18 = *(v17 - 16);
      v19 = *(v17 - 8);
      v21 = *v17;
      v20 = *(v17 + 8);
      v22 = *(v17 + 16);
      v23 = *(v17 + 32);
      v45 = *(v17 + 24);
      v46 = *(v17 + 40);
      v24 = *(v17 + 48);
      if (v22)
      {
        v20 = 1;
      }

      v43 = v21;
      v44 = v20;
      v48 = v15;
      v25 = v21;

      v49 = sub_1000DCC44();
      v50 = v26;
      v53._countAndFlagsBits = 95;
      v53._object = 0xE100000000000000;
      sub_1000DBFE4(v53);
      v47 = v16;
      v27 = v49;
      v28 = v50;
      v29 = v42;
      v30 = v25;

      sub_1000DA0D4();

      *v7 = v18;
      v7[1] = v19;
      v32 = v43;
      v31 = v44;
      v7[2] = 0;
      v7[3] = v31;
      v7[4] = v27;
      v7[5] = v28;
      v16 = v47;
      *(v7 + v29[9]) = v32;
      v33 = (v7 + v29[10]);
      *v33 = v45;
      v33[1] = v23;
      *(v7 + v29[11]) = v46;
      *(v7 + v29[12]) = v24;
      v51 = v16;
      v35 = *(v16 + 2);
      v34 = *(v16 + 3);
      if (v35 >= v34 >> 1)
      {
        sub_1000178A8(v34 > 1, v35 + 1, 1);
        v16 = v51;
      }

      ++v15;
      *(v16 + 2) = v35 + 1;
      result = sub_100010628(v7, v16 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v35);
      v17 += 72;
      a1 = v40;
      if (v39 == v15)
      {

        v8 = &off_100123000;
        v11 = v38;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = v10;

    v16 = _swiftEmptyArrayStorage;
LABEL_11:
    *(v8[351] + v11) = v16;

    return v11;
  }

  return result;
}

uint64_t sub_1000663E0()
{
  v1 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v115 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v114 = v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v113 = v105 - v5;
  v6 = __chkstk_darwin(v4);
  v112 = v105 - v7;
  v8 = __chkstk_darwin(v6);
  v110 = v105 - v9;
  v10 = __chkstk_darwin(v8);
  v11 = __chkstk_darwin(v10);
  v111 = v105 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = v105 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = v105 - v17;
  result = __chkstk_darwin(v16);
  v22 = v105 - v21;
  v23 = *(v0 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager30MOSuggestionAssetMapsClusterer_inputClusters);
  v130 = v23;
  v24 = v23[2];
  if (!v24)
  {
LABEL_108:
    __break(1u);
    return result;
  }

  v117 = v24 - 1;
  if (v24 != 1)
  {
    v106 = v20;
    v105[0] = result;
    v127 = v0;
    v109 = OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager30MOSuggestionAssetMapsClusterer_separationThreshold;
    v107 = OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager30MOSuggestionAssetMapsClusterer_results;
    v125 = OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager30MOSuggestionAssetMapsClusterer_skipColumns;
    v126 = OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager30MOSuggestionAssetMapsClusterer_skipRows;

    v25 = 0;
    v108 = 0;
    v121 = v18;
    v123 = v22;
    v116 = v15;
    while (2)
    {
      v122 = v23;
      v119 = v25 + 1;
      result = sub_100069FE4(&v130);
      v26 = 0;
      v27 = result + 32;
      v120 = result;
      v28 = *(result + 16);
      v124 = -1;
      v29 = 1.79769313e308;
      v30 = -1;
      v31 = v127;
LABEL_7:
      v32 = v26;
      while (v28 != v32)
      {
        if (v32 >= v28)
        {
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        v26 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_93;
        }

        v33 = *(v27 + 8 * v32);
        v34 = *(v33 + 16);
        ++v32;
        if (v34)
        {
          v35 = 0;
          v36 = v33 + 32;
          v37 = v32 - 1;
          while (1)
          {
            v38 = *(v36 + 8 * v35);
            v39 = *(v31 + v126);
            if (*(v39 + 16))
            {
              result = sub_1000DCD14();
              v40 = -1 << *(v39 + 32);
              v41 = result & ~v40;
              if ((*(v39 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
              {
                v42 = ~v40;
                v31 = v127;
                while (*(*(v39 + 48) + 8 * v41) + 1 != v32)
                {
                  v41 = (v41 + 1) & v42;
                  if (((*(v39 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
                  {
                    goto LABEL_21;
                  }
                }

                goto LABEL_13;
              }

              v31 = v127;
            }

LABEL_21:
            v43 = *(v31 + v125);
            if (*(v43 + 16))
            {
              result = sub_1000DCD14();
              v44 = -1 << *(v43 + 32);
              v45 = result & ~v44;
              if ((*(v43 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
              {
                v46 = ~v44;
                v31 = v127;
                while (*(*(v43 + 48) + 8 * v45) != v35)
                {
                  v45 = (v45 + 1) & v46;
                  if (((*(v43 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
                  {
                    goto LABEL_26;
                  }
                }

                goto LABEL_13;
              }

              v31 = v127;
              if (v28 >= 2)
              {
LABEL_29:
                if (v35 < v37 && v37 >= 1)
                {
                  if (v38 >= v29)
                  {
                    v47 = v29;
                  }

                  else
                  {
                    v47 = v38;
                  }

                  v48 = v124;
                  if (v38 >= v29)
                  {
                    v49 = v124;
                  }

                  else
                  {
                    v49 = v35;
                  }

                  if (v38 >= v29)
                  {
                    v50 = v30;
                  }

                  else
                  {
                    v50 = v32 - 1;
                  }

                  if (v35 < v28)
                  {
                    v29 = v47;
                    v48 = v49;
                  }

                  v124 = v48;
                  if (v35 < v28)
                  {
                    v30 = v50;
                  }
                }
              }
            }

            else
            {
LABEL_26:
              if (v28 >= 2)
              {
                goto LABEL_29;
              }
            }

LABEL_13:
            if (++v35 == v34)
            {
              v18 = v121;
              v22 = v123;
              goto LABEL_7;
            }
          }
        }
      }

      v51 = v116;
      v52 = v124;
      if (v30 == -1 && v124 == -1)
      {

LABEL_5:
        v23 = v122;
        v25 = v119;
        if (v119 != v117)
        {
          continue;
        }
      }

      break;
    }

    v53 = v122;
    if ((v30 & 0x8000000000000000) != 0)
    {
      goto LABEL_95;
    }

    v54 = v122[2];
    if (v30 >= v54)
    {
LABEL_96:
      __break(1u);
    }

    else
    {
      v55 = (*(v115 + 80) + 32) & ~*(v115 + 80);
      v56 = *(v115 + 72);
      result = sub_100010568(v122 + v55 + v56 * v30, v22);
      if (v52 < v54)
      {
        v118 = v56;
        v57 = sub_100010568(v53 + v55 + v56 * v52, v18);
        if (v29 >= *(v127 + v109) * *(v127 + v109))
        {

          v61 = v114;
          sub_100010568(v22, v114);
          swift_beginAccess();
          v62 = v113;
          sub_10000A5E8(v113, v61);
          sub_1000105CC(v62);
          sub_100010568(v18, v61);
          sub_10000A5E8(v62, v61);
          sub_1000105CC(v62);
          swift_endAccess();
LABEL_74:
          sub_1000105CC(v18);
          sub_1000105CC(v22);
          goto LABEL_5;
        }

        __chkstk_darwin(v57);
        v105[-2] = v22;
        v105[-1] = v18;
        v58 = v108;
        result = sub_1000683DC(sub_10006A808, &v105[-4], v53);
        v108 = v58;
        v105[1] = v105;
        if (v59)
        {
          v124 = v53[2];
          v60 = v105[0];
        }

        else
        {
          v63 = result + 1;
          v60 = v105[0];
          v64 = v118;
          if (__OFADD__(result, 1))
          {
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          v124 = result;
          v66 = v53 + 2;
          v65 = v53[2];
          if (v63 != v65)
          {
            v99 = v55 + v118 * v63;
            while (v63 < v65)
            {
              sub_100010568(v53 + v99, v51);
              if (sub_1000DA0B4())
              {
                result = sub_1000105CC(v51);
              }

              else
              {
                v100 = sub_1000DA0B4();
                result = sub_1000105CC(v51);
                if ((v100 & 1) == 0)
                {
                  v101 = v124;
                  if (v63 != v124)
                  {
                    if (v124 < 0)
                    {
                      goto LABEL_103;
                    }

                    v102 = v55;
                    v103 = *v66;
                    if (v124 >= *v66)
                    {
                      goto LABEL_104;
                    }

                    v104 = v124 * v118;
                    result = sub_100010568(v53 + v102 + v124 * v118, v106);
                    if (v63 >= v103)
                    {
                      goto LABEL_105;
                    }

                    sub_100010568(v53 + v99, v110);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v53 = sub_10004206C(v53);
                    }

                    v55 = v102;
                    result = sub_10006A7A4(v110, v53 + v102 + v104);
                    if (v63 >= v53[2])
                    {
                      goto LABEL_106;
                    }

                    result = sub_10006A7A4(v106, v53 + v99);
                    v64 = v118;
                    v101 = v124;
                  }

                  v124 = v101 + 1;
                }
              }

              ++v63;
              v66 = v53 + 2;
              v65 = v53[2];
              v99 += v64;
              if (v63 == v65)
              {
                goto LABEL_57;
              }
            }

            goto LABEL_94;
          }
        }

LABEL_57:

        v67 = v53[2];
        v68 = v124 - v67;
        if (v124 <= v67)
        {
          if ((v124 & 0x8000000000000000) == 0)
          {
            v69 = v53[2];
            if (v69 >= v67)
            {
              v70 = v69 + v68;
              if (!__OFADD__(v69, v68))
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v130 = v53;
                if (isUniquelyReferenced_nonNull_native && v70 <= v53[3] >> 1)
                {
                  v122 = v53;
                }

                else
                {
                  if (v69 <= v70)
                  {
                    v72 = v70;
                  }

                  else
                  {
                    v72 = v69;
                  }

                  v122 = sub_100047118(isUniquelyReferenced_nonNull_native, v72, 1, v53);
                  v130 = v122;
                }

                result = sub_100042094(v124, v67, 0);
                v73 = v60[9];
                v74 = v123;
                v75 = *&v123[v73];
                v76 = v75;
                v77 = v121;
                if (!v75)
                {
                  v76 = *&v121[v73];
                  result = v76;
                }

                v78 = *(v74 + 3);
                v79 = *(v77 + 3);
                v80 = v78 + v79;
                if (!__OFADD__(v78, v79))
                {
                  v81 = (*(v74 + 1) + *(v77 + 1)) * 0.5;
                  v82 = (*v74 + *v77) * 0.5;
                  v83 = *(v74 + 4);
                  v84 = *(v74 + 5);
                  v85 = *(v77 + 4);
                  v86 = *(v77 + 5);
                  v128 = v83;
                  v129 = v84;
                  v87 = v75;

                  v131._countAndFlagsBits = v85;
                  v131._object = v86;
                  sub_1000DBFE4(v131);
                  v88 = v128;
                  v89 = v129;
                  v90 = v111;
                  sub_1000DA0D4();
                  *v90 = v82;
                  *(v90 + 8) = v81;
                  *(v90 + 16) = v29;
                  *(v90 + 24) = v80;
                  *(v90 + 32) = v88;
                  *(v90 + 40) = v89;
                  *(v90 + v60[9]) = v76;
                  v91 = (v90 + v60[10]);
                  *v91 = 0;
                  v91[1] = 0xE000000000000000;
                  *(v90 + v60[11]) = 0;
                  *(v90 + v60[12]) = 0;
                  sub_100010568(v90, v112);
                  v92 = v122;
                  v94 = v122[2];
                  v93 = v122[3];
                  if (v94 >= v93 >> 1)
                  {
                    v92 = sub_100047118(v93 > 1, v94 + 1, 1, v122);
                  }

                  v95 = v118;
                  v92[2] = v94 + 1;
                  sub_100010628(v112, v92 + v55 + v94 * v95);
                  v122 = v92;
                  v130 = v92;
                  v96 = v111;
                  v97 = v114;
                  sub_100010568(v111, v114);
                  swift_beginAccess();
                  v98 = v113;
                  sub_10000A5E8(v113, v97);
                  sub_1000105CC(v98);
                  swift_endAccess();
                  sub_1000105CC(v96);
                  v18 = v121;
                  v22 = v123;
                  goto LABEL_74;
                }

                goto LABEL_102;
              }

LABEL_101:
              __break(1u);
LABEL_102:
              __break(1u);
LABEL_103:
              __break(1u);
LABEL_104:
              __break(1u);
LABEL_105:
              __break(1u);
LABEL_106:
              __break(1u);
              goto LABEL_107;
            }

LABEL_100:
            __break(1u);
            goto LABEL_101;
          }

LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

LABEL_98:
        __break(1u);
        goto LABEL_99;
      }
    }

    __break(1u);
    goto LABEL_98;
  }

  return result;
}

uint64_t sub_100066DF4()
{
  _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  if (sub_1000DA0B4())
  {
    return 1;
  }

  else
  {
    return sub_1000DA0B4() & 1;
  }
}

double *sub_100066E70()
{
  v120 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v122 = *(v120 - 1);
  v0 = __chkstk_darwin(v120);
  v125 = v105 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __chkstk_darwin(v0);
  v4 = v105 - v3;
  v5 = __chkstk_darwin(v2);
  v114 = v105 - v6;
  v7 = __chkstk_darwin(v5);
  v108 = v105 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = (v105 - v10);
  __chkstk_darwin(v9);
  v13 = (v105 - v12);
  v131 = 0;
  v132 = 0xE000000000000000;
  if (qword_10011FA88 != -1)
  {
    goto LABEL_103;
  }

LABEL_2:
  v14 = sub_1000DAFF4();
  sub_100007EBC(v14, qword_100123AD0);
  v15 = sub_1000DAFD4();
  v16 = sub_1000DC4E4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = 0x3FE0000000000000;
    _os_log_impl(&_mh_execute_header, v15, v16, "[MOSuggestionAssetMapsClusterer] using POI penalty: %f", v17, 0xCu);
  }

  v18 = OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager30MOSuggestionAssetMapsClusterer_results;
  v19 = v121;
  swift_beginAccess();
  v20 = *(v18 + v19);
  v21 = &off_100123000;
  if (*(v20 + 16))
  {
    v126 = v18;
    v22 = 1 << *(v20 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v20 + 56);
    v25 = (v22 + 63) >> 6;

    v26 = 0;
    v27 = 0.0;
LABEL_10:
    if (v24)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
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
LABEL_103:
        swift_once();
        goto LABEL_2;
      }

      if (v29 >= v25)
      {
        break;
      }

      v24 = *(v20 + 56 + 8 * v29);
      ++v26;
      if (v24)
      {
        v26 = v29;
LABEL_15:
        sub_100010568(*(v20 + 48) + *(v122 + 72) * (__clz(__rbit64(v24)) | (v26 << 6)), v13);
        v30 = v13[2];
        v31 = *(v13 + v120[9]);
        v32 = v31;
        sub_1000105CC(v13);
        if (v31)
        {

          v28 = 0.5;
        }

        else
        {
          v28 = -0.5;
        }

        v24 &= v24 - 1;
        v27 = v27 + v30 * (1.0 - v28);
        goto LABEL_10;
      }
    }

    v33 = *(v126 + v121);
    v34 = *(v33 + 16);
    if (v34)
    {
      v35 = sub_1000D7818(*(v33 + 16), 0);
      v126 = sub_1000D85A8(&v127, v35 + ((*(v122 + 80) + 32) & ~*(v122 + 80)), v34, v33);
      swift_bridgeObjectRetain_n();
      sub_100027E40();
      if (v126 != v34)
      {
        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {

      v35 = _swiftEmptyArrayStorage;
    }

    v127 = v35;
    v13 = 0;
    sub_1000684C8(&v127);

    v37 = v127;
    v38 = *(v127 + 2);
    if (v38)
    {
      v39 = 0;
      v40 = v27 / v34;
      v117 = OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager30MOSuggestionAssetMapsClusterer_inputClusters;
      v36 = v122;
      v116 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v41 = v127 + v116;
      v105[2] = MKPointOfInterestCategoryReligiousSite;
      v126 = _swiftEmptyArrayStorage;
      v113 = v127;
      v112 = v38;
      v111 = v127 + v116;
      v119 = v11;
      while (1)
      {
        if (v39 >= *(v37 + 2))
        {
          goto LABEL_99;
        }

        v42 = *(v36 + 72);
        sub_100010568(&v41[v42 * v39], v11);
        v43 = v11[2];
        if (v43 >= v40)
        {
          goto LABEL_26;
        }

        v123 = v42;
        v127 = v131;
        v128 = v132;
        v13 = *(v11 + 4);
        v11 = *(v11 + 5);
        v129 = v13;
        v130 = v11;
        sub_100007C50();
        if (sub_1000DC854())
        {
          v11 = v119;
          goto LABEL_25;
        }

        v118 = v13;
        v127 = v13;
        v128 = v11;
        v129 = 95;
        v130 = 0xE100000000000000;
        v44 = sub_1000DC824();
        if (!*(v44 + 16))
        {
          goto LABEL_101;
        }

        v45 = v44;
        v13 = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_100042080(v45);
        }

        v11 = v119;
        v46 = *(v45 + 2);
        if (!v46)
        {
          goto LABEL_102;
        }

        *(v45 + 2) = v46 - 1;

        v47 = *(v45 + 2);
        if (!v47)
        {

          v52 = 0;
          goto LABEL_83;
        }

        v48 = 0;
        v115 = 0;
        v124 = 0;
        v49 = (v45 + 40);
        v50 = 0.0;
        v51 = 0.0;
        do
        {
          v54 = *(v49 - 1);
          v55 = *v49;
          if (v54)
          {
            v56 = 0;
          }

          else
          {
            v56 = v55 == 0xE000000000000000;
          }

          if (!v56 && (sub_1000DCC74() & 1) == 0)
          {

            v57 = sub_100067C14(v54, v55);
            if ((v58 & 1) == 0 && (v57 & 0x8000000000000000) == 0)
            {
              v59 = *(v121 + v117);
              if (v57 < *(v59 + 16))
              {
                v60 = (v59 + v116 + v57 * v123);
                v62 = *v60;
                v61 = v60[1];
                v63 = *(v60 + v120[9]);
                if (v63)
                {
                  v64 = v63;
                  if (v115 <= 0)
                  {
                    v109 = v64;
                    v65 = [v109 pointOfInterestCategory];
                    v110 = v13;
                    if (v65)
                    {
                      v66 = v65;
                      v106 = sub_1000DBF44();
                      v68 = v67;
                      v69 = sub_1000DBF44();
                      v107 = v68;
                      if (v106 == v69 && v68 == v70)
                      {

                        v13 = v110;
                        goto LABEL_38;
                      }

                      v105[1] = v70;
                      LODWORD(v106) = sub_1000DCC74();

                      v13 = v110;
                      if (v106)
                      {
                        v66 = v109;
                        goto LABEL_38;
                      }
                    }

                    v66 = v109;
                    v72 = [v109 _styleAttributes];
                    if (v72)
                    {

                      v73 = v120;
                      v74 = (v11 + v120[10]);
                      v75 = v74[1];
                      v115 = *v74;
                      v109 = v75;
                      v107 = v120[8];

                      v76 = v108;
                      sub_1000DA0D4();
                      *v76 = v62;
                      *(v76 + 8) = v61;
                      *(v76 + 16) = v43;
                      *(v76 + 24) = 1;
                      v77 = v110;
                      *(v76 + 32) = v118;
                      *(v76 + 40) = v77;
                      *(v76 + v73[9]) = v63;
                      v78 = (v76 + v73[10]);
                      v79 = v109;
                      *v78 = v115;
                      v78[1] = v79;
                      *(v76 + v73[11]) = 0;
                      *(v76 + v73[12]) = 0;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v126 = sub_100047118(0, *(v126 + 2) + 1, 1, v126);
                      }

                      v81 = *(v126 + 2);
                      v80 = *(v126 + 3);
                      if (v81 >= v80 >> 1)
                      {
                        v126 = sub_100047118(v80 > 1, v81 + 1, 1, v126);
                      }

                      v82 = v126;
                      *(v126 + 2) = v81 + 1;
                      sub_100010628(v108, v82 + v116 + v81 * v123);
                      if (v51 != 0.0)
                      {
                        v51 = v51 + (v51 - v62) / 7.0;
                      }

                      v13 = v110;
                      if (v50 != 0.0)
                      {
                        v50 = v50 + (v50 - v61) / 7.0;
                      }

                      v115 = 1;
LABEL_46:
                      v124 = v63;
                      goto LABEL_47;
                    }

LABEL_38:
                  }
                }

                if (v51 == 0.0)
                {
                  v51 = v62;
                }

                else
                {
                  v51 = (v51 + v62) * 0.5;
                }

                if (v50 == 0.0)
                {
                  v50 = v61;
                }

                else
                {
                  v50 = (v50 + v61) * 0.5;
                }

                if (__OFADD__(v48++, 1))
                {
                  goto LABEL_100;
                }

                goto LABEL_46;
              }
            }
          }

LABEL_47:
          v49 += 2;
          --v47;
        }

        while (v47);

        v41 = v111;
        if (v48 < 1)
        {
          v37 = v113;
          v38 = v112;
        }

        else
        {
          v83 = v120;
          v84 = (v11 + v120[10]);
          v85 = v84[1];
          v115 = *v84;
          v86 = v124;
          v87 = v124;

          v88 = v114;
          sub_1000DA0D4();
          *v88 = v51;
          *(v88 + 8) = v50;
          *(v88 + 16) = v43;
          v89 = v118;
          *(v88 + 24) = v48;
          *(v88 + 32) = v89;
          *(v88 + 40) = v13;
          *(v88 + v83[9]) = v86;
          v90 = (v88 + v83[10]);
          *v90 = v115;
          v90[1] = v85;
          *(v88 + v83[11]) = 0;
          *(v88 + v83[12]) = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v126 = sub_100047118(0, *(v126 + 2) + 1, 1, v126);
          }

          v92 = *(v126 + 2);
          v91 = *(v126 + 3);
          v37 = v113;
          v38 = v112;
          v11 = v119;
          if (v92 >= v91 >> 1)
          {
            v126 = sub_100047118(v91 > 1, v92 + 1, 1, v126);
          }

          v93 = v126;
          *(v126 + 2) = v92 + 1;
          sub_100010628(v114, v93 + v116 + v92 * v123);
        }

        v52 = v124;
LABEL_83:
        v133._countAndFlagsBits = v118;
        v133._object = v13;
        sub_1000DBFE4(v133);

LABEL_25:
        v36 = v122;
LABEL_26:
        ++v39;
        sub_1000105CC(v11);
        if (v39 == v38)
        {

          goto LABEL_86;
        }
      }
    }

    v126 = _swiftEmptyArrayStorage;
    v36 = v122;
LABEL_86:
    v21 = &off_100123000;
  }

  else
  {
LABEL_20:
    v126 = _swiftEmptyArrayStorage;
    v36 = v122;
  }

  v94 = *(v21[351] + v121);
  v95 = *(v94 + 16);
  if (v95)
  {
    v96 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v97 = v94 + v96;
    v98 = *(v36 + 72);
    v124 = *(v21[351] + v121);

    do
    {
      sub_100010568(v97, v4);
      v127 = v131;
      v128 = v132;
      v100 = *(v4 + 4);
      v101 = *(v4 + 5);
      v129 = v100;
      v130 = v101;
      sub_100007C50();
      if ((sub_1000DC854() & 1) == 0)
      {
        sub_100010568(v4, v125);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v126 = sub_100047118(0, *(v126 + 2) + 1, 1, v126);
        }

        v103 = *(v126 + 2);
        v102 = *(v126 + 3);
        if (v103 >= v102 >> 1)
        {
          v126 = sub_100047118(v102 > 1, v103 + 1, 1, v126);
        }

        v99 = v126;
        *(v126 + 2) = v103 + 1;
        sub_100010628(v125, v99 + v96 + v103 * v98);
        v134._countAndFlagsBits = v100;
        v134._object = v101;
        sub_1000DBFE4(v134);
      }

      sub_1000105CC(v4);
      v97 += v98;
      --v95;
    }

    while (v95);
  }

  return v126;
}

uint64_t sub_100067C14(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1000DCA74();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_100069548(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

id sub_100067F44()
{
  v2.receiver = v0;
  v2.super_class = _s30MOSuggestionAssetMapsClustererCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10006801C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000DA0E4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000680DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000DA0E4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s30MOSuggestionAssetMapsClustererC7ClusterVMa()
{
  result = qword_100123B90;
  if (!qword_100123B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000681CC()
{
  sub_100068298();
  if (v0 <= 0x3F)
  {
    sub_1000DA0E4();
    if (v1 <= 0x3F)
    {
      sub_1000682F4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100068298()
{
  if (!qword_100123BA0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100123BA0);
    }
  }
}

void sub_1000682F4()
{
  if (!qword_100123BA8)
  {
    sub_100062710();
    v0 = sub_1000DC7C4();
    if (!v1)
    {
      atomic_store(v0, &qword_100123BA8);
    }
  }
}

uint64_t sub_100068394(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000683DC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(_s30MOSuggestionAssetMapsClustererC7ClusterVMa() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

Swift::Int sub_1000684C8(void **a1)
{
  v2 = *(_s30MOSuggestionAssetMapsClustererC7ClusterVMa() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10007023C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100068570(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100068570(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_1000DCC34(v2);
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
        _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
        v6 = sub_1000DC174();
        *(v6 + 2) = v5;
      }

      v7 = *(_s30MOSuggestionAssetMapsClustererC7ClusterVMa() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1000688A0(v8, v9, a1, v4);
      v6[2] = 0.0;
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
    return sub_10006869C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10006869C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v9 = __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = (&v29 - v13);
  result = __chkstk_darwin(v12);
  v18 = (&v29 - v17);
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v35 = a3;
    v32 = v24;
    v33 = v23;
    v25 = v23;
    v34 = v21;
    while (1)
    {
      sub_100010568(v24, v18);
      sub_100010568(v21, v14);
      v26 = v18[2];
      v27 = v14[2];
      sub_1000105CC(v14);
      result = sub_1000105CC(v18);
      if (v27 >= v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      sub_100010628(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_100010628(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000688A0(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v118 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v114 = *(v118 - 8);
  v9 = __chkstk_darwin(v118);
  v110 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v117 = &v103 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = (&v103 - v14);
  result = __chkstk_darwin(v13);
  v18 = (&v103 - v17);
  v116 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_94:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_10006FF18(v21);
      v21 = result;
    }

    v119 = v21;
    v99 = *(v21 + 2);
    if (v99 >= 2)
    {
      while (*v116)
      {
        v100 = v21[2 * v99];
        v101 = v21[2 * v99 + 3];
        sub_1000690E4(*v116 + *(v114 + 72) * *&v100, *v116 + *(v114 + 72) * *&v21[2 * v99 + 2], *v116 + *(v114 + 72) * *&v101, v5);
        if (v6)
        {
        }

        if (*&v101 < *&v100)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_10006FF18(v21);
        }

        if (v99 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v102 = &v21[2 * v99];
        *v102 = v100;
        v102[1] = v101;
        v119 = v21;
        result = sub_10006FE8C(v99 - 1);
        v21 = v119;
        v99 = *(v119 + 2);
        if (v99 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v106 = a4;
  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    if (v23 >= v19)
    {
      v19 = v23;
    }

    else
    {
      v24 = v22;
      v25 = *v116;
      v26 = *(v114 + 72);
      v5 = *v116 + v26 * v23;
      sub_100010568(v5, v18);
      sub_100010568(v25 + v26 * v24, v15);
      v27 = v18[2];
      v28 = v15[2];
      sub_1000105CC(v15);
      result = sub_1000105CC(v18);
      v107 = v24;
      v29 = v24 + 2;
      v115 = v26;
      v30 = v25 + v26 * v29;
      while (v19 != v29)
      {
        sub_100010568(v30, v18);
        sub_100010568(v5, v15);
        v31 = v18[2];
        v32 = v15[2];
        sub_1000105CC(v15);
        result = sub_1000105CC(v18);
        ++v29;
        v30 += v115;
        v5 += v115;
        if (v28 < v27 == v32 >= v31)
        {
          v19 = v29 - 1;
          break;
        }
      }

      v22 = v107;
      if (v28 < v27)
      {
        if (v19 < v107)
        {
          goto LABEL_123;
        }

        if (v107 < v19)
        {
          v104 = v21;
          v105 = v6;
          v33 = v115 * (v19 - 1);
          v34 = v19 * v115;
          v113 = v19;
          v35 = v19;
          v36 = v107;
          v37 = v107 * v115;
          do
          {
            if (v36 != --v35)
            {
              v5 = *v116;
              if (!*v116)
              {
                goto LABEL_129;
              }

              sub_100010628(v5 + v37, v110);
              if (v37 < v33 || v5 + v37 >= v5 + v34)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_100010628(v110, v5 + v33);
            }

            ++v36;
            v33 -= v115;
            v34 -= v115;
            v37 += v115;
          }

          while (v36 < v35);
          v21 = v104;
          v6 = v105;
          v22 = v107;
          v19 = v113;
        }
      }
    }

    v38 = v116[1];
    if (v19 < v38)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_122;
      }

      if (v19 - v22 < v106)
      {
        if (__OFADD__(v22, v106))
        {
          goto LABEL_124;
        }

        if (v22 + v106 >= v38)
        {
          v39 = v116[1];
        }

        else
        {
          v39 = v22 + v106;
        }

        if (v39 < v22)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v19 != v39)
        {
          break;
        }
      }
    }

    v40 = v19;
    if (v19 < v22)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10004724C(0, *(v21 + 2) + 1, 1, v21);
      v21 = result;
    }

    v42 = *(v21 + 2);
    v41 = *(v21 + 3);
    v5 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_10004724C((v41 > 1), v42 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v43 = &v21[2 * v42];
    *(v43 + 4) = v22;
    *(v43 + 5) = v40;
    v44 = *v108;
    if (!*v108)
    {
      goto LABEL_131;
    }

    v111 = v40;
    if (v42)
    {
      while (1)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v46 = *(v21 + 4);
          v47 = *(v21 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_52:
          if (v49)
          {
            goto LABEL_110;
          }

          v62 = &v21[2 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_113;
          }

          v68 = &v21[2 * v45 + 4];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_117;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v72 = &v21[2 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_66:
        if (v67)
        {
          goto LABEL_112;
        }

        v75 = &v21[2 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_115;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_73:
        v83 = v45 - 1;
        if (v45 - 1 >= v5)
        {
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
          goto LABEL_125;
        }

        if (!*v116)
        {
          goto LABEL_128;
        }

        v84 = *&v21[2 * v83 + 4];
        v5 = *&v21[2 * v45 + 5];
        sub_1000690E4(*v116 + *(v114 + 72) * v84, *v116 + *(v114 + 72) * *&v21[2 * v45 + 4], *v116 + *(v114 + 72) * v5, v44);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_10006FF18(v21);
        }

        if (v83 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v85 = &v21[2 * v83];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v119 = v21;
        result = sub_10006FE8C(v45);
        v21 = v119;
        v5 = *(v119 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v21[2 * v5 + 4];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_108;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_109;
      }

      v57 = &v21[2 * v5];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_111;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_114;
      }

      if (v61 >= v53)
      {
        v79 = &v21[2 * v45 + 4];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_118;
        }

        if (v48 < v82)
        {
          v45 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v116[1];
    v20 = v111;
    if (v111 >= v19)
    {
      goto LABEL_94;
    }
  }

  v104 = v21;
  v105 = v6;
  v86 = *v116;
  v87 = *(v114 + 72);
  v88 = *v116 + v87 * (v19 - 1);
  v89 = v19;
  v90 = -v87;
  v107 = v22;
  v91 = v22 - v89;
  v113 = v89;
  v109 = v87;
  v92 = v86 + v89 * v87;
  v111 = v39;
LABEL_85:
  v5 = v92;
  v112 = v91;
  v93 = v91;
  v115 = v88;
  v94 = v88;
  while (1)
  {
    sub_100010568(v5, v18);
    sub_100010568(v94, v15);
    v95 = v18[2];
    v96 = v15[2];
    sub_1000105CC(v15);
    result = sub_1000105CC(v18);
    if (v96 >= v95)
    {
LABEL_84:
      v88 = v115 + v109;
      v91 = v112 - 1;
      v92 += v109;
      v40 = v111;
      if (++v113 != v111)
      {
        goto LABEL_85;
      }

      v21 = v104;
      v6 = v105;
      v22 = v107;
      if (v111 < v107)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v86)
    {
      break;
    }

    v97 = v117;
    sub_100010628(v5, v117);
    swift_arrayInitWithTakeFrontToBack();
    sub_100010628(v97, v94);
    v94 += v90;
    v5 += v90;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_1000690E4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v8 = __chkstk_darwin(v44);
  v45 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = (&v39 - v11);
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v48 = a1;
  v47 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v18;
    if (v18 >= 1)
    {
      v25 = -v14;
      v26 = a4 + v18;
      v42 = v25;
      v43 = a4;
      do
      {
        v40 = v24;
        v27 = a2 + v25;
        while (1)
        {
          if (a2 <= a1)
          {
            v48 = a2;
            v24 = v40;
            goto LABEL_57;
          }

          v29 = a3;
          v41 = v24;
          a3 += v25;
          v30 = v26 + v25;
          sub_100010568(v30, v12);
          v31 = v27;
          v32 = v27;
          v33 = v12;
          v34 = v45;
          sub_100010568(v32, v45);
          v35 = *(v33 + 16);
          v36 = *(v34 + 16);
          v37 = v34;
          v12 = v33;
          sub_1000105CC(v37);
          sub_1000105CC(v33);
          if (v36 < v35)
          {
            break;
          }

          v24 = v30;
          if (v29 < v26 || a3 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v24 = v30;
            v27 = v31;
          }

          else
          {
            v27 = v31;
            if (v29 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
              v24 = v30;
            }
          }

          v26 = v24;
          v28 = v30 > v43;
          v25 = v42;
          if (!v28)
          {
            goto LABEL_55;
          }
        }

        if (v29 < a2 || a3 >= a2)
        {
          a2 = v31;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v42;
        }

        else
        {
          v38 = v29 == a2;
          a2 = v31;
          v25 = v42;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v24 = v41;
      }

      while (v26 > v43);
    }

LABEL_55:
    v48 = a2;
LABEL_57:
    v46 = v24;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v46 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        sub_100010568(a2, v12);
        v21 = v45;
        sub_100010568(a4, v45);
        v22 = v12[2];
        v23 = *(v21 + 16);
        sub_1000105CC(v21);
        sub_1000105CC(v12);
        if (v23 >= v22)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v14;
          a4 += v14;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v48 = a1;
      }

      while (a4 < v19 && a2 < a3);
    }
  }

  sub_10006FF2C(&v48, &v47, &v46);
  return 1;
}

unsigned __int8 *sub_100069548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1000DC054();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100069AD4();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1000DCA74();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
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

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100069AD4()
{
  v0 = sub_1000DC064();
  v4 = sub_100069B54(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100069B54(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1000DC7F4();
    if (!v9 || (v10 = v9, v11 = sub_10001A9CC(v9, 0), v12 = sub_100069CAC(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1000DBFC4();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1000DBFC4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1000DCA74();
LABEL_4:

  return sub_1000DBFC4();
}

unint64_t sub_100069CAC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100069ECC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1000DC024();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1000DCA74();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100069ECC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1000DC004();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100069ECC(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1000DC034();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_1000DC014();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

double *sub_100069F48(double *result, uint64_t a2)
{
  if (a2 < 0)
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
    sub_100007BC0(&qword_100122410);
    v4 = sub_1000DC174();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t sub_100069FE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (v2)
  {
    v3 = sub_1000DC174();
    *(v3 + 2) = v2;
    memset_pattern16(v3 + 4, &unk_1000E3890, 8 * v2);
    v4 = *(v1 + 16);
  }

  else
  {
    v4 = 0;
    v3 = _swiftEmptyArrayStorage;
  }

  v5 = sub_100069F48(v3, v4);

  v7 = *(v1 + 16);
  if (v7)
  {
    v8 = v7 - 1;
    if (v7 == 1)
    {
      return v5;
    }

    v9 = 0;
    v30 = v1;
    v31 = v1 + 8;
    v10 = 5;
    v11 = 1;
    v12 = v7 - 1;
    v28 = v7 - 1;
    v29 = *(v1 + 16);
    while (v9 != v8)
    {
      v13 = *(v1 + 16);
      if (v7 > v13 || v9 + 1 >= v13)
      {
        goto LABEL_32;
      }

      v32 = v9 + 1;
      v15 = *(_s30MOSuggestionAssetMapsClustererC7ClusterVMa() - 8);
      v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v17 = *(v15 + 72);
      v18 = (v1 + v16 + v17 * v9);
      v33 = v11;
      v34 = v10;
      v19 = (v31 + v16 + v17 * v11);
      v20 = v12;
      do
      {
        v21 = *v18;
        v22 = v18[1];
        v24 = *(v19 - 1);
        v23 = *v19;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100042058(v5);
          v5 = result;
        }

        if (v9 >= *(v5 + 2))
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v25 = *&v5[v9 + 4];
        result = swift_isUniquelyReferenced_nonNull_native();
        *&v5[v9 + 4] = v25;
        if ((result & 1) == 0)
        {
          result = sub_100042044(v25);
          v25 = result;
          *&v5[v9 + 4] = result;
        }

        if ((v10 - 4) >= *(v25 + 16))
        {
          goto LABEL_28;
        }

        v26 = (v21 - v24) * (v21 - v24) + (v22 - v23) * (v22 - v23);
        *(v25 + 8 * v10) = v26;
        if ((v10 - 4) >= *(v5 + 2))
        {
          goto LABEL_29;
        }

        v27 = *&v5[v10];
        result = swift_isUniquelyReferenced_nonNull_native();
        *&v5[v10] = v27;
        if ((result & 1) == 0)
        {
          result = sub_100042044(v27);
          v27 = result;
          *&v5[v10] = result;
        }

        if (v9 >= *(v27 + 16))
        {
          goto LABEL_30;
        }

        *(v27 + 8 * v9 + 32) = v26;
        ++v10;
        v19 = (v19 + v17);
        --v20;
      }

      while (v20);
      --v12;
      v10 = v34 + 1;
      v11 = v33 + 1;
      ++v9;
      v8 = v28;
      v7 = v29;
      v1 = v30;
      if (v32 == v28)
      {
        return v5;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_10006A280(uint64_t a1, char a2, char a3, char a4, char a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v53 = *(a1 + 96);
    v10 = *(a1 + 48);
    v49 = *(a1 + 32);
    v50 = v10;
    v11 = *(a1 + 80);
    v51 = *(a1 + 64);
    v52 = v11;
    if (v5 == 1)
    {
      longitude = *(&v49 + 1);
      latitude = *&v49;
      if ((v51 & 1) == 0 && *(&v50 + 1) >= 2)
      {
        if (a5)
        {
          sub_100010450(&v49, v48);
          v14 = 0.01;
LABEL_23:
          v56.span.latitudeDelta = v14;
LABEL_29:
          v37 = 1.4;
LABEL_33:
          v38 = v56.span.latitudeDelta * v37;
          v39 = v14 * v37;
          if (a2)
          {
            v38 = v38 * 1.4;
            v39 = v39 * 0.9;
            latitude = latitude + v38 / -12.0;
          }

          if (a4)
          {
            v38 = v38 * 1.3;
          }

          if (a3)
          {
            v39 = v39 * 1.3;
          }

          v40 = fmin(v39, 180.0);
          v41 = fmin(v38, 180.0);
          if (!sub_1000103F0(latitude, longitude, v41, v40))
          {
            if (qword_10011FA88 != -1)
            {
              swift_once();
            }

            v42 = sub_1000DAFF4();
            sub_100007EBC(v42, qword_100123AD0);
            v43 = sub_1000DAFD4();
            v44 = sub_1000DC4C4();
            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              *v45 = 134218752;
              *(v45 + 4) = latitude;
              *(v45 + 12) = 2048;
              *(v45 + 14) = longitude;
              *(v45 + 22) = 2048;
              *(v45 + 24) = v41;
              *(v45 + 32) = 2048;
              *(v45 + 34) = v40;
              _os_log_impl(&_mh_execute_header, v43, v44, "[MapSnapshot] makeRegion failed with invalid region: centerLatitude = %f, centerLongitude = %f, targetLatitudeDelta = %f, targetLongitudeDelta = %f", v45, 0x2Au);
            }

            v57.origin.x = MKMapRectWorld.origin.x;
            v57.origin.y = MKMapRectWorld.origin.y;
            v57.size.width = MKMapRectWorld.size.width;
            v57.size.height = MKMapRectWorld.size.height;
            *&latitude = MKCoordinateRegionForMapRect(v57);
          }

          sub_1000104AC(&v49);
          return latitude;
        }

        sub_100010450(&v49, v48);
        v14 = 0.01;
LABEL_31:
        v56.span.latitudeDelta = v14;
        goto LABEL_32;
      }

      if (v53 <= 0.0)
      {
        if (a5)
        {
          sub_100010450(&v49, v48);
          v14 = 0.04;
          goto LABEL_23;
        }

        sub_100010450(&v49, v48);
        v14 = 0.04;
        goto LABEL_31;
      }

      v34 = v53 / 111000.0;
      if (v53 >= 150.0)
      {
        v36 = v34 * 3.0 + 0.003;
        if (v36 <= 0.1)
        {
          v35 = v36;
        }

        else
        {
          v35 = 0.1;
        }
      }

      else
      {
        v35 = v34 + v34 + 0.003;
      }

      sub_100010450(&v49, v48);
      v14 = v35;
      v56.span.latitudeDelta = v35;
      if (a5)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = (a1 + 32);
      sub_100010450(&v49, v48);
      v48[0] = _swiftEmptyArrayStorage;
      sub_10001790C(0, v5, 0);
      v20 = v48[0];
      v21 = *(v48[0] + 16);
      v22 = v5;
      do
      {
        v23 = *v19;
        v48[0] = v20;
        v24 = *(v20 + 24);
        if (v21 >= v24 >> 1)
        {
          v47 = v23;
          sub_10001790C((v24 > 1), v21 + 1, 1);
          v23 = v47;
          v20 = v48[0];
        }

        *(v20 + 16) = v21 + 1;
        *(v20 + 16 * v21 + 32) = v23;
        v19 = (v19 + 72);
        ++v21;
        --v22;
      }

      while (v22);
      v25 = [objc_opt_self() polygonWithCoordinates:v20 + 32 count:v5];

      [v25 boundingMapRect];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      v55.origin.x = v27;
      v55.origin.y = v29;
      v55.size.width = v31;
      v55.size.height = v33;
      *(&v14 - 3) = MKCoordinateRegionForMapRect(v55);
      latitude = v56.center.latitude;
      longitude = v56.center.longitude;
      if (a5)
      {
        goto LABEL_29;
      }
    }

LABEL_32:
    v37 = 1.1;
    goto LABEL_33;
  }

  if (qword_10011FA88 != -1)
  {
    swift_once();
  }

  v15 = sub_1000DAFF4();
  sub_100007EBC(v15, qword_100123AD0);
  v16 = sub_1000DAFD4();
  v17 = sub_1000DC4C4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "[MapSnapshot] makeRegion failed with 0 locations", v18, 2u);
  }

  v54.origin.x = MKMapRectNull.origin.x;
  v54.origin.y = MKMapRectNull.origin.y;
  v54.size.width = MKMapRectNull.size.width;
  v54.size.height = MKMapRectNull.size.height;
  *&latitude = MKCoordinateRegionForMapRect(v54);
  return latitude;
}

uint64_t sub_10006A7A4(uint64_t a1, uint64_t a2)
{
  v4 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10006A830()
{
  type metadata accessor for UniformDateBins(319);
  if (v0 <= 0x3F)
  {
    sub_10006AB4C();
    if (v1 <= 0x3F)
    {
      sub_1000DBD94();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10006A8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UniformDateBins(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100007BC0(&qword_100120AE8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10006AA20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UniformDateBins(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100007BC0(&qword_100120AE8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

void sub_10006AB4C()
{
  if (!qword_100123C80)
  {
    sub_1000DA084();
    sub_10006ABB0();
    v0 = sub_1000DBE54();
    if (!v1)
    {
      atomic_store(v0, &qword_100123C80);
    }
  }
}

unint64_t sub_10006ABB0()
{
  result = qword_100120AE0;
  if (!qword_100120AE0)
  {
    sub_1000DA084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120AE0);
  }

  return result;
}

uint64_t sub_10006AD3C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void *, void, void *)@<X2>, uint64_t a3@<X8>)
{
  result = sub_10006AC24(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  return result;
}

void (*sub_10006AD70(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  v6 = v5;
  *a1 = v5;
  sub_100007C08(&qword_100120AE8);
  v7 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6[4] = TupleTypeMetadata2;
  v9 = *(TupleTypeMetadata2 - 8);
  v6[5] = v9;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v11 = v10;
  v6[6] = v10;
  v12 = sub_10006AF64(v6);
  v14 = v13;
  v6[7] = v12;
  sub_10006B688(v15, v11);
  (*(*(v7 - 8) + 16))(v11 + *(TupleTypeMetadata2 + 48), v14, v7);
  return sub_10006AEEC;
}

void sub_10006AEEC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_10006AF64(uint64_t *a1))(void *a1)
{
  sub_100007C08(&qword_100120AE8);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v3 = *(TupleTypeMetadata2 - 8);
  a1[1] = v3;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_10006ACA8(v4);
  return sub_10006B084;
}

void sub_10006B084(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

void sub_10006B0E0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

uint64_t sub_10006B180@<X0>(uint64_t a1@<X8>)
{
  result = sub_10006AC68();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t sub_10006B1C0(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = sub_10006AC68();
  v7 = v6;
  v9 = v8;
  result = sub_100020EA0(v2, v3, v4);
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9 & 1;
  return result;
}

uint64_t sub_10006B23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = a2 + *(sub_1000DCAF4() + 36);
  v7 = sub_10006AC24(a1, &Dictionary.startIndex.getter);
  v9 = v8;
  v11 = v10;
  result = (*(v5 + 8))(v2, a1);
  *v6 = v7;
  *(v6 + 8) = v9;
  *(v6 + 16) = v11 & 1;
  return result;
}

uint64_t sub_10006B358(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t sub_10006B3B4(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = sub_10006B6F8();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t sub_10006B4D8()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1000DBE14();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1000DC3A4();
  result = sub_1000DBE14();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_10006B5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1000DBE14();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_10006B688(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_100120AE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10006B710()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PodcastAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PodcastAsset()
{
  result = qword_100123CB0;
  if (!qword_100123CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10006B818()
{
  v1 = sub_1000DA124();
  __chkstk_darwin(v1 - 8);
  v54[1] = v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000DBED4();
  __chkstk_darwin(v3 - 8);
  v4 = sub_100007BC0(&qword_1001203B8);
  __chkstk_darwin(v4 - 8);
  v55 = v54 - v5;
  v6 = sub_100007BC0(&qword_100121580);
  __chkstk_darwin(v6 - 8);
  v8 = v54 - v7;
  v9 = sub_1000DAF04();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007BC0(&qword_100120518);
  __chkstk_darwin(v13 - 8);
  v15 = v54 - v14;
  v16 = sub_1000DA7A4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54[0] = v0;
  sub_100015FEC(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1000080B0(v15, &qword_100120518);
    return 0;
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    sub_1000DAE54();
    v21 = objc_allocWithZone(CSSearchableItemAttributeSet);
    isa = sub_1000DAE64().super.isa;
    v20 = [v21 initWithContentType:isa];

    (*(v10 + 8))(v12, v9);
    sub_1000DA774();
    if (v23)
    {
      v24 = sub_1000DBF04();
    }

    else
    {
      v24 = 0;
    }

    [v20 setDisplayName:v24];

    sub_1000DA794();
    v25 = sub_1000D9DA4();
    v26 = *(v25 - 8);
    v28 = 0;
    if ((*(v26 + 48))(v8, 1, v25) != 1)
    {
      sub_1000D9D54(v27);
      v28 = v29;
      (*(v26 + 8))(v8, v25);
    }

    [v20 setThumbnailURL:v28];

    sub_1000DA784();
    if (v30)
    {
      v31 = sub_1000DBF04();
    }

    else
    {
      v31 = 0;
    }

    v32 = v55;
    [v20 setContentDescription:v31];

    v33 = sub_1000DA784();
    if (v34)
    {
      v35 = v33;
      v36 = v34;
      sub_100007BC0(&qword_1001203C0);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1000DFEF0;
      *(v37 + 32) = v35;
      *(v37 + 40) = v36;
      v38 = sub_1000DC124().super.isa;

      [v20 setAuthorNames:v38];
    }

    v39 = *(v54[0] + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
    if (v39 && (v40 = [v39 entry]) != 0)
    {
      v41 = v40;
      sub_1000DA3A4();

      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v43 = sub_1000DA084();
    (*(*(v43 - 8) + 56))(v32, v42, 1, v43);
    sub_1000DBE74();
    sub_1000DA114();
    v44 = sub_1000DBF64();
    v45 = v32;
    v47 = v46;
    sub_100007BC0(&qword_1001203C0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1000DFEF0;
    v49 = sub_1000478A0(v44, v47, v45);
    v51 = v50;

    *(v48 + 32) = v49;
    *(v48 + 40) = v51;
    v52 = sub_1000DC124().super.isa;

    [v20 setAlternateNames:v52];

    sub_1000080B0(v45, &qword_1001203B8);
    (*(v17 + 8))(v19, v16);
  }

  return v20;
}

uint64_t sub_10006BF5C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000DA7A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10006BFA0()
{
  v1 = sub_1000DBED4();
  __chkstk_darwin(v1 - 8);
  v33[1] = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000DBEB4();
  __chkstk_darwin(v3 - 8);
  v33[0] = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007BC0(&qword_100123D78);
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = v33 - v6;
  v8 = sub_100007BC0(&qword_100123D80);
  __chkstk_darwin(v8 - 8);
  v36 = v33 - v9;
  v10 = sub_1000DABE4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100007BC0(&qword_100120540);
  __chkstk_darwin(v14 - 8);
  v16 = v33 - v15;
  v17 = sub_1000DA124();
  __chkstk_darwin(v17 - 8);
  v18 = sub_100007BC0(&qword_1001236C8);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v33 - v20;
  sub_1000DA0F4();
  sub_100060228();
  sub_1000D9BD4();
  if (*(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure19MotionActivityAsset_metadata))
  {

    sub_100012EDC(v16);

    if ((*(v11 + 48))(v16, 1, v10))
    {
      (*(v19 + 8))(v21, v18);
      v22 = &qword_100120540;
      v23 = v16;
LABEL_9:
      sub_1000080B0(v23, v22);
      return 0;
    }

    (*(v11 + 16))(v13, v16, v10);
    sub_1000080B0(v16, &qword_100120540);
    sub_1000DABC4();
    v25 = v24;
    (*(v11 + 8))(v13, v10);
    if (v25)
    {
      sub_1000DC064();

      sub_10006CF44();
      sub_1000DAD74();
      v26 = v35;
      sub_1000DADB4();
      (*(v34 + 8))(v7, v26);

      v27 = sub_100007BC0(&qword_100123D90);
      v28 = *(v27 - 8);
      v29 = v36;
      if ((*(v28 + 48))(v36, 1, v27) != 1)
      {
        sub_1000DADE4();
        v31 = v37;
        (*(v28 + 8))(v29, v27);
        sub_1000DBEA4();
        v38._countAndFlagsBits = 0;
        v38._object = 0xE000000000000000;
        sub_1000DBE94(v38);
        v37 = v31;
        sub_1000DBE84();
        v39._countAndFlagsBits = 0x2973287065747320;
        v39._object = 0xE800000000000000;
        sub_1000DBE94(v39);
        sub_1000DBEC4();
        sub_1000DA114();
        v32 = sub_1000DBF64();
        (*(v19 + 8))(v21, v18);
        return v32;
      }

      (*(v19 + 8))(v21, v18);
      v22 = &qword_100123D80;
      v23 = v29;
      goto LABEL_9;
    }
  }

  (*(v19 + 8))(v21, v18);
  return 0;
}

id sub_10006C6C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MotionActivityAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MotionActivityAsset()
{
  result = qword_100123D28;
  if (!qword_100123D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10006C7D0()
{
  v1 = sub_1000DA124();
  __chkstk_darwin(v1 - 8);
  v3 = v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000DBED4();
  __chkstk_darwin(v4 - 8);
  v49[2] = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007BC0(&qword_1001203B8);
  v7 = __chkstk_darwin(v6 - 8);
  v50 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v49 - v9;
  v11 = sub_1000DAF04();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100007BC0(&qword_100120540);
  __chkstk_darwin(v15 - 8);
  v17 = v49 - v16;
  v18 = sub_1000DABE4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v0;
  if (!*(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure19MotionActivityAsset_metadata))
  {
    (*(v19 + 56))(v17, 1, 1, v18);
    goto LABEL_12;
  }

  sub_100012EDC(v17);

  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
LABEL_12:
    sub_1000080B0(v17, &qword_100120540);
    return 0;
  }

  (*(v19 + 32))(v21, v17, v18);
  sub_1000DAE84();
  v22 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_1000DAE64().super.isa;
  v24 = [v22 initWithContentType:isa];

  (*(v12 + 8))(v14, v11);
  v25 = sub_1000DABA4();
  if (v26)
  {
    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      goto LABEL_9;
    }
  }

  sub_1000DABB4();
LABEL_9:
  v28 = sub_1000DBF04();

  [v24 setDisplayName:v28];

  sub_10006BFA0();
  v49[1] = v3;
  if (v29)
  {
    v30 = sub_1000DBF04();
  }

  else
  {
    v30 = 0;
  }

  [v24 setContentDescription:v30];

  v31 = v50;
  sub_1000DABD4();
  v32 = v31;
  v33 = sub_1000DA084();
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  if (v35(v32, 1, v33) == 1)
  {
    v36 = *(v51 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
    if (v36)
    {
      v37 = [v36 entry];
      if (v37)
      {
        v38 = v37;
        sub_1000DA3A4();

        v39 = 0;
      }

      else
      {
        v39 = 1;
      }

      v32 = v50;
    }

    else
    {
      v39 = 1;
    }

    (*(v34 + 56))(v10, v39, 1, v33);
    if (v35(v32, 1, v33) != 1)
    {
      sub_1000080B0(v32, &qword_1001203B8);
    }
  }

  else
  {
    (*(v34 + 32))(v10, v32, v33);
    (*(v34 + 56))(v10, 0, 1, v33);
  }

  sub_1000DBE74();
  sub_1000DA114();
  v40 = sub_1000DBF64();
  v42 = v41;
  sub_100007BC0(&qword_1001203C0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1000DFEF0;
  v44 = sub_1000478A0(v40, v42, v10);
  v46 = v45;

  *(v43 + 32) = v44;
  *(v43 + 40) = v46;
  v47 = sub_1000DC124().super.isa;

  [v24 setAlternateNames:v47];

  sub_1000080B0(v10, &qword_1001203B8);
  (*(v19 + 8))(v21, v18);
  return v24;
}

uint64_t sub_10006CF00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000DABE4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006CF44()
{
  result = qword_100123D88;
  if (!qword_100123D88)
  {
    sub_100007C08(&qword_1001236C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123D88);
  }

  return result;
}

void *sub_10006CFA8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_10006CFD4()
{
  v0 = sub_100007BC0(&qword_100123E10);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000D9C54();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000DA124();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000DBED4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000D9C64();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000D9924();
  sub_100007EF4(v10, qword_100127140);
  sub_100007EBC(v10, qword_100127140);
  sub_1000DBE74();
  sub_1000DA114();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000D9C74();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000D9914();
}

uint64_t sub_10006D2D4()
{
  v0 = sub_100007BC0(&qword_100123E08);
  __chkstk_darwin(v0 - 8);
  v45 = v29 - v1;
  v2 = sub_100007BC0(&qword_100123E10);
  __chkstk_darwin(v2 - 8);
  v44 = v29 - v3;
  v47 = sub_1000D9C54();
  v4 = *(v47 - 8);
  __chkstk_darwin(v47);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000DA124();
  __chkstk_darwin(v7 - 8);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000DBED4();
  __chkstk_darwin(v10 - 8);
  v38 = sub_1000D9C64();
  v46 = *(v38 - 8);
  __chkstk_darwin(v38);
  sub_100007BC0(&qword_100123E18);
  v11 = sub_100007BC0(&qword_100123950);
  v37 = v11;
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v34 = 2 * v12;
  v14 = swift_allocObject();
  v35 = v14;
  *(v14 + 16) = xmmword_1000E2830;
  v15 = v14 + v13;
  v31 = *(v11 + 48);
  *(v14 + v13) = 0;
  sub_1000DBE74();
  v29[1] = v9;
  sub_1000DA114();
  v16 = *(v4 + 104);
  v33 = v4 + 104;
  v41 = v16;
  v36 = v6;
  v17 = v6;
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v30 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  (v16)(v17);
  sub_1000D9C74();
  v32 = *(v46 + 56);
  v46 += 56;
  v19 = v38;
  v32(v44, 1, 1, v38);
  v40 = sub_1000D98B4();
  v20 = *(v40 - 8);
  v39 = *(v20 + 56);
  v42 = v20 + 56;
  v39(v45, 1, 1, v40);
  v43 = v15;
  sub_1000D98C4();
  v21 = v37;
  v31 = *(v37 + 48);
  *(v15 + v12) = 1;
  sub_1000DBE74();
  sub_1000DA114();
  v41(v36, v18, v47);
  sub_1000D9C74();
  v22 = v44;
  v23 = v32;
  v32(v44, 1, 1, v19);
  v24 = v45;
  v39(v45, 1, 1, v40);
  v25 = v24;
  sub_1000D98C4();
  v26 = (v43 + v34);
  v34 = *(v21 + 48);
  *v26 = 2;
  sub_1000DBE74();
  sub_1000DA114();
  v41(v36, v30, v47);
  sub_1000D9C74();
  v23(v22, 1, 1, v38);
  v39(v25, 1, 1, v40);
  sub_1000D98C4();
  v27 = sub_1000647D8(v35);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100127158 = v27;
  return result;
}

unint64_t sub_10006D9CC()
{
  result = qword_100123D98;
  if (!qword_100123D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123D98);
  }

  return result;
}

uint64_t *sub_10006DA20@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_10006DA3C()
{
  result = qword_100123DA0;
  if (!qword_100123DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DA0);
  }

  return result;
}

unint64_t sub_10006DA94()
{
  result = qword_100123DA8;
  if (!qword_100123DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DA8);
  }

  return result;
}

unint64_t sub_10006DAEC()
{
  result = qword_100123DB0;
  if (!qword_100123DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DB0);
  }

  return result;
}

unint64_t sub_10006DB50()
{
  result = qword_100123DB8;
  if (!qword_100123DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DB8);
  }

  return result;
}

unint64_t sub_10006DBA8()
{
  result = qword_100123DC0;
  if (!qword_100123DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DC0);
  }

  return result;
}

unint64_t sub_10006DC00()
{
  result = qword_100123DC8;
  if (!qword_100123DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DC8);
  }

  return result;
}

unint64_t sub_10006DC58()
{
  result = qword_100123DD0;
  if (!qword_100123DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DD0);
  }

  return result;
}

uint64_t sub_10006DCB0@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011FA90 != -1)
  {
    swift_once();
  }

  v2 = sub_1000D9924();
  v3 = sub_100007EBC(v2, qword_100127140);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10006DDA8()
{
  result = qword_100123DD8;
  if (!qword_100123DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DD8);
  }

  return result;
}

uint64_t sub_10006DDFC(uint64_t a1)
{
  v2 = sub_10006DDA8();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10006DE4C()
{
  result = qword_100123DE0;
  if (!qword_100123DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DE0);
  }

  return result;
}

unint64_t sub_10006DEA4()
{
  result = qword_100123DE8;
  if (!qword_100123DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DE8);
  }

  return result;
}

unint64_t sub_10006DEFC()
{
  result = qword_100123DF0;
  if (!qword_100123DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DF0);
  }

  return result;
}

uint64_t sub_10006DF50()
{
  if (qword_10011FA98 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10006DFAC(uint64_t a1)
{
  v2 = sub_10006DC58();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10006DFFC()
{
  result = qword_100123DF8;
  if (!qword_100123DF8)
  {
    sub_100007C08(&qword_100123E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StreaksWidgetStreak(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for StreaksWidgetStreak(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_10006E128()
{
  result = qword_100123E20;
  if (!qword_100123E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123E20);
  }

  return result;
}

uint64_t sub_10006E184()
{
  v1 = sub_1000DA124();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000DBED4();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000DA454();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v0, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for MediaViewType.song(_:) || v7 == enum case for MediaViewType.songAlbum(_:))
  {
    goto LABEL_10;
  }

  v8 = v7 == enum case for MediaViewType.podcast(_:) || v7 == enum case for MediaViewType.podcastArtist(_:);
  if (v8 || v7 == enum case for MediaViewType.audiobook(_:))
  {
    goto LABEL_10;
  }

  if (v7 == enum case for MediaViewType.thirdPartyMedia(_:))
  {
    sub_1000DBE74();
    sub_1000DA114();
    return sub_1000DBF54();
  }

  if (v7 == enum case for MediaViewType.thirdPartyMediaAlbum(_:) || v7 == enum case for MediaViewType.thirdPartyMediaArtist(_:))
  {
LABEL_10:
    sub_1000DBE74();
    sub_1000DA114();
    return sub_1000DBF64();
  }

  result = sub_1000DCC64();
  __break(1u);
  return result;
}

void *sub_10006E548(void *a1, uint64_t a2, char a3)
{
  v6 = _s23YearAdaptiveFormatStyleVMa();
  __chkstk_darwin(v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000DA204();
  v43 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000DA084();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v44 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v40 - v16;
  if ((a3 & 1) == 0 && (a1[2] < 2uLL || *(a2 + 16) < 2uLL))
  {
    return 0;
  }

  v45 = a1;

  sub_10007005C(v18);

  sub_10006EAA4(&v45);

  v19 = v45[2];
  if (!v19)
  {

    return 0;
  }

  v41 = v13;
  v42 = v17;
  v21 = v13 + 16;
  v20 = *(v13 + 16);
  v22 = v45 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
  v20(v42, v22, v12);
  v23 = &v22[*(v21 + 56) * (v19 - 1)];
  v24 = v44;
  v20(v44, v23, v12);
  v25 = v42;

  sub_1000DA1D4();
  LOBYTE(v22) = sub_1000DA1B4();
  (*(v43 + 8))(v11, v9);
  if (v22)
  {
    sub_1000D9E44();
    sub_1000D9CC4();
    sub_1000DA0F4();
    sub_1000DA174();
    sub_1000DA254();
    sub_1000DA054();
    sub_100070188();
    sub_1000DA064();
    sub_1000701E0(v8);
    v26 = *(v41 + 8);
    v26(v24, v12);
    v26(v25, v12);
    return v45;
  }

  else
  {
    v43 = v12;
    if (qword_10011FBC0 != -1)
    {
      swift_once();
    }

    v40 = qword_100127388;
    sub_100007BC0(&qword_100121ED8);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1000DE2C0;
    sub_1000D9E44();
    sub_1000D9CC4();
    sub_1000DA0F4();
    sub_1000DA174();
    sub_1000DA254();
    sub_1000DA054();
    sub_100070188();
    v29 = v42;
    sub_1000DA064();
    sub_1000701E0(v8);
    v30 = v45;
    v31 = v46;
    *(v28 + 56) = &type metadata for String;
    v32 = sub_100042300();
    *(v28 + 64) = v32;
    *(v28 + 32) = v30;
    *(v28 + 40) = v31;
    sub_1000D9E44();
    sub_1000D9CC4();
    sub_1000DA0F4();
    sub_1000DA174();
    sub_1000DA254();
    sub_1000DA054();
    v33 = v44;
    sub_1000DA064();
    sub_1000701E0(v8);
    v34 = v45;
    v35 = v46;
    *(v28 + 96) = &type metadata for String;
    *(v28 + 104) = v32;
    *(v28 + 72) = v34;
    *(v28 + 80) = v35;
    v36 = sub_1000DBF14();

    v37 = *(v41 + 8);
    v38 = v33;
    v39 = v43;
    v37(v38, v43);
    v37(v29, v39);
    return v36;
  }
}

Swift::Int sub_10006EAA4(void **a1)
{
  v2 = *(sub_1000DA084() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100070250(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10006EB4C(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_10006EB4C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1000DCC34(v2);
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
        sub_1000DA084();
        v6 = sub_1000DC174();
        *(v6 + 2) = v5;
      }

      v7 = *(sub_1000DA084() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10006EEFC(v8, v9, a1, v4);
      v6[2] = 0.0;
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
    return sub_10006EC78(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10006EC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1000DA084();
  v9 = __chkstk_darwin(v8);
  v40 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v44 = &v30 - v12;
  result = __chkstk_darwin(v11);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v14 + 16);
    v42 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v19 = v16 + v17 * (a3 - 1);
    v37 = -v17;
    v38 = (v14 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      v41(v43, v21, v8);
      v24 = v44;
      v23(v44, v19, v8);
      v25 = sub_1000DA004();
      v26 = *v18;
      (*v18)(v24, v8);
      result = v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = v35 + v31;
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v27)(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10006EEFC(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v121 = a1;
  v9 = sub_1000DA084();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v124 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v132 = &v117 - v14;
  v15 = __chkstk_darwin(v13);
  v138 = &v117 - v16;
  result = __chkstk_darwin(v15);
  v137 = &v117 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v121;
    if (!*v121)
    {
      goto LABEL_136;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_130:
      result = sub_10006FF18(a4);
    }

    v112 = v6;
    v140 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      v113 = v10;
      v10 = a3;
      a3 = v113;
      while (*v10)
      {
        v114 = *(result + 16 * a4);
        v115 = result;
        v6 = *(result + 16 * (a4 - 1) + 40);
        sub_10006F8E8(*v10 + a3[9] * v114, *v10 + a3[9] * *(result + 16 * (a4 - 1) + 32), *v10 + a3[9] * v6, v5);
        if (v112)
        {
        }

        if (v6 < v114)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_10006FF18(v115);
        }

        if (a4 - 2 >= *(v115 + 2))
        {
          goto LABEL_124;
        }

        v116 = &v115[2 * a4];
        *v116 = v114;
        *(v116 + 1) = v6;
        v140 = v115;
        sub_10006FE8C(a4 - 1);
        result = v140;
        a4 = *(v140 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v20 = 0;
  v135 = (v10 + 1);
  v136 = v10 + 2;
  v134 = (v10 + 4);
  v21 = _swiftEmptyArrayStorage;
  v122 = a3;
  v120 = a4;
  v139 = v9;
  while (1)
  {
    v22 = v20;
    v125 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v130 = v19;
      v119 = v6;
      v127 = *a3;
      v23 = v127;
      v24 = v10[9];
      v5 = v127 + v24 * (v20 + 1);
      v25 = v10[2];
      v26 = v137;
      v25(v137, v5, v9);
      v27 = v23 + v24 * v22;
      v28 = v138;
      v129 = v25;
      v25(v138, v27, v9);
      LODWORD(v131) = sub_1000DA004();
      v29 = v9;
      v30 = v10[1];
      v30(v28, v29);
      v128 = v30;
      result = (v30)(v26, v29);
      v118 = v22;
      v31 = v22 + 2;
      v133 = v24;
      v32 = v127 + v24 * (v22 + 2);
      while (1)
      {
        v33 = v130;
        if (v130 == v31)
        {
          break;
        }

        v34 = v10;
        v35 = v137;
        v36 = v139;
        v37 = v129;
        (v129)(v137, v32, v139);
        v38 = v138;
        v37(v138, v5, v36);
        v39 = sub_1000DA004() & 1;
        v40 = v128;
        (v128)(v38, v36);
        v41 = v35;
        v10 = v34;
        result = v40(v41, v36);
        ++v31;
        v32 += v133;
        v5 += v133;
        if ((v131 & 1) != v39)
        {
          v33 = v31 - 1;
          break;
        }
      }

      a3 = v122;
      v21 = v125;
      v6 = v119;
      a4 = v120;
      v9 = v139;
      v22 = v118;
      if (v131)
      {
        if (v33 < v118)
        {
          goto LABEL_127;
        }

        if (v118 < v33)
        {
          v117 = v10;
          v42 = v133 * (v33 - 1);
          v43 = v33 * v133;
          v44 = v33;
          v45 = v118;
          v46 = v118 * v133;
          do
          {
            if (v45 != --v44)
            {
              v48 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v49 = v33;
              v5 = v48 + v46;
              v131 = *v134;
              (v131)(v124, v48 + v46, v139, v21);
              if (v46 < v42 || v5 >= v48 + v43)
              {
                v47 = v139;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v47 = v139;
                if (v46 != v42)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v131)(v48 + v42, v124, v47);
              a3 = v122;
              v21 = v125;
              v33 = v49;
            }

            ++v45;
            v42 -= v133;
            v43 -= v133;
            v46 += v133;
          }

          while (v45 < v44);
          v6 = v119;
          a4 = v120;
          v10 = v117;
          v9 = v139;
          v22 = v118;
        }
      }
    }

    v50 = a3[1];
    if (v33 < v50)
    {
      if (__OFSUB__(v33, v22))
      {
        goto LABEL_126;
      }

      if (v33 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_128;
        }

        if ((v22 + a4) >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v22 + a4;
        }

        if (v51 < v22)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v33 != v51)
        {
          break;
        }
      }
    }

    v52 = v33;
    if (v33 < v22)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v125;
    }

    else
    {
      result = sub_10004724C(0, *(v125 + 2) + 1, 1, v125);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v53 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v53 >> 1)
    {
      result = sub_10004724C((v53 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v54 = &v21[2 * a4];
    *(v54 + 4) = v22;
    *(v54 + 5) = v52;
    v55 = *v121;
    if (!*v121)
    {
      goto LABEL_135;
    }

    v126 = v52;
    if (a4)
    {
      while (1)
      {
        v56 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v57 = *(v21 + 4);
          v58 = *(v21 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_114;
          }

          v73 = &v21[2 * v5];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_117;
          }

          v79 = &v21[2 * v56 + 4];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_121;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v21[2 * v5];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_116;
        }

        v86 = &v21[2 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_119;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v56 - 1;
        if (v56 - 1 >= v5)
        {
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v94 = v21;
        v95 = *&v21[2 * a4 + 4];
        v5 = *&v21[2 * v56 + 5];
        sub_10006F8E8(*a3 + v10[9] * v95, *a3 + v10[9] * *&v21[2 * v56 + 4], *a3 + v10[9] * v5, v55);
        if (v6)
        {
        }

        if (v5 < v95)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_10006FF18(v94);
        }

        if (a4 >= *(v94 + 2))
        {
          goto LABEL_111;
        }

        v96 = &v94[2 * a4];
        *(v96 + 4) = v95;
        *(v96 + 5) = v5;
        v140 = v94;
        result = sub_10006FE8C(v56);
        v21 = v140;
        v5 = *(v140 + 16);
        v9 = v139;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v21[2 * v5 + 4];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_112;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_113;
      }

      v68 = &v21[2 * v5];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_115;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_118;
      }

      if (v72 >= v64)
      {
        v90 = &v21[2 * v56 + 4];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_122;
        }

        if (v59 < v93)
        {
          v56 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v126;
    a4 = v120;
    if (v126 >= v19)
    {
      goto LABEL_95;
    }
  }

  v119 = v6;
  v97 = *a3;
  v98 = v10[9];
  v117 = v10;
  v133 = v10[2];
  v99 = v97 + v98 * (v33 - 1);
  v100 = -v98;
  v118 = v22;
  v101 = (v22 - v33);
  v131 = v97;
  v123 = v98;
  v5 = v97 + v33 * v98;
  v126 = v51;
LABEL_85:
  v129 = v99;
  v130 = v33;
  v127 = v5;
  v128 = v101;
  v102 = v99;
  while (1)
  {
    v103 = v137;
    v104 = v133;
    (v133)(v137, v5, v9, v21);
    v105 = v138;
    v104(v138, v102, v139);
    v106 = sub_1000DA004();
    a4 = v135;
    v107 = *v135;
    v108 = v105;
    v9 = v139;
    (*v135)(v108, v139);
    result = v107(v103, v9);
    if ((v106 & 1) == 0)
    {
LABEL_84:
      v33 = v130 + 1;
      v99 = &v129[v123];
      v101 = v128 - 1;
      v5 = v127 + v123;
      v52 = v126;
      if (v130 + 1 != v126)
      {
        goto LABEL_85;
      }

      v6 = v119;
      a3 = v122;
      v10 = v117;
      v22 = v118;
      if (v126 < v118)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    a4 = v134;
    v109 = *v134;
    v110 = v132;
    (*v134)(v132, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v109(v102, v110, v9);
    v102 += v100;
    v5 += v100;
    if (__CFADD__(v101++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_10006F8E8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = sub_1000DA084();
  v8 = *(v57 - 8);
  v9 = __chkstk_darwin(v57);
  v55 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v54 = &v45 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v56 = a3;
  v16 = (a2 - a1) / v14;
  v60 = a1;
  v59 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = a4 + v18;
    if (v18 < 1)
    {
      v33 = a4 + v18;
    }

    else
    {
      v30 = -v14;
      v49 = (v8 + 8);
      v50 = (v8 + 16);
      v31 = a4 + v18;
      v32 = v56;
      v33 = v29;
      v47 = a1;
      v48 = a4;
      v51 = -v14;
      do
      {
        v45 = v33;
        v34 = a2;
        v35 = a2 + v30;
        v52 = v34;
        v53 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v60 = v34;
            v58 = v45;
            goto LABEL_59;
          }

          v37 = v32;
          v46 = v33;
          v56 = v32 + v30;
          v38 = v31 + v30;
          v39 = *v50;
          v40 = v54;
          v41 = v57;
          v42 = v31;
          (*v50)(v54, v38, v57);
          v43 = v55;
          (v39)(v55, v35, v41);
          LOBYTE(v39) = sub_1000DA004();
          v44 = *v49;
          (*v49)(v43, v41);
          v44(v40, v41);
          if (v39)
          {
            break;
          }

          v33 = v38;
          v32 = v56;
          if (v37 < v42 || v56 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v53;
            a1 = v47;
          }

          else
          {
            v35 = v53;
            a1 = v47;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v31 = v38;
          v36 = v38 > v48;
          v30 = v51;
          v34 = v52;
          if (!v36)
          {
            a2 = v52;
            goto LABEL_58;
          }
        }

        v45 = v42;
        v32 = v56;
        if (v37 < v52 || v56 >= v52)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v33 = v46;
          a1 = v47;
          v30 = v51;
        }

        else
        {
          a2 = v53;
          v33 = v46;
          a1 = v47;
          v30 = v51;
          if (v37 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v31 = v45;
      }

      while (v45 > v48);
    }

LABEL_58:
    v60 = a2;
    v58 = v33;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v53 = a4 + v17;
    v58 = a4 + v17;
    if (v17 >= 1 && a2 < v56)
    {
      v51 = *(v8 + 16);
      v52 = v8 + 16;
      v49 = v14;
      v50 = (v8 + 8);
      do
      {
        v20 = v54;
        v21 = v57;
        v22 = v51;
        (v51)(v54, a2, v57);
        v23 = a2;
        v24 = v55;
        v22(v55, a4, v21);
        v25 = sub_1000DA004();
        v26 = *v50;
        (*v50)(v24, v21);
        v26(v20, v21);
        if (v25)
        {
          v27 = v49;
          a2 = v49 + v23;
          if (a1 < v23 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v23)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v27 = v49;
          v28 = v49 + a4;
          if (a1 < a4 || a1 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v23;
          }

          else
          {
            a2 = v23;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v59 = v28;
          a4 += v27;
        }

        a1 += v27;
        v60 = a1;
      }

      while (a4 < v53 && a2 < v56);
    }
  }

LABEL_59:
  sub_10006FF74(&v60, &v59, &v58, &type metadata accessor for Date);
  return 1;
}

uint64_t sub_10006FE8C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10006FF18(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10006FF74(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_10007005C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1000474F0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_1000DA084();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_100070188()
{
  result = qword_100123E28;
  if (!qword_100123E28)
  {
    _s23YearAdaptiveFormatStyleVMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123E28);
  }

  return result;
}

uint64_t sub_1000701E0(uint64_t a1)
{
  v2 = _s23YearAdaptiveFormatStyleVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_100070278(int a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  v13 = sub_100007BC0(&qword_100120560);
  __chkstk_darwin(v13 - 8);
  v15 = &v19 - v14;
  v16 = objc_allocWithZone(type metadata accessor for GenericMapThumbnailCacheOperation());
  sub_10001502C(v15);
  sub_100070BF4(v15, v16 + qword_1001272A0);
  v17 = v6;

  return sub_10008A204(v17, a1, a2, a3 & 1, a4, a5, a6);
}

uint64_t sub_100070384(int a1, unsigned __int8 a2, id a3)
{
  [a3 userInterfaceStyle];
  sub_1000DA0E4();
  sub_100070BAC(&qword_10011FDE0, &type metadata accessor for UUID);
  v15._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v15);

  v16._countAndFlagsBits = 45;
  v16._object = 0xE100000000000000;
  sub_1000DBFE4(v16);
  v17._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v17);

  v18._countAndFlagsBits = 45;
  v18._object = 0xE100000000000000;
  sub_1000DBFE4(v18);
  v4 = 0x656772614C78;
  v5 = 0xE500000000000000;
  v6 = 0x6C6C616D73;
  if (a2 != 6)
  {
    v6 = 0x657263536C6C7566;
    v5 = 0xEA00000000006E65;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (a2 != 4)
  {
    v8 = 0x61546D756964656DLL;
    v7 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006564;
  v10 = 0x69576D756964656DLL;
  if (a2 != 2)
  {
    v10 = 0x656772616CLL;
    v9 = 0xE500000000000000;
  }

  if (a2)
  {
    v11 = 0xE600000000000000;
  }

  else
  {
    v4 = 0x6154656772614C78;
    v11 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 1u)
  {
    v9 = v11;
  }

  else
  {
    v4 = v10;
  }

  if (a2 <= 3u)
  {
    v12._countAndFlagsBits = v4;
  }

  else
  {
    v12._countAndFlagsBits = v6;
  }

  if (a2 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  v12._object = v13;
  sub_1000DBFE4(v12);

  v19._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v19);

  v20._countAndFlagsBits = 45;
  v20._object = 0xE100000000000000;
  sub_1000DBFE4(v20);

  return 0x2D626D756874;
}

id sub_100070628()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenericMapAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for GenericMapAsset()
{
  result = qword_100123E58;
  if (!qword_100123E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_100070730()
{
  v1 = sub_100007BC0(&qword_100123EA8);
  __chkstk_darwin(v1 - 8);
  v3 = &v22 - v2;
  v4 = sub_1000DA714();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007BC0(&qword_100120560);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_1000DA874();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure15GenericMapAsset_metadata))
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_6;
  }

  sub_100011560(v10);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_6:
    v15 = &qword_100120560;
    v16 = v10;
    goto LABEL_7;
  }

  (*(v12 + 32))(v14, v10, v11);
  sub_1000DA864();
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_100007BC0(&qword_100123EB0);
    v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1000DFEF0;
    (*(v5 + 16))(v19 + v18, v7, v4);
    v20 = sub_100061388(v19);
    swift_setDeallocating();
    v21 = *(v5 + 8);
    v21(v19 + v18, v4);
    swift_deallocClassInstance();
    v21(v7, v4);
    (*(v12 + 8))(v14, v11);
    return v20;
  }

  (*(v12 + 8))(v14, v11);
  v15 = &qword_100123EA8;
  v16 = v3;
LABEL_7:
  sub_1000080B0(v16, v15);
  return 0;
}

uint64_t sub_100070BAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100070BF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_100120560);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_100070C64(uint64_t a1, __int16 a2, uint64_t a3, int a4, void *a5, void *a6, double a7)
{
  v14 = OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_basePOICircleView;
  v46 = a2 & 0x100;
  v47 = a4 & 0x10000;
  *&v7[v14] = [objc_allocWithZone(UIImageView) init];
  v15 = OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_downArrowView;
  *&v7[v15] = [objc_allocWithZone(UIImageView) init];
  v16 = OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_clusterCountLabel;
  *&v7[v16] = [objc_allocWithZone(UILabel) init];
  v17 = OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_borderBackgroundView;
  *&v7[v17] = [objc_allocWithZone(UIView) init];
  v18 = &v7[OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_configuration];
  *v18 = a2;
  v18[1] = HIBYTE(a2) & 1;
  *(v18 + 1) = a3;
  v18[16] = a4 & 1;
  v18[17] = BYTE1(a4) & 1;
  v18[18] = BYTE2(a4) & 1;
  *(v18 + 3) = a7;
  v49.receiver = v7;
  v49.super_class = _s19MOPOIAnnotationViewCMa();
  v19 = objc_msgSendSuper2(&v49, "initWithAnnotation:reuseIdentifier:", a1, 0);
  v20 = sub_10002223C(a2, a3, a4 & 1);
  v21 = 0.0;
  v22 = 0.0;
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  if ((v26 & 1) == 0)
  {
    v22 = nullsub_1(0.0, 0.0, *&v20, *&v20);
  }

  [v19 setFrame:{v22, v23, v24, v25}];
  v27 = &v19[OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_basePOICircleView];
  v28 = *&v19[OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_basePOICircleView];
  v29 = COERCE_DOUBLE(sub_10002223C(a2, a3, a4 & 1));
  v30 = 0.0;
  v31 = 0.0;
  v32 = 0.0;
  if ((v33 & 1) == 0)
  {
    if ((a3 > 1 || (a4 & 1) != 0 || v47 && !v46) && (a4 & 0x100) != 0)
    {
      v34 = v29 * 0.45;
      v35 = (v29 - v29 * 0.45) * 0.5;
      v36 = v35;
    }

    else
    {
      v35 = v29 * 0.55 * 0.5;
      v34 = v29 * 0.45;
      v36 = a7;
    }

    v21 = nullsub_1(v35, v36, v34, v34);
  }

  [v28 setFrame:{v21, v30, v31, v32}];

  sub_10007150C(a5, a6);
  if (a3 <= 1)
  {
    if (a4)
    {
      sub_100071910();
      [v19 addSubview:*&v19[OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_borderBackgroundView]];
    }

    else if (!v47 || v46)
    {
      sub_1000710A0();
      [v19 addSubview:*&v19[OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_downArrowView]];
    }
  }

  else
  {
    sub_100071910();
    sub_100071240();
    [v19 addSubview:*&v19[OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_borderBackgroundView]];
    v27 = &v19[OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_clusterCountLabel];
  }

  [v19 addSubview:*v27];
  v37 = OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_borderBackgroundView;
  v38 = [*&v19[OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_borderBackgroundView] layer];
  v39 = [objc_opt_self() secondarySystemBackgroundColor];
  v40 = [v39 CGColor];

  [v38 setShadowColor:v40];
  v41 = [*&v19[v37] layer];
  LODWORD(v42) = 0.5;
  [v41 setShadowOpacity:v42];

  v43 = [*&v19[v37] layer];
  [v43 setShadowRadius:5.0];

  v44 = [*&v19[v37] layer];
  [v44 setShadowPathIsBounds:1];

  sub_10001C8F8(a5, a6);
  swift_unknownObjectRelease();
  return v19;
}

void sub_1000710A0()
{
  v1 = v0 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_configuration;
  v2 = *(v0 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_configuration + 8);
  v3 = *(v0 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_configuration + 16);
  v4 = v2 <= 1 && v3 == 0;
  if (v4 && ((*(v1 + 18) ^ 1 | *(v1 + 1)) & 1) != 0)
  {
    v5 = *(v0 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_downArrowView);
    v6 = *(v1 + 24);
    v7 = COERCE_DOUBLE(sub_10002223C(*v1, v2, v3));
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    if ((v12 & 1) == 0)
    {
      v8 = nullsub_1(v7 * 0.4, v6 + v7 * 0.3, v7 * 0.2, v7 * 0.2);
    }

    [v5 setFrame:{v8, v9, v10, v11}];
    v13 = sub_1000DBF04();
    v14 = [objc_opt_self() systemImageNamed:v13];

    [v5 setImage:v14];

    [v5 setContentMode:2];
  }
}

void sub_100071240()
{
  v1 = v0 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_configuration;
  v2 = *(v0 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_configuration + 8);
  if (v2 >= 2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_clusterCountLabel);
    v4 = *(v1 + 17);
    v5 = *(v1 + 24);
    v6 = COERCE_DOUBLE(sub_10002223C(*v1, v2, *(v1 + 16)));
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    if ((v11 & 1) == 0)
    {
      if (v4)
      {
        v12 = v6 * 0.45;
        v13 = (v6 - v6 * 0.45) * 0.5;
        v14 = v13;
      }

      else
      {
        v13 = v6 * 0.55 * 0.5;
        v12 = v6 * 0.45;
        v14 = v5;
      }

      v7 = nullsub_1(v13, v14, v12, v12);
    }

    [v3 setFrame:{v7, v8, v9, v10}];
    sub_1000DCC44();
    v15 = sub_1000DBF04();

    [v3 setText:v15];

    [v3 setTextAlignment:1];
    v16 = [objc_opt_self() whiteColor];
    [v3 setTextColor:v16];

    v17 = COERCE_DOUBLE(sub_10002223C(*v1, *(v1 + 8), *(v1 + 16)));
    v18 = 15.0;
    if ((v19 & 1) == 0)
    {
      v18 = v17 / 6.0;
    }

    v20 = [objc_opt_self() boldSystemFontOfSize:v18];
    [v3 setFont:v20];

    [v3 setAdjustsFontSizeToFitWidth:1];
    [v3 setClipsToBounds:1];
    v21 = [v3 layer];
    [v3 frame];
    [v21 setCornerRadius:CGRectGetWidth(v22) * 0.5];
  }
}

void sub_10007150C(void *a1, void *a2)
{
  if (a1)
  {
    v4 = *(v2 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_basePOICircleView);
    v19 = a1;
    v5 = a2;
    [v4 setImage:v5];
    [*(v2 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_downArrowView) setTintColor:v19];
    [*(v2 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_clusterCountLabel) setBackgroundColor:v19];
  }

  else
  {
    v6 = *(v2 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_basePOICircleView);
    [v6 frame];
    v7 = CGRectGetWidth(v21) * 0.25;
    [v6 frame];
    v8 = CGRectGetHeight(v22) * 0.23;
    [v6 frame];
    v9 = CGRectGetWidth(v23) * 0.5;
    [v6 frame];
    Height = CGRectGetHeight(v24);
    v11 = nullsub_1(v7, v8, v9, Height * 0.5);
    v15 = [objc_allocWithZone(UIImageView) initWithFrame:{v11, v12, v13, v14}];
    v19 = v15;
    if (qword_10011FBE0 != -1)
    {
      swift_once();
      v15 = v19;
    }

    [v15 setImage:qword_1001273C8];
    v16 = [objc_opt_self() systemWhiteColor];
    [v19 setTintColor:v16];

    if (qword_10011FB98 != -1)
    {
      swift_once();
    }

    v17 = qword_100127350;
    [v6 setBackgroundColor:qword_100127350];
    [*(v2 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_downArrowView) setTintColor:v17];
    [*(v2 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_clusterCountLabel) setBackgroundColor:v17];
    v18 = [v6 layer];
    [v6 frame];
    [v18 setCornerRadius:CGRectGetHeight(v25) * 0.5];

    [v6 addSubview:v19];
  }
}

id sub_10007184C()
{
  v2.receiver = v0;
  v2.super_class = _s19MOPOIAnnotationViewCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100071910()
{
  v1 = *(v0 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_borderBackgroundView);
  if (*(v0 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_configuration + 1))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (*(v0 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_configuration + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | *(v0 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_configuration + 16);
  if (*(v0 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_configuration + 18))
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  [v1 setFrame:{sub_100022320(v2 | *(v0 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_configuration), *(v0 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_configuration + 8), v4 | v5, *(v0 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_configuration + 24))}];
  v6 = [v1 layer];
  v7 = [objc_opt_self() whiteColor];
  v8 = [v7 CGColor];

  [v6 setBackgroundColor:v8];
  [v1 setClipsToBounds:1];
  v9 = [v1 layer];
  [v1 frame];
  [v9 setCornerRadius:CGRectGetWidth(v11) * 0.5];
}

void sub_100071A9C()
{
  v1 = OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_basePOICircleView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  v2 = OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_downArrowView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_clusterCountLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_borderBackgroundView;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  sub_1000DCB04();
  __break(1u);
}

void sub_100071B80()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000EAB40;
  v8._countAndFlagsBits = 0x736B6165727453;
  v6._object = 0x80000001000EAB20;
  v6._countAndFlagsBits = 0xD000000000000014;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._object = 0xE700000000000000;
  v2 = sub_1000D9BC4(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100127168 = v2;
  unk_100127170 = v4;
}

void sub_100071C44()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000EACA0;
  v6._object = 0x80000001000EAC40;
  v8._countAndFlagsBits = 0xD000000000000035;
  v8._object = 0x80000001000EAC60;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD00000000000001ALL;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_1000D9BC4(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100127178 = v2;
  unk_100127180 = v4;
}

void sub_100071D08()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000EABF0;
  v6._object = 0x80000001000EAB70;
  v8._countAndFlagsBits = 0xD00000000000004ALL;
  v8._object = 0x80000001000EABA0;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_1000D9BC4(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100127188 = v2;
  unk_100127190 = v4;
}

void sub_100071DCC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000EA870;
  v8._countAndFlagsBits = 0x6B6165727453;
  v6._object = 0x80000001000EA840;
  v6._countAndFlagsBits = 0xD000000000000023;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._object = 0xE600000000000000;
  v2 = sub_1000D9BC4(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100127198 = v2;
  unk_1001271A0 = v4;
}

void sub_100071E8C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000EA670;
  v6._countAndFlagsBits = 0xD00000000000001ALL;
  v6._object = 0x80000001000EA630;
  v8._object = 0x80000001000EA650;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000011;
  v2 = sub_1000D9BC4(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1001271A8 = v2;
  unk_1001271B0 = v4;
}

void sub_100071F50()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000EA5D0;
  v8._countAndFlagsBits = 0x6165727453206F4ELL;
  v6._object = 0x80000001000EA5A0;
  v6._countAndFlagsBits = 0xD00000000000002DLL;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._object = 0xE90000000000006BLL;
  v2 = sub_1000D9BC4(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1001271B8 = v2;
  unk_1001271C0 = v4;
}

uint64_t sub_100072018()
{
  v0 = sub_1000DA124();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000DBED4();
  __chkstk_darwin(v1 - 8);
  sub_1000DBE74();
  sub_1000DA114();
  result = sub_1000DBF54();
  qword_1001271C8 = result;
  unk_1001271D0 = v3;
  return result;
}

uint64_t sub_100072164()
{
  v0 = sub_1000DA124();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000DBED4();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000DBEB4();
  __chkstk_darwin(v2 - 8);
  sub_1000DBEA4();
  v4._countAndFlagsBits = 0x282073796144;
  v4._object = 0xE600000000000000;
  sub_1000DBE94(v4);
  sub_1000DBE84();
  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  sub_1000DBE94(v5);
  sub_1000DBEC4();
  sub_1000DA114();
  return sub_1000DBF54();
}

uint64_t sub_100072314()
{
  v0 = sub_1000DA124();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000DBED4();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000DBEB4();
  __chkstk_darwin(v2 - 8);
  sub_1000DBEA4();
  v4._countAndFlagsBits = 0x2820736B656557;
  v4._object = 0xE700000000000000;
  sub_1000DBE94(v4);
  sub_1000DBE84();
  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  sub_1000DBE94(v5);
  sub_1000DBEC4();
  sub_1000DA114();
  return sub_1000DBF54();
}

uint64_t sub_1000724C8()
{
  v0 = sub_1000DA124();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000DBED4();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000DBEB4();
  __chkstk_darwin(v2 - 8);
  sub_1000DBEA4();
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_1000DBE94(v4);
  sub_1000DBE84();
  v5._countAndFlagsBits = 0x7379614420;
  v5._object = 0xE500000000000000;
  sub_1000DBE94(v5);
  sub_1000DBEC4();
  sub_1000DA114();
  return sub_1000DBF54();
}

uint64_t sub_100072678()
{
  v0 = sub_1000DA124();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000DBED4();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000DBEB4();
  __chkstk_darwin(v2 - 8);
  sub_1000DBEA4();
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_1000DBE94(v4);
  sub_1000DBE84();
  v5._countAndFlagsBits = 0x736B65655720;
  v5._object = 0xE600000000000000;
  sub_1000DBE94(v5);
  sub_1000DBEC4();
  sub_1000DA114();
  return sub_1000DBF54();
}

uint64_t sub_100072828()
{
  v0 = sub_1000DA124();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000DBED4();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000DBEB4();
  __chkstk_darwin(v2 - 8);
  sub_1000DBEA4();
  v4._object = 0x80000001000EA910;
  v4._countAndFlagsBits = 0xD000000000000015;
  sub_1000DBE94(v4);
  sub_1000DBE84();
  v5._countAndFlagsBits = 0x2E7379616420;
  v5._object = 0xE600000000000000;
  sub_1000DBE94(v5);
  sub_1000DBEC4();
  sub_1000DA114();
  return sub_1000DBF54();
}

uint64_t sub_1000729E8()
{
  v0 = sub_1000DA124();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000DBED4();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000DBEB4();
  __chkstk_darwin(v2 - 8);
  sub_1000DBEA4();
  v4._object = 0x80000001000EA910;
  v4._countAndFlagsBits = 0xD000000000000015;
  sub_1000DBE94(v4);
  sub_1000DBE84();
  v5._countAndFlagsBits = 0x2E736B65657720;
  v5._object = 0xE700000000000000;
  sub_1000DBE94(v5);
  sub_1000DBEC4();
  sub_1000DA114();
  return sub_1000DBF54();
}

uint64_t sub_100072BAC()
{
  v0 = sub_1000DAFF4();
  sub_100007EF4(v0, qword_100123FA0);
  sub_100007EBC(v0, qword_100123FA0);
  return sub_1000DAFE4();
}

uint64_t sub_100072C2C(uint64_t a1)
{
  v2 = sub_100007BC0(&qword_1001203B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v34 - v3;
  v5 = sub_1000DA084();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StreaksWidgetCalculator.CalculatedTimelineEntry();
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = 91;
  v47 = 0xE100000000000000;
  v40 = *(a1 + 16);
  if (v40)
  {
    v12 = 0;
    v13 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 72);
    v38 = (v6 + 48);
    v39 = v14;
    v35 = (v6 + 8);
    v36 = (v6 + 32);
    do
    {
      sub_10007988C(v13, v11);
      if (v12)
      {
        v49._countAndFlagsBits = 8236;
        v49._object = 0xE200000000000000;
        sub_1000DBFE4(v49);
      }

      sub_100007F58(&v11[v8[5]], v4, &qword_1001203B8);
      if ((*v38)(v4, 1, v5) == 1)
      {
        sub_1000080B0(v4, &qword_1001203B8);
        v17 = 0xE300000000000000;
        v18 = 7104878;
      }

      else
      {
        v19 = v37;
        (*v36)(v37, v4, v5);
        sub_10003C96C(&qword_100124068);
        v18 = sub_1000DCC44();
        v17 = v20;
        (*v35)(v19, v5);
      }

      v45._countAndFlagsBits = 0;
      v45._object = 0xE000000000000000;
      sub_1000DCA04(46);

      v45._countAndFlagsBits = 0x6144747261747328;
      v45._object = 0xEB000000003D6574;
      sub_10003C96C(&qword_100124068);
      v50._countAndFlagsBits = sub_1000DCC44();
      sub_1000DBFE4(v50);

      v51._countAndFlagsBits = 0x746144646E65202CLL;
      v51._object = 0xEA00000000003D65;
      sub_1000DBFE4(v51);
      v52._countAndFlagsBits = v18;
      v52._object = v17;
      sub_1000DBFE4(v52);

      v53._countAndFlagsBits = 0x657669746361202CLL;
      v53._object = 0xE90000000000003DLL;
      sub_1000DBFE4(v53);
      v21 = &v11[v8[6]];
      v22 = *v21;
      if (v22 == 2)
      {
        v23 = 0xE300000000000000;
        v24._countAndFlagsBits = 7104878;
      }

      else
      {
        v25 = *(v21 + 1);
        v43 = 40;
        v44 = 0xE100000000000000;
        if (v22)
        {
          v26._countAndFlagsBits = 0x202C736B656577;
          v26._object = 0xE700000000000000;
        }

        else
        {
          v26._countAndFlagsBits = 0x202C73796164;
          v26._object = 0xE600000000000000;
        }

        sub_1000DBFE4(v26);
        v41 = v25;
        v42._countAndFlagsBits = sub_1000DCC44();
        v42._object = v27;
        v54._countAndFlagsBits = 41;
        v54._object = 0xE100000000000000;
        sub_1000DBFE4(v54);
        sub_1000DBFE4(v42);

        v24._countAndFlagsBits = v43;
        v23 = v44;
      }

      v24._object = v23;
      sub_1000DBFE4(v24);

      v55._countAndFlagsBits = 0x3D7473616C202CLL;
      v55._object = 0xE700000000000000;
      sub_1000DBFE4(v55);
      v28 = &v11[v8[7]];
      v29 = *v28;
      if (v29 == 2)
      {
        v15 = 0xE300000000000000;
        v16._countAndFlagsBits = 7104878;
      }

      else
      {
        v30 = *(v28 + 1);
        v43 = 40;
        v44 = 0xE100000000000000;
        if (v29)
        {
          v31._countAndFlagsBits = 0x202C736B656577;
          v31._object = 0xE700000000000000;
        }

        else
        {
          v31._countAndFlagsBits = 0x202C73796164;
          v31._object = 0xE600000000000000;
        }

        sub_1000DBFE4(v31);
        v41 = v30;
        v42._countAndFlagsBits = sub_1000DCC44();
        v42._object = v32;
        v56._countAndFlagsBits = 41;
        v56._object = 0xE100000000000000;
        sub_1000DBFE4(v56);
        sub_1000DBFE4(v42);

        v16._countAndFlagsBits = v43;
        v15 = v44;
      }

      ++v12;
      v16._object = v15;
      sub_1000DBFE4(v16);

      v48._countAndFlagsBits = 41;
      v48._object = 0xE100000000000000;
      sub_1000DBFE4(v48);
      sub_1000DBFE4(v45);

      sub_1000798F0(v11);
      v13 += v39;
    }

    while (v40 != v12);
  }

  v57._countAndFlagsBits = 93;
  v57._object = 0xE100000000000000;
  sub_1000DBFE4(v57);
  return v46;
}

uint64_t sub_1000731F0(uint64_t a1)
{
  sub_100007F58(a1, &v3, &qword_100121470);
  if (v4)
  {
    sub_100007EAC(&v3, v5);
    *&v3 = 0;
    *(&v3 + 1) = 0xE000000000000000;
    sub_1000DCAE4();
    v1 = v3;
    sub_100007FC0(v5);
  }

  else
  {
    sub_1000080B0(&v3, &qword_100121470);
    return 7104878;
  }

  return v1;
}

uint64_t sub_1000732D0(char a1)
{
  if (a1 == 2)
  {
    return 7104878;
  }

  if (a1)
  {
    v2._countAndFlagsBits = 0x202C736B656577;
    v2._object = 0xE700000000000000;
  }

  else
  {
    v2._countAndFlagsBits = 0x202C73796164;
    v2._object = 0xE600000000000000;
  }

  sub_1000DBFE4(v2);
  v4._countAndFlagsBits = sub_1000DCC44();
  v4._object = v3;
  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  sub_1000DBFE4(v5);
  sub_1000DBFE4(v4);

  return 40;
}

uint64_t sub_1000733A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v306 = a7;
  v311 = a6;
  v318 = a5;
  v315 = a3;
  v316 = a4;
  v314 = a2;
  v305 = a1;
  v317 = sub_1000DA084();
  v312 = *(v317 - 8);
  v7 = __chkstk_darwin(v317);
  v281 = &v277 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v280 = &v277 - v10;
  __chkstk_darwin(v9);
  v284 = &v277 - v11;
  v12 = sub_100007BC0(&qword_100124070);
  v13 = __chkstk_darwin(v12 - 8);
  v277 = &v277 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v289 = &v277 - v16;
  v17 = __chkstk_darwin(v15);
  v288 = &v277 - v18;
  v19 = __chkstk_darwin(v17);
  v308 = &v277 - v20;
  v21 = __chkstk_darwin(v19);
  v292 = (&v277 - v22);
  v23 = __chkstk_darwin(v21);
  v294 = &v277 - v24;
  __chkstk_darwin(v23);
  v307 = &v277 - v25;
  v310 = sub_100007BC0(&qword_100124078);
  v309 = *(v310 - 8);
  v26 = __chkstk_darwin(v310);
  v278 = (&v277 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __chkstk_darwin(v26);
  v279 = (&v277 - v29);
  v30 = __chkstk_darwin(v28);
  v282 = (&v277 - v31);
  v32 = __chkstk_darwin(v30);
  v291 = (&v277 - v33);
  __chkstk_darwin(v32);
  v287 = (&v277 - v34);
  v35 = sub_100007BC0(&qword_1001203B8);
  v36 = __chkstk_darwin(v35 - 8);
  v301 = &v277 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v299 = &v277 - v38;
  v39 = sub_100007BC0(&qword_100124060);
  v40 = __chkstk_darwin(v39);
  v286 = &v277 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v293 = (&v277 - v43);
  v44 = __chkstk_darwin(v42);
  v283 = &v277 - v45;
  v46 = __chkstk_darwin(v44);
  v285 = (&v277 - v47);
  v48 = __chkstk_darwin(v46);
  v290 = (&v277 - v49);
  v50 = __chkstk_darwin(v48);
  v295 = &v277 - v51;
  v52 = __chkstk_darwin(v50);
  v296 = (&v277 - v53);
  v54 = __chkstk_darwin(v52);
  v320 = &v277 - v55;
  v56 = __chkstk_darwin(v54);
  v313 = &v277 - v57;
  v58 = __chkstk_darwin(v56);
  v300 = &v277 - v59;
  v60 = __chkstk_darwin(v58);
  v297 = (&v277 - v61);
  v62 = __chkstk_darwin(v60);
  v64 = (&v277 - v63);
  v65 = __chkstk_darwin(v62);
  v67 = (&v277 - v66);
  v68 = __chkstk_darwin(v65);
  v70 = (&v277 - v69);
  v71 = __chkstk_darwin(v68);
  v73 = (&v277 - v72);
  v74 = __chkstk_darwin(v71);
  v76 = (&v277 - v75);
  v77 = __chkstk_darwin(v74);
  v79 = &v277 - v78;
  *(&v277 - v78) = v305;
  sub_100007F58(v314, &v277 + *(v77 + 48) - v78, &qword_1001203B8);
  v80 = v316;
  *v76 = v315;
  sub_100007F58(v80, v76 + *(v39 + 48), &qword_1001203B8);
  v326 = 0x2F77205452415453;
  v327 = 0xE900000000000020;
  v315 = v79;
  sub_100007F58(v79, v73, &qword_100124060);
  v81 = *v73;
  v82 = *(v39 + 48);
  v319 = v76;
  sub_100007F58(v76, v70, &qword_100124060);
  v83 = *v70;
  v84 = *(v39 + 48);
  *v67 = v81;
  v304 = v73;
  v303 = v82;
  sub_100007F58(v73 + v82, v67 + v84, &qword_1001203B8);
  v85 = v83;
  *v64 = v83;
  v86 = *(v39 + 48);
  v305 = v70;
  v302 = v84;
  v316 = v64;
  sub_100007F58(v70 + v84, v64 + v86, &qword_1001203B8);
  v324 = 0;
  v325 = 0xE000000000000000;
  v321._countAndFlagsBits = 0;
  v321._object = 0xE000000000000000;
  sub_1000DCA04(24);

  strcpy(&v323, "activeDaily=(");
  HIWORD(v323._object) = -4864;
  v321._countAndFlagsBits = v81;
  v328._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v328);

  v329._countAndFlagsBits = 2629676;
  v329._object = 0xE300000000000000;
  sub_1000DBFE4(v329);
  v298 = v67;
  v87 = v67;
  v88 = v299;
  v89 = v297;
  sub_100007F58(v87, v297, &qword_100124060);
  v314 = v39;
  v90 = v317;
  v91 = v312;
  sub_10001865C(v89 + *(v39 + 48), v88, &qword_1001203B8);
  v92 = *(v91 + 48);
  if (v92(v88, 1, v90) == 1)
  {
    sub_1000080B0(v88, &qword_1001203B8);
    v321 = 0;
    v322 = 0u;
  }

  else
  {
    *(&v322 + 1) = v90;
    v93 = sub_100055EEC(&v321._countAndFlagsBits);
    (*(v91 + 32))(v93, v88, v90);
  }

  v94 = sub_1000731F0(&v321);
  v96 = v95;
  sub_1000080B0(&v321, &qword_100121470);
  v330._countAndFlagsBits = v94;
  v330._object = v96;
  sub_1000DBFE4(v330);

  v331._countAndFlagsBits = 539765033;
  v331._object = 0xE400000000000000;
  sub_1000DBFE4(v331);
  sub_1000DBFE4(v323);

  v321._countAndFlagsBits = 0;
  v321._object = 0xE000000000000000;
  sub_1000DCA04(25);

  strcpy(&v323, "activeWeekly=(");
  HIBYTE(v323._object) = -18;
  v321._countAndFlagsBits = v85;
  v332._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v332);

  v333._countAndFlagsBits = 2629676;
  v333._object = 0xE300000000000000;
  sub_1000DBFE4(v333);
  v97 = v300;
  sub_100007F58(v316, v300, &qword_100124060);
  v98 = v97 + *(v314 + 48);
  v99 = v301;
  sub_10001865C(v98, v301, &qword_1001203B8);
  v100 = v92(v99, 1, v90);
  v297 = v92;
  if (v100 == 1)
  {
    sub_1000080B0(v99, &qword_1001203B8);
    v321 = 0;
    v322 = 0u;
  }

  else
  {
    *(&v322 + 1) = v90;
    v101 = sub_100055EEC(&v321._countAndFlagsBits);
    (*(v91 + 32))(v101, v99, v90);
  }

  v102 = v306;
  v103 = sub_1000731F0(&v321);
  v105 = v104;
  sub_1000080B0(&v321, &qword_100121470);
  v334._countAndFlagsBits = v103;
  v334._object = v105;
  sub_1000DBFE4(v334);

  v335._countAndFlagsBits = 539765033;
  v335._object = 0xE400000000000000;
  sub_1000DBFE4(v335);
  sub_1000DBFE4(v323);

  v321._countAndFlagsBits = 0;
  v321._object = 0xE000000000000000;
  sub_1000DCA04(19);

  v321._countAndFlagsBits = 0x697961447473616CLL;
  v321._object = 0xEF3D746E756F436CLL;
  v323._countAndFlagsBits = v318;
  v336._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v336);

  v337._countAndFlagsBits = 8236;
  v337._object = 0xE200000000000000;
  sub_1000DBFE4(v337);
  sub_1000DBFE4(v321);

  v321._countAndFlagsBits = 0;
  v321._object = 0xE000000000000000;
  sub_1000DCA04(20);

  v321._countAndFlagsBits = 0xD000000000000010;
  v321._object = 0x80000001000EAD30;
  v323._countAndFlagsBits = v311;
  v338._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v338);

  v339._countAndFlagsBits = 8236;
  v339._object = 0xE200000000000000;
  sub_1000DBFE4(v339);
  sub_1000DBFE4(v321);

  v340._countAndFlagsBits = 0x7A696C6175736976;
  v340._object = 0xEE003D6E6F697461;
  sub_1000DBFE4(v340);
  v106 = v319;
  v107 = v307;
  if (v102)
  {
    if (v102 == 1)
    {
      v108._countAndFlagsBits = 0x73796144796C6E6FLL;
      v108._object = 0xE800000000000000;
    }

    else
    {
      v108._countAndFlagsBits = 0x6B656557796C6E6FLL;
      v108._object = 0xE900000000000073;
    }
  }

  else
  {
    v108._countAndFlagsBits = 0x6557724F73796164;
    v108._object = 0xEB00000000736B65;
  }

  sub_1000DBFE4(v108);
  sub_1000080B0(v316, &qword_100124060);
  sub_1000080B0(v298, &qword_100124060);
  v109 = v324;
  v110 = v325;
  sub_1000080B0(v305 + v302, &qword_1001203B8);
  sub_1000080B0(v304 + v303, &qword_1001203B8);
  v341._countAndFlagsBits = v109;
  v341._object = v110;
  sub_1000DBFE4(v341);

  v112 = v326;
  v111 = v327;
  if (qword_10011FAD8 != -1)
  {
    swift_once();
  }

  v113 = sub_1000DAFF4();
  v114 = sub_100007EBC(v113, qword_100123FA0);

  v316 = v114;
  v115 = sub_1000DAFD4();
  v116 = sub_1000DC4B4();

  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v321._countAndFlagsBits = v118;
    *v117 = 136315138;
    *(v117 + 4) = sub_10001A58C(v112, v111, &v321._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v115, v116, "[calculateStreaksFor] %s", v117, 0xCu);
    sub_100007FC0(v118);

    v106 = v319;
  }

  v119 = v308;
  v120 = v313;
  sub_100007F58(v315, v313, &qword_100124060);
  sub_100007F58(v106, v320, &qword_100124060);
  if (!v102)
  {
    v124 = v285;
    sub_100007F58(v120, v285, &qword_100124060);
    v125 = v317;
    if (*v124 < 1)
    {
      v129 = sub_1000DAFD4();
      v130 = sub_1000DC4C4();
      if (os_log_type_enabled(v129, v130))
      {
        v131 = " has already been elapsed (";
        v132 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v321._countAndFlagsBits = v133;
        *v132 = 136315138;
        v134 = 0xD00000000000002CLL;
        goto LABEL_48;
      }
    }

    else
    {
      v126 = v283;
      sub_100007F58(v124, v283, &qword_100124060);
      v127 = v314;
      v128 = *(v314 + 48);
      if (v297(v126 + v128, 1, v125) != 1)
      {
        v184 = *(v312 + 32);
        v185 = v280;
        v184(v280, v126 + v128, v125);
        v186 = v124;
        v187 = v125;
        v188 = v310;
        v189 = *(v310 + 48);
        v190 = v290;
        sub_10001865C(v186, v290, &qword_100124060);
        v191 = *(v127 + 48);
        v192 = v294;
        *v294 = *v190;
        v184(&v192[v189], v185, v187);
        v193 = v188;
        v182 = *(v309 + 56);
        v194 = v192;
        v119 = v308;
        (v182)(v194, 0, 1, v193);
        v120 = v313;
        sub_1000080B0(v190 + v191, &qword_1001203B8);
        v183 = v293;
        v181 = v286;
LABEL_51:
        sub_100007F58(v320, v183, &qword_100124060);
        if (*v183 < 1)
        {
          v207 = sub_1000DAFD4();
          v208 = sub_1000DC4C4();
          if (os_log_type_enabled(v207, v208))
          {
            v209 = swift_slowAlloc();
            v210 = swift_slowAlloc();
            v321._countAndFlagsBits = v210;
            *v209 = 136315138;
            v119 = v308;
            *(v209 + 4) = sub_10001A58C(0xD00000000000002CLL, 0x80000001000EAF20, &v321._countAndFlagsBits);
            _os_log_impl(&_mh_execute_header, v207, v208, "[calculateStreaksFor] %s", v209, 0xCu);
            sub_100007FC0(v210);
          }

          v204 = v294;
          v201 = v309;
          v205 = v289;
          v206 = v291;
        }

        else
        {
          v307 = v182;
          sub_100007F58(v183, v181, &qword_100124060);
          v195 = v314;
          v196 = *(v314 + 48);
          v197 = v317;
          if (v297(v181 + v196, 1, v317) != 1)
          {
            sub_1000080B0(v320, &qword_100124060);
            sub_1000080B0(v120, &qword_100124060);
            v213 = *(v312 + 32);
            v214 = v281;
            v213(v281, v181 + v196, v197);
            v215 = *(v310 + 48);
            v216 = v183;
            v217 = v195;
            v218 = v290;
            v212 = v310;
            sub_10001865C(v216, v290, &qword_100124060);
            v219 = *(v217 + 48);
            v211 = v292;
            *v292 = *v218;
            v213((v211 + v215), v214, v197);
            v201 = v309;
            (v307)(v211, 0, 1, v212);
            sub_1000080B0(v218 + v219, &qword_1001203B8);
            v204 = v294;
            v205 = v289;
            v206 = v291;
LABEL_61:
            sub_100007F58(v204, v119, &qword_100124070);
            v220 = *(v201 + 48);
            v221 = v220(v119, 1, v212);
            v222 = v288;
            if (v221 == 1)
            {
              v223 = &qword_100124070;
              v224 = v119;
            }

            else
            {
              sub_10001865C(v119, v206, &qword_100124078);
              if (v220(v211, 1, v212) == 1)
              {
                v225 = *v206;
                v326 = 0;
                v327 = 0xE000000000000000;
                v344._countAndFlagsBits = 0x4554454C504D4F43;
                v344._object = 0xEC000000202F7720;
                sub_1000DBFE4(v344);
                v321._countAndFlagsBits = 0;
                v321._object = v225;
                *&v322 = 0;
                *(&v322 + 1) = v225;
                sub_1000DCAE4();
                v227 = v326;
                v226 = v327;

                v228 = sub_1000DAFD4();
                v229 = sub_1000DC4B4();

                if (os_log_type_enabled(v228, v229))
                {
                  v230 = swift_slowAlloc();
                  v231 = swift_slowAlloc();
                  v321._countAndFlagsBits = v231;
                  *v230 = 136315138;
                  *(v230 + 4) = sub_10001A58C(v227, v226, &v321._countAndFlagsBits);
                  _os_log_impl(&_mh_execute_header, v228, v229, "[calculateStreaksFor] %s", v230, 0xCu);
                  sub_100007FC0(v231);
                  v211 = v292;
                }

                sub_1000080B0(v291, &qword_100124078);
                sub_1000080B0(v319, &qword_100124060);
                sub_1000080B0(v315, &qword_100124060);
                sub_1000080B0(v211, &qword_100124070);
                sub_1000080B0(v204, &qword_100124070);
                return 0;
              }

              v223 = &qword_100124078;
              v224 = v206;
            }

            sub_1000080B0(v224, v223);
            sub_100007F58(v211, v222, &qword_100124070);
            if (v220(v222, 1, v212) == 1)
            {
              v232 = &qword_100124070;
              v233 = v222;
            }

            else
            {
              v234 = v282;
              sub_10001865C(v222, v282, &qword_100124078);
              if (v220(v204, 1, v212) == 1)
              {
                v235 = *v234;
                v326 = 0;
                v327 = 0xE000000000000000;
                v345._countAndFlagsBits = 0x4554454C504D4F43;
                v345._object = 0xEC000000202F7720;
                sub_1000DBFE4(v345);
                v321._countAndFlagsBits = 1;
                v321._object = v235;
                *&v322 = 1;
                *(&v322 + 1) = v235;
                sub_1000DCAE4();
                v237 = v326;
                v236 = v327;

                v238 = sub_1000DAFD4();
                v239 = sub_1000DC4B4();

                v240 = v234;
                if (os_log_type_enabled(v238, v239))
                {
                  v241 = swift_slowAlloc();
                  v242 = swift_slowAlloc();
                  v321._countAndFlagsBits = v242;
                  *v241 = 136315138;
                  *(v241 + 4) = sub_10001A58C(v237, v236, &v321._countAndFlagsBits);
                  _os_log_impl(&_mh_execute_header, v238, v239, "[calculateStreaksFor] %s", v241, 0xCu);
                  sub_100007FC0(v242);
                  v211 = v292;
                }

                sub_1000080B0(v240, &qword_100124078);
                sub_1000080B0(v319, &qword_100124060);
                sub_1000080B0(v315, &qword_100124060);
                sub_1000080B0(v211, &qword_100124070);
                sub_1000080B0(v204, &qword_100124070);
                return 1;
              }

              v232 = &qword_100124078;
              v233 = v234;
            }

            sub_1000080B0(v233, v232);
            sub_100007F58(v204, v205, &qword_100124070);
            if (v220(v205, 1, v212) == 1)
            {
              v243 = v205;
            }

            else
            {
              v244 = v205;
              v245 = v279;
              sub_10001865C(v244, v279, &qword_100124078);
              v246 = v277;
              sub_100007F58(v211, v277, &qword_100124070);
              if (v220(v246, 1, v212) != 1)
              {
                v253 = v278;
                sub_10001865C(v246, v278, &qword_100124078);
                v254 = *v253 > 1;
                v255 = *v245 < 3;
                v256 = v254 & v255;
                if (v254 && v255)
                {
                  v257 = *v253;
                }

                else
                {
                  v257 = *v245;
                }

                v326 = 0;
                v327 = 0xE000000000000000;
                v346._countAndFlagsBits = 0x4554454C504D4F43;
                v346._object = 0xEC000000202F7720;
                sub_1000DBFE4(v346);
                v321._countAndFlagsBits = v256;
                v321._object = v257;
                v258 = v256;
                *&v322 = v256;
                *(&v322 + 1) = v257;
                sub_1000DCAE4();
                v260 = v326;
                v259 = v327;

                v261 = sub_1000DAFD4();
                v262 = sub_1000DC4B4();

                if (os_log_type_enabled(v261, v262))
                {
                  v263 = swift_slowAlloc();
                  v264 = swift_slowAlloc();
                  v321._countAndFlagsBits = v264;
                  *v263 = 136315138;
                  *(v263 + 4) = sub_10001A58C(v260, v259, &v321._countAndFlagsBits);
                  _os_log_impl(&_mh_execute_header, v261, v262, "[calculateStreaksFor] %s", v263, 0xCu);
                  sub_100007FC0(v264);
                  v265 = v319;

                  v211 = v292;
                }

                else
                {

                  v265 = v319;
                }

                sub_1000080B0(v278, &qword_100124078);
                sub_1000080B0(v245, &qword_100124078);
                sub_1000080B0(v265, &qword_100124060);
                sub_1000080B0(v315, &qword_100124060);
                sub_1000080B0(v211, &qword_100124070);
                sub_1000080B0(v204, &qword_100124070);
                return v258;
              }

              sub_1000080B0(v245, &qword_100124078);
              v243 = v246;
            }

            sub_1000080B0(v243, &qword_100124070);
            if (v318 <= 0)
            {
              v249 = sub_1000DAFD4();
              v250 = sub_1000DC4C4();
              if (os_log_type_enabled(v249, v250))
              {
                v251 = swift_slowAlloc();
                v252 = swift_slowAlloc();
                v321._countAndFlagsBits = v252;
                *v251 = 136315138;
                *(v251 + 4) = sub_10001A58C(0xD00000000000002ALL, 0x80000001000EAF50, &v321._countAndFlagsBits);
                _os_log_impl(&_mh_execute_header, v249, v250, "[calculateStreaksFor] %s", v251, 0xCu);
                sub_100007FC0(v252);
              }

              v248 = v311;
              if (v311 <= 0)
              {
                v266 = sub_1000DAFD4();
                v267 = sub_1000DC4C4();
                if (os_log_type_enabled(v266, v267))
                {
                  v268 = swift_slowAlloc();
                  v269 = swift_slowAlloc();
                  v321._countAndFlagsBits = v269;
                  *v268 = 136315138;
                  *(v268 + 4) = sub_10001A58C(0xD00000000000002ALL, 0x80000001000EAF50, &v321._countAndFlagsBits);
                  _os_log_impl(&_mh_execute_header, v266, v267, "[calculateStreaksFor] %s", v268, 0xCu);
                  sub_100007FC0(v269);
                }

                v248 = 0;
                v247 = 2;
              }

              else
              {
                v247 = 1;
              }

              v211 = v292;
            }

            else
            {
              v247 = 0;
              v248 = v318;
            }

            v326 = 0;
            v327 = 0xE000000000000000;
            v347._countAndFlagsBits = 0x4554454C504D4F43;
            v347._object = 0xEC000000202F7720;
            sub_1000DBFE4(v347);
            v321 = xmmword_1000E1190;
            *&v322 = v247;
            *(&v322 + 1) = v248;
            sub_1000DCAE4();
            v271 = v326;
            v270 = v327;

            v272 = sub_1000DAFD4();
            v273 = sub_1000DC4B4();

            if (os_log_type_enabled(v272, v273))
            {
              v274 = swift_slowAlloc();
              v275 = swift_slowAlloc();
              v321._countAndFlagsBits = v275;
              *v274 = 136315138;
              *(v274 + 4) = sub_10001A58C(v271, v270, &v321._countAndFlagsBits);
              _os_log_impl(&_mh_execute_header, v272, v273, "[calculateStreaksFor] %s", v274, 0xCu);
              sub_100007FC0(v275);
              v211 = v292;
            }

            sub_1000080B0(v319, &qword_100124060);
            sub_1000080B0(v315, &qword_100124060);
            v169 = &qword_100124070;
            sub_1000080B0(v211, &qword_100124070);
            v170 = v204;
            goto LABEL_99;
          }

          sub_1000080B0(v181 + v196, &qword_1001203B8);
          v198 = sub_1000DAFD4();
          v199 = sub_1000DC4C4();
          v200 = os_log_type_enabled(v198, v199);
          v201 = v309;
          if (v200)
          {
            v202 = swift_slowAlloc();
            v203 = swift_slowAlloc();
            v321._countAndFlagsBits = v203;
            *v202 = 136315138;
            v119 = v308;
            *(v202 + 4) = sub_10001A58C(0xD00000000000002DLL, 0x80000001000EAF80, &v321._countAndFlagsBits);
            _os_log_impl(&_mh_execute_header, v198, v199, "[calculateStreaksFor] %s", v202, 0xCu);
            sub_100007FC0(v203);
          }

          v204 = v294;
          v205 = v289;
          v206 = v291;
          v182 = v307;
        }

        sub_1000080B0(v293, &qword_100124060);
        sub_1000080B0(v320, &qword_100124060);
        sub_1000080B0(v313, &qword_100124060);
        v211 = v292;
        v212 = v310;
        (v182)(v292, 1, 1, v310);
        goto LABEL_61;
      }

      sub_1000080B0(v126 + v128, &qword_1001203B8);
      v129 = sub_1000DAFD4();
      v130 = sub_1000DC4C4();
      if (os_log_type_enabled(v129, v130))
      {
        v131 = "eak detected! Duration < 1";
        v132 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v321._countAndFlagsBits = v133;
        *v132 = 136315138;
        v134 = 0xD00000000000002DLL;
LABEL_48:
        *(v132 + 4) = sub_10001A58C(v134, v131 | 0x8000000000000000, &v321._countAndFlagsBits);
        _os_log_impl(&_mh_execute_header, v129, v130, "[calculateStreaksFor] %s", v132, 0xCu);
        sub_100007FC0(v133);
        v120 = v313;
      }
    }

    v181 = v286;
    sub_1000080B0(v124, &qword_100124060);
    v182 = *(v309 + 56);
    (v182)(v294, 1, 1, v310);
    v183 = v293;
    goto LABEL_51;
  }

  v121 = v317;
  if (v102 == 1)
  {
    v122 = 0;
    v123 = v120;
  }

  else
  {
    v122 = 1;
    v123 = v320;
    v318 = v311;
  }

  v135 = v296;
  v136 = v295;
  sub_100007F58(v123, v296, &qword_100124060);
  if (*v135 < 1)
  {
    v145 = sub_1000DAFD4();
    v146 = sub_1000DC4C4();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v321._countAndFlagsBits = v148;
      *v147 = 136315138;
      *(v147 + 4) = sub_10001A58C(0xD00000000000002CLL, 0x80000001000EAF20, &v321._countAndFlagsBits);
      _os_log_impl(&_mh_execute_header, v145, v146, "[calculateStreaksFor] %s", v147, 0xCu);
      sub_100007FC0(v148);
      v120 = v313;
    }

    v142 = v318;
  }

  else
  {
    sub_100007F58(v135, v136, &qword_100124060);
    v137 = v314;
    v138 = *(v314 + 48);
    if (v297(v136 + v138, 1, v121) != 1)
    {
      sub_1000080B0(v320, &qword_100124060);
      sub_1000080B0(v120, &qword_100124060);
      v320 = v122;
      v151 = *(v312 + 32);
      v152 = v135;
      v153 = v284;
      v151(v284, v136 + v138, v121);
      v154 = *(v310 + 48);
      v155 = v152;
      v156 = v290;
      v150 = v310;
      sub_10001865C(v155, v290, &qword_100124060);
      v157 = *(v137 + 48);
      *v107 = *v156;
      v151(&v107[v154], v153, v121);
      v122 = v320;
      v149 = v309;
      (*(v309 + 56))(v107, 0, 1, v150);
      sub_1000080B0(v156 + v157, &qword_1001203B8);
      v142 = v318;
      goto LABEL_34;
    }

    sub_1000080B0(v136 + v138, &qword_1001203B8);
    v139 = sub_1000DAFD4();
    v140 = sub_1000DC4C4();
    v141 = os_log_type_enabled(v139, v140);
    v142 = v318;
    if (v141)
    {
      v143 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      v321._countAndFlagsBits = v144;
      *v143 = 136315138;
      *(v143 + 4) = sub_10001A58C(0xD00000000000002DLL, 0x80000001000EAF80, &v321._countAndFlagsBits);
      _os_log_impl(&_mh_execute_header, v139, v140, "[calculateStreaksFor] %s", v143, 0xCu);
      sub_100007FC0(v144);
      v120 = v313;
    }
  }

  sub_1000080B0(v135, &qword_100124060);
  sub_1000080B0(v320, &qword_100124060);
  sub_1000080B0(v120, &qword_100124060);
  v149 = v309;
  v150 = v310;
  (*(v309 + 56))(v107, 1, 1, v310);
LABEL_34:
  if ((*(v149 + 48))(v107, 1, v150) == 1)
  {
    sub_1000080B0(v107, &qword_100124070);
    v158 = v122;
    if (v142 <= 0)
    {
      v159 = sub_1000DAFD4();
      v160 = sub_1000DC4C4();
      if (os_log_type_enabled(v159, v160))
      {
        v161 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        v321._countAndFlagsBits = v162;
        *v161 = 136315138;
        *(v161 + 4) = sub_10001A58C(0xD00000000000002ALL, 0x80000001000EAF50, &v321._countAndFlagsBits);
        _os_log_impl(&_mh_execute_header, v159, v160, "[calculateStreaksFor] %s", v161, 0xCu);
        sub_100007FC0(v162);
      }

      v142 = 0;
      v158 = 2;
    }

    v326 = 0;
    v327 = 0xE000000000000000;
    v342._countAndFlagsBits = 0x4554454C504D4F43;
    v342._object = 0xEC000000202F7720;
    sub_1000DBFE4(v342);
    v321 = xmmword_1000E1190;
    *&v322 = v158;
    *(&v322 + 1) = v142;
    sub_1000DCAE4();
    v164 = v326;
    v163 = v327;

    v165 = sub_1000DAFD4();
    v166 = sub_1000DC4B4();

    if (os_log_type_enabled(v165, v166))
    {
      v167 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      v321._countAndFlagsBits = v168;
      *v167 = 136315138;
      *(v167 + 4) = sub_10001A58C(v164, v163, &v321._countAndFlagsBits);
      _os_log_impl(&_mh_execute_header, v165, v166, "[calculateStreaksFor] %s", v167, 0xCu);
      sub_100007FC0(v168);
    }

    v169 = &qword_100124060;
    sub_1000080B0(v319, &qword_100124060);
    v170 = v315;
LABEL_99:
    sub_1000080B0(v170, v169);
    return 2;
  }

  v171 = v287;
  sub_10001865C(v107, v287, &qword_100124078);
  v172 = *v171;
  v326 = 0;
  v327 = 0xE000000000000000;
  v343._countAndFlagsBits = 0x4554454C504D4F43;
  v343._object = 0xEC000000202F7720;
  sub_1000DBFE4(v343);
  v321._countAndFlagsBits = v122;
  v321._object = v172;
  *&v322 = v122;
  *(&v322 + 1) = v172;
  sub_1000DCAE4();
  v174 = v326;
  v173 = v327;

  v175 = sub_1000DAFD4();
  v176 = sub_1000DC4B4();

  if (os_log_type_enabled(v175, v176))
  {
    v177 = v122;
    v178 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    v321._countAndFlagsBits = v179;
    *v178 = 136315138;
    *(v178 + 4) = sub_10001A58C(v174, v173, &v321._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v175, v176, "[calculateStreaksFor] %s", v178, 0xCu);
    sub_100007FC0(v179);
    v180 = v319;

    v122 = v177;
  }

  else
  {

    v180 = v319;
  }

  sub_1000080B0(v171, &qword_100124078);
  sub_1000080B0(v180, &qword_100124060);
  sub_1000080B0(v315, &qword_100124060);
  return v122;
}

void *sub_100075D78(uint64_t a1, uint64_t a2, unsigned int (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(v485) = a7;
  v482 = a5;
  v483 = a6;
  v486 = a4;
  v484 = a3;
  v478 = a2;
  v476 = a1;
  v477 = type metadata accessor for StreaksWidgetCalculator.CalculatedTimelineEntry();
  v475 = *(v477 - 8);
  v7 = __chkstk_darwin(v477);
  v458 = &v422 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v454 = &v422 - v10;
  v11 = __chkstk_darwin(v9);
  v459 = &v422 - v12;
  v13 = __chkstk_darwin(v11);
  v430 = &v422 - v14;
  v15 = __chkstk_darwin(v13);
  v424 = &v422 - v16;
  v17 = __chkstk_darwin(v15);
  v425 = &v422 - v18;
  v19 = __chkstk_darwin(v17);
  v423 = &v422 - v20;
  v21 = __chkstk_darwin(v19);
  v472 = &v422 - v22;
  v23 = __chkstk_darwin(v21);
  v448 = &v422 - v24;
  v25 = __chkstk_darwin(v23);
  v433 = &v422 - v26;
  v27 = __chkstk_darwin(v25);
  v434 = &v422 - v28;
  __chkstk_darwin(v27);
  v431 = &v422 - v29;
  v30 = sub_100007BC0(&qword_100124050);
  __chkstk_darwin(v30 - 8);
  v441 = &v422 - v31;
  v32 = sub_100007BC0(&qword_100124058);
  __chkstk_darwin(v32 - 8);
  v438 = &v422 - v33;
  v440 = sub_1000D9B24();
  v439 = *(v440 - 8);
  __chkstk_darwin(v440);
  v437 = &v422 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v445 = sub_1000DA204();
  v443 = *(v445 - 8);
  __chkstk_darwin(v445);
  v444 = &v422 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000DA084();
  v488 = *(v36 - 8);
  v489 = v36;
  v37 = __chkstk_darwin(v36);
  v453 = &v422 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v426 = &v422 - v40;
  v41 = __chkstk_darwin(v39);
  v429 = &v422 - v42;
  v43 = __chkstk_darwin(v41);
  v449 = &v422 - v44;
  v45 = __chkstk_darwin(v43);
  v446 = &v422 - v46;
  v47 = __chkstk_darwin(v45);
  v450 = &v422 - v48;
  v49 = __chkstk_darwin(v47);
  v436 = &v422 - v50;
  v51 = __chkstk_darwin(v49);
  v447 = &v422 - v52;
  v53 = __chkstk_darwin(v51);
  v456 = &v422 - v54;
  __chkstk_darwin(v53);
  v487 = &v422 - v55;
  v56 = sub_100007BC0(&qword_1001203B8);
  v57 = __chkstk_darwin(v56 - 8);
  v473 = &v422 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __chkstk_darwin(v57);
  v452 = &v422 - v60;
  v61 = __chkstk_darwin(v59);
  v451 = &v422 - v62;
  v63 = __chkstk_darwin(v61);
  v427 = &v422 - v64;
  v65 = __chkstk_darwin(v63);
  v428 = &v422 - v66;
  v67 = __chkstk_darwin(v65);
  v432 = &v422 - v68;
  v69 = __chkstk_darwin(v67);
  v469 = (&v422 - v70);
  v71 = __chkstk_darwin(v69);
  v435 = &v422 - v72;
  v73 = __chkstk_darwin(v71);
  v442 = &v422 - v74;
  v75 = __chkstk_darwin(v73);
  v455 = &v422 - v76;
  v77 = __chkstk_darwin(v75);
  v457 = &v422 - v78;
  v79 = __chkstk_darwin(v77);
  v463 = (&v422 - v80);
  __chkstk_darwin(v79);
  v461 = &v422 - v81;
  v82 = sub_100007BC0(&qword_100124060);
  v83 = __chkstk_darwin(v82);
  v468 = &v422 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __chkstk_darwin(v83);
  v471 = &v422 - v86;
  v87 = __chkstk_darwin(v85);
  v470 = (&v422 - v88);
  v89 = __chkstk_darwin(v87);
  v479 = (&v422 - v90);
  v91 = __chkstk_darwin(v89);
  v480 = &v422 - v92;
  v93 = __chkstk_darwin(v91);
  v462 = &v422 - v94;
  v95 = __chkstk_darwin(v93);
  v460 = &v422 - v96;
  v97 = __chkstk_darwin(v95);
  v99 = (&v422 - v98);
  v100 = __chkstk_darwin(v97);
  v102 = (&v422 - v101);
  v103 = __chkstk_darwin(v100);
  v105 = (&v422 - v104);
  v106 = __chkstk_darwin(v103);
  v108 = (&v422 - v107);
  v109 = __chkstk_darwin(v106);
  v111 = (&v422 - v110);
  v112 = __chkstk_darwin(v109);
  v114 = &v422 - v113;
  *(&v422 - v113) = v476;
  sub_100007F58(v478, &v422 + *(v112 + 48) - v113, &qword_1001203B8);
  *v111 = v484;
  sub_100007F58(v486, v111 + *(v82 + 48), &qword_1001203B8);
  v495._countAndFlagsBits = 0x2F77205452415453;
  v495._object = 0xE900000000000020;
  v486 = v114;
  sub_100007F58(v114, v108, &qword_100124060);
  v115 = *v108;
  v116 = *(v82 + 48);
  v481 = v111;
  sub_100007F58(v111, v105, &qword_100124060);
  v117 = *v105;
  v118 = *(v82 + 48);
  *v102 = v115;
  v467 = v108;
  v465 = v116;
  v119 = v108 + v116;
  v120 = v117;
  sub_100007F58(v119, v118 + v102, &qword_1001203B8);
  *v99 = v120;
  v121 = *(v82 + 48);
  v474 = v105;
  v464 = v118;
  v478 = v99;
  sub_100007F58(v118 + v105, v99 + v121, &qword_1001203B8);
  v493 = 0;
  v494 = 0xE000000000000000;
  v490._countAndFlagsBits = 0;
  v490._object = 0xE000000000000000;
  sub_1000DCA04(24);

  strcpy(&v492, "activeDaily=(");
  HIWORD(v492._object) = -4864;
  v490._countAndFlagsBits = v115;
  v496._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v496);
  v122 = v82;
  v123 = v488;

  v497._countAndFlagsBits = 2629676;
  v497._object = 0xE300000000000000;
  sub_1000DBFE4(v497);
  v466 = v102;
  v124 = v102;
  v125 = v461;
  v126 = v460;
  sub_100007F58(v124, v460, &qword_100124060);
  sub_10001865C(v126 + *(v82 + 48), v125, &qword_1001203B8);
  v127 = v123 + 48;
  v484 = *(v123 + 48);
  if (v484(v125, 1, v489) == 1)
  {
    sub_1000080B0(v125, &qword_1001203B8);
    v490 = 0;
    v491 = 0u;
  }

  else
  {
    v128 = v489;
    *(&v491 + 1) = v489;
    v129 = sub_100055EEC(&v490._countAndFlagsBits);
    (*(v123 + 32))(v129, v125, v128);
  }

  v130 = sub_1000731F0(&v490);
  v132 = v131;
  sub_1000080B0(&v490, &qword_100121470);
  v498._countAndFlagsBits = v130;
  v498._object = v132;
  sub_1000DBFE4(v498);

  v499._countAndFlagsBits = 539765033;
  v499._object = 0xE400000000000000;
  sub_1000DBFE4(v499);
  sub_1000DBFE4(v492);

  v490._countAndFlagsBits = 0;
  v490._object = 0xE000000000000000;
  sub_1000DCA04(25);

  strcpy(&v492, "activeWeekly=(");
  HIBYTE(v492._object) = -18;
  v490._countAndFlagsBits = v120;
  v500._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v500);

  v501._countAndFlagsBits = 2629676;
  v501._object = 0xE300000000000000;
  sub_1000DBFE4(v501);
  v133 = v462;
  sub_100007F58(v478, v462, &qword_100124060);
  v134 = v463;
  sub_10001865C(v133 + *(v122 + 48), v463, &qword_1001203B8);
  v135 = v484(v134, 1, v489);
  v136 = v481;
  if (v135 == 1)
  {
    sub_1000080B0(v134, &qword_1001203B8);
    v490 = 0;
    v491 = 0u;
  }

  else
  {
    v137 = v489;
    *(&v491 + 1) = v489;
    v138 = sub_100055EEC(&v490._countAndFlagsBits);
    (*(v488 + 32))(v138, v134, v137);
  }

  v139 = sub_1000731F0(&v490);
  v141 = v140;
  sub_1000080B0(&v490, &qword_100121470);
  v502._countAndFlagsBits = v139;
  v502._object = v141;
  sub_1000DBFE4(v502);

  v503._countAndFlagsBits = 539765033;
  v503._object = 0xE400000000000000;
  sub_1000DBFE4(v503);
  sub_1000DBFE4(v492);

  v490._countAndFlagsBits = 0;
  v490._object = 0xE000000000000000;
  sub_1000DCA04(19);

  v490._countAndFlagsBits = 0x697961447473616CLL;
  v490._object = 0xEF3D746E756F436CLL;
  v492._countAndFlagsBits = v482;
  v504._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v504);

  v505._countAndFlagsBits = 8236;
  v505._object = 0xE200000000000000;
  sub_1000DBFE4(v505);
  sub_1000DBFE4(v490);

  v490._countAndFlagsBits = 0;
  v490._object = 0xE000000000000000;
  sub_1000DCA04(20);

  v490._countAndFlagsBits = 0xD000000000000010;
  v490._object = 0x80000001000EAD30;
  v492._countAndFlagsBits = v483;
  v506._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v506);

  v507._countAndFlagsBits = 8236;
  v507._object = 0xE200000000000000;
  sub_1000DBFE4(v507);
  sub_1000DBFE4(v490);

  v508._countAndFlagsBits = 0x7A696C6175736976;
  v508._object = 0xEE003D6E6F697461;
  sub_1000DBFE4(v508);
  if (v485)
  {
    if (v485 == 1)
    {
      v142._countAndFlagsBits = 0x73796144796C6E6FLL;
      v142._object = 0xE800000000000000;
    }

    else
    {
      v142._countAndFlagsBits = 0x6B656557796C6E6FLL;
      v142._object = 0xE900000000000073;
    }
  }

  else
  {
    v142._countAndFlagsBits = 0x6557724F73796164;
    v142._object = 0xEB00000000736B65;
  }

  sub_1000DBFE4(v142);
  sub_1000080B0(v478, &qword_100124060);
  sub_1000080B0(v466, &qword_100124060);
  v143 = v493;
  v144 = v494;
  sub_1000080B0(v464 + v474, &qword_1001203B8);
  sub_1000080B0(v467 + v465, &qword_1001203B8);
  v509._countAndFlagsBits = v143;
  v509._object = v144;
  sub_1000DBFE4(v509);

  countAndFlagsBits = v495._countAndFlagsBits;
  object = v495._object;
  if (qword_10011FAD8 != -1)
  {
    swift_once();
  }

  v147 = sub_1000DAFF4();
  v148 = sub_100007EBC(v147, qword_100123FA0);

  v478 = v148;
  v149 = sub_1000DAFD4();
  v150 = sub_1000DC4B4();

  v151 = os_log_type_enabled(v149, v150);
  v474 = v122;
  v476 = v127;
  if (v151)
  {
    v152 = swift_slowAlloc();
    v153 = v136;
    v154 = swift_slowAlloc();
    v490._countAndFlagsBits = v154;
    *v152 = 136315138;
    *(v152 + 4) = sub_10001A58C(countAndFlagsBits, object, &v490._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v149, v150, "[calculateTimelineFor] %s", v152, 0xCu);
    sub_100007FC0(v154);
    v136 = v153;
  }

  v155 = v480;
  sub_100007F58(v486, v480, &qword_100124060);
  v156 = v479;
  sub_100007F58(v136, v479, &qword_100124060);
  sub_1000DA054();
  v157 = v470;
  sub_100007F58(v155, v470, &qword_100124060);
  v158 = *v157;
  v159 = v474;
  v160 = *(v474 + 12);
  v161 = v471;
  sub_100007F58(v156, v471, &qword_100124060);
  v162 = v136;
  v163 = *(v159 + 12);
  v164 = sub_1000733A8(v158, v157 + v160, *v161, v161 + v163, v482, v483, v485);
  v166 = v165;
  v467 = v167;
  v466 = v168;
  sub_1000080B0(v161 + v163, &qword_1001203B8);
  sub_1000080B0(v157 + v160, &qword_1001203B8);
  if (v164 == 2)
  {
    v169 = _swiftEmptyArrayStorage;
    v170 = v475;
    v171 = v472;
    v172 = v162;
LABEL_23:
    v175 = v469;
    v176 = v468;
    goto LABEL_24;
  }

  if (v164)
  {
    v173 = v162;
  }

  else
  {
    v173 = v486;
  }

  sub_100007F58(v173, v157, &qword_100124060);
  v174 = v457;
  sub_10001865C(v157 + *(v159 + 12), v457, &qword_1001203B8);
  if (v484(v174, 1, v489) == 1)
  {
    v172 = v162;
    sub_1000080B0(v174, &qword_1001203B8);
    v169 = _swiftEmptyArrayStorage;
    v170 = v475;
    v171 = v472;
    goto LABEL_23;
  }

  v208 = v488;
  v209 = *(v488 + 32);
  v210 = v456;
  v209(v456, v174, v489);
  sub_10003C96C(&qword_100120AE0);
  if (sub_1000DBDF4())
  {
    v211 = *(v208 + 16);
    v212 = v455;
    v213 = v210;
    v214 = v489;
    v465 = v208 + 16;
    v464 = v211;
    v211(v455, v213, v489);
    v216 = *(v208 + 56);
    v215 = v208 + 56;
    v463 = v216;
    (v216)(v212, 0, 1, v214);
    v217 = v212;
    v218 = v442;
    sub_100007F58(v217, v442, &qword_1001203B8);
    if (v484(v218, 1, v214) == 1)
    {
      v219 = v218;
LABEL_67:
      sub_1000080B0(v219, &qword_1001203B8);
      v279 = v448;
      v464(v448, v487, v489);
      v280 = v477;
      sub_100007F58(v455, v279 + *(v477 + 20), &qword_1001203B8);
      v281 = (v279 + v280[6]);
      *v281 = v164;
      v281[1] = v166;
      v282 = (v279 + v280[7]);
      v283 = v466;
      *v282 = v467;
      v282[1] = v283;
      *(v279 + v280[8]) = 0;
      v169 = sub_1000474A0(0, 1, 1, _swiftEmptyArrayStorage);
      v285 = v169[2];
      v284 = v169[3];
      v172 = v481;
      v176 = v468;
      if (v285 >= v284 >> 1)
      {
        v169 = sub_1000474A0(v284 > 1, v285 + 1, 1, v169);
      }

      v170 = v475;
      v175 = v469;
      sub_1000080B0(v455, &qword_1001203B8);
      (*(v488 + 8))(v456, v489);
      v169[2] = v285 + 1;
      sub_10007994C(v448, v169 + ((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * v285);
      v171 = v472;
      goto LABEL_24;
    }

    v462 = v215;
    v209(v447, v218, v489);
    sub_1000DA1D4();
    (*(v443 + 56))(v438, 1, 1, v445);
    v275 = sub_1000DA274();
    (*(*(v275 - 8) + 56))(v441, 1, 1, v275);
    v276 = v437;
    v277 = v447;
    sub_1000D9B14();
    v219 = v435;
    v278 = v444;
    sub_1000DA194();
    (*(v439 + 8))(v276, v440);
    (*(v443 + 8))(v278, v445);
    if (v484(v219, 1, v489) == 1)
    {
      (*(v488 + 8))(v277, v489);
      goto LABEL_67;
    }

    v297 = v436;
    v209(v436, v219, v489);
    v298 = v487;
    if (sub_1000DBDF4())
    {
      v299 = v431;
      v300 = v298;
      v301 = v489;
      v302 = v464;
      v464(v431, v300, v489);
      v303 = v477;
      v304 = *(v477 + 20);
      v302(v299 + v304, v297, v301);
      (v463)(v299 + v304, 0, 1, v301);
      v305 = (v299 + v303[6]);
      *v305 = v164;
      v305[1] = v166;
      v306 = (v299 + v303[7]);
      v307 = v466;
      *v306 = v467;
      v306[1] = v307;
      *(v299 + v303[8]) = 0;
      v169 = sub_1000474A0(0, 1, 1, _swiftEmptyArrayStorage);
      v309 = v169[2];
      v308 = v169[3];
      if (v309 >= v308 >> 1)
      {
        v169 = sub_1000474A0(v308 > 1, v309 + 1, 1, v169);
      }

      v461 = v309 + 1;
      v169[2] = v309 + 1;
      v460 = (*(v475 + 80) + 32) & ~*(v475 + 80);
      v457 = *(v475 + 72);
      sub_10007994C(v299, v169 + v460 + v457 * v309);
      v310 = v434;
      v311 = v297;
      v312 = v489;
      v313 = v464;
      v464(v434, v311, v489);
      v314 = v477;
      v315 = *(v477 + 20);
      v313(v310 + v315, v447, v312);
      (v463)(v310 + v315, 0, 1, v312);
      v316 = (v310 + v314[6]);
      *v316 = v164;
      v316[1] = v166;
      v317 = (v310 + v314[7]);
      v318 = v466;
      *v317 = v467;
      v317[1] = v318;
      *(v310 + v314[8]) = 1;
      v319 = v169[3];
      if ((v309 + 2) > (v319 >> 1))
      {
        v169 = sub_1000474A0(v319 > 1, v309 + 2, 1, v169);
      }

      v320 = v489;
      v321 = v481;
      v176 = v468;
      v322 = *(v488 + 8);
      v322(v436, v489);
      v322(v447, v320);
      sub_1000080B0(v455, &qword_1001203B8);
      v322(v456, v320);
      v169[2] = v309 + 2;
      sub_10007994C(v434, v169 + v460 + v457 * v461);
      v170 = v475;
      v171 = v472;
      v172 = v321;
      v175 = v469;
    }

    else
    {
      v334 = v433;
      v335 = v489;
      v336 = v464;
      v464(v433, v298, v489);
      v337 = v477;
      v338 = *(v477 + 20);
      v336(v334 + v338, v447, v335);
      (v463)(v334 + v338, 0, 1, v335);
      v339 = (v334 + v337[6]);
      *v339 = v164;
      v339[1] = v166;
      v340 = (v334 + v337[7]);
      v341 = v466;
      *v340 = v467;
      v340[1] = v341;
      *(v334 + v337[8]) = 1;
      v169 = sub_1000474A0(0, 1, 1, _swiftEmptyArrayStorage);
      v343 = v169[2];
      v342 = v169[3];
      v176 = v468;
      if (v343 >= v342 >> 1)
      {
        v169 = sub_1000474A0(v342 > 1, v343 + 1, 1, v169);
      }

      v344 = v489;
      v345 = v481;
      v346 = *(v488 + 8);
      v346(v436, v489);
      v346(v447, v344);
      sub_1000080B0(v455, &qword_1001203B8);
      v346(v456, v344);
      v169[2] = v343 + 1;
      v170 = v475;
      sub_10007994C(v433, v169 + ((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v475 + 72) * v343);
      v171 = v472;
      v175 = v469;
      v172 = v345;
    }
  }

  else
  {
    v490._countAndFlagsBits = 0;
    v490._object = 0xE000000000000000;
    sub_1000DCA04(88);
    v511._countAndFlagsBits = 0xD000000000000037;
    v511._object = 0x80000001000EAEC0;
    sub_1000DBFE4(v511);
    sub_10003C96C(&qword_100124068);
    v512._countAndFlagsBits = sub_1000DCC44();
    sub_1000DBFE4(v512);

    v513._countAndFlagsBits = 0xD00000000000001BLL;
    v513._object = 0x80000001000EAF00;
    sub_1000DBFE4(v513);
    v514._countAndFlagsBits = sub_1000DCC44();
    sub_1000DBFE4(v514);

    v515._countAndFlagsBits = 11817;
    v515._object = 0xE200000000000000;
    sub_1000DBFE4(v515);
    v247 = v490;

    v248 = sub_1000DAFD4();
    v249 = sub_1000DC4C4();

    if (os_log_type_enabled(v248, v249))
    {
      v250 = swift_slowAlloc();
      v251 = swift_slowAlloc();
      v490._countAndFlagsBits = v251;
      *v250 = 136315138;
      *(v250 + 4) = sub_10001A58C(v247._countAndFlagsBits, v247._object, &v490._countAndFlagsBits);
      _os_log_impl(&_mh_execute_header, v248, v249, "[calculateTimelineFor] %s", v250, 0xCu);
      sub_100007FC0(v251);
    }

    v170 = v475;
    v172 = v481;
    v175 = v469;
    v176 = v468;
    (*(v488 + 8))(v210, v489);
    v169 = _swiftEmptyArrayStorage;
    v171 = v472;
  }

LABEL_24:
  v177 = v169[2];
  if (!v177)
  {
    sub_1000080B0(v479, &qword_100124060);
    sub_1000080B0(v480, &qword_100124060);
    v186 = v487;
    v185 = v488;
    goto LABEL_33;
  }

  v178 = v172;
  v179 = (*(v170 + 80) + 32) & ~*(v170 + 80);
  v180 = *(v170 + 72);
  sub_10007988C(v169 + v179 + v180 * (v177 - 1), v171);
  v181 = *(v171 + *(v477 + 24));
  if (v181 == 2 || (v181 & 1) != 0 || v485 == 1)
  {
    sub_1000798F0(v171);
    sub_1000080B0(v479, &qword_100124060);
    v184 = v480;
    v183 = &qword_100124060;
    goto LABEL_32;
  }

  v485 = v179;
  sub_100007F58(v171 + *(v477 + 20), v175, &qword_1001203B8);
  v182 = v484;
  if (v484(v175, 1, v489) == 1)
  {
    sub_1000798F0(v171);
    sub_1000080B0(v479, &qword_100124060);
    sub_1000080B0(v480, &qword_100124060);
    v183 = &qword_1001203B8;
    v184 = v175;
LABEL_32:
    sub_1000080B0(v184, v183);
    v185 = v488;
    v172 = v178;
    v186 = v487;
    goto LABEL_33;
  }

  v468 = v180;
  v469 = v169;
  v240 = v489;
  v241 = v178;
  v242 = v488 + 32;
  v243 = *(v488 + 32);
  v244 = v450;
  (v243)(v450, v175, v489);
  sub_100007F58(v241, v176, &qword_100124060);
  v245 = v474;
  v246 = *(v474 + 12);
  if (v182(v176 + v246, 1, v240) == 1)
  {
    v185 = v488;
    (*(v488 + 8))(v244, v489);
    sub_1000798F0(v171);
    sub_1000080B0(v479, &qword_100124060);
    sub_1000080B0(v480, &qword_100124060);
    sub_1000080B0(v176 + v246, &qword_1001203B8);
    v186 = v487;
    v170 = v475;
    v169 = v469;
    v172 = v481;
    goto LABEL_33;
  }

  v252 = v489;
  v463 = v243;
  v462 = v242;
  (v243)(v446, v176 + v246, v489);
  v253 = *(v488 + 16);
  v465 = v488 + 16;
  v464 = v253;
  v253(v449, v244, v252);
  v254 = v470;
  v255 = v480;
  sub_100007F58(v480, v470, &qword_100124060);
  v256 = *v254;
  v257 = *(v245 + 12);
  v258 = v479;
  v259 = v471;
  sub_100007F58(v479, v471, &qword_100124060);
  v260 = *(v245 + 12);
  v261 = sub_1000733A8(v256, v254 + v257, *v259, v259 + v260, v482, v483, 2);
  v482 = v262;
  v483 = v263;
  v265 = v264;
  sub_1000080B0(v258, &qword_100124060);
  sub_1000080B0(v255, &qword_100124060);
  v266 = v450;
  sub_1000080B0(v259 + v260, &qword_1001203B8);
  v267 = v254 + v257;
  v268 = v449;
  sub_1000080B0(v267, &qword_1001203B8);
  if (sub_1000DA004())
  {
    v490._countAndFlagsBits = 0;
    v490._object = 0xE000000000000000;
    sub_1000DCA04(116);
    v516._countAndFlagsBits = 0xD00000000000004ELL;
    v516._object = 0x80000001000EAE40;
    sub_1000DBFE4(v516);
    sub_10003C96C(&qword_100124068);
    v517._countAndFlagsBits = sub_1000DCC44();
    sub_1000DBFE4(v517);

    v518._countAndFlagsBits = 0xD000000000000020;
    v518._object = 0x80000001000EAE90;
    sub_1000DBFE4(v518);
    v519._countAndFlagsBits = sub_1000DCC44();
    sub_1000DBFE4(v519);

    v520._countAndFlagsBits = 11817;
    v520._object = 0xE200000000000000;
    sub_1000DBFE4(v520);
    v269 = v490;

    v270 = sub_1000DAFD4();
    v271 = sub_1000DC4C4();

    if (os_log_type_enabled(v270, v271))
    {
      v272 = swift_slowAlloc();
      v273 = swift_slowAlloc();
      v490._countAndFlagsBits = v273;
      *v272 = 136315138;
      *(v272 + 4) = sub_10001A58C(v269._countAndFlagsBits, v269._object, &v490._countAndFlagsBits);
      _os_log_impl(&_mh_execute_header, v270, v271, "[calculateTimelineFor] %s", v272, 0xCu);
      sub_100007FC0(v273);

      v274 = v450;
    }

    else
    {
      v274 = v266;
    }

    v186 = v487;
    v185 = v488;
    v170 = v475;
    v323 = v481;
    v169 = v469;
    v324 = *(v488 + 8);
    v325 = v489;
    v324(v449, v489);
    v324(v446, v325);
    v324(v274, v325);
    sub_1000798F0(v472);
    v172 = v323;
    goto LABEL_33;
  }

  sub_10003C96C(&qword_100120AE0);
  v286 = v446;
  if (sub_1000DBDF4())
  {
    if (v261 == 2)
    {
      v287 = v286;
      v490._countAndFlagsBits = 0;
      v490._object = 0xE000000000000000;
      sub_1000DCA04(103);
      v521._countAndFlagsBits = 0xD000000000000063;
      v521._object = 0x80000001000EADD0;
      sub_1000DBFE4(v521);
      v495._countAndFlagsBits = 0;
      v495._object = 0xE000000000000000;
      sub_1000DCA04(18);

      v495._countAndFlagsBits = 0x3D657669746361;
      v495._object = 0xE700000000000000;
      v522._countAndFlagsBits = sub_1000732D0(v261);
      sub_1000DBFE4(v522);

      v523._countAndFlagsBits = 0x3D7473616C202CLL;
      v523._object = 0xE700000000000000;
      sub_1000DBFE4(v523);
      v524._countAndFlagsBits = sub_1000732D0(v483);
      sub_1000DBFE4(v524);

      sub_1000DBFE4(v495);

      v525._countAndFlagsBits = 11817;
      v525._object = 0xE200000000000000;
      sub_1000DBFE4(v525);
      v288 = v490;

      v289 = sub_1000DAFD4();
      v290 = sub_1000DC4C4();

      if (os_log_type_enabled(v289, v290))
      {
        v291 = swift_slowAlloc();
        v292 = swift_slowAlloc();
        v490._countAndFlagsBits = v292;
        *v291 = 136315138;
        *(v291 + 4) = sub_10001A58C(v288._countAndFlagsBits, v288._object, &v490._countAndFlagsBits);
        _os_log_impl(&_mh_execute_header, v289, v290, "[calculateTimelineFor] %s", v291, 0xCu);
        sub_100007FC0(v292);
      }

      v186 = v487;
      v185 = v488;
      v170 = v475;
      v293 = v450;
      v294 = v481;
      v295 = *(v488 + 8);
      v296 = v489;
      v295(v449, v489);
      v295(v287, v296);
      v295(v293, v296);
      sub_1000798F0(v472);
      v169 = v469;
      v172 = v294;
      goto LABEL_33;
    }

    v347 = v432;
    v348 = v286;
    v349 = v489;
    v464(v432, v348, v489);
    v350 = *(v488 + 56);
    v480 = v488 + 56;
    v479 = v350;
    (v350)(v347, 0, 1, v349);
    v351 = v428;
    sub_100007F58(v347, v428, &qword_1001203B8);
    if (v484(v351, 1, v349) == 1)
    {
      v352 = v481;
      v353 = v446;
LABEL_93:
      sub_1000080B0(v351, &qword_1001203B8);
      v359 = v430;
      v464(v430, v268, v489);
      v360 = v477;
      sub_100007F58(v432, v359 + *(v477 + 20), &qword_1001203B8);
      v361 = (v359 + v360[6]);
      v363 = v482;
      v362 = v483;
      *v361 = v261;
      v361[1] = v363;
      v364 = (v359 + v360[7]);
      *v364 = v362;
      v364[1] = v265;
      *(v359 + v360[8]) = 0;
      v365 = v469;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v365 = sub_1000474A0(0, v365[2] + 1, 1, v365);
      }

      v367 = v365[2];
      v366 = v365[3];
      if (v367 >= v366 >> 1)
      {
        v365 = sub_1000474A0(v366 > 1, v367 + 1, 1, v365);
      }

      sub_1000080B0(v432, &qword_1001203B8);
      v369 = v488;
      v368 = v489;
      v370 = *(v488 + 8);
      v370(v449, v489);
      v370(v353, v368);
      v370(v450, v368);
      sub_1000798F0(v472);
      v169 = v365;
      v365[2] = v367 + 1;
      v185 = v369;
      sub_10007994C(v430, v365 + v485 + v367 * v468);
      v186 = v487;
      v170 = v475;
      v172 = v352;
      goto LABEL_33;
    }

    v474 = v265;
    v354 = v429;
    (v463)(v429, v351, v489);
    sub_1000DA1D4();
    v355 = v443;
    (*(v443 + 56))(v438, 1, 1, v445);
    v356 = sub_1000DA274();
    (*(*(v356 - 8) + 56))(v441, 1, 1, v356);
    v357 = v437;
    sub_1000D9B14();
    v351 = v427;
    v358 = v444;
    sub_1000DA194();
    (*(v439 + 8))(v357, v440);
    (*(v355 + 8))(v358, v445);
    if (v484(v351, 1, v489) == 1)
    {
      (*(v488 + 8))(v354, v489);
      v352 = v481;
      v353 = v446;
      v265 = v474;
      goto LABEL_93;
    }

    v371 = v426;
    (v463)(v426, v351, v489);
    v372 = sub_1000DBDF4();
    v373 = v481;
    v374 = v446;
    if (v372)
    {
      v375 = v423;
      v376 = v268;
      v377 = v489;
      v378 = v464;
      v464(v423, v376, v489);
      v379 = v477;
      v380 = *(v477 + 20);
      v378(v375 + v380, v371, v377);
      (v479)(v375 + v380, 0, 1, v377);
      v381 = (v375 + v379[6]);
      v382 = v482;
      v383 = v483;
      *v381 = v261;
      v381[1] = v382;
      v384 = (v375 + v379[7]);
      v385 = v474;
      *v384 = v383;
      v384[1] = v385;
      *(v375 + v379[8]) = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v469 = sub_1000474A0(0, v469[2] + 1, 1, v469);
      }

      v386 = v485;
      v388 = v469[2];
      v387 = v469[3];
      if (v388 >= v387 >> 1)
      {
        v469 = sub_1000474A0(v387 > 1, v388 + 1, 1, v469);
      }

      v389 = v469;
      v471 = v388 + 1;
      v469[2] = v388 + 1;
      sub_10007994C(v375, v389 + v386 + v388 * v468);
      v390 = v425;
      v391 = v371;
      v392 = v371;
      v393 = v489;
      v394 = v464;
      v464(v425, v392, v489);
      v395 = v477;
      v396 = *(v477 + 20);
      v394(v390 + v396, v429, v393);
      (v479)(v390 + v396, 0, 1, v393);
      v397 = (v390 + v395[6]);
      v398 = v482;
      v399 = v483;
      *v397 = v261;
      v397[1] = v398;
      v400 = (v390 + v395[7]);
      v401 = v474;
      *v400 = v399;
      v400[1] = v401;
      *(v390 + v395[8]) = 1;
      v402 = v389[3];
      if ((v388 + 2) > (v402 >> 1))
      {
        v469 = sub_1000474A0(v402 > 1, v388 + 2, 1, v469);
      }

      v403 = v446;
      v404 = v488;
      v405 = *(v488 + 8);
      v405(v391, v393);
      v405(v429, v393);
      sub_1000080B0(v432, &qword_1001203B8);
      v405(v449, v393);
      v405(v403, v393);
      v405(v450, v393);
      sub_1000798F0(v472);
      v169 = v469;
      v469[2] = v388 + 2;
      v185 = v404;
      sub_10007994C(v425, v169 + v485 + v471 * v468);
      v186 = v487;
      v170 = v475;
      v172 = v481;
    }

    else
    {
      v406 = v424;
      v407 = v489;
      v408 = v464;
      v464(v424, v268, v489);
      v409 = v477;
      v410 = *(v477 + 20);
      v408(v406 + v410, v429, v407);
      (v479)(v406 + v410, 0, 1, v407);
      v411 = (v406 + v409[6]);
      v412 = v482;
      v413 = v483;
      *v411 = v261;
      v411[1] = v412;
      v414 = (v406 + v409[7]);
      v415 = v474;
      *v414 = v413;
      v414[1] = v415;
      *(v406 + v409[8]) = 1;
      v416 = v469;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v416 = sub_1000474A0(0, v416[2] + 1, 1, v416);
      }

      v418 = v416[2];
      v417 = v416[3];
      v172 = v373;
      if (v418 >= v417 >> 1)
      {
        v416 = sub_1000474A0(v417 > 1, v418 + 1, 1, v416);
      }

      v420 = v488;
      v419 = v489;
      v421 = *(v488 + 8);
      v421(v426, v489);
      v421(v429, v419);
      sub_1000080B0(v432, &qword_1001203B8);
      v421(v449, v419);
      v421(v374, v419);
      v421(v450, v419);
      sub_1000798F0(v472);
      v169 = v416;
      v416[2] = v418 + 1;
      v185 = v420;
      sub_10007994C(v424, v416 + v485 + v418 * v468);
      v186 = v487;
      v170 = v475;
    }
  }

  else
  {
    v490._countAndFlagsBits = 0;
    v490._object = 0xE000000000000000;
    sub_1000DCA04(118);
    v526._countAndFlagsBits = 0xD00000000000004CLL;
    v526._object = 0x80000001000EAD50;
    sub_1000DBFE4(v526);
    sub_10003C96C(&qword_100124068);
    v527._countAndFlagsBits = sub_1000DCC44();
    sub_1000DBFE4(v527);

    v528._countAndFlagsBits = 0xD000000000000024;
    v528._object = 0x80000001000EADA0;
    sub_1000DBFE4(v528);
    v529._countAndFlagsBits = sub_1000DCC44();
    sub_1000DBFE4(v529);

    v530._countAndFlagsBits = 11817;
    v530._object = 0xE200000000000000;
    sub_1000DBFE4(v530);
    v326 = v490;

    v327 = sub_1000DAFD4();
    v328 = sub_1000DC4C4();

    if (os_log_type_enabled(v327, v328))
    {
      v329 = swift_slowAlloc();
      v330 = swift_slowAlloc();
      v490._countAndFlagsBits = v330;
      *v329 = 136315138;
      *(v329 + 4) = sub_10001A58C(v326._countAndFlagsBits, v326._object, &v490._countAndFlagsBits);
      _os_log_impl(&_mh_execute_header, v327, v328, "[calculateTimelineFor] %s", v329, 0xCu);
      sub_100007FC0(v330);
    }

    v186 = v487;
    v185 = v488;
    v170 = v475;
    v331 = v450;
    v172 = v481;
    v332 = *(v488 + 8);
    v333 = v489;
    v332(v449, v489);
    v332(v446, v333);
    v332(v331, v333);
    sub_1000798F0(v472);
    v169 = v469;
  }

LABEL_33:
  v187 = v169[2];
  if (v187)
  {
    v188 = (*(v170 + 80) + 32) & ~*(v170 + 80);
    v189 = *(v170 + 72);
    v190 = v459;
    sub_10007988C(v169 + v188 + v189 * (v187 - 1), v459);
    v191 = v190;
    v192 = v477;
    v193 = (v190 + *(v477 + 24));
    v194 = *v193;
    if (v194 == 2)
    {
      sub_1000798F0(v191);
    }

    else
    {
      v485 = *(v193 + 1);
      v195 = v191;
      v196 = v451;
      sub_100007F58(v191 + *(v477 + 20), v451, &qword_1001203B8);
      if (v484(v196, 1, v489) != 1)
      {
        v220 = *(v185 + 32);
        v221 = v185;
        v222 = v169;
        v223 = v489;
        v224 = v453;
        v220(v453, v196, v489);
        v225 = v452;
        (*(v221 + 56))(v452, 1, 1, v223);
        v226 = *(v221 + 16);
        v227 = v454;
        v228 = v223;
        v169 = v222;
        v226(v454, v224, v228);
        sub_100007F58(v225, &v227[v192[5]], &qword_1001203B8);
        *&v227[v192[6]] = xmmword_1000E1190;
        v229 = &v227[v192[7]];
        v230 = v485;
        *v229 = v194 & 1;
        *(v229 + 1) = v230;
        v227[v192[8]] = 0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v169 = sub_1000474A0(0, v187 + 1, 1, v222);
        }

        v197 = v486;
        v186 = v487;
        v232 = v169[2];
        v231 = v169[3];
        v172 = v481;
        v185 = v488;
        if (v232 >= v231 >> 1)
        {
          v169 = sub_1000474A0(v231 > 1, v232 + 1, 1, v169);
        }

        sub_1000080B0(v452, &qword_1001203B8);
        (*(v185 + 8))(v453, v489);
        sub_1000798F0(v459);
        v169[2] = v232 + 1;
        v206 = v169 + v188 + v232 * v189;
        v207 = v454;
        goto LABEL_53;
      }

      sub_1000798F0(v195);
      sub_1000080B0(v196, &qword_1001203B8);
      v170 = v475;
      v186 = v487;
    }

    v172 = v481;
    if (v169[2])
    {
      v197 = v486;
      goto LABEL_54;
    }
  }

  v198 = v473;
  v199 = v489;
  (*(v185 + 56))(v473, 1, 1, v489);
  v200 = v458;
  (*(v185 + 16))(v458, v186, v199);
  v201 = v477;
  sub_100007F58(v198, &v200[*(v477 + 20)], &qword_1001203B8);
  *&v200[v201[6]] = xmmword_1000E1190;
  v202 = &v200[v201[7]];
  v203 = v466;
  *v202 = v467;
  v202[1] = v203;
  v200[v201[8]] = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v169 = sub_1000474A0(0, 1, 1, v169);
  }

  v205 = v169[2];
  v204 = v169[3];
  if (v205 >= v204 >> 1)
  {
    v169 = sub_1000474A0(v204 > 1, v205 + 1, 1, v169);
  }

  v197 = v486;
  sub_1000080B0(v473, &qword_1001203B8);
  v169[2] = v205 + 1;
  v206 = v169 + ((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * v205;
  v207 = v200;
LABEL_53:
  sub_10007994C(v207, v206);
LABEL_54:
  strcpy(&v490, "COMPLETE w/ ");
  BYTE5(v490._object) = 0;
  HIWORD(v490._object) = -5120;

  v510._countAndFlagsBits = sub_100072C2C(v233);
  sub_1000DBFE4(v510);

  v234 = v490;

  v235 = sub_1000DAFD4();
  v236 = sub_1000DC4B4();

  if (os_log_type_enabled(v235, v236))
  {
    v237 = swift_slowAlloc();
    v238 = swift_slowAlloc();
    v490._countAndFlagsBits = v238;
    *v237 = 136315138;
    *(v237 + 4) = sub_10001A58C(v234._countAndFlagsBits, v234._object, &v490._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v235, v236, "[calculateTimelineFor] %s", v237, 0xCu);
    sub_100007FC0(v238);
    v185 = v488;
  }

  (*(v185 + 8))(v186, v489);
  sub_1000080B0(v172, &qword_100124060);
  sub_1000080B0(v197, &qword_100124060);

  return v169;
}