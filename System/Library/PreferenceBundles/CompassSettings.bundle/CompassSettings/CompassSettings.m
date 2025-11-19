id sub_1630()
{
  v0 = objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay);

  return [v0 init];
}

uint64_t sub_1668(void *a1)
{
  v2 = sub_1830(&qword_81C0, &qword_31D0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = v12 - v5;
  *(swift_allocObject() + 16) = a1;
  v7 = a1;
  sub_1830(&qword_81C8, &qword_31D8);
  v8 = sub_2D8C();
  v9 = sub_1E84();
  v12[0] = v8;
  v12[1] = v9;
  swift_getOpaqueTypeConformance2();
  sub_2E1C();
  *(swift_allocObject() + 16) = v7;
  sub_251C();
  v10 = v7;
  sub_2DDC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1830(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v40 = a2;
  v2 = (*(*(sub_1830(&qword_8298, &qword_32F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v44 = &v35 - v3;
  v4 = *(*(sub_2D6C() - 8) + 64);
  __chkstk_darwin();
  v42 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_2D0C();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(*(sub_2E3C() - 8) + 64);
  __chkstk_darwin();
  v39 = sub_2D1C();
  v45 = *(v39 - 8);
  v11 = v45;
  v12 = *(v45 + 64);
  __chkstk_darwin();
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(sub_2DAC() - 8) + 64);
  __chkstk_darwin();
  v16 = sub_2D8C();
  v36 = *(v16 - 8);
  v37 = v16;
  v17 = *(v36 + 64);
  __chkstk_darwin();
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2C68();
  v21 = [objc_allocWithZone(PSSpecifier) init];
  [v21 setProperty:v43 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_2D9C();
  v35 = v19;
  sub_2D7C();
  sub_2E2C();
  *v9 = v20;
  v22 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v23 = v6 + 104;
  v24 = *(v6 + 104);
  v43 = v23;
  v25 = v41;
  v24(v9, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v41);
  sub_2D5C();
  v38 = v14;
  sub_2D2C();
  sub_1830(&qword_82A8, &unk_3300);
  v26 = *(v11 + 72);
  v27 = v44;
  v28 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  *(swift_allocObject() + 16) = xmmword_31C0;
  sub_2E2C();
  *v9 = v20;
  v24(v9, v22, v25);
  sub_2D5C();
  sub_2D2C();
  sub_2D3C();
  v29 = sub_2D4C();
  v30 = *(v29 - 8);
  result = (*(v30 + 48))(v27, 1, v29);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1E84();
    v33 = v37;
    v32 = v38;
    v34 = v35;
    sub_2DCC();

    (*(v45 + 8))(v32, v39);
    (*(v36 + 8))(v34, v33);
    return (*(v30 + 8))(v27, v29);
  }

  return result;
}

uint64_t sub_1E44()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1E84()
{
  result = qword_81D0;
  if (!qword_81D0)
  {
    sub_2D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81D0);
  }

  return result;
}

uint64_t sub_1EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_2DBC();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = sub_2D4C();
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  v10 = *(*(sub_1830(&qword_8280, &qword_32E8) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v11 = sub_2CFC();
  v3[16] = v11;
  v12 = *(v11 - 8);
  v3[17] = v12;
  v13 = *(v12 + 64) + 15;
  v3[18] = swift_task_alloc();
  sub_2E7C();
  v3[19] = sub_2E6C();
  v15 = sub_2E5C();

  return _swift_task_switch(sub_20C4, v15, v14);
}

uint64_t sub_20C4()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[7];

  sub_2DFC();
  sub_2CCC();
  (*(v7 + 8))(v5, v6);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[9];
    v13 = v0[6];
    v12 = v0[7];
    sub_2A7C(v0[15]);
    sub_2DEC();
    sub_2E0C();
    (*(v10 + 8))(v9, v11);
  }

  else
  {
    (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
    v0[2] = sub_2CDC();
    v0[3] = v14;
    v0[4] = 47;
    v0[5] = 0xE100000000000000;
    sub_2AE4();
    v15 = sub_2E8C();

    v17 = *(v15 + 16);
    if (v17)
    {
      v18 = 0;
      v19 = -v17;
      v20 = v15 + 40;
      do
      {
        v21 = (v20 + 16 * v18++);
        while (1)
        {
          if ((v18 - 1) >= *(v15 + 16))
          {
            __break(1u);
            return result;
          }

          v22 = *(v21 - 1);
          v23 = *v21;
          v24 = HIBYTE(*v21) & 0xF;
          if ((*v21 & 0x2000000000000000) == 0)
          {
            v24 = v22 & 0xFFFFFFFFFFFFLL;
          }

          if (v24)
          {
            if (v22 != 0xD000000000000011 || 0x8000000000003340 != v23)
            {
              v26 = *(v21 - 1);
              v27 = *v21;
              result = sub_2E9C();
              if ((result & 1) == 0)
              {
                break;
              }
            }
          }

          ++v18;
          v21 += 2;
          if (v19 + v18 == 1)
          {
            goto LABEL_21;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2B38(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
        }

        v29 = *(&_swiftEmptyArrayStorage + 2);
        v28 = *(&_swiftEmptyArrayStorage + 3);
        v30 = v29 + 1;
        if (v29 >= v28 >> 1)
        {
          result = sub_2B38((v28 > 1), v29 + 1, 1);
          v30 = v29 + 1;
        }

        *(&_swiftEmptyArrayStorage + 2) = v30;
        v31 = &_swiftEmptyArrayStorage + 16 * v29;
        *(v31 + 4) = v22;
        *(v31 + 5) = v23;
        v20 = v15 + 40;
      }

      while (v19 + v18);
    }

LABEL_21:

    v32 = *(&_swiftEmptyArrayStorage + 2);

    if (!v32)
    {
      v33 = v0[18];
      sub_2CEC();
      if (v34)
      {
        v35 = v0[8];
        v36 = sub_2E4C();

        [v35 setSpecifierIdentifierToScrollAndHighlight:v36];
      }
    }

    v38 = v0[17];
    v37 = v0[18];
    v39 = v0[16];
    v41 = v0[10];
    v40 = v0[11];
    v42 = v0[9];
    v44 = v0[6];
    v43 = v0[7];
    sub_2DEC();
    sub_2E0C();
    (*(v41 + 8))(v40, v42);
    (*(v38 + 8))(v37, v39);
  }

  v45 = v0[18];
  v46 = v0[14];
  v47 = v0[15];
  v48 = v0[11];

  v49 = v0[1];

  return v49();
}

uint64_t sub_246C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2CC0;

  return sub_1EDC(a1, a2, v6);
}

unint64_t sub_251C()
{
  result = qword_81D8;
  if (!qword_81D8)
  {
    sub_2580(&qword_81C0, &qword_31D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81D8);
  }

  return result;
}

uint64_t sub_2580(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_25CC()
{
  result = qword_81E0;
  if (!qword_81E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81E0);
  }

  return result;
}

uint64_t sub_263C()
{
  v1 = sub_1830(&qword_81C0, &qword_31D0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = v12 - v4;
  v6 = *v0;
  *(swift_allocObject() + 16) = v6;
  v7 = v6;
  sub_1830(&qword_81C8, &qword_31D8);
  v8 = sub_2D8C();
  v9 = sub_1E84();
  v12[0] = v8;
  v12[1] = v9;
  swift_getOpaqueTypeConformance2();
  sub_2E1C();
  *(swift_allocObject() + 16) = v7;
  sub_251C();
  v10 = v7;
  sub_2DDC();
  return (*(v2 + 8))(v5, v1);
}

id sub_2804@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = result;
  return result;
}

uint64_t sub_2874()
{
  sub_2580(&qword_81C0, &qword_31D0);
  sub_251C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_28D8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2988;

  return sub_1EDC(a1, a2, v6);
}

uint64_t sub_2988()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2A7C(uint64_t a1)
{
  v2 = sub_1830(&qword_8280, &qword_32E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2AE4()
{
  result = qword_8288;
  if (!qword_8288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8288);
  }

  return result;
}

char *sub_2B38(char *a1, int64_t a2, char a3)
{
  result = sub_2B58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2B58(char *result, int64_t a2, char a3, char *a4)
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
    sub_1830(&qword_8290, &qword_32F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_2C68()
{
  result = qword_82A0;
  if (!qword_82A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_82A0);
  }

  return result;
}