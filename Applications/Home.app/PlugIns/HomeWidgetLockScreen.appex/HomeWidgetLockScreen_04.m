uint64_t sub_10005BC58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000670C8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *a2;
  if (*(v10 + 16) && (v11 = sub_100045CA4(a1), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
  }

  else
  {
    v13 = 0;
  }

  swift_endAccess();
  (*(v7 + 16))(v9, a1, v6);
  result = (*(v7 + 88))(v9, v6);
  if (result != enum case for ServiceKind.door(_:))
  {
    if (result == enum case for ServiceKind.garageDoorOpener(_:))
    {
      v15 = 1;
      if (v13 != 1)
      {
        goto LABEL_7;
      }
    }

    else if (result == enum case for ServiceKind.lockMechanism(_:))
    {
      v15 = 3;
      if (v13 != 1)
      {
        goto LABEL_7;
      }
    }

    else if (result == enum case for ServiceKind.securitySystem(_:))
    {
      v15 = 5;
      if (v13 != 1)
      {
        goto LABEL_7;
      }
    }

    else if (result == enum case for ServiceKind.window(_:))
    {
      v15 = 4;
      if (v13 != 1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      result = (*(v7 + 8))(v9, v6);
      v15 = 6;
      if (v13 != 1)
      {
        goto LABEL_7;
      }
    }

LABEL_11:
    if (qword_100080828 != -1)
    {
      swift_once();
    }

    v16 = off_100081FC0;
    if (*(off_100081FC0 + 2) && (v17 = sub_100045C38(v15), (v18 & 1) != 0))
    {
      v19 = (v16[7] + 16 * v17);
      v21 = *v19;
      v20 = v19[1];
    }

    else
    {
      v21 = 0;
      v20 = 0xE000000000000000;
    }

    if (qword_100080830 != -1)
    {
      swift_once();
    }

    v28 = off_100081FC8;
    if (*(off_100081FC8 + 2) && (v29 = sub_100045C38(v15), (v30 & 1) != 0))
    {
      v31 = (v28[7] + 16 * v29);
      v33 = *v31;
      v32 = v31[1];
    }

    else
    {
      v33 = 0;
      v32 = 0xE000000000000000;
    }

    if (qword_100080840 != -1)
    {
      swift_once();
    }

    v34 = off_100081FD8;
    if (*(off_100081FD8 + 2) && (v35 = sub_100045C38(6u), (v36 & 1) != 0))
    {
      v37 = *(v34[7] + 16 * v35);
    }

    else
    {
      v37 = 0;
      result = 0xE000000000000000;
    }

    *a3 = v21;
    *(a3 + 8) = v20;
    *(a3 + 16) = v33;
    *(a3 + 24) = v32;
    *(a3 + 32) = v37;
    *(a3 + 40) = result;
    goto LABEL_51;
  }

  v15 = 2;
  if (v13 == 1)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (!v13)
  {
    *(a3 + 48) = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return result;
  }

  if (qword_100080828 != -1)
  {
    swift_once();
  }

  v22 = off_100081FC0;
  if (*(off_100081FC0 + 2) && (v23 = sub_100045C38(v15), (v24 & 1) != 0))
  {
    v25 = (v22[7] + 16 * v23);
    v27 = *v25;
    v26 = v25[1];
  }

  else
  {
    v27 = 0;
    v26 = 0xE000000000000000;
  }

  if (qword_100080838 != -1)
  {
    swift_once();
  }

  v38 = off_100081FD0;
  if (*(off_100081FD0 + 2) && (v39 = sub_100045C38(v15), (v40 & 1) != 0))
  {
    v41 = (v38[7] + 16 * v39);
    v43 = *v41;
    v42 = v41[1];
  }

  else
  {
    v43 = 0;
    v42 = 0xE000000000000000;
  }

  if (qword_100080848 != -1)
  {
    swift_once();
  }

  if (*(off_100081FE0 + 2))
  {
    sub_100045C38(6u);
    if (v44)
    {
    }
  }

  sub_1000024F4(&qword_1000811F0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_100068BF0;
  *(v45 + 56) = &type metadata for Int;
  *(v45 + 64) = &protocol witness table for Int;
  *(v45 + 32) = v13;
  v46 = sub_100067BD8();
  v48 = v47;

  *a3 = v27;
  *(a3 + 8) = v26;
  *(a3 + 16) = v43;
  *(a3 + 24) = v42;
  *(a3 + 32) = v46;
  *(a3 + 40) = v48;
LABEL_51:
  *(a3 + 48) = 0;
  return result;
}

uint64_t sub_10005C200()
{
  v0 = sub_10005E0D0(&off_10007E0E8);
  sub_1000024F4(&qword_100081FF0);
  result = swift_arrayDestroy();
  off_100081FC0 = v0;
  return result;
}

uint64_t sub_10005C25C()
{
  v0 = sub_100066FB8();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100067B88();
  __chkstk_darwin(v1 - 8);
  sub_1000024F4(&qword_100081FE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006B840;
  *(inited + 32) = 0;
  sub_100067B38();
  sub_100066FA8();
  *(inited + 40) = sub_100067BE8();
  *(inited + 48) = v3;
  *(inited + 56) = 1;
  sub_100067B38();
  sub_100066FA8();
  *(inited + 64) = sub_100067BE8();
  *(inited + 72) = v4;
  *(inited + 80) = 2;
  sub_100067B38();
  sub_100066FA8();
  *(inited + 88) = sub_100067BE8();
  *(inited + 96) = v5;
  *(inited + 104) = 3;
  sub_100067B38();
  sub_100066FA8();
  *(inited + 112) = sub_100067BE8();
  *(inited + 120) = v6;
  *(inited + 128) = 4;
  sub_100067B38();
  sub_100066FA8();
  *(inited + 136) = sub_100067BE8();
  *(inited + 144) = v7;
  *(inited + 152) = 5;
  sub_100067B38();
  sub_100066FA8();
  *(inited + 160) = sub_100067BE8();
  *(inited + 168) = v8;
  *(inited + 176) = 6;
  sub_100067B38();
  sub_100066FA8();
  *(inited + 184) = sub_100067BE8();
  *(inited + 192) = v9;
  v10 = sub_10005E0D0(inited);
  swift_setDeallocating();
  sub_1000024F4(&qword_100081FF0);
  result = swift_arrayDestroy();
  off_100081FC8 = v10;
  return result;
}

uint64_t sub_10005C600()
{
  v0 = sub_100066FB8();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100067B88();
  __chkstk_darwin(v1 - 8);
  sub_1000024F4(&qword_100081FE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006B840;
  *(inited + 32) = 0;
  sub_100067B38();
  sub_100066FA8();
  *(inited + 40) = sub_100067BE8();
  *(inited + 48) = v3;
  *(inited + 56) = 1;
  sub_100067B38();
  sub_100066FA8();
  *(inited + 64) = sub_100067BE8();
  *(inited + 72) = v4;
  *(inited + 80) = 2;
  sub_100067B38();
  sub_100066FA8();
  *(inited + 88) = sub_100067BE8();
  *(inited + 96) = v5;
  *(inited + 104) = 3;
  sub_100067B38();
  sub_100066FA8();
  *(inited + 112) = sub_100067BE8();
  *(inited + 120) = v6;
  *(inited + 128) = 4;
  sub_100067B38();
  sub_100066FA8();
  *(inited + 136) = sub_100067BE8();
  *(inited + 144) = v7;
  *(inited + 152) = 5;
  sub_100067B38();
  sub_100066FA8();
  *(inited + 160) = sub_100067BE8();
  *(inited + 168) = v8;
  *(inited + 176) = 6;
  sub_100067B38();
  sub_100066FA8();
  *(inited + 184) = sub_100067BE8();
  *(inited + 192) = v9;
  v10 = sub_10005E0D0(inited);
  swift_setDeallocating();
  sub_1000024F4(&qword_100081FF0);
  result = swift_arrayDestroy();
  off_100081FD0 = v10;
  return result;
}

uint64_t sub_10005C99C()
{
  v0 = sub_100066FB8();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100067B88();
  __chkstk_darwin(v1 - 8);
  sub_1000024F4(&qword_100081FE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006B840;
  *(inited + 32) = 0;
  sub_100067B38();
  sub_100066FA8();
  *(inited + 40) = sub_100067BE8();
  *(inited + 48) = v3;
  *(inited + 56) = 1;
  sub_100067B38();
  sub_100066FA8();
  *(inited + 64) = sub_100067BE8();
  *(inited + 72) = v4;
  *(inited + 80) = 2;
  sub_100067B38();
  sub_100066FA8();
  *(inited + 88) = sub_100067BE8();
  *(inited + 96) = v5;
  *(inited + 104) = 3;
  sub_100067B38();
  sub_100066FA8();
  *(inited + 112) = sub_100067BE8();
  *(inited + 120) = v6;
  *(inited + 128) = 4;
  sub_100067B38();
  sub_100066FA8();
  *(inited + 136) = sub_100067BE8();
  *(inited + 144) = v7;
  *(inited + 152) = 5;
  sub_100067B38();
  sub_100066FA8();
  *(inited + 160) = sub_100067BE8();
  *(inited + 168) = v8;
  *(inited + 176) = 6;
  sub_100067B38();
  sub_100066FA8();
  *(inited + 184) = sub_100067BE8();
  *(inited + 192) = v9;
  v10 = sub_10005E0D0(inited);
  swift_setDeallocating();
  sub_1000024F4(&qword_100081FF0);
  result = swift_arrayDestroy();
  off_100081FD8 = v10;
  return result;
}

uint64_t sub_10005CD44()
{
  v0 = sub_100066FB8();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100067B88();
  __chkstk_darwin(v1 - 8);
  sub_1000024F4(&qword_100081FE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006B840;
  *(inited + 32) = 0;
  sub_100067B38();
  sub_100066FA8();
  *(inited + 40) = sub_100067BE8();
  *(inited + 48) = v3;
  *(inited + 56) = 1;
  sub_100067B38();
  sub_100066FA8();
  *(inited + 64) = sub_100067BE8();
  *(inited + 72) = v4;
  *(inited + 80) = 2;
  sub_100067B38();
  sub_100066FA8();
  *(inited + 88) = sub_100067BE8();
  *(inited + 96) = v5;
  *(inited + 104) = 3;
  sub_100067B38();
  sub_100066FA8();
  *(inited + 112) = sub_100067BE8();
  *(inited + 120) = v6;
  *(inited + 128) = 4;
  sub_100067B38();
  sub_100066FA8();
  *(inited + 136) = sub_100067BE8();
  *(inited + 144) = v7;
  *(inited + 152) = 5;
  sub_100067B38();
  sub_100066FA8();
  *(inited + 160) = sub_100067BE8();
  *(inited + 168) = v8;
  *(inited + 176) = 6;
  sub_100067B38();
  sub_100066FA8();
  *(inited + 184) = sub_100067BE8();
  *(inited + 192) = v9;
  v10 = sub_10005E0D0(inited);
  swift_setDeallocating();
  sub_1000024F4(&qword_100081FF0);
  result = swift_arrayDestroy();
  off_100081FE0 = v10;
  return result;
}

uint64_t sub_10005D0F0()
{
  sub_1000024F4(&qword_1000808D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10006B830;
  if (qword_100080858 != -1)
  {
    swift_once();
  }

  v1 = *(&xmmword_100085EF0 + 1);
  v2 = xmmword_100085F00;
  v3 = qword_100085F10;
  v4 = qword_100085F18;
  v5 = qword_100085F20;
  *(v0 + 32) = xmmword_100085EF0;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 64) = v3;
  *(v0 + 72) = v4;
  *(v0 + 80) = v5;

  sub_1000026E0(v4);
  if (qword_100080860 != -1)
  {
    swift_once();
  }

  v6 = *(&xmmword_100085F28 + 1);
  v7 = qword_100085F38;
  v8 = qword_100085F40;
  v9 = xmmword_100085F48;
  v10 = qword_100085F58;
  *(v0 + 88) = xmmword_100085F28;
  *(v0 + 96) = v6;
  *(v0 + 104) = v7;
  *(v0 + 112) = v8;
  *(v0 + 120) = v9;
  *(v0 + 136) = v10;

  sub_1000026E0(*(&v9 + 1));
  if (qword_100080868 != -1)
  {
    swift_once();
  }

  v11 = *(&xmmword_100085F60 + 1);
  v12 = qword_100085F70;
  v13 = qword_100085F78;
  v14 = xmmword_100085F80;
  v15 = qword_100085F90;
  *(v0 + 144) = xmmword_100085F60;
  *(v0 + 152) = v11;
  *(v0 + 160) = v12;
  *(v0 + 168) = v13;
  *(v0 + 176) = v14;
  *(v0 + 192) = v15;

  sub_1000026E0(*(&v14 + 1));
  if (qword_100080870 != -1)
  {
    swift_once();
  }

  v16 = *(&xmmword_100085F98 + 1);
  v17 = qword_100085FA8;
  v18 = unk_100085FB0;
  v19 = xmmword_100085FB8;
  v20 = qword_100085FC8;
  *(v0 + 200) = xmmword_100085F98;
  *(v0 + 208) = v16;
  *(v0 + 216) = v17;
  *(v0 + 224) = v18;
  *(v0 + 232) = v19;
  *(v0 + 248) = v20;

  sub_1000026E0(*(&v19 + 1));
  if (qword_100080878 != -1)
  {
    swift_once();
  }

  v21 = *(&xmmword_100085FD0 + 1);
  v22 = qword_100085FE0;
  v23 = unk_100085FE8;
  v24 = xmmword_100085FF0;
  v25 = qword_100086000;
  *(v0 + 256) = xmmword_100085FD0;
  *(v0 + 264) = v21;
  *(v0 + 272) = v22;
  *(v0 + 280) = v23;
  *(v0 + 288) = v24;
  *(v0 + 304) = v25;
  qword_100085EE8 = v0;

  return sub_1000026E0(*(&v24 + 1));
}

uint64_t sub_10005D3E0()
{
  v0 = sub_100067228();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000024F4(&qword_100080A48);
  v4 = sub_1000670C8();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  v11 = xmmword_100068BF0;
  *(v7 + 16) = xmmword_100068BF0;
  (*(v5 + 104))(v7 + v6, enum case for ServiceKind.garageDoorOpener(_:), v4);
  (*(v1 + 104))(v3, enum case for CharacteristicKind.currentDoorState(_:), v0);
  sub_1000024F4(&qword_100080A50);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v11;
  result = (*(v1 + 32))(v9 + v8, v3, v0);
  *&xmmword_100085EF0 = 0xD000000000000013;
  *(&xmmword_100085EF0 + 1) = 0x800000010006E140;
  *&xmmword_100085F00 = v7;
  *(&xmmword_100085F00 + 1) = _swiftEmptyArrayStorage;
  qword_100085F18 = 0;
  qword_100085F20 = 0;
  qword_100085F10 = v9;
  return result;
}

uint64_t sub_10005D620()
{
  v14 = sub_100067228();
  v0 = *(v14 - 8);
  __chkstk_darwin(v14);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0x800000010006E120;
  sub_1000024F4(&qword_100080A48);
  v3 = sub_1000670C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100069B30;
  v8 = v7 + v6;
  v9 = *(v4 + 104);
  v9(v8, enum case for ServiceKind.door(_:), v3);
  v9(v8 + v5, enum case for ServiceKind.window(_:), v3);
  v10 = v14;
  (*(v0 + 104))(v2, enum case for CharacteristicKind.currentPosition(_:), v14);
  sub_1000024F4(&qword_100080A50);
  v11 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100068BF0;
  result = (*(v0 + 32))(v12 + v11, v2, v10);
  *&xmmword_100085F28 = 0xD000000000000019;
  *(&xmmword_100085F28 + 1) = v15;
  qword_100085F38 = v7;
  qword_100085F40 = _swiftEmptyArrayStorage;
  xmmword_100085F48 = v12;
  qword_100085F58 = 0;
  return result;
}

uint64_t sub_10005D890()
{
  v0 = sub_100067228();
  v1 = *(v0 - 8);
  v19 = v0;
  v20 = v1;
  v2 = v1;
  __chkstk_darwin(v0);
  v18 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0x800000010006E0E0;
  sub_1000024F4(&qword_100080A48);
  v4 = sub_1000670C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  v17 = v8;
  v16 = xmmword_100068BF0;
  *(v8 + 16) = xmmword_100068BF0;
  v9 = *(v5 + 104);
  v9(v8 + v7, enum case for ServiceKind.contactSensor(_:), v4);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100068F50;
  v9(v10 + v7, enum case for ServiceKind.garageDoorOpener(_:), v4);
  v9(v10 + v7 + v6, enum case for ServiceKind.door(_:), v4);
  v9(v10 + v7 + 2 * v6, enum case for ServiceKind.window(_:), v4);
  v12 = v18;
  v11 = v19;
  (*(v2 + 104))(v18, enum case for CharacteristicKind.contactState(_:), v19);
  sub_1000024F4(&qword_100080A50);
  v13 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v16;
  result = (*(v2 + 32))(v14 + v13, v12, v11);
  *&xmmword_100085F60 = 0x1000000000000032;
  *(&xmmword_100085F60 + 1) = v21;
  qword_100085F70 = v17;
  qword_100085F78 = v10;
  xmmword_100085F80 = v14;
  qword_100085F90 = 0;
  return result;
}

uint64_t sub_10005DB68()
{
  v0 = sub_100067228();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000024F4(&qword_100080A48);
  v4 = sub_1000670C8();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  v11 = xmmword_100068BF0;
  *(v7 + 16) = xmmword_100068BF0;
  (*(v5 + 104))(v7 + v6, enum case for ServiceKind.lockMechanism(_:), v4);
  (*(v1 + 104))(v3, enum case for CharacteristicKind.currentLockMechanismState(_:), v0);
  sub_1000024F4(&qword_100080A50);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v11;
  result = (*(v1 + 32))(v9 + v8, v3, v0);
  *&xmmword_100085F98 = 0x736B636F4CLL;
  *(&xmmword_100085F98 + 1) = 0xE500000000000000;
  qword_100085FA8 = v7;
  unk_100085FB0 = _swiftEmptyArrayStorage;
  qword_100085FC8 = 0;
  xmmword_100085FB8 = v9;
  return result;
}

uint64_t sub_10005DDA0()
{
  v0 = sub_100067228();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000024F4(&qword_100080A48);
  v4 = sub_1000670C8();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  v11 = xmmword_100068BF0;
  *(v7 + 16) = xmmword_100068BF0;
  (*(v5 + 104))(v7 + v6, enum case for ServiceKind.securitySystem(_:), v4);
  (*(v1 + 104))(v3, enum case for CharacteristicKind.currentSecuritySystemState(_:), v0);
  sub_1000024F4(&qword_100080A50);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v11;
  result = (*(v1 + 32))(v9 + v8, v3, v0);
  *&xmmword_100085FD0 = 0xD000000000000010;
  *(&xmmword_100085FD0 + 1) = 0x800000010006E0C0;
  qword_100085FE0 = v7;
  unk_100085FE8 = _swiftEmptyArrayStorage;
  qword_100086000 = 0;
  xmmword_100085FF0 = v9;
  return result;
}

void sub_10005DFE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1000024F4(&qword_1000809F0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 56);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void *sub_10005E0D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000024F4(&qword_100081FF8);
  v3 = sub_1000680F8();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_100045C38(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_100045C38(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10005E1E4@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  if (a2)
  {
    v5 = result;
    if (a2 == 1)
    {
      if (qword_100080828 != -1)
      {
        result = swift_once();
      }

      v6 = off_100081FC0;
      if (*(off_100081FC0 + 2) && (result = sub_100045C38(v5), (v7 & 1) != 0))
      {
        v8 = (v6[7] + 16 * result);
        v10 = *v8;
        v9 = v8[1];
      }

      else
      {
        v10 = 0;
        v9 = 0xE000000000000000;
      }

      if (qword_100080830 != -1)
      {
        result = swift_once();
      }

      v19 = off_100081FC8;
      if (*(off_100081FC8 + 2) && (result = sub_100045C38(v5), (v20 & 1) != 0))
      {
        v21 = (v19[7] + 16 * result);
        v11 = *v21;
        v12 = v21[1];
      }

      else
      {
        v11 = 0;
        v12 = 0xE000000000000000;
      }

      if (qword_100080840 != -1)
      {
        result = swift_once();
      }

      v22 = off_100081FD8;
      if (*(off_100081FD8 + 2) && (result = sub_100045C38(v5), (v23 & 1) != 0))
      {
        v24 = (v22[7] + 16 * result);
        v13 = *v24;
        v14 = v24[1];
      }

      else
      {
        v13 = 0;
        v14 = 0xE000000000000000;
      }
    }

    else
    {
      if (qword_100080828 != -1)
      {
        swift_once();
      }

      v15 = off_100081FC0;
      if (*(off_100081FC0 + 2) && (v16 = sub_100045C38(v5), (v17 & 1) != 0))
      {
        v18 = (v15[7] + 16 * v16);
        v10 = *v18;
        v9 = v18[1];
      }

      else
      {
        v10 = 0;
        v9 = 0xE000000000000000;
      }

      if (qword_100080838 != -1)
      {
        swift_once();
      }

      v25 = off_100081FD0;
      if (*(off_100081FD0 + 2) && (v26 = sub_100045C38(v5), (v27 & 1) != 0))
      {
        v28 = (v25[7] + 16 * v26);
        v11 = *v28;
        v12 = v28[1];
      }

      else
      {
        v11 = 0;
        v12 = 0xE000000000000000;
      }

      if (qword_100080848 != -1)
      {
        swift_once();
      }

      if (*(off_100081FE0 + 2))
      {
        sub_100045C38(v5);
        if (v29)
        {
        }
      }

      sub_1000024F4(&qword_1000811F0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_100068BF0;
      *(v30 + 56) = &type metadata for Int;
      *(v30 + 64) = &protocol witness table for Int;
      *(v30 + 32) = v3;
      v13 = sub_100067BD8();
      v14 = v31;
    }

    v3 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  *a3 = v3;
  *(a3 + 8) = v9;
  *(a3 + 16) = v11;
  *(a3 + 24) = v12;
  *(a3 + 32) = v13;
  *(a3 + 40) = v14;
  *(a3 + 48) = 0;
  return result;
}

uint64_t sub_10005E554(uint64_t a1)
{
  v1[15] = a1;
  v2 = sub_100067228();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v3 = sub_1000670C8();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_10005E670, 0, 0);
}

uint64_t sub_10005E670()
{
  v1 = v0[15];
  if (v1)
  {
    v3 = v0[20];
    v2 = v0[21];
    v4 = v0[19];
    (*(v3 + 104))(v2, enum case for ServiceKind.garageDoorOpener(_:), v4);
    v5 = v1;
    v6 = sub_100067DC8();
    v0[22] = v6;
    (*(v3 + 8))(v2, v4);
    if (v6)
    {
      v8 = v0[17];
      v7 = v0[18];
      v9 = v0[16];
      (*(v8 + 104))(v7, enum case for CharacteristicKind.currentDoorState(_:), v9);
      v10 = [v6 characteristics];
      sub_100009700(0, &qword_100080B50);
      v11 = sub_100067CA8();

      v12 = swift_task_alloc();
      *(v12 + 16) = v7;
      v13 = sub_100020590(sub_1000205A8, v12, v11);
      v0[23] = v13;

      (*(v8 + 8))(v7, v9);
      if (v13)
      {
        v14 = swift_task_alloc();
        v0[24] = v14;
        *v14 = v0;
        v14[1] = sub_10005E8DC;

        return HMCharacteristic.fetchedValue()(v0 + 6);
      }
    }
  }

  v15 = v0[1];

  return v15(0, 1);
}

uint64_t sub_10005E8DC()
{

  return _swift_task_switch(sub_10005FD88, 0, 0);
}

uint64_t sub_10005E9D8(uint64_t a1, char a2)
{
  v4 = 0x9380E29380E2;
  v5 = sub_100066FB8();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100067B88();
  __chkstk_darwin(v6 - 8);
  if ((a2 & 1) == 0)
  {
    if (a1 <= 1)
    {
      if (a1 <= 1)
      {
LABEL_8:
        sub_100067B38();
        sub_100066FA8();
        return sub_100067BE8();
      }
    }

    else if (a1 == 2 || a1 == 3 || a1 == 4)
    {
      goto LABEL_8;
    }
  }

  return v4;
}

unint64_t sub_10005EBA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000024F4(&qword_1000818B8);
    v3 = sub_1000680F8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_100045C38(v5);
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

unint64_t sub_10005EC84(uint64_t a1)
{
  v2 = sub_1000024F4(&qword_100082000);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000024F4(&qword_1000818C0);
    v7 = sub_1000680F8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000095D4(v9, v5, &qword_100082000);
      result = sub_100045CA4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1000670C8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

uint64_t sub_10005EE6C(uint64_t a1)
{
  v1[15] = a1;
  v2 = sub_100067228();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v3 = sub_1000670C8();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_10005EF88, 0, 0);
}

uint64_t sub_10005EF88()
{
  v1 = v0[15];
  if (v1)
  {
    v3 = v0[20];
    v2 = v0[21];
    v4 = v0[19];
    (*(v3 + 104))(v2, enum case for ServiceKind.lockMechanism(_:), v4);
    v5 = v1;
    v6 = sub_100067DC8();
    v0[22] = v6;
    (*(v3 + 8))(v2, v4);
    if (v6)
    {
      v8 = v0[17];
      v7 = v0[18];
      v9 = v0[16];
      (*(v8 + 104))(v7, enum case for CharacteristicKind.currentLockMechanismState(_:), v9);
      v10 = [v6 characteristics];
      sub_100009700(0, &qword_100080B50);
      v11 = sub_100067CA8();

      v12 = swift_task_alloc();
      *(v12 + 16) = v7;
      v13 = sub_100020590(sub_10001420C, v12, v11);
      v0[23] = v13;

      (*(v8 + 8))(v7, v9);
      if (v13)
      {
        v14 = swift_task_alloc();
        v0[24] = v14;
        *v14 = v0;
        v14[1] = sub_10005F1F4;

        return HMCharacteristic.fetchedValue()(v0 + 6);
      }
    }
  }

  v15 = v0[1];

  return v15(0, 1);
}

uint64_t sub_10005F1F4()
{

  return _swift_task_switch(sub_10005F2F0, 0, 0);
}

uint64_t sub_10005F2F0()
{
  if (*(v0 + 72))
  {
    sub_10005F614((v0 + 48), (v0 + 16));
    sub_10001422C(v0 + 16, v0 + 80);
    sub_100009700(0, &qword_100080A30);
    v1 = swift_dynamicCast();
    v3 = *(v0 + 176);
    v2 = *(v0 + 184);
    v4 = *(v0 + 120);
    if (v1)
    {
      v5 = *(v0 + 112);
      v6 = [v5 integerValue];

      sub_1000026F0(v0 + 16);
      v7 = 0;
      goto LABEL_7;
    }

    sub_1000026F0(v0 + 16);
  }

  else
  {
    v8 = *(v0 + 176);
    v9 = *(v0 + 120);

    sub_1000096A0(v0 + 48, &qword_100080A28);
  }

  v6 = 0;
  v7 = 1;
LABEL_7:

  v10 = *(v0 + 8);

  return v10(v6, v7);
}

uint64_t sub_10005F45C(uint64_t a1, char a2)
{
  v4 = 0x9380E29380E2;
  v5 = sub_100066FB8();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100067B88();
  __chkstk_darwin(v6 - 8);
  if ((a2 & 1) == 0)
  {
    if (a1 > 1)
    {
      if (a1 == 2 || a1 == 3)
      {
        goto LABEL_7;
      }
    }

    else if (a1 <= 1)
    {
LABEL_7:
      sub_100067B38();
      sub_100066FA8();
      return sub_100067BE8();
    }
  }

  return v4;
}

_OWORD *sub_10005F614(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10005F624(uint64_t a1)
{
  v1[15] = a1;
  v2 = sub_100067228();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v3 = sub_1000670C8();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_10005F740, 0, 0);
}

uint64_t sub_10005F740()
{
  v1 = v0[15];
  if (v1)
  {
    v3 = v0[20];
    v2 = v0[21];
    v4 = v0[19];
    (*(v3 + 104))(v2, enum case for ServiceKind.securitySystem(_:), v4);
    v5 = v1;
    v6 = sub_100067DC8();
    v0[22] = v6;
    (*(v3 + 8))(v2, v4);
    if (v6)
    {
      v8 = v0[17];
      v7 = v0[18];
      v9 = v0[16];
      (*(v8 + 104))(v7, enum case for CharacteristicKind.currentSecuritySystemState(_:), v9);
      v10 = [v6 characteristics];
      sub_100009700(0, &qword_100080B50);
      v11 = sub_100067CA8();

      v12 = swift_task_alloc();
      *(v12 + 16) = v7;
      v13 = sub_100020590(sub_1000205A8, v12, v11);
      v0[23] = v13;

      (*(v8 + 8))(v7, v9);
      if (v13)
      {
        v14 = swift_task_alloc();
        v0[24] = v14;
        *v14 = v0;
        v14[1] = sub_10005E8DC;

        return HMCharacteristic.fetchedValue()(v0 + 6);
      }
    }
  }

  v15 = v0[1];

  return v15(0, 1);
}

uint64_t sub_10005F9AC(uint64_t a1, char a2)
{
  v4 = 0x9380E29380E2;
  v5 = sub_100066FB8();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100067B88();
  __chkstk_darwin(v6 - 8);
  if ((a2 & 1) == 0)
  {
    if (a1 <= 1)
    {
      if (a1 <= 1)
      {
LABEL_8:
        sub_100067B38();
        sub_100066FA8();
        return sub_100067BE8();
      }
    }

    else if (a1 == 2 || a1 == 3 || a1 == 4)
    {
      goto LABEL_8;
    }
  }

  return v4;
}

uint64_t getEnumTagSinglePayload for SecurityIssue(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SecurityIssue(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10005FCCC()
{
  result = qword_100082008;
  if (!qword_100082008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082008);
  }

  return result;
}

unint64_t sub_10005FD24()
{
  result = qword_100082010;
  if (!qword_100082010)
  {
    sub_10000253C(&qword_100082018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082010);
  }

  return result;
}

uint64_t sub_10005FD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  return _swift_task_switch(sub_10005FDB4, 0, 0);
}

uint64_t sub_10005FDB4()
{
  v27 = v0;
  if (qword_100080788 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_100067318();
  v0[17] = sub_1000026A8(v2, qword_100085CA0);
  v3 = v1;

  v4 = sub_1000672F8();
  v5 = sub_100067E08();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[15];
    v6 = v0[16];
    v8 = v0[14];
    v9 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v9 = 136315650;
    *(v9 + 4) = sub_10000D4F0(v7, v6, &v26);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_10000D4F0(0xD00000000000001DLL, 0x800000010006C230, &v26);
    *(v9 + 22) = 2080;
    if (v8)
    {
      v10 = [v3 name];
      v11 = sub_100067BC8();
      v13 = v12;
    }

    else
    {
      v13 = 0xE400000000000000;
      v11 = 1819047278;
    }

    v14 = sub_10000D4F0(v11, v13, &v26);

    *(v9 + 24) = v14;
    swift_arrayDestroy();
  }

  if (qword_100080778 != -1)
  {
    swift_once();
  }

  sub_1000024F4(&qword_1000808D0);
  inited = swift_initStackObject();
  v0[18] = inited;
  *(inited + 16) = xmmword_100068BF0;
  if (qword_100080760 != -1)
  {
    swift_once();
  }

  v16 = *(&xmmword_100085BD0 + 1);
  v17 = qword_100085BE0;
  v18 = qword_100085BE8;
  v19 = xmmword_100085BF0;
  v20 = qword_100085C00;
  *(inited + 32) = xmmword_100085BD0;
  *(inited + 40) = v16;
  *(inited + 48) = v17;
  *(inited + 56) = v18;
  *(inited + 64) = v19;
  *(inited + 80) = v20;

  sub_1000026E0(*(&v19 + 1));
  v21 = swift_task_alloc();
  v0[19] = v21;
  *v21 = v0;
  v21[1] = sub_100060128;
  v22 = v0[15];
  v23 = v0[16];
  v24 = v0[14];

  return LockScreenDataModel.reloadCharacteristics(matching:for:fetchId:)(inited, v24, v22, v23);
}

uint64_t sub_100060128(uint64_t a1)
{
  *(*v1 + 160) = a1;

  swift_setDeallocating();
  swift_arrayDestroy();

  return _swift_task_switch(sub_10006025C, 0, 0);
}

uint64_t sub_10006025C()
{
  v35 = v0;
  v1 = sub_100008EA4(*(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 160));

  v2 = *(v1 + 2);
  if (v2)
  {
    if (v2 > 3)
    {
      v3 = v2 & 0x7FFFFFFFFFFFFFFCLL;
      v16 = v1 + 6;
      v4 = 0.0;
      v17 = v2 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v4 = v4 + *(v16 - 2) + *(v16 - 1) + *v16 + v16[1];
        v16 += 4;
        v17 -= 4;
      }

      while (v17);
      if (v2 == v3)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v3 = 0;
      v4 = 0.0;
    }

    v18 = v2 - v3;
    v19 = &v1[v3 + 4];
    do
    {
      v20 = *v19++;
      v4 = v4 + v20;
      --v18;
    }

    while (v18);
LABEL_12:
    v15 = v4 / v2;
    type metadata accessor for LockScreenDataModel();
    v14 = sub_100007020();
    v13 = v21;
    v12 = sub_100009188(v1);
    v11 = v22;

    v23 = sub_1000672F8();
    v24 = sub_100067E08();

    if (os_log_type_enabled(v23, v24))
    {
      v33 = *(v0 + 128);
      v25 = v14;
      v26 = v12;
      v27 = *(v0 + 120);
      v28 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v28 = 136315394;
      v29 = v27;
      v12 = v26;
      v14 = v25;
      *(v28 + 4) = sub_10000D4F0(v29, v33, &v34);
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_10000D4F0(v25, v13, &v34);
      _os_log_impl(&_mh_execute_header, v23, v24, "...{%s} temperature is: %s", v28, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_15;
  }

  v5 = sub_1000672F8();
  v6 = sub_100067DE8();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 120);
    v7 = *(v0 + 128);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10000D4F0(v8, v7, &v34);
    _os_log_impl(&_mh_execute_header, v5, v6, "...{%s} has no temperatures, returning placeholder", v9, 0xCu);
    sub_1000026F0(v10);
  }

  v11 = 0x800000010006C490;
  v12 = 0xD000000000000012;
  v13 = 0xA600000000000000;
  v14 = 0x9380E29380E2;
  v15 = 0.0;
LABEL_15:
  v30 = *(v0 + 104);
  LOBYTE(v34) = v2 == 0;
  *v30 = xmmword_10006B9E0;
  *(v30 + 16) = v15;
  *(v30 + 24) = v2 == 0;
  *(v30 + 32) = v14;
  *(v30 + 40) = v13;
  *(v30 + 48) = v12;
  *(v30 + 56) = v11;
  *(v30 + 64) = 0;
  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_100060620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ThreeColumnDataEntry();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000024F4(&qword_100080EA8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100060730(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ThreeColumnDataEntry();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000024F4(&qword_100080EA8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100060858()
{
  type metadata accessor for ThreeColumnDataEntry();
  if (v0 <= 0x3F)
  {
    sub_100021104();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void *sub_1000608F8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    v6 = a3;
    if (a4 >= a3)
    {
      v7 = result;
      while (a4 != v6)
      {
        v9 = v6;
        result = v7(&v8, &v10, &v9);
        if (!v4)
        {
          ++v6;
          v10 = v8;
          if (a4 != v6)
          {
            continue;
          }
        }

        return result;
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

double *sub_100060994(uint64_t (*a1)(char *), uint64_t a2)
{
  v41 = sub_1000673C8();
  v4 = *(v41 - 8);
  v5 = __chkstk_darwin(v41);
  v34 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v35 = &v28 - v8;
  __chkstk_darwin(v7);
  v39 = &v28 - v9;
  v10 = sub_1000024F4(&qword_100082368);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v28 - v12;
  v14 = sub_1000673E8();
  sub_1000614E4(&qword_100082370, &type metadata accessor for LayoutSubviews);
  sub_100067C68();
  v15 = *(v11 + 44);
  v36 = sub_1000614E4(&qword_100080BD8, &type metadata accessor for LayoutSubviews);
  v37 = v14;
  sub_100067D98();
  if (*&v13[v15] == v42[0])
  {
    v16 = _swiftEmptyArrayStorage;
LABEL_3:
    sub_1000096A0(v13, &qword_100082368);
  }

  else
  {
    v38 = (v4 + 32);
    v29 = v4;
    v30 = (v4 + 8);
    v31 = (v4 + 16);
    v16 = _swiftEmptyArrayStorage;
    v32 = a1;
    v33 = a2;
    while (1)
    {
      v17 = sub_100067DB8();
      v18 = v35;
      v19 = v41;
      (*v31)(v35);
      v17(v42, 0);
      sub_100067DA8();
      v20 = v39;
      v21 = *v38;
      (*v38)(v39, v18, v19);
      v22 = v40;
      v23 = v32(v20);
      if (v22)
      {
        break;
      }

      v40 = 0;
      if (v23)
      {
        v21(v34, v39, v41);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10000DC84(0, *(v16 + 2) + 1, 1);
          v16 = v43;
        }

        v26 = *(v16 + 2);
        v25 = *(v16 + 3);
        if (v26 >= v25 >> 1)
        {
          sub_10000DC84(v25 > 1, v26 + 1, 1);
          v16 = v43;
        }

        *(v16 + 2) = v26 + 1;
        v21(v16 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v26, v34, v41);
      }

      else
      {
        (*v30)(v39, v41);
      }

      sub_100067D98();
      if (*&v13[v15] == v42[0])
      {
        goto LABEL_3;
      }
    }

    (*v30)(v39, v41);
    sub_1000096A0(v13, &qword_100082368);
  }

  return v16;
}

uint64_t sub_100060DE0@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v21 = type metadata accessor for ThreeColumnCategoryViewAccessoryRectangular(0);
  __chkstk_darwin(v21);
  v20 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000024F4(&qword_1000820B0);
  __chkstk_darwin(v23);
  v22 = &v20 - v3;
  v4 = sub_1000024F4(&qword_1000820B8);
  __chkstk_darwin(v4);
  v6 = &v20 - v5;
  v25 = sub_1000024F4(&qword_1000820C0);
  __chkstk_darwin(v25);
  v8 = &v20 - v7;
  v9 = type metadata accessor for ThreeColumnCategoryViewSystemSmall(0);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000679B8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ThreeColumnCategoryView(0);
  sub_10004FB88(v15);
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == enum case for WidgetFamily.systemSmall(_:))
  {
    sub_10006152C(v1, v11, type metadata accessor for ThreeColumnDataEntry);
    sub_10006152C(v11, v6, type metadata accessor for ThreeColumnCategoryViewSystemSmall);
    swift_storeEnumTagMultiPayload();
    sub_1000614E4(&qword_1000820D0, type metadata accessor for ThreeColumnCategoryViewSystemSmall);
    sub_1000614E4(&qword_1000820D8, type metadata accessor for ThreeColumnCategoryViewAccessoryRectangular);
    sub_100067648();
    sub_1000095D4(v8, v22, &qword_1000820C0);
    swift_storeEnumTagMultiPayload();
    sub_1000613F8();
    sub_100067648();
    sub_1000096A0(v8, &qword_1000820C0);
    return sub_100061594(v11, type metadata accessor for ThreeColumnCategoryViewSystemSmall);
  }

  else
  {
    v18 = v22;
    if (v16 == enum case for WidgetFamily.accessoryRectangular(_:))
    {
      v19 = v20;
      sub_10006152C(v1, v20, type metadata accessor for ThreeColumnDataEntry);
      sub_10006152C(v19, v6, type metadata accessor for ThreeColumnCategoryViewAccessoryRectangular);
      swift_storeEnumTagMultiPayload();
      sub_1000614E4(&qword_1000820D0, type metadata accessor for ThreeColumnCategoryViewSystemSmall);
      sub_1000614E4(&qword_1000820D8, type metadata accessor for ThreeColumnCategoryViewAccessoryRectangular);
      sub_100067648();
      sub_1000095D4(v8, v18, &qword_1000820C0);
      swift_storeEnumTagMultiPayload();
      sub_1000613F8();
      sub_100067648();
      sub_1000096A0(v8, &qword_1000820C0);
      return sub_100061594(v19, type metadata accessor for ThreeColumnCategoryViewAccessoryRectangular);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_1000613F8();
      sub_100067648();
      return (*(v13 + 8))(v15, v12);
    }
  }
}

unint64_t sub_1000613F8()
{
  result = qword_1000820C8;
  if (!qword_1000820C8)
  {
    sub_10000253C(&qword_1000820C0);
    sub_1000614E4(&qword_1000820D0, type metadata accessor for ThreeColumnCategoryViewSystemSmall);
    sub_1000614E4(&qword_1000820D8, type metadata accessor for ThreeColumnCategoryViewAccessoryRectangular);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000820C8);
  }

  return result;
}

uint64_t sub_1000614E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006152C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100061594(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100061634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThreeColumnDataEntry();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000616B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThreeColumnDataEntry();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_100061730()
{
  result = qword_100082200;
  if (!qword_100082200)
  {
    sub_10000253C(&qword_100082208);
    sub_1000613F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082200);
  }

  return result;
}

uint64_t sub_1000617D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = sub_100067698();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1000024F4(&qword_1000822D0);
  __chkstk_darwin(v41);
  v6 = &v34 - v5;
  v42 = sub_1000024F4(&qword_1000822D8);
  v39 = *(v42 - 8);
  __chkstk_darwin(v42);
  v36 = &v34 - v7;
  v40 = sub_1000024F4(&qword_1000822E0);
  __chkstk_darwin(v40);
  v9 = &v34 - v8;
  v10 = sub_1000024F4(&qword_1000810E8);
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for ThreeColumnDataEntry();
  v14 = *(v2 + *(v13 + 24));
  sub_100067728();
  v15 = enum case for Font.Design.default(_:);
  v16 = sub_100067718();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v12, v15, v16);
  (*(v17 + 56))(v12, 0, 1, v16);
  v18 = sub_100067748();
  sub_1000096A0(v12, &qword_1000810E8);
  if (*(v2 + *(v13 + 32)) == 2)
  {
    *v9 = 2;
    swift_storeEnumTagMultiPayload();
    sub_1000246A4();
    v19 = sub_100064064(&qword_1000822F8, &qword_1000822D0, &unk_10006BCC8, sub_100064314);
    v44 = v41;
    v45 = v19;
    swift_getOpaqueTypeConformance2();
    sub_100067648();
  }

  else
  {
    *v6 = sub_1000675D8();
    *(v6 + 1) = 0;
    v6[16] = 0;
    v21 = sub_1000024F4(&qword_1000822E8);
    sub_100061D6C(v14, v2, v18, &v6[*(v21 + 44)]);
    v22 = 3 - *(v14 + 16);
    KeyPath = swift_getKeyPath();
    v24 = &v6[*(sub_1000024F4(&qword_1000822F0) + 36)];
    *v24 = KeyPath;
    *(v24 + 1) = v22;
    v24[16] = 0;
    v25 = sub_100067868();
    v26 = swift_getKeyPath();
    v27 = v41;
    v28 = &v6[*(v41 + 36)];
    *v28 = v26;
    v28[1] = v25;
    v29 = v35;
    sub_100067688();
    v30 = sub_100064064(&qword_1000822F8, &qword_1000822D0, &unk_10006BCC8, sub_100064314);
    v31 = v36;
    sub_100067848();
    (*(v37 + 8))(v29, v38);
    sub_1000096A0(v6, &qword_1000822D0);
    v32 = v39;
    v33 = v42;
    (*(v39 + 16))(v9, v31, v42);
    swift_storeEnumTagMultiPayload();
    sub_1000246A4();
    v44 = v27;
    v45 = v30;
    swift_getOpaqueTypeConformance2();
    sub_100067648();

    return (*(v32 + 8))(v31, v33);
  }
}

uint64_t sub_100061D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v43 = a3;
  v7 = sub_1000024F4(&qword_100082318);
  v8 = __chkstk_darwin(v7);
  v44 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v36 - v10;
  if (*(a1 + 16) > 2uLL)
  {
    v41 = 0;
    v42 = 0;
    v27 = 0;
    v40 = 0;
  }

  else
  {
    v12 = (a2 + *(type metadata accessor for ThreeColumnDataEntry() + 20));
    v37 = v7;
    v13 = v12[1];
    v45 = *v12;
    v46 = v13;
    sub_1000025E8();

    v14 = sub_1000677B8();
    v16 = v15;
    KeyPath = a2;
    v39 = a1;
    v18 = v17;
    sub_100067758();
    v19 = sub_100067798();
    v21 = v20;
    LODWORD(v42) = v22;
    v24 = v23;

    v25 = v18 & 1;
    a1 = v39;
    sub_10004D060(v14, v16, v25);
    a2 = KeyPath;

    v26 = v42;
    v27 = v42 & 1;
    v41 = v21;
    v42 = v19;
    v28 = v19;
    v7 = v37;
    sub_100055008(v28, v21, v26 & 1);
    v40 = v24;
  }

  *v11 = *(a2 + *(type metadata accessor for ThreeColumnDataEntry() + 28));
  *(v11 + 2) = 3;
  v39 = *(v7 + 44);
  v45 = a1;
  KeyPath = swift_getKeyPath();

  sub_1000024F4(&qword_1000822A8);
  sub_1000024F4(&qword_100082320);
  sub_1000141C4(&qword_1000822B0, &qword_1000822A8);
  sub_1000642C0();
  sub_1000141C4(&qword_100082328, &qword_100082320);
  sub_100067918();
  v29 = v44;
  sub_1000095D4(v11, v44, &qword_100082318);
  v31 = v41;
  v30 = v42;
  *a4 = v42;
  a4[1] = v31;
  v32 = v40;
  a4[2] = v27;
  a4[3] = v32;
  v33 = sub_1000024F4(&qword_100082330);
  sub_1000095D4(v29, a4 + *(v33 + 48), &qword_100082318);
  v34 = a4 + *(v33 + 64);
  sub_100064400(v30, v31, v27, v32);
  sub_100064444(v30, v31, v27, v32);
  sub_1000096A0(v11, &qword_100082318);
  *v34 = 0;
  v34[8] = 0;
  sub_1000096A0(v29, &qword_100082318);
  return sub_100064444(v30, v31, v27, v32);
}

uint64_t sub_100062128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_100067598();
  __chkstk_darwin(v4 - 8);
  v49 = *(a1 + 48);

  v58 = sub_100067898();
  KeyPath = swift_getKeyPath();
  sub_1000025E8();

  v5 = sub_1000677B8();
  v7 = v6;
  v9 = v8;
  sub_100067758();
  v10 = sub_100067798();
  v53 = v11;
  v54 = v10;
  v52 = v12;
  v55 = v13;

  sub_10004D060(v5, v7, v9 & 1);

  v14 = sub_1000677B8();
  v16 = v15;
  v18 = v17;
  sub_100067708();
  v19 = sub_100067798();
  v47 = v20;
  v48 = v19;
  v22 = v21;

  sub_10004D060(v14, v16, v18 & 1);

  sub_100067588();
  v23 = 0xE000000000000000;
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  sub_100067578(v59);
  if (v49)
  {
    v24._countAndFlagsBits = 37;
  }

  else
  {
    v24._countAndFlagsBits = 0;
  }

  if (v49)
  {
    v23 = 0xE100000000000000;
  }

  v24._object = v23;
  sub_100067568(v24);

  v60._countAndFlagsBits = 0;
  v60._object = 0xE000000000000000;
  sub_100067578(v60);
  sub_1000675B8();
  v25 = sub_1000677A8();
  v27 = v26;
  v29 = v28;
  sub_100067708();
  sub_100067768();

  v30 = sub_100067798();
  v32 = v31;
  v34 = v33;

  sub_10004D060(v25, v27, v29 & 1);

  v50 = sub_100067788();
  v36 = v35;
  v38 = v37;
  sub_10004D060(v30, v32, v34 & 1);

  sub_10004D060(v48, v47, v22 & 1);

  sub_100067708();
  v39 = sub_100067798();
  v41 = v40;
  v43 = v42;
  v45 = v44;

  sub_10004D060(v50, v36, v38 & 1);

  *a3 = v58;
  *(a3 + 8) = KeyPath;
  *(a3 + 16) = a2;
  *(a3 + 24) = v54;
  *(a3 + 32) = v53;
  *(a3 + 40) = v52 & 1;
  *(a3 + 48) = v55;
  *(a3 + 56) = v39;
  *(a3 + 64) = v41;
  *(a3 + 72) = v43 & 1;
  *(a3 + 80) = v45;
  *(a3 + 88) = 256;
  *(a3 + 96) = 0x4008000000000000;

  sub_100055008(v54, v53, v52 & 1);

  sub_100055008(v39, v41, v43 & 1);

  sub_10004D060(v39, v41, v43 & 1);

  sub_10004D060(v54, v53, v52 & 1);
}

uint64_t sub_1000625D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, BOOL *a5@<X8>, CGFloat a6@<D2>, CGFloat a7@<D3>, CGFloat a8@<D4>, CGFloat a9@<D5>)
{
  v18 = sub_1000673C8();
  v19 = *(v18 - 8);
  result = __chkstk_darwin(v18);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1 * a2;
  if ((*a1 * a2) >> 64 != v23 >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = v23 + 1;
  if (__OFADD__(v23, 1))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1000673F8();
  v24 = *(a3 + 16);
  if (!v24)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v25 = *(a4 + 16);
  if (!v25)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v26 = *(a3 + 32);
  v27 = *(a4 + 32);
  sub_100067438();
  v35 = v28 & 1;
  v34 = v29 & 1;
  result = sub_1000673A8();
  if (v25 == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v24 < 3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v25 >= 3)
  {
    v31 = v26 + v27 + v30 + *(a4 + 40) + *(a3 + 48) + *(a4 + 48);
    v36.origin.x = a6;
    v36.origin.y = a7;
    v36.size.width = a8;
    v36.size.height = a9;
    Width = CGRectGetWidth(v36);
    result = (*(v19 + 8))(v22, v18);
    *a5 = v31 < Width;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1000627BC@<X0>(double *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, double *a5@<X8>)
{
  v10 = sub_1000673C8();
  v11 = *(v10 - 8);
  result = __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v15 >= *(a3 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = *a1;
  v17 = 0.0;
  if (*(a3 + v15 + 32) == 1)
  {
    v18 = v15 * a4;
    if ((v15 * a4) >> 64 == (v15 * a4) >> 63)
    {
      result = v18 + 1;
      if (!__OFADD__(v18, 1))
      {
        sub_1000673F8();
        sub_100067438();
        v25 = v19 & 1;
        v24 = v20 & 1;
        sub_1000673A8();
        v17 = v21;
        result = (*(v11 + 8))(v14, v10);
        goto LABEL_7;
      }

LABEL_14:
      __break(1u);
      return result;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_7:
  if (v16 > v17)
  {
    v22 = v16;
  }

  else
  {
    v22 = v17;
  }

  *a5 = v22;
  return result;
}

void (*sub_100062A30(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100067328();
  return sub_100062AB8;
}

void sub_100062AB8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_100062B04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = sub_100067698();
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1000024F4(&qword_100082210);
  __chkstk_darwin(v48);
  v6 = &v41 - v5;
  v49 = sub_1000024F4(&qword_100082218);
  v46 = *(v49 - 8);
  __chkstk_darwin(v49);
  v43 = &v41 - v7;
  v47 = sub_1000024F4(&qword_100082220);
  __chkstk_darwin(v47);
  v9 = &v41 - v8;
  v10 = sub_1000024F4(&qword_1000810E8);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for ThreeColumnDataEntry();
  v14 = v13[7];
  v41 = *(v2 + v13[6]);
  v15 = (v2 + v14);
  v16 = *(v2 + v14 + 8);
  sub_100067728();
  v17 = enum case for Font.Design.default(_:);
  v18 = sub_100067718();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v12, v17, v18);
  (*(v19 + 56))(v12, 0, 1, v18);
  v20 = sub_100067748();
  sub_1000096A0(v12, &qword_1000810E8);
  if (*(v2 + v13[8]) == 2)
  {
    v21 = *v15;
    *v9 = 2;
    *(v9 + 1) = v21;
    *(v9 + 2) = v16;
    swift_storeEnumTagMultiPayload();
    sub_10004D3C0();
    v22 = sub_100063FAC();
    v51 = v48;
    v52 = v22;
    swift_getOpaqueTypeConformance2();
    sub_100067648();
  }

  else
  {
    *v6 = sub_1000675D8();
    *(v6 + 1) = 0;
    v6[16] = 0;
    v24 = sub_1000024F4(&qword_100082228);
    sub_100063090(v2, v41, v20, &v6[*(v24 + 44)]);
    KeyPath = swift_getKeyPath();
    v26 = &v6[*(sub_1000024F4(&qword_100082230) + 36)];
    *v26 = KeyPath;
    *(v26 + 1) = 1;
    v26[16] = 0;
    v27 = sub_100067868();
    v28 = swift_getKeyPath();
    v29 = &v6[*(sub_1000024F4(&qword_100082238) + 36)];
    *v29 = v28;
    v29[1] = v27;
    LOBYTE(v27) = sub_1000676E8();
    sub_100067348();
    v30 = v48;
    v31 = &v6[*(v48 + 36)];
    *v31 = v27;
    *(v31 + 1) = v32;
    *(v31 + 2) = v33;
    *(v31 + 3) = v34;
    *(v31 + 4) = v35;
    v31[40] = 0;
    v36 = v42;
    sub_100067688();
    v37 = sub_100063FAC();
    v38 = v43;
    sub_100067848();
    (*(v44 + 8))(v36, v45);
    sub_1000096A0(v6, &qword_100082210);
    v39 = v46;
    v40 = v49;
    (*(v46 + 16))(v9, v38, v49);
    swift_storeEnumTagMultiPayload();
    sub_10004D3C0();
    v51 = v30;
    v52 = v37;
    swift_getOpaqueTypeConformance2();
    sub_100067648();

    return (*(v39 + 8))(v38, v40);
  }
}

uint64_t sub_100063090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a3;
  v51 = a2;
  v48 = sub_100067658();
  __chkstk_darwin(v48);
  v50 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100067928();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = sub_1000024F4(&qword_100082268);
  v52 = *(v54 - 8);
  v11 = __chkstk_darwin(v54);
  v49 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v57 = &v42[-v13];
  v14 = sub_1000024F4(&qword_1000810E8);
  __chkstk_darwin(v14 - 8);
  v16 = &v42[-v15];
  v17 = (a1 + *(type metadata accessor for ThreeColumnDataEntry() + 20));
  v18 = v17[1];
  v67 = *v17;
  v68 = v18;
  sub_1000025E8();

  v46 = sub_1000677B8();
  v45 = v19;
  v21 = v20;
  v47 = v22;
  KeyPath = swift_getKeyPath();
  sub_100067728();
  v23 = enum case for Font.Design.default(_:);
  v24 = sub_100067718();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v16, v23, v24);
  (*(v25 + 56))(v16, 0, 1, v24);
  v55 = sub_100067748();
  sub_1000096A0(v16, &qword_1000810E8);
  v56 = swift_getKeyPath();
  LOBYTE(v67) = v21 & 1;
  LOBYTE(v18) = v21 & 1;
  v43 = v21 & 1;
  LOBYTE(v62) = 0;
  sub_1000024F4(&qword_100082270);
  sub_100067938();
  *(swift_allocObject() + 16) = xmmword_100069B30;
  *v10 = 0x4030000000000000;
  v26 = *(v8 + 104);
  v26(v10, enum case for GridItem.Size.fixed(_:), v7);
  sub_100067958();
  sub_100067948();
  *v10 = xmmword_10006BA00;
  v26(v10, enum case for GridItem.Size.flexible(_:), v7);
  sub_100067968();
  sub_100067948();
  v58 = v51;
  v59 = v53;
  sub_1000675C8();
  LODWORD(v67) = 0;
  sub_1000614E4(&qword_100082278, &type metadata accessor for PinnedScrollableViews);
  sub_100068278();
  sub_1000024F4(&qword_100082280);
  sub_100064208();
  v27 = v57;
  sub_100067978();
  v28 = v52;
  v29 = *(v52 + 16);
  v30 = v49;
  v31 = v54;
  v29(v49, v27, v54);
  v32 = v46;
  v33 = v45;
  *&v62 = v46;
  *(&v62 + 1) = v45;
  LOBYTE(v63) = v18;
  *(&v63 + 1) = *v61;
  DWORD1(v63) = *&v61[3];
  v34 = v47;
  v35 = KeyPath;
  *(&v63 + 1) = v47;
  *&v64 = KeyPath;
  *(&v64 + 1) = 1;
  LOBYTE(v65) = 0;
  *(&v65 + 1) = *v60;
  DWORD1(v65) = *&v60[3];
  v36 = v55;
  *(&v65 + 1) = v56;
  v66 = v55;
  v37 = v63;
  *a4 = v62;
  *(a4 + 16) = v37;
  v38 = v65;
  *(a4 + 32) = v64;
  *(a4 + 48) = v38;
  *(a4 + 64) = v36;
  *(a4 + 72) = 0;
  *(a4 + 80) = 0;
  v39 = (a4 + *(sub_1000024F4(&qword_1000822A0) + 64));
  v29(v39, v30, v31);
  sub_1000095D4(&v62, &v67, &qword_100081100);
  v40 = *(v28 + 8);
  v40(v57, v31);
  v40(v30, v31);
  v67 = v32;
  v68 = v33;
  v69 = v43;
  *v70 = *v61;
  *&v70[3] = *&v61[3];
  v71 = v34;
  v72 = v35;
  v73 = 1;
  v74 = 0;
  *v75 = *v60;
  *&v75[3] = *&v60[3];
  v76 = v56;
  v77 = v55;
  return sub_1000096A0(&v67, &qword_100081100);
}

uint64_t sub_100063814()
{
  swift_getKeyPath();

  sub_1000024F4(&qword_1000822A8);
  sub_1000024F4(&qword_100082298);
  sub_1000141C4(&qword_1000822B0, &qword_1000822A8);
  sub_1000642C0();
  sub_1000141C4(&qword_100082290, &qword_100082298);
  return sub_100067918();
}

uint64_t sub_100063960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v5;
  v21[2] = *(a1 + 32);
  v22 = *(a1 + 48);

  v6 = sub_100067898();
  KeyPath = swift_getKeyPath();

  v8 = sub_100067538();
  v19[0] = 0;
  sub_100063BA0(v21, &v33);
  v25 = *&v34[16];
  v26 = *&v34[32];
  v27 = *&v34[48];
  v28 = *&v34[64];
  v23 = v33;
  v24 = *v34;
  v30 = *&v34[64];
  v29[2] = *&v34[16];
  v29[3] = *&v34[32];
  v29[4] = *&v34[48];
  v29[0] = v33;
  v29[1] = *v34;
  sub_1000095D4(&v23, &v31, &qword_1000822C0);
  sub_1000096A0(v29, &qword_1000822C0);
  *&v20[39] = v25;
  *&v20[55] = v26;
  *&v20[71] = v27;
  *&v20[87] = v28;
  *&v20[7] = v23;
  *&v20[23] = v24;
  v31 = v8;
  v32[0] = 0;
  v9 = *&v20[16];
  *&v32[1] = *v20;
  *&v32[80] = *&v20[79];
  *&v32[65] = *&v20[64];
  v11 = *&v20[48];
  v10 = *&v20[64];
  *&v32[49] = *&v20[48];
  v12 = *&v20[32];
  *&v32[33] = *&v20[32];
  v13 = *v20;
  *&v32[17] = *&v20[16];
  v14 = *&v32[32];
  *(a3 + 56) = *&v32[16];
  v15 = v31;
  *(a3 + 40) = *v32;
  *(a3 + 24) = v15;
  v16 = *&v32[64];
  *(a3 + 120) = *&v32[80];
  v17 = *&v32[48];
  *(a3 + 104) = v16;
  *(a3 + 88) = v17;
  *(a3 + 72) = v14;
  *a3 = v6;
  *(a3 + 8) = KeyPath;
  *(a3 + 16) = a2;
  v33 = v8;
  v34[0] = 0;
  *&v34[17] = v9;
  *&v34[1] = v13;
  *&v34[80] = *&v20[79];
  *&v34[65] = v10;
  *&v34[49] = v11;
  *&v34[33] = v12;

  sub_1000095D4(&v31, v19, &qword_1000822C8);
  sub_1000096A0(&v33, &qword_1000822C8);
}

uint64_t sub_100063BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_100067598();
  __chkstk_darwin(v3 - 8);
  sub_1000025E8();

  v4 = sub_1000677B8();
  v6 = v5;
  v8 = v7;
  sub_100067758();
  v9 = sub_100067798();
  v51 = v10;
  v52 = v9;
  v50 = v11;
  v49 = v12;

  sub_10004D060(v4, v6, v8 & 1);

  v13 = sub_1000677B8();
  v15 = v14;
  v17 = v16;
  sub_100067708();
  v18 = sub_100067798();
  v47 = v19;
  v48 = v18;
  v46 = v20;

  sub_10004D060(v13, v15, v17 & 1);

  sub_100067588();
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  sub_100067578(v54);
  if (*(a1 + 48))
  {
    v21._countAndFlagsBits = 37;
  }

  else
  {
    v21._countAndFlagsBits = 0;
  }

  if (*(a1 + 48))
  {
    v22 = 0xE100000000000000;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  v21._object = v22;
  sub_100067568(v21);

  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  sub_100067578(v55);
  sub_1000675B8();
  v23 = sub_1000677A8();
  v25 = v24;
  v27 = v26;
  sub_100067708();
  sub_100067768();

  v28 = sub_100067798();
  v30 = v29;
  v32 = v31;

  sub_10004D060(v23, v25, v27 & 1);

  v45 = sub_100067788();
  v34 = v33;
  v36 = v35;
  sub_10004D060(v28, v30, v32 & 1);

  sub_10004D060(v48, v47, v46 & 1);

  sub_100067708();
  v37 = sub_100067798();
  v39 = v38;
  v41 = v40;
  v43 = v42;

  sub_10004D060(v45, v34, v36 & 1);

  *a2 = v52;
  *(a2 + 8) = v50;
  *(a2 + 16) = v49 & 1;
  *(a2 + 24) = v51;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = v37;
  *(a2 + 56) = v39;
  *(a2 + 64) = v41 & 1;
  *(a2 + 72) = v43;
  *(a2 + 80) = 0x4000000000000000;
  sub_100055008(v52, v50, v49 & 1);

  sub_100055008(v37, v39, v41 & 1);

  sub_10004D060(v37, v39, v41 & 1);

  sub_10004D060(v52, v50, v49 & 1);
}

unint64_t sub_100063FAC()
{
  result = qword_100082240;
  if (!qword_100082240)
  {
    sub_10000253C(&qword_100082210);
    sub_100064064(&qword_100082248, &qword_100082238, &unk_10006BC20, sub_100064114);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082240);
  }

  return result;
}

uint64_t sub_100064064(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000253C(a2);
    a4();
    sub_1000141C4(&qword_100081158, &qword_100081160);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100064114()
{
  result = qword_100082250;
  if (!qword_100082250)
  {
    sub_10000253C(&qword_100082230);
    sub_1000141C4(&qword_100082258, &qword_100082260);
    sub_1000141C4(&qword_1000811B0, &qword_1000811B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082250);
  }

  return result;
}

unint64_t sub_100064208()
{
  result = qword_100082288;
  if (!qword_100082288)
  {
    sub_10000253C(&qword_100082280);
    sub_1000141C4(&qword_100082290, &qword_100082298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082288);
  }

  return result;
}

unint64_t sub_1000642C0()
{
  result = qword_1000822B8;
  if (!qword_1000822B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000822B8);
  }

  return result;
}

unint64_t sub_100064314()
{
  result = qword_100082300;
  if (!qword_100082300)
  {
    sub_10000253C(&qword_1000822F0);
    sub_1000141C4(&qword_100082308, &qword_100082310);
    sub_1000141C4(&qword_1000811B0, &qword_1000811B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082300);
  }

  return result;
}

uint64_t sub_100064400(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100055008(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100064444(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10004D060(result, a2, a3 & 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ThreeByThreeGridWithOptionalMiddleColumn(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ThreeByThreeGridWithOptionalMiddleColumn(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

unint64_t sub_1000644E8()
{
  result = qword_100082338;
  if (!qword_100082338)
  {
    sub_10000253C(&qword_100082340);
    sub_10004D3C0();
    sub_10000253C(&qword_100082210);
    sub_100063FAC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082338);
  }

  return result;
}

unint64_t sub_1000645BC()
{
  result = qword_100082348;
  if (!qword_100082348)
  {
    sub_10000253C(&qword_100082350);
    sub_1000246A4();
    sub_10000253C(&qword_1000822D0);
    sub_100064064(&qword_1000822F8, &qword_1000822D0, &unk_10006BCC8, sub_100064314);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082348);
  }

  return result;
}

unint64_t sub_1000646C4()
{
  result = qword_100082358;
  if (!qword_100082358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082358);
  }

  return result;
}

unint64_t sub_10006471C()
{
  result = qword_100082360;
  if (!qword_100082360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082360);
  }

  return result;
}

uint64_t sub_100064770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000673E8();
  sub_1000614E4(&qword_100080BD8, &type metadata accessor for LayoutSubviews);
  sub_100067D68();
  sub_100067D98();
  result = sub_100067D88();
  if (!a3)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    return result;
  }

  if (result == 0x8000000000000000 && a3 == -1)
  {
    goto LABEL_6;
  }

  return result;
}

void sub_10006486C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, uint64_t a8, uint64_t a9)
{
  v86 = a5;
  v85 = sub_1000673C8();
  v16 = *(v85 - 8);
  v17 = __chkstk_darwin(v85);
  v84 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v71 - v20;
  __chkstk_darwin(v19);
  v87 = &v71 - v22;
  v23 = sub_100067418();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  *&v80 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v71 - v27;
  sub_1000673E8();
  sub_1000614E4(&qword_100080BD8, &type metadata accessor for LayoutSubviews);
  sub_100067D68();
  sub_100067D98();
  if (v92 != v91)
  {
    sub_100067D68();
    sub_100067D98();
    v29 = sub_100067D88();
    if (!a9)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v30 = v29;
    if (v29 == 0x8000000000000000 && a9 == -1)
    {
      goto LABEL_39;
    }

    v93.origin.x = a2;
    v93.origin.y = a3;
    v93.size.width = a4;
    v31 = v86;
    v93.size.height = v86;
    Height = CGRectGetHeight(v93);
    v94.origin.x = a2;
    v94.origin.y = a3;
    v94.size.width = a4;
    v94.size.height = v31;
    CGRectGetWidth(v94);
    v95.origin.x = a2;
    v95.origin.y = a3;
    v95.size.width = a4;
    v95.size.height = v31;
    v34 = CGRectGetHeight(v95);
    if (a9 < 0)
    {
      goto LABEL_35;
    }

    v75 = v34;
    v35 = v30 / a9;
    __chkstk_darwin(v33);
    *(&v71 - 4) = a6;
    *(&v71 - 3) = a7;
    *(&v71 - 2) = a9;
    *(&v71 - 1) = a1;
    v36 = sub_100034C4C(sub_100065198, (&v71 - 6), 0, a9);
    if (v35 < 0)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v73 = Height;
    v74 = v16;
    v37 = __chkstk_darwin(v36);
    *(&v71 - 10) = a1;
    *(&v71 - 9) = a6;
    *(&v71 - 8) = a7;
    *(&v71 - 7) = a9;
    *(&v71 - 6) = v37;
    v90 = v37;
    *(&v71 - 5) = &off_10007E278;
    *(&v71 - 4) = a2;
    *(&v71 - 3) = a3;
    v38 = v86;
    *(&v71 - 2) = a4;
    *(&v71 - 1) = v38;
    v39 = sub_100034DC0(sub_1000651D4, (&v71 - 12), 0, v35);
    v76 = __chkstk_darwin(v39);
    *(&v71 - 6) = v76;
    *(&v71 - 5) = a1;
    *(&v71 - 4) = a6;
    *(&v71 - 3) = a7;
    *(&v71 - 2) = a9;
    v83 = v35;
    sub_1000608F8(sub_100065208, (&v71 - 8), 0, v35);
    v81 = v40;
    sub_1000673D8();
    v41 = enum case for LayoutDirection.leftToRight(_:);
    v42 = *(v24 + 104);
    v43 = v28;
    v44 = v24;
    v45 = v80;
    (v42)(*&v80, enum case for LayoutDirection.leftToRight(_:), v23);
    v78 = v43;
    LOBYTE(v43) = sub_100067408();
    v47 = *(v44 + 8);
    v46 = v44 + 8;
    v77 = v47;
    v47(*&v45, v23);
    v82 = a9;
    v48 = a2;
    v49 = a3;
    v50 = a4;
    v51 = v38;
    if (v43)
    {
      MinX = CGRectGetMinX(*&v48);
    }

    else
    {
      MinX = CGRectGetMaxX(*&v48);
    }

    v89 = MinX;
    v53 = v38;
    v54 = v80;
    (v42)(*&v80, v41, v23);
    v79 = v42;
    v55 = sub_100067408();
    v56 = v77;
    v77(*&v54, v23);
    v57 = -1.0;
    if (v55)
    {
      v57 = 1.0;
    }

    v88 = v57;
    v79(COERCE_DOUBLE(*&v54), v41, v23);
    v58 = sub_100067408();
    v56(*&v54, v23);
    if (v58)
    {
      sub_100067988();
    }

    else
    {
      sub_100067998();
    }

    v59 = v78;
    if (v83)
    {
      if (!*(v90 + 16))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (v83 > *(v76 + 16))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        return;
      }

      v71 = v46;
      v72 = v23;
      v60 = 0;
      v61 = v76 + 32;
      v62 = 4.0;
      if (v83 != 1)
      {
        v62 = 2.0;
      }

      v80 = v73 / v83;
      *&v79 = v80 / v62;
      v63 = (v74 + 8);
      while (1)
      {
        v64 = v60 * v82;
        if ((v60 * v82) >> 64 != (v60 * v82) >> 63)
        {
          break;
        }

        sub_1000673F8();
        v96.origin.x = a2;
        v96.origin.y = a3;
        v96.size.width = a4;
        v96.size.height = v53;
        CGRectGetMinY(v96);
        sub_1000679A8();
        LOBYTE(v92) = 0;
        LOBYTE(v91) = 0;
        sub_1000673B8();
        if (__OFADD__(v64, 1))
        {
          goto LABEL_32;
        }

        sub_1000673F8();
        if (*(v61 + v60) == 1)
        {
          v97.origin.x = a2;
          v97.origin.y = a3;
          v97.size.width = a4;
          v97.size.height = v86;
          CGRectGetMinY(v97);
        }

        LOBYTE(v92) = 0;
        LOBYTE(v91) = 0;
        sub_1000673B8();
        if (__OFADD__(v64, 2))
        {
          goto LABEL_33;
        }

        v65 = v60 + 1;
        v66 = v21;
        v67 = v84;
        sub_1000673F8();
        v98.origin.x = a2;
        v98.origin.y = a3;
        v98.size.width = a4;
        v53 = v86;
        v98.size.height = v86;
        CGRectGetMinY(v98);
        LOBYTE(v92) = 0;
        LOBYTE(v91) = 0;
        sub_1000673B8();
        v68 = *v63;
        v69 = v67;
        v21 = v66;
        v70 = v85;
        (*v63)(v69, v85);
        v68(v66, v70);
        v68(v87, v70);
        v60 = v65;
        if (v83 == v65)
        {

          v23 = v72;
          v59 = v78;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_29:

    v77(v59, v23);
  }
}

double sub_10006522C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000673C8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000673E8();
  __chkstk_darwin(v8);
  (*(v10 + 16))(v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v34 = a1;
  v35 = a2;
  v11 = sub_100060994(sub_100065510, v33);
  v12 = *(v11 + 2);
  if (v12)
  {
    v38 = _swiftEmptyArrayStorage;
    sub_10000DC64(0, v12, 0);
    v13 = v38;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v16 = *(v14 + 64);
    v30[1] = v11;
    v17 = v11 + ((v16 + 32) & ~v16);
    v31 = *(v14 + 56);
    v32 = v15;
    do
    {
      v32(v7, v17, v4);
      sub_100067438();
      v37 = v18 & 1;
      v36 = v19 & 1;
      sub_1000673A8();
      v21 = v20;
      (*(v14 - 8))(v7, v4);
      v38 = v13;
      v23 = *(v13 + 2);
      v22 = *(v13 + 3);
      if (v23 >= v22 >> 1)
      {
        sub_10000DC64((v22 > 1), v23 + 1, 1);
        v13 = v38;
      }

      *(v13 + 2) = v23 + 1;
      v13[v23 + 4] = v21;
      v17 += v31;
      --v12;
    }

    while (v12);

    v24 = v13[2];
    if (v24 != 0.0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v26 = 0.0;
    goto LABEL_14;
  }

  v13 = _swiftEmptyArrayStorage;
  v24 = _swiftEmptyArrayStorage[2];
  if (v24 == 0.0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v25 = v13 + 4;
  v26 = 0.0;
  do
  {
    v27 = *v25++;
    v28 = v27;
    if (v26 <= v27)
    {
      v26 = v28;
    }

    --*&v24;
  }

  while (v24 != 0.0);
LABEL_14:

  return v26;
}

uint64_t sub_100065510()
{
  v1 = *(v0 + 24);
  result = sub_10000BF58();
  if ((v3 & 1) == 0)
  {
    return result % 3 == v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000655CC@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = sub_100066FB8();
  __chkstk_darwin(v12 - 8);
  v13 = sub_100067B88();
  __chkstk_darwin(v13 - 8);
  sub_100066F28();
  sub_100067B38();
  sub_100066FA8();
  v14 = sub_100067BE8();
  v16 = v15;
  if (*a1 != -1)
  {
    swift_once();
  }

  v17 = *a2;
  v18 = type metadata accessor for ThreeColumnDataEntry();
  v19 = (a4 + v18[5]);
  *v19 = v14;
  v19[1] = v16;
  *(a4 + v18[6]) = v17;
  v20 = (a4 + v18[7]);
  *v20 = a5;
  v20[1] = a6;
  *(a4 + v18[8]) = a3;
}

uint64_t sub_10006577C(void *a1)
{
  v3 = sub_1000024F4(&qword_100082380);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10002F780(a1, a1[3]);
  sub_100065C44();
  sub_100068248();
  v8[15] = 0;
  sub_100068108();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_100068108();
  v8[13] = 2;
  sub_100068108();
  v8[12] = 3;
  sub_100068118();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_10006593C()
{
  v1 = 0x656D614E6E6F6369;
  v2 = 0x7972616D6D7573;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000002ALL;
  }

  if (*v0)
  {
    v1 = 0x6C6562616CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000659B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000663C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000659E0(uint64_t a1)
{
  v2 = sub_100065C44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100065A1C(uint64_t a1)
{
  v2 = sub_100065C44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100065A58@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = *v1;
  v7 = v1[1];

  v8._countAndFlagsBits = 47;
  v8._object = 0xE100000000000000;
  sub_100067C48(v8);

  v9._countAndFlagsBits = v3;
  v9._object = v4;
  sub_100067C48(v9);

  *a1 = v6;
  a1[1] = v7;
  return result;
}

uint64_t sub_100065AF8()
{
  sub_100068038(40);

  strcpy(v2, "{ iconName: ");
  BYTE5(v2[1]) = 0;
  HIWORD(v2[1]) = -5120;
  sub_100067C48(*v0);
  v3._countAndFlagsBits = 0x3A6C6562616C202CLL;
  v3._object = 0xE900000000000020;
  sub_100067C48(v3);
  sub_100067C48(v0[1]);
  v4._countAndFlagsBits = 0x72616D6D7573202CLL;
  v4._object = 0xEB00000000203A79;
  sub_100067C48(v4);
  sub_100067C48(v0[2]);
  v5._countAndFlagsBits = 32032;
  v5._object = 0xE200000000000000;
  sub_100067C48(v5);
  return v2[0];
}

unint64_t sub_100065BF0()
{
  result = qword_100082378;
  if (!qword_100082378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082378);
  }

  return result;
}

unint64_t sub_100065C44()
{
  result = qword_100082388;
  if (!qword_100082388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082388);
  }

  return result;
}

uint64_t sub_100065CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100066F38();
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

uint64_t sub_100065D90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100066F38();
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

uint64_t type metadata accessor for ThreeColumnDataEntry()
{
  result = qword_1000823E8;
  if (!qword_1000823E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100065E98()
{
  sub_100066F38();
  if (v0 <= 0x3F)
  {
    sub_100065F9C(319, &unk_1000823F8, &type metadata for ThreeColumnDataRow, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        sub_100065F9C(319, &unk_1000812C8, &type metadata for BlockOutError, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100065F9C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_100065FF0()
{
  result = qword_100082438;
  if (!qword_100082438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082438);
  }

  return result;
}

unint64_t sub_100066048()
{
  result = qword_100082440;
  if (!qword_100082440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082440);
  }

  return result;
}

unint64_t sub_1000660A0()
{
  result = qword_100082448;
  if (!qword_100082448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082448);
  }

  return result;
}

uint64_t sub_100066108()
{
  v0 = sub_100066FB8();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100067B88();
  __chkstk_darwin(v1 - 8);
  sub_1000024F4(&qword_1000809F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100068BF0;
  sub_100067B38();
  sub_100066FA8();
  result = sub_100067BE8();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0xE000000000000000;
  *(v2 + 64) = result;
  *(v2 + 72) = v4;
  *(v2 + 80) = 0;
  qword_100086010 = v2;
  return result;
}

uint64_t sub_100066268()
{
  v0 = sub_100066FB8();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100067B88();
  __chkstk_darwin(v1 - 8);
  sub_1000024F4(&qword_1000809F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100068BF0;
  sub_100067B38();
  sub_100066FA8();
  result = sub_100067BE8();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0xE000000000000000;
  *(v2 + 64) = result;
  *(v2 + 72) = v4;
  *(v2 + 80) = 0;
  qword_100086018 = v2;
  return result;
}

uint64_t sub_1000663C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E6E6F6369 && a2 == 0xE800000000000000;
  if (v4 || (sub_100068168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_100068168() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000 || (sub_100068168() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000002ALL && 0x800000010006E160 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_100068168();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100066554()
{
  v0 = sub_1000024F4(&qword_100082458);

  return TupleWidget.init(_:)(v0, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000665DC();
  sub_100067388();
  return 0;
}

unint64_t sub_1000665DC()
{
  result = qword_100082450;
  if (!qword_100082450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082450);
  }

  return result;
}

unint64_t sub_100066660()
{
  result = qword_100082460;
  if (!qword_100082460)
  {
    sub_10000253C(&qword_100082468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082460);
  }

  return result;
}

uint64_t sub_1000666F0(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_100085B98 == -1)
  {
    if (qword_100085BA0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_100066BB8();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100085BA0)
    {
      return _availability_version_check();
    }
  }

  if (qword_100085B90 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_100066BD0();
    a3 = v10;
    a4 = v9;
    v8 = dword_100085B80 < v11;
    if (dword_100085B80 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100085B84 > a3)
      {
        return 1;
      }

      if (dword_100085B84 >= a3)
      {
        return dword_100085B88 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100085B80 < a2;
  if (dword_100085B80 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100066884(uint64_t result)
{
  v1 = qword_100085BA0;
  if (qword_100085BA0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100085BA0 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100085B80, &dword_100085B84, &dword_100085B88);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}