uint64_t sub_100310060(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_100310094()
{
  v2 = qword_1006D8E18;
  if (!qword_1006D8E18)
  {
    sub_10025CAA4(&qword_1006D8DE0);
    sub_10030FE20();
    sub_10031013C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8E18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10031013C()
{
  v2 = qword_1006D8E20;
  if (!qword_1006D8E20)
  {
    sub_10025CAA4(&qword_1006D8E28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8E20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003101C4(uint64_t a1)
{
  sub_10025C9B0(&qword_1006D88D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = type metadata accessor for ContentSizeCategory();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  v5 = type metadata accessor for InstantAnswerContentView();
  sub_100310060(*(a1 + v5[5]), *(a1 + v5[5] + 8) & 1);
  v6 = a1 + v5[6];
  sub_10025C9B0(&qword_1006D88A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for ColorScheme();
    (*(*(v2 - 8) + 8))(v6);
  }

  else
  {
  }

  v3 = a1 + v5[7];
  sub_1002F5D8C(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88));

  sub_10025C9B0(&qword_1006D8DE0);

  return a1;
}

unint64_t sub_1003103A8()
{
  v2 = qword_1006D8E30;
  if (!qword_1006D8E30)
  {
    type metadata accessor for DynamicTypeSize();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8E30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100310428()
{
  v2 = qword_1006D8E38;
  if (!qword_1006D8E38)
  {
    sub_10025CAA4(&qword_1006D8DE8);
    sub_100310094();
    sub_1003104D0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8E38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003104D0()
{
  v2 = qword_1006D8E40;
  if (!qword_1006D8E40)
  {
    sub_10025CAA4(&qword_1006D8E48);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8E40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100310558()
{
  v2 = qword_1006D8E50;
  if (!qword_1006D8E50)
  {
    sub_10025CAA4(&qword_1006D8DD8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8E50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003105E0(uint64_t a1)
{
  v1 = type metadata accessor for DynamicTypeSize();
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_10031063C(uint64_t a1)
{
  sub_10025C9B0(&qword_1006D88D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = type metadata accessor for ContentSizeCategory();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  v8 = type metadata accessor for InstantAnswerContentView();
  sub_100310060(*(a1 + v8[5]), *(a1 + v8[5] + 8) & 1);
  v9 = a1 + v8[6];
  sub_10025C9B0(&qword_1006D88A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for ColorScheme();
    (*(*(v2 - 8) + 8))(v9);
  }

  else
  {
  }

  v3 = a1 + v8[7];
  sub_1002F5D8C(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88));

  sub_10025C9B0(&qword_1006D8DE0);

  v6 = a1 + *(sub_10025C9B0(&qword_1006D8DE8) + 36);

  v7 = v6 + *(sub_10025C9B0(&qword_1006D8E48) + 28);
  v4 = type metadata accessor for ColorScheme();
  (*(*(v4 - 8) + 8))(v7);
  return a1;
}

unint64_t sub_1003108B0()
{
  v2 = qword_1006D8E60;
  if (!qword_1006D8E60)
  {
    sub_10025CAA4(&qword_1006D8DF8);
    sub_10025CAA4(&qword_1006D8DE8);
    sub_10025CAA4(&qword_1006D8DD8);
    sub_100310428();
    sub_100310558();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8E60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003109D4()
{
  v2 = qword_1006D8E68;
  if (!qword_1006D8E68)
  {
    sub_10025CAA4(&qword_1006D8E58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8E68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100310A5C()
{
  v2 = qword_1006D8E70;
  if (!qword_1006D8E70)
  {
    sub_10025CAA4(&qword_1006D8E00);
    sub_1003108B0();
    sub_100310B04();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8E70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100310B04()
{
  v2 = qword_1006D8E78;
  if (!qword_1006D8E78)
  {
    sub_10025CAA4(&qword_1006D8E80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8E78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100310B8C()
{
  v2 = qword_1006D8E88;
  if (!qword_1006D8E88)
  {
    sub_10025CAA4(&qword_1006D8E08);
    sub_100310A5C();
    sub_1002FAEDC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8E88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100310C34()
{
  v2 = qword_1006D8E90;
  if (!qword_1006D8E90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8E90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100310CB0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100310CE4(uint64_t a1)
{
  v3 = type metadata accessor for Font.Design();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_100310D94()
{
  v2 = qword_1006D8EB0;
  if (!qword_1006D8EB0)
  {
    sub_10025CAA4(&qword_1006D8EA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8EB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100310E1C()
{
  v2 = qword_1006D8ED0;
  if (!qword_1006D8ED0)
  {
    sub_10025CAA4(&qword_1006D8EB8);
    sub_1003104D0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8ED0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100310EC0(uint64_t a1)
{

  v3 = a1 + *(sub_10025C9B0(&qword_1006D8EB8) + 36);

  v4 = *(sub_10025C9B0(&qword_1006D8E48) + 28);
  v1 = type metadata accessor for ColorScheme();
  (*(*(v1 - 8) + 8))(v3 + v4);
  return a1;
}

unint64_t sub_100310F78()
{
  v2 = qword_1006D8ED8;
  if (!qword_1006D8ED8)
  {
    sub_10025CAA4(&qword_1006D8EC0);
    sub_100310E1C();
    sub_1002FE55C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8ED8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100311020(uint64_t a1)
{

  v3 = a1 + *(sub_10025C9B0(&qword_1006D8EB8) + 36);

  v4 = *(sub_10025C9B0(&qword_1006D8E48) + 28);
  v1 = type metadata accessor for ColorScheme();
  (*(*(v1 - 8) + 8))(v3 + v4);
  sub_10025C9B0(&qword_1006D8EC0);

  return a1;
}

unint64_t sub_10031111C()
{
  v2 = qword_1006D8F00;
  if (!qword_1006D8F00)
  {
    sub_10025CAA4(&qword_1006D8EF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8F00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003111A4()
{
  v2 = qword_1006D8F08;
  if (!qword_1006D8F08)
  {
    sub_10025CAA4(&qword_1006D8EE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8F08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10031122C()
{
  v2 = qword_1006D8F78;
  if (!qword_1006D8F78)
  {
    sub_10025CAA4(&qword_1006D8EE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8F78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003112B4()
{
  v2 = qword_1006D8FB0;
  if (!qword_1006D8FB0)
  {
    sub_10025CAA4(&qword_1006D8EF0);
    sub_10031122C();
    sub_1003111A4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8FB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100311364()
{
  v2 = qword_1006D8FC0;
  if (!qword_1006D8FC0)
  {
    sub_10025CAA4(&qword_1006D8FB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8FC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for InstantAnswerButton()
{
  v1 = qword_1006D92F8;
  if (!qword_1006D92F8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_100311470()
{
  v2 = qword_1006D8FF0;
  if (!qword_1006D8FF0)
  {
    sub_10025CAA4(&qword_1006D8FE8);
    sub_100311518();
    sub_1003115A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8FF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100311518()
{
  v2 = qword_1006D8FF8;
  if (!qword_1006D8FF8)
  {
    sub_10025CAA4(&qword_1006D9000);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8FF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003115A0()
{
  v2 = qword_1006D9008;
  if (!qword_1006D9008)
  {
    sub_10025CAA4(&qword_1006D9010);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9008);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100311628()
{
  v2 = qword_1006D9018;
  if (!qword_1006D9018)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9018);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003116A4()
{
  v2 = qword_1006D9020;
  if (!qword_1006D9020)
  {
    sub_10025CAA4(&qword_1006D8FC8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9020);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10031172C()
{
  v2 = qword_1006D9028;
  if (!qword_1006D9028)
  {
    sub_10025CAA4(&qword_1006D8FD0);
    sub_1003116A4();
    sub_1003117D4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9028);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003117D4()
{
  v2 = qword_1006D9030;
  if (!qword_1006D9030)
  {
    sub_10025CAA4(&qword_1006D9038);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9030);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10031185C()
{
  v2 = qword_1006D9040;
  if (!qword_1006D9040)
  {
    type metadata accessor for BorderedButtonStyle();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9040);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003118DC()
{
  v2 = qword_1006D9048;
  if (!qword_1006D9048)
  {
    type metadata accessor for Capsule();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9048);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10031195C(uint64_t a1)
{
  v1 = type metadata accessor for RoundedCornerStyle();
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

unint64_t sub_1003119C0()
{
  v2 = qword_1006D9060;
  if (!qword_1006D9060)
  {
    sub_10025CAA4(&qword_1006D9058);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9060);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100311A48()
{
  v2 = qword_1006D9068;
  if (!qword_1006D9068)
  {
    sub_10025CAA4(&qword_1006D9050);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9068);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100311AD0(uint64_t a1)
{
  v4 = *(sub_10025C9B0(&qword_1006D9070) + 44);
  v1 = type metadata accessor for LabelStyleConfiguration.Icon();
  (*(*(v1 - 8) + 8))();
  v5 = *(sub_10025C9B0(&qword_1006D9078) + 48);
  v2 = type metadata accessor for LabelStyleConfiguration.Title();
  (*(*(v2 - 8) + 8))(a1 + v4 + v5);
  return a1;
}

uint64_t sub_100311BB8(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v5 = *(sub_10025C9B0(&qword_1006D9070) + 44);
  v2 = type metadata accessor for LabelStyleConfiguration.Icon();
  (*(*(v2 - 8) + 16))();
  v7 = *(sub_10025C9B0(&qword_1006D9078) + 48);
  v3 = type metadata accessor for LabelStyleConfiguration.Title();
  (*(*(v3 - 8) + 16))(a2 + v5 + v7, a1 + v5 + v7);
  return a2;
}

unint64_t sub_100311CE0()
{
  v2 = qword_1006D9080;
  if (!qword_1006D9080)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9080);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100311D84@<X0>(_BYTE *a1@<X8>)
{
  result = variable initialization expression of ConversationNavigationBarItemsManager.showSupplementaryButtonItem();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100311E5C()
{
  v3 = sub_100311F4C();
  if (v0 <= 0x3F)
  {
    v3 = type metadata accessor for InstantAnswerView.State();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_100311F4C()
{
  v4 = qword_1006D90F0;
  if (!qword_1006D90F0)
  {
    type metadata accessor for ColorScheme();
    v3 = type metadata accessor for Environment();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006D90F0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_100312024(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 89))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v2 = *(a1 + 88) ^ 0xFF;
      if (v2 >= 0xFE)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10031211C(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 89);
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    *(result + 72) = 0;
    *(result + 64) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 88) = -a2;
    }
  }

  return result;
}

uint64_t sub_100312320(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 64))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < &_mh_execute_header)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100312460(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_100312654(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < &_mh_execute_header)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100312794(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1003129A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100312AC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_100312CEC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100312E04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_10031300C()
{
  updated = type metadata accessor for ObservationRegistrar();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_10031314C()
{
  v4 = sub_1002FDCA8();
  if (v0 <= 0x3F)
  {
    v4 = sub_100313290();
    if (v1 <= 0x3F)
    {
      v4 = sub_100311F4C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_100313290()
{
  v4 = qword_1006D9258;
  if (!qword_1006D9258)
  {
    v3 = type metadata accessor for Environment();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006D9258);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_100313374()
{
  v4 = sub_100311F4C();
  if (v0 <= 0x3F)
  {
    v4 = sub_1002FDCA8();
    if (v1 <= 0x3F)
    {
      v4 = sub_100313290();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

unint64_t sub_1003134D8()
{
  v2 = qword_1006D9340;
  if (!qword_1006D9340)
  {
    sub_10025CAA4(&qword_1006D9348);
    sub_1002FE4B8();
    sub_100313580();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9340);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100313580()
{
  v2 = qword_1006D9350;
  if (!qword_1006D9350)
  {
    sub_10025CAA4(&qword_1006D9358);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9350);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100313608()
{
  v2 = qword_1006D9360;
  if (!qword_1006D9360)
  {
    sub_10025CAA4(&qword_1006D9368);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9360);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100313690()
{
  v2 = qword_1006D9370;
  if (!qword_1006D9370)
  {
    sub_10025CAA4(&qword_1006D8F68);
    sub_10025CAA4(&qword_1006D8EC0);
    sub_100310F78();
    swift_getOpaqueTypeConformance2();
    sub_1002FE6D0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9370);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100313788()
{
  v2 = qword_1006D9378;
  if (!qword_1006D9378)
  {
    sub_10025CAA4(&qword_1006D9380);
    sub_10025CAA4(&qword_1006D8FD0);
    type metadata accessor for BorderedButtonStyle();
    sub_10031172C();
    sub_10031185C();
    swift_getOpaqueTypeConformance2();
    sub_1003138A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9378);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003138A8()
{
  v2 = qword_1006D9388;
  if (!qword_1006D9388)
  {
    sub_10025CAA4(&qword_1006D9390);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9388);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003139CC()
{
  v2 = qword_1006D9398;
  if (!qword_1006D9398)
  {
    type metadata accessor for LabelStyleConfiguration.Icon();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9398);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100313A4C()
{
  v2 = qword_1006D93A0;
  if (!qword_1006D93A0)
  {
    type metadata accessor for LabelStyleConfiguration.Title();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D93A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100313AE4()
{
  v2 = qword_1006D93B0;
  if (!qword_1006D93B0)
  {
    sub_10025CAA4(&qword_1006D93A8);
    sub_100313580();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D93B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100313B88(uint64_t a1)
{
  v1 = sub_10025C9B0(&qword_1006D9000);
  (*(*(v1 - 8) + 8))(a1);
  sub_10025C9B0(&qword_1006D8FE8);

  return a1;
}

unint64_t sub_100313C20()
{
  v2 = qword_1006D93D0;
  if (!qword_1006D93D0)
  {
    sub_10025CAA4(&qword_1006D93C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D93D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100313CA8()
{
  v2 = qword_1006D93D8;
  if (!qword_1006D93D8)
  {
    sub_10025CAA4(&qword_1006D93C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D93D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100313D30()
{
  v2 = qword_1006D93E0;
  if (!qword_1006D93E0)
  {
    sub_10025CAA4(&qword_1006D8FA0);
    sub_100313CA8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D93E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100313DD4()
{
  v2 = qword_1006D93E8;
  if (!qword_1006D93E8)
  {
    type metadata accessor for InstantAnswerHotelContentView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D93E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100313E54(uint64_t a1)
{
  sub_10025C9B0(&qword_1006D88D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = type metadata accessor for ContentSizeCategory();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  type metadata accessor for InstantAnswerHotelContentView();

  return a1;
}

void *sub_100313F28(uint64_t *a1, void *a2)
{
  sub_10025C9B0(&qword_1006D88D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for ContentSizeCategory();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v10 = *a1;

    *a2 = v10;
  }

  swift_storeEnumTagMultiPayload();
  v3 = type metadata accessor for InstantAnswerHotelContentView();
  v8 = (a2 + *(v3 + 20));
  v7 = (a1 + *(v3 + 20));
  *v8 = *v7;
  v5 = v7[1];

  v8[1] = v5;
  v8[2] = v7[2];
  v6 = v7[3];

  v8[3] = v6;
  v8[4] = v7[4];
  v9 = v7[5];

  result = a2;
  v8[5] = v9;
  return result;
}

unint64_t sub_10031408C()
{
  v2 = qword_1006D93F0;
  if (!qword_1006D93F0)
  {
    type metadata accessor for InstantAnswerFlightContentView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D93F0);
    return WitnessTable;
  }

  return v2;
}

char *sub_10031410C(char *a1, char *a2)
{
  sub_10025C9B0(&qword_1006D8F28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_10025C9B0(&qword_1006D88D0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for ContentSizeCategory();
      (*(*(v7 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v10 - 8) + 64));
    }

    v8 = type metadata accessor for InstantAnswerHotelContentView();
    memcpy(&a2[*(v8 + 20)], &a1[*(v8 + 20)], 0x30uLL);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v12 = sub_10025C9B0(&qword_1006D88D0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = type metadata accessor for ContentSizeCategory();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v12 - 8) + 64));
    }

    v11 = type metadata accessor for InstantAnswerFlightContentView();
    v3 = &a2[v11[5]];
    v4 = &a1[v11[5]];
    *v3 = *v4;
    *(v3 + 2) = *(v4 + 2);
    v5 = &a2[v11[6]];
    v6 = v11[6];
    *v5 = *&a1[v6];
    *(v5 + 2) = *&a1[v6 + 16];
    *&a2[v11[7]] = *&a1[v11[7]];
    *&a2[v11[8]] = *&a1[v11[8]];
    memcpy(&a2[v11[9]], &a1[v11[9]], 0x50uLL);
    *&a2[v11[10]] = *&a1[v11[10]];
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_1003143D0(uint64_t a1)
{
  v4 = *(sub_10025C9B0(&qword_1006D8F38) + 44);
  v5 = *(sub_10025C9B0(&qword_1006D8F40) + 44);
  v1 = sub_10025C9B0(&qword_1006D8F48);
  (*(*(v1 - 8) + 8))(a1 + v4 + v5);
  v6 = *(sub_10025C9B0(&qword_1006D8F50) + 48);
  v7 = *(sub_10025C9B0(&qword_1006D8F58) + 44);
  v2 = sub_10025C9B0(&qword_1006D8F60);
  (*(*(v2 - 8) + 8))(a1 + v4 + v6 + v7);
  return a1;
}

void *sub_100314510(uint64_t *a1, void *a2)
{
  sub_10025C9B0(&qword_1006D8F28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10025C9B0(&qword_1006D88D0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for ContentSizeCategory();
      (*(*(v7 - 8) + 16))(a2, a1);
    }

    else
    {
      v15 = *a1;

      *a2 = v15;
    }

    swift_storeEnumTagMultiPayload();
    v8 = type metadata accessor for InstantAnswerHotelContentView();
    v13 = (a2 + *(v8 + 20));
    v12 = (a1 + *(v8 + 20));
    *v13 = *v12;
    v10 = v12[1];

    v13[1] = v10;
    v13[2] = v12[2];
    v11 = v12[3];

    v13[3] = v11;
    v13[4] = v12[4];
    v14 = v12[5];

    v13[5] = v14;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_10025C9B0(&qword_1006D88D0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = type metadata accessor for ContentSizeCategory();
      (*(*(v2 - 8) + 16))(a2, a1);
    }

    else
    {
      v32 = *a1;

      *a2 = v32;
    }

    swift_storeEnumTagMultiPayload();
    v31 = type metadata accessor for InstantAnswerFlightContentView();
    v16 = a2 + v31[5];
    v3 = a1 + v31[5];
    *v16 = *v3;
    v17 = *(v3 + 2);

    *(v16 + 2) = v17;
    v18 = a2 + v31[6];
    v4 = a1 + v31[6];
    *v18 = *v4;
    v19 = *(v4 + 2);

    *(v18 + 2) = v19;
    v20 = (a2 + v31[7]);
    v5 = (a1 + v31[7]);
    *v20 = *v5;
    v21 = v5[1];

    v20[1] = v21;
    v22 = (a2 + v31[8]);
    v6 = (a1 + v31[8]);
    *v22 = *v6;
    v23 = v6[1];

    v22[1] = v23;
    v29 = (a2 + v31[9]);
    v28 = (a1 + v31[9]);
    *v29 = *v28;
    v24 = v28[1];

    v29[1] = v24;
    v29[2] = v28[2];
    v25 = v28[3];

    v29[3] = v25;
    v29[4] = v28[4];
    v26 = v28[5];

    v29[5] = v26;
    v29[6] = v28[6];
    v27 = v28[7];

    v29[7] = v27;
    v29[8] = v28[8];
    v30 = v28[9];

    v29[9] = v30;
    *(a2 + v31[10]) = *(a1 + v31[10]);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

_BYTE *sub_10031496C(_BYTE *a1, _BYTE *a2)
{
  *a2 = *a1;
  v2 = sub_10025C9B0(&qword_1006D8F38);
  v9 = &a1[*(v2 + 44)];
  v10 = &a2[*(v2 + 44)];
  *v10 = *v9;
  v10[16] = v9[16];
  v8 = *(sub_10025C9B0(&qword_1006D8F40) + 44);
  v3 = sub_10025C9B0(&qword_1006D8F48);
  (*(*(v3 - 8) + 16))(&v10[v8], &v9[v8]);
  v4 = sub_10025C9B0(&qword_1006D8F50);
  v13 = &v9[*(v4 + 48)];
  v11 = &v10[*(v4 + 48)];
  *v11 = *v13;
  v11[16] = v13[16];
  v12 = *(sub_10025C9B0(&qword_1006D8F58) + 44);
  v5 = sub_10025C9B0(&qword_1006D8F60);
  (*(*(v5 - 8) + 16))(&v11[v12], &v13[v12]);
  return a2;
}

unint64_t sub_100314B20()
{
  v2 = qword_1006D93F8;
  if (!qword_1006D93F8)
  {
    sub_10025CAA4(&qword_1006D93B8);
    sub_10031408C();
    sub_100313DD4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D93F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100314BC8(uint64_t a1)
{
  sub_10025C9B0(&qword_1006D8F28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10025C9B0(&qword_1006D88D0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = type metadata accessor for ContentSizeCategory();
      (*(*(v2 - 8) + 8))(a1);
    }

    else
    {
    }

    type metadata accessor for InstantAnswerHotelContentView();
  }

  else
  {
    sub_10025C9B0(&qword_1006D88D0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v1 = type metadata accessor for ContentSizeCategory();
      (*(*(v1 - 8) + 8))(a1);
    }

    else
    {
    }

    type metadata accessor for InstantAnswerFlightContentView();
  }

  return a1;
}

uint64_t sub_100314DFC(uint64_t a1)
{
  sub_10025C9B0(&qword_1006D88D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = type metadata accessor for ContentSizeCategory();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  type metadata accessor for InstantAnswerFlightContentView();

  return a1;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_100314F4C()
{
}

void *sub_100314FA8(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  v5 = a1[2];

  a2[2] = v5;
  v7 = a1[3];

  a2[3] = v7;
  v9 = a1[4];

  result = a2;
  a2[4] = v9;
  return result;
}

unint64_t sub_100315054()
{
  v2 = qword_1006D9410;
  if (!qword_1006D9410)
  {
    sub_10025CAA4(&qword_1006D9408);
    sub_1003134D8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9410);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003150F8()
{
  v2 = qword_1006D9420;
  if (!qword_1006D9420)
  {
    sub_10025CAA4(&qword_1006D9418);
    sub_100315054();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9420);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_10031519C()
{
}

unint64_t sub_10031520C()
{
  v2 = qword_1006D9430;
  if (!qword_1006D9430)
  {
    sub_10025CAA4(&qword_1006D9428);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9430);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100315294()
{
  v2 = qword_1006D9438;
  if (!qword_1006D9438)
  {
    sub_10025CAA4(&qword_1006D9400);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9438);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10031531C(uint64_t a1)
{
  v11 = *(sub_10025C9B0(&qword_1006D8F20) + 44);
  sub_10025C9B0(&qword_1006D8F28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10025C9B0(&qword_1006D88D0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = type metadata accessor for ContentSizeCategory();
      (*(*(v2 - 8) + 8))(a1 + v11);
    }

    else
    {
    }

    type metadata accessor for InstantAnswerHotelContentView();
  }

  else
  {
    sub_10025C9B0(&qword_1006D88D0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v1 = type metadata accessor for ContentSizeCategory();
      (*(*(v1 - 8) + 8))(a1 + v11);
    }

    else
    {
    }

    type metadata accessor for InstantAnswerFlightContentView();
  }

  v6 = a1 + v11 + *(sub_10025C9B0(&qword_1006D8F30) + 48);
  v8 = v6 + *(sub_10025C9B0(&qword_1006D8F38) + 44);
  v7 = v8 + *(sub_10025C9B0(&qword_1006D8F40) + 44);
  v3 = sub_10025C9B0(&qword_1006D8F48);
  (*(*(v3 - 8) + 8))(v7);
  v9 = v8 + *(sub_10025C9B0(&qword_1006D8F50) + 48);
  v10 = v9 + *(sub_10025C9B0(&qword_1006D8F58) + 44);
  v4 = sub_10025C9B0(&qword_1006D8F60);
  (*(*(v4 - 8) + 8))(v10);
  return a1;
}

unint64_t sub_1003156F4()
{
  v2 = qword_1006D9440;
  if (!qword_1006D9440)
  {
    sub_10025CAA4(&qword_1006D8F70);
    sub_100313690();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9440);
    return WitnessTable;
  }

  return v2;
}

void *sub_100315798(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  v5 = a1[2];

  a2[2] = v5;
  v6 = a1[3];

  a2[3] = v6;
  v7 = a1[4];

  a2[4] = v7;
  memcpy(a2 + 5, a1 + 5, 0x29uLL);
  a2[11] = a1[11];
  v10 = a1[12];
  v11 = a1[13];

  result = a2;
  a2[12] = v10;
  a2[13] = v11;
  return result;
}

uint64_t sub_100315894(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v51 = *(sub_10025C9B0(&qword_1006D8F20) + 44);
  sub_10025C9B0(&qword_1006D8F28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10025C9B0(&qword_1006D88D0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for ContentSizeCategory();
      (*(*(v7 - 8) + 16))();
    }

    else
    {
      v32 = *(a1 + v51);

      *(a2 + v51) = v32;
    }

    swift_storeEnumTagMultiPayload();
    v8 = type metadata accessor for InstantAnswerHotelContentView();
    v30 = (a2 + v51 + *(v8 + 20));
    v29 = (a1 + v51 + *(v8 + 20));
    *v30 = *v29;
    v27 = v29[1];

    v30[1] = v27;
    v30[2] = v29[2];
    v28 = v29[3];

    v30[3] = v28;
    v30[4] = v29[4];
    v31 = v29[5];

    v30[5] = v31;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_10025C9B0(&qword_1006D88D0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = type metadata accessor for ContentSizeCategory();
      (*(*(v2 - 8) + 16))();
    }

    else
    {
      v49 = *(a1 + v51);

      *(a2 + v51) = v49;
    }

    swift_storeEnumTagMultiPayload();
    v48 = type metadata accessor for InstantAnswerFlightContentView();
    v33 = a2 + v51 + v48[5];
    v3 = a1 + v51 + v48[5];
    *v33 = *v3;
    v34 = *(v3 + 16);

    *(v33 + 16) = v34;
    v35 = a2 + v51 + v48[6];
    v4 = a1 + v51 + v48[6];
    *v35 = *v4;
    v36 = *(v4 + 16);

    *(v35 + 16) = v36;
    v37 = (a2 + v51 + v48[7]);
    v5 = (a1 + v51 + v48[7]);
    *v37 = *v5;
    v38 = v5[1];

    v37[1] = v38;
    v39 = (a2 + v51 + v48[8]);
    v6 = (a1 + v51 + v48[8]);
    *v39 = *v6;
    v40 = v6[1];

    v39[1] = v40;
    v46 = (a2 + v51 + v48[9]);
    v45 = (a1 + v51 + v48[9]);
    *v46 = *v45;
    v41 = v45[1];

    v46[1] = v41;
    v46[2] = v45[2];
    v42 = v45[3];

    v46[3] = v42;
    v46[4] = v45[4];
    v43 = v45[5];

    v46[5] = v43;
    v46[6] = v45[6];
    v44 = v45[7];

    v46[7] = v44;
    v46[8] = v45[8];
    v47 = v45[9];

    v46[9] = v47;
    *(a2 + v51 + v48[10]) = *(a1 + v51 + v48[10]);
    swift_storeEnumTagMultiPayload();
  }

  v9 = sub_10025C9B0(&qword_1006D8F30);
  v17 = (a2 + v51 + *(v9 + 48));
  v18 = (a1 + v51 + *(v9 + 48));
  *v17 = *v18;
  v10 = sub_10025C9B0(&qword_1006D8F38);
  v21 = &v17[*(v10 + 44)];
  v22 = &v18[*(v10 + 44)];
  *v21 = *v22;
  v21[16] = v22[16];
  v11 = sub_10025C9B0(&qword_1006D8F40);
  v20 = &v21[*(v11 + 44)];
  v19 = &v22[*(v11 + 44)];
  v12 = sub_10025C9B0(&qword_1006D8F48);
  (*(*(v12 - 8) + 16))(v20, v19);
  v13 = sub_10025C9B0(&qword_1006D8F50);
  v23 = &v21[*(v13 + 48)];
  v24 = &v22[*(v13 + 48)];
  *v23 = *v24;
  v23[16] = v24[16];
  v14 = sub_10025C9B0(&qword_1006D8F58);
  v26 = &v23[*(v14 + 44)];
  v25 = &v24[*(v14 + 44)];
  v15 = sub_10025C9B0(&qword_1006D8F60);
  (*(*(v15 - 8) + 16))(v26, v25);
  return a2;
}

uint64_t sub_100315F7C(Swift::Int a1)
{

  if (a1 > 15)
  {
    _StringGuts.grow(_:)(a1);
  }

  return 0;
}

uint64_t sub_100315FF4(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    return *(a3 + 32 + a1);
  }

  result = sub_100316084(a1, a3);
  __break(1u);
  return result;
}

uint64_t sub_100316084(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(a2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x20 + 8 * result);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100315F7C(82);
    v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Down-casted Array element failed to match the target type\nExpected ", 0x43uLL, 1);
    String.append(_:)(v2);

    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Set", 3uLL, 1);
    String.append(_:)(v3);

    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" but found ", 0xBuLL, 1);
    String.append(_:)(v4);

    swift_getObjectType();
    v5._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v5);

    String.init(stringInterpolation:)();
    _assertionFailure(_:_:flags:)();
    __break(1u);
  }

  return v6;
}

unint64_t sub_100316268()
{
  v2 = qword_1006D9460;
  if (!qword_1006D9460)
  {
    sub_10025CAA4(&qword_1006D8F48);
    sub_100316300();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9460);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100316300()
{
  v2 = qword_1006D9468;
  if (!qword_1006D9468)
  {
    sub_10025CAA4(&qword_1006D9470);
    sub_1003163A8();
    sub_1002FAEDC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9468);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003163A8()
{
  v2 = qword_1006D9478;
  if (!qword_1006D9478)
  {
    type metadata accessor for InstantAnswerButton();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9478);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100316428()
{
  v2 = qword_1006D9480;
  if (!qword_1006D9480)
  {
    sub_10025CAA4(&qword_1006D9458);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9480);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003164B0(uint64_t a1)
{
  v3 = *(sub_10025C9B0(&qword_1006D8F40) + 44);
  v1 = sub_10025C9B0(&qword_1006D8F48);
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

unint64_t sub_100316544()
{
  v2 = qword_1006D9488;
  if (!qword_1006D9488)
  {
    sub_10025CAA4(&qword_1006D8F60);
    sub_1003163A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9488);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003165DC()
{
  v2 = qword_1006D9490;
  if (!qword_1006D9490)
  {
    sub_10025CAA4(&qword_1006D9450);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9490);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100316664(uint64_t a1)
{
  v3 = *(sub_10025C9B0(&qword_1006D8F58) + 44);
  v1 = sub_10025C9B0(&qword_1006D8F60);
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_1003166F0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v4 = *(sub_10025C9B0(&qword_1006D8F40) + 44);
  v2 = sub_10025C9B0(&qword_1006D8F48);
  (*(*(v2 - 8) + 16))(a2 + v4, a1 + v4);
  return a2;
}

uint64_t sub_1003167A4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v4 = *(sub_10025C9B0(&qword_1006D8F58) + 44);
  v2 = sub_10025C9B0(&qword_1006D8F60);
  (*(*(v2 - 8) + 16))(a2 + v4, a1 + v4);
  return a2;
}

unint64_t sub_100316858()
{
  v2 = qword_1006D94A0;
  if (!qword_1006D94A0)
  {
    sub_10025CAA4(&qword_1006D9498);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D94A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003168E0(uint64_t a1)
{
  sub_10025C9B0(&qword_1006D88A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = type metadata accessor for ColorScheme();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  v4 = type metadata accessor for InstantAnswerButton();
  v5 = a1 + *(v4 + 20);
  sub_10025C9B0(&qword_1006D88D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for ContentSizeCategory();
    (*(*(v2 - 8) + 8))(v5);
  }

  else
  {
  }

  sub_100310060(*(a1 + *(v4 + 24)), *(a1 + *(v4 + 24) + 8) & 1);

  return a1;
}

void *sub_100316A70(uint64_t *a1, void *a2)
{
  sub_10025C9B0(&qword_1006D88A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for ColorScheme();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v21 = *a1;

    *a2 = v21;
  }

  swift_storeEnumTagMultiPayload();
  v18 = type metadata accessor for InstantAnswerButton();
  v19 = (a2 + v18[5]);
  v20 = (a1 + v18[5]);
  sub_10025C9B0(&qword_1006D88D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for ContentSizeCategory();
    (*(*(v3 - 8) + 16))(v19, v20);
  }

  else
  {
    v17 = *v20;

    *v19 = v17;
  }

  swift_storeEnumTagMultiPayload();
  v9 = a2 + v18[6];
  v4 = a1 + v18[6];
  v7 = *v4;
  v8 = v4[8];
  sub_100310CB0(*v4, v8 & 1);
  *v9 = v7;
  v9[8] = v8 & 1;
  v5 = v18[7];
  v15 = (a2 + v5);
  v13 = (a1 + v5);
  *(a2 + v5) = *(a1 + v5);
  v10 = *(a1 + v5 + 8);

  v15[1] = v10;
  v15[2] = v13[2];
  v11 = v13[3];

  v15[3] = v11;
  v15[4] = v13[4];
  v12 = v13[5];

  v15[5] = v12;
  v14 = v13[6];
  v16 = v13[7];

  result = a2;
  v15[6] = v14;
  v15[7] = v16;
  *(a2 + v18[8]) = *(a1 + v18[8]);
  return result;
}

void *sub_100316D40(const void *a1, void *a2)
{
  v6 = sub_10025C9B0(&qword_1006D88A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for ColorScheme();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

uint64_t sub_100316E14(uint64_t a1)
{
  sub_10025C9B0(&qword_1006D88A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = type metadata accessor for ColorScheme();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  v6 = type metadata accessor for InstantAnswerButton();
  v7 = a1 + *(v6 + 20);
  sub_10025C9B0(&qword_1006D88D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for ContentSizeCategory();
    (*(*(v2 - 8) + 8))(v7);
  }

  else
  {
  }

  sub_100310060(*(a1 + *(v6 + 24)), *(a1 + *(v6 + 24) + 8) & 1);

  v5 = a1 + *(sub_10025C9B0(&qword_1006D9470) + 36);
  v3 = type metadata accessor for AccessibilityAttachmentModifier();
  (*(*(v3 - 8) + 8))(v5);
  return a1;
}

void *sub_100317000(uint64_t *a1, void *a2)
{
  sub_10025C9B0(&qword_1006D88A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for ColorScheme();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v25 = *a1;

    *a2 = v25;
  }

  swift_storeEnumTagMultiPayload();
  v22 = type metadata accessor for InstantAnswerButton();
  v23 = (a2 + v22[5]);
  v24 = (a1 + v22[5]);
  sub_10025C9B0(&qword_1006D88D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for ContentSizeCategory();
    (*(*(v3 - 8) + 16))(v23, v24);
  }

  else
  {
    v21 = *v24;

    *v23 = v21;
  }

  swift_storeEnumTagMultiPayload();
  v11 = a2 + v22[6];
  v4 = a1 + v22[6];
  v9 = *v4;
  v10 = v4[8];
  sub_100310CB0(*v4, v10 & 1);
  *v11 = v9;
  v11[8] = v10 & 1;
  v5 = v22[7];
  v17 = (a2 + v5);
  v15 = (a1 + v5);
  *(a2 + v5) = *(a1 + v5);
  v12 = *(a1 + v5 + 8);

  v17[1] = v12;
  v17[2] = v15[2];
  v13 = v15[3];

  v17[3] = v13;
  v17[4] = v15[4];
  v14 = v15[5];

  v17[5] = v14;
  v16 = v15[6];
  v18 = v15[7];

  v17[6] = v16;
  v17[7] = v18;
  *(a2 + v22[8]) = *(a1 + v22[8]);
  v6 = sub_10025C9B0(&qword_1006D9470);
  v20 = a2 + *(v6 + 36);
  v19 = a1 + *(v6 + 36);
  v7 = type metadata accessor for AccessibilityAttachmentModifier();
  (*(*(v7 - 8) + 16))(v20, v19);
  return a2;
}

unint64_t sub_100317344()
{
  v2 = qword_1006D94A8;
  if (!qword_1006D94A8)
  {
    type metadata accessor for RoundedRectangle();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D94A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003173C4(uint64_t a1)
{
  v3 = *(type metadata accessor for RoundedRectangle() + 20);
  v1 = type metadata accessor for RoundedCornerStyle();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_100317440(uint64_t a1)
{
  v3 = *(type metadata accessor for RoundedRectangle() + 20);
  v1 = type metadata accessor for RoundedCornerStyle();
  (*(*(v1 - 8) + 8))(a1 + v3);
  sub_10025C9B0(&qword_1006D8E58);

  return a1;
}

char *sub_1003174E4(char *a1, char *a2)
{
  *a2 = *a1;
  v4 = *(type metadata accessor for RoundedRectangle() + 20);
  v2 = type metadata accessor for RoundedCornerStyle();
  (*(*(v2 - 8) + 16))(&a2[v4], &a1[v4]);
  v8 = sub_10025C9B0(&qword_1006D8E58);
  v6 = *(v8 + 52);
  v7 = *&a1[v6];

  result = a2;
  *&a2[v6] = v7;
  *&a2[*(v8 + 56)] = *&a1[*(v8 + 56)];
  return result;
}

uint64_t sub_1003175E8()
{
  v159 = 0;
  v64 = sub_100318AC4;
  v65 = sub_10031C48C;
  v70 = sub_10031D2F0;
  v71 = sub_10031FC3C;
  v73 = sub_100320A90;
  v74 = sub_100321378;
  v77 = sub_100321798;
  v78 = sub_100323DD8;
  v83 = sub_100325220;
  v84 = sub_1003272D4;
  v87 = sub_10032831C;
  v88 = sub_1003285F4;
  v90 = sub_10032861C;
  v91 = sub_100328F74;
  v93 = sub_1003292BC;
  v94 = sub_10032A0F4;
  v96 = sub_10032A5DC;
  v97 = sub_10032C250;
  v99 = sub_10032C9E8;
  v100 = sub_1003285F4;
  v104 = sub_10032CDCC;
  v105 = sub_10033167C;
  v107 = sub_100332798;
  v108 = sub_100333298;
  v110 = sub_100333640;
  v111 = sub_100333C84;
  v113 = sub_100333FCC;
  v114 = sub_10033480C;
  v116 = sub_100334B54;
  v117 = sub_1003351A8;
  v119 = sub_100335508;
  v120 = sub_100335B5C;
  v122 = sub_100335F1C;
  v123 = sub_100336E30;
  v126 = sub_100337178;
  v127 = sub_100337A8C;
  v131 = sub_10033810C;
  v132 = sub_100339F3C;
  v135 = sub_10033A1B4;
  v136 = sub_10033A7F0;
  v139 = sub_10033AC6C;
  v140 = sub_10033B2AC;
  v144 = sub_10033B728;
  v145 = sub_10033C224;
  v148 = sub_10033C7BC;
  v149 = sub_10033D0F0;
  v151 = sub_10033D450;
  v152 = sub_10033DB84;
  v154 = sub_10033DF44;
  v155 = sub_10033F01C;
  v157 = sub_10033F62C;
  v158 = sub_10034013C;
  v210 = &v263;
  v263 = 0;
  v209 = &v261;
  v261 = 0;
  v208 = &v259;
  v259 = 0;
  v207 = &v257;
  v257 = 0;
  v206 = &v255;
  v255 = 0;
  v205 = &v253;
  v253 = 0;
  v204 = &v251;
  v251 = 0;
  v203 = &v249;
  v249 = 0;
  v202 = &v247;
  v247 = 0;
  v201 = &v245;
  v245 = 0;
  v200 = &v243;
  v243 = 0;
  v199 = &v241;
  v241 = 0;
  v198 = &v239;
  v239 = 0;
  v197 = &v237;
  v237 = 0;
  v196 = &v235;
  v235 = 0;
  v195 = &v233;
  v233 = 0;
  v194 = &v231;
  v231 = 0;
  v193 = &v229;
  v229 = 0;
  v192 = &v227;
  v227 = 0;
  v191 = &v225;
  v225 = 0;
  v190 = &v223;
  v223 = 0;
  v189 = &v221;
  v221 = 0;
  v188 = &v219;
  v219 = 0;
  v187 = &v217;
  v217 = 0;
  v186 = &v215;
  v215 = 0;
  v185 = &v213;
  v213 = 0;
  v161 = type metadata accessor for _AssistantIntent();
  v67 = *(v161 - 8);
  v68 = v161 - 8;
  v62 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v161);
  v164 = &v61 - v62;
  v63 = v264;
  sub_10028C1FC(v264);
  v66 = v262;
  memcpy(v262, v63, sizeof(v262));
  sub_100288CC8();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v181 = static _AssistantIntent.Builder.buildExpression(_:)();
  v163 = *(v67 + 8);
  v162 = v67 + 8;
  v163(v164, v161);

  v263 = v181;
  v69 = v265;
  sub_1002E2774(v265);
  v72 = v260;
  v103 = 72;
  memcpy(v260, v69, sizeof(v260));
  sub_1002DF920();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v180 = static _AssistantIntent.Builder.buildExpression(_:)();
  v163(v164, v161);

  v261 = v180;
  v0 = sub_10035F2FC();
  v75 = &v258;
  v258 = v0;
  sub_100321530();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v1 = static _AssistantIntent.Builder.buildExpression(_:)();
  v163(v164, v161);

  v259 = v1;
  v76 = v266;
  sub_1003FA3A0(v266);
  v79 = v256;
  v81 = 80;
  memcpy(v256, v76, sizeof(v256));
  v86 = sub_100324770();
  v85 = &unk_10065EE28;
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v2 = static _AssistantIntent.Builder.buildExpression(_:)();
  v163(v164, v161);

  v257 = v2;
  v80 = v267;
  sub_1003FA3A0(v267);
  v82 = v254;
  memcpy(v254, v80, v81);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v3 = static _AssistantIntent.Builder.buildExpression(_:)();
  v163(v164, v161);

  v255 = v3;
  v4 = sub_100281F54();
  v89 = &v252;
  v252 = v4;
  sub_1002821A4();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v5 = static _AssistantIntent.Builder.buildExpression(_:)();
  v163(v164, v161);

  v253 = v5;
  v6 = sub_1002BC7D8();
  v92 = v250;
  v250[0] = v6;
  v250[1] = v7;
  sub_1002BA768();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v8 = static _AssistantIntent.Builder.buildExpression(_:)();
  v163(v164, v161);

  v251 = v8;
  v9 = sub_1003FFA28();
  v95 = v248;
  v248[0] = v9;
  v248[1] = v10;
  sub_10032A2AC();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v11 = static _AssistantIntent.Builder.buildExpression(_:)();
  v163(v164, v161);

  v249 = v11;
  v12 = sub_10042CA64();
  v98 = v246;
  v246[0] = v12;
  v246[1] = v13;
  v246[2] = v14;
  sub_10032C4C8();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v15 = static _AssistantIntent.Builder.buildExpression(_:)();
  v163(v164, v161);

  v247 = v15;
  v16 = sub_100281F54();
  v101 = &v244;
  v244 = v16;
  sub_10032CD54();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v17 = static _AssistantIntent.Builder.buildExpression(_:)();
  v163(v164, v161);

  v245 = v17;
  v102 = v268;
  sub_1004688B8(v268);
  v106 = v242;
  memcpy(v242, v102, v103);
  sub_100331E94();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v18 = static _AssistantIntent.Builder.buildExpression(_:)();
  v163(v164, v161);

  v243 = v18;
  v19 = sub_10027DAA0();
  v109 = v240;
  v240[0] = v19;
  v240[1] = v20;
  sub_10027A400();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v165 = static _AssistantIntent.Builder.buildExpression(_:)();
  v163(v164, v161);

  v241 = v165;
  v21 = sub_100280474();
  v112 = v238;
  v238[0] = v21;
  v238[1] = v22;
  sub_10027F564();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v166 = static _AssistantIntent.Builder.buildExpression(_:)();
  v163(v164, v161);

  v239 = v166;
  v23 = sub_1002BE890();
  v115 = v236;
  v236[0] = v23;
  v236[1] = v24;
  sub_1002BDAB0();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v167 = static _AssistantIntent.Builder.buildExpression(_:)();
  v163(v164, v161);

  v237 = v167;
  v25 = sub_1003F7F6C();
  v118 = v234;
  v234[0] = v25;
  v234[1] = v26;
  sub_100335360();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v168 = static _AssistantIntent.Builder.buildExpression(_:)();
  v163(v164, v161);

  v235 = v168;
  v27 = sub_100463694();
  v121 = v232;
  v232[0] = v27;
  v232[1] = v28;
  sub_100335D14();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v169 = static _AssistantIntent.Builder.buildExpression(_:)();
  v163(v164, v161);

  v233 = v169;
  v29 = sub_1002C0B54();
  v124 = v230;
  v230[0] = v29;
  v230[1] = v30;
  sub_1002C1424();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v170 = static _AssistantIntent.Builder.buildExpression(_:)();
  v163(v164, v161);

  v231 = v170;
  v125 = v269;
  sub_10046E664(v269);
  v128 = v228;
  v142 = 48;
  memcpy(v228, v125, sizeof(v228));
  v147 = sub_100337D04();
  v146 = &unk_1006627E8;
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v171 = static _AssistantIntent.Builder.buildExpression(_:)();
  v163(v164, v161);

  v229 = v171;
  v129 = v270;
  sub_10046E664(v270);
  v130 = v226;
  memcpy(v226, v129, v142);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v172 = static _AssistantIntent.Builder.buildExpression(_:)();
  v163(v164, v161);

  v227 = v172;
  v133 = v271;
  sub_10046E664(v271);
  v134 = v224;
  memcpy(v224, v133, v142);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v173 = static _AssistantIntent.Builder.buildExpression(_:)();
  v163(v164, v161);

  v225 = v173;
  v137 = v272;
  sub_10046E664(v272);
  v138 = v222;
  memcpy(v222, v137, v142);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v174 = static _AssistantIntent.Builder.buildExpression(_:)();
  v163(v164, v161);

  v223 = v174;
  v141 = v273;
  sub_10046E664(v273);
  v143 = v220;
  memcpy(v220, v141, v142);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v175 = static _AssistantIntent.Builder.buildExpression(_:)();
  v163(v164, v161);

  v221 = v175;
  v31 = sub_1003D596C();
  v150 = v218;
  v218[0] = v31;
  v218[1] = v32;
  v218[2] = v33;
  sub_10033D2A8();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v176 = static _AssistantIntent.Builder.buildExpression(_:)();
  v163(v164, v161);

  v219 = v176;
  v34 = sub_1003D99A0();
  v153 = v216;
  v216[0] = v34;
  v216[1] = v35;
  sub_10033DD3C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v177 = static _AssistantIntent.Builder.buildExpression(_:)();
  v163(v164, v161);

  v217 = v177;
  v36 = sub_100445818();
  v156 = v214;
  v214[0] = v36;
  v214[1] = v37;
  v214[2] = v38;
  sub_10033F294();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v178 = static _AssistantIntent.Builder.buildExpression(_:)();
  v163(v164, v161);

  v215 = v178;
  v39 = sub_10045D374();
  v160 = v212;
  v212[0] = v39;
  v212[1] = v40;
  sub_1003402F4();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v179 = static _AssistantIntent.Builder.buildExpression(_:)();
  v163(v164, v161);

  v213 = v179;
  v182 = sub_10025C9B0(&qword_1006D9508);
  v41 = _allocateUninitializedArray<A>(_:)();
  v42 = v165;
  v43 = v166;
  v44 = v167;
  v45 = v168;
  v46 = v169;
  v47 = v170;
  v48 = v171;
  v49 = v172;
  v50 = v173;
  v51 = v174;
  v52 = v175;
  v53 = v176;
  v54 = v177;
  v55 = v178;
  v56 = v179;
  v57 = v180;
  v183 = v41;
  *v58 = v181;
  v59 = v183;
  v58[1] = v57;
  v58[2] = v1;
  v58[3] = v2;
  v58[4] = v3;
  v58[5] = v5;
  v58[6] = v8;
  v58[7] = v11;
  v58[8] = v15;
  v58[9] = v17;
  v58[10] = v18;
  v58[11] = v42;
  v58[12] = v43;
  v58[13] = v44;
  v58[14] = v45;
  v58[15] = v46;
  v58[16] = v47;
  v58[17] = v48;
  v58[18] = v49;
  v58[19] = v50;
  v58[20] = v51;
  v58[21] = v52;
  v58[22] = v53;
  v58[23] = v54;
  v58[24] = v55;
  v58[25] = v56;
  sub_1002612B0();
  v184 = v59;
  v211 = static _AssistantIntent.Builder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v211;
}

uint64_t sub_100318AC4(uint64_t a1)
{
  v299 = a1;
  v424 = 0;
  v388 = &v423;
  v423 = 0;
  v387 = &v422;
  v422 = 0;
  v386 = &v421;
  v421 = 0;
  v385 = &v420;
  v420 = 0;
  v384 = &v419;
  v419 = 0;
  v383 = &v418;
  v418 = 0;
  v382 = &v417;
  v417 = 0;
  v381 = &v416;
  v416 = 0;
  v380 = &v415;
  v415 = 0;
  v379 = &v414;
  v414 = 0;
  v378 = &v413;
  v413 = 0;
  v377 = &v412;
  v412 = 0;
  v376 = &v411;
  v411 = 0;
  v375 = &v410;
  v410 = 0;
  v374 = &v409;
  v409 = 0;
  v373 = &v408;
  v408 = 0;
  v372 = &v407;
  v407 = 0;
  v371 = &v406;
  v406 = 0;
  v370 = &v405;
  v405 = 0;
  v369 = &v404;
  v404 = 0;
  v368 = &v403;
  v403 = 0;
  v367 = &v402;
  v402 = 0;
  v366 = &v401;
  v401 = 0;
  v365 = &v400;
  v400 = 0;
  v364 = &v399;
  v399 = 0;
  v363 = &v398;
  v398 = 0;
  v362 = &v397;
  v397 = 0;
  v361 = &v396;
  v396 = 0;
  v360 = &v395;
  v395 = 0;
  v359 = &v394;
  v394 = 0;
  v358 = &v393;
  v393 = 0;
  v357 = &v392;
  v392 = 0;
  v356 = &v391;
  v391 = 0;
  v355 = &v390;
  v390 = 0;
  v315 = sub_10025C9B0(&qword_1006D9718);
  v136 = *(v315 - 8);
  v137 = v315 - 8;
  v123 = (v136[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v315);
  v319 = &v123 - v123;
  v124 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v123 - v123);
  v312 = &v123 - v124;
  v125 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v123 - v124);
  v318 = &v123 - v125;
  v320 = sub_10025C9B0(&qword_1006D9720);
  v129 = *(v320 - 8);
  v130 = v320 - 8;
  v126 = (*(v129 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v299);
  v323 = &v123 - v126;
  v424 = v3;
  v307 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Send an email", 0xDuLL, 1);
  countAndFlagsBits = v4._countAndFlagsBits;
  object = v4._object;
  v353 = sub_100288CC8();
  v352 = &unk_1006587E0;
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v341 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322 = *(v129 + 8);
  v321 = v129 + 8;
  v322(v323, v320);

  v423 = v341;
  v293 = 14;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Compose a mail", 0xEuLL, v307 & 1);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v343 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v422 = v343;
  v270 = 20;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Write a mail message", 0x14uLL, v307 & 1);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v344 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v421 = v344;
  v174 = 22;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Draft an email message", 0x16uLL, v307 & 1);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v345 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v420 = v345;
  v131 = 17;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Start a new email", 0x11uLL, v307 & 1);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v346 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v419 = v346;
  v324 = 34;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Start writing up a new draft email", 0x22uLL, v307 & 1);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v347 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v418 = v347;
  v257 = 18;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Open email compose", 0x12uLL, v307 & 1);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v348 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v417 = v348;
  v249 = 1;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Send an email to ", v131, v307 & 1);
  v132 = v5._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);

  v301 = &unk_100503898;
  KeyPath = swift_getKeyPath();
  v302 = sub_10028035C();
  v133 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v305 = "";
  v306 = 0;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v307 & 1);
  v135 = v6._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  v7 = v318;

  v311 = v136[2];
  v310 = v136 + 2;
  v311(v312, v7, v315);
  v314 = v136[4];
  v313 = v136 + 4;
  v314(v319, v312, v315);
  v317 = v136[1];
  v316 = v136 + 1;
  v317(v7, v315);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v349 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v416 = v349;
  v138 = 35;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Compose an email and address it to ", v138, v307 & 1);
  v139 = v8._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);

  v141 = swift_getKeyPath();
  v140 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v305, v306, v307 & 1);
  v142 = v9._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  v10 = v318;

  v311(v312, v10, v315);
  v314(v319, v312, v315);
  v317(v10, v315);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v350 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v415 = v350;
  v274 = 24;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Write a mail message to ", v274, v307 & 1);
  v143 = v11._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);

  v145 = swift_getKeyPath();
  v144 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v305, v306, v307 & 1);
  v146 = v12._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  v13 = v318;

  v311(v312, v13, v315);
  v314(v319, v312, v315);
  v317(v13, v315);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v340 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v414 = v340;
  v168 = 26;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Draft an email message to ", v168, v307 & 1);
  v147 = v14._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);

  v149 = swift_getKeyPath();
  v148 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v305, v306, v307 & 1);
  v150 = v15._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  v16 = v318;

  v311(v312, v16, v315);
  v314(v319, v312, v315);
  v317(v16, v315);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v17 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v413 = v17;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Compose a mail to ", v257, v307 & 1);
  v151 = v18._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);

  v153 = swift_getKeyPath();
  v152 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v305, v306, v307 & 1);
  v154 = v19._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  v20 = v318;

  v311(v312, v20, v315);
  v314(v319, v312, v315);
  v317(v20, v315);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v412 = v21;
  v215 = 21;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Start a new email to ", v215, v307 & 1);
  v155 = v22._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);

  v157 = swift_getKeyPath();
  v156 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v305, v306, v307 & 1);
  v158 = v23._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  v24 = v318;

  v311(v312, v24, v315);
  v314(v319, v312, v315);
  v317(v24, v315);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v25 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v411 = v25;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Send an email and CC ", v215, v307 & 1);
  v159 = v26._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);

  v170 = &unk_1005038C0;
  v161 = swift_getKeyPath();
  v160 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v27 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v305, v306, v307 & 1);
  v162 = v27._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  v28 = v318;

  v311(v312, v28, v315);
  v314(v319, v312, v315);
  v317(v28, v315);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v410 = v29;
  v163 = 30;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Compose an email and CC it to ", v163, v307 & 1);
  v164 = v30._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);

  v166 = swift_getKeyPath();
  v165 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v305, v306, v307 & 1);
  v167 = v31._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  v32 = v318;

  v311(v312, v32, v315);
  v314(v319, v312, v315);
  v317(v32, v315);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v33 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v409 = v33;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v34 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Write an email message CC ", v168, v307 & 1);
  v169 = v34._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v34);

  v172 = swift_getKeyPath();
  v171 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v35 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v305, v306, v307 & 1);
  v173 = v35._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v35);
  v36 = v318;

  v311(v312, v36, v315);
  v314(v319, v312, v315);
  v317(v36, v315);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v37 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v408 = v37;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v38 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Send an email and BCC ", v174, v307 & 1);
  v175 = v38._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v38);

  v185 = &unk_1005038E8;
  v177 = swift_getKeyPath();
  v176 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v39 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v305, v306, v307 & 1);
  v178 = v39._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v39);
  v40 = v318;

  v311(v312, v40, v315);
  v314(v319, v312, v315);
  v317(v40, v315);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v41 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v407 = v41;
  v286 = 31;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v42 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Compose an email and BCC it to ", v286, v307 & 1);
  v179 = v42._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v42);

  v181 = swift_getKeyPath();
  v180 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v43 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v305, v306, v307 & 1);
  v182 = v43._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v43);
  v44 = v318;

  v311(v312, v44, v315);
  v314(v319, v312, v315);
  v317(v44, v315);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v45 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v406 = v45;
  v183 = 27;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v46 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Write an email message BCC ", v183, v307 & 1);
  v184 = v46._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v46);

  v187 = swift_getKeyPath();
  v186 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v47 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v305, v306, v307 & 1);
  v188 = v47._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v47);
  v48 = v318;

  v311(v312, v48, v315);
  v314(v319, v312, v315);
  v317(v48, v315);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v308 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v405 = v308;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v285 = "Send an email with the subject ";
  v49 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Send an email with the subject ", v286, v307 & 1);
  v189 = v49._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v49);

  v288 = &unk_100503848;
  v191 = swift_getKeyPath();
  v289 = sub_10028DF54();
  v190 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v50 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v305, v306, v307 & 1);
  v192 = v50._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v50);
  v51 = v318;

  v311(v312, v51, v315);
  v314(v319, v312, v315);
  v317(v51, v315);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v325 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v404 = v325;
  v224 = 40;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v223 = "Compose an email and set the subject to ";
  v52 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Compose an email and set the subject to ", v224, v307 & 1);
  v193 = v52._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v52);

  v195 = swift_getKeyPath();
  v194 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v53 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v305, v306, v307 & 1);
  v196 = v53._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v53);
  v54 = v318;

  v311(v312, v54, v315);
  v314(v319, v312, v315);
  v317(v54, v315);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v326 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v403 = v326;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v214 = "Write an email about ";
  v55 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Write an email about ", v215, v307 & 1);
  v197 = v55._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v55);

  v199 = swift_getKeyPath();
  v198 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v56 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v305, v306, v307 & 1);
  v200 = v56._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v56);
  v57 = v318;

  v311(v312, v57, v315);
  v314(v319, v312, v315);
  v317(v57, v315);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v327 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v402 = v327;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v58 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Send an email asking ", v215, v307 & 1);
  v201 = v58._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v58);

  v295 = &unk_100503870;
  v203 = swift_getKeyPath();
  v296 = sub_10028E064();
  v202 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v59 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v305, v306, v307 & 1);
  v204 = v59._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v59);
  v60 = v318;

  v311(v312, v60, v315);
  v314(v319, v312, v315);
  v317(v60, v315);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v328 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v401 = v328;
  v248 = 37;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v61 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Compose an email and set the body to ", v248, v307 & 1);
  v205 = v61._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v61);

  v207 = swift_getKeyPath();
  v206 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v62 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v305, v306, v307 & 1);
  v208 = v62._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v62);
  v63 = v318;

  v311(v312, v63, v315);
  v314(v319, v312, v315);
  v317(v63, v315);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v329 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v400 = v329;
  v209 = 15;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v64 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Write an email ", v209, v307 & 1);
  v210 = v64._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v64);

  v212 = swift_getKeyPath();
  v211 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v65 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v305, v306, v307 & 1);
  v213 = v65._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v65);
  v66 = v318;

  v311(v312, v66, v315);
  v314(v319, v312, v315);
  v317(v66, v315);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v330 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v399 = v330;
  v232 = 2;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v67 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v214, v215, v307 & 1);
  v216 = v67._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v67);

  v218 = swift_getKeyPath();
  v217 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v264 = " saying ";
  v265 = 8;
  v68 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" saying ", 8uLL, v307 & 1);
  v219 = v68._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v68);

  v221 = swift_getKeyPath();
  v220 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v69 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v305, v306, v307 & 1);
  v222 = v69._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v69);
  v70 = v318;

  v311(v312, v70, v315);
  v314(v319, v312, v315);
  v317(v70, v315);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v331 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v398 = v331;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v71 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v223, v224, v307 & 1);
  v225 = v71._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v71);

  v227 = swift_getKeyPath();
  v226 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v278 = " and say ";
  v279 = 9;
  v72 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and say ", 9uLL, v307 & 1);
  v228 = v72._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v72);

  v230 = swift_getKeyPath();
  v229 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v73 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v305, v306, v307 & 1);
  v231 = v73._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v73);
  v74 = v318;

  v311(v312, v74, v315);
  v314(v319, v312, v315);
  v317(v74, v315);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v332 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v397 = v332;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v75 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v285, v286, v307 & 1);
  v233 = v75._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v75);

  v235 = swift_getKeyPath();
  v234 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v292 = " and the body ";
  v76 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and the body ", v293, v307 & 1);
  v236 = v76._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v76);

  v238 = swift_getKeyPath();
  v237 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v77 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v305, v306, v307 & 1);
  v239 = v77._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v77);
  v78 = v318;

  v311(v312, v78, v315);
  v314(v319, v312, v315);
  v317(v78, v315);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v333 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v396 = v333;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v250 = 23;
  v79 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Write an email from my ", 0x17uLL, v307 & 1);
  v240 = v79._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v79);

  v252 = &unk_100503910;
  v242 = swift_getKeyPath();
  v253 = sub_10028E17C();
  v241 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v80 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" account", v265, v307 & 1);
  v243 = v80._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v80);
  v81 = v318;

  v311(v312, v81, v315);
  v314(v319, v312, v315);
  v317(v81, v315);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v334 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v395 = v334;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v82 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Compose an email from my ", 0x19uLL, v307 & 1);
  v244 = v82._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v82);

  v246 = swift_getKeyPath();
  v245 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v83 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" email", 6uLL, v307 & 1);
  v247 = v83._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v83);
  v84 = v318;

  v311(v312, v84, v315);
  v314(v319, v312, v315);
  v317(v84, v315);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v335 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v394 = v335;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v85 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Send an email using my ", v250, v307 & 1);
  v251 = v85._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v85);

  v255 = swift_getKeyPath();
  v254 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v86 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" email address", v293, v307 & 1);
  v256 = v86._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v86);
  v87 = v318;

  v311(v312, v87, v315);
  v314(v319, v312, v315);
  v317(v87, v315);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v336 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v393 = v336;
  v284 = 3;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v88 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Write an email to ", v257, v307 & 1);
  v258 = v88._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v88);

  v260 = swift_getKeyPath();
  v259 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v89 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" about ", 7uLL, v307 & 1);
  v261 = v89._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v89);

  v263 = swift_getKeyPath();
  v262 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v90 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v264, v265, v307 & 1);
  v266 = v90._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v90);

  v268 = swift_getKeyPath();
  v267 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v91 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v305, v306, v307 & 1);
  v269 = v91._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v91);
  v92 = v318;

  v311(v312, v92, v315);
  v314(v319, v312, v315);
  v317(v92, v315);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v337 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v392 = v337;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v93 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Compose an email to ", v270, v307 & 1);
  v271 = v93._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v93);

  v273 = swift_getKeyPath();
  v272 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v94 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and set the subject to ", v274, v307 & 1);
  v275 = v94._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v94);

  v277 = swift_getKeyPath();
  v276 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v95 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v278, v279, v307 & 1);
  v280 = v95._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v95);

  v282 = swift_getKeyPath();
  v281 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v96 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v305, v306, v307 & 1);
  v283 = v96._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v96);
  v97 = v318;

  v311(v312, v97, v315);
  v314(v319, v312, v315);
  v317(v97, v315);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v338 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v391 = v338;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v98 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v285, v286, v307 & 1);
  v287 = v98._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v98);

  v291 = swift_getKeyPath();
  v290 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v99 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v292, v293, v307 & 1);
  v294 = v99._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v99);

  v298 = swift_getKeyPath();
  v297 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v100 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and address it to ", 0x13uLL, v307 & 1);
  v300 = v100._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v100);

  v304 = swift_getKeyPath();
  v303 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v101 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v305, v306, v307 & 1);
  v309 = v101._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v101);
  v102 = v308;

  v311(v312, v318, v315);
  v314(v319, v312, v315);
  v317(v318, v315);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v339 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v322(v323, v320);

  v390 = v339;
  v342 = sub_10025C9B0(&qword_1006D9728);
  v103 = _allocateUninitializedArray<A>(_:)();
  v104 = v325;
  v105 = v326;
  v106 = v327;
  v107 = v328;
  v108 = v329;
  v109 = v330;
  v110 = v331;
  v111 = v332;
  v112 = v333;
  v113 = v334;
  v114 = v335;
  v115 = v336;
  v116 = v337;
  v117 = v338;
  v118 = v339;
  v119 = v340;
  v351 = v103;
  *v120 = v341;
  v120[1] = v343;
  v120[2] = v344;
  v120[3] = v345;
  v120[4] = v346;
  v120[5] = v347;
  v120[6] = v348;
  v120[7] = v349;
  v120[8] = v350;
  v121 = v351;
  v120[9] = v119;
  v120[10] = v17;
  v120[11] = v21;
  v120[12] = v25;
  v120[13] = v29;
  v120[14] = v33;
  v120[15] = v37;
  v120[16] = v41;
  v120[17] = v45;
  v120[18] = v102;
  v120[19] = v104;
  v120[20] = v105;
  v120[21] = v106;
  v120[22] = v107;
  v120[23] = v108;
  v120[24] = v109;
  v120[25] = v110;
  v120[26] = v111;
  v120[27] = v112;
  v120[28] = v113;
  v120[29] = v114;
  v120[30] = v115;
  v120[31] = v116;
  v120[32] = v117;
  v120[33] = v118;
  sub_1002612B0();
  v354 = v121;
  v389 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v389;
}

_BYTE *sub_10031BE64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10028B3B4(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1002895B8();
  result = __dst;
  *a2 = v2;
  sub_10028E32C();
  return result;
}

_BYTE *sub_10031BECC(uint64_t *a1, uint64_t *a2)
{
  sub_1002A730C(a1, &v5);
  sub_10028B3B4(a2, v4);
  memcpy(__dst, v4, sizeof(__dst));
  sub_100289614();
  result = __dst;
  sub_10028E32C();
  return result;
}

_BYTE *sub_10031BF40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10028B3B4(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1002896B4();
  result = __dst;
  *a2 = v2;
  sub_10028E32C();
  return result;
}

_BYTE *sub_10031BFA8(uint64_t *a1, uint64_t *a2)
{
  sub_1002A730C(a1, &v5);
  sub_10028B3B4(a2, v4);
  memcpy(__dst, v4, sizeof(__dst));
  sub_100289710();
  result = __dst;
  sub_10028E32C();
  return result;
}

_BYTE *sub_10031C01C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10028B3B4(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1002897B0();
  result = __dst;
  *a2 = v2;
  sub_10028E32C();
  return result;
}

_BYTE *sub_10031C084(uint64_t *a1, uint64_t *a2)
{
  sub_1002A730C(a1, &v5);
  sub_10028B3B4(a2, v4);
  memcpy(__dst, v4, sizeof(__dst));
  sub_10028980C();
  result = __dst;
  sub_10028E32C();
  return result;
}

_BYTE *sub_10031C0F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10028B3B4(a1, v6);
  memcpy(__dst, v6, sizeof(__dst));
  v2 = sub_1002898E8();
  result = __dst;
  *a2 = v2;
  a2[1] = v4;
  sub_10028E32C();
  return result;
}

_BYTE *sub_10031C164(void *a1, uint64_t *a2)
{
  sub_100268860(a1, &v5);
  sub_10028B3B4(a2, v4);
  memcpy(__dst, v4, sizeof(__dst));
  sub_100289950();
  result = __dst;
  sub_10028E32C();
  return result;
}

_BYTE *sub_10031C1E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = a2;
  v4 = a1;
  v5 = (*(*(sub_10025C9B0(&unk_1006D7380) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v4);
  v7 = &v4 - v5;
  v6 = v10;
  sub_10028B3B4(v2, v10);
  v9 = __dst;
  memcpy(__dst, v6, sizeof(__dst));
  sub_100289A40();
  sub_100342710(v7, v8);
  result = v9;
  sub_10028E32C();
  return result;
}

_BYTE *sub_10031C2BC(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v6 = a2;
  v5 = (*(*(sub_10025C9B0(&unk_1006D7380) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v4);
  v8 = &v4 - v5;
  sub_100289B6C(v2, &v4 - v5);
  v7 = v10;
  sub_10028B3B4(v6, v10);
  v9 = __dst;
  memcpy(__dst, v7, sizeof(__dst));
  sub_100289A94(v8);
  result = v9;
  sub_10028E32C();
  return result;
}

_BYTE *sub_10031C390@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10028B3B4(a1, v7);
  memcpy(__dst, v7, sizeof(__dst));
  v2 = sub_100289CFC();
  result = __dst;
  *a2 = v2;
  a2[1] = v4;
  a2[2] = v5;
  sub_10028E32C();
  return result;
}

_BYTE *sub_10031C400(uint64_t a1, uint64_t *a2)
{
  sub_100342660(a1, &v6);
  v4 = v6;
  sub_10028B3B4(a2, v5);
  memcpy(__dst, v5, sizeof(__dst));
  sub_100289D70(v4);
  result = __dst;
  sub_10028E32C();
  return result;
}

uint64_t sub_10031C48C(uint64_t a1)
{
  v24 = a1;
  v28 = 0;
  v12 = sub_10031CA70;
  v17 = sub_10031CCC0;
  v19 = sub_10031CF10;
  v21 = sub_10031CF10;
  v25 = sub_10031CF10;
  v27 = sub_10031D100;
  v56 = 0;
  v48 = &v55;
  v55 = 0;
  v47 = &v54;
  v54 = 0;
  v46 = &v53;
  v53 = 0;
  v45 = &v52;
  v52 = 0;
  v44 = &v51;
  v51 = 0;
  v43 = &v50;
  v50 = 0;
  v31 = type metadata accessor for _AssistantIntent.Value();
  v15 = *(v31 - 8);
  v16 = v31 - 8;
  v11 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v31);
  v34 = &v10 - v11;
  v56 = a1;
  KeyPath = swift_getKeyPath();
  sub_10028DF54();
  v13 = _AssistantIntent.IntentProjection.subscript.getter();
  v29 = sub_100288CC8();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v35 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v33 = *(v15 + 8);
  v32 = v15 + 8;
  v33(v34, v31);

  v55 = v35;
  v18 = swift_getKeyPath();
  sub_10028E064();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v36 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v33(v34, v31);

  v54 = v36;
  v20 = swift_getKeyPath();
  v23 = sub_10028035C();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v37 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v33(v34, v31);

  v53 = v37;
  v22 = swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v38 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v33(v34, v31);

  v52 = v38;
  v26 = swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v39 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v33(v34, v31);

  v51 = v39;
  v30 = swift_getKeyPath();
  sub_10028E17C();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v40 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v33(v34, v31);

  v50 = v40;
  v41 = sub_10025C9B0(&qword_1006D9518);
  v2 = _allocateUninitializedArray<A>(_:)();
  v3 = v36;
  v4 = v37;
  v5 = v38;
  v6 = v39;
  v7 = v40;
  *v8 = v35;
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v5;
  v8[4] = v6;
  v8[5] = v7;
  sub_1002612B0();
  v42 = v2;
  v49 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v49;
}

uint64_t sub_10031CA70()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lasagna recipe", 0xEuLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Brazil trip itinerary", 0x15uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("please respond by EOD", 0x15uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("photos from team dinner", 0x17uLL, 1);
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("meeting details", 0xFuLL, 1);
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  v0[4] = v6;
  sub_1002612B0();
  v7 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v7;
}

uint64_t sub_10031CCC0()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("what should we do this weekend? let me know what your schedule is", 0x41uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("please notify all team members and directs about your decision by end of the day today. thanks", 0x5EuLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("here's the lasagna recipe i tried last night, it was amazing! let me know what you think of it", 0x5EuLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("the deadline is approaching, please confirm your commitment", 0x3BuLL, 1);
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("I've attached flight itinerary, hotel confirmation, and excursion details. Can't wait!", 0x56uLL, 1);
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  v0[4] = v6;
  sub_1002612B0();
  v7 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v7;
}

uint64_t sub_10031CF10()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("my boss", 7uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("John Smith", 0xAuLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Jane", 4uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("bob@example.com", 0xFuLL, 1);
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  sub_1002612B0();
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v6;
}

uint64_t sub_10031D100()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("work", 4uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Gmail", 5uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("school", 6uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("bob@example.com", 0xFuLL, 1);
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  sub_1002612B0();
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v6;
}

uint64_t sub_10031D2F0(uint64_t a1)
{
  v156 = a1;
  v216 = 0;
  v203 = &v215;
  v215 = 0;
  v202 = &v214;
  v214 = 0;
  v201 = &v213;
  v213 = 0;
  v200 = &v212;
  v212 = 0;
  v199 = &v211;
  v211 = 0;
  v198 = &v210;
  v210 = 0;
  v197 = &v209;
  v209 = 0;
  v196 = &v208;
  v208 = 0;
  v195 = &v207;
  v207 = 0;
  v194 = &v206;
  v206 = 0;
  v193 = &v205;
  v205 = 0;
  v169 = sub_10025C9B0(&qword_1006D9700);
  v71 = *(v169 - 8);
  v72 = v169 - 8;
  v59 = (v71[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v169);
  v173 = &v58 - v59;
  v60 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v58 - v59);
  v166 = &v58 - v60;
  v61 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v58 - v60);
  v172 = &v58 - v61;
  v174 = sub_10025C9B0(&qword_1006D9708);
  v65 = *(v174 - 8);
  v66 = v174 - 8;
  v62 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v156);
  v177 = &v58 - v62;
  v216 = v3;
  v162 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Forward an email", 0x10uLL, 1);
  countAndFlagsBits = v4._countAndFlagsBits;
  object = v4._object;
  v191 = sub_1002DF920();
  v190 = &unk_100659F68;
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v178 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v176 = *(v65 + 8);
  v175 = v65 + 8;
  v176(v177, v174);

  v215 = v178;
  v150 = 8;
  v80 = 1;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v149 = "Forward ";
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Forward ", v150, v162 & 1);
  v67 = v5._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);

  v152 = &unk_1005037E0;
  KeyPath = swift_getKeyPath();
  v153 = sub_10027D1BC();
  v68 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v160 = "";
  v161 = 0;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v162 & 1);
  v70 = v6._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  v7 = v172;

  v165 = v71[2];
  v164 = v71 + 2;
  v165(v166, v7, v169);
  v168 = v71[4];
  v167 = v71 + 4;
  v168(v173, v166, v169);
  v171 = v71[1];
  v170 = v71 + 1;
  v171(v7, v169);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v179 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v176(v177, v174);

  v214 = v179;
  v148 = 2;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v149, v150, v162 & 1);
  v73 = v8._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);

  v75 = swift_getKeyPath();
  v74 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v132 = 9;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and say ", 9uLL, v162 & 1);
  v76 = v9._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);

  v78 = swift_getKeyPath();
  sub_10028E064();
  v77 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v160, v161, v162 & 1);
  v79 = v10._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  v11 = v172;

  v165(v166, v11, v169);
  v168(v173, v166, v169);
  v171(v11, v169);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v180 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v176(v177, v174);

  v213 = v180;
  v92 = 20;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v137 = "Find ";
  v138 = 5;
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Find ", 5uLL, v162 & 1);
  v81 = v12._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);

  v83 = swift_getKeyPath();
  v82 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and forward it", 0xFuLL, v162 & 1);
  v84 = v13._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  v14 = v172;

  v165(v166, v14, v169);
  v168(v173, v166, v169);
  v171(v14, v169);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v181 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v176(v177, v174);

  v212 = v181;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v149, v150, v162 & 1);
  v85 = v15._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);

  v87 = swift_getKeyPath();
  v86 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v117 = " to ";
  v118 = 4;
  v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v162 & 1);
  v88 = v16._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);

  v120 = &unk_100503768;
  v90 = swift_getKeyPath();
  v121 = sub_10028035C();
  v89 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v160, v161, v162 & 1);
  v91 = v17._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  v18 = v172;

  v165(v166, v18, v169);
  v168(v173, v166, v169);
  v171(v18, v169);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v182 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v176(v177, v174);

  v211 = v182;
  v113 = 3;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v149, v150, v162 & 1);
  v93 = v19._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);

  v95 = swift_getKeyPath();
  v94 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v117, v118, v162 & 1);
  v96 = v20._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);

  v98 = swift_getKeyPath();
  v97 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and cc ", v150, v162 & 1);
  v99 = v21._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);

  v101 = swift_getKeyPath();
  v100 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v160, v161, v162 & 1);
  v102 = v22._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  v23 = v172;

  v165(v166, v23, v169);
  v168(v173, v166, v169);
  v171(v23, v169);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v183 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v176(v177, v174);

  v210 = v183;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v149, v150, v162 & 1);
  v103 = v24._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);

  v105 = swift_getKeyPath();
  v104 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v117, v118, v162 & 1);
  v106 = v25._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);

  v108 = swift_getKeyPath();
  v107 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and bcc ", v132, v162 & 1);
  v109 = v26._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);

  v111 = swift_getKeyPath();
  v110 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v27 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v160, v161, v162 & 1);
  v112 = v27._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  v28 = v172;

  v165(v166, v28, v169);
  v168(v173, v166, v169);
  v171(v28, v169);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v184 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v176(v177, v174);

  v209 = v184;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v149, v150, v162 & 1);
  v114 = v29._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);

  v116 = swift_getKeyPath();
  v115 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v117, v118, v162 & 1);
  v119 = v30._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);

  v123 = swift_getKeyPath();
  v122 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v131 = " from my ";
  v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" from my ", v132, v162 & 1);
  v124 = v31._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);

  v143 = &unk_100503808;
  v126 = swift_getKeyPath();
  v144 = sub_10028E17C();
  v125 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v32 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" account", v150, v162 & 1);
  v127 = v32._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v32);
  v33 = v172;

  v165(v166, v33, v169);
  v168(v173, v166, v169);
  v171(v33, v169);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v185 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v176(v177, v174);

  v208 = v185;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v34 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v149, v150, v162 & 1);
  v128 = v34._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v34);

  v130 = swift_getKeyPath();
  v129 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v35 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v131, v132, v162 & 1);
  v133 = v35._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v35);

  v135 = swift_getKeyPath();
  v134 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v36 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" email", 6uLL, v162 & 1);
  v136 = v36._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v36);
  v37 = v172;

  v165(v166, v37, v169);
  v168(v173, v166, v169);
  v171(v37, v169);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v186 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v176(v177, v174);

  v207 = v186;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v38 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v137, v138, v162 & 1);
  v139 = v38._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v38);

  v141 = swift_getKeyPath();
  v140 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v39 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and forward it using my ", 0x19uLL, v162 & 1);
  v142 = v39._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v39);

  v146 = swift_getKeyPath();
  v145 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v40 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" email address", 0xEuLL, v162 & 1);
  v147 = v40._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v40);
  v41 = v172;

  v165(v166, v41, v169);
  v168(v173, v166, v169);
  v171(v41, v169);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v187 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v176(v177, v174);

  v206 = v187;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v42 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v149, v150, v162 & 1);
  v151 = v42._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v42);

  v155 = swift_getKeyPath();
  v154 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v43 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and set the subject to ", 0x18uLL, v162 & 1);
  v157 = v43._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v43);

  v159 = swift_getKeyPath();
  sub_10028DF54();
  v158 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v44 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v160, v161, v162 & 1);
  v163 = v44._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v44);

  v165(v166, v172, v169);
  v168(v173, v166, v169);
  v171(v172, v169);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v188 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v176(v177, v174);

  v205 = v188;
  v189 = sub_10025C9B0(&qword_1006D9710);
  v45 = _allocateUninitializedArray<A>(_:)();
  v46 = v179;
  v47 = v180;
  v48 = v181;
  v49 = v182;
  v50 = v183;
  v51 = v184;
  v52 = v185;
  v53 = v186;
  v54 = v187;
  v55 = v188;
  *v56 = v178;
  v56[1] = v46;
  v56[2] = v47;
  v56[3] = v48;
  v56[4] = v49;
  v56[5] = v50;
  v56[6] = v51;
  v56[7] = v52;
  v56[8] = v53;
  v56[9] = v54;
  v56[10] = v55;
  sub_1002612B0();
  v192 = v45;
  v204 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v204;
}

_BYTE *sub_10031F514@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_1002E1A40(a1, v4);
  memcpy(__dst, v4, sizeof(__dst));
  sub_1002DFF74(v5);
  memcpy(a2, v5, 0x80uLL);
  result = __dst;
  sub_1002E4218();
  return result;
}

_BYTE *sub_10031F58C(void *a1, uint64_t *a2)
{
  sub_1002E0080(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  sub_1002E1A40(a2, v4);
  memcpy(v7, v4, sizeof(v7));
  sub_1002DFFF8(__dst);
  result = v7;
  sub_1002E4218();
  return result;
}

_BYTE *sub_10031F614@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = a2;
  v4 = a1;
  v5 = (*(*(sub_10025C9B0(&unk_1006D7380) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v4);
  v7 = &v4 - v5;
  v6 = v10;
  sub_1002E1A40(v2, v10);
  v9 = __dst;
  memcpy(__dst, v6, sizeof(__dst));
  sub_100289A40();
  sub_100342710(v7, v8);
  result = v9;
  sub_1002E4218();
  return result;
}

_BYTE *sub_10031F6EC(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v6 = a2;
  v5 = (*(*(sub_10025C9B0(&unk_1006D7380) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v4);
  v8 = &v4 - v5;
  sub_100289B6C(v2, &v4 - v5);
  v7 = v10;
  sub_1002E1A40(v6, v10);
  v9 = __dst;
  memcpy(__dst, v7, sizeof(__dst));
  sub_1002DFE9C(v8);
  result = v9;
  sub_1002E4218();
  return result;
}

_BYTE *sub_10031F7C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1002E1A40(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1002895B8();
  result = __dst;
  *a2 = v2;
  sub_1002E4218();
  return result;
}

_BYTE *sub_10031F828(uint64_t *a1, uint64_t *a2)
{
  sub_1002A730C(a1, &v5);
  sub_1002E1A40(a2, v4);
  memcpy(__dst, v4, sizeof(__dst));
  sub_100289614();
  result = __dst;
  sub_1002E4218();
  return result;
}

_BYTE *sub_10031F89C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1002E1A40(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1002896B4();
  result = __dst;
  *a2 = v2;
  sub_1002E4218();
  return result;
}

_BYTE *sub_10031F904(uint64_t *a1, uint64_t *a2)
{
  sub_1002A730C(a1, &v5);
  sub_1002E1A40(a2, v4);
  memcpy(__dst, v4, sizeof(__dst));
  sub_100289710();
  result = __dst;
  sub_1002E4218();
  return result;
}

_BYTE *sub_10031F978@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1002E1A40(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1002897B0();
  result = __dst;
  *a2 = v2;
  sub_1002E4218();
  return result;
}

_BYTE *sub_10031F9E0(uint64_t *a1, uint64_t *a2)
{
  sub_1002A730C(a1, &v5);
  sub_1002E1A40(a2, v4);
  memcpy(__dst, v4, sizeof(__dst));
  sub_10028980C();
  result = __dst;
  sub_1002E4218();
  return result;
}

_BYTE *sub_10031FA54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1002E1A40(a1, v7);
  memcpy(__dst, v7, sizeof(__dst));
  v2 = sub_100289CFC();
  result = __dst;
  *a2 = v2;
  a2[1] = v4;
  a2[2] = v5;
  sub_1002E4218();
  return result;
}

_BYTE *sub_10031FAC4(uint64_t a1, uint64_t *a2)
{
  sub_100342660(a1, &v6);
  v4 = v6;
  sub_1002E1A40(a2, v5);
  memcpy(__dst, v5, sizeof(__dst));
  sub_100289D70(v4);
  result = __dst;
  sub_1002E4218();
  return result;
}

_BYTE *sub_10031FB50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1002E1A40(a1, v6);
  memcpy(__dst, v6, sizeof(__dst));
  v2 = sub_1002898E8();
  result = __dst;
  *a2 = v2;
  a2[1] = v4;
  sub_1002E4218();
  return result;
}

_BYTE *sub_10031FBBC(void *a1, uint64_t *a2)
{
  sub_100268860(a1, &v5);
  sub_1002E1A40(a2, v4);
  memcpy(__dst, v4, sizeof(__dst));
  sub_100289950();
  result = __dst;
  sub_1002E4218();
  return result;
}

uint64_t sub_10031FC3C(uint64_t a1)
{
  v23 = a1;
  v27 = 0;
  v11[1] = sub_100320330;
  v14 = sub_100320520;
  v16 = sub_1003206B0;
  v18 = sub_1003206B0;
  v21 = sub_1003206B0;
  v24 = sub_1003208A0;
  v26 = sub_10031D100;
  v58 = 0;
  v49 = &v57;
  v57 = 0;
  v48 = &v56;
  v56 = 0;
  v47 = &v55;
  v55 = 0;
  v46 = &v54;
  v54 = 0;
  v45 = &v53;
  v53 = 0;
  v44 = &v52;
  v52 = 0;
  v43 = &v51;
  v51 = 0;
  v30 = type metadata accessor for _AssistantIntent.Value();
  v12 = *(v30 - 8);
  v13 = v30 - 8;
  v11[0] = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v33 = v11 - v11[0];
  v58 = a1;
  v11[3] = swift_getKeyPath();
  sub_10028DF54();
  v11[2] = _AssistantIntent.IntentProjection.subscript.getter();
  v28 = sub_1002DF920();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v34 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v32 = *(v12 + 8);
  v31 = v12 + 8;
  v32(v33, v30);

  v57 = v34;
  KeyPath = swift_getKeyPath();
  sub_10028E064();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v35 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v32(v33, v30);

  v56 = v35;
  v17 = swift_getKeyPath();
  v20 = sub_10028035C();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v36 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v32(v33, v30);

  v55 = v36;
  v19 = swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v37 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v32(v33, v30);

  v54 = v37;
  v22 = swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v38 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v32(v33, v30);

  v53 = v38;
  v25 = swift_getKeyPath();
  sub_10027D1BC();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v39 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v32(v33, v30);

  v52 = v39;
  v29 = swift_getKeyPath();
  sub_10028E17C();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v40 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v32(v33, v30);

  v51 = v40;
  v41 = sub_10025C9B0(&qword_1006D9518);
  v2 = _allocateUninitializedArray<A>(_:)();
  v3 = v35;
  v4 = v36;
  v5 = v37;
  v6 = v38;
  v7 = v39;
  v8 = v40;
  *v9 = v34;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = v6;
  v9[5] = v7;
  v9[6] = v8;
  sub_1002612B0();
  v42 = v2;
  v50 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v50;
}

uint64_t sub_100320330()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Recommendation letter request", 0x1DuLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Board meeting minutes", 0x15uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("How are you?", 0xCuLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("URGENT: need immediate attention", 0x20uLL, 1);
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  sub_1002612B0();
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v6;
}

uint64_t sub_100320520()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("here you go", 0xBuLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FYI this is what I was talking about", 0x24uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("let me know when you get this", 0x1DuLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  sub_1002612B0();
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v5;
}

uint64_t sub_1003206B0()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("my boyfriend", 0xCuLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("John Appleseed", 0xEuLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("George", 6uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("87fdswe55@example.com", 0x15uLL, 1);
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  sub_1002612B0();
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v6;
}

uint64_t sub_1003208A0()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("the email message from Ian", 0x1AuLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("the email about the baseball schedule", 0x25uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("the mail I received yesterday", 0x1DuLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("the mail message I sent to Brian last week", 0x2AuLL, 1);
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  sub_1002612B0();
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v6;
}

uint64_t sub_100320A90(uint64_t a1)
{
  v41 = a1;
  v77 = 0;
  v72 = &v76;
  v76 = 0;
  v71 = &v75;
  v75 = 0;
  v70 = &v74;
  v74 = 0;
  v59 = sub_10025C9B0(&qword_1006D96E8);
  v31 = *(v59 - 8);
  v32 = v59 - 8;
  v20 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v59);
  v62 = &v19 - v20;
  v54 = sub_10025C9B0(&qword_1006D96F0);
  v29 = *(v54 - 8);
  v30 = v54 - 8;
  v21 = (v29[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v41);
  v58 = &v19 - v21;
  v22 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v1);
  v51 = &v19 - v22;
  v23 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v57 = &v19 - v23;
  v77 = v5;
  v68 = sub_100321530();
  v24 = 5;
  v40 = 1;
  v67 = &unk_10065B638;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v47 = 1;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Open ", v24, 1);
  object = v6._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);

  v43 = &unk_1005036D8;
  KeyPath = swift_getKeyPath();
  v44 = sub_100342164();
  v26 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v37 = "";
  v38 = 0;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v47 & 1);
  v28 = v7._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  v8 = v57;

  v50 = v29[2];
  v49 = v29 + 2;
  v50(v51, v8, v54);
  v53 = v29[4];
  v52 = v29 + 4;
  v53(v58, v51, v54);
  v56 = v29[1];
  v55 = v29 + 1;
  v56(v8, v54);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v63 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v61 = *(v31 + 8);
  v60 = v31 + 8;
  v61(v62, v59);

  v76 = v63;
  v33 = 17;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Show me my email ", v33, v47 & 1);
  v34 = v9._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);

  v36 = swift_getKeyPath();
  v35 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v37, v38, v47 & 1);
  v39 = v10._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  v11 = v57;

  v50(v51, v11, v54);
  v53(v58, v51, v54);
  v56(v11, v54);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v64 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v61(v62, v59);

  v75 = v64;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Where are my ", 0xDuLL, v47 & 1);
  v42 = v12._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);

  v46 = swift_getKeyPath();
  v45 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" emails", 7uLL, v47 & 1);
  v48 = v13._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);

  v50(v51, v57, v54);
  v53(v58, v51, v54);
  v56(v57, v54);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v65 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v61(v62, v59);

  v74 = v65;
  v66 = sub_10025C9B0(&qword_1006D96F8);
  v14 = _allocateUninitializedArray<A>(_:)();
  v15 = v64;
  v16 = v65;
  *v17 = v63;
  v17[1] = v15;
  v17[2] = v16;
  sub_1002612B0();
  v69 = v14;
  v73 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v73;
}

uint64_t sub_1003212D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_1002F0674(a1, &v5);
  sub_10035F9D8();
  memcpy(a2, v4, 0x50uLL);
}

uint64_t sub_100321328(void *a1, uint64_t *a2)
{
  sub_10027EB5C(a1, v5);
  sub_1002F0674(a2, &v4);
  sub_10035FA2C(v5, v4);
}

uint64_t sub_100321378(uint64_t a1)
{
  v8 = 0;
  v7 = sub_1003215A8;
  v21 = 0;
  v18 = &v20;
  v20 = 0;
  v13 = type metadata accessor for _AssistantIntent.Value();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v6 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v14 = &v5 - v6;
  v21 = a1;
  KeyPath = swift_getKeyPath();
  sub_100342164();
  v9 = _AssistantIntent.IntentProjection.subscript.getter();
  sub_100321530();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v15 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v11 + 8))(v14, v13);

  v20 = v15;
  v16 = sub_10025C9B0(&qword_1006D9518);
  v2 = _allocateUninitializedArray<A>(_:)();
  *v3 = v15;
  sub_1002612B0();
  v17 = v2;
  v19 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  sub_100264880();
  return v19;
}

unint64_t sub_100321530()
{
  v2 = qword_1006D94B0;
  if (!qword_1006D94B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D94B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003215A8()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("drafts", 6uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("inbox", 5uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("archive", 7uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("all inboxes", 0xBuLL, 1);
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  sub_1002612B0();
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v6;
}

uint64_t sub_100321798(uint64_t a1)
{
  v140 = a1;
  v197 = 0;
  v185 = &v196;
  v196 = 0;
  v184 = &v195;
  v195 = 0;
  v183 = &v194;
  v194 = 0;
  v182 = &v193;
  v193 = 0;
  v181 = &v192;
  v192 = 0;
  v180 = &v191;
  v191 = 0;
  v179 = &v190;
  v190 = 0;
  v178 = &v189;
  v189 = 0;
  v177 = &v188;
  v188 = 0;
  v176 = &v187;
  v187 = 0;
  v153 = sub_10025C9B0(&qword_1006D96D0);
  v67 = *(v153 - 8);
  v68 = v153 - 8;
  v52 = (v67[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v153);
  v157 = &v51 - v52;
  v53 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v51 - v52);
  v150 = &v51 - v53;
  v54 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v51 - v53);
  v156 = &v51 - v54;
  v158 = sub_10025C9B0(&qword_1006D96D8);
  v58 = *(v158 - 8);
  v59 = v158 - 8;
  v55 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v140);
  v161 = &v51 - v55;
  v197 = v3;
  v108 = 21;
  v146 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reply all to an email", 0x15uLL, 1);
  countAndFlagsBits = v4._countAndFlagsBits;
  object = v4._object;
  v174 = sub_100324770();
  v173 = &unk_10065EE28;
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v162 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v160 = *(v58 + 8);
  v159 = v58 + 8;
  v160(v161, v158);

  v196 = v162;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reply to everyone on an email", 0x1DuLL, v146 & 1);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v163 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v160(v161, v158);

  v195 = v163;
  v133 = 2;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Respond to everyone on ", 0x17uLL, v146 & 1);
  v60 = v5._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);

  v136 = &unk_100503648;
  KeyPath = swift_getKeyPath();
  v137 = sub_10027D1BC();
  v61 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v102 = " and add ";
  v119 = 9;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and add ", 9uLL, v146 & 1);
  v63 = v6._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);

  v104 = &unk_1005035A8;
  v65 = swift_getKeyPath();
  v105 = sub_10028035C();
  v64 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v144 = "";
  v145 = 0;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v146 & 1);
  v66 = v7._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  v8 = v156;

  v149 = v67[2];
  v148 = v67 + 2;
  v149(v150, v8, v153);
  v152 = v67[4];
  v151 = v67 + 4;
  v152(v157, v150, v153);
  v155 = v67[1];
  v154 = v67 + 1;
  v155(v8, v153);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v164 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v160(v161, v158);

  v194 = v164;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v114 = "Reply all to ";
  v115 = 13;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reply all to ", 0xDuLL, v146 & 1);
  v69 = v9._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);

  v71 = swift_getKeyPath();
  v70 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and say ", v119, v146 & 1);
  v72 = v10._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);

  v83 = &unk_100503580;
  v74 = swift_getKeyPath();
  v84 = sub_10028E064();
  v73 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v144, v145, v146 & 1);
  v75 = v11._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  v12 = v156;

  v149(v150, v12, v153);
  v152(v157, v150, v153);
  v155(v12, v153);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v165 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v160(v161, v158);

  v193 = v165;
  v113 = 28;
  v98 = 3;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v114, v115, v146 & 1);
  v76 = v13._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);

  v78 = swift_getKeyPath();
  v77 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" cc ", 4uLL, v146 & 1);
  v79 = v14._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);

  v81 = swift_getKeyPath();
  v80 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and write ", 0xBuLL, v146 & 1);
  v82 = v15._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);

  v86 = swift_getKeyPath();
  v85 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v144, v145, v146 & 1);
  v87 = v16._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  v17 = v156;

  v149(v150, v17, v153);
  v152(v157, v150, v153);
  v155(v17, v153);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v166 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v160(v161, v158);

  v192 = v166;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v114, v115, v146 & 1);
  v88 = v18._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);

  v90 = swift_getKeyPath();
  v89 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and attach ", 0xCuLL, v146 & 1);
  v91 = v19._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);

  v93 = swift_getKeyPath();
  sub_10028E214();
  v92 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v134 = 15;
  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to it and bcc ", 0xFuLL, v146 & 1);
  v94 = v20._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);

  v96 = swift_getKeyPath();
  v95 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v144, v145, v146 & 1);
  v97 = v21._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  v22 = v156;

  v149(v150, v22, v153);
  v152(v157, v150, v153);
  v155(v22, v153);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v167 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v160(v161, v158);

  v191 = v167;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reply to everyone on ", v108, v146 & 1);
  v99 = v23._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);

  v101 = swift_getKeyPath();
  v100 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v102, v119, v146 & 1);
  v103 = v24._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);

  v107 = swift_getKeyPath();
  v106 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and send it from my ", v108, v146 & 1);
  v109 = v25._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);

  v128 = &unk_100503670;
  v111 = swift_getKeyPath();
  v129 = sub_10028E17C();
  v110 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" account", 8uLL, v146 & 1);
  v112 = v26._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  v27 = v156;

  v149(v150, v27, v153);
  v152(v157, v150, v153);
  v155(v27, v153);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v168 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v160(v161, v158);

  v190 = v168;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v114, v115, v146 & 1);
  v116 = v28._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);

  v118 = swift_getKeyPath();
  v117 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" from my ", v119, v146 & 1);
  v120 = v29._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);

  v122 = swift_getKeyPath();
  v121 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" email", 6uLL, v146 & 1);
  v123 = v30._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  v31 = v156;

  v149(v150, v31, v153);
  v152(v157, v150, v153);
  v155(v31, v153);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v169 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v160(v161, v158);

  v189 = v169;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v32 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Find ", 5uLL, v146 & 1);
  v124 = v32._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v32);

  v126 = swift_getKeyPath();
  v125 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v33 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and reply all to it using my ", 0x1EuLL, v146 & 1);
  v127 = v33._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);

  v131 = swift_getKeyPath();
  v130 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v34 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" email address", 0xEuLL, v146 & 1);
  v132 = v34._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v34);
  v35 = v156;

  v149(v150, v35, v153);
  v152(v157, v150, v153);
  v155(v35, v153);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v170 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v160(v161, v158);

  v188 = v170;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v36 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Respond all to ", v134, v146 & 1);
  v135 = v36._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v36);

  v139 = swift_getKeyPath();
  v138 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v37 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and set the subject to ", 0x18uLL, v146 & 1);
  v141 = v37._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);

  v143 = swift_getKeyPath();
  sub_10028DF54();
  v142 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v38 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v144, v145, v146 & 1);
  v147 = v38._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v38);

  v149(v150, v156, v153);
  v152(v157, v150, v153);
  v155(v156, v153);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v171 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v160(v161, v158);

  v187 = v171;
  v172 = sub_10025C9B0(&qword_1006D96E0);
  v39 = _allocateUninitializedArray<A>(_:)();
  v40 = v163;
  v41 = v164;
  v42 = v165;
  v43 = v166;
  v44 = v167;
  v45 = v168;
  v46 = v169;
  v47 = v170;
  v48 = v171;
  *v49 = v162;
  v49[1] = v40;
  v49[2] = v41;
  v49[3] = v42;
  v49[4] = v43;
  v49[5] = v44;
  v49[6] = v45;
  v49[7] = v46;
  v49[8] = v47;
  v49[9] = v48;
  sub_1002612B0();
  v175 = v39;
  v186 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v186;
}

_BYTE *sub_1003235D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_100342838(a1, v4);
  memcpy(__dst, v4, sizeof(__dst));
  sub_1003FAF74(v5);
  memcpy(a2, v5, 0x80uLL);
  result = __dst;
  sub_100342970();
  return result;
}

_BYTE *sub_10032364C(void *a1, uint64_t *a2)
{
  sub_1002E0080(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  sub_100342838(a2, v4);
  memcpy(v7, v4, sizeof(v7));
  sub_1003FAFF8(__dst);
  result = v7;
  sub_100342970();
  return result;
}

_BYTE *sub_1003236D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100342838(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1002895B8();
  result = __dst;
  *a2 = v2;
  sub_100342970();
  return result;
}

_BYTE *sub_10032373C(uint64_t *a1, uint64_t *a2)
{
  sub_1002A730C(a1, &v5);
  sub_100342838(a2, v4);
  memcpy(__dst, v4, sizeof(__dst));
  sub_100289614();
  result = __dst;
  sub_100342970();
  return result;
}

_BYTE *sub_1003237B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = a2;
  v4 = a1;
  v5 = (*(*(sub_10025C9B0(&unk_1006D7380) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v4);
  v7 = &v4 - v5;
  v6 = v10;
  sub_100342838(v2, v10);
  v9 = __dst;
  memcpy(__dst, v6, sizeof(__dst));
  sub_100289A40();
  sub_100342710(v7, v8);
  result = v9;
  sub_100342970();
  return result;
}

_BYTE *sub_100323888(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v6 = a2;
  v5 = (*(*(sub_10025C9B0(&unk_1006D7380) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v4);
  v8 = &v4 - v5;
  sub_100289B6C(v2, &v4 - v5);
  v7 = v10;
  sub_100342838(v6, v10);
  v9 = __dst;
  memcpy(__dst, v7, sizeof(__dst));
  sub_1003FB080(v8);
  result = v9;
  sub_100342970();
  return result;
}

_BYTE *sub_10032395C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100342838(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1002896B4();
  result = __dst;
  *a2 = v2;
  sub_100342970();
  return result;
}

_BYTE *sub_1003239C4(uint64_t *a1, uint64_t *a2)
{
  sub_1002A730C(a1, &v5);
  sub_100342838(a2, v4);
  memcpy(__dst, v4, sizeof(__dst));
  sub_100289710();
  result = __dst;
  sub_100342970();
  return result;
}

_BYTE *sub_100323A38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100342838(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_100289ED8();
  result = __dst;
  *a2 = v2;
  sub_100342970();
  return result;
}

_BYTE *sub_100323AA0(uint64_t *a1, uint64_t *a2)
{
  sub_1002A730C(a1, &v5);
  sub_100342838(a2, v4);
  memcpy(__dst, v4, sizeof(__dst));
  sub_100289F34();
  result = __dst;
  sub_100342970();
  return result;
}

_BYTE *sub_100323B14@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100342838(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1002897B0();
  result = __dst;
  *a2 = v2;
  sub_100342970();
  return result;
}

_BYTE *sub_100323B7C(uint64_t *a1, uint64_t *a2)
{
  sub_1002A730C(a1, &v5);
  sub_100342838(a2, v4);
  memcpy(__dst, v4, sizeof(__dst));
  sub_10028980C();
  result = __dst;
  sub_100342970();
  return result;
}

_BYTE *sub_100323BF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100342838(a1, v7);
  memcpy(__dst, v7, sizeof(__dst));
  v2 = sub_100289CFC();
  result = __dst;
  *a2 = v2;
  a2[1] = v4;
  a2[2] = v5;
  sub_100342970();
  return result;
}

_BYTE *sub_100323C60(uint64_t a1, uint64_t *a2)
{
  sub_100342660(a1, &v6);
  v4 = v6;
  sub_100342838(a2, v5);
  memcpy(__dst, v5, sizeof(__dst));
  sub_100289D70(v4);
  result = __dst;
  sub_100342970();
  return result;
}

_BYTE *sub_100323CEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100342838(a1, v6);
  memcpy(__dst, v6, sizeof(__dst));
  v2 = sub_1002898E8();
  result = __dst;
  *a2 = v2;
  a2[1] = v4;
  sub_100342970();
  return result;
}

_BYTE *sub_100323D58(void *a1, uint64_t *a2)
{
  sub_100268860(a1, &v5);
  sub_100342838(a2, v4);
  memcpy(__dst, v4, sizeof(__dst));
  sub_100289950();
  result = __dst;
  sub_100342970();
  return result;
}

uint64_t sub_100323DD8(uint64_t a1)
{
  v29 = a1;
  v33 = 0;
  v13[1] = sub_1003247E8;
  v16 = sub_1003249D8;
  v18 = sub_100324B68;
  v20 = sub_100324B68;
  v23 = sub_100324B68;
  v25 = sub_100324D58;
  v27 = sub_100324EE8;
  v30 = sub_100325154;
  v32 = sub_10031D100;
  v70 = 0;
  v59 = &v69;
  v69 = 0;
  v58 = &v68;
  v68 = 0;
  v57 = &v67;
  v67 = 0;
  v56 = &v66;
  v66 = 0;
  v55 = &v65;
  v65 = 0;
  v54 = &v64;
  v64 = 0;
  v53 = &v63;
  v63 = 0;
  v52 = &v62;
  v62 = 0;
  v51 = &v61;
  v61 = 0;
  v36 = type metadata accessor for _AssistantIntent.Value();
  v14 = *(v36 - 8);
  v15 = v36 - 8;
  v13[0] = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36);
  v39 = v13 - v13[0];
  v70 = a1;
  v13[3] = swift_getKeyPath();
  sub_10028DF54();
  v13[2] = _AssistantIntent.IntentProjection.subscript.getter();
  v34 = sub_100324770();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v40 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v38 = *(v14 + 8);
  v37 = v14 + 8;
  v38(v39, v36);

  v69 = v40;
  KeyPath = swift_getKeyPath();
  sub_10028E064();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v41 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v38(v39, v36);

  v68 = v41;
  v19 = swift_getKeyPath();
  v22 = sub_10028035C();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v42 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v38(v39, v36);

  v67 = v42;
  v21 = swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v43 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v38(v39, v36);

  v66 = v43;
  v24 = swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v44 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v38(v39, v36);

  v65 = v44;
  v26 = swift_getKeyPath();
  sub_10028E214();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v45 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v38(v39, v36);

  v64 = v45;
  v28 = swift_getKeyPath();
  sub_10027D1BC();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v46 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v38(v39, v36);

  v63 = v46;
  v31 = swift_getKeyPath();
  sub_1003424B8();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v47 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v38(v39, v36);

  v62 = v47;
  v35 = swift_getKeyPath();
  sub_10028E17C();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v48 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v38(v39, v36);

  v61 = v48;
  v49 = sub_10025C9B0(&qword_1006D9518);
  v2 = _allocateUninitializedArray<A>(_:)();
  v3 = v41;
  v4 = v42;
  v5 = v43;
  v6 = v44;
  v7 = v45;
  v8 = v46;
  v9 = v47;
  v10 = v48;
  *v11 = v40;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v11[6] = v8;
  v11[7] = v9;
  v11[8] = v10;
  sub_1002612B0();
  v50 = v2;
  v60 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v60;
}

unint64_t sub_100324770()
{
  v2 = qword_1006D94B8;
  if (!qword_1006D94B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D94B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003247E8()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("your car's extended warranty", 0x1CuLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Furniture for sale", 0x12uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Learn something new", 0x13uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("your order confirmation #2342556", 0x20uLL, 1);
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  sub_1002612B0();
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v6;
}

uint64_t sub_1003249D8()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("can't wait to celebrate!", 0x18uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("please find relevant documents attached", 0x27uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("bump, can we get an update here?", 0x20uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  sub_1002612B0();
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v5;
}

uint64_t sub_100324B68()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Dan", 3uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mother", 6uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("jimmy@example.com", 0x11uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Bob Jones", 9uLL, 1);
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  sub_1002612B0();
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v6;
}

uint64_t sub_100324D58()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("the drop off schedule spreadsheet", 0x21uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("my grocery list from Notes", 0x1AuLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("the pitch deck in Keynote", 0x19uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  sub_1002612B0();
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v5;
}

uint64_t sub_100324EE8()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("that flagged mail from yesterday afternoon", 0x2AuLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("the email about John's surprise party", 0x25uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("the thread with Justin and Mark", 0x1FuLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  sub_1002612B0();
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v5;
}

_BYTE *sub_100325078@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_100342838(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1003FB158();
  result = __dst;
  *a2 = v2 & 1;
  sub_100342970();
  return result;
}

_BYTE *sub_1003250E4(uint64_t a1, uint64_t *a2)
{
  sub_100342838(a2, v3);
  memcpy(__dst, v3, sizeof(__dst));
  sub_1003FB1B8();
  result = __dst;
  sub_100342970();
  return result;
}

uint64_t sub_100325154()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("true", 4uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  sub_1002612B0();
  v3 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  return v3;
}

uint64_t sub_100325220(uint64_t a1)
{
  v150 = a1;
  v211 = 0;
  v198 = &v210;
  v210 = 0;
  v197 = &v209;
  v209 = 0;
  v196 = &v208;
  v208 = 0;
  v195 = &v207;
  v207 = 0;
  v194 = &v206;
  v206 = 0;
  v193 = &v205;
  v205 = 0;
  v192 = &v204;
  v204 = 0;
  v191 = &v203;
  v203 = 0;
  v190 = &v202;
  v202 = 0;
  v189 = &v201;
  v201 = 0;
  v188 = &v200;
  v200 = 0;
  v163 = sub_10025C9B0(&qword_1006D96D0);
  v71 = *(v163 - 8);
  v72 = v163 - 8;
  v56 = (v71[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v163);
  v167 = &v55 - v56;
  v57 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v55 - v56);
  v160 = &v55 - v57;
  v58 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v55 - v57);
  v166 = &v55 - v58;
  v168 = sub_10025C9B0(&qword_1006D96D8);
  v62 = *(v168 - 8);
  v63 = v168 - 8;
  v59 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v150);
  v171 = &v55 - v59;
  v211 = v3;
  v156 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reply to an email", 0x11uLL, 1);
  countAndFlagsBits = v4._countAndFlagsBits;
  object = v4._object;
  v186 = sub_100324770();
  v185 = &unk_10065EE28;
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v173 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v170 = *(v62 + 8);
  v169 = v62 + 8;
  v170(v171, v168);

  v210 = v173;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Respond to a mail message", 0x19uLL, v156 & 1);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v174 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v170(v171, v168);

  v209 = v174;
  v73 = 18;
  v142 = 2;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v143 = "Reply to ";
  v144 = 9;
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reply to ", 9uLL, v156 & 1);
  v64 = v5._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);

  v146 = &unk_100503648;
  KeyPath = swift_getKeyPath();
  v147 = sub_10027D1BC();
  v65 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v113 = " and add ";
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and add ", v144, v156 & 1);
  v67 = v6._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);

  v115 = &unk_1005035A8;
  v69 = swift_getKeyPath();
  v116 = sub_10028035C();
  v68 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v154 = "";
  v155 = 0;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v156 & 1);
  v70 = v7._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  v8 = v166;

  v159 = v71[2];
  v158 = v71 + 2;
  v159(v160, v8, v163);
  v162 = v71[4];
  v161 = v71 + 4;
  v162(v167, v160, v163);
  v165 = v71[1];
  v164 = v71 + 1;
  v165(v8, v163);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v175 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v170(v171, v168);

  v208 = v175;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v143, v144, v156 & 1);
  v74 = v9._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);

  v76 = swift_getKeyPath();
  v75 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and ask ", v144, v156 & 1);
  v77 = v10._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);

  v79 = swift_getKeyPath();
  sub_10028E064();
  v78 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v154, v155, v156 & 1);
  v80 = v11._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  v12 = v166;

  v159(v160, v12, v163);
  v162(v167, v160, v163);
  v165(v12, v163);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v176 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v170(v171, v168);

  v207 = v176;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v124 = "Respond to ";
  v172 = 11;
  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Respond to ", 0xBuLL, v156 & 1);
  v81 = v13._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);

  v83 = swift_getKeyPath();
  v82 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v122 = 8;
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and cc ", 8uLL, v156 & 1);
  v84 = v14._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);

  v86 = swift_getKeyPath();
  v85 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v154, v155, v156 & 1);
  v87 = v15._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  v16 = v166;

  v159(v160, v16, v163);
  v162(v167, v160, v163);
  v165(v16, v163);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v177 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v170(v171, v168);

  v206 = v177;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v135 = 20;
  v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Draft a response to ", 0x14uLL, v156 & 1);
  v88 = v17._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);

  v90 = swift_getKeyPath();
  v89 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v98 = " and attach ";
  v99 = 12;
  v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and attach ", 0xCuLL, v156 & 1);
  v91 = v18._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);

  v101 = &unk_100503620;
  v93 = swift_getKeyPath();
  v102 = sub_10028E214();
  v92 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v154, v155, v156 & 1);
  v94 = v19._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  v20 = v166;

  v159(v160, v20, v163);
  v162(v167, v160, v163);
  v165(v20, v163);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v178 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v170(v171, v168);

  v205 = v178;
  v109 = 3;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v143, v144, v156 & 1);
  v95 = v21._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);

  v97 = swift_getKeyPath();
  v96 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v98, v99, v156 & 1);
  v100 = v22._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);

  v104 = swift_getKeyPath();
  v103 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to it and bcc ", 0xFuLL, v156 & 1);
  v105 = v23._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);

  v107 = swift_getKeyPath();
  v106 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v154, v155, v156 & 1);
  v108 = v24._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  v25 = v166;

  v159(v160, v25, v163);
  v162(v167, v160, v163);
  v165(v25, v163);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v179 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v170(v171, v168);

  v204 = v179;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v143, v144, v156 & 1);
  v110 = v26._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);

  v112 = swift_getKeyPath();
  v111 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v27 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v113, v144, v156 & 1);
  v114 = v27._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);

  v118 = swift_getKeyPath();
  v117 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v28 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and send it from my ", 0x15uLL, v156 & 1);
  v119 = v28._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);

  v137 = &unk_100503670;
  v121 = swift_getKeyPath();
  v138 = sub_10028E17C();
  v120 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" account", v122, v156 & 1);
  v123 = v29._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  v30 = v166;

  v159(v160, v30, v163);
  v162(v167, v160, v163);
  v165(v30, v163);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v180 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v170(v171, v168);

  v203 = v180;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v124, v172, v156 & 1);
  v125 = v31._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);

  v127 = swift_getKeyPath();
  v126 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v32 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" from my ", v144, v156 & 1);
  v128 = v32._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v32);

  v130 = swift_getKeyPath();
  v129 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v33 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" email", 6uLL, v156 & 1);
  v131 = v33._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  v34 = v166;

  v159(v160, v34, v163);
  v162(v167, v160, v163);
  v165(v34, v163);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v181 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v170(v171, v168);

  v202 = v181;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v35 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Find ", 5uLL, v156 & 1);
  v132 = v35._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v35);

  v134 = swift_getKeyPath();
  v133 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v36 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and reply using my ", v135, v156 & 1);
  v136 = v36._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v36);

  v140 = swift_getKeyPath();
  v139 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v37 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" email address", 0xEuLL, v156 & 1);
  v141 = v37._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  v38 = v166;

  v159(v160, v38, v163);
  v162(v167, v160, v163);
  v165(v38, v163);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v182 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v170(v171, v168);

  v201 = v182;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v39 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v143, v144, v156 & 1);
  v145 = v39._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v39);

  v149 = swift_getKeyPath();
  v148 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v40 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and set the subject to ", 0x18uLL, v156 & 1);
  v151 = v40._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v40);

  v153 = swift_getKeyPath();
  sub_10028DF54();
  v152 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v41 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v154, v155, v156 & 1);
  v157 = v41._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v41);

  v159(v160, v166, v163);
  v162(v167, v160, v163);
  v165(v166, v163);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v183 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v170(v171, v168);

  v200 = v183;
  v184 = sub_10025C9B0(&qword_1006D96E0);
  v42 = _allocateUninitializedArray<A>(_:)();
  v43 = v174;
  v44 = v175;
  v45 = v176;
  v46 = v177;
  v47 = v178;
  v48 = v179;
  v49 = v180;
  v50 = v181;
  v51 = v182;
  v52 = v183;
  *v53 = v173;
  v53[1] = v43;
  v53[2] = v44;
  v53[3] = v45;
  v53[4] = v46;
  v53[5] = v47;
  v53[6] = v48;
  v53[7] = v49;
  v53[8] = v50;
  v53[9] = v51;
  v53[10] = v52;
  sub_1002612B0();
  v187 = v42;
  v199 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v199;
}

uint64_t sub_1003272D4(uint64_t a1)
{
  v30 = a1;
  v34 = 0;
  v14 = sub_100327AEC;
  v19 = sub_100327C7C;
  v21 = sub_100327E0C;
  v23 = sub_100327E0C;
  v26 = sub_100327E0C;
  v28 = sub_100327FFC;
  v31 = sub_10032818C;
  v33 = sub_10031D100;
  v68 = 0;
  v58 = &v67;
  v67 = 0;
  v57 = &v66;
  v66 = 0;
  v56 = &v65;
  v65 = 0;
  v55 = &v64;
  v64 = 0;
  v54 = &v63;
  v63 = 0;
  v53 = &v62;
  v62 = 0;
  v52 = &v61;
  v61 = 0;
  v51 = &v60;
  v60 = 0;
  v37 = type metadata accessor for _AssistantIntent.Value();
  v17 = *(v37 - 8);
  v18 = v37 - 8;
  v13 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v37);
  v40 = &v12 - v13;
  v68 = a1;
  KeyPath = swift_getKeyPath();
  sub_10028DF54();
  v15 = _AssistantIntent.IntentProjection.subscript.getter();
  v35 = sub_100324770();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v41 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v39 = *(v17 + 8);
  v38 = v17 + 8;
  v39(v40, v37);

  v67 = v41;
  v20 = swift_getKeyPath();
  sub_10028E064();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v42 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v39(v40, v37);

  v66 = v42;
  v22 = swift_getKeyPath();
  v25 = sub_10028035C();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v43 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v39(v40, v37);

  v65 = v43;
  v24 = swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v44 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v39(v40, v37);

  v64 = v44;
  v27 = swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v45 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v39(v40, v37);

  v63 = v45;
  v29 = swift_getKeyPath();
  sub_10028E214();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v46 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v39(v40, v37);

  v62 = v46;
  v32 = swift_getKeyPath();
  sub_10027D1BC();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v47 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v39(v40, v37);

  v61 = v47;
  v36 = swift_getKeyPath();
  sub_10028E17C();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v48 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v39(v40, v37);

  v60 = v48;
  v49 = sub_10025C9B0(&qword_1006D9518);
  v2 = _allocateUninitializedArray<A>(_:)();
  v3 = v42;
  v4 = v43;
  v5 = v44;
  v6 = v45;
  v7 = v46;
  v8 = v47;
  v9 = v48;
  *v10 = v41;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v10[5] = v7;
  v10[6] = v8;
  v10[7] = v9;
  sub_1002612B0();
  v50 = v2;
  v59 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v59;
}

uint64_t sub_100327AEC()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("What's going on?", 0x10uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Apartment rental inquiry", 0x18uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("congratulations!", 0x10uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  sub_1002612B0();
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v5;
}

uint64_t sub_100327C7C()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("what time should I pick you up?", 0x1FuLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("it's nice to hear from you", 0x1AuLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("let me know what you think of this", 0x22uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  sub_1002612B0();
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v5;
}

uint64_t sub_100327E0C()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Nathan", 6uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sister", 6uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("kramer@example.com", 0x12uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Billie Joe", 0xAuLL, 1);
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  sub_1002612B0();
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v6;
}

uint64_t sub_100327FFC()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("my trip itinerary document", 0x1AuLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("the conference calendar event", 0x1DuLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("the meeting notes from this morning", 0x23uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  sub_1002612B0();
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v5;
}

uint64_t sub_10032818C()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("the mail my mom sent me last week", 0x21uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("that email thread about the punk rock concert", 0x2DuLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mail thread with my manager", 0x1BuLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  sub_1002612B0();
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v5;
}

uint64_t sub_10032831C(uint64_t a1)
{
  v7 = a1;
  v32 = 0;
  v27 = &v31;
  v31 = 0;
  v26 = &v30;
  v30 = 0;
  v25 = &v29;
  v29 = 0;
  v14 = sub_10025C9B0(&qword_1006D96C0);
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v8 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v7 - v8;
  v32 = __chkstk_darwin(v7);
  v13 = 1;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cancel the email", 0x10uLL, 1);
  countAndFlagsBits = v1._countAndFlagsBits;
  object = v1._object;
  v23 = sub_1002821A4();
  v22 = &unk_100658328;
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v18 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16 = *(v11 + 8);
  v15 = v11 + 8;
  v16(v17, v14);

  v31 = v18;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cancel this mail message", 0x18uLL, v13 & 1);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v19 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16(v17, v14);

  v30 = v19;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cancel that draft", 0x11uLL, v13 & 1);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16(v17, v14);

  v29 = v20;
  v21 = sub_10025C9B0(&qword_1006D96C8);
  v2 = _allocateUninitializedArray<A>(_:)();
  v3 = v19;
  v4 = v20;
  *v5 = v18;
  v5[1] = v3;
  v5[2] = v4;
  sub_1002612B0();
  v24 = v2;
  v28 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v28;
}

uint64_t sub_10032861C(uint64_t a1)
{
  v34 = a1;
  v77 = 0;
  v70 = &v76;
  v76 = 0;
  v69 = &v75;
  v75 = 0;
  v68 = &v74;
  v74 = 0;
  v67 = &v73;
  v73 = 0;
  v66 = &v72;
  v72 = 0;
  v47 = sub_10025C9B0(&qword_1006D96A8);
  v31 = *(v47 - 8);
  v32 = v47 - 8;
  v18 = (v31[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v47);
  v51 = &v17 - v18;
  v19 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v17 - v18);
  v44 = &v17 - v19;
  v20 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v17 - v19);
  v50 = &v17 - v20;
  v52 = sub_10025C9B0(&qword_1006D96B0);
  v24 = *(v52 - 8);
  v25 = v52 - 8;
  v21 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v34);
  v55 = &v17 - v21;
  v77 = v3;
  v40 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Delete draft", 0xCuLL, 1);
  countAndFlagsBits = v4._countAndFlagsBits;
  object = v4._object;
  v64 = sub_1002BA768();
  v63 = &unk_1006596D8;
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v57 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v54 = *(v24 + 8);
  v53 = v24 + 8;
  v54(v55, v52);

  v76 = v57;
  v26 = 7;
  v33 = 1;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Delete ", v26, v40 & 1);
  v27 = v5._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);

  v36 = &unk_100503508;
  KeyPath = swift_getKeyPath();
  v37 = sub_1002BD504();
  v28 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v40 & 1);
  v30 = v6._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  v7 = v50;

  v43 = v31[2];
  v42 = v31 + 2;
  v43(v44, v7, v47);
  v46 = v31[4];
  v45 = v31 + 4;
  v46(v51, v44, v47);
  v49 = v31[1];
  v48 = v31 + 1;
  v49(v7, v47);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v58 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v54(v55, v52);

  v75 = v58;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Delete this draft mail", 0x16uLL, v40 & 1);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v59 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v54(v55, v52);

  v74 = v59;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Remove this draft email", 0x17uLL, v40 & 1);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v60 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v54(v55, v52);

  v73 = v60;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v56 = 5;
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Move ", 5uLL, v40 & 1);
  v35 = v8._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);

  v39 = swift_getKeyPath();
  v38 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to trash", 9uLL, v40 & 1);
  v41 = v9._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);

  v43(v44, v50, v47);
  v46(v51, v44, v47);
  v49(v50, v47);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v61 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v54(v55, v52);

  v72 = v61;
  v62 = sub_10025C9B0(&qword_1006D96B8);
  v10 = _allocateUninitializedArray<A>(_:)();
  v11 = v58;
  v12 = v59;
  v13 = v60;
  v14 = v61;
  *v15 = v57;
  v15[1] = v11;
  v15[2] = v12;
  v15[3] = v13;
  v15[4] = v14;
  sub_1002612B0();
  v65 = v10;
  v71 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v71;
}

uint64_t sub_100328EB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10027ECA8(a1, &v4);
  *a2 = sub_1002BA89C();
}

uint64_t sub_100328F10(uint64_t *a1, uint64_t *a2)
{
  sub_1002A730C(a1, &v5);
  sub_10027ECA8(a2, &v4);
  sub_1002BA900();
}

uint64_t sub_100328F74(uint64_t a1)
{
  v8 = 0;
  v7 = sub_10032912C;
  v21 = 0;
  v18 = &v20;
  v20 = 0;
  v13 = type metadata accessor for _AssistantIntent.Value();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v6 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v14 = &v5 - v6;
  v21 = a1;
  KeyPath = swift_getKeyPath();
  sub_1002BD504();
  v9 = _AssistantIntent.IntentProjection.subscript.getter();
  sub_1002BA768();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v15 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v11 + 8))(v14, v13);

  v20 = v15;
  v16 = sub_10025C9B0(&qword_1006D9518);
  v2 = _allocateUninitializedArray<A>(_:)();
  *v3 = v15;
  sub_1002612B0();
  v17 = v2;
  v19 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  sub_100264880();
  return v19;
}

uint64_t sub_10032912C()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("draft email to my boss", 0x16uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("the draft mail about summer vacation travel", 0x2BuLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("draft message regarding conference schedule", 0x2BuLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  sub_1002612B0();
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v5;
}

uint64_t sub_1003292BC(uint64_t a1)
{
  v52 = a1;
  v103 = 0;
  v94 = &v102;
  v102 = 0;
  v93 = &v101;
  v101 = 0;
  v92 = &v100;
  v100 = 0;
  v91 = &v99;
  v99 = 0;
  v90 = &v98;
  v98 = 0;
  v89 = &v97;
  v97 = 0;
  v88 = &v96;
  v96 = 0;
  v66 = sub_10025C9B0(&qword_1006D9690);
  v38 = *(v66 - 8);
  v39 = v66 - 8;
  v26 = (v38[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v66);
  v70 = &v25 - v26;
  v27 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v25 - v26);
  v63 = &v25 - v27;
  v28 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v25 - v27);
  v69 = &v25 - v28;
  v73 = sub_10025C9B0(&qword_1006D9698);
  v32 = *(v73 - 8);
  v33 = v73 - 8;
  v29 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v52);
  v76 = &v25 - v29;
  v103 = v3;
  v59 = 10;
  v72 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Save draft", 0xAuLL, 1);
  countAndFlagsBits = v4._countAndFlagsBits;
  object = v4._object;
  v86 = sub_10032A2AC();
  v85 = &unk_10065EEC8;
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v77 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v75 = *(v32 + 8);
  v74 = v32 + 8;
  v75(v76, v73);

  v102 = v77;
  v71 = 14;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Save the draft", 0xEuLL, v72 & 1);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v78 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v75(v76, v73);

  v101 = v78;
  v51 = 5;
  v49 = 1;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v50 = "Save ";
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Save ", v51, v72 & 1);
  v34 = v5._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);

  v54 = &unk_1005034C8;
  KeyPath = swift_getKeyPath();
  v55 = sub_10028D658();
  v35 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v72 & 1);
  v37 = v6._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  v7 = v69;

  v62 = v38[2];
  v61 = v38 + 2;
  v62(v63, v7, v66);
  v65 = v38[4];
  v64 = v38 + 4;
  v65(v70, v63, v66);
  v68 = v38[1];
  v67 = v38 + 1;
  v68(v7, v66);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v79 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v75(v76, v73);

  v100 = v79;
  v44 = 16;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v50, v51, v72 & 1);
  v40 = v8._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);

  v42 = swift_getKeyPath();
  v41 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" as a draft", 0xBuLL, v72 & 1);
  v43 = v9._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  v10 = v69;

  v62(v63, v10, v66);
  v65(v70, v63, v66);
  v68(v10, v66);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v80 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v75(v76, v73);

  v99 = v80;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Draft ", 6uLL, v72 & 1);
  v45 = v11._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);

  v47 = swift_getKeyPath();
  v46 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v58 = " for later";
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" for later", v59, v72 & 1);
  v48 = v12._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  v13 = v69;

  v62(v63, v13, v66);
  v65(v70, v63, v66);
  v68(v13, v66);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v81 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v75(v76, v73);

  v98 = v81;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v50, v51, v72 & 1);
  v53 = v14._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);

  v57 = swift_getKeyPath();
  v56 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v58, v59, v72 & 1);
  v60 = v15._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);

  v62(v63, v69, v66);
  v65(v70, v63, v66);
  v68(v69, v66);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v82 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v75(v76, v73);

  v97 = v82;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Save for later", v71, v72 & 1);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v83 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v75(v76, v73);

  v96 = v83;
  v84 = sub_10025C9B0(&qword_1006D96A0);
  v16 = _allocateUninitializedArray<A>(_:)();
  v17 = v78;
  v18 = v79;
  v19 = v80;
  v20 = v81;
  v21 = v82;
  v22 = v83;
  *v23 = v77;
  v23[1] = v17;
  v23[2] = v18;
  v23[3] = v19;
  v23[4] = v20;
  v23[5] = v21;
  v23[6] = v22;
  sub_1002612B0();
  v87 = v16;
  v95 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v95;
}

uint64_t sub_10032A014@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_10027ECA8(a1, v4);
  sub_1003FFE00(v4[0], v4[1], v5);
  memcpy(a2, v5, 0x48uLL);
}

uint64_t sub_10032A07C(void *a1, uint64_t *a2)
{
  sub_1002CD078(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  sub_10027ECA8(a2, v4);
  sub_1003FFE8C(__dst, v4[0], v4[1]);
}

uint64_t sub_10032A0F4(uint64_t a1)
{
  v8 = 0;
  v7 = sub_10032A324;
  v21 = 0;
  v18 = &v20;
  v20 = 0;
  v13 = type metadata accessor for _AssistantIntent.Value();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v6 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v14 = &v5 - v6;
  v21 = a1;
  KeyPath = swift_getKeyPath();
  sub_10028D658();
  v9 = _AssistantIntent.IntentProjection.subscript.getter();
  sub_10032A2AC();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v15 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v11 + 8))(v14, v13);

  v20 = v15;
  v16 = sub_10025C9B0(&qword_1006D9518);
  v2 = _allocateUninitializedArray<A>(_:)();
  *v3 = v15;
  sub_1002612B0();
  v17 = v2;
  v19 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  sub_100264880();
  return v19;
}

unint64_t sub_10032A2AC()
{
  v2 = qword_1006D94C0;
  if (!qword_1006D94C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D94C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10032A324()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("my email to Justine", 0x13uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("this morning's email draft", 0x1AuLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("the mail about San Diego Zoo Trip", 0x21uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("this draft", 0xAuLL, 1);
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("this email", 0xAuLL, 1);
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("this", 4uLL, 1);
  v7 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  v0[4] = v6;
  v0[5] = v7;
  sub_1002612B0();
  v8 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v8;
}

uint64_t sub_10032A5DC(uint64_t a1)
{
  v100 = a1;
  v163 = 0;
  v149 = &v162;
  v162 = 0;
  v148 = &v161;
  v161 = 0;
  v147 = &v160;
  v160 = 0;
  v146 = &v159;
  v159 = 0;
  v145 = &v158;
  v158 = 0;
  v144 = &v157;
  v157 = 0;
  v143 = &v156;
  v156 = 0;
  v142 = &v155;
  v155 = 0;
  v141 = &v154;
  v154 = 0;
  v140 = &v153;
  v153 = 0;
  v139 = &v152;
  v152 = 0;
  v138 = &v151;
  v151 = 0;
  v113 = sub_10025C9B0(&qword_1006D9678);
  v58 = *(v113 - 8);
  v59 = v113 - 8;
  v46 = (v58[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v113);
  v117 = &v45 - v46;
  v47 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v45 - v46);
  v110 = &v45 - v47;
  v48 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v45 - v47);
  v116 = &v45 - v48;
  v118 = sub_10025C9B0(&qword_1006D9680);
  v52 = *(v118 - 8);
  v53 = v118 - 8;
  v49 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v100);
  v121 = &v45 - v49;
  v163 = v3;
  v106 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Send this email right now", 0x19uLL, 1);
  countAndFlagsBits = v4._countAndFlagsBits;
  object = v4._object;
  v136 = sub_10032C4C8();
  v135 = &unk_10065FF90;
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v122 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v120 = *(v52 + 8);
  v119 = v52 + 8;
  v120(v121, v118);

  v162 = v122;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK please send this email draft", 0x1FuLL, v106 & 1);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v123 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v120(v121, v118);

  v161 = v123;
  v80 = 8;
  v98 = 1;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v79 = "Send it ";
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Send it ", v80, v106 & 1);
  v54 = v5._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);

  v93 = &unk_100503488;
  KeyPath = swift_getKeyPath();
  v94 = sub_100341F40();
  v55 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v104 = "";
  v105 = 0;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v106 & 1);
  v57 = v6._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  v7 = v116;

  v109 = v58[2];
  v108 = v58 + 2;
  v109(v110, v7, v113);
  v112 = v58[4];
  v111 = v58 + 4;
  v112(v117, v110, v113);
  v115 = v58[1];
  v114 = v58 + 1;
  v115(v7, v113);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v124 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v120(v121, v118);

  v160 = v124;
  v86 = 23;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v85 = "Can you send the email ";
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Can you send the email ", v86, v106 & 1);
  v60 = v8._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);

  v62 = swift_getKeyPath();
  v61 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v104, v105, v106 & 1);
  v63 = v9._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  v10 = v116;

  v109(v110, v10, v113);
  v112(v117, v110, v113);
  v115(v10, v113);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v125 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v120(v121, v118);

  v159 = v125;
  v69 = 14;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Send the email", 0xEuLL, v106 & 1);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v126 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v120(v121, v118);

  v158 = v126;
  v64 = 16;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Send this email ", v64, v106 & 1);
  v65 = v11._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);

  v67 = swift_getKeyPath();
  v66 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v104, v105, v106 & 1);
  v68 = v12._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  v13 = v116;

  v109(v110, v13, v113);
  v112(v117, v110, v113);
  v115(v13, v113);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v127 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v120(v121, v118);

  v157 = v127;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Send my draft ", v69, v106 & 1);
  v70 = v14._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);

  v72 = swift_getKeyPath();
  v71 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v104, v105, v106 & 1);
  v73 = v15._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  v16 = v116;

  v109(v110, v16, v113);
  v112(v117, v110, v113);
  v115(v16, v113);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v128 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v120(v121, v118);

  v156 = v128;
  v74 = 32;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK please send this email draft ", v74, v106 & 1);
  v75 = v17._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);

  v77 = swift_getKeyPath();
  v76 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v104, v105, v106 & 1);
  v78 = v18._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  v19 = v116;

  v109(v110, v19, v113);
  v112(v117, v110, v113);
  v115(v19, v113);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v129 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v120(v121, v118);

  v155 = v129;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v79, v80, v106 & 1);
  v81 = v20._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);

  v83 = swift_getKeyPath();
  v82 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v104, v105, v106 & 1);
  v84 = v21._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  v22 = v116;

  v109(v110, v22, v113);
  v112(v117, v110, v113);
  v115(v22, v113);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v130 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v120(v121, v118);

  v154 = v130;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v85, v86, v106 & 1);
  v87 = v23._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);

  v89 = swift_getKeyPath();
  v88 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v104, v105, v106 & 1);
  v90 = v24._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  v25 = v116;

  v109(v110, v25, v113);
  v112(v117, v110, v113);
  v115(v25, v113);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v131 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v120(v121, v118);

  v153 = v131;
  v91 = 15;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Send the email ", v91, v106 & 1);
  v92 = v26._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);

  v96 = swift_getKeyPath();
  v95 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v27 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v104, v105, v106 & 1);
  v97 = v27._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  v28 = v116;

  v109(v110, v28, v113);
  v112(v117, v110, v113);
  v115(v28, v113);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v132 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v120(v121, v118);

  v152 = v132;
  v99 = 5;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Send ", v99, v106 & 1);
  v101 = v29._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);

  v103 = swift_getKeyPath();
  sub_10028D658();
  v102 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v104, v105, v106 & 1);
  v107 = v30._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);

  v109(v110, v116, v113);
  v112(v117, v110, v113);
  v115(v116, v113);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v133 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v120(v121, v118);

  v151 = v133;
  v134 = sub_10025C9B0(&qword_1006D9688);
  v31 = _allocateUninitializedArray<A>(_:)();
  v32 = v123;
  v33 = v124;
  v34 = v125;
  v35 = v126;
  v36 = v127;
  v37 = v128;
  v38 = v129;
  v39 = v130;
  v40 = v131;
  v41 = v132;
  v42 = v133;
  *v43 = v122;
  v43[1] = v32;
  v43[2] = v33;
  v43[3] = v34;
  v43[4] = v35;
  v43[5] = v36;
  v43[6] = v37;
  v43[7] = v38;
  v43[8] = v39;
  v43[9] = v40;
  v43[10] = v41;
  v43[11] = v42;
  sub_1002612B0();
  v137 = v31;
  v150 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v150;
}

uint64_t sub_10032BFA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7 = a2;
  v4 = a1;
  v5 = (*(*(sub_10025C9B0(&qword_1006D8740) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v4);
  v6 = &v4 - v5;
  sub_100342058(v2, v11);
  v8 = v11[0];
  v9 = v11[1];
  v10 = v11[2];
  sub_10042D0A0();
  sub_1002A7168(v6, v7);
}

uint64_t sub_10032C07C(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v6 = a2;
  v5 = (*(*(sub_10025C9B0(&qword_1006D8740) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v4);
  v7 = &v4 - v5;
  sub_1002F29E4(v2, &v4 - v5);
  sub_100342058(v6, &v11);
  v8 = v11;
  v9 = v12;
  v10 = v13;
  sub_10042D104(v7, v11, v12, v13);
}

uint64_t sub_10032C150@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_100342058(a1, v4);
  sub_10042D1FC(v4[0], v4[1], v4[2], v5);
  memcpy(a2, v5, 0x48uLL);
}

uint64_t sub_10032C1C8(void *a1, uint64_t *a2)
{
  sub_1002CD078(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  sub_100342058(a2, v4);
  sub_10042D290(__dst, v4[0], v4[1], v4[2]);
}

uint64_t sub_10032C250(uint64_t a1)
{
  v6[1] = a1;
  v10 = 0;
  v6[2] = sub_10032C540;
  v9 = sub_10032C670;
  v26 = 0;
  v22 = &v25;
  v25 = 0;
  v21 = &v24;
  v24 = 0;
  v13 = type metadata accessor for _AssistantIntent.Value();
  v7 = *(v13 - 8);
  v8 = v13 - 8;
  v6[0] = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v16 = v6 - v6[0];
  v26 = a1;
  v6[4] = swift_getKeyPath();
  sub_10028D658();
  v6[3] = _AssistantIntent.IntentProjection.subscript.getter();
  v11 = sub_10032C4C8();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v17 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v15 = *(v7 + 8);
  v14 = v7 + 8;
  v15(v16, v13);

  v25 = v17;
  KeyPath = swift_getKeyPath();
  sub_100341F40();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v18 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v15(v16, v13);

  v24 = v18;
  v19 = sub_10025C9B0(&qword_1006D9518);
  v2 = _allocateUninitializedArray<A>(_:)();
  v3 = v18;
  *v4 = v17;
  v4[1] = v3;
  sub_1002612B0();
  v20 = v2;
  v23 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  return v23;
}

unint64_t sub_10032C4C8()
{
  v2 = qword_1006D94C8;
  if (!qword_1006D94C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D94C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10032C540()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("my email to Justine", 0x13uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("this morning's email draft", 0x1AuLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  sub_1002612B0();
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  return v4;
}

uint64_t sub_10032C670()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("later", 5uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("at a later time", 0xFuLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("at 5:30 today", 0xDuLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tomorrow morning at 8", 0x15uLL, 1);
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("at 6 this evening", 0x11uLL, 1);
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("later today at like 2", 0x15uLL, 1);
  v7 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("at a later time tonight at 8", 0x1CuLL, 1);
  v8 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("at 5 am", 7uLL, 1);
  v9 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  v0[4] = v6;
  v0[5] = v7;
  v0[6] = v8;
  v0[7] = v9;
  sub_1002612B0();
  v10 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v10;
}

uint64_t sub_10032C9E8(uint64_t a1)
{
  v9 = a1;
  v37 = 0;
  v31 = &v36;
  v36 = 0;
  v30 = &v35;
  v35 = 0;
  v29 = &v34;
  v34 = 0;
  v28 = &v33;
  v33 = 0;
  v16 = sub_10025C9B0(&qword_1006D9668);
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v10 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v8 - v10;
  v37 = __chkstk_darwin(v9);
  v15 = 1;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unsend", 6uLL, 1);
  countAndFlagsBits = v1._countAndFlagsBits;
  object = v1._object;
  v26 = sub_10032CD54();
  v25 = &unk_100661B68;
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v18 = *(v13 + 8);
  v17 = v13 + 8;
  v18(v19, v16);

  v36 = v20;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Undo the last email", 0x13uLL, v15 & 1);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v18(v19, v16);

  v35 = v21;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unsend the email", 0x10uLL, v15 & 1);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v22 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v18(v19, v16);

  v34 = v22;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Undo send email", 0xFuLL, v15 & 1);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v23 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v18(v19, v16);

  v33 = v23;
  v24 = sub_10025C9B0(&qword_1006D9670);
  v2 = _allocateUninitializedArray<A>(_:)();
  v3 = v21;
  v4 = v22;
  v5 = v23;
  *v6 = v20;
  v6[1] = v3;
  v6[2] = v4;
  v6[3] = v5;
  sub_1002612B0();
  v27 = v2;
  v32 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v32;
}

unint64_t sub_10032CD54()
{
  v2 = qword_1006DCA90;
  if (!qword_1006DCA90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCA90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10032CDCC(uint64_t a1)
{
  v267 = a1;
  v360 = 0;
  v333 = &v359;
  v359 = 0;
  v332 = &v358;
  v358 = 0;
  v331 = &v357;
  v357 = 0;
  v330 = &v356;
  v356 = 0;
  v329 = &v355;
  v355 = 0;
  v328 = &v354;
  v354 = 0;
  v327 = &v353;
  v353 = 0;
  v326 = &v352;
  v352 = 0;
  v325 = &v351;
  v351 = 0;
  v324 = &v350;
  v350 = 0;
  v323 = &v349;
  v349 = 0;
  v322 = &v348;
  v348 = 0;
  v321 = &v347;
  v347 = 0;
  v320 = &v346;
  v346 = 0;
  v319 = &v345;
  v345 = 0;
  v318 = &v344;
  v344 = 0;
  v317 = &v343;
  v343 = 0;
  v316 = &v342;
  v342 = 0;
  v315 = &v341;
  v341 = 0;
  v314 = &v340;
  v340 = 0;
  v313 = &v339;
  v339 = 0;
  v312 = &v338;
  v338 = 0;
  v311 = &v337;
  v337 = 0;
  v310 = &v336;
  v336 = 0;
  v309 = &v335;
  v335 = 0;
  v285 = sub_10025C9B0(&qword_1006D9650);
  v123 = *(v285 - 8);
  v124 = v285 - 8;
  v113 = (*(v123 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v285);
  v288 = &v113 - v113;
  v280 = sub_10025C9B0(&qword_1006D9658);
  v121 = *(v280 - 8);
  v122 = v280 - 8;
  v114 = (v121[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v267);
  v284 = &v113 - v114;
  v115 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v1);
  v277 = &v113 - v115;
  v116 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v283 = &v113 - v116;
  v360 = v5;
  v307 = sub_100331E94();
  v244 = 22;
  v265 = 1;
  v306 = &unk_100661E98;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v272 = 1;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Change the subject to ", v244, 1);
  object = v6._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);

  v161 = &unk_100503318;
  KeyPath = swift_getKeyPath();
  v162 = sub_10028DF54();
  v118 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v254 = "";
  v255 = 0;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v272 & 1);
  v120 = v7._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  v8 = v283;

  v276 = v121[2];
  v275 = v121 + 2;
  v276(v277, v8, v280);
  v279 = v121[4];
  v278 = v121 + 4;
  v279(v284, v277, v280);
  v282 = v121[1];
  v281 = v121 + 1;
  v282(v8, v280);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v9 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v287 = *(v123 + 8);
  v286 = v123 + 8;
  v287(v288, v285);

  v359 = v9;
  v242 = 26;
  v243 = 2;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Change the subject of ", v244, v272 & 1);
  v125 = v10._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);

  v250 = &unk_1005032F0;
  v127 = swift_getKeyPath();
  v251 = sub_10028D658();
  v126 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v248 = " to ";
  v258 = 4;
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v272 & 1);
  v128 = v11._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);

  v130 = swift_getKeyPath();
  v129 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v254, v255, v272 & 1);
  v131 = v12._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  v13 = v283;

  v276(v277, v13, v280);
  v279(v284, v277, v280);
  v282(v13, v280);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v14 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v287(v288, v285);

  v358 = v14;
  v289 = 25;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Put ", v258, v272 & 1);
  v132 = v15._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);

  v134 = swift_getKeyPath();
  v133 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" in the subject field", 0x15uLL, v272 & 1);
  v135 = v16._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  v17 = v283;

  v276(v277, v17, v280);
  v279(v284, v277, v280);
  v282(v17, v280);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v18 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v287(v288, v285);

  v357 = v18;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Make this email about ", v244, v272 & 1);
  v136 = v19._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);

  v138 = swift_getKeyPath();
  v137 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v254, v255, v272 & 1);
  v139 = v20._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  v21 = v283;

  v276(v277, v21, v280);
  v279(v284, v277, v280);
  v282(v21, v280);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v22 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v287(v288, v285);

  v356 = v22;
  v266 = 19;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Set the message to ", v266, v272 & 1);
  v140 = v23._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);

  v156 = &unk_100503340;
  v142 = swift_getKeyPath();
  v157 = sub_10028E064();
  v141 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v254, v255, v272 & 1);
  v143 = v24._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  v25 = v283;

  v276(v277, v25, v280);
  v279(v284, v277, v280);
  v282(v25, v280);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v26 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v287(v288, v285);

  v355 = v26;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Change the email body to ", v289, v272 & 1);
  v144 = v27._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);

  v146 = swift_getKeyPath();
  v145 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v28 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v254, v255, v272 & 1);
  v147 = v28._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  v29 = v283;

  v276(v277, v29, v280);
  v279(v284, v277, v280);
  v282(v29, v280);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v30 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v287(v288, v285);

  v354 = v30;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Set subject to ", 0xFuLL, v272 & 1);
  v148 = v31._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);

  v150 = swift_getKeyPath();
  v149 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v32 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and say ", 9uLL, v272 & 1);
  v151 = v32._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v32);

  v153 = swift_getKeyPath();
  v152 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v33 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v254, v255, v272 & 1);
  v154 = v33._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  v34 = v283;

  v276(v277, v34, v280);
  v279(v284, v277, v280);
  v282(v34, v280);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v35 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v287(v288, v285);

  v353 = v35;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v198 = 12;
  v36 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Set body to ", 0xCuLL, v272 & 1);
  v155 = v36._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v36);

  v159 = swift_getKeyPath();
  v158 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v234 = 20;
  v37 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and set subject to ", 0x14uLL, v272 & 1);
  v160 = v37._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);

  v164 = swift_getKeyPath();
  v163 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v38 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v254, v255, v272 & 1);
  v165 = v38._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v38);
  v39 = v283;

  v276(v277, v39, v280);
  v279(v284, v277, v280);
  v282(v39, v280);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v40 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v287(v288, v285);

  v352 = v40;
  v173 = 14;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v41 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Address it to ", v173, v272 & 1);
  v166 = v41._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v41);

  v184 = &unk_100503368;
  v168 = swift_getKeyPath();
  v229 = sub_100342530();
  v167 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v42 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v254, v255, v272 & 1);
  v169 = v42._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v42);
  v43 = v283;

  v276(v277, v43, v280);
  v279(v284, v277, v280);
  v282(v43, v280);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v273 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v287(v288, v285);

  v351 = v273;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v257 = "Add ";
  v44 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Add ", v258, v272 & 1);
  v170 = v44._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v44);

  v172 = swift_getKeyPath();
  v171 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v45 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to recipients", v173, v272 & 1);
  v174 = v45._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v45);
  v46 = v283;

  v276(v277, v46, v280);
  v279(v284, v277, v280);
  v282(v46, v280);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v47 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v287(v288, v285);

  v350 = v47;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v235 = 7;
  v48 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Append ", 7uLL, v272 & 1);
  v175 = v48._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v48);

  v177 = swift_getKeyPath();
  v176 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v204 = 16;
  v49 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to the to field", 0x10uLL, v272 & 1);
  v178 = v49._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v49);
  v50 = v283;

  v276(v277, v50, v280);
  v279(v284, v277, v280);
  v282(v50, v280);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v290 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v287(v288, v285);

  v349 = v290;
  v225 = 17;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v51 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v257, v258, v272 & 1);
  v179 = v51._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v51);

  v181 = swift_getKeyPath();
  v180 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v239 = " to the email";
  v240 = 13;
  v52 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to the email", 0xDuLL, v272 & 1);
  v182 = v52._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v52);
  v53 = v283;

  v276(v277, v53, v280);
  v279(v284, v277, v280);
  v282(v53, v280);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v291 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v287(v288, v285);

  v348 = v291;
  v271 = 8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v54 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v257, v258, v272 & 1);
  v183 = v54._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v54);

  v186 = swift_getKeyPath();
  v185 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v55 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v248, v258, v272 & 1);
  v187 = v55._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v55);

  v189 = swift_getKeyPath();
  v188 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v56 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v254, v255, v272 & 1);
  v190 = v56._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v56);
  v57 = v283;

  v276(v277, v57, v280);
  v279(v284, v277, v280);
  v282(v57, v280);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v292 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v287(v288, v285);

  v347 = v292;
  v206 = 3;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v205 = "Cc ";
  v58 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cc ", v206, v272 & 1);
  v191 = v58._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v58);

  v208 = &unk_100503390;
  v193 = swift_getKeyPath();
  v192 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v59 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v254, v255, v272 & 1);
  v194 = v59._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v59);
  v60 = v283;

  v276(v277, v60, v280);
  v279(v284, v277, v280);
  v282(v60, v280);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v293 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v287(v288, v285);

  v346 = v293;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v61 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v257, v258, v272 & 1);
  v195 = v61._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v61);

  v197 = swift_getKeyPath();
  v196 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v62 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to cc field", v198, v272 & 1);
  v199 = v62._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v62);
  v63 = v283;

  v276(v277, v63, v280);
  v279(v284, v277, v280);
  v282(v63, v280);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v294 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v287(v288, v285);

  v345 = v294;
  v220 = 31;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v64 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Carbon copy the email draft to ", v220, v272 & 1);
  v200 = v64._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v64);

  v202 = swift_getKeyPath();
  v201 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v65 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v254, v255, v272 & 1);
  v203 = v65._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v65);
  v66 = v283;

  v276(v277, v66, v280);
  v279(v284, v277, v280);
  v282(v66, v280);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v295 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v287(v288, v285);

  v344 = v295;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v67 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v205, v206, v272 & 1);
  v207 = v67._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v67);

  v210 = swift_getKeyPath();
  v209 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v232 = " on the email";
  v68 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" on the email", v240, v272 & 1);
  v211 = v68._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v68);
  v69 = v283;

  v276(v277, v69, v280);
  v279(v284, v277, v280);
  v282(v69, v280);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v296 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v287(v288, v285);

  v343 = v296;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v226 = "Bcc ";
  v70 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Bcc ", v258, v272 & 1);
  v212 = v70._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v70);

  v228 = &unk_1005033B8;
  v214 = swift_getKeyPath();
  v213 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v71 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v254, v255, v272 & 1);
  v215 = v71._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v71);
  v72 = v283;

  v276(v277, v72, v280);
  v279(v284, v277, v280);
  v282(v72, v280);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v297 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v287(v288, v285);

  v342 = v297;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v73 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v257, v258, v272 & 1);
  v216 = v73._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v73);

  v218 = swift_getKeyPath();
  v217 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v74 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to bcc field", v240, v272 & 1);
  v219 = v74._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v74);
  v75 = v283;

  v276(v277, v75, v280);
  v279(v284, v277, v280);
  v282(v75, v280);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v298 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v287(v288, v285);

  v341 = v298;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v76 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Blind carbon copy the email to ", v220, v272 & 1);
  v221 = v76._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v76);

  v223 = swift_getKeyPath();
  v222 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v77 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v254, v255, v272 & 1);
  v224 = v77._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v77);
  v78 = v283;

  v276(v277, v78, v280);
  v279(v284, v277, v280);
  v282(v78, v280);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v299 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v287(v288, v285);

  v340 = v299;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v79 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v226, v258, v272 & 1);
  v227 = v79._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v79);

  v231 = swift_getKeyPath();
  v230 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v80 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v232, v240, v272 & 1);
  v233 = v80._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v80);
  v81 = v283;

  v276(v277, v81, v280);
  v279(v284, v277, v280);
  v282(v81, v280);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v300 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v287(v288, v285);

  v339 = v300;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v82 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Attach ", v235, v272 & 1);
  v236 = v82._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v82);

  v260 = &unk_1005033E0;
  v238 = swift_getKeyPath();
  v261 = sub_1003425C8();
  v237 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v83 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v239, v240, v272 & 1);
  v241 = v83._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v83);
  v84 = v283;

  v276(v277, v84, v280);
  v279(v284, v277, v280);
  v282(v84, v280);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v301 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v287(v288, v285);

  v338 = v301;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v85 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Can you please attach ", v244, v272 & 1);
  v245 = v85._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v85);

  v247 = swift_getKeyPath();
  v246 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v86 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v248, v258, v272 & 1);
  v249 = v86._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v86);

  v253 = swift_getKeyPath();
  v252 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v87 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v254, v255, v272 & 1);
  v256 = v87._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v87);
  v88 = v283;

  v276(v277, v88, v280);
  v279(v284, v277, v280);
  v282(v88, v280);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v302 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v287(v288, v285);

  v337 = v302;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v89 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v257, v258, v272 & 1);
  v259 = v89._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v89);

  v263 = swift_getKeyPath();
  v262 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v90 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" as an attachment to the draft", 0x1EuLL, v272 & 1);
  v264 = v90._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v90);
  v91 = v283;

  v276(v277, v91, v280);
  v279(v284, v277, v280);
  v282(v91, v280);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v303 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v287(v288, v285);

  v336 = v303;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v92 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Address it from my ", v266, v272 & 1);
  v268 = v92._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v92);

  v270 = swift_getKeyPath();
  sub_10028E17C();
  v269 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v93 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" account", v271, v272 & 1);
  v274 = v93._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v93);
  v94 = v273;

  v276(v277, v283, v280);
  v279(v284, v277, v280);
  v282(v283, v280);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v304 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v287(v288, v285);

  v335 = v304;
  v305 = sub_10025C9B0(&qword_1006D9660);
  v95 = _allocateUninitializedArray<A>(_:)();
  v96 = v290;
  v97 = v291;
  v98 = v292;
  v99 = v293;
  v100 = v294;
  v101 = v295;
  v102 = v296;
  v103 = v297;
  v104 = v298;
  v105 = v299;
  v106 = v300;
  v107 = v301;
  v108 = v302;
  v109 = v303;
  v110 = v304;
  *v111 = v9;
  v111[1] = v14;
  v111[2] = v18;
  v111[3] = v22;
  v111[4] = v26;
  v111[5] = v30;
  v111[6] = v35;
  v111[7] = v40;
  v111[8] = v94;
  v111[9] = v47;
  v111[10] = v96;
  v111[11] = v97;
  v111[12] = v98;
  v111[13] = v99;
  v111[14] = v100;
  v111[15] = v101;
  v111[16] = v102;
  v111[17] = v103;
  v111[18] = v104;
  v111[19] = v105;
  v111[20] = v106;
  v111[21] = v107;
  v111[22] = v108;
  v111[23] = v109;
  v111[24] = v110;
  sub_1002612B0();
  v308 = v95;
  v334 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v334;
}

_BYTE *sub_100331030@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1002E1A40(a1, v6);
  memcpy(__dst, v6, sizeof(__dst));
  v2 = sub_100469360();
  result = __dst;
  *a2 = v2;
  a2[1] = v4;
  sub_1002E4218();
  return result;
}

_BYTE *sub_10033109C(void *a1, uint64_t *a2)
{
  sub_100268860(a1, &v5);
  sub_1002E1A40(a2, v4);
  memcpy(__dst, v4, sizeof(__dst));
  sub_1004693C8();
  result = __dst;
  sub_1002E4218();
  return result;
}

_BYTE *sub_10033111C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_1002E1A40(a1, v4);
  memcpy(__dst, v4, sizeof(__dst));
  sub_100469450(v5);
  memcpy(a2, v5, 0x48uLL);
  result = __dst;
  sub_1002E4218();
  return result;
}

_BYTE *sub_100331194(void *a1, uint64_t *a2)
{
  sub_1002CD078(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  sub_1002E1A40(a2, v4);
  memcpy(v7, v4, sizeof(v7));
  sub_1004694D4(__dst);
  result = v7;
  sub_1002E4218();
  return result;
}

_BYTE *sub_10033121C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = a2;
  v4 = a1;
  v5 = (*(*(sub_10025C9B0(&unk_1006D7380) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v4);
  v7 = &v4 - v5;
  v6 = v10;
  sub_1002E1A40(v2, v10);
  v9 = __dst;
  memcpy(__dst, v6, sizeof(__dst));
  sub_10046955C();
  sub_100342710(v7, v8);
  result = v9;
  sub_1002E4218();
  return result;
}

_BYTE *sub_1003312F4(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v6 = a2;
  v5 = (*(*(sub_10025C9B0(&unk_1006D7380) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v4);
  v8 = &v4 - v5;
  sub_100289B6C(v2, &v4 - v5);
  v7 = v10;
  sub_1002E1A40(v6, v10);
  v9 = __dst;
  memcpy(__dst, v7, sizeof(__dst));
  sub_1004695B0(v8);
  result = v9;
  sub_1002E4218();
  return result;
}

_BYTE *sub_1003313C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1002E1A40(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_100469688();
  result = __dst;
  *a2 = v2;
  sub_1002E4218();
  return result;
}

_BYTE *sub_100331430(uint64_t *a1, uint64_t *a2)
{
  sub_1002A730C(a1, &v5);
  sub_1002E1A40(a2, v4);
  memcpy(__dst, v4, sizeof(__dst));
  sub_1004696E4();
  result = __dst;
  sub_1002E4218();
  return result;
}

_BYTE *sub_1003314A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1002E1A40(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_100469758();
  result = __dst;
  *a2 = v2;
  sub_1002E4218();
  return result;
}

_BYTE *sub_10033150C(uint64_t *a1, uint64_t *a2)
{
  sub_1002A730C(a1, &v5);
  sub_1002E1A40(a2, v4);
  memcpy(__dst, v4, sizeof(__dst));
  sub_1004697B4();
  result = __dst;
  sub_1002E4218();
  return result;
}

_BYTE *sub_100331580@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1002E1A40(a1, v7);
  memcpy(__dst, v7, sizeof(__dst));
  v2 = sub_100469828();
  result = __dst;
  *a2 = v2;
  a2[1] = v4;
  a2[2] = v5;
  sub_1002E4218();
  return result;
}

_BYTE *sub_1003315F0(uint64_t a1, uint64_t *a2)
{
  sub_100342660(a1, &v6);
  v4 = v6;
  sub_1002E1A40(a2, v5);
  memcpy(__dst, v5, sizeof(__dst));
  sub_10046989C(v4);
  result = __dst;
  sub_1002E4218();
  return result;
}

uint64_t sub_10033167C(uint64_t a1)
{
  v30 = a1;
  v34 = 0;
  v14 = sub_100331F0C;
  v19 = sub_10033209C;
  v21 = sub_10033228C;
  v23 = sub_10033247C;
  v25 = sub_10031CF10;
  v28 = sub_10031CF10;
  v31 = sub_100332668;
  v33 = sub_10031D100;
  v68 = 0;
  v58 = &v67;
  v67 = 0;
  v57 = &v66;
  v66 = 0;
  v56 = &v65;
  v65 = 0;
  v55 = &v64;
  v64 = 0;
  v54 = &v63;
  v63 = 0;
  v53 = &v62;
  v62 = 0;
  v52 = &v61;
  v61 = 0;
  v51 = &v60;
  v60 = 0;
  v37 = type metadata accessor for _AssistantIntent.Value();
  v17 = *(v37 - 8);
  v18 = v37 - 8;
  v13 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v37);
  v40 = &v12 - v13;
  v68 = a1;
  KeyPath = swift_getKeyPath();
  sub_10028D658();
  v15 = _AssistantIntent.IntentProjection.subscript.getter();
  v35 = sub_100331E94();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v41 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v39 = *(v17 + 8);
  v38 = v17 + 8;
  v39(v40, v37);

  v67 = v41;
  v20 = swift_getKeyPath();
  sub_10028DF54();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v42 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v39(v40, v37);

  v66 = v42;
  v22 = swift_getKeyPath();
  sub_10028E064();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v43 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v39(v40, v37);

  v65 = v43;
  v24 = swift_getKeyPath();
  v27 = sub_100342530();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v44 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v39(v40, v37);

  v64 = v44;
  v26 = swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v45 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v39(v40, v37);

  v63 = v45;
  v29 = swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v46 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v39(v40, v37);

  v62 = v46;
  v32 = swift_getKeyPath();
  sub_1003425C8();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v47 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v39(v40, v37);

  v61 = v47;
  v36 = swift_getKeyPath();
  sub_10028E17C();
  _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v48 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v39(v40, v37);

  v60 = v48;
  v49 = sub_10025C9B0(&qword_1006D9518);
  v2 = _allocateUninitializedArray<A>(_:)();
  v3 = v42;
  v4 = v43;
  v5 = v44;
  v6 = v45;
  v7 = v46;
  v8 = v47;
  v9 = v48;
  *v10 = v41;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v10[5] = v7;
  v10[6] = v8;
  v10[7] = v9;
  sub_1002612B0();
  v50 = v2;
  v59 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v59;
}

unint64_t sub_100331E94()
{
  v2 = qword_1006D94D0;
  if (!qword_1006D94D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D94D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100331F0C()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("the email about todo list", 0x19uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("my email to Steve", 0x11uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("yesterday's email to mom", 0x18uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  sub_1002612B0();
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v5;
}

uint64_t sub_10033209C()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("book club meeting recap", 0x17uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Memorial Day family picnic", 0x1AuLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("coffee session", 0xEuLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("10 year high school reunion", 0x1BuLL, 1);
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  sub_1002612B0();
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v6;
}

uint64_t sub_10033228C()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("today we discussed the final chapter of Sense and Sensibility", 0x3DuLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("potluck signup is attached to this email. meet at Balboa Park on Sunday by noon!", 0x50uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("let's get coffee this Saturday afternoon", 0x28uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("we can't wait to see you all this Friday night at The Den", 0x39uLL, 1);
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  sub_1002612B0();
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v6;
}

uint64_t sub_10033247C()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Rick", 4uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Morty", 5uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Jane", 4uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("bob@example.com", 0xFuLL, 1);
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  sub_1002612B0();
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v6;
}

uint64_t sub_100332668()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("my contact card", 0xFuLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("potluck signup spreadsheet", 0x1AuLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  sub_1002612B0();
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  return v4;
}

uint64_t sub_100332798(uint64_t a1)
{
  v48 = a1;
  v89 = 0;
  v83 = &v88;
  v88 = 0;
  v82 = &v87;
  v87 = 0;
  v81 = &v86;
  v86 = 0;
  v80 = &v85;
  v85 = 0;
  v68 = sub_10025C9B0(&qword_1006D9628);
  v33 = *(v68 - 8);
  v34 = v68 - 8;
  v23 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v68);
  v71 = &v23 - v23;
  v63 = sub_10025C9B0(&qword_1006D9630);
  v31 = *(v63 - 8);
  v32 = v63 - 8;
  v24 = (v31[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v48);
  v67 = &v23 - v24;
  v25 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v1);
  v60 = &v23 - v25;
  v26 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v66 = &v23 - v26;
  v89 = v5;
  v78 = sub_10027A400();
  v47 = 1;
  v77 = &unk_1006581D8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v56 = 1;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Move ", 5uLL, 1);
  object = v6._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);

  v50 = &unk_1005032B0;
  KeyPath = swift_getKeyPath();
  v51 = sub_10027D124();
  v28 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v54 = " to archive";
  v55 = 11;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to archive", 0xBuLL, v56 & 1);
  v30 = v7._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  v8 = v66;

  v59 = v31[2];
  v58 = v31 + 2;
  v59(v60, v8, v63);
  v62 = v31[4];
  v61 = v31 + 4;
  v62(v67, v60, v63);
  v65 = v31[1];
  v64 = v31 + 1;
  v65(v8, v63);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v72 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v70 = *(v33 + 8);
  v69 = v33 + 8;
  v70(v71, v68);

  v88 = v72;
  v35 = 8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Archive ", v35, v56 & 1);
  v36 = v9._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);

  v38 = swift_getKeyPath();
  v37 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v40 = "";
  v41 = 0;
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v56 & 1);
  v39 = v10._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  v11 = v66;

  v59(v60, v11, v63);
  v62(v67, v60, v63);
  v65(v11, v63);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v73 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v70(v71, v68);

  v87 = v73;
  v45 = 25;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v40, v41, v56 & 1);
  v42 = v12._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);

  v44 = swift_getKeyPath();
  v43 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" should go to the archive", v45, v56 & 1);
  v46 = v13._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  v14 = v66;

  v59(v60, v14, v63);
  v62(v67, v60, v63);
  v65(v14, v63);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v74 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v70(v71, v68);

  v86 = v74;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Transfer ", 9uLL, v56 & 1);
  v49 = v15._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);

  v53 = swift_getKeyPath();
  v52 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v54, v55, v56 & 1);
  v57 = v16._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);

  v59(v60, v66, v63);
  v62(v67, v60, v63);
  v65(v66, v63);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v75 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v70(v71, v68);

  v85 = v75;
  v76 = sub_10025C9B0(&qword_1006D9638);
  v17 = _allocateUninitializedArray<A>(_:)();
  v18 = v73;
  v19 = v74;
  v20 = v75;
  *v21 = v72;
  v21[1] = v18;
  v21[2] = v19;
  v21[3] = v20;
  sub_1002612B0();
  v79 = v17;
  v84 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v84;
}

uint64_t sub_1003331DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10027ECA8(a1, &v4);
  *a2 = sub_10027A6E8();
}

uint64_t sub_100333234(uint64_t *a1, uint64_t *a2)
{
  sub_1002A730C(a1, &v5);
  sub_10027ECA8(a2, &v4);
  sub_10027A74C();
}

uint64_t sub_100333298(uint64_t a1)
{
  v8 = 0;
  v7 = sub_100333450;
  v21 = 0;
  v18 = &v20;
  v20 = 0;
  v13 = type metadata accessor for _AssistantIntent.Value();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v6 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v14 = &v5 - v6;
  v21 = a1;
  KeyPath = swift_getKeyPath();
  sub_10027D124();
  v9 = _AssistantIntent.IntentProjection.subscript.getter();
  sub_10027A400();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v15 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v11 + 8))(v14, v13);

  v20 = v15;
  v16 = sub_10025C9B0(&qword_1006D9518);
  v2 = _allocateUninitializedArray<A>(_:)();
  *v3 = v15;
  sub_1002612B0();
  v17 = v2;
  v19 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  sub_100264880();
  return v19;
}

uint64_t sub_100333450()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("my emails about chess club", 0x1AuLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("all mail about airport pickup", 0x1DuLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Book club emails", 0x10uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("comic con San Diego mail messages", 0x21uLL, 1);
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  sub_1002612B0();
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v6;
}

uint64_t sub_100333640(uint64_t a1)
{
  v29 = a1;
  v63 = 0;
  v59 = &v62;
  v62 = 0;
  v58 = &v61;
  v61 = 0;
  v48 = sub_10025C9B0(&qword_1006D9610);
  v26 = *(v48 - 8);
  v27 = v48 - 8;
  v15 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v48);
  v51 = &v15 - v15;
  v43 = sub_10025C9B0(&qword_1006D9618);
  v24 = *(v43 - 8);
  v25 = v43 - 8;
  v16 = (v24[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v29);
  v47 = &v15 - v16;
  v17 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v1);
  v40 = &v15 - v17;
  v18 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v46 = &v15 - v18;
  v63 = v5;
  v56 = sub_10027F564();
  v19 = 15;
  v28 = 1;
  v55 = &unk_1006582C0;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v36 = 1;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Block any more ", v19, 1);
  object = v6._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);

  v31 = &unk_100503270;
  KeyPath = swift_getKeyPath();
  v32 = sub_10027D124();
  v21 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v36 & 1);
  v23 = v7._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  v8 = v46;

  v39 = v24[2];
  v38 = v24 + 2;
  v39(v40, v8, v43);
  v42 = v24[4];
  v41 = v24 + 4;
  v42(v47, v40, v43);
  v45 = v24[1];
  v44 = v24 + 1;
  v45(v8, v43);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v52 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v50 = *(v26 + 8);
  v49 = v26 + 8;
  v50(v51, v48);

  v62 = v52;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v35 = 21;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Can you please block ", 0x15uLL, v36 & 1);
  v30 = v9._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);

  v34 = swift_getKeyPath();
  v33 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" from sending me mail", v35, v36 & 1);
  v37 = v10._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);

  v39(v40, v46, v43);
  v42(v47, v40, v43);
  v45(v46, v43);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v53 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v50(v51, v48);

  v61 = v53;
  v54 = sub_10025C9B0(&qword_1006D9620);
  v11 = _allocateUninitializedArray<A>(_:)();
  v12 = v53;
  *v13 = v52;
  v13[1] = v12;
  sub_1002612B0();
  v57 = v11;
  v60 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  return v60;
}

uint64_t sub_100333C84(uint64_t a1)
{
  v8 = 0;
  v7 = sub_100333E3C;
  v21 = 0;
  v18 = &v20;
  v20 = 0;
  v13 = type metadata accessor for _AssistantIntent.Value();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v6 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v14 = &v5 - v6;
  v21 = a1;
  KeyPath = swift_getKeyPath();
  sub_10027D124();
  v9 = _AssistantIntent.IntentProjection.subscript.getter();
  sub_10027F564();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v15 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v11 + 8))(v14, v13);

  v20 = v15;
  v16 = sub_10025C9B0(&qword_1006D9518);
  v2 = _allocateUninitializedArray<A>(_:)();
  *v3 = v15;
  sub_1002612B0();
  v17 = v2;
  v19 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  sub_100264880();
  return v19;
}

uint64_t sub_100333E3C()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("emails from John Appleseed", 0x1AuLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("emails from my ex", 0x11uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("emails about your car's extended warranty", 0x29uLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  sub_1002612B0();
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v5;
}

uint64_t sub_100333FCC(uint64_t a1)
{
  v41 = a1;
  v77 = 0;
  v72 = &v76;
  v76 = 0;
  v71 = &v75;
  v75 = 0;
  v70 = &v74;
  v74 = 0;
  v59 = sub_10025C9B0(&qword_1006D95F8);
  v31 = *(v59 - 8);
  v32 = v59 - 8;
  v20 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v59);
  v62 = &v19 - v20;
  v54 = sub_10025C9B0(&qword_1006D9600);
  v29 = *(v54 - 8);
  v30 = v54 - 8;
  v21 = (v29[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v41);
  v58 = &v19 - v21;
  v22 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v1);
  v51 = &v19 - v22;
  v23 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v57 = &v19 - v23;
  v77 = v5;
  v68 = sub_1002BDAB0();
  v24 = 7;
  v40 = 1;
  v67 = &unk_1006597C0;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v47 = 1;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Delete ", v24, 1);
  object = v6._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);

  v43 = &unk_100503230;
  KeyPath = swift_getKeyPath();
  v44 = sub_10027D124();
  v26 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v37 = "";
  v38 = 0;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v47 & 1);
  v28 = v7._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  v8 = v57;

  v50 = v29[2];
  v49 = v29 + 2;
  v50(v51, v8, v54);
  v53 = v29[4];
  v52 = v29 + 4;
  v53(v58, v51, v54);
  v56 = v29[1];
  v55 = v29 + 1;
  v56(v8, v54);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v63 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v61 = *(v31 + 8);
  v60 = v31 + 8;
  v61(v62, v59);

  v76 = v63;
  v33 = 6;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Trash ", v33, v47 & 1);
  v34 = v9._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);

  v36 = swift_getKeyPath();
  v35 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v37, v38, v47 & 1);
  v39 = v10._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  v11 = v57;

  v50(v51, v11, v54);
  v53(v58, v51, v54);
  v56(v11, v54);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v64 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v61(v62, v59);

  v75 = v64;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Can you please move ", 0x14uLL, v47 & 1);
  v42 = v12._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);

  v46 = swift_getKeyPath();
  v45 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to garbage", 0xBuLL, v47 & 1);
  v48 = v13._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);

  v50(v51, v57, v54);
  v53(v58, v51, v54);
  v56(v57, v54);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v65 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v61(v62, v59);

  v74 = v65;
  v66 = sub_10025C9B0(&qword_1006D9608);
  v14 = _allocateUninitializedArray<A>(_:)();
  v15 = v64;
  v16 = v65;
  *v17 = v63;
  v17[1] = v15;
  v17[2] = v16;
  sub_1002612B0();
  v69 = v14;
  v73 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v73;
}

uint64_t sub_10033480C(uint64_t a1)
{
  v8 = 0;
  v7 = sub_1003349C4;
  v21 = 0;
  v18 = &v20;
  v20 = 0;
  v13 = type metadata accessor for _AssistantIntent.Value();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v6 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v14 = &v5 - v6;
  v21 = a1;
  KeyPath = swift_getKeyPath();
  sub_10027D124();
  v9 = _AssistantIntent.IntentProjection.subscript.getter();
  sub_1002BDAB0();
  _AssistantIntent.Value.init<A>(for:builder:)();

  v15 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v11 + 8))(v14, v13);

  v20 = v15;
  v16 = sub_10025C9B0(&qword_1006D9518);
  v2 = _allocateUninitializedArray<A>(_:)();
  *v3 = v15;
  sub_1002612B0();
  v17 = v2;
  v19 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  sub_100264880();
  return v19;
}

uint64_t sub_1003349C4()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("any emails about furniture delivery", 0x23uLL, 1);
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("the boxing class emails", 0x17uLL, 1);
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("all mail messages from Temu", 0x1BuLL, 1);
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();

  sub_10025C9B0(&unk_1006D69B0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  sub_1002612B0();
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v5;
}

uint64_t sub_100334B54(uint64_t a1)
{
  v30 = a1;
  v65 = 0;
  v61 = &v64;
  v64 = 0;
  v60 = &v63;
  v63 = 0;
  v50 = sub_10025C9B0(&qword_1006D95E0);
  v26 = *(v50 - 8);
  v27 = v50 - 8;
  v15 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v50);
  v53 = &v15 - v15;
  v45 = sub_10025C9B0(&qword_1006D95E8);
  v24 = *(v45 - 8);
  v25 = v45 - 8;
  v16 = (v24[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v30);
  v49 = &v15 - v16;
  v17 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v1);
  v42 = &v15 - v17;
  v18 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v48 = &v15 - v18;
  v65 = v5;
  v58 = sub_100335360();
  v19 = 31;
  v28 = 1;
  v57 = &unk_10065EC30;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v38 = 1;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Remove follow up suggestion on ", v19, 1);
  object = v6._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);

  v32 = &unk_1005031F0;
  KeyPath = swift_getKeyPath();
  v33 = sub_10027D124();
  v21 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v36 = "";
  v37 = 0;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v38 & 1);
  v23 = v7._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  v8 = v48;

  v41 = v24[2];
  v40 = v24 + 2;
  v41(v42, v8, v45);
  v44 = v24[4];
  v43 = v24 + 4;
  v44(v49, v42, v45);
  v47 = v24[1];
  v46 = v24 + 1;
  v47(v8, v45);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v54 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v52 = *(v26 + 8);
  v51 = v26 + 8;
  v52(v53, v50);

  v64 = v54;
  v29 = 32;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Stop suggesting to follow up on ", v29, v38 & 1);
  v31 = v9._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);

  v35 = swift_getKeyPath();
  v34 = _AssistantIntent.IntentProjection.subscript.getter();
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v36, v37, v38 & 1);
  v39 = v10._object;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);

  v41(v42, v48, v45);
  v44(v49, v42, v45);
  v47(v48, v45);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v55 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v52(v53, v50);

  v63 = v55;
  v56 = sub_10025C9B0(&qword_1006D95F0);
  v11 = _allocateUninitializedArray<A>(_:)();
  v12 = v55;
  *v13 = v54;
  v13[1] = v12;
  sub_1002612B0();
  v59 = v11;
  v62 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  sub_100264880();
  sub_100264880();
  return v62;
}