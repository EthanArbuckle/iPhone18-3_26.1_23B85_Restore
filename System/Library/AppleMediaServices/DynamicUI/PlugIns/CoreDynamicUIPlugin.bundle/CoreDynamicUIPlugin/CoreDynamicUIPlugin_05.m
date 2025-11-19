void sub_7F644()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC19CoreDynamicUIPlugin23ShelfPageViewController_collectionLayoutViewController);

    v3 = [v2 view];
    sub_889B4(0, 0, 1.0, 0.1);
  }
}

id sub_7F780()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShelfPageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_7F864()
{
}

uint64_t sub_7F8D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfPagePresenter.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7F938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfPage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_7F99C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_4248();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_7F9F4()
{
  swift_unknownObjectWeakDestroy();
  sub_13EC8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_7FA30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_7FA48()
{
  swift_weakDestroy();
  sub_13EC8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_7FA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a4;
  v7 = a3;
  v8 = a2;
  v6 = a1;
  v13 = *v5;
  v10 = *v5 & 0xFFFFFFFFFFFFFF8;
  v11 = v10 + 32;
  v9 = v10 + 32 + 8 * a1;
  sub_332C(&qword_C6B48);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v7, v12);
  v12 = v7 - v12;
  if (v15)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = (v9 + 8 * v7);
  if (!v12)
  {
    goto LABEL_12;
  }

  v9 = v13 >> 62;
  if (!(v13 >> 62))
  {
    result = *(v10 + 16);
    goto LABEL_6;
  }

LABEL_21:
  result = sub_8FAC4();
LABEL_6:
  if (__OFSUB__(result, v8))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  sub_33F14((v11 + 8 * v8), result - v8, v5);
  if (v9)
  {
    result = sub_8FAC4();
  }

  else
  {
    result = *(v10 + 16);
  }

  if (__OFADD__(result, v12))
  {
    goto LABEL_23;
  }

  *(v10 + 16) = result + v12;
LABEL_12:
  if (v7 < 1)
  {
  }

  else
  {
    v16 = v10 + 8 * v6;
    *(v16 + 32) = v4;
    if (v16 + 40 < v5)
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_7FBE4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_8FAC4();
  }

  else
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_7FC3C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_CE5C(0, &qword_C44A8);
  sub_80210();
  v4 = sub_8F6C4();

  return v4;
}

void sub_7FCA4(uint64_t a1, char a2, void *a3)
{
  sub_CE5C(0, &qword_C44A8);
  isa = sub_8F6B4().super.isa;
  [a3 setLeftBarButtonItems:isa animated:a2 & 1];
}

uint64_t sub_7FD30(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  sub_CE5C(0, &qword_C44A8);
  sub_80210();
  v4 = sub_8F6C4();

  return v4;
}

void sub_7FDA0(uint64_t a1, void *a2)
{
  sub_CE5C(0, &qword_C44A8);
  isa = sub_8F6B4().super.isa;
  [a2 setRightBarButtonItems:isa];
}

uint64_t sub_7FE1C()
{

  sub_13EC8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_7FE58()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_7FEB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_7FEFC()
{

  if (*(v0 + 48) != 1)
  {
  }

  if (*(v0 + 128))
  {
    sub_4F30(v0 + 104);
  }

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_80040()
{
  if (*(v0 + 64))
  {
    sub_4F30(v0 + 16);
  }

  else
  {
  }

  return _swift_deallocObject(v0, 66, 7);
}

uint64_t sub_80110(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_332C(a3);
  sub_4248();
  v4 = sub_801F8();
  v5(v4);
  return a2;
}

id sub_8021C()
{
  v7 = *(v1 + 2072);

  return [v0 v7];
}

uint64_t sub_80250(uint64_t a1)
{

  return sub_33C0(v1, 1, a1);
}

id sub_802CC()
{
  v3 = *(v1 + 2040);

  return [v0 v3];
}

uint64_t sub_802E8()
{
  v0 = sub_8F5F4();
  v2 = v1;
  if (v0 == sub_8F5F4() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_83F3C();
  }

  return v5 & 1;
}

uint64_t sub_80360(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 7368564;
  }

  else
  {
    v3 = 0x6D6F74746F62;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (a2)
  {
    v5 = 7368564;
  }

  else
  {
    v5 = 0x6D6F74746F62;
  }

  if (a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_83F3C();
  }

  return v8 & 1;
}

uint64_t sub_803E8()
{
  sub_84084();
  if (v4)
  {
    v8 = sub_83FF4(v1, v2, v3);
  }

  else
  {
    sub_83F58();
    if (v4)
    {
      v8 = 0x65736F6C63;
    }

    else
    {
      v8 = 1701736292;
    }

    if (v4)
    {
      v0 = v7;
    }

    else
    {
      v0 = 0xE400000000000000;
    }
  }

  if (v5)
  {
    sub_83F58();
    if (v9)
    {
      v6 = 0x65736F6C63;
    }

    else
    {
      v6 = 1701736292;
    }

    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0xE400000000000000;
    }
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  if (v8 == v6 && v0 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_83F3C();
  }

  return v13 & 1;
}

uint64_t sub_804A4()
{
  sub_84050();
  if (v4)
  {
    v8 = sub_83FF4(v1, v2, v3);
  }

  else
  {
    sub_83F58();
    if (v4)
    {
      v8 = 0x6E69616C70;
    }

    else
    {
      v8 = 0x6D6574737973;
    }

    if (v4)
    {
      v0 = v7;
    }

    else
    {
      v0 = 0xE600000000000000;
    }
  }

  if (v5)
  {
    sub_83F58();
    if (v9)
    {
      v6 = 0x6E69616C70;
    }

    else
    {
      v6 = 0x6D6574737973;
    }

    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0xE600000000000000;
    }
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  if (v8 == v6 && v0 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_83F3C();
  }

  return v13 & 1;
}

uint64_t sub_80568(char a1, char a2)
{
  v2 = 0xEA00000000007379;
  v3 = 0x61776C41776F6873;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x63536E4F776F6873;
    }

    else
    {
      v4 = 0x63536E4F65646968;
    }

    v5 = 0xEC0000006C6C6F72;
  }

  else
  {
    v4 = 0x61776C41776F6873;
    v5 = 0xEA00000000007379;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x63536E4F776F6873;
    }

    else
    {
      v3 = 0x63536E4F65646968;
    }

    v2 = 0xEC0000006C6C6F72;
  }

  if (v4 == v3 && v5 == v2)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_8FB54();
  }

  return v7 & 1;
}

uint64_t sub_80664(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_83F64();
    if (v3)
    {
      v7 = 1952867692;
    }

    else
    {
      v7 = 0x7468676972;
    }

    if (v3)
    {
      v2 = v6;
    }

    else
    {
      v2 = 0xE500000000000000;
    }
  }

  else
  {
    v7 = sub_83FF4(a1, a2, 0x7265746E6563);
  }

  if (v4)
  {
    sub_83F64();
    if (v8)
    {
      v5 = 1952867692;
    }

    else
    {
      v5 = 0x7468676972;
    }

    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0xE500000000000000;
    }
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v7 == v5 && v2 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_83F3C();
  }

  return v12 & 1;
}

uint64_t sub_8072C(unsigned __int8 a1, char a2)
{
  v2 = 0x6E6564646968;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x6E6564646968;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x656772616CLL;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x6E69616C70;
      break;
    case 3:
      v5 = 0xD000000000000019;
      v3 = 0x800000000009D870;
      break;
    case 4:
      v5 = 0x726170736E617274;
      v3 = 0xEB00000000746E65;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x656772616CLL;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x6E69616C70;
      break;
    case 3:
      v2 = 0xD000000000000019;
      v6 = 0x800000000009D870;
      break;
    case 4:
      v2 = 0x726170736E617274;
      v6 = 0xEB00000000746E65;
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
    v8 = sub_83F3C();
  }

  return v8 & 1;
}

uint64_t sub_808C0()
{
  sub_84098();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_8FB54();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_8092C(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  sub_84098();
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
    v8 = sub_83F3C();
  }

  return v8 & 1;
}

uint64_t sub_809B8(unsigned __int8 a1, char a2)
{
  v2 = 1819043171;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1819043171;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x6C6C65436B6E696CLL;
      break;
    case 2:
      v5 = 0x656C746974627573;
      v3 = 0xEC0000006C6C6543;
      break;
    case 3:
      v5 = 0x6C654365756C6176;
      v3 = 0xE90000000000006CLL;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x6C6C65436B6E696CLL;
      break;
    case 2:
      v2 = 0x656C746974627573;
      v6 = 0xEC0000006C6C6543;
      break;
    case 3:
      v2 = 0x6C654365756C6176;
      v6 = 0xE90000000000006CLL;
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
    v8 = sub_83F3C();
  }

  return v8 & 1;
}

uint64_t sub_80B2C()
{
  sub_84050();
  if (v4)
  {
    v8 = sub_83FF4(v1, v2, v3);
  }

  else
  {
    sub_83F64();
    if (v4)
    {
      v8 = 2036625250;
    }

    else
    {
      v8 = 0x7265746F6F66;
    }

    if (v4)
    {
      v0 = v7;
    }

    else
    {
      v0 = 0xE600000000000000;
    }
  }

  if (v5)
  {
    sub_83F64();
    if (v9)
    {
      v6 = 2036625250;
    }

    else
    {
      v6 = 0x7265746F6F66;
    }

    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0xE600000000000000;
    }
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  if (v8 == v6 && v0 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_83F3C();
  }

  return v13 & 1;
}

uint64_t sub_80BEC(unsigned __int8 a1, char a2)
{
  v2 = 1701736302;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701736302;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x656C676E6973;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x656C7069746C756DLL;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x686374697773;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x656C676E6973;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v2 = 0x656C7069746C756DLL;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x686374697773;
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
    v8 = sub_83F3C();
  }

  return v8 & 1;
}

uint64_t sub_80D38(unsigned __int8 a1, char a2)
{
  v2 = 0x6E69616C70;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x6E69616C70;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x646570756F7267;
      break;
    case 2:
      v5 = 0x6F72477465736E69;
      v3 = 0xEC00000064657075;
      break;
    case 3:
      v5 = 0xD000000000000012;
      v3 = 0x800000000009D820;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x646570756F7267;
      break;
    case 2:
      v2 = 0x6F72477465736E69;
      v6 = 0xEC00000064657075;
      break;
    case 3:
      v2 = 0xD000000000000012;
      v6 = 0x800000000009D820;
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
    v8 = sub_83F3C();
  }

  return v8 & 1;
}

uint64_t sub_80EA4()
{
  sub_84098();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_8FB54();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_80F18(char a1, char a2)
{
  v2 = 0x746C7561666564;
  if (a1)
  {
    sub_83F00();
    sub_8403C();
    if (v4 == 1)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    if (v4 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = (v3 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
    v8 = 0x746C7561666564;
  }

  if (a2)
  {
    sub_83F00();
    sub_8403C();
    v15 = (v14 - 32) | 0x8000000000000000;
    if (v10 == 1)
    {
      v2 = v11;
    }

    else
    {
      v2 = v13;
    }

    if (v10 == 1)
    {
      v16 = v12;
    }

    else
    {
      v16 = v15;
    }
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  if (v8 == v2 && v9 == v16)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_83F3C();
  }

  return v18 & 1;
}

uint64_t sub_80FE4(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6D6F74737563;
  }

  else
  {
    v3 = 0x6C6C616D73;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 0x6D6F74737563;
  }

  else
  {
    v5 = 0x6C6C616D73;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
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
    v8 = sub_8FB54();
  }

  return v8 & 1;
}

uint64_t sub_8107C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6C61636974726576;
  }

  else
  {
    v3 = 0x746E6F7A69726F68;
  }

  if (v2)
  {
    v4 = 0xEA00000000006C61;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (a2)
  {
    v5 = 0x6C61636974726576;
  }

  else
  {
    v5 = 0x746E6F7A69726F68;
  }

  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEA00000000006C61;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_83F3C();
  }

  return v8 & 1;
}

uint64_t sub_81114()
{
  sub_84084();
  if (v4)
  {
    v8 = sub_83FF4(v1, v2, v3);
  }

  else
  {
    sub_84078();
    if (v4)
    {
      v8 = 0x746C7561666564;
    }

    else
    {
      v8 = 0x7463757274736564;
    }

    if (v4)
    {
      v0 = v7;
    }

    else
    {
      v0 = 0xEB00000000657669;
    }
  }

  if (v5)
  {
    sub_84078();
    if (v9)
    {
      v6 = 0x746C7561666564;
    }

    else
    {
      v6 = 0x7463757274736564;
    }

    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0xEB00000000657669;
    }
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  if (v8 == v6 && v0 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_83F3C();
  }

  return v13 & 1;
}

uint64_t sub_811F8(char a1)
{
  if (a1)
  {
    v1 = 0xE500000000000000;
  }

  else
  {
    v1 = 0xEB00000000746565;
  }

  sub_84098();
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
    v8 = sub_83F3C();
  }

  return v8 & 1;
}

uint64_t sub_8128C(unsigned __int8 a1, char a2)
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
    v8 = sub_8FB54();
  }

  return v8 & 1;
}

Swift::Int sub_81444(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_8FC04();
  a2(v5, a1);
  return sub_8FC24();
}

Swift::Int sub_81494(char a1)
{
  sub_8FC04();
  sub_5A790(a1);
  sub_84018();

  return sub_8FC24();
}

Swift::Int sub_81558()
{
  sub_8FC04();
  sub_8F644();
  return sub_8FC24();
}

uint64_t sub_815E0()
{
  sub_8F644();
}

uint64_t sub_81640(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_83F58();
  }

  else
  {
    sub_83F14();
  }

  sub_8F644();
}

uint64_t sub_816AC(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_83F58();
  }

  else
  {
    sub_83F28();
  }

  sub_8F644();
}

uint64_t sub_8171C(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_83F88();
  }

  sub_8F644();
}

uint64_t sub_817A8(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_83F64();
  }

  else
  {
    sub_84064();
  }

  sub_8F644();
}

uint64_t sub_81814(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      sub_840A4();
      break;
    default:
      break;
  }

  sub_8F644();
}

uint64_t sub_818EC()
{
  sub_8F644();
}

uint64_t sub_81934()
{
  sub_8F644();
}

uint64_t sub_819BC()
{
  sub_8F644();
}

uint64_t sub_81A88(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_83F64();
  }

  else
  {
    sub_83F28();
  }

  sub_8F644();
}

uint64_t sub_81AF4()
{
  sub_8F644();
}

uint64_t sub_81BAC()
{
  sub_840A4();
  sub_8F644();
}

uint64_t sub_81C70()
{
  sub_8F644();
}

uint64_t sub_81CD8(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_83F00();
    sub_83FBC();
  }

  else
  {
    sub_84000();
  }

  sub_8F644();
}

uint64_t sub_81D40()
{
  sub_8F644();
}

uint64_t sub_81DA4()
{
  sub_8F644();
}

uint64_t sub_81E14(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_84078();
  }

  else
  {
    sub_83F14();
  }

  sub_8F644();
}

uint64_t sub_81E94()
{
  sub_8F644();
}

uint64_t sub_81F04(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_83FD8();
  }

  sub_8F644();
}

Swift::Int sub_81F88()
{
  sub_83F70();
  sub_83FA4();

  return sub_8FC24();
}

Swift::Int sub_81FFC()
{
  sub_83F70();
  if (v0)
  {
    sub_84078();
  }

  else
  {
    sub_83F14();
  }

  sub_83FA4();

  return sub_8FC24();
}

Swift::Int sub_82080()
{
  sub_8FC04();
  sub_8F644();

  return sub_8FC24();
}

Swift::Int sub_820F8()
{
  sub_83F70();
  if (v0)
  {
    sub_83F00();
    sub_83FBC();
  }

  else
  {
    sub_84000();
  }

  sub_83FA4();

  return sub_8FC24();
}

Swift::Int sub_82178()
{
  sub_83F70();
  sub_8F644();

  return sub_8FC24();
}

Swift::Int sub_82210()
{
  sub_83F70();
  sub_83FA4();

  return sub_8FC24();
}

Swift::Int sub_82284()
{
  sub_83F70();
  if (v0)
  {
    sub_83F64();
  }

  else
  {
    sub_83F28();
  }

  sub_83FA4();

  return sub_8FC24();
}

Swift::Int sub_822F4()
{
  sub_83F70();
  if (!v0)
  {
    sub_83FD8();
  }

  sub_83FA4();

  return sub_8FC24();
}

Swift::Int sub_82390(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_8FC04();
  a3(v6, a2);
  return sub_8FC24();
}

Swift::Int sub_823FC()
{
  sub_8FC04();
  sub_8F644();
  return sub_8FC24();
}

Swift::Int sub_82448()
{
  sub_83F70();
  sub_83FA4();

  return sub_8FC24();
}

Swift::Int sub_824B4()
{
  sub_83F70();
  sub_8F644();

  return sub_8FC24();
}

Swift::Int sub_82510()
{
  sub_83F70();
  sub_5A790(v0);
  sub_84018();

  return sub_8FC24();
}

Swift::Int sub_82554()
{
  sub_83F70();
  if (v0)
  {
    sub_83F64();
  }

  else
  {
    sub_84064();
  }

  sub_83FA4();

  return sub_8FC24();
}

Swift::Int sub_825C4()
{
  sub_83F70();
  if (!v0)
  {
    sub_83F88();
  }

  sub_83FA4();

  return sub_8FC24();
}

Swift::Int sub_82654()
{
  sub_83F70();
  if (v0)
  {
    sub_83F58();
  }

  else
  {
    sub_83F28();
  }

  sub_83FA4();

  return sub_8FC24();
}

Swift::Int sub_826C8()
{
  sub_83F70();
  if (v0)
  {
    sub_83F58();
  }

  else
  {
    sub_83F14();
  }

  sub_83FA4();

  return sub_8FC24();
}

Swift::Int sub_82738()
{
  sub_83F70();
  sub_83FA4();

  return sub_8FC24();
}

uint64_t sub_8279C(char a1)
{
  if (a1)
  {
    return 0x6D6F74737563;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

uint64_t sub_8281C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3._rawValue = &off_B71B0;
  result = sub_5E1FC(*a1, *(a1 + 8), v3);
  *a2 = result;
  return result;
}

uint64_t sub_82854@<X0>(uint64_t *a1@<X8>)
{
  result = sub_58648(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_828A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3._rawValue = &off_B7200;
  result = sub_5E1FC(*a1, *(a1 + 8), v3);
  *a2 = result;
  return result;
}

uint64_t sub_828DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_8279C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_82908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_5D90(1684957547, 0xE400000000000000, &type metadata for SpacerModel.Size, a4, a5, a6, a7, a8);
  if (!v8)
  {
    if (v12)
    {
      sub_47A14();
      v9 = v13;
    }

    else
    {
      v9 = 0;
    }
  }

  sub_8F004();
  sub_887C();
  (*(v14 + 8))(a2);
  sub_8EFE4();
  sub_887C();
  (*(v15 + 8))(a1);
  return v9;
}

uint64_t sub_82A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  result = sub_82908(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
    *(a9 + 8) = v12 & 1;
  }

  return result;
}

uint64_t sub_82A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for SpacerModel(0);
  v8 = *(v7 + 28);
  v9 = sub_8F204();
  sub_33E8(a3 + v8, 1, 1, v9);
  v10 = a3 + *(v7 + 32);
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  sub_473C0();
  if (v3)
  {
    sub_8EFE4();
    sub_887C();
    (*(v11 + 8))(a1);
    sub_8F004();
    sub_887C();
    (*(v12 + 8))(a2);
    sub_6678(a3 + v8, &qword_C3598);
    return sub_6678(v10, &qword_C2DE0);
  }

  else
  {
    sub_8F9B4();
    sub_5F34(0x657269446C6C6966, 0xED00006E6F697463, v7, v13, v14, v15, v16, v17);
    *(a3 + 9) = v18 & 1;
    __chkstk_darwin(v18);
    sub_BAE4();
    v21 = v20;
    v23 = v22;
    sub_8EFE4();
    sub_887C();
    (*(v24 + 8))(a1);
    sub_8F004();
    sub_887C();
    result = (*(v25 + 8))(a2);
    *a3 = v21;
    *(a3 + 8) = v23 & 1;
  }

  return result;
}

uint64_t sub_82E1C()
{
  v1 = v0;
  v2 = sub_332C(&qword_C7010);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  sub_332C(&qword_C7018);
  sub_8F064();
  v5 = type metadata accessor for SpacerModel(0);
  sub_33E8(v4, 0, 1, v5);
  v6 = OBJC_IVAR____TtC19CoreDynamicUIPlugin15SpacerComponent_spacerModel;
  swift_beginAccess();
  sub_83C18(v4, v1 + v6);
  return swift_endAccess();
}

uint64_t sub_82F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for SpacerComponent(0);

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_82F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for SpacerComponent(0);

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_82FD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_8302C()
{
  swift_getWitnessTable();

  return sub_8E3D4();
}

uint64_t sub_830A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_83124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

id sub_831A0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC19CoreDynamicUIPlugin15SpacerComponent_spacerModel;
  v10 = type metadata accessor for SpacerModel(0);
  sub_33E8(v4 + v9, 1, 1, v10);
  v12.receiver = v4;
  v12.super_class = type metadata accessor for SpacerComponent(0);
  return objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
}

uint64_t sub_83258()
{
  v1 = sub_332C(&qword_C7010);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for SpacerComponent(0);
  v9.receiver = v0;
  v9.super_class = v4;
  objc_msgSendSuper2(&v9, "prepareForReuse");
  v5 = type metadata accessor for SpacerModel(0);
  sub_33E8(v3, 1, 1, v5);
  v6 = OBJC_IVAR____TtC19CoreDynamicUIPlugin15SpacerComponent_spacerModel;
  swift_beginAccess();
  sub_83C18(v3, v0 + v6);
  return swift_endAccess();
}

uint64_t sub_833D4()
{
  v1 = sub_332C(&qword_C7010);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for SpacerModel(0);
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC19CoreDynamicUIPlugin15SpacerComponent_spacerModel;
  swift_beginAccess();
  sub_20154(v0 + v7, v3, &qword_C7010);
  if (sub_33C0(v3, 1, v4) == 1)
  {
    return sub_6678(v3, &qword_C7010);
  }

  sub_83CC4(v3, v6);
  if (v6[9])
  {
    sub_8FB54();
  }

  return sub_83D28(v6);
}

id sub_836B0(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SpacerComponent(0);
  return objc_msgSendSuper2(&v4, *a1);
}

void sub_8374C()
{
  sub_83A28(319, &qword_C6F10, type metadata accessor for SpacerModel);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_8382C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_332C(&qword_C3598);
    v9 = a1 + *(a3 + 28);

    return sub_33C0(v9, a2, v8);
  }
}

uint64_t sub_838D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_332C(&qword_C3598);
    v8 = v5 + *(a4 + 28);

    return sub_33E8(v8, a2, a2, v7);
  }

  return result;
}

void sub_83960()
{
  sub_83A28(319, &qword_C3608, &type metadata accessor for ImpressionMetrics);
  if (v0 <= 0x3F)
  {
    sub_3CAC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_83A28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_8F924();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_83AA4()
{
  result = qword_C6FB8;
  if (!qword_C6FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6FB8);
  }

  return result;
}

uint64_t sub_83B88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_83C18(uint64_t a1, uint64_t a2)
{
  v4 = sub_332C(&qword_C7010);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_83C88(uint64_t a1@<X8>)
{
  sub_69A0();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

uint64_t sub_83CC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpacerModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_83D28(uint64_t a1)
{
  v2 = type metadata accessor for SpacerModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_83D84(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x83E50);
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

unint64_t sub_83E8C()
{
  result = qword_C7020;
  if (!qword_C7020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7020);
  }

  return result;
}

uint64_t sub_83F3C()
{

  return sub_8FB54();
}

uint64_t sub_83F70()
{

  return sub_8FC04();
}

uint64_t sub_83FA4()
{

  return sub_8F644();
}

uint64_t sub_84018()
{

  return sub_8F644();
}

void *sub_840B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_8E224();
  __chkstk_darwin(v8 - 8);
  v9 = objc_allocWithZone(NSRegularExpression);

  v13 = sub_84524(a1, a2, 0);
  v14 = sub_8F5C4();
  v37 = a3;
  v38 = a4;

  sub_332C(&qword_C7028);
  sub_84600();
  sub_2ED9C();
  v15 = sub_8F8D4();
  v17 = [v13 matchesInString:v14 options:0 range:{v15, v16}];

  sub_84664();
  v18 = sub_8F6C4();

  v19 = sub_35028(v18);
  if (v19)
  {
    v20 = v19;
    v33 = v13;
    v37 = &_swiftEmptyArrayStorage;
    result = sub_529A0(0, v19 & ~(v19 >> 63), 0);
    if (v20 < 0)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v22 = 0;
    v12 = v37;
    v35 = v18;
    v36 = v18 & 0xC000000000000001;
    v34 = v18 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v36)
      {
        v24 = sub_8F9F4();
      }

      else
      {
        if (v22 >= *(v34 + 16))
        {
          goto LABEL_19;
        }

        v24 = *(v18 + 8 * v22 + 32);
      }

      v25 = v24;
      [v24 range];
      result = sub_8F784();
      if (v26)
      {
        goto LABEL_21;
      }

      sub_8F674();
      v27 = sub_8F634();
      v29 = v28;

      v37 = v12;
      v31 = v12[2];
      v30 = v12[3];
      if (v31 >= v30 >> 1)
      {
        sub_529A0((v30 > 1), v31 + 1, 1);
        v12 = v37;
      }

      v12[2] = v31 + 1;
      v32 = &v12[2 * v31];
      v32[4] = v27;
      v32[5] = v29;
      ++v22;
      v18 = v35;
      if (v23 == v20)
      {

        return v12;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    swift_once();
    v10 = sub_8E304();
    sub_4D6C(v10, qword_D0378);
    sub_332C(&unk_C3920);
    sub_8E2A4();
    *(swift_allocObject() + 16) = xmmword_92E10;
    sub_8E214();
    v40._countAndFlagsBits = 0x2064696C61766E49;
    v40._object = 0xEF203A7865676572;
    sub_8E204(v40);
    swift_getErrorValue();
    v39 = &type metadata for String;
    v37 = sub_8FBB4();
    v38 = v11;
    sub_8E1F4();
    sub_4DA4(&v37);
    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    sub_8E204(v41);
    sub_8E234();
    sub_8E2D4();
  }

  else
  {
  }

  return &_swiftEmptyArrayStorage;
}

id sub_84524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_8F5C4();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_8E094();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_84600()
{
  result = qword_C7030;
  if (!qword_C7030)
  {
    sub_3D10(&qword_C7028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7030);
  }

  return result;
}

unint64_t sub_84664()
{
  result = qword_C7038;
  if (!qword_C7038)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C7038);
  }

  return result;
}

uint64_t type metadata accessor for Switch()
{
  result = qword_C70A0;
  if (!qword_C70A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8473C@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a2;
  v78 = a3;
  v85 = sub_8EFE4();
  v90 = *(v85 - 8);
  v4 = __chkstk_darwin(v85);
  v80 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v79 = &v74 - v7;
  v8 = __chkstk_darwin(v6);
  v81 = &v74 - v9;
  __chkstk_darwin(v8);
  v11 = &v74 - v10;
  v12 = sub_332C(&qword_C3598);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v74 - v16;
  v18 = type metadata accessor for Switch();
  sub_4248();
  __chkstk_darwin(v19);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8E394();
  inited = swift_initStackObject();
  sub_8E544();
  v22 = swift_initStackObject();
  v23 = v18;
  v24 = v82;
  v25 = sub_473C0();
  v27 = v24;
  if (v24)
  {
    (*(v90 + 8))(a1, v85);

    v28 = v84;
LABEL_10:

    sub_8F004();
    sub_4248();
    result = (*(v44 + 8))(v28);
    if (v27)
    {
      return result;
    }

    v46 = 0;
    goto LABEL_21;
  }

  v77 = v17;
  v76 = 0;
  *&v87 = v25;
  *(&v87 + 1) = v26;
  v82 = v21;
  sub_8F9B4();
  sub_8EFF4();
  v29 = sub_8EFB4();
  v30 = v90;
  v75 = v22;
  if (v29)
  {
    goto LABEL_6;
  }

  sub_851E8(v11, v84, v15);
  v31 = sub_8F204();
  if (sub_33C0(v15, 1, v31) == 1)
  {
    sub_3410(v15, &qword_C3598);
LABEL_6:
    sub_8F504();
    sub_85604();
    sub_853B4(v32, v33);
    sub_4264();
    *v34 = 0xD000000000000011;
    v34[1] = 0x800000000009DDE0;
    v34[2] = v23;
    sub_BBB0();
    (*(v35 + 104))();
    swift_willThrow();
    v36 = sub_85630();
    v30(v36);

    v37 = sub_8F204();
    v38 = v77;
    sub_33E8(v77, 1, 1, v37);
    v39 = 0;
    goto LABEL_8;
  }

  v40 = sub_85630();
  v30(v40);
  sub_BBB0();
  v38 = v77;
  (*(v41 + 32))(v77, v15, v31);
  sub_33E8(v38, 0, 1, v31);
  v39 = v76;
LABEL_8:
  v21 = v82;
  sub_11068(v38, &v82[*(v23 + 36)]);
  v42 = sub_47508();
  v43 = v81;
  if (v39)
  {

    sub_4284();
    (v30)(a1, v85);
    v28 = v84;
    v27 = v76;
    goto LABEL_10;
  }

  *v21 = v42 & 1;
  sub_8EFF4();
  if (sub_8EFB4())
  {
    sub_8F504();
    sub_85604();
    sub_853B4(v47, v48);
    sub_4264();
    *v49 = 0x6575676573;
    v49[1] = 0xE500000000000000;
    v49[2] = v23;
    sub_BBB0();
    (*(v50 + 104))();
    swift_willThrow();
    sub_4284();
    v71 = v85;
    (v30)(v43, v85);

    v89 = 0;
    v87 = 0u;
    v88 = 0u;
  }

  else
  {
    sub_8E384();
    sub_4284();
    v71 = v85;
    (v30)(v43, v85);
    sub_3A94(v86, &v87);
  }

  v51 = v88;
  v52 = v82;
  *(v82 + 8) = v87;
  *(v52 + 24) = v51;
  *(v52 + 5) = v89;
  v53 = a1;
  v54 = v79;
  sub_8EFF4();
  v55 = sub_8EFB4();
  v77 = v30;
  if (v55)
  {
    sub_8F504();
    sub_85604();
    sub_853B4(v56, v57);
    sub_BC40();
    *v58 = 0x6575676573;
    v58[1] = 0xE500000000000000;
    v58[2] = v23;
    sub_BBB0();
    (*(v59 + 104))();
    swift_willThrow();
    sub_4284();
    (v30)(v54, v71);

    v89 = 0;
    v87 = 0u;
    v88 = 0u;
  }

  else
  {
    sub_8E384();
    sub_4284();
    (v30)(v54, v71);
    sub_3A94(v86, &v87);
  }

  v60 = v88;
  v61 = v82;
  *(v82 + 3) = v87;
  *(v61 + 4) = v60;
  *(v61 + 10) = v89;
  v62 = &v61[*(v23 + 40)];
  *(v62 + 4) = 0;
  *v62 = 0u;
  *(v62 + 1) = 0u;
  v63 = v80;
  sub_8EFF4();
  if ((sub_8EFB4() & 1) == 0)
  {
    v64 = v84;
    v65 = v75;
    sub_8E534();
    sub_8561C();
    v53();
    (v53)(v63, v65);
    sub_3A94(v86, &v87);
    v72 = v82;
    sub_3A94(&v87, (v82 + 88));
    sub_853FC(v72, v78);
    sub_8F004();
    sub_4248();
    (*(v73 + 8))(v64);
    return sub_85460(v72);
  }

  sub_8F504();
  sub_85604();
  sub_853B4(v66, v67);
  sub_BC40();
  *v68 = 1954047348;
  v68[1] = 0xE400000000000000;
  v68[2] = v23;
  sub_BBB0();
  (*(v69 + 104))();
  swift_willThrow();
  sub_8561C();
  v53();
  (v53)(v63, v63);
  sub_8F004();
  sub_4248();
  (*(v70 + 8))(v84);
  sub_3410((v61 + 8), &qword_C2DE0);
  sub_3410((v61 + 48), &qword_C2DE0);
  v46 = 1;
  v21 = v61;
LABEL_21:
  sub_17A94((v21 + 128));
  result = sub_3410(&v21[*(v23 + 36)], &qword_C3598);
  if (v46)
  {
    return sub_3410(&v21[*(v23 + 40)], &qword_C2DE0);
  }

  return result;
}

uint64_t sub_851E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_8F004();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_8EFE4();
  __chkstk_darwin(v10);
  (*(v12 + 16))(&v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  (*(v7 + 16))(v9, a2, v6);
  sub_8F1C4();
  v13 = sub_8F204();
  return sub_33E8(a3, 0, 1, v13);
}

uint64_t sub_853B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_853FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Switch();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_85460(uint64_t a1)
{
  v2 = type metadata accessor for Switch();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_854D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 112);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_332C(&qword_C3598);
    v9 = a1 + *(a3 + 36);

    return sub_33C0(v9, a2, v8);
  }
}

uint64_t sub_85578(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 112) = (a2 - 1);
  }

  else
  {
    v7 = sub_332C(&qword_C3598);
    v8 = v5 + *(a4 + 36);

    return sub_33E8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_85644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(v3 + OBJC_IVAR____TtC19CoreDynamicUIPlugin15SwitchComponent_label);
  swift_getKeyPath();
  sub_332C(&qword_C7138);
  sub_8F044();

  (*(&stru_158.size + (swift_isaMask & *v6)))(v12, a3);
  sub_4F30(v12);
  v7 = *(v3 + OBJC_IVAR____TtC19CoreDynamicUIPlugin15SwitchComponent_underlyingSwitch);
  swift_getKeyPath();
  sub_24D04();

  v8 = v13;
  sub_11BB0(v12);
  if (v8)
  {
    swift_getKeyPath();
    sub_24D04();

    v8 = v13;
    sub_11BB0(v12);
  }

  [v7 setEnabled:v8];
  swift_getKeyPath();
  sub_24D04();

  [v7 setOn:v12[0]];
  *(v4 + OBJC_IVAR____TtC19CoreDynamicUIPlugin15SwitchComponent_objectGraph) = a3;

  swift_getKeyPath();
  sub_24D04();

  v9 = OBJC_IVAR____TtC19CoreDynamicUIPlugin15SwitchComponent_offSegue;
  sub_24D20();
  sub_66CC(v12, v4 + v9);
  swift_endAccess();
  swift_getKeyPath();
  sub_24D04();

  v10 = OBJC_IVAR____TtC19CoreDynamicUIPlugin15SwitchComponent_onSegue;
  sub_24D20();
  sub_66CC(v12, v4 + v10);
  return swift_endAccess();
}

uint64_t sub_85894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for SwitchComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_858FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for SwitchComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_85964(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_859B8()
{
  swift_getWitnessTable();

  return sub_8E3D4();
}

uint64_t sub_85A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_85AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_85BBC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_85C04(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC19CoreDynamicUIPlugin15SwitchComponent_label;
  sub_8E374();
  v11 = [objc_opt_self() ams_primaryText];
  v12 = sub_8E684();
  v21[3] = v12;
  v21[4] = &protocol witness table for FontSource;
  *sub_4ED0(v21) = UIFontTextStyleBody;
  (*(*(v12 - 8) + 104))();
  v13 = UIFontTextStyleBody;
  *&v4[v10] = sub_8E354();
  *&v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin15SwitchComponent_objectGraph] = 0;
  v14 = &v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin15SwitchComponent_offSegue];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  v15 = &v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin15SwitchComponent_onSegue];
  *(v15 + 4) = 0;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v16 = OBJC_IVAR____TtC19CoreDynamicUIPlugin15SwitchComponent_underlyingSwitch;
  *&v5[v16] = [objc_allocWithZone(UISwitch) init];
  v17 = OBJC_IVAR____TtC19CoreDynamicUIPlugin15SwitchComponent_horizontalStackView;
  *&v5[v17] = [objc_allocWithZone(UIStackView) init];
  v20.receiver = v5;
  v20.super_class = type metadata accessor for SwitchComponent();
  v18 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  sub_85F74();

  return v18;
}

uint64_t sub_85DF8()
{
  v1 = v0;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for SwitchComponent();
  v2 = objc_msgSendSuper2(&v10, "prepareForReuse");
  (*(&stru_158.offset + (swift_isaMask & **&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin15SwitchComponent_label])))(v2);
  v3 = *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin15SwitchComponent_underlyingSwitch];
  [v3 setEnabled:1];
  [v3 setSelected:1];
  *&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin15SwitchComponent_objectGraph] = 0;

  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  v4 = OBJC_IVAR____TtC19CoreDynamicUIPlugin15SwitchComponent_offSegue;
  sub_264CC();
  sub_66CC(&v7, &v1[v4]);
  swift_endAccess();
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  v5 = OBJC_IVAR____TtC19CoreDynamicUIPlugin15SwitchComponent_onSegue;
  sub_264CC();
  sub_66CC(&v7, &v1[v5]);
  return swift_endAccess();
}

id sub_85F74()
{
  v1 = v0;
  v2 = [v0 contentView];
  v3 = [objc_opt_self() ams_componentBackground];
  [v2 setBackgroundColor:v3];

  v4 = [v1 contentView];
  sub_888BC(14.0);

  v5 = *&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin15SwitchComponent_horizontalStackView];
  [v5 setAxis:0];
  [v5 setDistribution:2];
  [v5 setLayoutMarginsRelativeArrangement:1];
  [v5 setLayoutMargins:{8.0, 15.0, 8.0, 0.0}];
  [v5 setSpacing:8.0];
  v6 = [v1 contentView];
  [v6 addSubview:v5];

  sub_892C0(1);
  [v5 addArrangedSubview:*&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin15SwitchComponent_label]];
  v7 = *&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin15SwitchComponent_underlyingSwitch];
  [v7 addTarget:v1 action:"switchAction" forControlEvents:4096];

  return [v5 addArrangedSubview:v7];
}

uint64_t sub_86140()
{
  v1 = sub_8E5D4();
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_8F264();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin15SwitchComponent_underlyingSwitch) isSelected])
  {
    v8 = OBJC_IVAR____TtC19CoreDynamicUIPlugin15SwitchComponent_onSegue;
  }

  else
  {
    v8 = OBJC_IVAR____TtC19CoreDynamicUIPlugin15SwitchComponent_offSegue;
  }

  v9 = v0 + v8;
  swift_beginAccess();
  sub_418C(v9, &v15);
  if (!*(&v16 + 1))
  {
    return sub_13E24(&v15, &qword_C2DE0);
  }

  sub_3A94(&v15, v18);
  v10 = *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin15SwitchComponent_objectGraph);
  if (v10)
  {
    sub_8E5F4();
    sub_8F174();

    sub_8F394();
    v11 = v15;
    sub_8F394();
    (*(v5 + 16))(v3, v7, v4);
    v12 = sub_332C(&unk_C5850);
    sub_33E8(v3, 0, 1, v12);
    v15 = 0u;
    v16 = 0u;
    v17 = -1;
    (*(*v11 + 216))(v18, v3, v10, &v15);

    sub_13E24(&v15, &qword_C3940);
    sub_CE00(v3);
    (*(v5 + 8))(v7, v4);
  }

  return sub_4F30(v18);
}

id sub_86490()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwitchComponent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for Text()
{
  result = qword_C71F8;
  if (!qword_C71F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_866A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v62 = a3;
  v5 = sub_332C(&qword_C3598);
  __chkstk_darwin(v5 - 8);
  sub_42D0();
  sub_4290();
  __chkstk_darwin(v6);
  v61 = v55 - v7;
  v8 = sub_8EFE4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  sub_42D0();
  sub_4290();
  __chkstk_darwin(v10);
  sub_4290();
  __chkstk_darwin(v11);
  v13 = v55 - v12;
  sub_8E394();
  inited = swift_initStackObject();
  sub_8E544();
  swift_initStackObject();
  v14 = type metadata accessor for Text();
  sub_8EFF4();
  if (sub_8EFB4())
  {
    goto LABEL_4;
  }

  v63 = v14;
  sub_8E534();
  if (v3)
  {

    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    sub_6678(&v66, &unk_C55C0);
    v14 = v63;
LABEL_4:
    sub_8F504();
    sub_874FC();
    sub_872A8(v15, v16);
    swift_allocError();
    *v17 = 1954047348;
    v17[1] = 0xE400000000000000;
    v17[2] = v14;
    sub_BBB0();
    (*(v18 + 104))();
    swift_willThrow();

    v19 = *(v9 + 8);
    v19(a1, v8);
    v19(v13, v8);
    sub_8F004();
    sub_887C();
    return (*(v20 + 8))(v70);
  }

  v22 = *(v9 + 8);
  v22(v13, v8);
  sub_3A94(&v66, v69);
  v23 = sub_473C0();
  v56 = v24;
  v57 = v23;
  v55[1] = v9 + 8;
  v25 = v60;
  sub_8EFF4();
  v26 = sub_8EFB4();
  v58 = v22;
  if ((v26 & 1) == 0)
  {
    v27 = v59;
    sub_86F30(v25, v70, v59);
    v28 = sub_8F204();
    if (sub_33C0(v27, 1, v28) != 1)
    {
      v36 = sub_87524();
      (v22)(v36);
      sub_BBB0();
      v35 = v61;
      (*(v37 + 32))(v61, v27, v28);
      sub_33E8(v35, 0, 1, v28);
      goto LABEL_10;
    }

    sub_6678(v27, &qword_C3598);
  }

  sub_8F504();
  sub_874FC();
  sub_872A8(v29, v30);
  sub_4264();
  *v31 = 0xD000000000000011;
  v31[1] = 0x800000000009DDE0;
  v31[2] = v63;
  sub_BBB0();
  (*(v32 + 104))();
  swift_willThrow();
  v33 = sub_87524();
  (v22)(v33);

  v34 = sub_8F204();
  v35 = v61;
  sub_33E8(v61, 1, 1, v34);
LABEL_10:
  sub_8EFF4();
  if (sub_8EFB4())
  {
    sub_8F504();
    sub_874FC();
    sub_872A8(v38, v39);
    sub_4264();
    *v40 = 0x6575676573;
    v40[1] = 0xE500000000000000;
    v40[2] = v63;
    sub_BBB0();
    (*(v41 + 104))();
    swift_willThrow();
    sub_87514();
    v42();

    v68 = 0;
    v66 = 0u;
    v67 = 0u;
  }

  else
  {
    sub_8E384();
    sub_87514();
    v53();
    v54 = sub_3A94(&v65, &v66);
  }

  __chkstk_darwin(v54);
  v55[-2] = v70;
  sub_BAE4();
  v44 = v43;
  v46 = v45 & 1;
  v47 = v62;
  sub_13D04(v69, v62 + 16);
  *&v65 = v57;
  *(&v65 + 1) = v56;
  sub_8F9B4();
  sub_87514();
  v48();
  sub_4F30(v69);
  v49 = v63;
  sub_11068(v35, v47 + *(v63 + 28));
  v50 = v47 + *(v49 + 32);
  v51 = v67;
  *v50 = v66;
  *(v50 + 16) = v51;
  *(v50 + 32) = v68;
  *v47 = v44;
  *(v47 + 8) = v46;
  *(v47 + 9) = 0;
  sub_8F004();
  sub_887C();
  return (*(v52 + 8))(v70);
}

uint64_t sub_86F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_8F004();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_8EFE4();
  __chkstk_darwin(v10);
  (*(v12 + 16))(&v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  (*(v7 + 16))(v9, a2, v6);
  sub_8F1C4();
  v13 = sub_8F204();
  return sub_33E8(a3, 0, 1, v13);
}

uint64_t sub_870E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_8F004();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_8EFE4();
  __chkstk_darwin(v10);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 16))(v12, a1);
  (*(v7 + 16))(v9, a2, v6);
  result = sub_420D4(v12, v9);
  *a3 = result;
  *(a3 + 8) = v15 & 1;
  *(a3 + 9) = 0;
  return result;
}

uint64_t sub_872A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_8730C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_332C(&qword_C3598);
    v9 = a1 + *(a3 + 28);

    return sub_33C0(v9, a2, v8);
  }
}

uint64_t sub_873B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_332C(&qword_C3598);
    v8 = v5 + *(a4 + 28);

    return sub_33E8(v8, a2, a2, v7);
  }

  return result;
}

void sub_87440()
{
  sub_167E0();
  if (v0 <= 0x3F)
  {
    sub_16830();
    if (v1 <= 0x3F)
    {
      sub_E69C();
      if (v2 <= 0x3F)
      {
        sub_3CAC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

id sub_87538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *&v3[OBJC_IVAR____TtC19CoreDynamicUIPlugin13TextComponent_label];
  swift_getKeyPath();
  sub_332C(&qword_C7288);
  sub_8F044();

  (*(&stru_158.size + (swift_isaMask & *v6)))(&v11, a3);
  sub_4F30(&v11);
  swift_getKeyPath();
  sub_8F044();

  if ((v13 & 1) == 0)
  {
    v7 = v11;
    v8 = v12;
    [v4 bounds];
    CGRectGetWidth(v14);
    if (v8)
    {
      if (v7 == 0.0)
      {
        v9 = 16.0;
      }

      else
      {
        sub_42330();
      }
    }

    else
    {
      v9 = v7;
    }

    *&v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin13TextComponent_widthInset] = v9;
  }

  return [v4 layoutIfNeeded];
}

uint64_t sub_876BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for TextComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_87724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for TextComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_8778C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_877E0()
{
  swift_getWitnessTable();

  return sub_8E3D4();
}

uint64_t sub_8785C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_878D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_879E4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_87A2C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC19CoreDynamicUIPlugin13TextComponent_label;
  sub_8E374();
  v10 = [objc_opt_self() ams_primaryText];
  v11 = sub_8E684();
  v16[3] = v11;
  v16[4] = &protocol witness table for FontSource;
  *sub_4ED0(v16) = UIFontTextStyleBody;
  (*(*(v11 - 8) + 104))();
  v12 = UIFontTextStyleBody;
  *&v4[v9] = sub_8E354();
  *&v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin13TextComponent_widthInset] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for TextComponent();
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  sub_87FB0();

  return v13;
}

uint64_t sub_87BB0()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for TextComponent();
  v1 = objc_msgSendSuper2(&v3, "prepareForReuse");
  return (*(&stru_158.offset + (swift_isaMask & **&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin13TextComponent_label])))(v1);
}

id sub_87C88()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for TextComponent();
  objc_msgSendSuper2(&v4, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin13TextComponent_label];
  v2 = [v0 contentView];
  [v2 bounds];

  sub_8F874();
  return [v1 setFrame:?];
}

void sub_87DA8(double a1, double a2, float a3, float a4)
{
  v6 = v4;
  sub_8E324();
  sub_8830C();
  __chkstk_darwin(v11);
  sub_655CC();
  if (a3 == 1000.0)
  {
    v12 = a1;
  }

  else
  {
    v12 = 1.79769313e308;
  }

  v13 = *&v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin13TextComponent_widthInset];
  if (!_UISolariumEnabled() || (v14 = sub_88338(), v15(v14), sub_8E314(), v16 = sub_88324(), v17(v16), (v5 & 1) == 0))
  {
    v12 = v12 - (v13 + v13);
  }

  if (a4 == 1000.0)
  {
    v18 = a2;
  }

  else
  {
    v18 = 1.79769313e308;
  }

  v19 = *&v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin13TextComponent_label];
  v20 = [v6 contentView];
  [v19 measurementsWithFitting:v20 in:{v12, v18}];
}

void sub_87FB0()
{
  v1 = [v0 contentView];
  [v1 addSubview:*&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin13TextComponent_label]];
}

id sub_88054()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextComponent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_880BC(void *a1)
{
  sub_8E324();
  sub_8830C();
  __chkstk_darwin(v3);
  sub_655CC();
  if (_UISolariumEnabled() && (v4 = sub_88338(), v5(v4), sub_8E314(), v6 = sub_88324(), v7(v6), (v1 & 1) != 0))
  {
    v8 = [a1 traitCollection];
    v9 = sub_8883C();

    v10 = objc_opt_self();
    [objc_msgSend(a1 "container")];
    v12 = v11;
    swift_unknownObjectRelease();
    v13 = 64.0;
    if (v9)
    {
      v13 = 164.0;
    }

    v14 = [v10 absoluteDimension:v12 - v13];
  }

  else
  {
    [objc_msgSend(a1 "container")];
    v16 = v15;
    swift_unknownObjectRelease();
    v10 = objc_opt_self();
    v14 = [v10 absoluteDimension:{fmin(v16 + -32.0, 400.0)}];
  }

  v17 = v14;
  v18 = [v10 estimatedDimension:50.0];
  v19 = [objc_opt_self() sizeWithWidthDimension:v17 heightDimension:v18];

  return v19;
}

void sub_8834C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_8F954();
    sub_886D0();
    sub_88714();
    sub_8F774();
    v1 = v17;
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

LABEL_7:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_8F964() || (sub_886D0(), swift_dynamicCast(), v13 = v16, v4 = v9, v5 = v10, !v16))
      {
LABEL_24:
        sub_20688();
        return;
      }

      goto LABEL_17;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_13:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_24;
    }

LABEL_17:
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {

      goto LABEL_7;
    }

    v15 = [v14 keyWindow];

    v9 = v4;
    v10 = v5;
    if (v15)
    {
      sub_8F6A4();
      if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_8F6E4();
      }

      sub_8F6F4();
      goto LABEL_7;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t static UIApplication.window.getter()
{
  v0 = [swift_getObjCClassFromMetadata() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_886D0();
  sub_88714();
  v2 = sub_8F764();

  sub_8834C(v2);
  v4 = v3;

  result = sub_30AC8(v4);
  if (!result)
  {

    return 0;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = sub_8F9F4();
    goto LABEL_5;
  }

  if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
  {
    v6 = *(v4 + 32);
LABEL_5:
    v7 = v6;

    return v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_886D0()
{
  result = qword_C72C8;
  if (!qword_C72C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C72C8);
  }

  return result;
}

unint64_t sub_88714()
{
  result = qword_C72D0;
  if (!qword_C72D0)
  {
    sub_886D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C72D0);
  }

  return result;
}

void *static UIApplication.hasNotch()()
{
  result = static UIApplication.window.getter();
  if (result)
  {
    v1 = result;
    [result safeAreaInsets];
    v3 = v2;

    return (v3 > 0.0);
  }

  return result;
}

void *static UIApplication.isCompact()()
{
  result = static UIApplication.window.getter();
  if (result)
  {
    v1 = result;
    [result frame];
    Width = CGRectGetWidth(v3);

    return (Width < 375.0);
  }

  return result;
}

unint64_t sub_88814(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

BOOL sub_8883C()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  return !v2 && [v0 verticalSizeClass] == &def_4BB18 + 1;
}

void sub_888BC(double a1)
{
  v3 = [v1 layer];
  [v3 setCornerRadius:a1];

  v4 = [v1 layer];
  [v4 setMasksToBounds:1];
}

uint64_t sub_88960(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_889B4(void (*a1)(), uint64_t a2, double a3, double a4)
{
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a3;
  v15 = sub_88BF8;
  v16 = v9;
  sub_88C24();
  v12 = 1107296256;
  v13 = sub_3FD30;
  v14 = &unk_BB6C8;
  v10 = _Block_copy(&v11);

  if (a1)
  {
    v15 = a1;
    v16 = a2;
    sub_88C24();
    v12 = 1107296256;
    v13 = sub_88960;
    v14 = &unk_BB6F0;
    a1 = _Block_copy(&v11);
  }

  [objc_opt_self() animateWithDuration:134 delay:v10 options:a1 animations:a4 completion:0.0];
  _Block_release(a1);
  _Block_release(v10);
}

uint64_t sub_88B1C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_88B54(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setAlpha:a1];
  }
}

uint64_t sub_88BC0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_88C04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_88C40(char a1, char a2)
{
  v4 = objc_opt_self();
  v5 = [v4 areAnimationsEnabled];
  [v4 setAnimationsEnabled:a2 & 1];
  sub_88CCC(a1);

  return [v4 setAnimationsEnabled:v5];
}

void sub_88CCC(char a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (a1)
  {
    v9 = sub_89004;
    v10 = v3;
    v5 = _NSConcreteStackBlock;
    v6 = 1107296256;
    v7 = sub_3FD30;
    v8 = &unk_BB768;
    v4 = _Block_copy(&v5);

    [v2 animateWithDuration:v4 animations:0.165];
  }

  else
  {
    v9 = sub_88FE4;
    v10 = v3;
    v5 = _NSConcreteStackBlock;
    v6 = 1107296256;
    v7 = sub_3FD30;
    v8 = &unk_BB740;
    v4 = _Block_copy(&v5);

    [v2 animateWithDuration:v4 animations:0.25];
  }

  _Block_release(v4);
}

uint64_t sub_88E44()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_88E7C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    CGAffineTransformMakeScale(&v4, 0.97, 0.97);
    [v1 setTransform:&v4];
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    [v2 setAlpha:0.5];
  }
}

void sub_88F3C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v4[0] = 0x3FF0000000000000;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = 0x3FF0000000000000;
    v4[4] = 0;
    v4[5] = 0;
    [Strong setTransform:v4];
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    [v2 setAlpha:1.0];
  }
}

uint64_t sub_88FEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_89014(uint64_t a1, uint64_t a2, char a3)
{
  v7 = [v3 superview];
  if (v7)
  {
    v26 = v7;
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    sub_332C(&qword_C44A0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_943B0;
    v9 = [v3 centerXAnchor];
    v10 = [v26 centerXAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];

    *(v8 + 32) = v11;
    v12 = [v3 centerYAnchor];
    v13 = [v26 centerYAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    *(v8 + 40) = v14;
    sub_34F90();
    isa = sub_8F6B4().super.isa;

    [v26 addConstraints:isa];

    if ((a3 & 1) == 0)
    {
      v16 = *&a1;
      v17 = *&a2;
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_943B0;
      v19 = [v3 widthAnchor];
      v20 = [v19 constraintEqualToConstant:v16];

      *(v18 + 32) = v20;
      v21 = [v3 heightAnchor];
      v22 = [v21 constraintEqualToConstant:v17];

      *(v18 + 40) = v22;
      v23 = sub_8F6B4().super.isa;

      [v3 addConstraints:v23];
    }

    sub_89B54();
  }

  else
  {
    sub_89B54();
  }
}

void sub_892C0(char a1)
{
  v5 = v1;
  sub_89B34();
  v8 = v7;
  v9 = [v5 superview];
  if (v9)
  {
    v10 = v9;
    if (a1)
    {
      v11 = [v9 safeAreaLayoutGuide];
      v12 = [v11 topAnchor];

      v13 = [v10 safeAreaLayoutGuide];
      v14 = [v13 bottomAnchor];
    }

    else
    {
      v12 = [v9 topAnchor];
      v14 = [v10 bottomAnchor];
    }

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    sub_332C(&qword_C44A0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_98B20;
    v16 = [v5 topAnchor];
    v17 = [v16 constraintEqualToAnchor:v12 constant:v8];

    *(v15 + 32) = v17;
    v18 = [v5 leadingAnchor];
    v19 = [v10 leadingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 constant:v4];

    *(v15 + 40) = v20;
    v21 = [v5 bottomAnchor];
    v22 = [v21 constraintEqualToAnchor:v14 constant:-v3];

    *(v15 + 48) = v22;
    v23 = [v5 trailingAnchor];
    v24 = [v10 trailingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:-v2];

    *(v15 + 56) = v25;
    sub_34F90();
    isa = sub_8F6B4().super.isa;

    [v10 addConstraints:isa];

    sub_89B54();
  }

  else
  {
    sub_89B54();
  }
}

void sub_895CC()
{
  v3 = v0;
  sub_89B34();
  v4 = [v0 superview];
  if (v4)
  {
    v5 = v4;
    [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
    sub_332C(&qword_C44A0);
    v6 = swift_allocObject();
    v7 = sub_89B94(v6, xmmword_943D0);
    v8 = [v5 *(v1 + 2824)];
    v9 = sub_89B44();
    v11 = [v9 v10];

    v6[2].n128_u64[0] = v11;
    v12 = [v3 bottomAnchor];
    v13 = [v5 bottomAnchor];
    v14 = sub_89B44();
    v16 = [v14 v15];

    v6[2].n128_u64[1] = v16;
    v17 = [v3 trailingAnchor];
    v18 = sub_89B70([v5 trailingAnchor]);

    v6[3].n128_u64[0] = v18;
    sub_34F90();
    isa = sub_8F6B4().super.isa;

    [v5 addConstraints:isa];

    sub_89B14();
  }

  else
  {
    sub_89B14();
  }
}

void sub_897C4()
{
  v4 = v0;
  sub_89B34();
  v5 = [v0 superview];
  if (v5)
  {
    v6 = v5;
    [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
    sub_332C(&qword_C44A0);
    v7 = swift_allocObject();
    v8 = sub_89B94(v7, xmmword_943D0);
    v9 = [v6 *(v1 + 2824)];
    v10 = sub_89B44();
    v12 = [v10 v11];

    v7[2].n128_u64[0] = v12;
    v13 = [v4 bottomAnchor];
    v14 = [v6 safeAreaLayoutGuide];
    v15 = [v14 bottomAnchor];

    v16 = [v13 constraintEqualToAnchor:v15 constant:-v2];
    v7[2].n128_u64[1] = v16;
    v17 = [v4 trailingAnchor];
    v18 = sub_89B70([v6 trailingAnchor]);

    v7[3].n128_u64[0] = v18;
    sub_34F90();
    isa = sub_8F6B4().super.isa;

    [v6 addConstraints:isa];

    sub_89B14();
  }

  else
  {
    sub_89B14();
  }
}

void sub_899E0(double a1)
{
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_332C(&qword_C44A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_93AC0;
  v4 = [v1 heightAnchor];
  v5 = [v1 widthAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 multiplier:a1];

  *(v3 + 32) = v6;
  sub_34F90();
  isa = sub_8F6B4().super.isa;

  [v1 addConstraints:isa];
}

id sub_89B70(uint64_t a1)
{
  v5 = *(v2 + 2904);

  return [v1 v5];
}

id sub_89B94(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return [v2 leadingAnchor];
}

id sub_89BB4(void *a1)
{
  v1 = [a1 presentedViewController];
  objc_opt_self();
  if (v1)
  {
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v4 = v1;
      v5 = [v3 viewControllers];
      sub_89D6C();
      v6 = sub_8F6C4();

      v7 = sub_89DB0(v6);

      if (v7)
      {
        v8 = sub_89BB4(v7);

        return v8;
      }
    }

    v16 = sub_89BB4(v1);

    return v16;
  }

  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v12 = a1;
    v13 = [v11 viewControllers];
    sub_89D6C();
    v14 = sub_8F6C4();

    v15 = sub_89DB0(v14);

    if (v15)
    {
      v16 = sub_89BB4(v15);

      return v16;
    }
  }

  return a1;
}

unint64_t sub_89D6C()
{
  result = qword_C44B0;
  if (!qword_C44B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C44B0);
  }

  return result;
}

char *sub_89DB0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
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
      sub_88838(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    return sub_8F9F4();
  }

  result = sub_8FAC4();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_89E44@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_8E0F4();
  sub_42F8();
  v24 = v4;
  v25 = v3;
  __chkstk_darwin(v3);
  sub_8814();
  v27 = v6 - v5;
  sub_8EFE4();
  sub_42F8();
  v33 = v7;
  __chkstk_darwin(v8);
  sub_8814();
  v9 = type metadata accessor for WebPageDestination();
  sub_4248();
  __chkstk_darwin(v10);
  sub_8814();
  v13 = v12 - v11;
  sub_8E394();
  swift_initStackObject();
  v14 = sub_47508();
  if (v2)
  {

    v15 = 2;
  }

  else
  {
    v15 = v14 & 1;
  }

  *v13 = v15;
  sub_8EFF4();
  if (sub_8EFB4())
  {
    v16 = sub_8F504();
    sub_923C();
    swift_allocError();
    strcpy(v17, "resolveAction");
    *(v17 + 7) = -4864;
    *(v17 + 2) = v9;
    (*(*(v16 - 8) + 104))(v17, enum case for JSONError.missingProperty(_:), v16);
    swift_willThrow();
    v18 = sub_8A5C8();
    (def_4BB18)(v18);

    v32 = 0;
    v30 = 0u;
    v31 = 0u;
  }

  else
  {
    sub_8E384();
    v23 = sub_8A5C8();
    (def_4BB18)(v23);
    sub_3A94(&v29, &v30);
  }

  v19 = v31;
  *(v13 + 8) = v30;
  *(v13 + 24) = v19;
  *(v13 + 40) = v32;
  *(v13 + 48) = sub_10AB4(0x6B63617065646973, 0xE800000000000000, v9);
  sub_47B88(7107189, 0xE300000000000000, v9, v27);
  v20 = sub_8A5E0();
  (def_4BB18)(v20);
  (*(v24 + 32))(v13 + *(v9 + 28), v27, v25);
  sub_8A2E8(v13, a2);
  sub_8F004();
  sub_4248();
  (*(v21 + 8))(a1);
  return sub_8A34C(v13);
}

uint64_t type metadata accessor for WebPageDestination()
{
  result = qword_C7330;
  if (!qword_C7330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8A2E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPageDestination();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8A34C(uint64_t a1)
{
  v2 = type metadata accessor for WebPageDestination();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8A3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_8E0F4();
    v10 = a1 + *(a3 + 28);

    return sub_33C0(v10, a2, v9);
  }
}

uint64_t sub_8A464(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v7 = sub_8E0F4();
    v8 = v5 + *(a4 + 28);

    return sub_33E8(v8, a2, a2, v7);
  }

  return result;
}

void sub_8A4E4()
{
  sub_149D4();
  if (v0 <= 0x3F)
  {
    sub_BA38(319, &qword_C2EC8, &unk_C2ED0);
    if (v1 <= 0x3F)
    {
      sub_BA38(319, &qword_C37A0, &qword_C7480);
      if (v2 <= 0x3F)
      {
        sub_8E0F4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

id sub_8A5FC(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRequest:a1 presentingViewController:a2];

  return v4;
}

void sub_8A658(void *a1, void (*a2)(void **, void))
{
  v4 = a1;
  v3 = a1;
  a2(&v4, 0);
}

void sub_8A7A0()
{
  sub_41B8C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_8F364();
  sub_42F8();
  v38 = v7;
  __chkstk_darwin(v8);
  sub_8814();
  v11 = v10 - v9;
  v12 = OBJC_IVAR____TtC19CoreDynamicUIPlugin21WebPageViewController_preloadingCompletionPromise;
  sub_332C(&qword_C7470);
  *&v0[v12] = sub_8F444();
  sub_8E564();
  sub_8F174();
  v13 = sub_8F394();
  v14 = (*(*v39[0] + 128))(v13);
  sub_8F394();
  sub_CE5C(0, &unk_C3F50);
  sub_8DFA4();
  v15 = v39[0];
  sub_8DFA4();
  v16 = v39[1];
  *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin21WebPageViewController_objectGraph] = v3;
  sub_CD4C((v5 + 8), &v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin21WebPageViewController_resolveAction], &qword_C2DE0);

  v37 = v11;
  v17 = sub_8F334();
  v18 = type metadata accessor for WebPageViewController();
  v41.receiver = v1;
  v41.super_class = v18;
  v36 = v14;
  v19 = objc_msgSendSuper2(&v41, "initWithBag:account:clientInfo:", v17, v14, v15);
  swift_unknownObjectRelease();
  isa = *(v5 + 6);
  v21 = v19;
  if (isa)
  {
    isa = sub_8F554().super.isa;
  }

  [v19 setClientOptions:isa];

  [v19 setDelegate:v19];
  if (v16)
  {
    v22.super.isa = sub_8F554().super.isa;
  }

  else
  {
    v22.super.isa = 0;
  }

  [v19 setMetricsOverlay:v22.super.isa];

  v23 = *v5;
  v24 = v38;
  if (v23 != 2)
  {
    if (qword_C2CE0 != -1)
    {
      sub_13E98();
    }

    v25 = sub_8E304();
    sub_4D6C(v25, qword_D0378);
    sub_332C(&unk_C3920);
    v26 = sub_8E2A4();
    sub_13EB8(v26);
    *(swift_allocObject() + 16) = xmmword_92300;
    v40 = v18;
    v39[0] = v19;
    v35 = v19;
    v27 = AMSLogKey();
    if (v27)
    {
      v28 = v27;
      sub_8F5F4();
    }

    sub_8E284();

    sub_4F30(v39);
    sub_8E244();
    v40 = &type metadata for Bool;
    LOBYTE(v39[0]) = v23 & 1;
    sub_8E264();
    sub_3410(v39, &unk_C3EB0);
    sub_8E2E4();

    [v35 setReducedMemoryMode:v23 & 1];
    v24 = v38;
  }

  type metadata accessor for WebPageDestination();

  sub_8E0C4(v29);
  v31 = v30;
  v32 = [v19 loadURL:v30];

  v33 = sub_8F434();
  sub_CE5C(0, &qword_C3F30);
  v34 = sub_8F7D4();
  sub_8D79C(v33, v34);

  (*(v24 + 8))(v37, v6);
  sub_8D94C(v5, type metadata accessor for WebPageDestination);
  sub_41B74();
}

void sub_8AD34()
{
  v1 = OBJC_IVAR____TtC19CoreDynamicUIPlugin21WebPageViewController_preloadingCompletionPromise;
  sub_332C(&qword_C7470);
  *(v0 + v1) = sub_8F444();
  sub_8FAA4();
  __break(1u);
}

id sub_8AE3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WebPageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_8AF44()
{
  sub_41B8C();
  v23 = v0;
  v24 = v1;
  v22 = v2;
  sub_8EE74();
  sub_42F8();
  __chkstk_darwin(v3);
  sub_8814();
  sub_8DF4C();
  sub_42F8();
  __chkstk_darwin(v4);
  sub_8814();
  if (qword_C2CE0 != -1)
  {
    sub_13E98();
  }

  v5 = sub_8E304();
  sub_4D6C(v5, qword_D0378);
  sub_332C(&unk_C3920);
  v6 = sub_8E2A4();
  sub_13EB8(v6);
  *(sub_8DF00() + 16) = xmmword_92300;
  v7 = type metadata accessor for WebPageViewController();
  v8 = sub_8DFC4(v7);
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    sub_8F5F4();
  }

  sub_8DF68();

  sub_4F30(v25);
  sub_8E244();
  v26 = sub_CE5C(0, &qword_C3AC0);
  v25[0] = v22;
  v11 = v22;
  sub_8DF8C();
  sub_8E264();
  sub_3410(v25, &unk_C3EB0);
  sub_8E2E4();

  sub_CE5C(0, &qword_C3F30);
  v12 = sub_8F7D4();
  v13 = swift_allocObject();
  v13[2] = v8;
  v13[3] = v23;
  v13[4] = v24;
  v13[5] = v11;
  v27 = sub_8DCB0;
  v28 = v13;
  v25[0] = _NSConcreteStackBlock;
  sub_8DED4(COERCE_DOUBLE(1107296256));
  v25[2] = v14;
  v26 = &unk_BBA00;
  v15 = _Block_copy(v25);
  v16 = v8;
  v17 = v11;

  sub_8EE94();
  v25[0] = &_swiftEmptyArrayStorage;
  sub_29A60();
  sub_332C(&unk_C50C0);
  sub_29AB8();
  sub_8DEEC();
  sub_8F944();
  sub_8DF3C();
  sub_8F7E4();
  _Block_release(v15);

  v18 = sub_8DF2C();
  v19(v18);
  v20 = sub_8DF98();
  v21(v20);
  sub_41B74();
}

void sub_8B2F4(void *a1, void (*a2)(void, uint64_t), uint64_t a3, void *a4)
{
  sub_8E5C4();
  sub_8F174();
  v8 = sub_8F394();
  v9 = (*(*aBlock[0] + 88))(v8);
  if (v9 && (v10 = v9, v11 = [v9 topViewController], v10, v11))
  {
    v26 = a4;
    v12 = sub_CE5C(0, &qword_C44B0);
    v13 = v11;
    v14 = sub_89BB4(v13);

    v15 = qword_C2CE0;
    v25 = v14;
    if (v15 != -1)
    {
      swift_once();
    }

    v16 = sub_8E304();
    sub_4D6C(v16, qword_D0378);
    sub_332C(&unk_C3920);
    sub_8E2A4();
    *(swift_allocObject() + 16) = xmmword_92300;
    v28 = type metadata accessor for WebPageViewController();
    aBlock[0] = a1;
    v17 = a1;
    v18 = AMSLogKey();
    if (v18)
    {
      v19 = v18;
      sub_8F5F4();
    }

    sub_8E284();

    sub_4F30(aBlock);
    sub_8E244();
    v28 = v12;
    aBlock[0] = v25;
    sub_8E264();
    sub_3410(aBlock, &unk_C3EB0);
    sub_8E2B4();

    sub_CE5C(0, &qword_C3AC8);
    v21 = sub_8A5FC(v26, v25);
    v22 = [v21 performAuthentication];
    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    v29 = sub_8DE74;
    v30 = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_8DEC8;
    v28 = &unk_BBA50;
    v24 = _Block_copy(aBlock);

    [v22 addFinishBlock:v24];

    _Block_release(v24);
  }

  else
  {
    sub_8DBEC();
    v20 = swift_allocError();
    a2(0, v20);
  }
}

void sub_8B748()
{
  sub_41B8C();
  v23 = v0;
  v24 = v1;
  v22 = v2;
  sub_8EE74();
  sub_42F8();
  __chkstk_darwin(v3);
  sub_8814();
  sub_8DF4C();
  sub_42F8();
  __chkstk_darwin(v4);
  sub_8814();
  if (qword_C2CE0 != -1)
  {
    sub_13E98();
  }

  v5 = sub_8E304();
  sub_4D6C(v5, qword_D0378);
  sub_332C(&unk_C3920);
  v6 = sub_8E2A4();
  sub_13EB8(v6);
  *(sub_8DF00() + 16) = xmmword_92300;
  v7 = type metadata accessor for WebPageViewController();
  v8 = sub_8DFC4(v7);
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    sub_8F5F4();
  }

  sub_8DF68();

  sub_4F30(v25);
  sub_8E244();
  v26 = sub_CE5C(0, &qword_C7490);
  v25[0] = v22;
  v11 = v22;
  sub_8DF8C();
  sub_8E264();
  sub_3410(v25, &unk_C3EB0);
  sub_8E2E4();

  sub_CE5C(0, &qword_C3F30);
  v12 = sub_8F7D4();
  v13 = swift_allocObject();
  v13[2] = v8;
  v13[3] = v23;
  v13[4] = v24;
  v13[5] = v11;
  v27 = sub_8DBE0;
  v28 = v13;
  v25[0] = _NSConcreteStackBlock;
  sub_8DED4(COERCE_DOUBLE(1107296256));
  v25[2] = v14;
  v26 = &unk_BB938;
  v15 = _Block_copy(v25);
  v16 = v8;
  v17 = v11;

  sub_8EE94();
  v25[0] = &_swiftEmptyArrayStorage;
  sub_29A60();
  sub_332C(&unk_C50C0);
  sub_29AB8();
  sub_8DEEC();
  sub_8F944();
  sub_8DF3C();
  sub_8F7E4();
  _Block_release(v15);

  v18 = sub_8DF2C();
  v19(v18);
  v20 = sub_8DF98();
  v21(v20);
  sub_41B74();
}

void sub_8BAF8(uint64_t a1, void (*a2)(void, uint64_t), uint64_t a3, void *a4)
{
  sub_8E5C4();
  sub_8F174();
  v7 = sub_8F394();
  v8 = (*(*v18[0] + 88))(v7);
  if (v8 && (v9 = v8, v10 = [v8 topViewController], v9, v10))
  {
    sub_CE5C(0, &unk_C74A0);
    v11 = a4;
    v12 = v10;
    v13 = sub_8A5FC(v11, v12);
    v14 = [v13 present];
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    v18[4] = sub_8DC40;
    v18[5] = v15;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_8DEC8;
    v18[3] = &unk_BB988;
    v16 = _Block_copy(v18);

    [v14 addFinishBlock:v16];
    _Block_release(v16);
  }

  else
  {
    sub_8DBEC();
    v17 = swift_allocError();
    a2(0, v17);
  }
}

uint64_t sub_8BD64(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(void))
{
  v12 = _Block_copy(aBlock);
  sub_13EC8();
  *(swift_allocObject() + 16) = v12;
  v13 = a3;
  v14 = a4;
  v15 = a1;
  a8();
}

void sub_8BE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_8E084();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_8BE90()
{
  sub_41B8C();
  v32 = v1;
  v3 = v2;
  sub_8EE74();
  sub_42F8();
  v36 = v4;
  __chkstk_darwin(v4);
  sub_8814();
  sub_4C52C();
  v35 = sub_8EEA4();
  sub_42F8();
  v34 = v5;
  __chkstk_darwin(v6);
  sub_8814();
  v33 = v8 - v7;
  sub_4C52C();
  v9 = sub_8E304();
  sub_42F8();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_8814();
  v15 = v14 - v13;
  if (qword_C2CE0 != -1)
  {
    sub_13E98();
  }

  v16 = sub_4D6C(v9, qword_D0378);
  (*(v11 + 16))(v15, v16, v9);
  sub_332C(&unk_C3920);
  v17 = sub_8E2A4();
  sub_13EB8(v17);
  *(swift_allocObject() + 16) = xmmword_932C0;
  *(&v39 + 1) = type metadata accessor for WebPageViewController();
  *&v38 = v0;
  v31 = v0;
  v18 = AMSLogKey();
  if (v18)
  {
    v19 = v18;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(&v38);
  sub_8E244();
  if (v3)
  {
    v20 = sub_CE5C(0, &qword_C7488);
    v21 = v3;
  }

  else
  {
    v21 = 0;
    v20 = 0;
    *(&v38 + 1) = 0;
    *&v39 = 0;
  }

  *&v38 = v21;
  *(&v39 + 1) = v20;
  v30 = v3;
  sub_8E264();
  sub_3410(&v38, &unk_C3EB0);
  sub_8E244();
  if (v32)
  {
    swift_getErrorValue();
    *(&v39 + 1) = v37;
    v22 = sub_4ED0(&v38);
    (*(*(v37 - 8) + 16))(v22);
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  sub_8E264();
  sub_3410(&v38, &unk_C3EB0);
  sub_8E2E4();

  (*(v11 + 8))(v15, v9);
  sub_CE5C(0, &qword_C3F30);
  v23 = sub_8F7D4();
  sub_29D58();
  v24 = swift_allocObject();
  v24[2] = v31;
  v24[3] = v3;
  v24[4] = v32;
  v40 = sub_8DBB4;
  v41 = v24;
  *&v38 = _NSConcreteStackBlock;
  *(&v38 + 1) = 1107296256;
  *&v39 = sub_3FD30;
  *(&v39 + 1) = &unk_BB8C0;
  v25 = _Block_copy(&v38);
  v26 = v31;
  v27 = v30;
  swift_errorRetain();

  sub_8EE94();
  *&v38 = &_swiftEmptyArrayStorage;
  sub_29A60();
  sub_332C(&unk_C50C0);
  sub_29AB8();
  sub_8F944();
  sub_8F7E4();
  _Block_release(v25);

  v28 = sub_8DF98();
  v29(v28, v36);
  (*(v34 + 8))(v33, v35);
  sub_41B74();
}

uint64_t sub_8C410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_8E524();
  sub_8F174();
  sub_8F394();
  (*(*v6 + 200))(a2, a3);
}

void sub_8C54C()
{
  sub_41B8C();
  v37 = v0;
  v35 = v1;
  v41 = v2;
  v42 = v3;
  v4 = sub_8E5D4();
  __chkstk_darwin(v4 - 8);
  sub_8814();
  v34 = v6 - v5;
  sub_4C52C();
  v39 = sub_8F264();
  sub_42F8();
  v38 = v7;
  __chkstk_darwin(v8);
  sub_8814();
  v36 = v10 - v9;
  sub_4C52C();
  v11 = sub_8E304();
  sub_42F8();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_8814();
  v17 = v16 - v15;
  if (qword_C2CE0 != -1)
  {
    sub_13E98();
  }

  sub_4D6C(v11, qword_D0378);
  (*(v13 + 16))(v17);
  sub_332C(&unk_C3920);
  v18 = sub_8E2A4();
  sub_13EB8(v18);
  *(swift_allocObject() + 16) = xmmword_932C0;
  v33 = type metadata accessor for WebPageViewController();
  v40 = sub_8DFC4(v33);
  v19 = AMSLogKey();
  if (v19)
  {
    v20 = v19;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(&v48);
  sub_8E244();
  if (v41)
  {
    v21 = sub_332C(&qword_C7480);
    v22 = v41;
  }

  else
  {
    v22 = 0;
    v21 = 0;
    *(&v48 + 1) = 0;
    *&v49 = 0;
  }

  *&v48 = v22;
  *(&v49 + 1) = v21;

  sub_8DF8C();
  sub_8E264();
  sub_3410(&v48, &unk_C3EB0);
  sub_8E244();
  if (v42)
  {
    swift_getErrorValue();
    *(&v49 + 1) = v43;
    v23 = sub_4ED0(&v48);
    (*(*(v43 - 8) + 16))(v23);
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  sub_8E264();
  sub_3410(&v48, &unk_C3EB0);
  sub_8E2E4();

  (*(v13 + 8))(v17, v11);
  sub_CD4C(&v40[OBJC_IVAR____TtC19CoreDynamicUIPlugin21WebPageViewController_resolveAction], &v45, &qword_C2DE0);
  if (v46)
  {
    sub_3A94(&v45, &v48);
    if (v41)
    {
      v46 = sub_332C(&qword_C7480);
      *&v45 = v41;
      v47 = 1;
    }

    else if (v42)
    {
      *&v45 = v42;
      v47 = 0;
      swift_errorRetain();
    }

    else
    {
      sub_8D8F8();
      *&v45 = swift_allocError();
      v47 = 0;
    }

    sub_8E5F4();
    v27 = *&v40[OBJC_IVAR____TtC19CoreDynamicUIPlugin21WebPageViewController_objectGraph];
    sub_8F174();

    sub_8F394();
    v28 = v44[0];
    sub_8F394();
    (*(v38 + 16))(v34, v36, v39);
    v29 = sub_332C(&unk_C5850);
    sub_33E8(v34, 0, 1, v29);
    sub_56030(&v45, v44);
    (*(*v28 + 216))(&v48, v34, v27, v44);
    sub_3410(v44, &qword_C3940);
    sub_8D94C(v34, &type metadata accessor for ResultingActionDispatcher.MetricsBehavior);
    sub_29D58();
    v30 = swift_allocObject();
    v30[2] = v40;
    v30[3] = v35;
    v30[4] = v37;
    sub_CE5C(0, &qword_C3F30);
    v31 = v40;

    v32 = sub_8F7D4();
    sub_8D9EC(v32, sub_8D9E0, v30);

    (*(v38 + 8))(v36, v39);
    sub_4F30(&v48);
    sub_233BC(&v45);
  }

  else
  {
    sub_3410(&v45, &qword_C2DE0);
    *(swift_allocObject() + 16) = xmmword_92310;
    *(&v49 + 1) = v33;
    *&v48 = v40;
    v24 = v40;
    v25 = AMSLogKey();
    if (v25)
    {
      v26 = v25;
      sub_8F5F4();
    }

    sub_8DF8C();
    sub_8E284();

    sub_4F30(&v48);
    sub_8E244();
    sub_8E2E4();
  }

  sub_41B74();
}

uint64_t sub_8CCF4(unsigned __int8 *a1, uint64_t a2, void *a3, void (*a4)(__int128 *, uint64_t), uint64_t a5)
{
  v23 = a5;
  v24 = a4;
  v8 = sub_8E304();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  if (qword_C2CE0 != -1)
  {
    swift_once();
  }

  v12 = sub_4D6C(v8, qword_D0378);
  (*(v9 + 16))(v11, v12, v8);
  sub_332C(&unk_C3920);
  sub_8E2A4();
  *(swift_allocObject() + 16) = xmmword_932C0;
  *(&v28 + 1) = type metadata accessor for WebPageViewController();
  *&v27 = a3;
  v13 = a3;
  v14 = AMSLogKey();
  if (v14)
  {
    v15 = v14;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(&v27);
  sub_8E244();
  if (v22)
  {
    v16 = 0;
    v27 = 0uLL;
    *&v28 = 0;
  }

  else
  {
    v16 = &type metadata for () + 8;
  }

  *(&v28 + 1) = v16;
  sub_8E264();
  sub_3410(&v27, &unk_C3EB0);
  sub_8E244();
  if (a2)
  {
    swift_getErrorValue();
    v17 = v25;
    v18 = v26;
    *(&v28 + 1) = v26;
    v19 = sub_4ED0(&v27);
    (*(*(v18 - 8) + 16))(v19, v17, v18);
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  sub_8E264();
  sub_3410(&v27, &unk_C3EB0);
  sub_8E2E4();

  (*(v9 + 8))(v11, v8);
  if (a2)
  {
    v27 = 0u;
    v28 = 0u;
    swift_errorRetain();
    v24(&v27, a2);
  }

  else
  {
    *(&v28 + 1) = &type metadata for Bool;
    LOBYTE(v27) = 1;
    v24(&v27, 0);
  }

  return sub_3410(&v27, &unk_C3EB0);
}

void sub_8D1BC(uint64_t a1, void *a2, uint64_t a3)
{
  sub_CD4C(a1, v11, &unk_C3EB0);
  v5 = v12;
  if (!v12)
  {
    v10 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = sub_CD08(v11, v12);
  v7 = *(v5 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = sub_8FB44();
  (*(v7 + 8))(v9, v5);
  sub_4F30(v11);
  if (a2)
  {
LABEL_3:
    a2 = sub_8E084();
  }

LABEL_4:
  (*(a3 + 16))(a3, v10, a2);
  swift_unknownObjectRelease();
}

void sub_8D330()
{
  sub_41B8C();
  sub_8EE74();
  sub_42F8();
  __chkstk_darwin(v0);
  sub_8814();
  sub_8DF4C();
  sub_42F8();
  __chkstk_darwin(v1);
  sub_8814();
  if (qword_C2CE0 != -1)
  {
    sub_13E98();
  }

  v2 = sub_8E304();
  sub_4D6C(v2, qword_D0378);
  sub_332C(&unk_C3920);
  v3 = sub_8E2A4();
  sub_13EB8(v3);
  *(swift_allocObject() + 16) = xmmword_92310;
  v4 = type metadata accessor for WebPageViewController();
  v5 = sub_8DFC4(v4);
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(v16);
  sub_8E244();
  sub_8E2E4();

  sub_CE5C(0, &qword_C3F30);
  v8 = sub_8F7D4();
  sub_13EC8();
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v16[4] = sub_8D89C;
  v16[5] = v9;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_3FD30;
  v16[3] = &unk_BB7D0;
  v10 = _Block_copy(v16);
  v11 = v5;

  sub_8EE94();
  v16[0] = &_swiftEmptyArrayStorage;
  sub_29A60();
  sub_332C(&unk_C50C0);
  sub_29AB8();
  sub_8DEEC();
  sub_8F944();
  sub_8DF3C();
  sub_8F7E4();
  _Block_release(v10);

  v12 = sub_8DF2C();
  v13(v12);
  v14 = sub_8DF98();
  v15(v14);
  sub_41B74();
}

uint64_t sub_8D6AC()
{
  sub_8E524();
  sub_8F174();
  v0 = sub_8F394();
  (*(*v2 + 224))(v0);
}

uint64_t sub_8D79C(uint64_t a1, void *a2)
{
  v5[3] = sub_CE5C(0, &qword_C3F30);
  v5[4] = &protocol witness table for OS_dispatch_queue;
  v5[0] = a2;
  swift_retain_n();
  v3 = a2;
  sub_8F3C4();

  return sub_4F30(v5);
}

uint64_t sub_8D868()
{
  sub_13EC8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_8D8A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_8D8BC()
{
  _Block_release(*(v0 + 16));
  sub_13EC8();

  return _swift_deallocObject(v1, v2, v3);
}

unint64_t sub_8D8F8()
{
  result = qword_C7478;
  if (!qword_C7478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7478);
  }

  return result;
}

uint64_t sub_8D94C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_4248();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_8D9A4()
{

  sub_29D58();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_8D9EC(void *a1, uint64_t a2, uint64_t a3)
{
  v10[3] = sub_CE5C(0, &qword_C3F30);
  v10[4] = &protocol witness table for OS_dispatch_queue;
  v10[0] = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  swift_retain_n();
  v8 = a1;
  sub_8F3C4();

  return sub_4F30(v10);
}

uint64_t sub_8DAF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_8DB30(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = 1;
  return v2(&v4, a1);
}

uint64_t sub_8DB70()
{

  sub_29D58();

  return _swift_deallocObject(v1, v2, v3);
}

unint64_t sub_8DBEC()
{
  result = qword_C7498;
  if (!qword_C7498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7498);
  }

  return result;
}

uint64_t sub_8DC68()
{

  return _swift_deallocObject(v0, 48, 7);
}

_BYTE *sub_8DCD4(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x8DD70);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_8DDAC()
{
  result = qword_C74B0;
  if (!qword_C74B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C74B0);
  }

  return result;
}

unint64_t sub_8DE04()
{
  result = qword_C74B8;
  if (!qword_C74B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C74B8);
  }

  return result;
}

uint64_t sub_8DF00()
{

  return swift_allocObject();
}

uint64_t sub_8DF4C()
{

  return sub_8EEA4();
}

uint64_t sub_8DF68()
{

  return sub_8E284();
}

uint64_t sub_8DFA4()
{

  return sub_8F394();
}

id sub_8DFC4(uint64_t a1)
{
  *(v2 - 104) = a1;
  *(v2 - 128) = v1;

  return v1;
}