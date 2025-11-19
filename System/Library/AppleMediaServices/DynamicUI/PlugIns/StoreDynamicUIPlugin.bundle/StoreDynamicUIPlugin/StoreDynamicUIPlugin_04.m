uint64_t sub_6D0FC()
{
  v0 = sub_13ABC4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CarouselCellView();
  sub_72AB0();
  sub_6C338(v3);
  v4 = sub_750BC();
  (*(v1 + 8))(v3, v0);
  sub_720B4(v4 & 1);
}

uint64_t sub_6D204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for CarouselCellView();
  if (*(a3 + *(v4 + 36)) == 1 && (*(a3 + *(v4 + 40)) & 1) == 0)
  {
    sub_13AD44();
  }

  sub_13B474();
  sub_13A9C4();
  sub_6DB94(&qword_19CD98, &type metadata accessor for EmptyVisualEffect);
  return sub_13A824();
}

uint64_t sub_6D308(uint64_t a1)
{
  v2 = type metadata accessor for AppleOneOfferPlatterView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6D364(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_9F94();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_6D3C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarouselCellView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6D42C()
{
  type metadata accessor for CarouselCellView();

  return sub_6D0FC();
}

uint64_t sub_6D49C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_4948(a3);
  sub_9F94();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_6D4FC()
{
  v1 = type metadata accessor for CarouselCellView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_4948(&qword_19AC58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13A734();
    sub_9F94();
    (*(v5 + 8))(v0 + v3);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  sub_4948(&qword_19AC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13ABC4();
    sub_9F94();
    (*(v7 + 8))(v0 + v3 + v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_6D684(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CarouselCellView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_6D204(a1, a2, v6);
}

unint64_t sub_6D70C()
{
  result = qword_19CD38;
  if (!qword_19CD38)
  {
    sub_558C(&qword_19CD00);
    sub_6D798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19CD38);
  }

  return result;
}

unint64_t sub_6D798()
{
  result = qword_19CD40;
  if (!qword_19CD40)
  {
    sub_558C(&qword_19CCF8);
    sub_6D824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19CD40);
  }

  return result;
}

unint64_t sub_6D824()
{
  result = qword_19CD48;
  if (!qword_19CD48)
  {
    sub_558C(&qword_19CCF0);
    sub_6D8DC();
    sub_CBC0(&qword_19AB20, &qword_19AAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19CD48);
  }

  return result;
}

unint64_t sub_6D8DC()
{
  result = qword_19CD50;
  if (!qword_19CD50)
  {
    sub_558C(&qword_19CD28);
    sub_6D994();
    sub_CBC0(&qword_19CD88, &qword_19CD90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19CD50);
  }

  return result;
}

unint64_t sub_6D994()
{
  result = qword_19CD58;
  if (!qword_19CD58)
  {
    sub_558C(&qword_19CD20);
    sub_6DA4C();
    sub_CBC0(&qword_19CD78, &qword_19CD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19CD58);
  }

  return result;
}

unint64_t sub_6DA4C()
{
  result = qword_19CD60;
  if (!qword_19CD60)
  {
    sub_558C(&qword_19CD18);
    sub_6DAD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19CD60);
  }

  return result;
}

unint64_t sub_6DAD8()
{
  result = qword_19CD68;
  if (!qword_19CD68)
  {
    sub_558C(&qword_19CD10);
    sub_6DB94(&qword_19CD70, type metadata accessor for AppleOneOfferPlatterView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19CD68);
  }

  return result;
}

uint64_t sub_6DB94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_6DBDC(uint64_t a1)
{
  v2 = sub_4948(&qword_19CD00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6DC44(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19AC60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_6DCC8()
{
  result = qword_19CDA0;
  if (!qword_19CDA0)
  {
    sub_558C(&qword_19CDA8);
    sub_558C(&qword_19CD00);
    sub_558C(&qword_19CD30);
    sub_6D70C();
    sub_13A9C4();
    sub_6DB94(&qword_19CD98, &type metadata accessor for EmptyVisualEffect);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19CDA0);
  }

  return result;
}

uint64_t sub_6DE44()
{
  v0 = sub_13BB84();
  v2 = v1;
  if (v0 == sub_13BB84() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_73DA8();
  }

  return v5 & 1;
}

uint64_t sub_6DEBC(char a1)
{
  if (a1)
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  sub_73E3C();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_73DA8();
  }

  return v8 & 1;
}

uint64_t sub_6DF48(unsigned __int8 a1, char a2)
{
  v2 = 0x656E696C6E69;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x697461676976616ELL;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3 == 1)
    {
      v5 = 0xEA00000000006E6FLL;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x656E696C6E69;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x697461676976616ELL;
    }

    else
    {
      v2 = 1701736302;
    }

    if (a2 == 1)
    {
      v6 = 0xEA00000000006E6FLL;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_73DA8();
  }

  return v8 & 1;
}

uint64_t sub_6E02C()
{
  v0 = 0xEA0000000000666CLL;
  sub_73F84();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0x6C65685379646F62;
    }

    else
    {
      v5 = 0x79646F427473616CLL;
    }

    if (v4 == 1)
    {
      v6 = 0xE900000000000066;
    }

    else
    {
      v6 = 0xED0000666C656853;
    }
  }

  else
  {
    v5 = v3;
    v6 = 0xEA0000000000666CLL;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0x6C65685379646F62;
    }

    else
    {
      v3 = 0x79646F427473616CLL;
    }

    if (v2 == 1)
    {
      v0 = 0xE900000000000066;
    }

    else
    {
      v0 = 0xED0000666C656853;
    }
  }

  if (v5 == v3 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_73E08();
  }

  return v8 & 1;
}

uint64_t sub_6E138(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1668184435;
  }

  else
  {
    v3 = 0x636E797361;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1668184435;
  }

  else
  {
    v5 = 0x636E797361;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_73DA8();
  }

  return v8 & 1;
}

uint64_t sub_6E1C0(char a1)
{
  if (a1)
  {
    v1 = 0xE500000000000000;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  sub_73E3C();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_73DA8();
  }

  return v8 & 1;
}

uint64_t sub_6E248(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  sub_73E3C();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_73DA8();
  }

  return v8 & 1;
}

uint64_t sub_6E2D4(char a1)
{
  if (a1)
  {
    v1 = 0xED0000666C656853;
  }

  else
  {
    v1 = 0xEC000000666C6568;
  }

  sub_73E3C();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_73DA8();
  }

  return v8 & 1;
}

uint64_t sub_6E378()
{
  sub_73DC4();
  sub_73F78();
  sub_73F20();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0x6C65685379646F62;
    }

    else
    {
      v5 = 0x79646F427473616CLL;
    }

    if (v4 == 1)
    {
      v6 = 0xE900000000000066;
    }

    else
    {
      v6 = 0xED0000666C656853;
    }
  }

  else
  {
    v5 = v3;
    v6 = v0;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0x6C65685379646F62;
    }

    else
    {
      v3 = 0x79646F427473616CLL;
    }

    if (v2 == 1)
    {
      v0 = 0xE900000000000066;
    }

    else
    {
      v0 = 0xED0000666C656853;
    }
  }

  if (v5 == v3 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_73E08();
  }

  return v8 & 1;
}

uint64_t sub_6E47C()
{
  sub_73DD4();
  sub_73D94();
  v5 = v4;
  v6 = "winbackFooterShelf";
  v7 = "disclaimerFooterShelf";
  v8 = v2;
  v9 = v0;
  v10 = "compactFooterShelf";
  switch(v5)
  {
    case 1:
      break;
    case 2:
      v9 = 0x800000000014E450;
      v8 = v3 + 3;
      break;
    case 3:
      sub_73F6C();
      sub_73E88();
      break;
    case 4:
      v11 = "compactFooterShelf";
      goto LABEL_4;
    default:
      v11 = "bol";
LABEL_4:
      v9 = v11 | 0x8000000000000000;
      v8 = 0xD000000000000012;
      break;
  }

  switch(v1)
  {
    case 1:
      break;
    case 2:
      v0 = (v7 - 32) | 0x8000000000000000;
      v2 = v3 + 3;
      break;
    case 3:
      sub_73F60();
      sub_73F20();
      sub_73DC4();
      break;
    case 4:
      v12 = v6 - 32;
      goto LABEL_10;
    default:
      v12 = v10 - 32;
LABEL_10:
      v0 = v12 | 0x8000000000000000;
      v2 = 0xD000000000000012;
      break;
  }

  if (v8 == v2 && v9 == v0)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_73E08();
  }

  return v14 & 1;
}

uint64_t sub_6E5E4()
{
  v0 = 0xE900000000000066;
  sub_73F4C();
  v4 = v3;
  v5 = v2;
  v6 = 0xE900000000000066;
  switch(v4)
  {
    case 1:
      v5 = sub_73F38();
      v6 = 0xEF666C6568537265;
      break;
    case 2:
      v5 = sub_73F04();
      v6 = v7 | 0x8000000000000000;
      break;
    case 3:
      sub_73F6C();
      goto LABEL_5;
    case 4:
    case 5:
LABEL_5:
      sub_73E88();
      break;
    case 6:
      v5 = 0x656853656C746974;
      v6 = 0xEA0000000000666CLL;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      sub_73D94();
      sub_73DD4();
      break;
    case 2:
      sub_73EE4();
      v0 = v8 | 0x8000000000000000;
      break;
    case 3:
      sub_73F60();
      goto LABEL_12;
    case 4:
      sub_73F78();
      goto LABEL_12;
    case 5:
LABEL_12:
      sub_73DC4();
      break;
    case 6:
      sub_73F84();
      v0 = 0xEA0000000000666CLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_73E08();
  }

  return v10 & 1;
}

uint64_t sub_6E794(char a1)
{
  if (a1)
  {
    v1 = 0xEB00000000666C65;
  }

  else
  {
    v1 = 0xE900000000000066;
  }

  sub_73E3C();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_73DA8();
  }

  return v8 & 1;
}

uint64_t sub_6E830(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0x68537265746F6F66;
  }

  if (v2)
  {
    v4 = 0xEB00000000666C65;
  }

  else
  {
    v4 = 0x800000000014E600;
  }

  if (a2)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0x68537265746F6F66;
  }

  if (a2)
  {
    v6 = 0x800000000014E600;
  }

  else
  {
    v6 = 0xEB00000000666C65;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_73DA8();
  }

  return v8 & 1;
}

uint64_t sub_6E8D4()
{
  sub_73DC4();
  sub_73F78();
  sub_73F20();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0x6C65685379646F62;
    }

    else
    {
      v5 = 0x68537265746F6F66;
    }

    if (v4 == 1)
    {
      v6 = 0xE900000000000066;
    }

    else
    {
      v6 = v0;
    }
  }

  else
  {
    v5 = v3;
    v6 = v0;
  }

  if (v2)
  {
    v3 = v2 == 1 ? 0x6C65685379646F62 : 0x68537265746F6F66;
    if (v2 == 1)
    {
      v0 = 0xE900000000000066;
    }
  }

  if (v5 == v3 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_73E08();
  }

  return v8 & 1;
}

uint64_t sub_6E9B8(unsigned __int8 a1, char a2)
{
  v2 = 0xEF666C6568537265;
  v3 = 0x6F42646567646162;
  v4 = 0xEF666C6568537964;
  v5 = a1;
  v6 = "disclaimerFooterShelf";
  v7 = 0x6F42646567646162;
  switch(v5)
  {
    case 1:
      v7 = 0x6568536567646162;
      v4 = 0xEA0000000000666CLL;
      break;
    case 2:
      v7 = 0x6C65685379646F62;
      v4 = 0xE900000000000066;
      break;
    case 3:
      v7 = sub_73F38();
      v4 = v2;
      break;
    case 4:
      v7 = 0xD000000000000015;
      v4 = 0x800000000014E450;
      break;
    case 5:
      sub_73F6C();
      sub_73DC4();
      break;
    default:
      break;
  }

  v8 = v2 + 1791;
  switch(a2)
  {
    case 1:
      v3 = 0x6568536567646162;
      v8 = 0xEA0000000000666CLL;
      break;
    case 2:
      sub_73F4C();
      v8 = 0xE900000000000066;
      break;
    case 3:
      sub_73D94();
      v8 = v9;
      break;
    case 4:
      v3 = 0xD000000000000015;
      v8 = (v6 - 32) | 0x8000000000000000;
      break;
    case 5:
      sub_73F60();
      sub_73F20();
      sub_73E88();
      break;
    default:
      break;
  }

  if (v7 == v3 && v4 == v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_73DA8();
  }

  return v11 & 1;
}

uint64_t sub_6EB7C()
{
  sub_73DD4();
  sub_73D94();
  v4 = v3;
  v5 = v2;
  v6 = v0;
  switch(v4)
  {
    case 1:
      v5 = sub_73F04();
      v6 = v7 | 0x8000000000000000;
      break;
    case 2:
      sub_73F6C();
      goto LABEL_4;
    case 3:
LABEL_4:
      sub_73E88();
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      sub_73EE4();
      v0 = v8 | 0x8000000000000000;
      break;
    case 2:
      sub_73F60();
      goto LABEL_9;
    case 3:
      sub_73F78();
LABEL_9:
      sub_73F20();
      sub_73DC4();
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_73E08();
  }

  return v10 & 1;
}

uint64_t sub_6EC9C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6F74747542656E6FLL;
  }

  else
  {
    v3 = 0x53736E6F74747562;
  }

  if (v2)
  {
    v4 = 0xEC000000666C6568;
  }

  else
  {
    v4 = 0xEE00666C6568536ELL;
  }

  if (a2)
  {
    v5 = 0x6F74747542656E6FLL;
  }

  else
  {
    v5 = 0x53736E6F74747562;
  }

  if (a2)
  {
    v6 = 0xEE00666C6568536ELL;
  }

  else
  {
    v6 = 0xEC000000666C6568;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_73DA8();
  }

  return v8 & 1;
}

uint64_t sub_6ED44(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE900000000000074;
  }

  sub_73E3C();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_73DA8();
  }

  return v8 & 1;
}

uint64_t sub_6EDD8(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xEA00000000006C61;
  }

  sub_73E3C();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_73DA8();
  }

  return v8 & 1;
}

uint64_t sub_6EE6C(char a1, char a2)
{
  v2 = "chevron.compact.left";
  v3 = (a1 & 1) == 0;
  if (a1)
  {
    v4 = 0xD000000000000015;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  if (v3)
  {
    v5 = "wAll";
  }

  else
  {
    v5 = "chevron.compact.left";
  }

  if (a2)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if ((a2 & 1) == 0)
  {
    v2 = "wAll";
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_73DA8();
  }

  return v8 & 1;
}

uint64_t sub_6EF00(char a1)
{
  if (a1)
  {
    v1 = 0xE500000000000000;
  }

  else
  {
    v1 = 0xEB00000000646564;
  }

  sub_73E3C();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_73DA8();
  }

  return v8 & 1;
}

uint64_t sub_6EF94()
{
  sub_73DD4();
  sub_73D94();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0xD000000000000015;
    }

    else
    {
      v5 = 0x68537265746F6F66;
    }

    if (v4 == 1)
    {
      v6 = 0x800000000014E450;
    }

    else
    {
      v6 = 0xEB00000000666C65;
    }
  }

  else
  {
    v5 = v3;
    v6 = v0;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = 0x68537265746F6F66;
    }

    if (v2 == 1)
    {
      v0 = 0x800000000014E450;
    }

    else
    {
      v0 = 0xEB00000000666C65;
    }
  }

  if (v5 == v3 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_73E08();
  }

  return v8 & 1;
}

uint64_t sub_6F084(unsigned __int8 a1, char a2)
{
  v2 = 0x656461637261;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x656461637261;
  switch(v4)
  {
    case 1:
      v5 = 0x507373656E746966;
      v3 = 0xEB0000000073756CLL;
      break;
    case 2:
      v5 = 0x64756F6C4369;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x636973756DLL;
      break;
    case 4:
      v3 = 0xE800000000000000;
      v5 = 0x73756C507377656ELL;
      break;
    case 5:
      v3 = 0xE300000000000000;
      v5 = 6647407;
      break;
    case 6:
      v3 = 0xE200000000000000;
      v5 = 30324;
      break;
    case 7:
      v5 = 0x73756C507674;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x507373656E746966;
      v6 = 0xEB0000000073756CLL;
      break;
    case 2:
      v2 = 0x64756F6C4369;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x636973756DLL;
      break;
    case 4:
      v6 = 0xE800000000000000;
      v2 = 0x73756C507377656ELL;
      break;
    case 5:
      v6 = 0xE300000000000000;
      v2 = 6647407;
      break;
    case 6:
      v6 = 0xE200000000000000;
      v2 = 30324;
      break;
    case 7:
      v2 = 0x73756C507674;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_73DA8();
  }

  return v8 & 1;
}

uint64_t sub_6F284(unsigned __int8 a1, char a2)
{
  v2 = 1802658148;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x746867696CLL;
    }

    else
    {
      v4 = 0x65766974616ELL;
    }

    if (v3 == 1)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1802658148;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x746867696CLL;
    }

    else
    {
      v2 = 0x65766974616ELL;
    }

    if (a2 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_73DA8();
  }

  return v8 & 1;
}

uint64_t sub_6F360(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000079;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  sub_73E3C();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_73DA8();
  }

  return v8 & 1;
}

uint64_t sub_6F3F4(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  sub_73E3C();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_73DA8();
  }

  return v8 & 1;
}

uint64_t sub_6F480(unsigned __int8 a1, char a2)
{
  v2 = 0x647261646E617473;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x647261646E617473;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1819042164;
      break;
    case 2:
      v5 = 0x4165636976726573;
      v3 = 0xEC0000007472656CLL;
      break;
    case 3:
      v5 = sub_73F04();
      v3 = v6 | 0x8000000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE400000000000000;
      v2 = 1819042164;
      break;
    case 2:
      v2 = 0x4165636976726573;
      v7 = 0xEC0000007472656CLL;
      break;
    case 3:
      sub_73EE4();
      v7 = v8 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_73DA8();
  }

  return v10 & 1;
}

uint64_t sub_6F5D0(unsigned __int8 a1, char a2)
{
  v2 = 7368564;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7368564;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x7265746E6563;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x6D6F74746F62;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x6C61727574616ELL;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x7265746E6563;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x6D6F74746F62;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x6C61727574616ELL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_73DA8();
  }

  return v8 & 1;
}

uint64_t sub_6F71C(unsigned __int8 a1, char a2)
{
  v2 = 0x657261757173;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6C6F626D7973;
    }

    else
    {
      v4 = 1952671090;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x657261757173;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6C6F626D7973;
    }

    else
    {
      v2 = 1952671090;
    }

    if (a2 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_73DA8();
  }

  return v8 & 1;
}

uint64_t sub_6F7F4(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x656E6961746E6F63;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6365537373616C67;
    }

    else
    {
      v5 = 1954047348;
    }

    if (v4 == 1)
    {
      v6 = 0xEE00797261646E6FLL;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0x656E6961746E6F63;
    v6 = 0xE900000000000064;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6365537373616C67;
    }

    else
    {
      v3 = 1954047348;
    }

    if (a2 == 1)
    {
      v2 = 0xEE00797261646E6FLL;
    }

    else
    {
      v2 = 0xE400000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_73E08();
  }

  return v8 & 1;
}

uint64_t sub_6F8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = a3;
  v6 = sub_4948(&qword_19C9B8);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for CarouselCell();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  v16 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17CarouselComponent_model;
  v17 = *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17CarouselComponent_model);
  swift_getKeyPath();

  v33 = sub_4948(&qword_19D4B0);
  sub_13B5E4();

  v18 = v36;
  if (v36)
  {
    v31 = v17;
    v19 = *(v36 + 16);
    if (v19)
    {
      v29 = v8;
      v30 = a1;
      v35 = &_swiftEmptyArrayStorage;
      sub_13C044();
      v20 = *(v10 + 80);
      v28 = v18;
      v21 = v18 + ((v20 + 32) & ~v20);
      v34 = *(v10 + 72);
      v22 = v32;
      do
      {
        sub_73700(v21, v15, type metadata accessor for CarouselCell);
        sub_73700(v15, v12, type metadata accessor for CarouselCell);
        v23 = *(v4 + v16);
        type metadata accessor for CarouselCellModel(0);
        swift_allocObject();

        sub_73048(v12, v22, v23);
        sub_7375C(v15, type metadata accessor for CarouselCell);
        sub_13C024();
        sub_13C054();
        sub_13C064();
        sub_13C034();
        v21 += v34;
        --v19;
      }

      while (v19);

      v24 = v35;
      v8 = v29;
    }

    else
    {

      v24 = &_swiftEmptyArrayStorage;
      v22 = v32;
    }
  }

  else
  {
    v24 = 0;
    v22 = v32;
  }

  sub_70128(v24);

  swift_getKeyPath();
  sub_73FC4();
  sub_73EA4();

  if (v37)
  {
    v25 = 0;
  }

  else
  {
    v25 = v36;
  }

  sub_70228(v25);

  swift_getKeyPath();
  sub_13B5E4();

  if (v36 == 1)
  {

LABEL_14:
    swift_getKeyPath();
    sub_73FC4();
    sub_73EA4();

    sub_70E8C(v36);

    goto LABEL_15;
  }

  v26 = sub_73E48();

  if (v26)
  {
    goto LABEL_14;
  }

LABEL_15:
  swift_getKeyPath();
  sub_73FC4();
  sub_73EA4();

  sub_7037C(v36 & 1);

  swift_retain_n();

  sub_70700(v22);

  swift_getKeyPath();
  sub_73FC4();
  sub_13B5E4();

  sub_70B7C(v8);

  *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17CarouselComponent_objectGraph) = v22;
}

uint64_t sub_6FD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for CarouselComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_6FDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for CarouselComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_6FE38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_6FE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_6FF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_6FF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_70000()
{
  sub_7080C();
  if (sub_70070())
  {
    v0 = sub_624D0();
  }

  else
  {
    v0 = 0;
  }

  sub_7FEBC(v0);
}

uint64_t sub_70070()
{
  swift_getKeyPath();
  sub_73D24();
  v3 = sub_73468(v1, v2);
  sub_101F0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_139874();
}

uint64_t sub_7015C(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;

  return sub_70000();
}

uint64_t sub_701A0()
{
  swift_getKeyPath();
  sub_73D24();
  v3 = sub_73468(v1, v2);
  sub_101F0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_139874();

  return *(v0 + 24);
}

uint64_t sub_70228(uint64_t result)
{
  if (*(v1 + 24) != result)
  {
    v2 = result;
    swift_getKeyPath();
    sub_73DF8();
    __chkstk_darwin(v3);
    sub_73D6C();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    sub_7311C(v5, sub_73CB8, v6, &OBJC_IVAR____TtC20StoreDynamicUIPlugin22CarouselComponentModel___observationRegistrar, &qword_19D4C0, type metadata accessor for CarouselComponentModel);
  }

  return result;
}

uint64_t sub_702F4()
{
  swift_getKeyPath();
  sub_73D24();
  v3 = sub_73468(v1, v2);
  sub_101F0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_139874();

  return *(v0 + 32);
}

uint64_t sub_7037C(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_73D6C();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    sub_7311C(v5, sub_73C58, v6, &OBJC_IVAR____TtC20StoreDynamicUIPlugin22CarouselComponentModel___observationRegistrar, &qword_19D4C0, type metadata accessor for CarouselComponentModel);
  }

  return result;
}

double sub_70454()
{
  swift_getKeyPath();
  sub_73D24();
  v3 = sub_73468(v1, v2);
  sub_101F0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_139874();

  return *(v0 + 40);
}

void sub_704E0(uint64_t a1@<X8>)
{
  *a1 = sub_70454();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t sub_7053C()
{
  sub_3007C();
  v9.origin.x = v4;
  v9.origin.y = v3;
  v9.size.width = v2;
  v9.size.height = v1;
  result = CGRectEqualToRect(*(v0 + 40), v9);
  if (result)
  {
    *(v0 + 40) = v4;
    *(v0 + 48) = v3;
    *(v0 + 56) = v2;
    *(v0 + 64) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v8[2] = v0;
    *&v8[3] = v4;
    *&v8[4] = v3;
    *&v8[5] = v2;
    *&v8[6] = v1;
    sub_7311C(v7, sub_73BF0, v8, &OBJC_IVAR____TtC20StoreDynamicUIPlugin22CarouselComponentModel___observationRegistrar, &qword_19D4C0, type metadata accessor for CarouselComponentModel);
  }

  return result;
}

uint64_t sub_70648()
{
  swift_getKeyPath();
  sub_73D24();
  v3 = sub_73468(v1, v2);
  sub_101F0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_139874();
}

uint64_t sub_70734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_getKeyPath();
  v14 = v4;
  v15 = a1;
  sub_73D3C();
  sub_7311C(v8, a3, &v13, v9, v10, v11);

  return a4(a1);
}

uint64_t sub_707D0(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = a2;
}

uint64_t sub_7080C()
{
  swift_getKeyPath();
  sub_73D24();
  v3 = sub_73468(v1, v2);
  sub_101F0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_139874();
}

uint64_t sub_70898()
{
  sub_3DE78();
  result = sub_7080C();
  *v0 = result;
  return result;
}

void sub_708EC(uint64_t a1)
{
  if (*(v1 + 80) == a1)
  {
  }

  else
  {
    swift_getKeyPath();
    sub_73DF8();
    __chkstk_darwin(v3);
    sub_73D6C();
    *(v4 - 16) = v1;
    *(v4 - 8) = a1;
    sub_7311C(v5, sub_73B84, v6, &OBJC_IVAR____TtC20StoreDynamicUIPlugin22CarouselComponentModel___observationRegistrar, &qword_19D4C0, type metadata accessor for CarouselComponentModel);

    sub_73F98();
  }
}

uint64_t sub_709E4(uint64_t a1, uint64_t a2)
{
  *(a1 + 80) = a2;
}

uint64_t sub_70A20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  sub_73D24();
  v6 = sub_73468(v4, v5);
  sub_101F0(v6, v7, v8, v9, v10, v11, v12, v13, v16, v1);
  sub_139874();

  v14 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22CarouselComponentModel__transitionButton;
  sub_73FA4();
  return sub_73AFC(v2 + v14, a1, &qword_19C9B8);
}

uint64_t sub_70AD0(uint64_t a1)
{
  v2 = sub_4948(&qword_19C9B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_73AFC(a1, &v6 - v3, &qword_19C9B8);
  return sub_70B7C(v4);
}

uint64_t sub_70B7C(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_7311C(KeyPath, sub_73A54, &v5, &OBJC_IVAR____TtC20StoreDynamicUIPlugin22CarouselComponentModel___observationRegistrar, &qword_19D4C0, type metadata accessor for CarouselComponentModel);

  return sub_184DC(a1, &qword_19C9B8);
}

void *sub_70C38()
{
  v5 = v0;
  sub_3007C();
  *(v0 + 72) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v6 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22CarouselComponentModel__transitionButton;
  v7 = type metadata accessor for Carousel.Button(0);
  sub_53A8(v5 + v6, 1, 1, v7);
  *(v5 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22CarouselComponentModel__manualSelection) = 0;
  *(v5 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22CarouselComponentModel__index) = 0;
  *(v5 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22CarouselComponentModel__defaultDisplayMode) = 0;
  *(v5 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22CarouselComponentModel__displayMode) = 0;
  *(v5 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22CarouselComponentModel__maxHeight) = 0x407F400000000000;
  *(v5 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22CarouselComponentModel__stackViewHeight) = 0x407F400000000000;
  v8 = [objc_opt_self() sharedApplication];
  v9 = [v8 preferredContentSizeCategory];

  LOBYTE(v8) = sub_13BE04();
  *(v5 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22CarouselComponentModel__isAXCategory) = v8 & 1;
  sub_1398A4();
  v5[5] = v4;
  v5[6] = v3;
  v5[7] = v2;
  v5[8] = v1;
  type metadata accessor for CarouselPaddleModel();
  swift_allocObject();
  v5[10] = sub_80740();
  return v5;
}

uint64_t sub_70DB8(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22CarouselComponentModel__index) != result)
  {
    v2 = result;
    swift_getKeyPath();
    sub_73DF8();
    __chkstk_darwin(v3);
    sub_73D6C();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    sub_7311C(v5, sub_739B0, v6, &OBJC_IVAR____TtC20StoreDynamicUIPlugin22CarouselComponentModel___observationRegistrar, &qword_19D4C0, type metadata accessor for CarouselComponentModel);
  }

  return result;
}

void sub_70E8C(char a1)
{
  v2 = a1 & 1;
  if (sub_6ED44(*(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22CarouselComponentModel__defaultDisplayMode)))
  {

    sub_713DC(v2);
  }

  else
  {
    swift_getKeyPath();
    sub_73EF4();
    __chkstk_darwin(v3);
    sub_73D6C();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    sub_7311C(v5, sub_7392C, v6, &OBJC_IVAR____TtC20StoreDynamicUIPlugin22CarouselComponentModel___observationRegistrar, &qword_19D4C0, type metadata accessor for CarouselComponentModel);

    sub_73F98();
  }
}

void sub_70F94(char a1)
{
  v2 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22CarouselComponentModel__displayMode;
  v3 = a1 & 1;
  if (sub_6ED44(*(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22CarouselComponentModel__displayMode)))
  {
    *(v1 + v2) = v3;

    sub_71428();
  }

  else
  {
    swift_getKeyPath();
    sub_73EF4();
    __chkstk_darwin(v4);
    sub_73D6C();
    *(v5 - 16) = v1;
    *(v5 - 8) = v3;
    sub_7311C(v6, sub_736C0, v7, &OBJC_IVAR____TtC20StoreDynamicUIPlugin22CarouselComponentModel___observationRegistrar, &qword_19D4C0, type metadata accessor for CarouselComponentModel);

    sub_73F98();
  }
}

void *sub_710EC(void *result, double a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *result) == a2)
  {
    *(v4 + *result) = a2;
  }

  else
  {
    swift_getKeyPath();
    sub_73DF8();
    __chkstk_darwin(v7);
    sub_73D6C();
    *(v8 - 16) = v4;
    *(v8 - 8) = a2;
    sub_73D3C();
    sub_7311C(v9, a4, v10, v11, v12, v13);
  }

  return result;
}

uint64_t sub_711D8(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result & 1;
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = v5;
  }

  else
  {
    swift_getKeyPath();
    sub_73EF4();
    __chkstk_darwin(v7);
    sub_73D6C();
    *(v8 - 16) = v4;
    *(v8 - 8) = v5;
    sub_73D3C();
    sub_7311C(v9, a4, v10, v11, v12, v13);
  }

  return result;
}

uint64_t sub_712A8()
{
  swift_getKeyPath();
  sub_73D24();
  v3 = sub_73468(v1, v2);
  sub_101F0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_139874();

  return *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22CarouselComponentModel__index);
}

uint64_t sub_7133C(uint64_t a1)
{
  sub_71994();
  sub_73DE8();
  v3 = (*(v2 + 192))();

  if (v3 < 2 || (result = sub_71294(), (result & 1) != 0))
  {
    sub_70DB8(a1);

    return sub_70D90(0);
  }

  return result;
}

void sub_713DC(char a1)
{
  *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22CarouselComponentModel__defaultDisplayMode) = a1 & 1;
  v2 = sub_71414();

  sub_70F94(v2);
}

uint64_t sub_71428()
{
  v0 = sub_13B6E4();
  v24 = *(v0 - 8);
  v1 = *(v24 + 64);
  __chkstk_darwin(v0);
  v2 = &v25[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v25[-1] - v4;
  v6 = type metadata accessor for Carousel.Button(0);
  __chkstk_darwin(v6);
  v8 = &v25[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_4948(&qword_19C9B8);
  __chkstk_darwin(v9 - 8);
  v11 = &v25[-1] - v10;
  v12 = sub_4948(&qword_19A350);
  __chkstk_darwin(v12 - 8);
  v14 = &v25[-1] - v13;
  result = sub_70648();
  if (result)
  {
    sub_70A20(v11);
    if (sub_52E0(v11, 1, v6))
    {

      v16 = &qword_19C9B8;
      v17 = v11;
    }

    else
    {
      sub_73700(v11, v8, type metadata accessor for Carousel.Button);
      sub_184DC(v11, &qword_19C9B8);
      sub_73AFC(&v8[*(v6 + 20)], v14, &qword_19A350);
      sub_7375C(v8, type metadata accessor for Carousel.Button);
      v18 = sub_13B7A4();
      if (sub_52E0(v14, 1, v18) != 1)
      {
        sub_13B794();
        (*(*(v18 - 8) + 8))(v14, v18);
        sub_13B6B4();
        sub_13B9A4();
        sub_13B6C4();
        sub_162F0(v25, v26);
        sub_13B7D4();

        sub_3C04(v25);
        v19 = v24;
        (*(v24 + 16))(v2, v5, v0);
        v20 = (*(v19 + 80) + 16) & ~*(v19 + 80);
        v21 = swift_allocObject();
        (*(v19 + 32))(v21 + v20, v2, v0);
        v22 = sub_7389C();
        v23 = sub_13BD84();
        v26 = v22;
        v27 = &protocol witness table for OS_dispatch_queue;
        v25[0] = v23;
        sub_13B9D4();

        (*(v19 + 8))(v5, v0);
        return sub_3C04(v25);
      }

      v16 = &qword_19A350;
      v17 = v14;
    }

    return sub_184DC(v17, v16);
  }

  return result;
}

uint64_t sub_7187C()
{
  sub_13B6D4();
  sub_162F0(v1, v1[3]);
  sub_13B804();
  return sub_3C04(v1);
}

uint64_t sub_71914(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_73D24();
  sub_73468(v4, v5);
  sub_73EC4();

  return *(v2 + *a2);
}

uint64_t sub_71994()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_70070();
  if (v4)
  {
    v5 = sub_624D0(v4);

    if (v5 >= 3)
    {
      sub_7080C();
      sub_7FF44();
    }
  }

  v25.origin.x = sub_70454();
  CGRectGetWidth(v25);
  sub_139D84();
  swift_allocObject();
  v6 = sub_139D74();
  sub_7080C();
  v7 = sub_7FF44();

  if (v7 >= 2)
  {
    sub_7080C();
    sub_7FF44();

    sub_73E98();
    sub_73F2C();
    v8();
    (*(*v6 + 272))(0x4028000000000000, 0);
    (*(*v6 + 320))(0, 0);
    v9 = *(*v6 + 296);
    v10 = 0x4044000000000000;
    v11 = 0;
LABEL_6:
    v9(v10, v11);
    return v6;
  }

  sub_73E98();
  v13 = *(v12 + 192);
  if (!v13() || (v14 = (v13)(), v14 == 2))
  {
    sub_73E98();
    sub_73F2C();
    v14 = v15();
  }

  v16 = (v13)(v14);
  if (!v16)
  {
    sub_73E98();
    sub_73F2C();
    v16 = v17();
  }

  if ((v13)(v16) == 1 || (v18 = (v13)(), v18 == 2))
  {
    sub_73E98();
    sub_73F2C();
    v18 = v19();
  }

  if ((v13)(v18) == 1)
  {
    sub_73E98();
    (*(v20 + 152))(0);
    sub_73E98();
    (*(v21 + 320))(0x4056800000000000, 0);
  }

  if (_UISolariumEnabled())
  {
    (*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0);
    v22 = sub_139A24();
    (*(v1 + 8))(v3, v0);
    if (v22)
    {
      v26.origin.x = sub_70454();
      CGRectGetWidth(v26);
      sub_B84DC();
      sub_73F2C();
      goto LABEL_6;
    }
  }

  return v6;
}

double sub_71E78(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_73D24();
  sub_73468(v4, v5);
  sub_73EC4();

  return *(v2 + *a2);
}

double sub_71EF8()
{
  if ((sub_720A0() & 1) == 0 || (sub_702F4() & 1) == 0)
  {
    return sub_71E50() + 30.0;
  }

  return sub_71E64();
}

void *sub_71F40(double a1)
{
  if (sub_720A0() & 1) != 0 && (sub_702F4())
  {

    return sub_710C4(a1);
  }

  else
  {
    if (sub_71E50() >= a1 && sub_71E50() != 500.0)
    {
      a1 = sub_71E50();
    }

    return sub_7109C(a1);
  }
}

double sub_71FCC()
{
  v0 = sub_72104();
  sub_71994();
  sub_73DE8();
  v2 = (*(v1 + 376))();

  if (v0)
  {
    sub_71994();
    sub_73DE8();
    v4 = (*(v3 + 360))();

    return v2 + v4 * -0.08 * 0.5 + 2.0;
  }

  return v2;
}

uint64_t sub_720B4(char a1)
{
  v1 = a1 & 1;
  if ((sub_720A0() & 1) != v1)
  {
    sub_7109C(500.0);
  }

  return sub_711B0(v1);
}

BOOL sub_72104()
{
  sub_71994();
  sub_73DE8();
  v1 = (*(v0 + 192))();

  if (v1 > 1)
  {
    return 0;
  }

  sub_7080C();
  v2 = sub_7FF44();

  return v2 < 2;
}

double sub_72190()
{
  v0 = sub_72274();
  result = 0.0;
  if (v0 >= 2)
  {
    if (sub_71900())
    {
    }

    else
    {
      v2 = sub_73E48();

      if ((v2 & 1) == 0)
      {
        return 35.0;
      }
    }

    sub_71994();
    sub_73DE8();
    v4 = (*(v3 + 192))();

    if (v4 < 2)
    {
      return 35.0;
    }

    if (qword_199F68 != -1)
    {
      swift_once();
    }

    return *&qword_1B2A38 + 15.0;
  }

  return result;
}

uint64_t sub_72274()
{
  result = sub_70070();
  if (result)
  {
    v1 = sub_624D0();

    return v1;
  }

  return result;
}

uint64_t sub_722B0(uint64_t a1)
{
  result = sub_712A8();
  if (result != a1)
  {
    sub_70D90(1);

    return sub_7133C(a1);
  }

  return result;
}

uint64_t sub_72304()
{
  sub_139A34();
  sub_101A8();
  __chkstk_darwin(v1);
  sub_10190();
  result = _UISolariumEnabled();
  if (!result || (v3 = sub_101C0(), v4(v3), sub_139A24(), v5 = sub_101D0(), result = v6(v5), v7 = 26.0, (v0 & 1) == 0))
  {
    v7 = 12.0;
  }

  qword_1B2A10 = *&v7;
  return result;
}

uint64_t sub_723D4()
{
  sub_139A34();
  sub_101A8();
  __chkstk_darwin(v1);
  sub_10190();
  if (_UISolariumEnabled() && (v2 = sub_101C0(), v3(v2), sub_139A24(), v4 = sub_101D0(), v5(v4), (v0 & 1) != 0))
  {
    v6 = &selRef_ams_quaternarySystemFillColor;
  }

  else
  {
    v6 = &selRef_ams_primaryBackground;
  }

  v7 = [objc_opt_self() *v6];
  result = sub_13B1E4();
  qword_1B2A18 = result;
  return result;
}

uint64_t sub_724D0()
{
  sub_139A34();
  sub_101A8();
  __chkstk_darwin(v0);
  sub_10190();
  sub_13B194();
  v1 = sub_13B1B4();

  qword_1B2A20 = v1;
  if (!_UISolariumEnabled() || (v2 = sub_73D7C(), v3(v2), v4 = sub_139A24(), v5 = sub_101E4(), v6(v5), v7 = 0.0, (v4 & 1) == 0))
  {
    v7 = 16.0;
  }

  qword_1B2A28 = *&v7;
  qword_1B2A30 = 0;
  result = _UISolariumEnabled();
  if (!result || (v9 = sub_73D7C(), v10(v9), v11 = sub_139A24(), v12 = sub_101E4(), result = v13(v12), v14 = 0.0, (v11 & 1) == 0))
  {
    v14 = 8.0;
  }

  qword_1B2A38 = *&v14;
  return result;
}

uint64_t sub_72624()
{
  sub_139A34();
  sub_101A8();
  __chkstk_darwin(v0);
  sub_10190();
  sub_13B194();
  v1 = sub_13B1B4();

  qword_1B2A40 = v1;
  if (!_UISolariumEnabled() || (v2 = sub_73D7C(), v3(v2), v4 = sub_139A24(), v5 = sub_101E4(), v6(v5), v7 = 0.0, (v4 & 1) == 0))
  {
    v7 = 6.0;
  }

  qword_1B2A48 = *&v7;
  qword_1B2A50 = 0;
  result = _UISolariumEnabled();
  if (!result || (v9 = sub_73D7C(), v10(v9), v11 = sub_139A24(), v12 = sub_101E4(), result = v13(v12), v14 = 0.0, (v11 & 1) == 0))
  {
    v14 = 2.0;
  }

  qword_1B2A58 = *&v14;
  return result;
}

uint64_t sub_72778()
{
  sub_139A34();
  sub_101A8();
  __chkstk_darwin(v1);
  sub_10190();
  if (_UISolariumEnabled() && (v2 = sub_101C0(), v3(v2), sub_139A24(), v4 = sub_101D0(), v5(v4), (v0 & 1) != 0))
  {
    v6 = &selRef_ams_primarySystemFillColor;
  }

  else
  {
    v6 = &selRef_ams_secondarySystemFillColor;
  }

  v7 = [objc_opt_self() *v6];
  result = sub_13B1E4();
  qword_1B2A60 = result;
  return result;
}

uint64_t sub_72874()
{

  sub_184DC(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22CarouselComponentModel__transitionButton, &qword_19C9B8);
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22CarouselComponentModel___observationRegistrar;
  sub_1398B4();
  sub_5224();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

void sub_72940()
{
  sub_72A58();
  if (v0 <= 0x3F)
  {
    sub_1398B4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_72A58()
{
  if (!qword_19CA48)
  {
    type metadata accessor for Carousel.Button(255);
    v0 = sub_13BF44();
    if (!v1)
    {
      atomic_store(v0, &qword_19CA48);
    }
  }
}

uint64_t sub_72AB0()
{
  swift_getKeyPath();
  sub_73D54();
  v3 = sub_73468(v1, v2);
  sub_101F0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_139874();
}

void sub_72B68(uint64_t a1)
{
  if (*(v1 + 16) == a1)
  {
  }

  else
  {
    swift_getKeyPath();
    sub_73DF8();
    __chkstk_darwin(v3);
    sub_73D6C();
    *(v4 - 16) = v1;
    *(v4 - 8) = a1;
    sub_7311C(v5, sub_3DE24, v6, &OBJC_IVAR____TtC20StoreDynamicUIPlugin17CarouselCellModel___observationRegistrar, &qword_19D4B8, type metadata accessor for CarouselCellModel);

    sub_73F98();
  }
}

uint64_t sub_72C60@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  sub_73D54();
  v6 = sub_73468(v4, v5);
  sub_101F0(v6, v7, v8, v9, v10, v11, v12, v13, v16, v1);
  sub_139874();

  v14 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17CarouselCellModel__cell;
  sub_73FA4();
  return sub_73700(v2 + v14, a1, type metadata accessor for CarouselCell);
}

uint64_t sub_72D14(uint64_t a1)
{
  v2 = type metadata accessor for CarouselCell();
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_73700(a1, v4, type metadata accessor for CarouselCell);
  return sub_72DB4(v4);
}

uint64_t sub_72DB4(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v7 = v1;
  v8 = a1;
  sub_7311C(KeyPath, sub_734D8, &v6, &OBJC_IVAR____TtC20StoreDynamicUIPlugin17CarouselCellModel___observationRegistrar, &qword_19D4B8, type metadata accessor for CarouselCellModel);

  sub_73E24();
  return sub_7375C(a1, v4);
}

uint64_t sub_72E64(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t))
{
  v7 = *a3;
  swift_beginAccess();
  a4(a2, a1 + v7);
  return swift_endAccess();
}

uint64_t sub_72EDC()
{
  swift_getKeyPath();
  sub_73D54();
  v3 = sub_73468(v1, v2);
  sub_101F0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_139874();

  return swift_weakLoadStrong();
}

uint64_t sub_72F9C(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_7311C(KeyPath, sub_73440, &v5, &OBJC_IVAR____TtC20StoreDynamicUIPlugin17CarouselCellModel___observationRegistrar, &qword_19D4B8, type metadata accessor for CarouselCellModel);
}

uint64_t sub_73048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_weakInit();
  *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17CarouselCellModel__servicesArtwork) = &_swiftEmptyArrayStorage;
  sub_1398A4();
  *(v3 + 16) = a3;
  sub_73700(a1, v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17CarouselCellModel__cell, type metadata accessor for CarouselCell);

  sub_72F9C(v6);

  sub_7375C(a1, type metadata accessor for CarouselCell);
  return v3;
}

uint64_t sub_731AC()
{

  sub_73E24();
  sub_7375C(v0 + v1, v2);
  swift_weakDestroy();

  v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17CarouselCellModel___observationRegistrar;
  sub_1398B4();
  sub_5224();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_73254(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return _swift_deallocClassInstance(v1, v2, v3);
}

uint64_t sub_732D8()
{
  result = type metadata accessor for CarouselCell();
  if (v1 <= 0x3F)
  {
    result = sub_1398B4();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_73414()
{
  sub_3DE78();
  result = sub_72EDC();
  *v0 = result;
  return result;
}

uint64_t sub_73468(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_73510()
{
  sub_3DE78();
  result = sub_72AB0();
  *v0 = result;
  return result;
}

uint64_t sub_7353C()
{
  sub_3DE78();
  result = sub_720A0();
  *v0 = result & 1;
  return result;
}

double sub_735F4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC20StoreDynamicUIPlugin22CarouselComponentModel__stackViewHeight) = result;
  return result;
}

double sub_7365C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC20StoreDynamicUIPlugin22CarouselComponentModel__maxHeight) = result;
  return result;
}

uint64_t sub_73674()
{
  sub_3DE78();
  result = sub_71900();
  *v0 = result;
  return result;
}

uint64_t sub_73700(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_45BA8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_7375C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_5224();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_737B0()
{
  sub_13B6E4();
  sub_5224();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_7382C()
{
  sub_13B6E4();

  return sub_7187C();
}

unint64_t sub_7389C()
{
  result = qword_19EBA0;
  if (!qword_19EBA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_19EBA0);
  }

  return result;
}

uint64_t sub_738E0()
{
  sub_3DE78();
  result = sub_71414();
  *v0 = result;
  return result;
}

uint64_t sub_73960()
{
  sub_3DE78();
  result = sub_712A8();
  *v0 = result;
  return result;
}

uint64_t sub_739C4()
{
  sub_3DE78();
  result = sub_71294();
  *v0 = result & 1;
  return result;
}

uint64_t sub_73A8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19C9B8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_73AFC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_4948(a3);
  sub_45BA8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_73B58()
{
  sub_3DE78();
  result = sub_7080C();
  *v0 = result;
  return result;
}

uint64_t sub_73BA0()
{
  sub_3DE78();
  result = sub_70648();
  *v0 = result;
  return result;
}

__n128 sub_73BF0()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 40) = result;
  *(v1 + 56) = v3;
  return result;
}

uint64_t sub_73C08()
{
  sub_3DE78();
  result = sub_702F4();
  *v0 = result & 1;
  return result;
}

uint64_t sub_73C68()
{
  sub_3DE78();
  result = sub_701A0();
  *v0 = result;
  return result;
}

uint64_t sub_73CC4()
{
  sub_3DE78();
  result = sub_70070();
  *v0 = result;
  return result;
}

uint64_t sub_73DA8()
{

  return sub_13C144();
}

uint64_t sub_73E08()
{

  return sub_13C144();
}

uint64_t sub_73E48()
{

  return sub_13C144();
}

uint64_t sub_73EA4()
{

  return sub_13B5E4();
}

uint64_t sub_73EC4()
{

  return sub_139874();
}

uint64_t sub_73FA4()
{

  return swift_beginAccess();
}

uint64_t sub_73FC4()
{
}

id sub_73FDC()
{
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17CarouselComponent_objectGraph) = 0;
  type metadata accessor for CarouselComponentModel(0);
  swift_allocObject();
  sub_3001C();
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17CarouselComponent_model) = sub_70C38();
  v6 = type metadata accessor for CarouselComponent();
  v1 = sub_3001C();
  v4 = objc_msgSendSuper2(v2, v3, v1, v0, v6);
  sub_740B4();

  return v4;
}

void sub_740B4()
{
  v1 = v0;
  v2 = type metadata accessor for CarouselComponentView(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = (v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17CarouselComponent_model);
  *(v5 + *(v3 + 28)) = swift_getKeyPath();
  sub_4948(&qword_19AC60);
  swift_storeEnumTagMultiPayload();
  v42[1] = v6;
  type metadata accessor for CarouselComponentModel(0);

  sub_13B224();
  v7 = v42[3];
  *v5 = v42[2];
  v5[1] = v7;
  v8 = objc_allocWithZone(sub_4948(&qword_19D500));
  v9 = sub_13AC14();
  v10 = sub_57354();
  v11 = v9;
  v12 = [v11 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v12;
  [v10 addSubview:v12];

  v14 = sub_750A4();
  if (!v14)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = sub_750A4();
  if (!v16)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = v16;
  v18 = [v16 topAnchor];

  v19 = sub_57354();
  v20 = [v19 topAnchor];

  v21 = sub_3F140();
  sub_75088();

  v22 = sub_750A4();
  if (!v22)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v23 = v22;
  v24 = [v22 bottomAnchor];

  v25 = sub_57354();
  v26 = [v25 bottomAnchor];

  v27 = sub_3F140();
  sub_75088();

  v28 = sub_750A4();
  if (!v28)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v29 = v28;
  v30 = [v28 leftAnchor];

  v31 = sub_57354();
  v32 = [v31 leftAnchor];

  v33 = sub_3F140();
  sub_75088();

  v34 = sub_750A4();
  if (!v34)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v35 = v34;
  v36 = [v34 rightAnchor];

  v37 = sub_57354();
  v38 = [v37 rightAnchor];

  v39 = sub_3F140();
  sub_75088();

  v40 = sub_750A4();
  if (v40)
  {
    v41 = [objc_opt_self() clearColor];
    [v40 setBackgroundColor:v41];

    sub_74600();
    return;
  }

LABEL_15:
  __break(1u);
}

double sub_744C8(double a1)
{

  sub_71EF8();

  v2 = sub_71900();

  if ((v2 & 1) == 0)
  {
    sub_13C144();
  }

  return a1;
}

uint64_t sub_74664@<X0>(uint64_t *a1@<X8>)
{

  v2 = sub_712A8();

  *a1 = v2;
  return result;
}

uint64_t (*sub_746B4(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_74F9C;
}

uint64_t sub_74718(void *a1)
{
  v2 = sub_13B4A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_13B4E4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7389C();
  v10 = sub_13BD84();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  aBlock[4] = sub_74FA4;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_E2448;
  aBlock[3] = &unk_1885C8;
  v12 = _Block_copy(aBlock);
  v13 = a1;
  sub_13B4C4();
  v15[1] = &_swiftEmptyArrayStorage;
  sub_CB68();
  sub_4948(&unk_19EBB0);
  sub_74FC4();
  sub_13BF64();
  sub_13BD94();
  _Block_release(v12);

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

uint64_t sub_74998(uint64_t a1)
{
  v2 = sub_139E74();
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_13B834();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CarouselCell();
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = sub_70070();

  if (v12)
  {

    v14 = sub_712A8();

    sub_127E58(v14, (v12 & 0xC000000000000001) == 0, v12);
    if ((v12 & 0xC000000000000001) != 0)
    {
      sub_13C004();
    }

    else
    {
    }

    sub_72C60(v11);
    sub_64264(&v11[*(v9 + 72)], &v19);
    sub_75028(v11, type metadata accessor for CarouselCell);
    if (*(&v20 + 1))
    {
      sub_9414(&v19, v22);
      v15 = *(a1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17CarouselComponent_objectGraph);
      if (v15)
      {
        sub_139E84();
        sub_13B6B4();

        sub_13B9A4();
        v16 = v19;
        sub_13B9A4();
        (*(v6 + 16))(v4, v8, v5);
        v17 = sub_4948(&unk_19B7E0);
        sub_53A8(v4, 0, 1, v17);
        v19 = 0u;
        v20 = 0u;
        v21 = -1;
        (*(*v16 + 216))(v22, v4, v15, &v19);

        sub_184DC(&v19, &unk_19E330);
        sub_75028(v4, &type metadata accessor for ResultingActionDispatcher.MetricsBehavior);
        (*(v6 + 8))(v8, v5);
        v13 = sub_3C04(v22);
      }

      else
      {
        sub_3C04(v22);
      }
    }

    else
    {

      v13 = sub_184DC(&v19, &unk_19E320);
    }
  }

  return sub_74600(v13);
}

id sub_74DA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselComponent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_74E4C(void *a1)
{
  v2 = objc_opt_self();
  [objc_msgSend(a1 "container")];
  v4 = v3;
  swift_unknownObjectRelease();
  v5 = [v2 absoluteDimension:v4];
  v6 = [v2 estimatedDimension:200.0];
  v7 = [objc_opt_self() sizeWithWidthDimension:v5 heightDimension:v6];

  return v7;
}

uint64_t sub_74F64()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_74FAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_74FC4()
{
  result = qword_19E070;
  if (!qword_19E070)
  {
    sub_558C(&unk_19EBB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E070);
  }

  return result;
}

uint64_t sub_75028(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_5224();
  (*(v3 + 8))(a1);
  return a1;
}

id sub_75088()
{
  v3 = *(v1 + 32);

  return [v0 v3];
}

id sub_750A4()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

uint64_t sub_750BC()
{
  sub_13ABC4();
  sub_9E94();
  v1 = v0;
  __chkstk_darwin(v2);
  sub_9EC0();
  v3 = *(v1 + 104);
  v4 = sub_7FD44();
  v3(v4);
  sub_7FCD4();
  v5 = sub_13ABB4();
  v6 = *(v1 + 8);
  v7 = sub_7FCE0();
  v6(v7);
  if (v5 & 1) != 0 || (v8 = sub_7FD44(), v3(v8), sub_7FCD4(), v9 = sub_13ABB4(), v10 = sub_7FCE0(), v6(v10), (v9) || (v11 = sub_7FD44(), v3(v11), sub_7FCD4(), v12 = sub_13ABB4(), v13 = sub_7FCE0(), v6(v13), (v12) || (v14 = sub_7FD44(), v3(v14), sub_7FCD4(), v15 = sub_13ABB4(), v16 = sub_7FCE0(), v6(v16), (v15))
  {
    v17 = 1;
  }

  else
  {
    v19 = sub_7FD44();
    v3(v19);
    sub_7FCD4();
    v17 = sub_13ABB4();
    v20 = sub_7FCE0();
    v6(v20);
  }

  return v17 & 1;
}

void sub_75298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_A1FC();
  a19 = v22;
  a20 = v23;
  sub_7FD8C();
  v24 = sub_13AB24();
  sub_9E94();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_9EC0();
  v30 = v29 - v28;
  sub_4948(&qword_19AC60);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v31);
  v33 = &a9 - v32;
  v34 = type metadata accessor for CarouselComponentView(0);
  sub_458D8(v21 + *(v34 + 20), v33, &qword_19AC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13ABC4();
    sub_45BA8();
    (*(v35 + 32))(v20, v33);
  }

  else
  {
    sub_13BD54();
    v36 = sub_13AE64();
    sub_13A004();

    sub_13AB14();
    sub_7FCEC();
    swift_getAtKeyPath();

    (*(v26 + 8))(v30, v24);
  }

  sub_A214();
}

void sub_7545C()
{
  sub_A1FC();
  sub_7FD8C();
  v2 = sub_13ABC4();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  v9 = v1[1];
  v32[0] = *v1;
  v32[1] = v9;
  sub_4948(&qword_19D5D8);
  sub_13B234();
  v10 = sub_702F4();

  if (v10 & 1) != 0 && (sub_75298(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31), v19 = sub_750BC(), (*(v4 + 8))(v8, v2), (v19))
  {
    sub_7FDA4();
    type metadata accessor for CarouselComponentModel(0);
    sub_7FCF8();
    sub_13B224();
  }

  else
  {
    sub_7FDA4();
    type metadata accessor for CGRect(0);
    sub_13BB14();
    sub_7FCF8();
    sub_13B224();
    sub_7FCF8();
    sub_13B224();
    type metadata accessor for CarouselComponentModel(0);
    sub_7FCF8();
    sub_13B224();
    sub_7FCF8();
    sub_13B224();
  }

  sub_7D568();
  sub_7D5BC();
  sub_7FCF8();
  sub_13ACD4();
  memcpy(v0, v32, 0x41uLL);
  sub_A214();
}

uint64_t sub_756C4()
{
  sub_4948(&qword_19D5D8);
  sub_7FCC8();
  sub_13B234();
  v0 = sub_70070();

  if (!v0)
  {
    return 0;
  }

  v1 = sub_624D0(v0);

  return v1;
}

uint64_t sub_75740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *a3 = sub_7D7A4;
  a3[1] = v6;
}

uint64_t sub_757B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_13ABD4();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  sub_4948(&qword_19D600);
  sub_758D8(a2, a3, a1);
  v8 = sub_13B3C4();
  v10 = v9;
  v11 = (a4 + *(sub_4948(&qword_19D608) + 36));
  *v11 = sub_42104;
  v11[1] = 0;
  v11[2] = v8;
  v11[3] = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = (a4 + *(sub_4948(&qword_19D610) + 36));
  *v13 = sub_7D7AC;
  v13[1] = v12;
}

uint64_t sub_758D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_13A864();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  result = sub_756C4();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v12[0] = 0;
    v12[1] = result;
    swift_getKeyPath();
    (*(v7 + 16))(v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
    v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    (*(v7 + 32))(v11 + v10, v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

    sub_4948(&qword_19AC80);
    sub_4948(&qword_19D618);
    sub_16618();
    sub_7D8F0();
    return sub_13B314();
  }

  return result;
}

uint64_t sub_75AC0@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)()@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a4;
  v7 = type metadata accessor for CarouselCellView();
  __chkstk_darwin(v7);
  v9 = (&v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v56 = &v51 - v11;
  v52 = sub_4948(&qword_19D628);
  __chkstk_darwin(v52);
  v13 = &v51 - v12;
  v14 = sub_4948(&qword_19D648);
  v53 = *(v14 - 8);
  v54 = v14;
  __chkstk_darwin(v14);
  v51 = &v51 - v15;
  v16 = *a1;
  v57 = a2;
  v58 = a3;
  sub_4948(&qword_19D5D8);
  sub_13B234();
  v17 = sub_70070();

  if (v17)
  {
    sub_127E58(v16, (v17 & 0xC000000000000001) == 0, v17);
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = sub_13C004();
    }

    else
    {
      v18 = *(v17 + 8 * v16 + 32);
    }

    sub_13A844();
    v20 = v19;
    v57 = a2;
    v58 = a3;
    sub_13B234();
    v21 = sub_71994();

    v23 = (*(*v21 + 384))(v22);

    if (v20 - (v23 + v23) > 0.0)
    {
      v24 = v20 - (v23 + v23);
    }

    else
    {
      v24 = 0.0;
    }

    *v9 = swift_getKeyPath();
    sub_4948(&qword_19AC58);
    swift_storeEnumTagMultiPayload();
    v25 = v7[5];
    *(v9 + v25) = swift_getKeyPath();
    sub_4948(&qword_19AC60);
    swift_storeEnumTagMultiPayload();
    *(v9 + v7[11]) = 0;
    *(v9 + v7[12]) = 1;
    *(v9 + v7[6]) = v18;
    *(v9 + v7[8]) = v16;
    *(v9 + v7[7]) = v24;
    swift_retain_n();
    sub_72AB0();
    v26 = sub_72104();

    *(v9 + v7[9]) = v26;
    sub_72AB0();

    v27 = 0;
    if (sub_720A0())
    {
      v27 = sub_702F4();
    }

    *(v9 + v7[10]) = v27 & 1;
    v57 = a2;
    v58 = a3;
    sub_13B234();
    v28 = sub_712A8();

    v29 = v9;
    v30 = v56;
    sub_7DE4C(v29, v56, type metadata accessor for CarouselCellView);
    *(v30 + v7[11]) = v28 == v16;
    sub_4948(&qword_19AAA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_13E650;
    LOBYTE(v28) = sub_13AEE4();
    *(inited + 32) = v28;
    v32 = sub_13AF04();
    *(inited + 33) = v32;
    v33 = sub_13AEF4();
    sub_13AEF4();
    if (sub_13AEF4() != v28)
    {
      v33 = sub_13AEF4();
    }

    sub_13AEF4();
    if (sub_13AEF4() != v32)
    {
      v33 = sub_13AEF4();
    }

    v57 = a2;
    v58 = a3;
    sub_13B234();
    v34 = sub_71994();

    (*(*v34 + 384))(v35);

    sub_13A6E4();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    sub_7DE4C(v56, v13, type metadata accessor for CarouselCellView);
    v44 = &v13[*(v52 + 36)];
    *v44 = v33;
    *(v44 + 1) = v37;
    *(v44 + 2) = v39;
    *(v44 + 3) = v41;
    *(v44 + 4) = v43;
    v44[40] = 0;
    v45 = swift_allocObject();
    v45[2] = a2;
    v45[3] = a3;
    v45[4] = v16;
    v57 = sub_7DB38;
    v58 = v45;
    sub_7D9CC();
    sub_7DA88();

    v46 = v51;
    sub_13B124();

    sub_7F240(v13, &qword_19D628);
    v47 = v54;
    v48 = v55;
    (*(v53 + 32))(v55, v46, v54);
    v49 = 0;
  }

  else
  {
    v49 = 1;
    v47 = v54;
    v48 = v55;
  }

  return sub_53A8(v48, v49, 1, v47);
}

uint64_t sub_7613C()
{
  sub_13B404();
  sub_13A8E4();
}

uint64_t sub_761B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_4948(&qword_19D5D8);
  sub_13B234();
  sub_722B0(a3);
}

uint64_t sub_76228(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_4948(&qword_19D5D8);
  sub_13B234();
  sub_710C4(v1);
}

uint64_t sub_76298()
{
  v0 = sub_13ACF4();
  sub_7E5D8(v0, qword_19D508);
  sub_4910(v0, qword_19D508);
  return sub_13AD84();
}

uint64_t sub_76318()
{
  sub_4948(&qword_19D5D8);
  sub_7FCC8();
  sub_13B234();
  v0 = sub_71900();

  if (v0)
  {
  }

  else
  {
    sub_73E48();
    sub_7FD50();
    if ((v3 & 1) == 0)
    {
      return 1;
    }
  }

  sub_7FCC8();
  sub_13B234();
  v1 = sub_72274();

  return v1;
}

void sub_763D4(uint64_t a1)
{
  sub_4948(&qword_19D5D8);
  sub_7FCC8();
  sub_13B234();
  v2 = sub_71900();

  if (v2)
  {
  }

  else
  {
    sub_73E48();
    v3 = sub_7FD50();
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  sub_4948(&qword_19AAA8);
  sub_7FCC8();
  v3 = sub_13B234();
  if (v5)
  {
LABEL_8:
    (*(*a1 + 360))(v3);
    return;
  }

  sub_7FCC8();
  sub_13B234();
  v4 = sub_71414();

  if (v4)
  {

    goto LABEL_8;
  }

  sub_73E48();
  v3 = sub_7FD50();
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_9:
  (*(*a1 + 384))(v3);
}

void sub_76550(uint64_t a1@<X8>)
{
  *a1 = sub_13ABD4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_4948(&qword_19D650);
  sub_765EC(v1, a1 + *(v3 + 44));
  v4 = sub_13AED4();
  sub_13A6E4();
  sub_1D3D0();
  v5 = (a1 + *(sub_4948(&qword_19D658) + 36));
  *v5 = v4;
  sub_7FD14(v5);
}

double sub_765EC@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_4948(&qword_19D660);
  __chkstk_darwin(v4 - 8);
  v6 = (&v18 - v5);
  if (qword_199F90 != -1)
  {
    swift_once();
  }

  *v6 = xmmword_1B2A80;
  v7 = sub_4948(&qword_19D668);
  sub_768E0(a1, (v6 + *(v7 + 44)));
  v19 = a1[2];
  sub_4948(&qword_19D5D8);
  sub_13B234();
  v8 = sub_71994();

  v10 = (*(*v8 + 192))(v9);

  if (v10 >= 2)
  {
    v19 = a1[2];
    sub_13B234();
    v11 = sub_71900();

    if (v11)
    {
    }

    else
    {
      v12 = sub_13C144();

      if ((v12 & 1) == 0)
      {
        v19 = a1[2];
        sub_13B234();
        v16 = sub_71994();

        (*(*v16 + 384))(v17);
      }
    }
  }

  sub_13B3C4();
  sub_13A834();
  sub_44BE0(v6, a2, &qword_19D660);
  v13 = (a2 + *(sub_4948(&qword_19D670) + 36));
  v14 = v20;
  *v13 = v19;
  v13[1] = v14;
  result = *&v21;
  v13[2] = v21;
  return result;
}

uint64_t sub_768E0@<X0>(_OWORD *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v71 = a2;
  v68 = type metadata accessor for TransitionButton(0);
  __chkstk_darwin(v68);
  v4 = (v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = sub_4948(&qword_19D678);
  __chkstk_darwin(v66);
  v6 = v62 - v5;
  v70 = sub_4948(&qword_19D680);
  __chkstk_darwin(v70);
  v67 = v62 - v7;
  v8 = sub_4948(&qword_19D688);
  __chkstk_darwin(v8 - 8);
  v69 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v62 - v11;
  v13 = swift_allocObject();
  v14 = a1[1];
  *(v13 + 1) = *a1;
  *(v13 + 2) = v14;
  v15 = a1[2];
  v16 = a1[3];
  *(v13 + 3) = v15;
  *(v13 + 4) = v16;
  v92 = v15;
  v79 = v15;
  sub_7DB94(a1, &v86);
  sub_4948(&qword_19D5D8);
  sub_13B234();
  v17 = sub_72274();

  if (v17 >= 2)
  {
    v86 = v92;
    sub_13B234();
    v18 = sub_71900();

    if (v18)
    {
    }

    else
    {
      v20 = sub_13C144();

      if ((v20 & 1) == 0)
      {
        v86 = v92;
        sub_13B234();
        v49 = v79;
        v79 = a1[3];
        sub_4948(&qword_19AAA8);
        sub_13B254();
        v51 = *(&v86 + 1);
        v50 = v86;
        v52 = v87;
        *v4 = swift_getKeyPath();
        sub_4948(&qword_19D698);
        swift_storeEnumTagMultiPayload();
        v53 = v68;
        *(v4 + *(v68 + 20)) = v49;
        v54 = v4 + *(v53 + 24);
        *v54 = __PAIR128__(v51, v50);
        v54[16] = v52;
        sub_7F294(v4, v6, type metadata accessor for TransitionButton);
        swift_storeEnumTagMultiPayload();
        sub_4948(&qword_19D6A0);
        sub_7DCAC(&qword_19D6A8, &qword_19D6A0, &unk_145158, sub_7DBF4);
        sub_7DD78(&qword_19D6D8, type metadata accessor for TransitionButton);
        v55 = v67;
        sub_13ACD4();
        sub_7E810(v4, type metadata accessor for TransitionButton);
LABEL_17:
        sub_44BE0(v55, v12, &qword_19D680);
        v19 = 0;
        goto LABEL_18;
      }
    }

    v86 = v92;
    sub_13B234();
    sub_7080C();
    v21 = sub_7FF44();

    if (v21 < 2)
    {
      v86 = v92;
      sub_13B234();
      v37 = sub_71994();

      v39 = (*(*v37 + 192))(v38);

      if (v39 > 1)
      {
        v56 = 0;
        v45 = 0uLL;
        v57 = -1;
        v46 = 0uLL;
        v47 = 0uLL;
        v48 = 0uLL;
        goto LABEL_16;
      }

      v79 = v92;
      sub_13B254();
      v40 = v86;
      v41 = v87;
      swift_getKeyPath();
      v86 = v40;
      *&v87 = v41;
      sub_4948(&qword_19D6E0);
      sub_13B2E4();

      v65 = v79;
      v64 = v80;

      v77 = v92;
      sub_13B234();
      v42 = sub_72274();

      v77 = v92;
      sub_13B234();
      v43 = v74;
      v74 = v42;
      sub_13B224();
      v44 = v77;
      LOBYTE(v77) = 1;
      v79 = v65;
      v80 = v64;
      v81 = v44;
      v83 = xmmword_144D20;
      v82 = v43;
      v84 = 0x4046000000000000;
      v85 = 1;
      sub_4948(&qword_19D6C8);
      sub_7DCAC(&qword_19D6C0, &qword_19D6C8, &unk_145168, sub_7DD24);
      sub_7DD24();
      sub_13ACD4();
      v45 = v86;
      v46 = v87;
      v47 = v88;
      v48 = v89;
    }

    else
    {
      v86 = v92;
      sub_13B234();
      sub_7080C();

      v22 = sub_802C4();

      if (v22 < 2)
      {
        v33 = 0;
        v31 = 0;
        v32 = 0;
        v30 = 0;
        v36 = 0;
        v34 = 0uLL;
        v35 = 0uLL;
      }

      else
      {
        v79 = v92;
        sub_13B254();
        v23 = *(&v86 + 1);
        v64 = *(&v86 + 1);
        v24 = v86;
        *&v65 = v86;
        v25 = v87;
        swift_getKeyPath();
        v86 = __PAIR128__(v23, v24);
        *&v87 = v25;
        sub_4948(&qword_19D6E0);
        sub_13B2E4();

        v26 = *(&v79 + 1);
        v27 = v79;
        v62[1] = v79;
        v28 = v80;

        swift_getKeyPath();
        v77 = __PAIR128__(v26, v27);
        v78 = v28;
        sub_4948(&qword_19D6E8);
        sub_13B2E4();

        v64 = v75;
        *&v65 = v74;
        v63 = v76;

        v73 = v92;
        sub_13B234();
        sub_7080C();

        v29 = sub_802C4();

        v73 = v92;
        sub_13B234();
        v30 = v72;
        v72 = v29;
        sub_13B224();
        v32 = v63;
        v31 = v64;
        v33 = v65;
        v34 = v73;
        v35 = xmmword_144D20;
        v36 = 0x4046000000000000;
      }

      LOBYTE(v77) = 0;
      *&v79 = v33;
      *(&v79 + 1) = v31;
      v80 = v32;
      v81 = v34;
      v83 = v35;
      v82 = v30;
      v84 = v36;
      v85 = 0;
      sub_4948(&qword_19D6C8);
      sub_7DCAC(&qword_19D6C0, &qword_19D6C8, &unk_145168, sub_7DD24);
      sub_7DD24();
      sub_13ACD4();
      v45 = v86;
      v46 = v87;
      v47 = v88;
      v48 = v89;
    }

    v56 = v90;
    v57 = v91;
LABEL_16:
    *v6 = v45;
    *(v6 + 1) = v46;
    *(v6 + 2) = v47;
    *(v6 + 3) = v48;
    *(v6 + 8) = v56;
    v6[72] = v57;
    swift_storeEnumTagMultiPayload();
    sub_4948(&qword_19D6A0);
    sub_7DCAC(&qword_19D6A8, &qword_19D6A0, &unk_145158, sub_7DBF4);
    sub_7DD78(&qword_19D6D8, type metadata accessor for TransitionButton);
    v55 = v67;
    sub_13ACD4();
    goto LABEL_17;
  }

  v19 = 1;
LABEL_18:
  sub_53A8(v12, v19, 1, v70);
  v58 = v69;
  sub_458D8(v12, v69, &qword_19D688);
  v59 = v71;
  *v71 = sub_7DB8C;
  v59[1] = v13;
  v60 = sub_4948(&qword_19D690);
  sub_458D8(v58, v59 + *(v60 + 48), &qword_19D688);

  sub_7F240(v12, &qword_19D688);
  sub_7F240(v58, &qword_19D688);
}

uint64_t sub_773E8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_13B3D4();
  a3[1] = v6;
  v7 = sub_4948(&qword_19D6F0);
  sub_774B4(a2, a1, a3 + *(v7 + 44));
  v8 = swift_allocObject();
  v9 = a2[1];
  *(v8 + 1) = *a2;
  *(v8 + 2) = v9;
  v10 = a2[3];
  *(v8 + 3) = a2[2];
  *(v8 + 4) = v10;
  v11 = (a3 + *(sub_4948(&qword_19D6F8) + 36));
  *v11 = sub_7DE24;
  v11[1] = v8;
  return sub_7DB94(a2, &v13);
}

uint64_t sub_774B4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v52 = a3;
  v4 = sub_4948(&qword_19D700);
  __chkstk_darwin(v4 - 8);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (&v47 - v7);
  v9 = type metadata accessor for CarouselPaddle();
  v10 = (v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_4948(&qword_19D708);
  __chkstk_darwin(v47);
  v49 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  __chkstk_darwin(v17);
  v48 = &v47 - v18;
  v57 = a1[1];
  sub_4948(&qword_19AAA8);
  sub_13B254();
  v19 = v55;
  v20 = v56;
  v55 = a1[2];
  v50 = a1;
  v57 = a1[2];
  sub_4948(&qword_19D5D8);
  sub_13B234();
  v21 = sub_7080C();

  *v12 = swift_getKeyPath();
  sub_4948(&qword_19AC58);
  swift_storeEnumTagMultiPayload();
  v22 = v12 + v10[7];
  *v22 = v19;
  v22[16] = v20;
  *(v12 + v10[8]) = 0;
  v23 = (v12 + v10[9]);
  v54 = v21;
  type metadata accessor for CarouselPaddleModel();
  sub_13B224();
  v24 = *(&v57 + 1);
  *v23 = v57;
  v23[1] = v24;
  v25 = v12 + v10[10];
  LOBYTE(v54) = 0;
  sub_13B224();
  v26 = *(&v57 + 1);
  *v25 = v57;
  *(v25 + 1) = v26;
  LOBYTE(v23) = sub_13AED4();
  v27 = sub_13AEF4();
  sub_13AEF4();
  if (sub_13AEF4() != v23)
  {
    v27 = sub_13AEF4();
  }

  v57 = v55;
  sub_13B234();
  v28 = sub_72274();

  if (v28 <= 1)
  {
    v57 = v55;
    sub_13B234();
    if ((sub_720A0() & 1) == 0)
    {
      goto LABEL_8;
    }

    v29 = sub_702F4();

    if ((v29 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v57 = v55;
  sub_13B234();
  sub_72190();
LABEL_8:

LABEL_9:
  sub_13A6E4();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_7DE4C(v12, v16, type metadata accessor for CarouselPaddle);
  v38 = v48;
  v39 = &v16[*(v47 + 36)];
  *v39 = v27;
  *(v39 + 1) = v31;
  *(v39 + 2) = v33;
  *(v39 + 3) = v35;
  *(v39 + 4) = v37;
  v39[40] = 0;
  sub_44BE0(v16, v38, &qword_19D708);
  *v8 = sub_13B3E4();
  v8[1] = v40;
  v41 = sub_4948(&qword_19D710);
  sub_779D0(v50, v51, v8 + *(v41 + 44));
  v42 = v49;
  sub_458D8(v38, v49, &qword_19D708);
  v43 = v53;
  sub_458D8(v8, v53, &qword_19D700);
  v44 = v52;
  sub_458D8(v42, v52, &qword_19D708);
  v45 = sub_4948(&qword_19D718);
  sub_458D8(v43, v44 + *(v45 + 48), &qword_19D700);
  sub_7F240(v8, &qword_19D700);
  sub_7F240(v38, &qword_19D708);
  sub_7F240(v43, &qword_19D700);
  return sub_7F240(v42, &qword_19D708);
}

uint64_t sub_779D0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v116 = a2;
  v141 = a3;
  v127 = sub_13ADB4();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_4948(&qword_19D720);
  v119 = *(v121 - 8);
  __chkstk_darwin(v121);
  v117 = &v115 - v5;
  v122 = sub_4948(&qword_19D728);
  v120 = *(v122 - 8);
  __chkstk_darwin(v122);
  v118 = &v115 - v6;
  *&v143 = sub_4948(&qword_19D730);
  __chkstk_darwin(v143);
  *&v123 = &v115 - v7;
  v144 = sub_4948(&qword_19D738);
  v124 = *(v144 - 8);
  __chkstk_darwin(v144);
  v142 = &v115 - v8;
  v131 = sub_4948(&qword_19D740);
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v145 = &v115 - v9;
  v133 = sub_4948(&qword_19D748);
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v129 = &v115 - v10;
  v128 = sub_4948(&qword_19D750);
  __chkstk_darwin(v128);
  v137 = &v115 - v11;
  v136 = sub_4948(&qword_19D758);
  __chkstk_darwin(v136);
  v140 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v135 = &v115 - v14;
  __chkstk_darwin(v15);
  v139 = &v115 - v16;
  v17 = type metadata accessor for CarouselPaddle();
  v18 = (v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = sub_4948(&qword_19D708);
  __chkstk_darwin(v115);
  v138 = &v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v115 - v23;
  __chkstk_darwin(v25);
  v134 = &v115 - v26;
  v154 = a1[1];
  sub_4948(&qword_19AAA8);
  sub_13B254();
  v27 = v156;
  v28 = v157;
  v159 = a1[2];
  v156 = a1[2];
  sub_4948(&qword_19D5D8);
  sub_13B234();
  v29 = sub_7080C();

  *v20 = swift_getKeyPath();
  sub_4948(&qword_19AC58);
  swift_storeEnumTagMultiPayload();
  v30 = v20 + v18[7];
  *v30 = v27;
  v30[16] = v28;
  *(v20 + v18[8]) = 1;
  v31 = (v20 + v18[9]);
  *&v154 = v29;
  type metadata accessor for CarouselPaddleModel();
  sub_13B224();
  v32 = *(&v156 + 1);
  *v31 = v156;
  v31[1] = v32;
  v33 = v20 + v18[10];
  LOBYTE(v154) = 0;
  sub_13B224();
  v34 = *(&v156 + 1);
  *v33 = v156;
  *(v33 + 1) = v34;
  v35 = sub_13AED4();
  v36 = sub_13AEF4();
  sub_13AEF4();
  if (sub_13AEF4() != v35)
  {
    v36 = sub_13AEF4();
  }

  v156 = v159;
  sub_13B234();
  v37 = sub_72274();

  v38 = v134;
  if (v37 > 1)
  {
    goto LABEL_4;
  }

  v156 = v159;
  sub_13B234();
  if ((sub_720A0() & 1) == 0)
  {
    goto LABEL_8;
  }

  v39 = sub_702F4();

  if (v39)
  {
LABEL_4:
    v156 = v159;
    sub_13B234();
    sub_72190();
LABEL_8:
  }

  sub_13A6E4();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_7DE4C(v20, v24, type metadata accessor for CarouselPaddle);
  v48 = &v24[*(v115 + 36)];
  *v48 = v36;
  *(v48 + 1) = v41;
  *(v48 + 2) = v43;
  *(v48 + 3) = v45;
  *(v48 + 4) = v47;
  v48[40] = 0;
  sub_44BE0(v24, v38, &qword_19D708);
  v49 = sub_13AE74();
  __chkstk_darwin(v49);
  v50 = v116;
  *(&v115 - 2) = a1;
  *(&v115 - 1) = v50;
  sub_4948(&qword_19D760);
  v51 = sub_558C(&qword_19D768);
  v52 = sub_7DEAC();
  *&v156 = v51;
  *(&v156 + 1) = v52;
  swift_getOpaqueTypeConformance2();
  v53 = v117;
  sub_13A704();
  v156 = v159;
  sub_13B234();
  v54 = sub_71900();

  if (v54)
  {
    v55 = sub_13C144();

    if ((v55 & 1) == 0)
    {
      v156 = v159;
      sub_13B234();
      v56 = sub_72274();

      if (v56 != 1)
      {
        v156 = v159;
        sub_13B234();
        sub_7080C();
        sub_7FF44();
      }
    }
  }

  else
  {
  }

  sub_7FAA8(&qword_19D7A8, &qword_19D720);
  v57 = v118;
  v58 = v121;
  sub_13B084();
  (*(v119 + 8))(v53, v58);
  v59 = swift_allocObject();
  v60 = a1[1];
  *(v59 + 1) = *a1;
  *(v59 + 2) = v60;
  v61 = a1[3];
  *(v59 + 3) = a1[2];
  *(v59 + 4) = v61;
  v62 = v123;
  (*(v120 + 32))(v123, v57, v122);
  v63 = (v62 + *(v143 + 36));
  *v63 = sub_7E0E4;
  v63[1] = v59;
  v154 = *a1;
  sub_7DB94(a1, &v156);
  sub_4948(&qword_19D7B0);
  sub_13B234();
  v64 = v156;
  v156 = v159;
  sub_13B234();
  *&v156 = v64;
  *(&v156 + 1) = v154;
  v65 = sub_7E0EC();
  v66 = sub_7E214();
  sub_13B114();

  sub_7F240(v62, &qword_19D730);
  v67 = v125;
  sub_13ADA4();
  sub_4948(&qword_19D7D8);
  inited = swift_initStackObject();
  v123 = xmmword_13E650;
  *(inited + 16) = xmmword_13E650;
  LOBYTE(v62) = sub_13AE94();
  *(inited + 32) = v62;
  v69 = sub_13AE74();
  *(inited + 33) = v69;
  sub_13AE84();
  sub_13AE84();
  if (sub_13AE84() != v62)
  {
    sub_13AE84();
  }

  sub_13AE84();
  if (sub_13AE84() != v69)
  {
    sub_13AE84();
  }

  *&v156 = v143;
  *(&v156 + 1) = &type metadata for CarouselCellScrollTargetBehavior;
  v157 = v65;
  v158 = v66;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v71 = v144;
  v72 = v142;
  sub_13B0D4();
  (*(v126 + 8))(v67, v127);
  (*(v124 + 8))(v72, v71);
  v156 = v159;
  sub_13B234();
  sub_7080C();
  v73 = sub_7FF44();

  v154 = v159;
  sub_13B254();
  if (v73 < 2)
  {
    v79 = v156;
    v80 = v157;
    swift_getKeyPath();
    v154 = v79;
    v155 = v80;
    sub_4948(&qword_19D6E0);
    sub_13B2E4();

    v143 = v152;
    v81 = v153;

    v150 = v143;
    v151 = v81;
  }

  else
  {
    v74 = v156;
    v75 = v157;
    swift_getKeyPath();
    v154 = v74;
    v155 = v75;
    sub_4948(&qword_19D6E0);
    sub_13B2E4();

    v76 = v152;
    v77 = v153;

    swift_getKeyPath();
    v150 = v76;
    v151 = v77;
    sub_4948(&qword_19D6E8);
    sub_13B2E4();

    v143 = v148;
    v78 = v149;

    v146 = v143;
    v147 = v78;
  }

  sub_13B304();
  v154 = v159;
  sub_13B234();
  sub_7080C();
  v82 = sub_7FF44();

  if (v82 < 2)
  {
    sub_13B474();
  }

  else
  {
    sub_13B484();
  }

  *&v154 = v144;
  *(&v154 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v83 = v129;
  v84 = v131;
  v85 = v145;
  sub_13B094();

  (*(v130 + 8))(v85, v84);
  v86 = sub_13B3F4();
  v156 = v159;
  sub_13B234();
  v87 = sub_712A8();

  v88 = v137;
  (*(v132 + 32))(v137, v83, v133);
  v89 = (v88 + *(v128 + 36));
  *v89 = v86;
  v89[1] = v87;
  sub_4948(&qword_19AAA0);
  v90 = swift_allocObject();
  *(v90 + 16) = v123;
  v91 = sub_13AEE4();
  *(v90 + 32) = v91;
  v92 = sub_13AF04();
  *(v90 + 33) = v92;
  v93 = sub_13AEF4();
  sub_13AEF4();
  if (sub_13AEF4() != v91)
  {
    v93 = sub_13AEF4();
  }

  sub_13AEF4();
  if (sub_13AEF4() != v92)
  {
    v93 = sub_13AEF4();
  }

  v156 = v159;
  sub_13B234();
  sub_7080C();
  v94 = sub_7FF44();

  if (v94 > 1)
  {
    v156 = v159;
    sub_13B234();
    v95 = sub_71900();

    if (v95)
    {

LABEL_32:
      v156 = v159;
      sub_13B234();
      v97 = sub_71994();

      (*(*v97 + 384))(v98);

      goto LABEL_33;
    }

    v96 = sub_13C144();

    if (v96)
    {
      goto LABEL_32;
    }
  }

LABEL_33:
  sub_13A6E4();
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v107 = v135;
  sub_44BE0(v88, v135, &qword_19D750);
  v108 = v107 + *(v136 + 36);
  *v108 = v93;
  *(v108 + 8) = v100;
  *(v108 + 16) = v102;
  *(v108 + 24) = v104;
  *(v108 + 32) = v106;
  *(v108 + 40) = 0;
  v109 = v139;
  sub_44BE0(v107, v139, &qword_19D758);
  v110 = v138;
  sub_458D8(v38, v138, &qword_19D708);
  v111 = v140;
  sub_458D8(v109, v140, &qword_19D758);
  v112 = v141;
  sub_458D8(v110, v141, &qword_19D708);
  v113 = sub_4948(&qword_19D7E0);
  sub_458D8(v111, v112 + *(v113 + 48), &qword_19D758);
  sub_7F240(v109, &qword_19D758);
  sub_7F240(v38, &qword_19D708);
  sub_7F240(v111, &qword_19D758);
  return sub_7F240(v110, &qword_19D708);
}

uint64_t sub_78EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v48 = a3;
  v4 = sub_13AD34();
  __chkstk_darwin(v4);
  v5 = sub_4948(&qword_19D790);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v41 - v7;
  v43 = sub_4948(&qword_19D778);
  __chkstk_darwin(v43);
  v10 = &v41 - v9;
  v11 = sub_4948(&qword_19D7E8);
  v45 = *(v11 - 8);
  v46 = v11;
  __chkstk_darwin(v11);
  v44 = &v41 - v12;
  v47 = sub_4948(&qword_19D768);
  __chkstk_darwin(v47);
  v14 = &v41 - v13;
  v51 = *(a1 + 32);
  v52 = v51;
  sub_4948(&qword_19D5D8);
  sub_13B234();
  sub_71FCC();

  v49 = a1;
  v50 = v42;
  sub_13AB44();
  LODWORD(v51) = 0;
  sub_7DD78(&qword_19D7F0, &type metadata accessor for PinnedScrollableViews);
  sub_13C244();
  sub_4948(&qword_19D7F8);
  sub_7E284();
  sub_13A6F4();
  v15 = sub_13AEC4();
  sub_13A6E4();
  v16 = &v8[*(v6 + 44)];
  *v16 = v15;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  v21 = sub_13AED4();
  v22 = sub_13AEF4();
  sub_13AEF4();
  if (sub_13AEF4() != v21)
  {
    v22 = sub_13AEF4();
  }

  v51 = v52;
  sub_13B234();
  v23 = sub_72274();

  if (v23 > 1)
  {
    goto LABEL_4;
  }

  v51 = v52;
  sub_13B234();
  if (sub_720A0())
  {
    v24 = sub_702F4();

    if (v24)
    {
LABEL_4:
      v51 = v52;
      sub_13B234();
      sub_72190();
    }
  }

  else
  {
  }

  sub_13A6E4();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_44BE0(v8, v10, &qword_19D790);
  v33 = &v10[*(v43 + 36)];
  *v33 = v22;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  sub_7DFA0();
  v34 = v44;
  sub_13B0F4();
  sub_7F240(v10, &qword_19D778);
  v35 = [objc_opt_self() ams_clear];
  v36 = sub_13B1E4();
  v37 = sub_13AEB4();
  (*(v45 + 32))(v14, v34, v46);
  v38 = &v14[*(v47 + 36)];
  *v38 = v36;
  v38[8] = v37;
  if (qword_199F80 != -1)
  {
    swift_once();
  }

  v39 = sub_13ACF4();
  sub_4910(v39, qword_19D508);
  sub_7DEAC();
  sub_13B0B4();
  return sub_7F240(v14, &qword_19D768);
}

uint64_t sub_7949C(_OWORD *a1, uint64_t a2)
{
  v4 = sub_13A864();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  result = sub_76318();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = 0;
    v14 = result;
    swift_getKeyPath();
    (*(v5 + 16))(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
    v8 = (*(v5 + 80) + 80) & ~*(v5 + 80);
    v9 = swift_allocObject();
    v10 = a1[1];
    *(v9 + 1) = *a1;
    *(v9 + 2) = v10;
    v11 = a1[3];
    *(v9 + 3) = a1[2];
    *(v9 + 4) = v11;
    (*(v5 + 32))(&v9[v8], &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
    sub_7DB94(a1, v12);
    sub_4948(&qword_19AC80);
    sub_4948(&qword_19D810);
    sub_16618();
    sub_7E308();
    return sub_13B314();
  }

  return result;
}

uint64_t sub_79680@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v85 = a3;
  v7 = type metadata accessor for CarouselCellView();
  __chkstk_darwin(v7);
  v9 = (&v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = &v76 - v11;
  __chkstk_darwin(v13);
  v15 = &v76 - v14;
  v83 = sub_4948(&qword_19D858);
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v87 = &v76 - v16;
  v81 = sub_4948(&qword_19D840);
  __chkstk_darwin(v81);
  v84 = &v76 - v17;
  v77 = sub_4948(&qword_19D830);
  __chkstk_darwin(v77);
  v80 = &v76 - v18;
  v86 = sub_4948(&qword_19D820);
  __chkstk_darwin(v86);
  v79 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v78 = &v76 - v21;
  v22 = *a1;
  v91 = a2[2];
  v88[0] = a2[2];
  sub_4948(&qword_19D5D8);
  sub_13B234();
  v23 = sub_70070();

  if (!v23)
  {
    v33 = 1;
    v34 = v86;
    return sub_53A8(a4, v33, 1, v34);
  }

  sub_127E58(v22, (v23 & 0xC000000000000001) == 0, v23);
  v76 = a4;
  if ((v23 & 0xC000000000000001) != 0)
  {
    v24 = sub_13C004();
  }

  else
  {
    v24 = *(v23 + 8 * v22 + 32);
  }

  sub_13A844();
  v88[0] = v91;
  sub_13B234();
  v25 = sub_71994();

  sub_763D4(v25);
  v27 = v26;

  *v9 = swift_getKeyPath();
  sub_4948(&qword_19AC58);
  swift_storeEnumTagMultiPayload();
  v28 = v7[5];
  *(v9 + v28) = swift_getKeyPath();
  sub_4948(&qword_19AC60);
  swift_storeEnumTagMultiPayload();
  *(v9 + v7[11]) = 0;
  *(v9 + v7[12]) = 1;
  *(v9 + v7[6]) = v24;
  *(v9 + v7[8]) = v22;
  *(v9 + v7[7]) = v27;

  sub_72AB0();
  LOBYTE(v25) = sub_72104();

  *(v9 + v7[9]) = v25 & 1;
  sub_72AB0();

  v29 = 0;
  if (sub_720A0())
  {
    v29 = sub_702F4();
  }

  *(v9 + v7[10]) = v29 & 1;
  v88[0] = v91;
  sub_13B234();
  v30 = sub_712A8();

  if (v30 == v22)
  {
    v88[0] = v91;
    sub_13B234();
    v31 = sub_71900();

    if (v31)
    {
      v32 = 1;
    }

    else
    {
      v32 = sub_13C144();
    }
  }

  else
  {
    v32 = 0;
  }

  sub_7DE4C(v9, v12, type metadata accessor for CarouselCellView);
  v12[v7[11]] = v32 & 1;
  v88[0] = v91;
  sub_13B234();
  v35 = sub_71900();

  a4 = v76;
  if (v35)
  {
    v36 = 1;
  }

  else
  {
    v36 = sub_13C144();
  }

  sub_7DE4C(v12, v15, type metadata accessor for CarouselCellView);
  v15[v7[12]] = v36 & 1;
  v37 = swift_allocObject();
  v38 = a2[1];
  *(v37 + 16) = *a2;
  *(v37 + 32) = v38;
  v39 = a2[3];
  *(v37 + 48) = a2[2];
  *(v37 + 64) = v39;
  *(v37 + 80) = v22;
  v89 = sub_7E804;
  v90 = v37;
  sub_7DB94(a2, v88);
  sub_7DD78(&qword_19D638, type metadata accessor for CarouselCellView);
  sub_7DA88();
  sub_13B124();

  sub_7E810(v15, type metadata accessor for CarouselCellView);
  v40 = sub_13AEE4();
  v88[0] = v91;
  sub_13B234();
  sub_7080C();
  v41 = sub_7FF44();

  if (v41 <= 1)
  {
    v42 = v84;
    if (!v22)
    {
      v88[0] = v91;
      sub_13B234();
      v43 = sub_71994();

      (*(*v43 + 384))(v44);
    }
  }

  else
  {
    v88[0] = a2[3];
    sub_4948(&qword_19AAA8);
    sub_13B234();
    v42 = v84;
    if ((v89 & 1) == 0 && v22 >= 1)
    {
      sub_13A844();
    }
  }

  sub_13A6E4();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  (*(v82 + 32))(v42, v87, v83);
  v53 = v42 + *(v81 + 36);
  *v53 = v40;
  *(v53 + 8) = v46;
  *(v53 + 16) = v48;
  *(v53 + 24) = v50;
  *(v53 + 32) = v52;
  *(v53 + 40) = 0;
  v54 = sub_13AF04();
  v88[0] = v91;
  sub_13B234();
  sub_7080C();
  v55 = sub_7FF44();

  if (v55 > 1)
  {
LABEL_26:
    sub_13A6E4();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v67 = v80;
    sub_44BE0(v42, v80, &qword_19D840);
    v68 = v67 + *(v77 + 36);
    *v68 = v54;
    *(v68 + 8) = v60;
    *(v68 + 16) = v62;
    *(v68 + 24) = v64;
    *(v68 + 32) = v66;
    *(v68 + 40) = 0;
    v69 = sub_13B3C4();
    v71 = v70;
    v72 = swift_allocObject();
    *(v72 + 16) = v22;

    v73 = v79;
    sub_44BE0(v67, v79, &qword_19D830);
    v34 = v86;
    v74 = (v73 + *(v86 + 36));
    *v74 = sub_7E878;
    v74[1] = v72;
    v74[2] = v69;
    v74[3] = v71;
    v75 = v78;
    sub_44BE0(v73, v78, &qword_19D820);
    sub_44BE0(v75, a4, &qword_19D820);
    v33 = 0;
    return sub_53A8(a4, v33, 1, v34);
  }

  result = sub_76318();
  if (!__OFSUB__(result, 1))
  {
    if (v22 == result - 1)
    {
      v88[0] = v91;
      sub_13B234();
      v57 = sub_71994();

      (*(*v57 + 384))(v58);
    }

    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_7A14C()
{
  sub_13B404();
  sub_13A8E4();
}

uint64_t sub_7A1C0(uint64_t a1, uint64_t a2)
{
  sub_4948(&qword_19D5D8);
  sub_13B234();
  sub_722B0(a2);
}

uint64_t sub_7A234@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_13B1A4();
  sub_4948(&qword_19D860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_140280;
  *(inited + 32) = a1;
  if (qword_199F80 != -1)
  {
    swift_once();
  }

  v6 = sub_13ACF4();
  sub_4910(v6, qword_19D508);
  sub_13A854();
  *(inited + 40) = v7;
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  *(inited + 64) = v10;
  type metadata accessor for CGRect(0);
  result = sub_13BB14();
  *a2 = v4;
  a2[1] = result;
  return result;
}

uint64_t sub_7A334(uint64_t *a1)
{
  v28 = *a1;

  sub_4948(&qword_19D7B0);
  sub_13B244();
  sub_4948(&qword_19D5D8);
  sub_13B234();
  sub_13B234();
  v1 = *(v28 + 16);
  if (v1)
  {
    v27 = *(v28 + 16);
    sub_4D00C(0, v1, 0);
    result = sub_DA6E4();
    v4 = result;
    v6 = v5;
    v7 = v27;
    v8 = 0;
    v9 = v28 + 64;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v4 < 1 << *(v28 + 32))
      {
        v10 = v4 >> 6;
        if ((*(v9 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v28 + 36) != v6)
        {
          goto LABEL_26;
        }

        v11 = *(*(v28 + 56) + 32 * v4 + 24);
        v13 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        if (v13 >= v12 >> 1)
        {
          v26 = v3;
          result = sub_4D00C((v12 > 1), v13 + 1, 1);
          v3 = v26;
          v7 = v27;
        }

        _swiftEmptyArrayStorage[2] = v13 + 1;
        _swiftEmptyArrayStorage[v13 + 4] = v11;
        v14 = 1 << *(v28 + 32);
        if (v4 >= v14)
        {
          goto LABEL_27;
        }

        v15 = *(v9 + 8 * v10);
        if ((v15 & (1 << v4)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v28 + 36) != v6)
        {
          goto LABEL_29;
        }

        v16 = v15 & (-2 << (v4 & 0x3F));
        if (v16)
        {
          v14 = __clz(__rbit64(v16)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = v10 << 6;
          v18 = v10 + 1;
          v19 = (v28 + 72 + 8 * v10);
          while (v18 < (v14 + 63) >> 6)
          {
            v21 = *v19++;
            v20 = v21;
            v17 += 64;
            ++v18;
            if (v21)
            {
              result = sub_7E270(v4, v6, v3 & 1);
              v7 = v27;
              v14 = __clz(__rbit64(v20)) + v17;
              goto LABEL_18;
            }
          }

          result = sub_7E270(v4, v6, v3 & 1);
          v7 = v27;
        }

LABEL_18:
        if (++v8 == v7)
        {
          goto LABEL_21;
        }

        v3 = 0;
        v6 = *(v28 + 36);
        v4 = v14;
        if (v14 < 0)
        {
          break;
        }
      }
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

  else
  {
LABEL_21:

    v22 = sub_130134(_swiftEmptyArrayStorage);
    v24 = v23;

    v25 = *&v22;
    if (v24)
    {
      v25 = 0.0;
    }

    sub_71F40(v25);
  }

  return result;
}

uint64_t sub_7A650()
{
  sub_13B3F4();
  sub_13A8E4();
}

uint64_t sub_7A6D4(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_4948(&qword_19D5D8);
    sub_13B234();
    v2 = sub_71900();

    if ((v2 & 1) == 0)
    {
      sub_13C144();
    }
  }

  sub_4948(&qword_19AAA8);
  return sub_13B244();
}

uint64_t sub_7A81C()
{
  sub_7D298();
  result = sub_13ABF4();
  static HorizontalAlignment.bottomCenter = result;
  return result;
}

uint64_t *HorizontalAlignment.bottomCenter.unsafeMutableAddressor()
{
  if (qword_199F88 != -1)
  {
    sub_7FB6C();
  }

  return &static HorizontalAlignment.bottomCenter;
}

uint64_t static HorizontalAlignment.bottomCenter.getter()
{
  if (qword_199F88 != -1)
  {
    sub_7FB6C();
  }

  return static HorizontalAlignment.bottomCenter;
}

uint64_t sub_7A8CC()
{
  if (qword_199F88 != -1)
  {
    sub_7FB6C();
  }

  v0 = static HorizontalAlignment.bottomCenter;
  result = sub_13AB34();
  *&xmmword_1B2A80 = v0;
  *(&xmmword_1B2A80 + 1) = result;
  return result;
}

uint64_t sub_7A964()
{
  type metadata accessor for CGRect(0);

  return sub_13BB14();
}

uint64_t sub_7AA14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_7A964();
  *a1 = result;
  return result;
}

void sub_7AA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_13A7E4();
  MidX = CGRectGetMidX(v44);
  if (sub_72104())
  {
    sub_7FCAC();
    v7 = v6 & v5;
    if (v7)
    {
      v8 = 0;
      v9 = __clz(__rbit64(v7));
      v10 = (v7 - 1) & v7;
      v11 = (v4 + 63) >> 6;
LABEL_8:
      v14 = (*(a3 + 56) + 32 * v9);
      v15 = *v14;
      v16 = v14[1];
      v18 = v14[2];
      v17 = v14[3];

      v40 = v16;
      v41 = v15;
      rect = v18;
      v19 = v17;
      if (!v10)
      {
        goto LABEL_10;
      }

      do
      {
        v39 = v17;
        v20 = v8;
LABEL_14:
        v38 = v19;
        v21 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v22 = (*(a3 + 56) + ((v20 << 11) | (32 * v21)));
        v45.origin.x = *v22;
        v23 = v22[1];
        v37 = *v22;
        v24 = v22[2];
        v25 = v22[3];
        v45.origin.y = v23;
        v45.size.width = v24;
        v45.size.height = v25;
        v36 = vabdd_f64(CGRectGetMidX(v45), MidX);
        v46.origin.x = v15;
        v46.origin.y = v16;
        v46.size.width = v18;
        v46.size.height = v38;
        v26 = v36 < vabdd_f64(CGRectGetMidX(v46), MidX);
        if (v26)
        {
          v27 = v37;
        }

        else
        {
          v27 = v41;
        }

        v17 = v39;
        v28 = v40;
        if (v26)
        {
          v28 = v23;
        }

        v40 = v28;
        v41 = v27;
        v29 = rect;
        if (v26)
        {
          v29 = v24;
        }

        rect = v29;
        if (v26)
        {
          v17 = v25;
          v15 = v37;
          v16 = v23;
          v18 = v24;
          v19 = v25;
        }

        else
        {
          v19 = v38;
        }
      }

      while (v10);
LABEL_10:
      while (1)
      {
        v20 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v20 >= v11)
        {

          v47.origin.y = v40;
          v47.origin.x = v41;
          v47.size.width = rect;
          v47.size.height = v17;
          v30 = CGRectGetMidX(v47);
          sub_13A7E4();
          v32 = v30 + v31 * -0.5;
          v33 = sub_13A7D4();
          *v34 = v32;
          v33(v43, 0);
          return;
        }

        v10 = *(a3 + 64 + 8 * v20);
        ++v8;
        if (v10)
        {
          v39 = v17;
          v8 = v20;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    else
    {
      v12 = 0;
      v11 = (v4 + 63) >> 6;
      while (1)
      {
        v8 = v7 + 1;
        if (v7 + 1 >= v11)
        {
          break;
        }

        v13 = *(a3 + 72 + 8 * v7);
        v12 += 64;
        ++v7;
        if (v13)
        {
          v10 = (v13 - 1) & v13;
          v9 = __clz(__rbit64(v13)) + v12;
          goto LABEL_8;
        }
      }
    }
  }
}

void sub_7ACAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_A1FC();
  a19 = v22;
  a20 = v23;
  sub_7FD8C();
  sub_13AB24();
  sub_9E94();
  __chkstk_darwin(v24);
  sub_9EC0();
  sub_4948(&qword_19D698);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v25);
  v27 = &a9 - v26;
  sub_458D8(v21, &a9 - v26, &qword_19D698);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13A954();
    sub_45BA8();
    (*(v28 + 32))(v20, v27);
  }

  else
  {
    sub_13BD54();
    v29 = sub_13AE64();
    sub_13A004();

    sub_13AB14();
    swift_getAtKeyPath();

    v30 = sub_7FCEC();
    v31(v30);
  }

  sub_A214();
}

void sub_7AE68()
{
  sub_A1FC();
  v1 = sub_7FD8C();
  v2 = type metadata accessor for TransitionButton(v1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4948(&qword_19D9B8);
  sub_9E94();
  sub_171D0();
  __chkstk_darwin(v6);
  sub_7F294(v0, v5, type metadata accessor for TransitionButton);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_7DE4C(v5, v8 + v7, type metadata accessor for TransitionButton);
  v13 = v0;
  sub_13B274();
  sub_7FBE8();
  sub_7FAA8(v9, &qword_19D9B8);
  sub_7F1EC();
  sub_13B044();
  v10 = sub_7FCD4();
  v11(v10);
  sub_A214();
}

uint64_t sub_7B088(uint64_t a1)
{
  v2 = sub_13ADE4();
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin(v2);
  v34 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TransitionButton(0);
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  __chkstk_darwin(v4);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_13A954();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  sub_7ACAC(v13, v14, v15, v16, v17, v18, v19, v20, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
  (*(v7 + 104))(v9, enum case for LayoutDirection.rightToLeft(_:), v6);
  v21 = sub_13A944();
  v22 = *(v7 + 8);
  v22(v9, v6);
  v22(v12, v6);
  if ((v21 & 1) == 0 || (sub_70F94(1), sub_7080C(), v23 = sub_7FF44(), , v23 <= 1))
  {
    v24 = sub_13B3F4();
    __chkstk_darwin(v24);
    *(&v32 - 2) = a1;
    sub_13A8E4();
  }

  sub_7080C();
  sub_7FF44();

  v25 = sub_13B3F4();
  __chkstk_darwin(v25);
  *(&v32 - 2) = a1;
  v26 = a1;
  v27 = v33;
  sub_7F294(v26, v33, type metadata accessor for TransitionButton);
  v28 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v29 = swift_allocObject();
  sub_7DE4C(v27, v29 + v28, type metadata accessor for TransitionButton);
  v30 = v34;
  sub_13ADD4();
  sub_13A8D4();

  return (*(v35 + 8))(v30, v36);
}

uint64_t sub_7B510()
{
  type metadata accessor for TransitionButton(0);
  sub_70F94(1);
  v0 = sub_712A8();
  return sub_70DB8(v0);
}

uint64_t sub_7B558()
{
  type metadata accessor for TransitionButton(0);
  sub_4948(&qword_19D9D0);
  return sub_13B2D4();
}

uint64_t sub_7B5D4()
{
  sub_13B3F4();
  sub_13A8E4();
}

uint64_t sub_7B650(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  type metadata accessor for TransitionButton(0);
  v5 = a2();
  return a3(v5);
}

uint64_t sub_7B6A8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Carousel.Button(0);
  __chkstk_darwin(v2);
  v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_4948(&qword_19C9B8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  type metadata accessor for TransitionButton(0);
  sub_70A20(v7);
  if (sub_52E0(v7, 1, v2))
  {
    sub_7F240(v7, &qword_19C9B8);
  }

  else
  {
    sub_7F294(v7, v4, type metadata accessor for Carousel.Button);
    sub_7F240(v7, &qword_19C9B8);
    v9 = *v4;
    v8 = v4[1];

    sub_7E810(v4, type metadata accessor for Carousel.Button);
    if (v8)
    {
      goto LABEL_5;
    }
  }

  v8 = 0xED0000736E616C50;
  v9 = 0x206C6C4120656553;
LABEL_5:
  v14[0] = v9;
  v14[1] = v8;
  sub_1628C();
  result = sub_13B004();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_7B880@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v59 = sub_13A9A4();
  sub_9F94();
  __chkstk_darwin(v1);
  sub_9EC0();
  v4 = (v3 - v2);
  v5 = sub_4948(&qword_19D9F0) - 8;
  sub_171D0();
  __chkstk_darwin(v6);
  v8 = &v58 - v7;
  v9 = sub_4948(&qword_19D9F8);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v10);
  v12 = &v58 - v11;
  v60 = sub_4948(&qword_19DA00);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v13);
  v15 = &v58 - v14;
  sub_13AD94();
  v16 = objc_opt_self();
  v17 = [v16 ams_appTint];
  v18 = sub_13B1E4();
  *&v8[*(sub_4948(&qword_19DA08) + 36)] = v18;
  v19 = sub_13AF24();
  KeyPath = swift_getKeyPath();
  sub_4948(&qword_19DA10);
  sub_7FD98();
  *v21 = KeyPath;
  v21[1] = v19;
  LOBYTE(v19) = sub_13AEC4();
  sub_13A6E4();
  sub_1D3D0();
  sub_4948(&qword_19DA18);
  sub_7FD98();
  *v22 = v19;
  sub_7FD14(v22);
  LOBYTE(v19) = sub_13AED4();
  sub_13A6E4();
  v23 = &v8[*(v5 + 44)];
  *v23 = v19;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  sub_4948(&qword_19AAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_13E650;
  v29 = sub_13AEE4();
  *(inited + 32) = v29;
  v30 = sub_13AF04();
  *(inited + 33) = v30;
  v31 = sub_13AEF4();
  sub_13AEF4();
  if (sub_13AEF4() != v29)
  {
    v31 = sub_13AEF4();
  }

  sub_13AEF4();
  if (sub_13AEF4() != v30)
  {
    v31 = sub_13AEF4();
  }

  sub_13A6E4();
  sub_1D3D0();
  sub_44BE0(v8, v12, &qword_19D9F0);
  v32 = &v12[*(v9 + 36)];
  *v32 = v31;
  sub_7FD14(v32);
  v33 = *(v59 + 20);
  v34 = enum case for RoundedCornerStyle.continuous(_:);
  sub_13ABA4();
  sub_45BA8();
  (*(v35 + 104))(&v4[v33], v34);
  __asm { FMOV            V0.2D, #25.0 }

  *v4 = _Q0;
  v41 = [v16 ams_appTint];
  v42 = sub_13B1E4();
  sub_13A784();
  v43 = &v15[*(v60 + 36)];
  sub_7F294(v4, v43, &type metadata accessor for RoundedRectangle);
  v44 = *&v62 * 0.5;
  v45 = v43 + *(sub_4948(&qword_19AB60) + 68);
  sub_7F294(v4, v45, &type metadata accessor for RoundedRectangle);
  *(v45 + *(sub_13A994() + 20)) = v44;
  sub_4948(&qword_19AB68);
  sub_7FD98();
  v46 = v63;
  *v47 = v62;
  *(v47 + 16) = v46;
  *(v47 + 32) = v64;
  v48 = sub_4948(&qword_19AB70);
  *(v45 + *(v48 + 52)) = v42;
  *(v45 + *(v48 + 56)) = 256;
  v49 = sub_13B3C4();
  v51 = v50;
  sub_7E810(v4, &type metadata accessor for RoundedRectangle);
  sub_4948(&qword_19AB78);
  sub_7FD98();
  *v52 = v49;
  v52[1] = v51;
  v53 = sub_13B3C4();
  v55 = v54;
  v56 = (v43 + *(sub_4948(&qword_19AB48) + 36));
  *v56 = v53;
  v56[1] = v55;
  sub_44BE0(v12, v15, &qword_19D9F8);
  sub_13AF64();
  sub_7F6AC();
  sub_13B034();
  return sub_7F240(v15, &qword_19DA00);
}

uint64_t sub_7BDDC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_13AB44();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_4948(&qword_19D940);
  return sub_7BE2C(v1);
}

uint64_t sub_7BE2C(uint64_t a1)
{
  v7 = *(a1 + 24);
  sub_4948(&qword_19D948);
  result = sub_13B234();
  v3 = v8;
  if (v8 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = v3;
    swift_getKeyPath();
    v4 = swift_allocObject();
    memcpy((v4 + 16), a1, 0x48uLL);
    sub_7EE28(a1, &v7);
    sub_4948(&qword_19AC80);
    sub_4948(&qword_19D950);
    sub_16618();
    v5 = sub_558C(&qword_19D958);
    v6 = sub_7EE60();
    *&v7 = v5;
    *(&v7 + 1) = v6;
    swift_getOpaqueTypeConformance2();
    return sub_13B314();
  }

  return result;
}

uint64_t sub_7BFA4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  sub_13B3C4();
  sub_13A834();
  *__dst = *a2;
  *&__dst[16] = a2[2];
  sub_4948(&qword_19D9B0);
  sub_13B2C4();
  v4 = sub_13B1C4();
  if (v3 != __src[0])
  {
    v5 = sub_13B1B4();

    v4 = v5;
  }

  KeyPath = swift_getKeyPath();
  v12 = v14;
  v11 = v16;
  sub_13B3C4();
  sub_13A834();
  __src[0] = v13;
  LOBYTE(__src[1]) = v14;
  __src[2] = v15;
  LOBYTE(__src[3]) = v16;
  __src[4] = v17;
  __src[5] = v18;
  __src[6] = KeyPath;
  __src[7] = v4;
  LOBYTE(__src[14]) = 0;
  v7 = swift_allocObject();
  memcpy((v7 + 16), a2, 0x48uLL);
  *(v7 + 88) = v3;
  sub_7EE28(a2, __dst);
  sub_4948(&qword_19D958);
  sub_7EE60();
  sub_13B054();

  memcpy(__dst, __src, sizeof(__dst));
  return sub_7F240(__dst, &qword_19D958);
}

uint64_t sub_7C1C8()
{
  sub_13B404();
  sub_13A8E4();
}

uint64_t sub_7C23C(uint64_t a1, uint64_t a2)
{
  sub_7080C();
  v3 = sub_7FF44();

  if (v3 < 2)
  {
    return sub_722B0(a2);
  }

  sub_7080C();
  sub_8012C(a2);
}

void sub_7C30C(void *a1, void *a2)
{
  if (a1 != a2 && a1[2] == a2[2])
  {
    v4 = 0;
    sub_7FCAC();
    v7 = v6 & v5;
    v9 = (v8 + 63) >> 6;
    while (v7)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_11:
      v14 = v10 | (v4 << 6);
      v15 = *(a1[6] + 8 * v14);
      v16 = a1[7] + 32 * v14;
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      v20 = *(v16 + 24);
      v21 = sub_7C4E8(v15);
      if (v22)
      {
        v23.origin.x = v17;
        v23.origin.y = v18;
        v23.size.width = v19;
        v23.size.height = v20;
        if (CGRectEqualToRect(*(a2[7] + 32 * v21), v23))
        {
          continue;
        }
      }

      return;
    }

    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v9)
      {
        return;
      }

      ++v11;
      if (a1[v4 + 8])
      {
        sub_7FC40();
        v7 = v13 & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_7C420(uint64_t a1)
{
  v2 = sub_13A954();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_13AA64();
}

unint64_t sub_7C4E8(uint64_t a1)
{
  v2 = sub_13C204();

  return sub_7C634(a1, v2);
}

unint64_t sub_7C52C(uint64_t a1, uint64_t a2)
{
  sub_13C214();
  sub_13BBA4();
  v4 = sub_13C234();

  return sub_7C694(a1, a2, v4);
}

unint64_t sub_7C5A4()
{
  sub_13BB84();
  sub_13C214();
  sub_13BBA4();
  sub_13C234();

  v0 = sub_7FCEC();

  return sub_7C748(v0, v1);
}

unint64_t sub_7C634(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_7C694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_13C144() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_7C748(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_13BB84();
    v7 = v6;
    if (v5 == sub_13BB84() && v7 == v8)
    {

      return i;
    }

    v10 = sub_13C144();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

uint64_t sub_7C840(double *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  *a1 = a3;
  a1[1] = a4;
  a1[2] = a5;
  a1[3] = a6;
  return a2;
}

uint64_t sub_7C850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_7D228(a4, a1);

  return a2;
}

uint64_t sub_7C89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_7C910(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_7C910(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v43 = a5;
  sub_7F560(a1, a2, a3, v42);
  v6 = v42[1];
  v7 = v42[3];
  v8 = v42[4];
  v32 = v42[5];
  v33 = v42[0];
  v9 = (v42[2] + 64) >> 6;

  if (v8)
  {
    while (1)
    {
      v10 = v7;
LABEL_7:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = *(*(v33 + 48) + 8 * v12);
      v14 = (*(v33 + 56) + 32 * v12);
      v39 = v13;
      v15 = v14[1];
      v40 = *v14;
      v41 = v15;
      v32(&v36, &v39);
      v16 = v36;
      v34 = v37;
      v35 = v38;
      v17 = *v43;
      v19 = sub_7C4E8(v36);
      v20 = v17[2];
      v21 = (v18 & 1) == 0;
      if (__OFADD__(v20, v21))
      {
        break;
      }

      v22 = v18;
      if (v17[3] >= v20 + v21)
      {
        if ((a4 & 1) == 0)
        {
          sub_4948(&qword_19D520);
          sub_13C084();
        }
      }

      else
      {
        sub_7CB7C();
        v23 = sub_7C4E8(v16);
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_23;
        }

        v19 = v23;
      }

      v8 &= v8 - 1;
      v25 = *v43;
      if (v22)
      {
        v26 = (v25[7] + 32 * v19);
        *v26 = v34;
        v26[1] = v35;
      }

      else
      {
        v25[(v19 >> 6) + 8] |= 1 << v19;
        *(v25[6] + 8 * v19) = v16;
        v27 = (v25[7] + 32 * v19);
        *v27 = v34;
        v27[1] = v35;
        v28 = v25[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_22;
        }

        v25[2] = v30;
      }

      a4 = 1;
      v7 = v10;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {

        sub_7D220();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_13C174();
  __break(1u);
  return result;
}

void sub_7CB7C()
{
  sub_7FB8C();
  sub_4948(&qword_19D528);
  sub_7FCEC();
  v7 = sub_13C0D4();
  if (!*(v1 + 16))
  {

LABEL_27:
    *v0 = v7;
    return;
  }

  sub_7FBA8();
  if (!v0)
  {
LABEL_4:
    v9 = v4;
    while (1)
    {
      v4 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v4 >= v6)
      {
        break;
      }

      ++v9;
      if (v3[v4])
      {
        sub_7FC40();
        v0 = (v11 & v10);
        goto LABEL_9;
      }
    }

    if (v2)
    {
      sub_7FC2C();
      if (v23 != v24)
      {
        *v3 = -1 << v22;
      }

      else
      {
        v25 = sub_7FD24();
        sub_7D0F0(v25, v26, v3);
      }

      *(v1 + 16) = 0;
    }

    v0 = v27;
    goto LABEL_27;
  }

  while (1)
  {
    sub_7FD6C();
LABEL_9:
    v12 = (*(v1 + 56) + 32 * (v8 | (v4 << 6)));
    v28 = v12[1];
    v29 = *v12;
    sub_13C204();
    sub_7FC8C();
    if (v13)
    {
      break;
    }

    sub_7FC78();
LABEL_18:
    sub_7FC00(v14);
    v21 = (v20 + 32 * v19);
    *v21 = v29;
    v21[1] = v28;
    ++*(v7 + 16);
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  sub_7FC64();
  while (++v15 != v17 || (v16 & 1) == 0)
  {
    v18 = v15 == v17;
    if (v15 == v17)
    {
      v15 = 0;
    }

    v16 |= v18;
    if (*(v5 + 8 * v15) != -1)
    {
      sub_7FC50();
      goto LABEL_18;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_7CD0C()
{
  sub_7FB8C();
  sub_4948(&qword_19D530);
  sub_7FCEC();
  v34 = v2;
  v3 = sub_13C0D4();
  v4 = v3;
  if (!*(v1 + 16))
  {
LABEL_32:

LABEL_33:
    *v0 = v4;
    return;
  }

  v33 = v0;
  v5 = 0;
  v6 = (v1 + 64);
  v7 = 1 << *(v1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v1 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = v3 + 64;
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
        goto LABEL_35;
      }

      if (v5 >= v10)
      {
        break;
      }

      ++v13;
      if (v6[v5])
      {
        sub_7FC40();
        v9 = v15 & v14;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v0 = v33;
      goto LABEL_33;
    }

    sub_7FC2C();
    v0 = v33;
    if (v29 != v30)
    {
      *v6 = -1 << v28;
    }

    else
    {
      v31 = sub_7FD24();
      sub_7D0F0(v31, v32, v1 + 64);
    }

    *(v1 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v16 = v12 | (v5 << 6);
    v17 = (*(v1 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = (*(v1 + 56) + 32 * v16);
    if (v34)
    {
      sub_7D284(v20, v35);
    }

    else
    {
      sub_7D228(v20, v35);
    }

    sub_13C214();
    sub_13BBA4();
    v21 = sub_13C234() & ~(-1 << *(v4 + 32));
    if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    sub_7FC78();
LABEL_24:
    *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v4 + 48) + 16 * v22);
    *v27 = v18;
    v27[1] = v19;
    sub_7D284(v35, (*(v4 + 56) + 32 * v22));
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  sub_7FC64();
  while (++v23 != v25 || (v24 & 1) == 0)
  {
    v26 = v23 == v25;
    if (v23 == v25)
    {
      v23 = 0;
    }

    v24 |= v26;
    if (*(v11 + 8 * v23) != -1)
    {
      sub_7FC50();
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_7CF68()
{
  sub_7FB8C();
  sub_4948(&qword_19D9D8);
  sub_7FCEC();
  v7 = sub_13C0D4();
  if (!*(v1 + 16))
  {

LABEL_27:
    *v0 = v7;
    return;
  }

  sub_7FBA8();
  if (!v0)
  {
LABEL_4:
    v9 = v4;
    while (1)
    {
      v4 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v4 >= v6)
      {
        break;
      }

      ++v9;
      if (v3[v4])
      {
        sub_7FC40();
        v0 = (v11 & v10);
        goto LABEL_9;
      }
    }

    if (v2)
    {
      sub_7FC2C();
      if (v22 != v23)
      {
        *v3 = -1 << v21;
      }

      else
      {
        v24 = sub_7FD24();
        sub_7D0F0(v24, v25, v3);
      }

      *(v1 + 16) = 0;
    }

    v0 = v26;
    goto LABEL_27;
  }

  while (1)
  {
    sub_7FD6C();
LABEL_9:
    v12 = *(*(v1 + 56) + 8 * (v8 | (v4 << 6)));
    sub_13C204();
    sub_7FC8C();
    if (v13)
    {
      break;
    }

    sub_7FC78();
LABEL_18:
    sub_7FC00(v14);
    *(v20 + 8 * v19) = v12;
    ++*(v7 + 16);
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  sub_7FC64();
  while (++v15 != v17 || (v16 & 1) == 0)
  {
    v18 = v15 == v17;
    if (v15 == v17)
    {
      v15 = 0;
    }

    v16 |= v18;
    if (*(v5 + 8 * v15) != -1)
    {
      sub_7FC50();
      goto LABEL_18;
    }
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_7D0F0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_13F2A0;
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

uint64_t sub_7D154()
{
  v0 = sub_13BB84();
  v2 = v1;
  if (v0 == sub_13BB84() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    sub_7FCE0();
    v5 = sub_13C144();
  }

  return v5 & 1;
}

__n128 sub_7D1D4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_7C840(v6, *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  result = v6[0];
  v5 = v6[1];
  *a2 = v3;
  *(a2 + 8) = result;
  *(a2 + 24) = v5;
  return result;
}

uint64_t sub_7D228(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_7D284(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_7D298()
{
  result = qword_19D538;
  if (!qword_19D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19D538);
  }

  return result;
}

uint64_t sub_7D310(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_45BD4(*a1);
  }

  v7 = sub_4948(&qword_19A970);
  v8 = a1 + *(a3 + 20);

  return sub_52E0(v8, a2, v7);
}

void *sub_7D3AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A970);
    v8 = v5 + *(a4 + 20);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_7D458()
{
  sub_7EAF0(319, &unk_19D5A8, type metadata accessor for CarouselComponentModel, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    sub_7EAF0(319, &qword_19A9F0, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_7D568()
{
  result = qword_19D5E0;
  if (!qword_19D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19D5E0);
  }

  return result;
}

unint64_t sub_7D5BC()
{
  result = qword_19D5E8;
  if (!qword_19D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19D5E8);
  }

  return result;
}

__n128 sub_7D610(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_7D624(uint64_t *a1, int a2)
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

uint64_t sub_7D664(uint64_t result, int a2, int a3)
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

unint64_t sub_7D6D8()
{
  result = qword_19D5F0;
  if (!qword_19D5F0)
  {
    sub_558C(&qword_19D5F8);
    sub_7D568();
    sub_7D5BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19D5F0);
  }

  return result;
}

uint64_t sub_7D7B4()
{
  v1 = sub_13A864();
  sub_9E94();
  v3 = v2;
  v4 = *(v2 + 80);

  (*(v3 + 8))(v0 + ((v4 + 32) & ~v4), v1);
  v5 = sub_7FD04();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t sub_7D86C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_13A864();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);

  return sub_75AC0(a1, v5, v6, a2);
}

unint64_t sub_7D8F0()
{
  result = qword_19D620;
  if (!qword_19D620)
  {
    sub_558C(&qword_19D618);
    sub_558C(&qword_19D628);
    sub_7D9CC();
    sub_7DA88();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19D620);
  }

  return result;
}

unint64_t sub_7D9CC()
{
  result = qword_19D630;
  if (!qword_19D630)
  {
    sub_558C(&qword_19D628);
    sub_7DD78(&qword_19D638, type metadata accessor for CarouselCellView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19D630);
  }

  return result;
}

unint64_t sub_7DA88()
{
  result = qword_19D640;
  if (!qword_19D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19D640);
  }

  return result;
}

uint64_t sub_7DAF4()
{

  v0 = sub_7FD34();

  return _swift_deallocObject(v0, v1, v2);
}

unint64_t sub_7DBF4()
{
  result = qword_19D6B0;
  if (!qword_19D6B0)
  {
    sub_558C(&qword_19D6B8);
    sub_7DCAC(&qword_19D6C0, &unk_19D6C8, &unk_145168, sub_7DD24);
    sub_7DD24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19D6B0);
  }

  return result;
}

uint64_t sub_7DCAC(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_7FD80(0, a2);
    sub_558C(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_7DD24()
{
  result = qword_19D6D0;
  if (!qword_19D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19D6D0);
  }

  return result;
}

uint64_t sub_7DD78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_7DDC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_71338();
  *a1 = result;
  return result;
}

uint64_t sub_7DE4C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_45BA8();
  v4 = sub_17208();
  v5(v4);
  return a2;
}

unint64_t sub_7DEAC()
{
  result = qword_19D770;
  if (!qword_19D770)
  {
    sub_558C(&qword_19D768);
    sub_558C(&qword_19D778);
    sub_7DFA0();
    swift_getOpaqueTypeConformance2();
    sub_7FAA8(&qword_19AB00, &qword_19AB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19D770);
  }

  return result;
}

unint64_t sub_7DFA0()
{
  result = qword_19D780;
  if (!qword_19D780)
  {
    sub_558C(&qword_19D778);
    sub_7E02C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19D780);
  }

  return result;
}

unint64_t sub_7E02C()
{
  result = qword_19D788;
  if (!qword_19D788)
  {
    sub_558C(&qword_19D790);
    sub_7FAA8(&qword_19D798, &unk_19D7A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19D788);
  }

  return result;
}

unint64_t sub_7E0EC()
{
  result = qword_19D7B8;
  if (!qword_19D7B8)
  {
    sub_558C(&qword_19D730);
    sub_558C(&qword_19D720);
    sub_7FAA8(&qword_19D7A8, &qword_19D720);
    swift_getOpaqueTypeConformance2();
    sub_7FAA8(&qword_19D7C0, &unk_19D7C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19D7B8);
  }

  return result;
}

unint64_t sub_7E214()
{
  result = qword_19D7D0;
  if (!qword_19D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19D7D0);
  }

  return result;
}

uint64_t sub_7E270(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_7E284()
{
  result = qword_19D800;
  if (!qword_19D800)
  {
    sub_558C(&qword_19D7F8);
    sub_7E308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19D800);
  }

  return result;
}

unint64_t sub_7E308()
{
  result = qword_19D808;
  if (!qword_19D808)
  {
    sub_558C(&qword_19D810);
    sub_7E38C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19D808);
  }

  return result;
}

unint64_t sub_7E38C()
{
  result = qword_19D818;
  if (!qword_19D818)
  {
    sub_558C(&qword_19D820);
    sub_7E444();
    sub_7FAA8(&qword_19D848, &unk_19D850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19D818);
  }

  return result;
}

unint64_t sub_7E444()
{
  result = qword_19D828;
  if (!qword_19D828)
  {
    sub_558C(&qword_19D830);
    sub_7E4D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19D828);
  }

  return result;
}

unint64_t sub_7E4D0()
{
  result = qword_19D838;
  if (!qword_19D838)
  {
    sub_558C(&qword_19D840);
    type metadata accessor for CarouselCellView();
    sub_7DD78(&qword_19D638, type metadata accessor for CarouselCellView);
    sub_7DA88();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19D838);
  }

  return result;
}

uint64_t *sub_7E5D8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_7E63C()
{
  v1 = sub_13A864();
  sub_9E94();
  v3 = v2;
  v4 = *(v2 + 80);

  (*(v3 + 8))(v0 + ((v4 + 80) & ~v4), v1);
  v5 = sub_7FD04();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t sub_7E714@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_13A864() - 8);
  v6 = v2 + ((*(v5 + 80) + 80) & ~*(v5 + 80));

  return sub_79680(a1, (v2 + 16), v6, a2);
}

uint64_t sub_7E7A0()
{

  v0 = sub_7FD34();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_7E810(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_9F94();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_7E8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_4948(&qword_19D868);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return sub_45BD4(*(a1 + *(a3 + 20)));
  }

  return sub_52E0(a1, a2, v6);
}

uint64_t sub_7E970(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_4948(&qword_19D868);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_53A8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_7EA24()
{
  sub_7EAF0(319, &qword_19D8D8, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CarouselComponentModel(319);
    if (v1 <= 0x3F)
    {
      sub_7EB54();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_7EAF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_7EB54()
{
  if (!qword_19D8E0)
  {
    v0 = sub_13B2F4();
    if (!v1)
    {
      atomic_store(v0, &qword_19D8E0);
    }
  }
}

uint64_t sub_7EBAC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_7EBEC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_7EC50(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_7EC94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_7ED28()
{
  result = qword_19D928;
  if (!qword_19D928)
  {
    sub_558C(&qword_19D658);
    sub_7FAA8(&qword_19D930, &unk_19D938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19D928);
  }

  return result;
}

unint64_t sub_7EE60()
{
  result = qword_19D960;
  if (!qword_19D960)
  {
    sub_558C(&qword_19D958);
    sub_7EF18();
    sub_7FAA8(&qword_19D9A0, &unk_19D9A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19D960);
  }

  return result;
}

unint64_t sub_7EF18()
{
  result = qword_19D968;
  if (!qword_19D968)
  {
    sub_558C(&qword_19D970);
    sub_7EFA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19D968);
  }

  return result;
}

unint64_t sub_7EFA4()
{
  result = qword_19D978;
  if (!qword_19D978)
  {
    sub_558C(&qword_19D980);
    sub_7F05C();
    sub_7FAA8(&qword_19AD70, &qword_19AD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19D978);
  }

  return result;
}

unint64_t sub_7F05C()
{
  result = qword_19D988;
  if (!qword_19D988)
  {
    sub_558C(&qword_19D990);
    sub_7F0E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19D988);
  }

  return result;
}

unint64_t sub_7F0E8()
{
  result = qword_19D998;
  if (!qword_19D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19D998);
  }

  return result;
}

uint64_t sub_7F14C()
{

  v0 = sub_7FD34();

  return _swift_deallocObject(v0, v1, v2);
}

unint64_t sub_7F1EC()
{
  result = qword_19D9C8;
  if (!qword_19D9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19D9C8);
  }

  return result;
}

uint64_t sub_7F240(uint64_t a1, uint64_t a2)
{
  v3 = sub_7FD80(a1, a2);
  sub_4948(v3);
  sub_9F94();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_7F294(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_45BA8();
  v4 = sub_17208();
  v5(v4);
  return a2;
}

uint64_t sub_7F324()
{
  v1 = *(type metadata accessor for TransitionButton(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_4948(&qword_19D698);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13A954();
    sub_9F94();
    (*(v3 + 8))(v0 + v2);
  }

  else
  {
  }

  v4 = sub_7FD04();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_7F464(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TransitionButton(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_7F560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_7F5F0()
{
  v0 = sub_17208();
  sub_558C(v0);
  sub_7FBE8();
  sub_7FAA8(v1, &qword_19D9B8);
  sub_7F1EC();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_7F6AC()
{
  result = qword_19DA20;
  if (!qword_19DA20)
  {
    sub_558C(&qword_19DA00);
    sub_7F764();
    sub_7FAA8(&qword_19AB40, &qword_19AB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19DA20);
  }

  return result;
}

unint64_t sub_7F764()
{
  result = qword_19DA28;
  if (!qword_19DA28)
  {
    sub_558C(&qword_19D9F8);
    sub_7F7F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19DA28);
  }

  return result;
}

unint64_t sub_7F7F0()
{
  result = qword_19DA30;
  if (!qword_19DA30)
  {
    sub_558C(&qword_19D9F0);
    sub_7F87C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19DA30);
  }

  return result;
}

unint64_t sub_7F87C()
{
  result = qword_19DA38;
  if (!qword_19DA38)
  {
    sub_558C(&qword_19DA18);
    sub_7F908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19DA38);
  }

  return result;
}

unint64_t sub_7F908()
{
  result = qword_19DA40;
  if (!qword_19DA40)
  {
    sub_558C(&qword_19DA10);
    sub_7F9C0();
    sub_7FAA8(&qword_19AD80, &qword_19AD88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19DA40);
  }

  return result;
}

unint64_t sub_7F9C0()
{
  result = qword_19DA48;
  if (!qword_19DA48)
  {
    sub_558C(&qword_19DA08);
    sub_7DD78(&qword_19DA50, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_7FAA8(&qword_19DA58, &unk_19DA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19DA48);
  }

  return result;
}

uint64_t sub_7FAA8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = sub_7FD80(0, a2);
    sub_558C(v4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_7FAEC()
{
  sub_558C(&qword_19DA00);
  sub_7F6AC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_7FB6C()
{

  return swift_once();
}

void sub_7FD14(uint64_t a1@<X8>)
{
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0;
}

uint64_t sub_7FD50()
{
}

uint64_t sub_7FDA4()
{
  *(v2 - 160) = v0;
  *(v2 - 152) = v1;

  return sub_13B234();
}

uint64_t sub_7FDC4()
{
  sub_3DE78();
  result = sub_801DC();
  *v0 = result;
  return result;
}

uint64_t sub_7FE10()
{
  sub_3DE78();
  result = sub_800CC();
  *v0 = result;
  return result;
}

uint64_t sub_7FE5C()
{
  swift_getKeyPath();
  sub_805C4();
  sub_8078C();

  return *(v0 + 16);
}

uint64_t sub_7FEBC(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    swift_getKeyPath();
    sub_73DF8();
    __chkstk_darwin(v2);
    sub_80778();
    sub_807B8();
  }

  return result;
}

uint64_t sub_7FF44()
{
  swift_getKeyPath();
  sub_805C4();
  sub_8078C();

  return *(v0 + 24);
}

uint64_t sub_7FFA4(uint64_t result)
{
  if (*(v1 + 24) != result)
  {
    swift_getKeyPath();
    sub_73DF8();
    __chkstk_darwin(v2);
    sub_80778();
    sub_807B8();
  }

  return result;
}

uint64_t sub_8002C()
{
  v0 = sub_800CC();
  result = sub_7FF44();
  v2 = v0 * result;
  if ((v0 * result) >> 64 != (v0 * result) >> 63)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = sub_7FE5C();
  v4 = sub_800CC();
  v5 = sub_7FF44();
  result = v4 * v5;
  v6 = (v4 * v5) >> 64 != (v4 * v5) >> 63;
  if (v2 != v3)
  {
    goto LABEL_7;
  }

  if (v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!__OFSUB__(result--, 1))
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_7:
  if (v6)
  {
LABEL_13:
    __break(1u);
    return result;
  }

LABEL_8:

  return sub_8023C(result);
}

uint64_t sub_800CC()
{
  swift_getKeyPath();
  sub_805C4();
  sub_8078C();

  return *(v0 + 32);
}

uint64_t sub_8012C(uint64_t a1)
{
  if (*(v1 + 32) == a1)
  {

    return sub_8002C();
  }

  else
  {
    swift_getKeyPath();
    sub_73DF8();
    __chkstk_darwin(v3);
    sub_80778();
    sub_807B8();
  }
}

uint64_t sub_801DC()
{
  swift_getKeyPath();
  sub_805C4();
  sub_8078C();

  return *(v0 + 40);
}

uint64_t sub_8023C(uint64_t result)
{
  if (*(v1 + 40) != result)
  {
    swift_getKeyPath();
    sub_73DF8();
    __chkstk_darwin(v2);
    sub_80778();
    sub_807B8();
  }

  return result;
}

uint64_t sub_802C4()
{
  if (sub_7FE5C() < 1)
  {
    return 0;
  }

  v0 = sub_7FE5C();
  result = sub_7FF44();
  v2 = ceil(v0 / result);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v2 > -9.22337204e18)
  {
    if (v2 < 9.22337204e18)
    {
      return v2;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_803D8()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin19CarouselPaddleModel___observationRegistrar;
  v2 = sub_1398B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for CarouselPaddleModel()
{
  result = qword_19DA98;
  if (!qword_19DA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_804C8()
{
  result = sub_1398B4();
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

uint64_t sub_8056C()
{
  sub_3DE78();
  result = sub_801DC();
  *v0 = result;
  return result;
}

unint64_t sub_805C4()
{
  result = qword_19DC38;
  if (!qword_19DC38)
  {
    type metadata accessor for CarouselPaddleModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19DC38);
  }

  return result;
}

uint64_t sub_8061C()
{
  sub_3DE78();
  result = sub_800CC();
  *v0 = result;
  return result;
}

uint64_t sub_8069C()
{
  sub_3DE78();
  result = sub_7FF44();
  *v0 = result;
  return result;
}

uint64_t sub_806E8()
{
  sub_3DE78();
  result = sub_7FE5C();
  *v0 = result;
  return result;
}

uint64_t sub_80740()
{
  *(v0 + 16) = xmmword_13F2A0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  sub_1398A4();
  return v0;
}

uint64_t sub_8078C()
{

  return sub_139874();
}

uint64_t sub_807B8()
{

  return sub_80350();
}

_BYTE *storeEnumTagSinglePayload for PaddleMouseState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x8089CLL);
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

uint64_t sub_808E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_4948(&qword_19A968);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_52E0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_809B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_4948(&qword_19A968);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_53A8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for CarouselPaddle()
{
  result = qword_19DC98;
  if (!qword_19DC98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_80ABC()
{
  sub_80C20(319, &qword_19A9E0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_80C84(319, &qword_19D8E0, &type metadata for Bool, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_80C20(319, &qword_19DCA8, type metadata accessor for CarouselPaddleModel, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_80C84(319, &unk_19DCB0, &type metadata for PaddleMouseState, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_80C20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_80C84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PaddleOrientation(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x80DA0);
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

uint64_t sub_80DD8(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_1842F8;
  v7._object = a2;
  v4 = sub_13C104(v3, v7);

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

unint64_t sub_80E2C(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_80E60@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_13AB24();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4948(&qword_19AC58);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  sub_825A0(v2, &v16 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13A734();
    sub_9F94();
    return (*(v13 + 32))(a1, v12);
  }

  else
  {
    sub_13BD54();
    v15 = sub_13AE64();
    sub_13A004();

    sub_13AB14();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v4);
  }
}

uint64_t sub_8104C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_80DD8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_8107C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_80E2C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_810AC()
{
  result = qword_19DCF0;
  if (!qword_19DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19DCF0);
  }

  return result;
}

uint64_t sub_8111C()
{
  v1 = sub_13A734();
  sub_9E94();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v19[-v8];
  v10 = (v0 + *(type metadata accessor for CarouselPaddle() + 32));
  v11 = *v10;
  v12 = *(v10 + 1);
  v21 = *v10;
  v22 = v12;
  sub_4948(&qword_19DD40);
  sub_13B234();
  if (v20 == 1)
  {
    v13 = objc_opt_self();
    v14 = &selRef_ams_quaternarySystemFillColor;
  }

  else
  {
    v21 = v11;
    v22 = v12;
    sub_13B234();
    if (v20 == 2)
    {
      sub_80E60(v9);
      (*(v3 + 104))(v6, enum case for ColorScheme.dark(_:), v1);
      v15 = sub_13A724();
      v16 = *(v3 + 8);
      v16(v6, v1);
      v16(v9, v1);
      v13 = objc_opt_self();
      v14 = &selRef_ams_quaternarySystemFillColor;
      if (v15)
      {
        v14 = &selRef_ams_tertiarySystemFillColor;
      }
    }

    else
    {
      v13 = objc_opt_self();
      v14 = &selRef_ams_clear;
    }
  }

  v17 = [v13 *v14];
  return sub_13B1E4();
}

uint64_t sub_81338@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v80 = a1;
  v89 = type metadata accessor for CarouselPaddle();
  sub_9E94();
  v86 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v6);
  v87 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v79 - v8;
  v10 = sub_4948(&qword_19DD00) - 8;
  sub_171D0();
  __chkstk_darwin(v11);
  v13 = &v79 - v12;
  v82 = sub_4948(&qword_19DD08);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v14);
  v16 = &v79 - v15;
  v83 = sub_4948(&qword_19DD10);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v17);
  v85 = &v79 - v18;
  v84 = sub_4948(&qword_19DD18);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v19);
  v88 = &v79 - v20;
  v21 = *(sub_13A9A4() + 20);
  v22 = enum case for RoundedCornerStyle.circular(_:);
  sub_13ABA4();
  sub_9F94();
  (*(v23 + 104))(&v13[v21], v22);
  __asm { FMOV            V0.2D, #6.0 }

  *v13 = _Q0;
  v29 = sub_8111C();
  v30 = sub_4948(&qword_19DD20);
  *&v13[*(v30 + 52)] = v29;
  *&v13[*(v30 + 56)] = 256;
  v31 = sub_13B3C4();
  v33 = v32;
  sub_81AB8(v2, &v94);
  v34 = v95;
  v35 = DWORD2(v95);
  v81 = v94;
  v36 = &v13[*(sub_4948(&qword_19DD28) + 36)];
  *v36 = v81;
  *(v36 + 2) = v34;
  *(v36 + 6) = v35;
  *(v36 + 4) = v31;
  *(v36 + 5) = v33;
  sub_13B3C4();
  sub_13A834();
  v37 = &v13[*(v10 + 44)];
  v38 = v95;
  *v37 = v94;
  *(v37 + 1) = v38;
  *(v37 + 2) = v96;
  sub_4948(&qword_19AAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_13E650;
  LOBYTE(v33) = sub_13AEE4();
  *(inited + 32) = v33;
  v40 = sub_13AF04();
  *(inited + 33) = v40;
  v41 = sub_13AEF4();
  sub_13AEF4();
  if (sub_13AEF4() != v33)
  {
    v41 = sub_13AEF4();
  }

  sub_13AEF4();
  if (sub_13AEF4() != v40)
  {
    v41 = sub_13AEF4();
  }

  v42 = v88;
  sub_13A6E4();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_6D49C(v13, v16, &qword_19DD00);
  v51 = &v16[*(v82 + 36)];
  *v51 = v41;
  *(v51 + 1) = v44;
  *(v51 + 2) = v46;
  *(v51 + 3) = v48;
  *(v51 + 4) = v50;
  v51[40] = 0;
  sub_821D8(v2, v9);
  v52 = (*(v86 + 80) + 16) & ~*(v86 + 80);
  v53 = swift_allocObject();
  sub_82240(v9, v53 + v52);
  v54 = v16;
  v55 = v85;
  sub_6D49C(v54, v85, &qword_19DD08);
  v56 = (v55 + *(v83 + 36));
  *v56 = sub_822A4;
  v56[1] = v53;
  sub_821D8(v2, v9);
  v57 = swift_allocObject();
  sub_82240(v9, v57 + v52);
  v58 = v87;
  sub_821D8(v2, v87);
  v59 = swift_allocObject();
  sub_82240(v58, v59 + v52);
  sub_6D49C(v55, v42, &qword_19DD10);
  v60 = (v42 + *(v84 + 36));
  *v60 = sub_82314;
  v60[1] = v57;
  v60[2] = sub_82480;
  v60[3] = v59;
  v61 = v89;
  v62 = v2 + *(v89 + 20);
  v63 = *v62;
  v64 = *(v62 + 8);
  LOBYTE(v62) = *(v62 + 16);
  v91 = v63;
  v92 = v64;
  v93 = v62;
  sub_4948(&qword_19D9D0);
  sub_82A64();
  sub_13B2C4();
  v65 = 0.0;
  if (v90 != 1)
  {
    goto LABEL_19;
  }

  v66 = "chevron.compact.left";
  if (!*(v2 + *(v61 + 24)))
  {
    v66 = "wAll";
  }

  if ((*(v2 + *(v61 + 24)) & 1) == 0 && (v66 | 0x8000000000000000) == 0x800000000014E520)
  {

    goto LABEL_12;
  }

  v67 = sub_13C144();

  if (v67)
  {
LABEL_12:
    v68 = (v2 + *(v61 + 28));
    v70 = *v68;
    v69 = v68[1];
    v91 = v70;
    v92 = v69;
    sub_4948(&qword_19DD38);
    sub_82A64();
    sub_13B234();
    v71 = sub_800CC();

    if (v71 <= 0)
    {
      v65 = 0.0;
    }

    else
    {
      v65 = 1.0;
    }

LABEL_19:
    v78 = v80;
    sub_6D49C(v42, v80, &qword_19DD18);
    result = sub_4948(&qword_19DD30);
    *(v78 + *(result + 36)) = v65;
    return result;
  }

  v72 = (v2 + *(v61 + 28));
  v74 = v72[1];
  v91 = *v72;
  v73 = v91;
  v92 = v74;
  sub_4948(&qword_19DD38);
  sub_82A64();
  sub_13B234();
  v75 = sub_800CC();

  v91 = v73;
  v92 = v74;
  sub_82A64();
  sub_13B234();
  v76 = sub_802C4();

  if (!__OFSUB__(v76, 1))
  {
    if (v75 >= v76 - 1)
    {
      v65 = 0.0;
    }

    else
    {
      v65 = 1.0;
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_81AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_4948(&qword_19DD48);
  __chkstk_darwin(v4 - 8);
  v6 = &v16[-v5];
  v7 = type metadata accessor for CarouselPaddle();
  v8 = sub_13B204();
  v9 = sub_13AF44();
  sub_53A8(v6, 1, 1, v9);
  v10 = sub_13AF74();
  sub_82530(v6);
  KeyPath = swift_getKeyPath();
  v12 = (a1 + *(v7 + 32));
  v13 = *v12;
  v14 = *(v12 + 1);
  v16[16] = v13;
  v17 = v14;
  sub_4948(&qword_19DD40);
  sub_13B234();
  if (v16[15] == 2)
  {
    result = sub_13AD54();
  }

  else
  {
    result = sub_13AD64();
  }

  *a2 = v8;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v10;
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_81C38()
{
  type metadata accessor for CarouselPaddle();
  sub_4948(&qword_19DD40);
  return sub_13B244();
}

uint64_t sub_81CAC()
{
  type metadata accessor for CarouselPaddle();
  sub_4948(&qword_19DD40);
  return sub_13B244();
}

uint64_t sub_81D20()
{
  type metadata accessor for CarouselPaddle();
  sub_4948(&qword_19DD40);
  sub_13B244();
  sub_13B404();
  sub_13A8E4();
}

uint64_t sub_81DDC(uint64_t a1)
{
  v2 = type metadata accessor for CarouselPaddle();
  v3 = *(a1 + *(v2 + 24));
  KeyPath = "chevron.compact.left";
  if (*(a1 + *(v2 + 24)))
  {
    v5 = "chevron.compact.left";
  }

  else
  {
    v5 = "wAll";
  }

  v6 = 0x800000000014E520;
  if ((v3 & 1) != 0 || (v5 | 0x8000000000000000) != 0x800000000014E520)
  {
    v7 = sub_13C144();

    if ((v7 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  sub_4948(&qword_19DD38);
  sub_13B234();
  v8 = sub_800CC();

  KeyPath = "chevron.compact.left";
  if (v8 >= 1)
  {
    sub_13B234();
    v9 = v20;
    KeyPath = swift_getKeyPath();
    v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin19CarouselPaddleModel___observationRegistrar;
    sub_805C4();
    sub_139874();

    v6 = swift_getKeyPath();
    sub_139894();

    v10 = *(v20 + 32);
    v11 = __OFSUB__(v10, 1);
    v12 = v10 - 1;
    if (!v11)
    {
      goto LABEL_23;
    }

    __break(1u);
  }

LABEL_12:
  if (v3)
  {
    v13 = KeyPath | 0x8000000000000000;
  }

  else
  {
    v13 = v6;
  }

  v14 = v3 ^ 1;
  if ((KeyPath | 0x8000000000000000) != v13)
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = sub_13C144();

    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
  }

  sub_4948(&qword_19DD38);
  sub_13B234();
  v17 = sub_800CC();

  sub_13B234();
  v18 = sub_802C4();

  if (__OFSUB__(v18, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v17 >= v18 - 1)
  {
    return result;
  }

  sub_13B234();
  v9 = v20;
  swift_getKeyPath();
  sub_805C4();
  sub_139874();

  swift_getKeyPath();
  sub_139894();

  v19 = *(v20 + 32);
  v11 = __OFADD__(v19, 1);
  v12 = v19 + 1;
  if (v11)
  {
LABEL_26:
    __break(1u);
    return result;
  }

LABEL_23:
  *(v9 + 32) = v12;
  sub_8002C();
  swift_getKeyPath();
  sub_139884();
}

unint64_t sub_82184()
{
  result = qword_19DCF8;
  if (!qword_19DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19DCF8);
  }

  return result;
}

uint64_t sub_821D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarouselPaddle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_82240(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarouselPaddle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_822A4()
{
  type metadata accessor for CarouselPaddle();

  return sub_81C38();
}

uint64_t sub_8232C()
{
  v1 = *(type metadata accessor for CarouselPaddle() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_4948(&qword_19AC58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13A734();
    sub_9F94();
    (*(v5 + 8))(v0 + v3);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_82498(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CarouselPaddle() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_82530(uint64_t a1)
{
  v2 = sub_4948(&qword_19DD48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_825A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19AC58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_82614()
{
  result = qword_19DD50;
  if (!qword_19DD50)
  {
    sub_558C(&qword_19DD30);
    sub_826A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19DD50);
  }

  return result;
}

unint64_t sub_826A0()
{
  result = qword_19DD58;
  if (!qword_19DD58)
  {
    sub_558C(&qword_19DD18);
    sub_8272C();
    sub_82A08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19DD58);
  }

  return result;
}

unint64_t sub_8272C()
{
  result = qword_19DD60;
  if (!qword_19DD60)
  {
    sub_558C(&qword_19DD10);
    sub_827B8();
    sub_829B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19DD60);
  }

  return result;
}

unint64_t sub_827B8()
{
  result = qword_19DD68;
  if (!qword_19DD68)
  {
    sub_558C(&qword_19DD08);
    sub_82844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19DD68);
  }

  return result;
}

unint64_t sub_82844()
{
  result = qword_19DD70;
  if (!qword_19DD70)
  {
    sub_558C(&qword_19DD00);
    sub_828D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19DD70);
  }

  return result;
}

unint64_t sub_828D0()
{
  result = qword_19DD78;
  if (!qword_19DD78)
  {
    sub_558C(&qword_19DD28);
    sub_CBC0(&qword_19DD80, &qword_19DD20);
    sub_CBC0(&qword_19DD88, &qword_19DD90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19DD78);
  }

  return result;
}

unint64_t sub_829B4()
{
  result = qword_19DD98;
  if (!qword_19DD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19DD98);
  }

  return result;
}

unint64_t sub_82A08()
{
  result = qword_19DDA0;
  if (!qword_19DDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19DDA0);
  }

  return result;
}

uint64_t sub_82A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_13B644();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_82B04@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a2;
  v78 = a3;
  v4 = sub_4948(&qword_19B2B0);
  __chkstk_darwin(v4 - 8);
  v83 = &v74 - v5;
  v6 = sub_4948(&qword_19DDA8);
  __chkstk_darwin(v6 - 8);
  v87 = &v74 - v7;
  v8 = sub_13B584();
  sub_9E94();
  v10 = v9;
  __chkstk_darwin(v11);
  v77 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v84 = &v74 - v14;
  __chkstk_darwin(v15);
  v81 = &v74 - v16;
  __chkstk_darwin(v17);
  v19 = &v74 - v18;
  v20 = sub_13B644();
  sub_9E94();
  v86 = v21;
  __chkstk_darwin(v22);
  sub_21548();
  v80 = v23;
  v24 = type metadata accessor for ChannelLinkAction();
  sub_2B538();
  __chkstk_darwin(v25);
  sub_21548();
  v89 = v26;
  sub_139BD4();
  inited = swift_initStackObject();
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_4;
  }

  v85 = v24;
  v88 = v8;
  v27 = a1;
  v28 = v87;
  sub_83C8();
  if (sub_52E0(v28, 1, v20) == 1)
  {
    sub_184DC(v28, &qword_19DDA8);
    v8 = v88;
    v24 = v85;
LABEL_4:
    sub_13BAB4();
    sub_8445C();
    sub_84418(v29, v30);
    sub_18BF0();
    swift_allocError();
    strcpy(v31, "actionMetrics");
    *(v31 + 7) = -4864;
    *(v31 + 2) = v24;
    sub_2B538();
    (*(v32 + 104))();
    swift_willThrow();
    v33 = *(v10 + 8);
    v33(a1, v8);
    v33(v19, v8);
    sub_13B5A4();
    sub_5224();
    return (*(v34 + 8))(v95);
  }

  v76 = *(v10 + 8);
  v76(v19, v88);
  v36 = *(v86 + 32);
  v37 = v80;
  v36(v80, v28, v20);
  v38 = v85;
  v75 = *(v85 + 40);
  v80 = v20;
  v36(v89 + v75, v37, v20);
  v39 = v82;
  v40 = sub_2B07C(0xD00000000000001BLL, 0x800000000014FC00, v38);
  v41 = v39;
  if (v39)
  {

    v40 = 0;
    v41 = 0;
  }

  v42 = v83;
  v83 = v40;
  *v89 = v40;
  v43 = v81;
  sub_13B594();
  sub_13B514();
  v76(v43, v88);
  v44 = sub_13B694();
  if (sub_52E0(v42, 1, v44) == 1)
  {
    sub_184DC(v42, &qword_19B2B0);
    v45 = 0;
  }

  else
  {
    v45 = sub_13B684();
    sub_2B538();
    (*(v46 + 8))(v42, v44);
  }

  v47 = v85;
  v85 = v45;
  v89[1] = v45;
  sub_13B594();
  v48 = sub_13B564();
  v87 = v27;
  if (v48)
  {
    goto LABEL_13;
  }

  sub_139BC4();
  if (v41)
  {

    v91 = 0;
    memset(v90, 0, sizeof(v90));
    sub_184DC(v90, &unk_19E320);
LABEL_13:
    sub_13BAB4();
    sub_8445C();
    sub_84418(v49, v50);
    sub_18BF0();
    swift_allocError();
    strcpy(v51, "failureAction");
    *(v51 + 7) = -4864;
    *(v51 + 2) = v47;
    sub_2B538();
    (*(v52 + 104))();
    swift_willThrow();
    sub_84474();
    v53();

    v94 = 0;
    v92 = 0u;
    v93 = 0u;
    goto LABEL_14;
  }

  sub_84474();
  v58();
  sub_9414(v90, &v92);
LABEL_14:
  v54 = v89;
  v55 = v89 + *(v47 + 44);
  v56 = v93;
  *v55 = v92;
  *(v55 + 1) = v56;
  *(v55 + 4) = v94;
  *(v54 + 16) = sub_BB458() & 1;
  v54[3] = sub_BB310();
  v54[4] = v57;
  v54[5] = sub_BB310();
  v54[6] = v59;
  sub_13B594();
  v60 = sub_13B564();
  if (v60)
  {
    sub_13BAB4();
    sub_8445C();
    sub_84418(v61, v62);
    swift_allocError();
    strcpy(v63, "successAction");
    *(v63 + 7) = -4864;
    *(v63 + 2) = v47;
    sub_2B538();
    (*(v64 + 104))();
    swift_willThrow();
    v65 = sub_84484();
    MEMORY[0xED00006E6F697462](v65);

    v94 = 0;
    v92 = 0u;
    v93 = 0u;
  }

  else
  {
    sub_139BC4();
    v73 = sub_84484();
    MEMORY[0xED00006E6F697462](v73);
    sub_9414(v90, &v92);
  }

  v66 = v89 + *(v47 + 48);
  v67 = v93;
  *v66 = v92;
  *(v66 + 1) = v67;
  *(v66 + 4) = v94;
  v68 = v87;
  v69 = sub_BB5C4(0xD000000000000013, 0x800000000014FC60, v47);
  v70 = sub_8366C(v69);

  MEMORY[0xED00006E6F697462](v68, v88);
  v71 = v89;
  v89[7] = v70;
  sub_83790(v71, v78);
  sub_13B5A4();
  sub_5224();
  (*(v72 + 8))(v95);
  return sub_837F4(v71);
}

uint64_t sub_8366C(uint64_t a1)
{
  result = sub_13BCD4();
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_83850(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for ChannelLinkAction()
{
  result = qword_19DE10;
  if (!qword_19DE10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_83790(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelLinkAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_837F4(uint64_t a1)
{
  v2 = type metadata accessor for ChannelLinkAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_83850(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  sub_13C214();
  sub_13BBA4();
  v8 = sub_13C234();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_13C144() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_83BF8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_8399C()
{
  v1 = v0;
  v2 = *v0;
  sub_4948(&qword_19DDB0);
  result = sub_13BFD4();
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
      sub_7D0F0(0, (v27 + 63) >> 6, v2 + 56);
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
    sub_13C214();
    sub_13BBA4();
    result = sub_13C234();
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