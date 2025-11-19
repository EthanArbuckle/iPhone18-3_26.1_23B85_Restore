uint64_t sub_10001BC0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001C25C;

  return sub_1000147AC(a1, v4, v5, v6);
}

uint64_t sub_10001BCE0(void (*a1)(void))
{
  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_10001BD48()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10001BD70()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001BDB0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001BF04@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, a1[1]);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_10001BF3C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000D0D8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001C030(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001C25C;

  return sub_10001A950(a1, v5);
}

uint64_t sub_10001C0E8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000CFE4;

  return sub_10001A950(a1, v5);
}

uint64_t sub_10001C2E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_100020824();
  v7 = *(a1 + *a4);
  *(a1 + *a4) = v6;

  return 1;
}

id sub_10001C3B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkPerformanceDiagnosticInputs();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for TestType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TestType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10001C5C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v6 = 0xE600000000000000;
      v5 = 0x64616F6C7055;
    }

    else
    {
      v5 = 0xD000000000000013;
      if (v2 == 4)
      {
        v6 = 0x80000001000216D0;
      }

      else
      {
        v6 = 0x80000001000216F0;
      }
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1735289168;
    if (a1 != 1)
    {
      v4 = 0x64616F6C6E776F44;
      v3 = 0xE800000000000000;
    }

    if (a1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0x6E776F6E6B6E55;
    }

    if (v2)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v7 = 0xE600000000000000;
      if (v5 != 0x64616F6C7055)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (a2 == 4)
      {
        v7 = 0x80000001000216D0;
      }

      else
      {
        v7 = 0x80000001000216F0;
      }

      if (v5 != 0xD000000000000013)
      {
        goto LABEL_33;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v7 = 0xE400000000000000;
      if (v5 != 1735289168)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v7 = 0xE800000000000000;
      if (v5 != 0x64616F6C6E776F44)
      {
LABEL_33:
        v8 = sub_100020B34();
        goto LABEL_34;
      }
    }
  }

  else
  {
    v7 = 0xE700000000000000;
    if (v5 != 0x6E776F6E6B6E55)
    {
      goto LABEL_33;
    }
  }

  if (v6 != v7)
  {
    goto LABEL_33;
  }

  v8 = 1;
LABEL_34:

  return v8 & 1;
}

Swift::Int sub_10001C7A4()
{
  sub_100020B64();
  sub_1000208B4();

  return sub_100020B84();
}

uint64_t sub_10001C8A8()
{
  *v0;
  *v0;
  *v0;
  sub_1000208B4();
}

Swift::Int sub_10001C99C()
{
  sub_100020B64();
  sub_1000208B4();

  return sub_100020B84();
}

uint64_t sub_10001CA9C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001CBE0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10001CACC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E55;
  v5 = 0xE600000000000000;
  v6 = 0x64616F6C7055;
  v7 = 0x80000001000216D0;
  if (v2 != 4)
  {
    v7 = 0x80000001000216F0;
  }

  if (v2 != 3)
  {
    v6 = 0xD000000000000013;
    v5 = v7;
  }

  v8 = 0xE400000000000000;
  v9 = 1735289168;
  if (v2 != 1)
  {
    v9 = 0x64616F6C6E776F44;
    v8 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_10001CB8C()
{
  result = qword_1000323F0;
  if (!qword_1000323F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000323F0);
  }

  return result;
}

uint64_t sub_10001CBE0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10002D450;
  v6._object = a2;
  v4 = sub_100020B04(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

__n128 sub_10001CC2C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_10001CC50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001CC98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001CD24()
{
  v1 = sub_100020544();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14[0] = v0[6];
  sub_10000239C(&qword_100032438, &qword_100023E38);
  result = sub_100020714();
  if (v16 == 1)
  {
    v16 = v0[7];
    v14[0] = v0[7];
    v17 = *(&v16 + 1);
    sub_10000B994(&v17, &v15, &qword_100032440, &qword_100023E40);
    sub_100020714();
    if (v15)
    {
      return sub_100002494(&v16, &qword_100032438, &qword_100023E38);
    }

    else
    {
      v14[0] = v16;
      LOBYTE(v15) = 1;
      sub_100020724();
      sub_100002494(&v16, &qword_100032438, &qword_100023E38);
      v14[0] = v0[2];
      v15 = 0x3FDB851EB851EB85;
      sub_10000239C(&qword_100032448, &qword_100023E48);
      sub_100020724();
      v14[0] = v0[3];
      v15 = 0x3FE3851EB851EB85;
      sub_100020724();
      v14[0] = v0[4];
      v15 = 0x3FE947AE147AE148;
      sub_100020724();
      v14[0] = v0[5];
      v15 = 0;
      sub_100020724();
      sub_1000207A4();
      sub_100020794();

      __chkstk_darwin(v7);
      *&v13[-16] = v0;
      v8 = swift_allocObject();
      v9 = v0[5];
      v8[5] = v0[4];
      v8[6] = v9;
      v10 = v0[7];
      v8[7] = v0[6];
      v8[8] = v10;
      v11 = v0[1];
      v8[1] = *v0;
      v8[2] = v11;
      v12 = v0[3];
      v8[3] = v0[2];
      v8[4] = v12;
      sub_10000B394(v0, v14);
      sub_100020534();
      sub_100020374();

      return (*(v2 + 8))(v5, v1);
    }
  }

  return result;
}

uint64_t sub_10001D06C(_OWORD *a1)
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = a1[2];
  sub_10000239C(&qword_100032448, &qword_100023E48);
  sub_100020724();
  v4 = a1[3];
  sub_100020724();
  v5 = a1[4];
  sub_100020724();
  v6 = a1[5];
  sub_100020724();
}

uint64_t sub_10001D1C0(uint64_t a1)
{
  v2 = sub_1000207E4();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100020804();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23[0] = *(a1 + 96);
  sub_10000239C(&qword_100032438, &qword_100023E38);
  sub_100020714();
  if (LOBYTE(aBlock[0]) == 1 && (v10 = *(a1 + 8), swift_getKeyPath(), swift_getKeyPath(), sub_100020124(), , , (v23[0] & 1) == 0))
  {
    v23[0] = *(a1 + 80);
    aBlock[0] = 0;
    sub_10000239C(&qword_100032448, &qword_100023E48);
    sub_100020724();
    v23[0] = *(a1 + 112);
    LOBYTE(aBlock[0]) = 0;
    sub_100020724();
    sub_10000F08C();
    v20 = sub_1000209C4();
    v11 = swift_allocObject();
    v12 = *(a1 + 80);
    v11[5] = *(a1 + 64);
    v11[6] = v12;
    v13 = *(a1 + 112);
    v11[7] = *(a1 + 96);
    v11[8] = v13;
    v14 = *(a1 + 16);
    v11[1] = *a1;
    v11[2] = v14;
    v15 = *(a1 + 48);
    v11[3] = *(a1 + 32);
    v11[4] = v15;
    aBlock[4] = sub_10001FBA8;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001C22C;
    aBlock[3] = &unk_10002E460;
    v16 = _Block_copy(aBlock);
    sub_10000B394(a1, v23);
    sub_1000207F4();
    *&v23[0] = &_swiftEmptyArrayStorage;
    sub_10001FF18(&qword_100031ED0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000239C(&unk_100032170, &qword_100023610);
    sub_10000BB0C(&qword_100031ED8, &unk_100032170, &qword_100023610);
    sub_100020A54();
    v17 = v20;
    sub_1000209D4();
    _Block_release(v16);

    (*(v22 + 8))(v5, v2);
    (*(v21 + 8))(v9, v6);
  }

  else
  {
    v23[0] = *(a1 + 112);
    LOBYTE(aBlock[0]) = 0;
    sub_100020724();
  }
}

uint64_t sub_10001D654()
{
  v1 = sub_100020544();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14[0] = v0[6];
  sub_10000239C(&qword_100032438, &qword_100023E38);
  result = sub_100020714();
  if (v16 == 1)
  {
    v16 = v0[7];
    v14[0] = v0[7];
    v17 = *(&v16 + 1);
    sub_10000B994(&v17, &v15, &qword_100032440, &qword_100023E40);
    sub_100020714();
    if (v15)
    {
      return sub_100002494(&v16, &qword_100032438, &qword_100023E38);
    }

    else
    {
      v14[0] = v16;
      LOBYTE(v15) = 1;
      sub_100020724();
      sub_100002494(&v16, &qword_100032438, &qword_100023E38);
      v14[0] = v0[2];
      v15 = 0x3FD0000000000000;
      sub_10000239C(&qword_100032448, &qword_100023E48);
      sub_100020724();
      v14[0] = v0[3];
      v15 = 0x3FDB851EB851EB85;
      sub_100020724();
      v14[0] = v0[4];
      v15 = 0x3FE3851EB851EB85;
      sub_100020724();
      v14[0] = v0[5];
      v15 = 0x3FF0000000000000;
      sub_100020724();
      sub_1000207A4();
      sub_100020794();

      __chkstk_darwin(v7);
      *&v13[-16] = v0;
      v8 = swift_allocObject();
      v9 = v0[5];
      v8[5] = v0[4];
      v8[6] = v9;
      v10 = v0[7];
      v8[7] = v0[6];
      v8[8] = v10;
      v11 = v0[1];
      v8[1] = *v0;
      v8[2] = v11;
      v12 = v0[3];
      v8[3] = v0[2];
      v8[4] = v12;
      sub_10000B394(v0, v14);
      sub_100020534();
      sub_100020374();

      return (*(v2 + 8))(v5, v1);
    }
  }

  return result;
}

uint64_t sub_10001D994(_OWORD *a1)
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = a1[2];
  sub_10000239C(&qword_100032448, &qword_100023E48);
  sub_100020724();
  v4 = a1[3];
  sub_100020724();
  v5 = a1[4];
  sub_100020724();
  v6 = a1[5];
  sub_100020724();
}

uint64_t sub_10001DAF0(uint64_t a1)
{
  v2 = sub_1000207E4();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100020804();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v23 = *(a1 + 96);
  sub_10000239C(&qword_100032438, &qword_100023E38);
  sub_100020714();
  if (LOBYTE(aBlock[0]) == 1 && (v10 = *(a1 + 8), swift_getKeyPath(), swift_getKeyPath(), sub_100020124(), , , v23[0] == 1))
  {
    *v23 = *(a1 + 80);
    aBlock[0] = 0x3FF0000000000000;
    sub_10000239C(&qword_100032448, &qword_100023E48);
    sub_100020724();
    *v23 = *(a1 + 112);
    LOBYTE(aBlock[0]) = 0;
    sub_100020724();
    sub_10000F08C();
    v20 = sub_1000209C4();
    v11 = swift_allocObject();
    v12 = *(a1 + 80);
    v11[5] = *(a1 + 64);
    v11[6] = v12;
    v13 = *(a1 + 112);
    v11[7] = *(a1 + 96);
    v11[8] = v13;
    v14 = *(a1 + 16);
    v11[1] = *a1;
    v11[2] = v14;
    v15 = *(a1 + 48);
    v11[3] = *(a1 + 32);
    v11[4] = v15;
    aBlock[4] = sub_10001FC88;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001C22C;
    aBlock[3] = &unk_10002E4D8;
    v16 = _Block_copy(aBlock);
    sub_10000B394(a1, v23);
    sub_1000207F4();
    *v23 = &_swiftEmptyArrayStorage;
    sub_10001FF18(&qword_100031ED0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000239C(&unk_100032170, &qword_100023610);
    sub_10000BB0C(&qword_100031ED8, &unk_100032170, &qword_100023610);
    sub_100020A54();
    v17 = v20;
    sub_1000209D4();
    _Block_release(v16);

    (*(v22 + 8))(v5, v2);
    (*(v21 + 8))(v9, v6);
  }

  else
  {
    *v23 = *(a1 + 112);
    LOBYTE(aBlock[0]) = 0;
    sub_100020724();
  }
}

uint64_t sub_10001DF8C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a3(isCurrentExecutor);
}

uint64_t sub_10001E040@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10000239C(&qword_1000323F8, &qword_100023DA8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v42[-v6 - 8];
  *v7 = sub_100020774();
  v7[1] = v8;
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = v7 + *(sub_10000239C(&qword_100032400, &qword_100023DB0) + 44);
  sub_10001E4F0(v1, v9);
  v10 = [objc_opt_self() systemBackgroundColor];
  sub_1000206D4();
  v11 = sub_1000206C4();

  *(v9 + *(sub_10000239C(&qword_100032408, &qword_100023DB8) + 36)) = v11;
  if (qword_1000315C0 != -1)
  {
    swift_once();
  }

  v12 = qword_100032D40;
  sub_1000206D4();
  v13 = sub_1000206C4();

  v14 = (v9 + *(sub_10000239C(&qword_100032410, &qword_100023DC0) + 36));
  *v14 = v13;
  v14[1] = 0x4044000000000000;
  v14[2] = 0;
  v14[3] = 0;
  v15 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020124();

  v42[135] = v42[0];
  v16 = swift_allocObject();
  v17 = v2[5];
  v16[5] = v2[4];
  v16[6] = v17;
  v18 = v2[7];
  v16[7] = v2[6];
  v16[8] = v18;
  v19 = v2[1];
  v16[1] = *v2;
  v16[2] = v19;
  v20 = v2[3];
  v16[3] = v2[2];
  v16[4] = v20;
  sub_10000B394(v2, v42);
  sub_10000BB0C(&qword_100032418, &qword_1000323F8, &qword_100023DA8);
  sub_100020694();

  sub_100002494(v7, &qword_1000323F8, &qword_100023DA8);
  v21 = swift_allocObject();
  v22 = v2[5];
  *(v21 + 5) = v2[4];
  *(v21 + 6) = v22;
  v23 = v2[7];
  *(v21 + 7) = v2[6];
  *(v21 + 8) = v23;
  v24 = v2[1];
  *(v21 + 1) = *v2;
  *(v21 + 2) = v24;
  v25 = v2[3];
  *(v21 + 3) = v2[2];
  *(v21 + 4) = v25;
  v26 = (a1 + *(sub_10000239C(&qword_100032420, &qword_100023E10) + 36));
  *v26 = sub_10001FAE0;
  v26[1] = v21;
  v26[2] = 0;
  v26[3] = 0;
  v27 = swift_allocObject();
  v28 = v2[5];
  v27[5] = v2[4];
  v27[6] = v28;
  v29 = v2[7];
  v27[7] = v2[6];
  v27[8] = v29;
  v30 = v2[1];
  v27[1] = *v2;
  v27[2] = v30;
  v31 = v2[3];
  v27[3] = v2[2];
  v27[4] = v31;
  v32 = (a1 + *(sub_10000239C(&qword_100032428, &qword_100023E18) + 36));
  *v32 = 0;
  v32[1] = 0;
  v32[2] = sub_10001FAE8;
  v32[3] = v27;
  v33 = swift_allocObject();
  v34 = v2[5];
  v33[5] = v2[4];
  v33[6] = v34;
  v35 = v2[7];
  v33[7] = v2[6];
  v33[8] = v35;
  v36 = v2[1];
  v33[1] = *v2;
  v33[2] = v36;
  v37 = v2[3];
  v33[3] = v2[2];
  v33[4] = v37;
  v38 = (a1 + *(sub_10000239C(&qword_100032430, &qword_100023E30) + 36));
  v39 = *(sub_100020364() + 20);
  sub_10000B394(v2, v42);
  sub_10000B394(v2, v42);
  sub_10000B394(v2, v42);
  result = sub_100020924();
  *v38 = &unk_100023E28;
  v38[1] = v33;
  return result;
}

uint64_t sub_10001E4F0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000239C(&qword_100032450, &qword_100023E50);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v44 - v9);
  v11 = sub_10000239C(&qword_100032458, &qword_100023E58);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v49 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v47 = &v44 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v44 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = (&v44 - v21);
  v23 = __chkstk_darwin(v20);
  v25 = (&v44 - v24);
  __chkstk_darwin(v23);
  v27 = (&v44 - v26);
  sub_100020914();
  v48 = sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = v27;
  *v27 = sub_100020774();
  v27[1] = v29;
  v30 = sub_10000239C(&qword_100032460, &qword_100023E60);
  v31 = v27 + *(v30 + 44);
  v46 = v27;
  sub_10001E938(a1, v31);
  *v10 = sub_100020774();
  v10[1] = v32;
  v33 = sub_10000239C(&qword_100032468, &qword_100023E68);
  sub_10001EC34(a1, v10 + *(v33 + 44));
  v34 = v25;
  *v25 = sub_100020774();
  v25[1] = v35;
  sub_10001EFAC(a1, v25 + *(v30 + 44));
  *v22 = sub_100020774();
  v22[1] = v36;
  sub_10001F308(a1, v22 + *(v30 + 44));
  sub_10000B994(v28, v19, &qword_100032458, &qword_100023E58);
  v37 = v19;
  v45 = v19;
  sub_10000B994(v10, v8, &qword_100032450, &qword_100023E50);
  v38 = v25;
  v39 = v47;
  sub_10000B994(v38, v47, &qword_100032458, &qword_100023E58);
  v40 = v49;
  sub_10000B994(v22, v49, &qword_100032458, &qword_100023E58);
  sub_10000B994(v37, a2, &qword_100032458, &qword_100023E58);
  v41 = v8;
  v42 = sub_10000239C(&qword_100032470, &qword_100023E70);
  sub_10000B994(v41, a2 + v42[12], &qword_100032450, &qword_100023E50);
  sub_10000B994(v39, a2 + v42[16], &qword_100032458, &qword_100023E58);
  sub_10000B994(v40, a2 + v42[20], &qword_100032458, &qword_100023E58);
  sub_100002494(v22, &qword_100032458, &qword_100023E58);
  sub_100002494(v34, &qword_100032458, &qword_100023E58);
  sub_100002494(v10, &qword_100032450, &qword_100023E50);
  sub_100002494(v46, &qword_100032458, &qword_100023E58);
  sub_100002494(v40, &qword_100032458, &qword_100023E58);
  sub_100002494(v39, &qword_100032458, &qword_100023E58);
  sub_100002494(v41, &qword_100032450, &qword_100023E50);
  sub_100002494(v45, &qword_100032458, &qword_100023E58);
}

uint64_t sub_10001E938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000239C(&qword_100032478, &qword_100023E78);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v30 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  sub_100020914();
  v29 = sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v37 = *(a1 + 16);
  sub_10000239C(&qword_100032448, &qword_100023E48);
  sub_100020714();
  v37 = *(a1 + 16);
  sub_100020714();
  sub_100020774();
  sub_100020344();
  v28 = v31;
  v27 = v32;
  v26 = v33;
  v25 = v34;
  v23 = v36;
  v24 = v35;
  sub_100020774();
  sub_100020344();
  v10 = v37;
  v11 = BYTE8(v37);
  v12 = v38;
  v13 = v39;
  v14 = v40;
  v15 = v41;
  v16 = *(v4 + 36);
  v17 = enum case for BlendMode.destinationOut(_:);
  v18 = sub_1000207C4();
  (*(*(v18 - 8) + 104))(&v9[v16], v17, v18);
  *v9 = v10;
  v9[8] = v11;
  *(v9 + 2) = v12;
  v9[24] = v13;
  *(v9 + 4) = v14;
  *(v9 + 5) = v15;
  v19 = v30;
  sub_10000B994(v9, v30, &qword_100032478, &qword_100023E78);
  *a2 = v28;
  *(a2 + 8) = v27;
  *(a2 + 16) = v26;
  *(a2 + 24) = v25;
  v20 = v23;
  *(a2 + 32) = v24;
  *(a2 + 40) = v20;
  v21 = sub_10000239C(&qword_100032480, &qword_100023E80);
  sub_10000B994(v19, a2 + *(v21 + 48), &qword_100032478, &qword_100023E78);
  sub_100002494(v9, &qword_100032478, &qword_100023E78);
  sub_100002494(v19, &qword_100032478, &qword_100023E78);
}

uint64_t sub_10001EC34@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000239C(&qword_100032478, &qword_100023E78);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v31 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  sub_100020914();
  v30 = sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v38 = a1[5];
  sub_10000239C(&qword_100032448, &qword_100023E48);
  sub_100020714();
  v10 = v32;
  v38 = a1[1];
  sub_100020714();
  v38 = a1[4];
  sub_100020714();
  v38 = a1[1];
  sub_100020714();
  v38 = a1[4];
  sub_100020714();
  sub_100020774();
  sub_100020344();
  v29 = v32;
  v28 = v33;
  v27 = v34;
  v26 = v35;
  v25 = v36;
  v24 = v37;
  sub_100020774();
  sub_100020344();
  v11 = v38;
  v12 = BYTE8(v38);
  v13 = v39;
  v14 = v40;
  v15 = v41;
  v16 = v42;
  v17 = *(v4 + 36);
  v18 = enum case for BlendMode.destinationOut(_:);
  v19 = sub_1000207C4();
  (*(*(v19 - 8) + 104))(&v9[v17], v18, v19);
  *v9 = v11;
  v9[8] = v12;
  *(v9 + 2) = v13;
  v9[24] = v14;
  *(v9 + 4) = v15;
  *(v9 + 5) = v16;
  v20 = v31;
  sub_10000B994(v9, v31, &qword_100032478, &qword_100023E78);
  *a2 = v10;
  *(a2 + 8) = v29;
  *(a2 + 16) = v28;
  *(a2 + 24) = v27;
  *(a2 + 32) = v26;
  v21 = v24;
  *(a2 + 40) = v25;
  *(a2 + 48) = v21;
  v22 = sub_10000239C(&qword_100032488, &qword_100023E88);
  sub_10000B994(v20, a2 + *(v22 + 48), &qword_100032478, &qword_100023E78);
  sub_100002494(v9, &qword_100032478, &qword_100023E78);
  sub_100002494(v20, &qword_100032478, &qword_100023E78);
}

uint64_t sub_10001EFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000239C(&qword_100032478, &qword_100023E78);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v30 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  sub_100020914();
  v29 = sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v37 = *(a1 + 16);
  sub_10000239C(&qword_100032448, &qword_100023E48);
  sub_100020714();
  v37 = *(a1 + 48);
  sub_100020714();
  v37 = *(a1 + 16);
  sub_100020714();
  v37 = *(a1 + 48);
  sub_100020714();
  sub_100020774();
  sub_100020344();
  v28 = v31;
  v27 = v32;
  v26 = v33;
  v25 = v34;
  v24 = v35;
  v23 = v36;
  sub_100020774();
  sub_100020344();
  v10 = v37;
  v11 = BYTE8(v37);
  v12 = v38;
  v13 = v39;
  v14 = v40;
  v15 = v41;
  v16 = *(v4 + 36);
  v17 = enum case for BlendMode.destinationOut(_:);
  v18 = sub_1000207C4();
  (*(*(v18 - 8) + 104))(&v9[v16], v17, v18);
  *v9 = v10;
  v9[8] = v11;
  *(v9 + 2) = v12;
  v9[24] = v13;
  *(v9 + 4) = v14;
  *(v9 + 5) = v15;
  v19 = v30;
  sub_10000B994(v9, v30, &qword_100032478, &qword_100023E78);
  *a2 = v28;
  *(a2 + 8) = v27;
  *(a2 + 16) = v26;
  *(a2 + 24) = v25;
  v20 = v23;
  *(a2 + 32) = v24;
  *(a2 + 40) = v20;
  v21 = sub_10000239C(&qword_100032480, &qword_100023E80);
  sub_10000B994(v19, a2 + *(v21 + 48), &qword_100032478, &qword_100023E78);
  sub_100002494(v9, &qword_100032478, &qword_100023E78);
  sub_100002494(v19, &qword_100032478, &qword_100023E78);
}

uint64_t sub_10001F308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000239C(&qword_100032478, &qword_100023E78);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v30 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  sub_100020914();
  v29 = sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v37 = *(a1 + 16);
  sub_10000239C(&qword_100032448, &qword_100023E48);
  sub_100020714();
  v37 = *(a1 + 32);
  sub_100020714();
  v37 = *(a1 + 16);
  sub_100020714();
  v37 = *(a1 + 32);
  sub_100020714();
  sub_100020774();
  sub_100020344();
  v28 = v31;
  v27 = v32;
  v26 = v33;
  v25 = v34;
  v24 = v35;
  v23 = v36;
  sub_100020774();
  sub_100020344();
  v10 = v37;
  v11 = BYTE8(v37);
  v12 = v38;
  v13 = v39;
  v14 = v40;
  v15 = v41;
  v16 = *(v4 + 36);
  v17 = enum case for BlendMode.destinationOut(_:);
  v18 = sub_1000207C4();
  (*(*(v18 - 8) + 104))(&v9[v16], v17, v18);
  *v9 = v10;
  v9[8] = v11;
  *(v9 + 2) = v12;
  v9[24] = v13;
  *(v9 + 4) = v14;
  *(v9 + 5) = v15;
  v19 = v30;
  sub_10000B994(v9, v30, &qword_100032478, &qword_100023E78);
  *a2 = v28;
  *(a2 + 8) = v27;
  *(a2 + 16) = v26;
  *(a2 + 24) = v25;
  v20 = v23;
  *(a2 + 32) = v24;
  *(a2 + 40) = v20;
  v21 = sub_10000239C(&qword_100032480, &qword_100023E80);
  sub_10000B994(v19, a2 + *(v21 + 48), &qword_100032478, &qword_100023E78);
  sub_100002494(v9, &qword_100032478, &qword_100023E78);
  sub_100002494(v19, &qword_100032478, &qword_100023E78);
}

uint64_t sub_10001F664(uint64_t a1)
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a1 + 112);
  sub_10000239C(&qword_100032438, &qword_100023E38);
  sub_100020724();
  v4 = *(a1 + 96);
  sub_100020714();
}

uint64_t sub_10001F7BC(uint64_t a1)
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a1 + 96);
  sub_10000239C(&qword_100032438, &qword_100023E38);
  sub_100020724();
  sub_10001CD24();
}

uint64_t sub_10001F88C(uint64_t a1)
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a1 + 96);
  sub_10000239C(&qword_100032438, &qword_100023E38);
  sub_100020724();
}

uint64_t sub_10001F950(uint64_t a1)
{
  *(v1 + 32) = a1;
  sub_100020914();
  *(v1 + 40) = sub_100020904();
  v3 = sub_1000208F4();

  return _swift_task_switch(sub_10001F9E8, v3, v2);
}

uint64_t sub_10001F9E8()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);

  *(v0 + 16) = *(v2 + 96);
  *(v0 + 48) = 1;
  sub_10000239C(&qword_100032438, &qword_100023E38);
  sub_100020724();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10001FA80@<X0>(uint64_t a1@<X8>)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_10001E040(a1);
}

uint64_t sub_10001FAF0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000CFE4;

  return sub_10001F950(v0 + 16);
}

uint64_t sub_10001FBDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001FC18()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  v5 = *(v0 + 104);

  v6 = *(v0 + 120);

  v7 = *(v0 + 136);

  return _swift_deallocObject(v0, 144, 7);
}

unint64_t sub_10001FCC0()
{
  result = qword_100032490;
  if (!qword_100032490)
  {
    sub_100002678(&qword_100032430, &qword_100023E30);
    sub_10001FD7C();
    sub_10001FF18(&qword_1000324A8, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032490);
  }

  return result;
}

unint64_t sub_10001FD7C()
{
  result = qword_100032498;
  if (!qword_100032498)
  {
    sub_100002678(&qword_100032428, &qword_100023E18);
    sub_10001FE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032498);
  }

  return result;
}

unint64_t sub_10001FE08()
{
  result = qword_1000324A0;
  if (!qword_1000324A0)
  {
    sub_100002678(&qword_100032420, &qword_100023E10);
    sub_100002678(&qword_1000323F8, &qword_100023DA8);
    sub_10000BB0C(&qword_100032418, &qword_1000323F8, &qword_100023DA8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000324A0);
  }

  return result;
}

uint64_t sub_10001FF18(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_10001FF84(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001FF98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10001FFE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_100020028(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}