unint64_t sub_63284(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_8448C();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_8454C();
}

unint64_t sub_63334()
{
  result = qword_CB598;
  if (!qword_CB598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CB598);
  }

  return result;
}

void *sub_63388(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3B214(0, v1, 0);
    v3 = (a1 + 48);
    do
    {
      v9 = *(v3 - 2);
      v10 = *(v3 - 1);
      v11 = *v3;

      swift_unknownObjectRetain();
      sub_2805C(&qword_CA870, &qword_A1280);
      sub_2805C(&qword_CA860, &qword_A1058);
      swift_dynamicCast();
      v4 = v13;
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_3B214((v5 > 1), v6 + 1, 1);
        v4 = v13;
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      v7 = &_swiftEmptyArrayStorage[3 * v6];
      v7[4] = v12;
      *(v7 + 5) = v4;
      v3 += 3;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_634D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_84ABC();
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v7 = *v4;

      swift_dynamicCast();
      sub_84A9C();
      v5 = _swiftEmptyArrayStorage[2];
      sub_84ACC();
      sub_84ADC();
      sub_84AAC();
      v4 += 2;
      --v2;
    }

    while (v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

float (*sub_635F8(uint64_t a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___JSAStoreContentLookupRequest__priority;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_6362C;
}

float sub_6362C(uint64_t a1)
{
  result = *(a1 + 16);
  *(*a1 + *(a1 + 8)) = result;
  return result;
}

uint64_t sub_63750(uint64_t a1)
{
  if ((*(v1 + OBJC_IVAR___JSAStoreContentLookupRequest_frozen) & 1) == 0)
  {
    v2 = *(v1 + OBJC_IVAR___JSAStoreContentLookupRequest__requestOptions);
    *(v1 + OBJC_IVAR___JSAStoreContentLookupRequest__requestOptions) = a1;
  }
}

void *sub_63778(void *result, uint64_t *a2)
{
  v3 = *a2;
  if ((*(*a2 + OBJC_IVAR___JSAStoreContentLookupRequest_frozen) & 1) == 0)
  {
    v4 = *(v3 + OBJC_IVAR___JSAStoreContentLookupRequest__requestOptions);
    *(v3 + OBJC_IVAR___JSAStoreContentLookupRequest__requestOptions) = *result;
  }

  return result;
}

uint64_t (*sub_637D8(void *a1))(uint64_t *a1, char a2)
{
  v2 = OBJC_IVAR___JSAStoreContentLookupRequest__requestOptions;
  a1[2] = OBJC_IVAR___JSAStoreContentLookupRequest__requestOptions;
  *a1 = *(v1 + v2);
  a1[1] = v1;

  return sub_63830;
}

uint64_t sub_63830(uint64_t *a1, char a2)
{
  v4 = a1[1];
  if (a2)
  {
    v5 = *a1;
    if (*(v4 + OBJC_IVAR___JSAStoreContentLookupRequest_frozen) != 1)
    {
      v6 = a1[2];
      v7 = *(v4 + v6);
      *(v4 + v6) = v5;
    }

    goto LABEL_7;
  }

  v9 = *a1;
  if (*(v4 + OBJC_IVAR___JSAStoreContentLookupRequest_frozen))
  {
LABEL_7:
  }

  v10 = a1[2];
  v11 = *(v4 + v10);
  *(v4 + v10) = v9;
}

void *sub_6398C()
{
  v1 = OBJC_IVAR___JSAStoreContentLookupRequest__itemIdentifiers;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {

    sub_84ABC();
    v5 = (v2 + 40);
    do
    {
      v7 = *(v5 - 1);
      v8 = *v5;

      swift_dynamicCast();
      sub_84A9C();
      v6 = _swiftEmptyArrayStorage[2];
      sub_84ACC();
      sub_84ADC();
      sub_84AAC();
      v5 += 2;
      --v3;
    }

    while (v3);

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_63B10(unint64_t a1)
{
  if ((*(v1 + OBJC_IVAR___JSAStoreContentLookupRequest_frozen) & 1) == 0)
  {
    v4 = v1;
    v5 = OBJC_IVAR___JSAStoreContentLookupRequest__itemIdentifiers;
    swift_beginAccess();
    v6 = *(v1 + v5);
    *(v1 + v5) = _swiftEmptyArrayStorage;

    if (!a1)
    {
      return result;
    }

    if (a1 >> 62)
    {
      result = sub_84B0C();
      v7 = result;
      if (result)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v7 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
      if (v7)
      {
LABEL_8:
        if (v7 < 1)
        {
          __break(1u);
          return result;
        }

        v8 = 0;
        v35 = a1 & 0xC000000000000001;
        v33 = a1;
        v34 = v7;
        do
        {
          if (v35)
          {
            v10 = sub_84A6C();
          }

          else
          {
            v10 = *(a1 + 8 * v8 + 32);
            swift_unknownObjectRetain();
          }

          v39 = v10;
          swift_unknownObjectRetain();
          if (swift_dynamicCast())
          {
            v11 = v37;
            v12 = v38;
            swift_beginAccess();
            v13 = *(v4 + v5);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v4 + v5) = v13;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v13 = sub_61A98(0, *(v13 + 2) + 1, 1, v13);
              *(v4 + v5) = v13;
            }

            v16 = *(v13 + 2);
            v15 = *(v13 + 3);
            if (v16 >= v15 >> 1)
            {
              v13 = sub_61A98((v15 > 1), v16 + 1, 1, v13);
            }

            *(v13 + 2) = v16 + 1;
            v9 = &v13[16 * v16];
            *(v9 + 4) = v11;
            *(v9 + 5) = v12;
            *(v4 + v5) = v13;
            swift_endAccess();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v7 = v34;
          }

          else
          {
            swift_unknownObjectRelease();
            v37 = v10;
            swift_unknownObjectRetain();
            if (swift_dynamicCast())
            {
              v36[0] = v39;
              v17 = sub_84BBC();
              v19 = v18;
              swift_beginAccess();
              v20 = *(v4 + v5);
              v21 = swift_isUniquelyReferenced_nonNull_native();
              *(v4 + v5) = v20;
              if ((v21 & 1) == 0)
              {
                v20 = sub_61A98(0, *(v20 + 2) + 1, 1, v20);
                *(v4 + v5) = v20;
              }

              v23 = *(v20 + 2);
              v22 = *(v20 + 3);
              if (v23 >= v22 >> 1)
              {
                v20 = sub_61A98((v22 > 1), v23 + 1, 1, v20);
              }

              *(v20 + 2) = v23 + 1;
              v24 = &v20[16 * v23];
              *(v24 + 4) = v17;
              *(v24 + 5) = v19;
              *(v4 + v5) = v20;
              swift_endAccess();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              a1 = v33;
            }

            else
            {
              swift_unknownObjectRelease();
              if (qword_CA4B0 != -1)
              {
                swift_once();
              }

              v25 = sub_83D6C();
              sub_2C284(v25, qword_CB428);
              swift_unknownObjectRetain();
              v26 = sub_83D4C();
              v27 = sub_847AC();
              swift_unknownObjectRelease();
              if (os_log_type_enabled(v26, v27))
              {
                v28 = swift_slowAlloc();
                v29 = swift_slowAlloc();
                v36[0] = v29;
                *v28 = 136315138;
                v37 = v10;
                swift_unknownObjectRetain();
                v30 = sub_843FC();
                v32 = sub_3A93C(v30, v31, v36);
                v7 = v34;

                *(v28 + 4) = v32;
                _os_log_impl(&dword_0, v26, v27, "Invalid item identifier %s", v28, 0xCu);
                sub_371A8(v29);
                a1 = v33;

                swift_unknownObjectRelease();
              }

              else
              {
                swift_unknownObjectRelease();
              }
            }
          }

          ++v8;
        }

        while (v7 != v8);
      }
    }
  }
}

uint64_t sub_63FB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___JSAStoreContentLookupRequest__itemIdentifiers;
  swift_beginAccess();
  v5 = *(v3 + v4);

  v7 = sub_634D8(v6);

  *a2 = v7;
  return result;
}

void (*sub_64024(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = OBJC_IVAR___JSAStoreContentLookupRequest__itemIdentifiers;
  swift_beginAccess();
  v6 = *(v1 + v5);

  v8 = sub_634D8(v7);

  *(v4 + 24) = v8;
  return sub_640D0;
}

void sub_640D0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    sub_63B10(v5);
    v6 = *v3;
  }

  else
  {
    sub_63B10(*v3);
  }

  free(v2);
}

void *sub_64144()
{
  v1 = *(v0 + OBJC_IVAR___JSAStoreContentLookupRequest__onResponse);
  v2 = v1;
  return v1;
}

void sub_641D0(void *a1)
{
  if ((*(v1 + OBJC_IVAR___JSAStoreContentLookupRequest_frozen) & 1) == 0)
  {
    v2 = *(v1 + OBJC_IVAR___JSAStoreContentLookupRequest__onResponse);
    *(v1 + OBJC_IVAR___JSAStoreContentLookupRequest__onResponse) = a1;
    a1 = v2;
  }
}

void sub_641F8(void **a1, uint64_t *a2)
{
  v3 = *a2;
  if ((*(*a2 + OBJC_IVAR___JSAStoreContentLookupRequest_frozen) & 1) == 0)
  {
    v4 = *a1;
    v6 = *(v3 + OBJC_IVAR___JSAStoreContentLookupRequest__onResponse);
    *(v3 + OBJC_IVAR___JSAStoreContentLookupRequest__onResponse) = *a1;
    v5 = v4;
  }
}

uint64_t (*sub_6425C(void *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR___JSAStoreContentLookupRequest__onResponse;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_642B4;
}

uint64_t sub_642B4(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = *a1;
    if (*(v3 + OBJC_IVAR___JSAStoreContentLookupRequest_frozen) != 1)
    {
      v5 = *(a1 + 16);
      v6 = *(v3 + v5);
      *(v3 + v5) = v4;
      v4;

      return _objc_release_x1();
    }

    goto LABEL_7;
  }

  if (*(v3 + OBJC_IVAR___JSAStoreContentLookupRequest_frozen))
  {
LABEL_7:

    return _objc_release_x1();
  }

  v7 = *(a1 + 16);
  v8 = *(v3 + v7);
  *(v3 + v7) = *a1;

  return _objc_release_x1();
}

id StoreContentLookupRequest.init()()
{
  *&v0[OBJC_IVAR___JSAStoreContentLookupRequest__requestOptions] = 0;
  *&v0[OBJC_IVAR___JSAStoreContentLookupRequest__itemIdentifiers] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR___JSAStoreContentLookupRequest__onResponse] = 0;
  *&v0[OBJC_IVAR___JSAStoreContentLookupRequest_lookup] = 0;
  *&v0[OBJC_IVAR___JSAStoreContentLookupRequest_lookupPromise] = 0;
  v0[OBJC_IVAR___JSAStoreContentLookupRequest_frozen] = 0;
  *&v0[OBJC_IVAR___JSAStoreContentLookupRequest__priority] = 2143289344;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoreContentLookupRequest();
  return objc_msgSendSuper2(&v2, "init");
}

id StoreContentLookupRequest.__deallocating_deinit()
{
  if ((v0[OBJC_IVAR___JSAStoreContentLookupRequest_frozen] & 1) == 0)
  {
    v1 = *&v0[OBJC_IVAR___JSAStoreContentLookupRequest__onResponse];
    *&v0[OBJC_IVAR___JSAStoreContentLookupRequest__onResponse] = 0;
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for StoreContentLookupRequest();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_64568()
{
  v1 = *(v0 + OBJC_IVAR___JSAStoreContentLookupRequest__onResponse);
  if (v1)
  {
    v2 = OBJC_IVAR___JSAStoreContentLookupRequest__itemIdentifiers;
    swift_beginAccess();
    v3 = *(v0 + v2);
    v4 = v1;

    v6 = sub_634D8(v5);

    if (v6 >> 62)
    {
      v7 = sub_84B0C();
    }

    else
    {
      v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    }

    if (v7 < 1 || (*(v0 + OBJC_IVAR___JSAStoreContentLookupRequest_frozen) & 1) != 0)
    {
      goto LABEL_55;
    }

    *(v0 + OBJC_IVAR___JSAStoreContentLookupRequest_frozen) = 1;
    v8 = OBJC_IVAR___JSAStoreContentLookupRequest__requestOptions;
    v9 = *(v0 + OBJC_IVAR___JSAStoreContentLookupRequest__requestOptions);
    if (v9 && *(v9 + 16))
    {
      v10 = v0;
      v11 = *(v0 + OBJC_IVAR___JSAStoreContentLookupRequest__requestOptions);

      v12 = sub_55854(0x72656C6C6163, 0xE600000000000000);
      if (v13)
      {
        v14 = *(*(v9 + 56) + 8 * v12);
        swift_unknownObjectRetain();

        if (swift_dynamicCast())
        {
          v0 = v10;
          v15 = *(v10 + v8);
          if (!v15)
          {
            goto LABEL_24;
          }

          goto LABEL_18;
        }
      }

      else
      {
      }

      v0 = v10;
    }

    v16 = [objc_opt_self() mainBundle];
    v17 = [v16 bundleIdentifier];

    if (v17)
    {
      sub_843AC();

      v15 = *(v0 + v8);
      if (!v15)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v15 = *(v0 + v8);
      if (!v15)
      {
        goto LABEL_24;
      }
    }

LABEL_18:
    if (*(v15 + 16))
    {
      v18 = v0;

      v19 = sub_55854(112, 0xE100000000000000);
      if (v20)
      {
        v21 = *(*(v15 + 56) + 8 * v19);
        swift_unknownObjectRetain();

        if (swift_dynamicCast())
        {
          v0 = v18;
LABEL_25:
          v22 = [objc_opt_self() defaultBag];
          v23 = objc_allocWithZone(AMSLookup);
          v24 = sub_8437C();

          v25 = sub_8437C();

          v26 = [v23 initWithBag:v22 caller:v24 keyProfile:v25];

          v27 = OBJC_IVAR___JSAStoreContentLookupRequest_lookup;
          v28 = *(v0 + OBJC_IVAR___JSAStoreContentLookupRequest_lookup);
          *(v0 + OBJC_IVAR___JSAStoreContentLookupRequest_lookup) = v26;

          v29 = *(v0 + v8);
          if (!v29 || !*(v29 + 16))
          {
            goto LABEL_50;
          }

          v30 = v0;
          v31 = *(v0 + v8);

          v32 = sub_55854(0x6E6F6973726576, 0xE700000000000000);
          if (v33)
          {
            v34 = *(*(v29 + 56) + 8 * v32);
            swift_unknownObjectRetain();

            v74 = v34;
            if (swift_dynamicCast())
            {
              v35 = HIBYTE(v76) & 0xF;
              v36 = aBlock & 0xFFFFFFFFFFFFLL;
              if ((v76 & 0x2000000000000000) != 0)
              {
                v37 = HIBYTE(v76) & 0xF;
              }

              else
              {
                v37 = aBlock & 0xFFFFFFFFFFFFLL;
              }

              v0 = v30;
              if (!v37)
              {

                goto LABEL_50;
              }

              if ((v76 & 0x1000000000000000) != 0)
              {
                v41 = sub_65490(aBlock, v76, 10);
                v73 = v72;

                if (v73)
                {
                  goto LABEL_50;
                }

                goto LABEL_100;
              }

              if ((v76 & 0x2000000000000000) != 0)
              {
                v76 &= 0xFFFFFFFFFFFFFFuLL;
                if (aBlock == 43)
                {
                  if (!v35)
                  {
LABEL_109:
                    __break(1u);
                    return;
                  }

                  v38 = (v35 - 1);
                  if (v35 != 1)
                  {
                    v41 = 0;
                    v63 = &aBlock + 1;
                    while (1)
                    {
                      v64 = *v63 - 48;
                      if (v64 > 9)
                      {
                        break;
                      }

                      v65 = 10 * v41;
                      if ((v41 * 10) >> 64 != (10 * v41) >> 63)
                      {
                        break;
                      }

                      v41 = v65 + v64;
                      if (__OFADD__(v65, v64))
                      {
                        break;
                      }

                      ++v63;
                      if (!--v38)
                      {
                        goto LABEL_99;
                      }
                    }
                  }
                }

                else if (aBlock == 45)
                {
                  if (!v35)
                  {
LABEL_107:
                    __break(1u);
LABEL_108:
                    __break(1u);
                    goto LABEL_109;
                  }

                  v38 = (v35 - 1);
                  if (v35 != 1)
                  {
                    v41 = 0;
                    v56 = &aBlock + 1;
                    while (1)
                    {
                      v57 = *v56 - 48;
                      if (v57 > 9)
                      {
                        break;
                      }

                      v58 = 10 * v41;
                      if ((v41 * 10) >> 64 != (10 * v41) >> 63)
                      {
                        break;
                      }

                      v41 = v58 - v57;
                      if (__OFSUB__(v58, v57))
                      {
                        break;
                      }

                      ++v56;
                      if (!--v38)
                      {
                        goto LABEL_99;
                      }
                    }
                  }
                }

                else if (v35)
                {
                  v41 = 0;
                  p_aBlock = &aBlock;
                  while (1)
                  {
                    v69 = *p_aBlock - 48;
                    if (v69 > 9)
                    {
                      break;
                    }

                    v70 = 10 * v41;
                    if ((v41 * 10) >> 64 != (10 * v41) >> 63)
                    {
                      break;
                    }

                    v41 = v70 + v69;
                    if (__OFADD__(v70, v69))
                    {
                      break;
                    }

                    p_aBlock = (p_aBlock + 1);
                    if (!--v35)
                    {
LABEL_97:
                      LOBYTE(v38) = 0;
                      goto LABEL_99;
                    }
                  }
                }
              }

              else
              {
                if ((aBlock & 0x1000000000000000) != 0)
                {
                  v38 = ((v76 & 0xFFFFFFFFFFFFFFFLL) + 32);
                }

                else
                {
                  v38 = sub_84A8C();
                }

                v39 = *v38;
                if (v39 == 43)
                {
                  if (v36 >= 1)
                  {
                    v59 = v36 - 1;
                    if (v36 != 1)
                    {
                      v41 = 0;
                      if (!v38)
                      {
                        goto LABEL_99;
                      }

                      v60 = v38 + 1;
                      while (1)
                      {
                        v61 = *v60 - 48;
                        if (v61 > 9)
                        {
                          break;
                        }

                        v62 = 10 * v41;
                        if ((v41 * 10) >> 64 != (10 * v41) >> 63)
                        {
                          break;
                        }

                        v41 = v62 + v61;
                        if (__OFADD__(v62, v61))
                        {
                          break;
                        }

                        ++v60;
                        if (!--v59)
                        {
                          goto LABEL_97;
                        }
                      }
                    }

                    goto LABEL_98;
                  }

                  goto LABEL_108;
                }

                if (v39 == 45)
                {
                  if (v36 >= 1)
                  {
                    v40 = v36 - 1;
                    if (v36 != 1)
                    {
                      v41 = 0;
                      if (!v38)
                      {
                        goto LABEL_99;
                      }

                      v42 = v38 + 1;
                      while (1)
                      {
                        v43 = *v42 - 48;
                        if (v43 > 9)
                        {
                          break;
                        }

                        v44 = 10 * v41;
                        if ((v41 * 10) >> 64 != (10 * v41) >> 63)
                        {
                          break;
                        }

                        v41 = v44 - v43;
                        if (__OFSUB__(v44, v43))
                        {
                          break;
                        }

                        ++v42;
                        if (!--v40)
                        {
                          goto LABEL_97;
                        }
                      }
                    }

                    goto LABEL_98;
                  }

                  __break(1u);
                  goto LABEL_107;
                }

                if (v36)
                {
                  v41 = 0;
                  if (!v38)
                  {
                    goto LABEL_99;
                  }

                  while (1)
                  {
                    v66 = *v38 - 48;
                    if (v66 > 9)
                    {
                      break;
                    }

                    v67 = 10 * v41;
                    if ((v41 * 10) >> 64 != (10 * v41) >> 63)
                    {
                      break;
                    }

                    v41 = v67 + v66;
                    if (__OFADD__(v67, v66))
                    {
                      break;
                    }

                    ++v38;
                    if (!--v36)
                    {
                      goto LABEL_97;
                    }
                  }
                }
              }

LABEL_98:
              v41 = 0;
              LOBYTE(v38) = 1;
LABEL_99:
              LOBYTE(v74) = v38;
              v71 = v38;

              if ((v71 & 1) == 0)
              {
LABEL_100:
                [*(v0 + v27) setVersion:{v41, v74}];
              }

LABEL_50:
              v45 = *(v0 + v27);
              if (v45)
              {
                v46 = *(v0 + v2);
                v47 = v45;

                isa = sub_8458C().super.isa;

                v49 = [v47 performLookupWithBundleIdentifiers:0 itemIdentifiers:isa];
              }

              else
              {
                v49 = 0;
              }

              v50 = *(v0 + OBJC_IVAR___JSAStoreContentLookupRequest_lookupPromise);
              *(v0 + OBJC_IVAR___JSAStoreContentLookupRequest_lookupPromise) = v49;
              v51 = v49;

              if (v49)
              {
                v52 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v53 = swift_allocObject();
                *(v53 + 16) = v4;
                *(v53 + 24) = v52;
                v79 = sub_65470;
                v80 = v53;
                aBlock = _NSConcreteStackBlock;
                v76 = 1107296256;
                v77 = sub_65258;
                v78 = &unk_B6680;
                v54 = _Block_copy(&aBlock);
                v55 = v4;

                [v51 addFinishBlock:v54];

                _Block_release(v54);
                v4 = v51;
              }

LABEL_55:

              return;
            }
          }

          else
          {
          }

          v0 = v30;
          goto LABEL_50;
        }
      }

      else
      {
      }

      v0 = v18;
    }

LABEL_24:
    sub_843AC();
    goto LABEL_25;
  }
}

void sub_64D98(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_CA4B0 != -1)
    {
      swift_once();
    }

    v5 = sub_83D6C();
    sub_2C284(v5, qword_CB428);
    swift_errorRetain();
    v6 = sub_83D4C();
    v7 = sub_847AC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v38[0] = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_84C5C();
      v12 = sub_3A93C(v10, v11, v38);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_0, v6, v7, "Invalid item identifier %s", v8, 0xCu);
      sub_371A8(v9);
    }

    else
    {
    }
  }

  v13 = sub_42808(_swiftEmptyArrayStorage);
  if (a1)
  {
    v14 = [a1 valueForProperty:AMSLookupPropertyIsAuthenticated];
    sub_8495C();
    swift_unknownObjectRelease();
    sub_42FB4(v37, v38);
    v15 = sub_843AC();
    v17 = v16;
    sub_381F8(v38, v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_694A4(v37, v15, v17, isUniquelyReferenced_nonNull_native);

    sub_371A8(v38);
    v19 = [a1 valueForProperty:AMSLookupPropertyResults];
    sub_8495C();
    swift_unknownObjectRelease();
    sub_42FB4(v37, v38);
    v20 = sub_843AC();
    v22 = v21;
    sub_381F8(v38, v37);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_694A4(v37, v20, v22, v23);

    sub_371A8(v38);
    v24 = [a1 valueForProperty:AMSLookupPropertyStatus];
    sub_8495C();
    swift_unknownObjectRelease();
    sub_42FB4(v37, v38);
    v25 = sub_843AC();
    v27 = v26;
    sub_381F8(v38, v37);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_694A4(v37, v25, v27, v28);

    sub_371A8(v38);
  }

  v29 = [objc_opt_self() sharedInstance];
  sub_2805C(&unk_CADB0, &unk_A16E0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_A10E0;
  *(v30 + 56) = sub_2805C(&qword_CB600, &qword_A2440);
  *(v30 + 32) = v13;
  isa = sub_8458C().super.isa;
  v32 = sub_8437C();
  [v29 enqueueValueCall:a3 arguments:isa file:v32 line:133];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = *(Strong + OBJC_IVAR___JSAStoreContentLookupRequest_lookup);
    *(Strong + OBJC_IVAR___JSAStoreContentLookupRequest_lookup) = 0;
    v35 = Strong;

    v36 = *&v35[OBJC_IVAR___JSAStoreContentLookupRequest_lookupPromise];
    *&v35[OBJC_IVAR___JSAStoreContentLookupRequest_lookupPromise] = 0;

    v35[OBJC_IVAR___JSAStoreContentLookupRequest_frozen] = 0;
  }
}

void sub_65258(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_6532C()
{
  v1 = OBJC_IVAR___JSAStoreContentLookupRequest_lookupPromise;
  [*(v0 + OBJC_IVAR___JSAStoreContentLookupRequest_lookupPromise) cancel];
  v2 = *(v0 + OBJC_IVAR___JSAStoreContentLookupRequest_lookup);
  *(v0 + OBJC_IVAR___JSAStoreContentLookupRequest_lookup) = 0;

  v3 = *(v0 + v1);
  *(v0 + v1) = 0;

  *(v0 + OBJC_IVAR___JSAStoreContentLookupRequest_frozen) = 0;
}

uint64_t sub_653F8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_65430()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_65478(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unsigned __int8 *sub_65490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_8453C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_77084();
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
      result = sub_84A8C();
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

float sub_65A1C@<S0>(void *a1@<X0>, float *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR___JSAStoreContentLookupRequest__priority);
  *a2 = result;
  return result;
}

float sub_65A34(float *a1, void *a2)
{
  result = *a1;
  *(*a2 + OBJC_IVAR___JSAStoreContentLookupRequest__priority) = *a1;
  return result;
}

uint64_t sub_65A6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_63B10(v4);
}

id sub_65A98@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR___JSAStoreContentLookupRequest__onResponse);
  *a2 = v2;
  return v2;
}

uint64_t _sSo13UIApplicationC5JSAppE20sharedIfNotExtensionABSgvgZ_0()
{
  if (_UIApplicationIsExtension())
  {
    if (qword_CA4D8 != -1)
    {
      swift_once();
    }

    v0 = sub_83D6C();
    sub_2C284(v0, qword_CB4A0);
    v1 = sub_83D4C();
    v2 = sub_847BC();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_0, v1, v2, "Detected an extension trying to invoke sharedIfNotExtension", v3, 2u);
    }
  }

  else
  {
    sub_65F74();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [ObjCClassFromMetadata performSelector:sub_83B4C()];
    v6 = ObjCClassFromMetadata;
    if (v5)
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
    }
  }

  return 0;
}

unint64_t sub_65F74()
{
  result = qword_CB608;
  if (!qword_CB608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_CB608);
  }

  return result;
}

uint64_t sub_65FEC(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  swift_beginAccess();
  v6 = *(v2 + 32);
  if (*(v6 + 16))
  {

    v7 = sub_55854(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);
      swift_unknownObjectRetain();

      v17 = v9;
      if (swift_dynamicCast())
      {
        return v16;
      }
    }

    else
    {
    }
  }

  v11 = *(v5 + 56);
  if (!v11)
  {
    return 0;
  }

  swift_beginAccess();
  v12 = *(v11 + 32);
  if (!*(v12 + 16))
  {
    return 0;
  }

  v13 = sub_55854(a1, a2);
  if ((v14 & 1) == 0)
  {

    return 0;
  }

  v15 = *(*(v12 + 56) + 8 * v13);
  swift_unknownObjectRetain();

  if (swift_dynamicCast())
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_6615C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v5 = 0;
  *(v4 + 32) = &_swiftEmptyDictionarySingleton;
  v6 = (v4 + 32);
  v6[3] = 0;
  *(v6 - 2) = result;
  *(v6 - 1) = a2;
  v25 = v6;
  v26 = a3;
  v6[1] = &_swiftEmptyDictionarySingleton;
  v24 = v6 + 1;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
LABEL_11:
    v16 = __clz(__rbit64(v10)) | (v5 << 6);
    v17 = (*(v26 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(v26 + 56) + 8 * v16);
    v28[0] = *v17;
    v28[1] = v19;
    __chkstk_darwin(result);
    v21[2] = v28;

    swift_unknownObjectRetain();
    if (sub_6BDCC(sub_6A590, v21, &off_B4208))
    {
      v12 = v25;
    }

    else
    {
      v12 = v24;
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v13 = *v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v12;
    sub_695F4(v20, v18, v19, isUniquelyReferenced_nonNull_native);

    *v12 = v27;
    swift_endAccess();
    v10 &= v10 - 1;
    result = swift_unknownObjectRelease();
  }

  while (1)
  {
    v15 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
      swift_arrayDestroy();

      result = v23;
      *(v23 + 48) = v22;
      return result;
    }

    v10 = *(v7 + 8 * v15);
    ++v5;
    if (v10)
    {
      v5 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_66358()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];
  v0[7] = 0;

  if (v5)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v6 = *(v5 + 56);
      swift_retain_n();

      v5 = v6;
    }

    while (v6);
  }

  return v0;
}

uint64_t sub_663F0()
{
  sub_66358();

  return _swift_deallocClassInstance(v0, 64, 7);
}

id sub_66424()
{
  result = [objc_allocWithZone(type metadata accessor for MetricsController()) init];
  qword_CB610 = result;
  return result;
}

char *MetricsController.init()()
{
  v1 = v0;
  v2 = sub_83D9C();
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  __chkstk_darwin(v2);
  v47 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_8481C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_847FC();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_83DDC();
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = *(v45 + 64);
  __chkstk_darwin(v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR___JSAMetricsController_metrics;
  v17 = [objc_opt_self() defaultBag];
  v18 = objc_allocWithZone(AMSMetrics);
  v19 = sub_8437C();
  v20 = [v18 initWithContainerID:v19 bag:v17];

  v21 = sub_8477C();
  *&v1[v16] = v21;
  *&v1[OBJC_IVAR___JSAMetricsController_experienceEvents] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___JSAMetricsController__performanceEvents] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___JSAMetricsController_acknowledgementObservation] = 0;
  v22 = OBJC_IVAR___JSAMetricsController_submissionQueue;
  sub_43834(0, &qword_CA518, OS_dispatch_queue_ptr);
  sub_83DCC();
  sub_847EC();
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  *&v1[v22] = sub_8485C();
  v23 = OBJC_IVAR___JSAMetricsController_isSuspended;
  sub_2805C(&qword_CB650, &qword_A1D50);
  v24 = swift_allocObject();
  *(v24 + 20) = 0;
  *(v24 + 16) = 0;
  *&v1[v23] = v24;
  *&v1[OBJC_IVAR___JSAMetricsController_suspensionAssertionProvider] = 0;
  v25 = type metadata accessor for MetricsController();
  v57.receiver = v1;
  v57.super_class = v25;
  v26 = objc_msgSendSuper2(&v57, "init");
  v27 = objc_allocWithZone(BUCountingAssertionProvider);
  v28 = v26;
  v29 = [v27 initWithDelegate:v28];
  v30 = *&v28[OBJC_IVAR___JSAMetricsController_suspensionAssertionProvider];
  *&v28[OBJC_IVAR___JSAMetricsController_suspensionAssertionProvider] = v29;

  v31 = [objc_opt_self() defaultCenter];
  if (qword_CA4F0 != -1)
  {
    swift_once();
  }

  v32 = qword_CB618;
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = sub_6906C;
  v56 = v33;
  aBlock = _NSConcreteStackBlock;
  v52 = 1107296256;
  v53 = sub_66B84;
  v54 = &unk_B6710;
  v34 = _Block_copy(&aBlock);
  v35 = v28;

  v36 = [v31 addObserverForName:v32 object:0 queue:0 usingBlock:v34];
  _Block_release(v34);

  v37 = *&v35[OBJC_IVAR___JSAMetricsController_acknowledgementObservation];
  *&v35[OBJC_IVAR___JSAMetricsController_acknowledgementObservation] = v36;
  swift_unknownObjectRelease();
  [*&v35[OBJC_IVAR___JSAMetricsController_metrics] setFlushTimerEnabled:0];
  v38 = *&v35[OBJC_IVAR___JSAMetricsController_submissionQueue];
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = v38;

  v55 = sub_6908C;
  v56 = v39;
  aBlock = _NSConcreteStackBlock;
  v52 = 1107296256;
  v53 = sub_283C0;
  v54 = &unk_B6738;
  v41 = _Block_copy(&aBlock);

  sub_83DAC();
  v50 = _swiftEmptyArrayStorage;
  sub_69094();
  sub_2805C(&unk_CAE50, &unk_A0420);
  sub_5CBFC();
  v42 = v47;
  v43 = v49;
  sub_8496C();
  sub_8484C();
  _Block_release(v41);

  (*(v48 + 8))(v42, v43);
  (*(v45 + 8))(v15, v46);

  return v35;
}

void sub_66B30()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_66F90();
  }
}

uint64_t sub_66B84(uint64_t a1)
{
  v2 = sub_8381C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_8380C();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_66C78()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = BUOnboardingBooksBundleID();
    if (!v2)
    {
      sub_843AC();
      v2 = sub_8437C();
    }

    v3 = [objc_opt_self() acknowledgementNeededForPrivacyIdentifier:v2];

    if ((v3 & 1) == 0)
    {
      if (qword_CA4B8 != -1)
      {
        swift_once();
      }

      v4 = sub_83D6C();
      sub_2C284(v4, qword_CB440);
      v5 = sub_83D4C();
      v6 = sub_847CC();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_0, v5, v6, "Enabling auto flushing: User has acknowledged privacy.", v7, 2u);
      }

      [*&v1[OBJC_IVAR___JSAMetricsController_metrics] setFlushTimerEnabled:1];
    }
  }
}

id MetricsController.__deallocating_deinit()
{
  dispatch_activate(*&v0[OBJC_IVAR___JSAMetricsController_submissionQueue]);
  v1 = *&v0[OBJC_IVAR___JSAMetricsController_acknowledgementObservation];
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];
    swift_unknownObjectRelease();
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for MetricsController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

void sub_66F90()
{
  v1 = v0;
  v2 = BUOnboardingBooksBundleID();
  if (!v2)
  {
    sub_843AC();
    v2 = sub_8437C();
  }

  v3 = [objc_opt_self() acknowledgementNeededForPrivacyIdentifier:v2];

  if (qword_CA4B8 != -1)
  {
    swift_once();
  }

  v4 = sub_83D6C();
  sub_2C284(v4, qword_CB440);
  v5 = sub_83D4C();
  v6 = sub_847CC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v3 ^ 1;
    _os_log_impl(&dword_0, v5, v6, "Privacy acknowledgement changed to %{BOOL}d", v7, 8u);
  }

  if ((v3 & 1) == 0)
  {
    dispatch_activate(*&v1[OBJC_IVAR___JSAMetricsController_submissionQueue]);
    v8 = sub_83D4C();
    v9 = sub_847CC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "Enabling autoflushing because user has acknowledged privacy, and flushing right away", v10, 2u);
    }

    [*&v1[OBJC_IVAR___JSAMetricsController_metrics] setFlushTimerEnabled:1];

    [v1 flushUnreportedEvents];
  }
}

uint64_t sub_671B8(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v1 + v2) = _swiftEmptyArrayStorage;
}

void sub_67208()
{
  v1 = v0;
  v2 = BUOnboardingBooksBundleID();
  if (!v2)
  {
    sub_843AC();
    v2 = sub_8437C();
  }

  v3 = [objc_opt_self() acknowledgementNeededForPrivacyIdentifier:v2];

  if ((v3 & 1) == 0)
  {
    if (qword_CA4B8 != -1)
    {
      swift_once();
    }

    v4 = sub_83D6C();
    sub_2C284(v4, qword_CB440);
    v5 = sub_83D4C();
    v6 = sub_847CC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "Starting event submission", v7, 2u);
    }

    v8 = *(v1 + OBJC_IVAR___JSAMetricsController_submissionQueue);

    dispatch_activate(v8);
  }
}

id sub_673AC()
{
  result = *(v0 + OBJC_IVAR___JSAMetricsController_suspensionAssertionProvider);
  if (result)
  {
    return [result newAssertion];
  }

  __break(1u);
  return result;
}

uint64_t sub_673EC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_697E0(v3);
    v3 = result;
  }

  v5 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *(&stru_20.cmd + 8 * a1 + (v3 & 0xFFFFFFFFFFFFFF8));
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

unint64_t sub_6747C(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v5 = v4;
  v73 = a4;
  v9 = 0xE90000000000003ELL;
  v79 = 0x6E776F6E6B6E753CLL;
  v10 = sub_83D9C();
  v78 = *(v10 - 8);
  v11 = *(v78 + 64);
  __chkstk_darwin(v10);
  v76 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_83DDC();
  v75 = *(v77 - 8);
  v13 = *(v75 + 64);
  __chkstk_darwin(v77);
  v74 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2805C(&qword_CA718, &qword_A0F00);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v70 - v18;

  v80 = a2;
  v20 = sub_8437C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock = a1;
  sub_695F4(v20, 0x6369706F74, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v22 = aBlock;
  if (!*(a1 + 16))
  {
    goto LABEL_26;
  }

  v23 = sub_55854(0x6144746E6576655FLL, 0xEA00000000006174);
  if ((v24 & 1) == 0)
  {
    goto LABEL_22;
  }

  aBlock = *(*(a1 + 56) + 8 * v23);
  swift_unknownObjectRetain();
  sub_2805C(&qword_CB828, &qword_A1DF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v25 = v81[2];
  v70 = v81;
  if (v25 && (v26 = sub_55854(0x707954746E657665, 0xE900000000000065), (v27 & 1) != 0) && (v81 = *(v70[7] + 8 * v26), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) != 0) || *(a1 + 16) && (v28 = sub_55854(0x7954746E6576655FLL, 0xEA00000000006570), (v29 & 1) != 0) && (v81 = *(*(a1 + 56) + 8 * v28), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) != 0))
  {
    v9 = v83;
    v79 = aBlock;
  }

  if (qword_CA408 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v30 = sub_2C284(v15, qword_CAC88);
    (*(v16 + 16))(v19, v30, v15);
    sub_83BAC();
    (*(v16 + 8))(v19, v15);
    if (aBlock != 1)
    {
      break;
    }

    type metadata accessor for FigaroEvent();
    v19 = swift_allocObject();

    sub_6615C(v79, v9, v70, v22);
    v22 = OBJC_IVAR___JSAMetricsController__performanceEvents;
    swift_beginAccess();
    v31 = *(v5 + v22);
    v16 = v80;
    if (v31 >> 62)
    {
      if (v31 < 0)
      {
        v68 = *(v5 + v22);
      }

      if (sub_84B0C() >= 100)
      {
        v69 = sub_84B0C();
        v33 = __OFSUB__(v69, 1);
        result = v69 - 1;
        if (v33)
        {
LABEL_59:
          __break(1u);
          return result;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v32 = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
      if (v32 >= 0x64)
      {
        v33 = __OFSUB__(v32, 1);
        result = v32 - 1;
        if (v33)
        {
          goto LABEL_59;
        }

LABEL_16:
        sub_673EC(result);
      }
    }

    v35 = *(v5 + v22);
    if (!(v35 >> 62))
    {
      goto LABEL_34;
    }

    if (v35 < 0)
    {
      v36 = *(v5 + v22);
    }

    if ((sub_84B0C() & 0x8000000000000000) == 0)
    {
LABEL_34:
      sub_69F18(0, 0, v19);
      swift_endAccess();
      goto LABEL_37;
    }

    __break(1u);
LABEL_22:
    if (*(a1 + 16))
    {
      v37 = sub_55854(0x707954746E657665, v9 + 39);
      if (v38)
      {
        v81 = *(*(a1 + 56) + 8 * v37);
        swift_unknownObjectRetain();
        if (swift_dynamicCast())
        {
          v9 = v83;
          v79 = aBlock;
        }
      }
    }

LABEL_26:
    if (qword_CA408 != -1)
    {
      swift_once();
    }

    v39 = sub_2C284(v15, qword_CAC88);
    (*(v16 + 16))(v19, v39, v15);
    sub_83BAC();
    (*(v16 + 8))(v19, v15);
    if (aBlock != 1)
    {
      goto LABEL_36;
    }

    type metadata accessor for FigaroEvent();
    v19 = swift_allocObject();

    sub_6615C(v79, v9, a1, v22);
    v22 = OBJC_IVAR___JSAMetricsController_experienceEvents;
    swift_beginAccess();
    v40 = *(v5 + v22);
    v16 = v80;
    if (!(v40 >> 62))
    {
      v41 = *(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8));
      if (v41 < 0x64)
      {
        goto LABEL_33;
      }

      v33 = __OFSUB__(v41, 1);
      v42 = v41 - 1;
      if (v33)
      {
        goto LABEL_50;
      }

      goto LABEL_32;
    }

    if (v40 < 0)
    {
      v66 = *(v5 + v22);
    }

    if (sub_84B0C() >= 100)
    {
      v67 = sub_84B0C();
      v33 = __OFSUB__(v67, 1);
      v42 = v67 - 1;
      if (v33)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

LABEL_32:
      sub_673EC(v42);
    }

LABEL_33:
    if (!(*(v5 + v22) >> 62))
    {
      goto LABEL_34;
    }

LABEL_51:
    if ((sub_84B0C() & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

    __break(1u);
LABEL_53:
    swift_once();
  }

LABEL_36:
  v16 = v80;
LABEL_37:
  v71 = v5;

  if (qword_CA4B8 != -1)
  {
    swift_once();
  }

  v43 = sub_83D6C();
  sub_2C284(v43, qword_CB440);

  v44 = sub_83D4C();
  v45 = sub_847CC();

  v46 = os_log_type_enabled(v44, v45);
  v72 = v10;
  if (v46)
  {
    v47 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v47 = 136315650;
    *(v47 + 4) = sub_3A93C(v16, a3, &aBlock);
    *(v47 + 12) = 2080;
    v48 = sub_3A93C(v79, v9, &aBlock);

    *(v47 + 14) = v48;
    *(v47 + 22) = 2080;
    v49 = sub_8435C();
    v51 = sub_3A93C(v49, v50, &aBlock);

    *(v47 + 24) = v51;
    _os_log_impl(&dword_0, v44, v45, "recordEvent - topic: %s, eventType: %s, eventDictionary: %s", v47, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v52 = objc_allocWithZone(AMSMetricsEvent);
  v53 = sub_8437C();
  v54 = [v52 initWithTopic:v53];

  sub_67FB8(a1);
  isa = sub_8433C().super.isa;

  [v54 addPropertiesWithDictionary:isa];

  if (v73)
  {
    v56 = [objc_opt_self() sharedProvider];
    v57 = [v56 activeStoreAccount];

    [v54 setAccount:v57];
  }

  v58 = *(v71 + OBJC_IVAR___JSAMetricsController_submissionQueue);
  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = swift_allocObject();
  *(v60 + 16) = v59;
  *(v60 + 24) = v54;
  v86 = sub_6A588;
  v87 = v60;
  aBlock = _NSConcreteStackBlock;
  v83 = 1107296256;
  v84 = sub_283C0;
  v85 = &unk_B6830;
  v61 = _Block_copy(&aBlock);

  v62 = v54;
  v63 = v74;
  sub_83DAC();
  v81 = _swiftEmptyArrayStorage;
  sub_69094();
  sub_2805C(&unk_CAE50, &unk_A0420);
  sub_5CBFC();
  v64 = v76;
  v65 = v72;
  sub_8496C();
  sub_8484C();
  _Block_release(v61);

  (*(v78 + 8))(v64, v65);
  (*(v75 + 8))(v63, v77);
}

unint64_t sub_67FB8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2805C(&qword_CAA60, &unk_A1E00);
    v2 = sub_84B3C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        swift_unknownObjectRetain();
        swift_dynamicCast();
        sub_42FB4(&v25, v27);
        sub_42FB4(v27, v28);
        sub_42FB4(v28, &v26);
        result = sub_55854(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_371A8(v12);
          result = sub_42FB4(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_42FB4(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_6820C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR___JSAMetricsController_metrics);

    sub_2805C(&qword_CB830, &qword_A1DF8);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_A1D40;
    *(v6 + 32) = a2;
    sub_43834(0, &qword_CB838, AMSMetricsEvent_ptr);
    v7 = a2;
    isa = sub_8458C().super.isa;

    [v5 enqueueEvents:isa];
  }
}

id sub_68308()
{
  if (qword_CA4E8 != -1)
  {
    swift_once();
  }

  v1 = qword_CB610;

  return v1;
}

Swift::Void __swiftcall MetricsController.recordEvent(_:_:)(Swift::String a1, Swift::OpaquePointer a2)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (a1._countAndFlagsBits == 0xD000000000000010 && 0x800000000009DA20 == a1._object)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_84BEC();
  }

  sub_6747C(a2._rawValue, countAndFlagsBits, object, v5 & 1);
}

Swift::Void __swiftcall MetricsController.flushUnreportedEvents()()
{
  v0 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_8468C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_3BBC8(0, 0, v3, &unk_A1D60, v6);

  sub_692E0(v3);
}

uint64_t sub_686F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = sub_83D9C();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v8 = sub_83DDC();
  v4[15] = v8;
  v9 = *(v8 - 8);
  v4[16] = v9;
  v10 = *(v9 + 64) + 15;
  v4[17] = swift_task_alloc();

  return _swift_task_switch(sub_68814, 0, 0);
}

uint64_t sub_68814()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = BUOnboardingBooksBundleID();
    if (!v4)
    {
      sub_843AC();
      v4 = sub_8437C();
    }

    v5 = [objc_opt_self() acknowledgementNeededForPrivacyIdentifier:v4];

    if (v5)
    {
      if (qword_CA4B8 != -1)
      {
        swift_once();
      }

      v6 = sub_83D6C();
      sub_2C284(v6, qword_CB440);
      v7 = sub_83D4C();
      v8 = sub_847CC();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_0, v7, v8, "Skipping flushing: User has not acknowledged privacy yet.", v9, 2u);
      }
    }

    else
    {
      if (qword_CA4B8 != -1)
      {
        swift_once();
      }

      v10 = sub_83D6C();
      sub_2C284(v10, qword_CB440);
      v11 = sub_83D4C();
      v12 = sub_847CC();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_0, v11, v12, "Flushing events", v13, 2u);
      }

      v15 = v0[16];
      v14 = v0[17];
      v16 = v0[14];
      v28 = v0[15];
      v18 = v0[12];
      v17 = v0[13];

      v19 = *&v3[OBJC_IVAR___JSAMetricsController_submissionQueue];
      sub_83DBC();
      sub_83D8C();
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v0[6] = sub_6A4F0;
      v0[7] = v20;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_283C0;
      v0[5] = &unk_B67B8;
      v21 = _Block_copy(v0 + 2);

      sub_8484C();
      _Block_release(v21);
      (*(v17 + 8))(v16, v18);
      (*(v15 + 8))(v14, v28);
      v22 = v0[7];

      v23 = *&v3[OBJC_IVAR___JSAMetricsController_isSuspended];
      *(swift_task_alloc() + 16) = v3;
      os_unfair_lock_lock((v23 + 20));
      sub_6A5C0((v23 + 16));
      os_unfair_lock_unlock((v23 + 20));
    }
  }

  v24 = v0[17];
  v25 = v0[14];

  v26 = v0[1];

  return v26();
}

void sub_68C00()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___JSAMetricsController_metrics);

    v3 = [v2 flush];
    aBlock[4] = sub_68D08;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_65258;
    aBlock[3] = &unk_B67E0;
    v4 = _Block_copy(aBlock);
    [v3 addFinishBlock:v4];
    _Block_release(v4);
  }
}

void sub_68D08()
{
  if (qword_CA4B8 != -1)
  {
    swift_once();
  }

  v0 = sub_83D6C();
  sub_2C284(v0, qword_CB440);
  oslog = sub_83D4C();
  v1 = sub_847CC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_0, oslog, v1, "Finished flushing events", v2, 2u);
  }
}

NSString sub_68FFC()
{
  result = sub_8437C();
  qword_CB618 = result;
  return result;
}

uint64_t sub_69034()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_69074(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_69094()
{
  result = qword_CA538;
  if (!qword_CA538)
  {
    sub_83D9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CA538);
  }

  return result;
}

id static NSNotificationName.privacyAcknowledgementDidChange.getter()
{
  if (qword_CA4F0 != -1)
  {
    swift_once();
  }

  v1 = qword_CB618;

  return v1;
}

id sub_6916C(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

uint64_t static MetricsController.privacyAcknowledgementDidChange.getter()
{
  if (qword_CA4F0 != -1)
  {
    swift_once();
  }

  return sub_843AC();
}

uint64_t sub_6922C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_38510;

  return sub_686F8(a1, v4, v5, v6);
}

uint64_t sub_692E0(uint64_t a1)
{
  v2 = sub_2805C(&qword_CA5E8, &qword_A0850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_69348(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    if (v3 >> 62)
    {
      sub_84B0C();
    }

    else
    {
      v6 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    }

    result = sub_84A7C();
    *v1 = result;
  }

  return result;
}

uint64_t sub_69404(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_84B0C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_84A7C();
  *v1 = result;
  return result;
}

_OWORD *sub_694A4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_55854(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_6E900();
      v11 = v19;
      goto LABEL_8;
    }

    sub_6F140(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_55854(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_84C2C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_371A8(v23);

    return sub_42FB4(a1, v23);
  }

  else
  {
    sub_69770(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_695F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_55854(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_6F3F8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_55854(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_84C2C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_6EAA4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

_OWORD *sub_69770(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_42FB4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_697E0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_84B0C();
  }

  else
  {
    v1 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  return sub_84A7C();
}

uint64_t sub_69844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_2805C(&qword_CB840, &unk_A1E10);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_84B0C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_84B0C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_69950(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *(&dword_10 + (*v3 & 0xFFFFFFFFFFFFFF8));
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_84B0C();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_84B0C();
  }

  else
  {
    v9 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_69348(result);

  return sub_69844(v4, v2, 0);
}

uint64_t sub_69A28()
{
  v1 = v0;
  v2 = OBJC_IVAR___JSAMetricsController__performanceEvents;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
    goto LABEL_43;
  }

  v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (!v4)
  {
    return *(v1 + v2);
  }

LABEL_3:
  v33 = v2;
  v5 = OBJC_IVAR___JSAMetricsController_experienceEvents;
  v6 = v3 & 0xC000000000000001;

  v38 = v5;
  swift_beginAccess();
  v7 = 0;
  v8 = v3 & 0xFFFFFFFFFFFFFF8;
  v2 = v3 + 32;
  v9 = "ledgementDidChange";
  v34 = v3;
  v35 = v1;
  v36 = v3 & 0xFFFFFFFFFFFFFF8;
  v37 = v3 & 0xC000000000000001;
  v39 = v3 + 32;
  while (1)
  {
    if (v6)
    {
      v10 = sub_84A6C();
      v11 = __OFADD__(v7++, 1);
      if (v11)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v7 >= *(v8 + 16))
      {
        goto LABEL_42;
      }

      v10 = *(v2 + 8 * v7);

      v11 = __OFADD__(v7++, 1);
      if (v11)
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        v4 = sub_84B0C();
        if (!v4)
        {
          return *(v1 + v2);
        }

        goto LABEL_3;
      }
    }

    if (*(v10 + 56))
    {
      goto LABEL_5;
    }

    swift_beginAccess();
    v12 = *(v10 + 40);
    if (!*(v12 + 16))
    {
      goto LABEL_5;
    }

    v13 = *(v10 + 40);

    v14 = sub_55854(0xD000000000000014, v9 | 0x8000000000000000);
    if (v15)
    {
      break;
    }

LABEL_5:

LABEL_6:
    if (v7 == v4)
    {

      v2 = v33;
      return *(v1 + v2);
    }
  }

  v16 = *(*(v12 + 56) + 8 * v14);
  swift_unknownObjectRetain();

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {

    v2 = v39;
    goto LABEL_6;
  }

  v18 = *(v1 + v38);
  if (!(v18 >> 62))
  {
    v19 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
    if (v19)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

  if (v18 < 0)
  {
    v32 = *(v1 + v38);
  }

  result = sub_84B0C();
  v19 = result;
  if (!result)
  {
LABEL_37:

LABEL_38:
    v8 = v36;
    v6 = v37;
    v2 = v39;
    goto LABEL_6;
  }

LABEL_19:
  if (v19 >= 1)
  {
    v20 = v18 & 0xC000000000000001;

    v21 = 0;
    v40 = v18 & 0xC000000000000001;
    while (1)
    {
      if (v20)
      {
        v22 = sub_84A6C();
      }

      else
      {
        v22 = *(v18 + 8 * v21 + 32);
      }

      swift_beginAccess();
      v23 = *(v22 + 40);
      if (*(v23 + 16))
      {
        v24 = *(v22 + 40);

        v25 = sub_55854(0xD000000000000014, v9 | 0x8000000000000000);
        if (v26)
        {
          v27 = v18;
          v28 = v4;
          v29 = v9;
          v30 = *(*(v23 + 56) + 8 * v25);
          swift_unknownObjectRetain();

          if (swift_dynamicCast())
          {

            v31 = *(v10 + 56);
            *(v10 + 56) = v22;
          }

          v9 = v29;
          v4 = v28;
          v18 = v27;
          v20 = v40;
          goto LABEL_23;
        }
      }

LABEL_23:
      if (v19 == ++v21)
      {

        v3 = v34;
        v1 = v35;
        goto LABEL_38;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_69DFC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for FigaroEvent();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_84B0C();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_84B0C();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_69F18(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *(&dword_10 + (*v4 & 0xFFFFFFFFFFFFFF8));
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_84B0C();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_84B0C();
  }

  else
  {
    v12 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  sub_69404(result);

  return sub_69DFC(v6, v5, 1, v3);
}

void _s5JSApp17MetricsControllerC32countingAssertProviderTransition9toNonZeroySo019BUCountingAssertionF0C_tF_0()
{
  v1 = v0;
  if (qword_CA4B8 != -1)
  {
    swift_once();
  }

  v2 = sub_83D6C();
  sub_2C284(v2, qword_CB440);
  v3 = sub_83D4C();
  v4 = sub_847CC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Pausing event submission due to assertion", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR___JSAMetricsController_isSuspended);
  __chkstk_darwin(v7);
  os_unfair_lock_lock((v6 + 20));
  sub_6A4A0((v6 + 16));
  os_unfair_lock_unlock((v6 + 20));
}

void _s5JSApp17MetricsControllerC32countingAssertProviderTransition6toZeroySo019BUCountingAssertionF0C_tF_0()
{
  v1 = v0;
  if (qword_CA4B8 != -1)
  {
    swift_once();
  }

  v2 = sub_83D6C();
  sub_2C284(v2, qword_CB440);
  v3 = sub_83D4C();
  v4 = sub_847CC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Resuming event submission due to assertion invalidation", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR___JSAMetricsController_isSuspended);
  __chkstk_darwin(v7);
  os_unfair_lock_lock((v6 + 20));
  sub_6A488((v6 + 16));
  os_unfair_lock_unlock((v6 + 20));
}

uint64_t sub_6A394()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_6A3D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2C958;

  return sub_686F8(a1, v4, v5, v6);
}

void sub_6A4A0(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    dispatch_suspend(*(*(v1 + 16) + OBJC_IVAR___JSAMetricsController_submissionQueue));
    *a1 = 1;
  }
}

void sub_6A4F8(_BYTE *a1)
{
  if (*a1 == 1)
  {
    dispatch_resume(*(*(v1 + 16) + OBJC_IVAR___JSAMetricsController_submissionQueue));
    *a1 = 0;
  }
}

uint64_t sub_6A548()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_6A5F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000746565;
  v3 = 0x68536E6F69746361;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6553736569726553;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (v4 == 2)
    {
      v6 = 0xEC0000006C6C4165;
    }

    else
    {
      v6 = 0x800000000009B990;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x736569726553;
    }

    else
    {
      v5 = 0x68536E6F69746361;
    }

    if (v4)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xEB00000000746565;
    }
  }

  v7 = 0x6553736569726553;
  v8 = 0x800000000009B990;
  if (a2 == 2)
  {
    v8 = 0xEC0000006C6C4165;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (a2)
  {
    v3 = 0x736569726553;
    v2 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_84BEC();
  }

  return v11 & 1;
}

uint64_t sub_6A748(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E6F74747562;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7369685464616572;
    }

    else
    {
      v4 = 0x776F6853746E6F64;
    }

    v5 = 0xE800000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x6D657449626174;
    }

    else
    {
      v4 = 0x6E6F74747562;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0x7369685464616572;
  if (a2 != 2)
  {
    v7 = 0x776F6853746E6F64;
  }

  if (a2)
  {
    v2 = 0x6D657449626174;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_84BEC();
  }

  return v10 & 1;
}

uint64_t sub_6A888(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000747865746ELL;
  v3 = 0x6F436E6F69746361;
  v4 = a1;
  v5 = 0xE800000000000000;
  v6 = 0x6449746567726174;
  if (a1 != 6)
  {
    v6 = 0x7954746567726174;
    v5 = 0xEA00000000006570;
  }

  v7 = 0x707954746E657665;
  v8 = 0xE800000000000000;
  if (a1 == 4)
  {
    v8 = 0xE900000000000065;
  }

  else
  {
    v7 = 0x6E6F697461636F6CLL;
  }

  if (a1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x79546E6F69746361;
  v10 = 0xE90000000000006CLL;
  if (a1 == 2)
  {
    v10 = 0xEA00000000006570;
  }

  else
  {
    v9 = 0x72556E6F69746361;
  }

  v11 = 0x65446E6F69746361;
  v12 = 0xED0000736C696174;
  if (!a1)
  {
    v11 = 0x6F436E6F69746361;
    v12 = 0xED0000747865746ELL;
  }

  if (a1 <= 1u)
  {
    v9 = v11;
    v10 = v12;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v6;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v3 = 0x707954746E657665;
        v2 = 0xE900000000000065;
      }

      else
      {
        v2 = 0xE800000000000000;
        v3 = 0x6E6F697461636F6CLL;
      }

      goto LABEL_36;
    }

    if (a2 == 6)
    {
      v2 = 0xE800000000000000;
      v3 = 0x6449746567726174;
      goto LABEL_36;
    }

    v15 = 0x746567726174;
LABEL_35:
    v3 = v15 & 0xFFFFFFFFFFFFLL | 0x7954000000000000;
    v2 = 0xEA00000000006570;
    goto LABEL_36;
  }

  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v3 = 0x72556E6F69746361;
      v2 = 0xE90000000000006CLL;
      goto LABEL_36;
    }

    v15 = 0x6E6F69746361;
    goto LABEL_35;
  }

  if (a2)
  {
    v3 = 0x65446E6F69746361;
    v2 = 0xED0000736C696174;
  }

LABEL_36:
  if (v13 == v3 && v14 == v2)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_84BEC();
  }

  return v16 & 1;
}

uint64_t sub_6AAF8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x676E69646C697562;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x696C6C6174736E69;
    v4 = 0xEA0000000000676ELL;
  }

  else if (a1 == 3)
  {
    v4 = 0xE500000000000000;
    v5 = 0x7964616572;
  }

  else
  {
    v5 = 0x74616E696D726574;
    v4 = 0xEA00000000006465;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE700000000000000;
    v7 = 0xE800000000000000;
    v8 = 0x676E69646C697562;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x696C6C6174736E69;
    v6 = 0xEA0000000000676ELL;
    v7 = 0xE500000000000000;
    v8 = 0x7964616572;
    if (a2 != 3)
    {
      v8 = 0x74616E696D726574;
      v7 = 0xEA00000000006465;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v4 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_84BEC();
  }

  return v12 & 1;
}

Swift::Int sub_6AC90()
{
  v1 = *v0;
  sub_84CCC();
  sub_8446C();

  return sub_84D0C();
}

uint64_t sub_6AD7C()
{
  *v0;
  *v0;
  *v0;
  sub_8446C();
}

Swift::Int sub_6AE54()
{
  v1 = *v0;
  sub_84CCC();
  sub_8446C();

  return sub_84D0C();
}

uint64_t sub_6AF3C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_6B330(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_6AF6C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEA0000000000676ELL;
  v6 = 0x696C6C6174736E69;
  v7 = 0xE500000000000000;
  v8 = 0x7964616572;
  if (v2 != 3)
  {
    v8 = 0x74616E696D726574;
    v7 = 0xEA00000000006465;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x676E69646C697562;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_6B014()
{
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = sub_8437C();
  CFNotificationCenterAddObserver(v1, v0, sub_6B17C, v2, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v3 = sub_8437C();
  CFNotificationCenterAddObserver(v1, v0, sub_6B17C, v3, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v4 = sub_8437C();
  CFNotificationCenterAddObserver(v1, v0, sub_6B17C, v4, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v5 = sub_8437C();
  CFNotificationCenterAddObserver(v1, v0, sub_6B17C, v5, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  return v0;
}

void sub_6B17C(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_6B3A4(a2, a3);
}

uint64_t sub_6B1FC()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v1, v0);

  sub_6B37C(v0 + 24);

  return _swift_deallocClassInstance(v0, 40, 7);
}

unint64_t sub_6B290()
{
  result = qword_CB928;
  if (!qword_CB928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CB928);
  }

  return result;
}

uint64_t sub_6B2E4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B4668;
  v6._object = a2;
  v4 = sub_84B5C(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_6B330(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B46E8;
  v6._object = a2;
  v4 = sub_84B5C(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

void sub_6B3A4(uint64_t a1, void *a2)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  type metadata accessor for HotReloadNotificationObserver();
  swift_unknownObjectRetain();
  v3 = swift_dynamicCastClass();
  if (!v3 || !a2)
  {
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v4 = v3;
  v5 = sub_843AC();
  v7 = v6;
  v14 = a2;
  v8 = sub_6B2E4(v5, v7);
  if (v8 == 4)
  {
    swift_unknownObjectRelease();

LABEL_7:
    if (qword_CA498 != -1)
    {
      swift_once();
    }

    v9 = sub_83D6C();
    sub_2C284(v9, qword_CB3E0);
    v14 = sub_83D4C();
    v10 = sub_847AC();
    if (os_log_type_enabled(v14, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v14, v10, "An unexpected error has occurred during darwin notification handling. Hot Reload may not work correctly.", v11, 2u);
    }

    goto LABEL_11;
  }

  v12 = *(v4 + 16);
  v13 = v8 + 1;
  *(v4 + 16) = v8 + 1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_2C2BC(v12, v13);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
LABEL_11:
}

id sub_6B560(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC5JSApp25AccountPageViewController_pageType;
  v5[OBJC_IVAR____TtC5JSApp25AccountPageViewController_pageType] = 0;
  v12 = &v5[OBJC_IVAR____TtC5JSApp25AccountPageViewController_contentID];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v5[OBJC_IVAR____TtC5JSApp25AccountPageViewController_onFinish];
  *v13 = 0;
  v13[1] = 0;
  *(&v11->super.isa + v5) = a2;
  *v12 = a3;
  v12[1] = a4;
  sub_8394C(v11);
  v15 = v14;
  v19.receiver = v5;
  v19.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v19, "initWithAccountURL:", v14);

  [v16 setDelegate:v16];
  v17 = sub_839CC();
  (*(*(v17 - 8) + 8))(a1, v17);
  return v16;
}

id sub_6B660(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC5JSApp25AccountPageViewController_pageType] = 0;
  v7 = &v3[OBJC_IVAR____TtC5JSApp25AccountPageViewController_contentID];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v3[OBJC_IVAR____TtC5JSApp25AccountPageViewController_onFinish];
  *v8 = 0;
  v8[1] = 0;
  if (a2)
  {
    v9 = sub_8437C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v9, a3);

  return v10;
}

void sub_6BA70(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    if (v4 == v1)
    {
      v5 = *(v1 + OBJC_IVAR____TtC5JSApp25AccountPageViewController_onFinish);
      v6 = *(v2 + OBJC_IVAR____TtC5JSApp25AccountPageViewController_onFinish + 8);
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v8 = swift_allocObject();
      v8[2] = v5;
      v8[3] = v6;
      v8[4] = v7;
      v11[4] = sub_6BDA8;
      v11[5] = v8;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 1107296256;
      v11[2] = sub_283C0;
      v11[3] = &unk_B69C8;
      v9 = _Block_copy(v11);
      sub_2841C(v5);
      sub_2841C(v5);
      v10 = a1;

      [v10 dismissViewControllerAnimated:1 completion:v9];
      _Block_release(v9);
      sub_2C0EC(v5);
    }
  }
}

void sub_6BBDC(void (*a1)(void))
{
  if (a1)
  {
    a1();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = (Strong + OBJC_IVAR____TtC5JSApp25AccountPageViewController_onFinish);
    v4 = *(Strong + OBJC_IVAR____TtC5JSApp25AccountPageViewController_onFinish);
    v3 = *(Strong + OBJC_IVAR____TtC5JSApp25AccountPageViewController_onFinish + 8);
    *v2 = 0;
    v2[1] = 0;
    v5 = Strong;
    sub_2C0EC(v4);
  }
}

unint64_t sub_6BCD4()
{
  result = qword_CB9D0;
  if (!qword_CB9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CB9D0);
  }

  return result;
}

uint64_t sub_6BD28()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6BD60()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

void sub_6BDA8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_6BBDC(*(v0 + 16));
}

uint64_t sub_6BDB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_6BDCC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t NSURL.isSafeExternalURL.getter()
{
  v1 = [v0 scheme];
  if (!v1)
  {
    v15 = 0;
    return v15 & 1;
  }

  v2 = v1;
  sub_843AC();

  v3 = sub_8440C();
  v5 = v4;

  v6 = [objc_opt_self() defaultBag];
  v7 = [v6 mobileURLHandlers];

  v20 = 0;
  v8 = [v7 jsa_valueWithError:&v20];
  v9 = v20;
  if (!v8)
  {
    v16 = v20;
    sub_838DC();

    swift_willThrow();

    goto LABEL_10;
  }

  v10 = v8;
  v20 = 0;
  v11 = v9;
  sub_8459C();

  v13 = v20;
  if (!v20)
  {
LABEL_10:
    v20 = v3;
    v21 = v5;
    __chkstk_darwin(v12);
    v19 = &v20;
    v15 = sub_6BDCC(sub_70408, v18, &off_B4780);

    swift_arrayDestroy();

    return v15 & 1;
  }

  v20 = v3;
  v21 = v5;
  __chkstk_darwin(v12);
  v19 = &v20;
  v14 = sub_6BDCC(sub_70918, v18, v13);

  if ((v14 & 1) != 0 || v3 == 0x656764697262 && v5 == 0xE600000000000000)
  {

    v15 = 1;
  }

  else
  {
    v15 = sub_84BEC();
  }

  return v15 & 1;
}

void __swiftcall NSURL.parametrize(_:)(NSURL *__return_ptr retstr, Swift::OpaquePointer a2)
{
  v3 = sub_2805C(&unk_CAE60, &qword_A1800);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v104 - v5;
  v126 = sub_8384C();
  v123 = *(v126 - 8);
  v7 = *(v123 + 64);
  v8 = __chkstk_darwin(v126);
  v118 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v117 = &v104 - v11;
  v12 = __chkstk_darwin(v10);
  v125 = &v104 - v13;
  __chkstk_darwin(v12);
  v124 = &v104 - v14;
  v15 = sub_839CC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v104 - v21;
  v23 = sub_2805C(&qword_CB9D8, &qword_A1FD0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v104 - v25;
  v27 = sub_838BC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v115);
  v112 = &v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  rawValue = a2._rawValue;
  if (!*(a2._rawValue + 2))
  {
LABEL_4:

    v33 = v30;
    return;
  }

  sub_8396C();
  sub_8389C();
  v32 = *(v16 + 8);
  v111 = v16 + 8;
  v110 = v32;
  v32(v22, v15);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_38328(v26, &qword_CB9D8, &qword_A1FD0);
    v30 = v115;
    goto LABEL_4;
  }

  (*(v28 + 32))(v112, v26, v27);
  v34 = sub_8387C();
  v109 = v6;
  v108 = v15;
  v107 = v16;
  v106 = v20;
  v105 = v27;
  v104 = v28;
  if (!v34)
  {
    v37 = sub_42CA0(_swiftEmptyArrayStorage);
    goto LABEL_27;
  }

  v35 = v34;
  v122 = *(v34 + 16);
  if (!v122)
  {

    v37 = &_swiftEmptyDictionarySingleton;
    goto LABEL_27;
  }

  v36 = 0;
  v121 = v34 + ((*(v123 + 80) + 32) & ~*(v123 + 80));
  v119 = (v123 + 8);
  v120 = v123 + 16;
  v113 = (v123 + 40);
  v114 = (v123 + 32);
  v37 = &_swiftEmptyDictionarySingleton;
  do
  {
    if (v36 >= *(v35 + 16))
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v39 = v124;
    v40 = *(v123 + 72);
    v41 = *(v123 + 16);
    v42 = v126;
    v41(v124, v121 + v40 * v36, v126);
    v43 = sub_8383C();
    v45 = v44;
    v41(v125, v39, v42);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v127 = v37;
    v48 = sub_55854(v43, v45);
    v49 = *(v37 + 2);
    v50 = (v47 & 1) == 0;
    v51 = v49 + v50;
    if (__OFADD__(v49, v50))
    {
      goto LABEL_56;
    }

    v52 = v47;
    if (*(v37 + 3) >= v51)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v47)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_6EC14();
        if (v52)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_6F6A0(v51, isUniquelyReferenced_nonNull_native);
      v53 = sub_55854(v43, v45);
      if ((v52 & 1) != (v54 & 1))
      {
        goto LABEL_60;
      }

      v48 = v53;
      if (v52)
      {
LABEL_10:

        v37 = v127;
        v38 = v126;
        (*v113)(*(v127 + 7) + v48 * v40, v125, v126);
        (*v119)(v124, v38);
        goto LABEL_11;
      }
    }

    v37 = v127;
    *&v127[8 * (v48 >> 6) + 64] |= 1 << v48;
    v55 = (*(v37 + 6) + 16 * v48);
    *v55 = v43;
    v55[1] = v45;
    v56 = v126;
    (*v114)(*(v37 + 7) + v48 * v40, v125, v126);
    (*v119)(v124, v56);
    v57 = *(v37 + 2);
    v58 = __OFADD__(v57, 1);
    v59 = v57 + 1;
    if (v58)
    {
      goto LABEL_57;
    }

    *(v37 + 2) = v59;
LABEL_11:
    ++v36;
  }

  while (v122 != v36);

LABEL_27:
  v60 = rawValue + 64;
  v61 = 1 << rawValue[32];
  v62 = -1;
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  v63 = v62 & *(rawValue + 8);
  v64 = (v61 + 63) >> 6;
  v124 = (v123 + 8);
  v125 = (v123 + 16);
  v121 = v123 + 40;
  v122 = v123 + 32;

  v65 = 0;
  if (v63)
  {
    goto LABEL_32;
  }

LABEL_33:
  while (2)
  {
    v70 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      __break(1u);
      goto LABEL_55;
    }

    if (v70 >= v64)
    {

      v93 = *(v37 + 2);
      if (v93)
      {
        v94 = sub_6CE80(*(v37 + 2), 0);
        v95 = sub_6FE5C(&v127, &v94[(*(v123 + 80) + 32) & ~*(v123 + 80)], v93, v37);
        swift_bridgeObjectRetain_n();
        sub_40AE0();
        if (v95 == v93)
        {
LABEL_50:
          v96 = v109;
          v97 = v108;
          v98 = v107;
          v99 = v106;
          v100 = v105;
          v101 = v104;
          v127 = v94;
          sub_6CF7C(&v127);

          v102 = v112;
          sub_8388C();
          sub_838AC();
          if ((*(v98 + 48))(v96, 1, v97) == 1)
          {
            (*(v101 + 8))(v102, v100);
            sub_38328(v96, &unk_CAE60, &qword_A1800);
            v115;
          }

          else
          {
            (*(v98 + 32))(v99, v96, v97);
            sub_8394C(v103);
            v110(v99, v97);
            (*(v101 + 8))(v102, v100);
          }

          return;
        }

        __break(1u);
      }

      v94 = _swiftEmptyArrayStorage;
      goto LABEL_50;
    }

    v63 = *&v60[8 * v70];
    ++v65;
    if (!v63)
    {
      continue;
    }

    break;
  }

  while (1)
  {
    v71 = (v70 << 10) | (16 * __clz(__rbit64(v63)));
    v72 = (*(rawValue + 6) + v71);
    v74 = *v72;
    v73 = v72[1];
    v75 = (*(rawValue + 7) + v71);
    v76 = *v75;
    v77 = v75[1];

    v78 = v117;
    sub_8382C();

    (*v125)(v118, v78, v126);
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v127 = v37;
    v80 = sub_55854(v74, v73);
    v82 = *(v37 + 2);
    v83 = (v81 & 1) == 0;
    v58 = __OFADD__(v82, v83);
    v84 = v82 + v83;
    if (v58)
    {
      break;
    }

    v85 = v81;
    if (*(v37 + 3) >= v84)
    {
      if ((v79 & 1) == 0)
      {
        v92 = v80;
        sub_6EC14();
        v80 = v92;
      }
    }

    else
    {
      sub_6F6A0(v84, v79);
      v80 = sub_55854(v74, v73);
      if ((v85 & 1) != (v86 & 1))
      {
        goto LABEL_60;
      }
    }

    v63 &= v63 - 1;
    if (v85)
    {
      v66 = v80;

      v37 = v127;
      v67 = v123;
      v68 = *(v127 + 7) + *(v123 + 72) * v66;
      v69 = v126;
      (*(v123 + 40))(v68, v118, v126);
      (*(v67 + 8))(v117, v69);
      v65 = v70;
      if (!v63)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v37 = v127;
      *&v127[8 * (v80 >> 6) + 64] |= 1 << v80;
      v87 = (*(v37 + 6) + 16 * v80);
      *v87 = v74;
      v87[1] = v73;
      v88 = v123;
      v89 = v126;
      (*(v123 + 32))(*(v37 + 7) + *(v123 + 72) * v80, v118, v126);
      (*(v88 + 8))(v117, v89);
      v90 = *(v37 + 2);
      v58 = __OFADD__(v90, 1);
      v91 = v90 + 1;
      if (v58)
      {
        goto LABEL_59;
      }

      *(v37 + 2) = v91;
      v65 = v70;
      if (!v63)
      {
        goto LABEL_33;
      }
    }

LABEL_32:
    v70 = v65;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  sub_84C2C();
  __break(1u);

  __break(1u);
}

void *sub_6CD6C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_2805C(&qword_CA868, &unk_A1060);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_6CDFC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_2805C(&qword_CA8A0, &qword_A1CA0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_6CE80(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_2805C(&qword_CA898, &unk_A1090);
  v4 = *(sub_8384C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int sub_6CF7C(void **a1)
{
  v2 = *(sub_8384C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_40B60(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_6D024(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_6D024(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_84BAC(v2);
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
        sub_8384C();
        v6 = sub_845DC();
        v6[2] = v5;
      }

      v7 = *(sub_8384C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_6D45C(v8, v9, a1, v4);
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
    return sub_6D150(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_6D150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_8384C();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v45 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v49 = &v35 - v13;
  result = __chkstk_darwin(v12);
  v48 = &v35 - v16;
  v37 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v46 = *(v15 + 16);
    v47 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v43 = (v15 + 32);
    v44 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v42 = -v18;
    v21 = a1 - a3;
    v36 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v40 = v20;
    v41 = a3;
    v38 = v22;
    v39 = v21;
    v24 = v20;
    while (1)
    {
      v25 = v46;
      v46(v48, v22, v8);
      v25(v49, v24, v8);
      v26 = sub_8383C();
      v28 = v27;
      if (v26 == sub_8383C() && v28 == v29)
      {

        v23 = *v19;
        (*v19)(v49, v8);
        result = (v23)(v48, v8);
LABEL_5:
        a3 = v41 + 1;
        v20 = v40 + v36;
        v21 = v39 - 1;
        v22 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_6;
      }

      v30 = sub_84BEC();

      v31 = *v19;
      (*v19)(v49, v8);
      result = (v31)(v48, v8);
      if ((v30 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v32)(v24, v33, v8);
      v24 += v42;
      v22 += v42;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_6D45C(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_8384C();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v139 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v150 = &v129 - v14;
  v15 = __chkstk_darwin(v13);
  v155 = &v129 - v16;
  v17 = __chkstk_darwin(v15);
  v154 = &v129 - v18;
  v19 = __chkstk_darwin(v17);
  v147 = &v129 - v20;
  v21 = __chkstk_darwin(v19);
  v146 = &v129 - v22;
  v23 = __chkstk_darwin(v21);
  v134 = &v129 - v24;
  result = __chkstk_darwin(v23);
  v133 = &v129 - v27;
  v28 = *(a3 + 1);
  v144 = v26;
  if (v28 < 1)
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_103:
    v32 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (result)
    {
LABEL_105:
      v156 = v30;
      v123 = *(v30 + 16);
      if (v123 >= 2)
      {
        while (1)
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v30 + 16 * v123);
          a3 = v30;
          v127 = *(v30 + 16 * (v123 - 1) + 32);
          v30 = *(v30 + 16 * (v123 - 1) + 40);
          sub_6E018(&v124[*(v5 + 72) * v126], &v124[*(v5 + 72) * v127], &v124[*(v5 + 72) * v30], v32);
          if (v6)
          {
          }

          if (v30 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_409C8(a3);
          }

          if (v123 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v128 = &a3[16 * v123];
          *v128 = v126;
          *(v128 + 1) = v30;
          v156 = a3;
          result = sub_4093C(v123 - 1);
          v30 = v156;
          v123 = *(v156 + 16);
          a3 = v125;
          if (v123 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_409C8(v30);
    v30 = result;
    goto LABEL_105;
  }

  v130 = a4;
  v29 = 0;
  v152 = v26 + 16;
  v153 = (v26 + 8);
  v151 = (v26 + 32);
  v30 = _swiftEmptyArrayStorage;
  v136 = a3;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v138 = v29;
    if (v29 + 1 < v28)
    {
      v142 = v28;
      v131 = v30;
      v33 = *a3;
      v34 = *(v144 + 72);
      v5 = v29 + 1;
      v35 = &v33[v34 * v32];
      v36 = *(v144 + 16);
      v36(v133, v35, v9);
      v145 = v34;
      v141 = v36;
      v36(v134, &v33[v34 * v31], v9);
      v32 = sub_8383C();
      v38 = v37;
      v39 = sub_8383C();
      v132 = v6;
      if (v32 == v39 && v38 == v40)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_84BEC();
      }

      v41 = *v153;
      (*v153)(v134, v9);
      v140 = v41;
      result = (v41)(v133, v9);
      v42 = (v138 + 2);
      v43 = v145 * (v138 + 2);
      v44 = &v33[v43];
      v45 = v145 * v5;
      v46 = &v33[v145 * v5];
      do
      {
        a3 = v42;
        v49 = v5;
        v6 = v45;
        v30 = v43;
        if (v42 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v42;
        v50 = v141;
        (v141)(v146, v44, v9);
        v50(v147, v46, v9);
        v51 = sub_8383C();
        v53 = v52;
        if (v51 == sub_8383C() && v53 == v54)
        {
          v47 = 0;
        }

        else
        {
          v47 = sub_84BEC();
        }

        a3 = v149;

        v32 = v140;
        v140(v147, v9);
        result = (v32)(v146, v9);
        v48 = v143 ^ v47;
        v42 = a3 + 1;
        v44 += v145;
        v46 += v145;
        v49 = v148;
        v5 = v148 + 1;
        v45 = v6 + v145;
        v43 = v30 + v145;
      }

      while ((v48 & 1) == 0);
      if (v143)
      {
        v31 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v55 = v138 * v145;
          v56 = v138;
          do
          {
            if (v56 != v49)
            {
              v58 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v49;
              v149 = *v151;
              (v149)(v139, v58 + v55, v9);
              if (v55 < v6 || v58 + v55 >= (v58 + v30))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v55 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v149)(v58 + v6, v139, v9);
              v31 = v138;
              v49 = v5;
            }

            ++v56;
            v6 -= v145;
            v30 -= v145;
            v55 += v145;
          }

          while (v56 < v49--);
        }

        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
      }

      else
      {
        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
      }
    }

    v59 = *(a3 + 1);
    if (v32 < v59)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_131;
      }

      if (v32 - v31 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v32 < v31)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_409DC(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v77 = *(v30 + 16);
    v76 = *(v30 + 24);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      result = sub_409DC((v76 > 1), v77 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 16) = v78;
    v79 = v30 + 16 * v77;
    *(v79 + 32) = v31;
    *(v79 + 40) = v32;
    v80 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v32;
    if (v77)
    {
      while (1)
      {
        v32 = v78 - 1;
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v81 = *(v30 + 32);
          v82 = *(v30 + 40);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_72:
          if (v84)
          {
            goto LABEL_119;
          }

          v97 = (v30 + 16 * v78);
          v99 = *v97;
          v98 = v97[1];
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_122;
          }

          v103 = (v30 + 32 + 16 * v32);
          v105 = *v103;
          v104 = v103[1];
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v101, v106))
          {
            goto LABEL_126;
          }

          if (v101 + v106 >= v83)
          {
            if (v83 < v106)
            {
              v32 = v78 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v107 = (v30 + 16 * v78);
        v109 = *v107;
        v108 = v107[1];
        v91 = __OFSUB__(v108, v109);
        v101 = v108 - v109;
        v102 = v91;
LABEL_86:
        if (v102)
        {
          goto LABEL_121;
        }

        v110 = v30 + 16 * v32;
        v112 = *(v110 + 32);
        v111 = *(v110 + 40);
        v91 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v91)
        {
          goto LABEL_124;
        }

        if (v113 < v101)
        {
          goto LABEL_3;
        }

LABEL_93:
        v118 = v32 - 1;
        if (v32 - 1 >= v78)
        {
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
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v119 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v30;
        v120 = *(v30 + 32 + 16 * v118);
        v121 = *(v30 + 32 + 16 * v32);
        v30 = *(v30 + 32 + 16 * v32 + 8);
        sub_6E018(&v119[*(v144 + 72) * v120], &v119[*(v144 + 72) * v121], &v119[*(v144 + 72) * v30], v80);
        if (v6)
        {
        }

        if (v30 < v120)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_409C8(a3);
        }

        if (v118 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v122 = &a3[16 * v118];
        *(v122 + 4) = v120;
        *(v122 + 5) = v30;
        v156 = a3;
        result = sub_4093C(v32);
        v30 = v156;
        v78 = *(v156 + 16);
        a3 = v5;
        if (v78 <= 1)
        {
          goto LABEL_3;
        }
      }

      v85 = v30 + 32 + 16 * v78;
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_117;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_118;
      }

      v92 = (v30 + 16 * v78);
      v94 = *v92;
      v93 = v92[1];
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_120;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_123;
      }

      if (v96 >= v88)
      {
        v114 = (v30 + 32 + 16 * v32);
        v116 = *v114;
        v115 = v114[1];
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_127;
        }

        if (v83 < v117)
        {
          v32 = v78 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v28 = *(a3 + 1);
    v29 = v145;
    if (v145 >= v28)
    {
      goto LABEL_103;
    }
  }

  v60 = (v31 + v130);
  if (__OFADD__(v31, v130))
  {
    goto LABEL_133;
  }

  if (v60 >= v59)
  {
    v60 = *(a3 + 1);
  }

  if (v60 < v31)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v32 == v60)
  {
    goto LABEL_52;
  }

  v131 = v30;
  v132 = v6;
  v61 = *a3;
  v62 = *(v144 + 72);
  v63 = *(v144 + 16);
  v64 = *a3 + v62 * (v32 - 1);
  v148 = -v62;
  v149 = v61;
  v65 = v31 - v32;
  v137 = v62;
  v66 = &v61[v32 * v62];
  v140 = v60;
LABEL_43:
  v145 = v32;
  v141 = v66;
  v142 = v65;
  v143 = v64;
  v68 = v64;
  while (1)
  {
    v63(v154, v66, v9);
    (v63)(v155, v68);
    v5 = sub_8383C();
    v70 = v69;
    if (v5 == sub_8383C() && v70 == v71)
    {

      v67 = *v153;
      (*v153)(v155, v9);
      v67(v154, v9);
LABEL_42:
      v32 = v145 + 1;
      v64 = v143 + v137;
      v65 = v142 - 1;
      v66 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v32 = v140;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_84BEC();

    v72 = *v153;
    (*v153)(v155, v9);
    result = (v72)(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v73 = v150;
    v5 = v151;
    v74 = *v151;
    (*v151)(v150, v66, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v74)(v68, v73, v9);
    v68 += v148;
    v66 += v148;
    if (__CFADD__(v65++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_6E018(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v72 = sub_8384C();
  v8 = *(v72 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v72);
  v69 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v68 = &v60 - v13;
  v14 = __chkstk_darwin(v12);
  v71 = &v60 - v15;
  result = __chkstk_darwin(v14);
  v70 = &v60 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_70;
  }

  v20 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_71;
  }

  v21 = (a2 - a1) / v19;
  v75 = a1;
  v74 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v23;
    if (v23 < 1)
    {
      v45 = a4 + v23;
    }

    else
    {
      v64 = a4;
      v65 = (v8 + 16);
      v63 = (v8 + 8);
      v43 = -v19;
      v44 = a4 + v23;
      v45 = v42;
      v66 = v43;
      while (2)
      {
        while (1)
        {
          v61 = v45;
          v46 = (a2 + v43);
          v70 = (a2 + v43);
          v67 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v75 = a2;
              v73 = v61;
              goto LABEL_68;
            }

            v48 = a3;
            v62 = v45;
            v49 = *v65;
            v71 = (v44 + v43);
            v50 = v72;
            (v49)(v68);
            (v49)(v69, v46, v50);
            v51 = sub_8383C();
            v53 = v52;
            if (v51 != sub_8383C())
            {
              goto LABEL_51;
            }

            if (v53 == v54)
            {
              v55 = 0;
            }

            else
            {
LABEL_51:
              v55 = sub_84BEC();
            }

            v43 = v66;
            a3 = v66 + v48;
            v56 = *v63;
            v57 = v72;
            (*v63)(v69, v72);
            v56(v68, v57);
            if (v55)
            {
              break;
            }

            v58 = v71;
            v45 = v71;
            if (v48 < v44 || a3 >= v44)
            {
              swift_arrayInitWithTakeFrontToBack();
              v46 = v70;
            }

            else
            {
              v46 = v70;
              if (v48 != v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v44 = v45;
            v47 = v58 > v64;
            a2 = v67;
            if (!v47)
            {
              goto LABEL_66;
            }
          }

          if (v48 < v67 || a3 >= v67)
          {
            break;
          }

          a2 = v70;
          v59 = v64;
          v45 = v62;
          if (v48 != v67)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v44 <= v59)
          {
            goto LABEL_66;
          }
        }

        a2 = v70;
        swift_arrayInitWithTakeFrontToBack();
        v45 = v62;
        if (v44 > v64)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v75 = a2;
    v73 = v45;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v69 = (a4 + v22);
    v73 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      v25 = *(v8 + 16);
      v67 = v19;
      v68 = (v8 + 16);
      v65 = (v8 + 8);
      v66 = v25;
      do
      {
        v26 = a3;
        v27 = a2;
        v28 = a2;
        v29 = v72;
        v30 = v66;
        v66(v70, v28, v72);
        v30(v71, a4, v29);
        v31 = sub_8383C();
        v33 = v32;
        if (v31 == sub_8383C() && v33 == v34)
        {

          v35 = *v65;
          v36 = v72;
          (*v65)(v71, v72);
          v35(v70, v36);
        }

        else
        {
          v37 = sub_84BEC();

          v38 = *v65;
          v39 = v72;
          (*v65)(v71, v72);
          v38(v70, v39);
          if (v37)
          {
            a2 = v27 + v67;
            a3 = v26;
            if (a1 < v27 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v41 = v67;
            goto LABEL_37;
          }
        }

        v40 = a4;
        v41 = v67;
        a4 += v67;
        a2 = v27;
        a3 = v26;
        if (a1 < v40 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v40)
        {
          swift_arrayInitWithTakeBackToFront();
          v74 = a4;
          goto LABEL_37;
        }

        v74 = a4;
LABEL_37:
        a1 += v41;
        v75 = a1;
      }

      while (a4 < v69 && a2 < a3);
    }
  }

LABEL_68:
  sub_6E6B4(&v75, &v74, &v73);
  return 1;
}

uint64_t sub_6E6B4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_8384C();
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

void *sub_6E798()
{
  v1 = v0;
  sub_2805C(&qword_CAFB8, &unk_A1908);
  v2 = *v0;
  v3 = sub_84B1C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

void *sub_6E900()
{
  v1 = v0;
  sub_2805C(&qword_CAA60, &unk_A1E00);
  v2 = *v0;
  v3 = sub_84B1C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_381F8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_42FB4(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_6EAA4()
{
  v1 = v0;
  sub_2805C(&qword_CB9E8, &unk_A1FE0);
  v2 = *v0;
  v3 = sub_84B1C();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
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

char *sub_6EC14()
{
  v1 = v0;
  v36 = sub_8384C();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2805C(&qword_CAA58, &qword_A13C8);
  v4 = *v0;
  v5 = sub_84B1C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_6EE94(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2805C(&qword_CAFB8, &unk_A1908);
  v36 = a2;
  result = sub_84B2C();
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_84CCC();
      sub_8446C();
      result = sub_84D0C();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_6F140(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2805C(&qword_CAA60, &unk_A1E00);
  v36 = a2;
  result = sub_84B2C();
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_42FB4(v25, v37);
      }

      else
      {
        sub_381F8(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_84CCC();
      sub_8446C();
      result = sub_84D0C();
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
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_42FB4(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
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

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_6F3F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2805C(&qword_CB9E8, &unk_A1FE0);
  v38 = a2;
  result = sub_84B2C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];

        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      sub_84CCC();
      sub_8446C();
      result = sub_84D0C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_6F6A0(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_8384C();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_2805C(&qword_CAA58, &qword_A13C8);
  v46 = a2;
  result = sub_84B2C();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_84CCC();
      sub_8446C();
      result = sub_84D0C();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_6FA20(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2805C(&qword_CAA88, &qword_A13F0);
  v40 = a2;
  result = sub_84B2C();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_84CCC();
      sub_8446C();
      result = sub_84D0C();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_6FCE0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v23 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        swift_unknownObjectRetain();
        goto LABEL_23;
      }

      v11 += 3;

      swift_unknownObjectRetain();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v23;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_6FE5C(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_8384C();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = __chkstk_darwin(v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v32;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = (&dword_0 + 1);
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 56);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1, 1);
      a1 = (a1 + 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_70100(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_70258(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_703B0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_84BEC() & 1;
  }
}

uint64_t sub_70424(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_84BEC() & 1;
  }
}

uint64_t _sSo5NSURLC5JSAppE11queryString3for13escapedValuesSSSDys11AnyHashableVypG_SbtFZ_0(uint64_t a1, int a2)
{
  v37 = a2;
  v36 = sub_837FC();
  v3 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = 0;
  v55 = 0xE000000000000000;
  v7 = a1 + 64;
  v6 = *(a1 + 64);
  v8 = *(a1 + 32);
  v38 = a1;
  v39 = 1;
  v9 = 1 << v8;
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v34 = (v4 + 8);

  v14 = 0;
  while (v11)
  {
    while (1)
    {
      v15 = v14;
LABEL_16:
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v19 = v18 | (v15 << 6);
      v20 = v38;
      sub_57760(*(v38 + 48) + 40 * v19, v43);
      sub_381F8(*(v20 + 56) + 32 * v19, &v41);
      v45 = v43[0];
      v46 = v43[1];
      *&v47 = v44;
      sub_42FB4(&v41, (&v47 + 8));
LABEL_17:
      v52[0] = v47;
      v52[1] = v48;
      v53 = v49;
      v50 = v45;
      v51 = v46;
      if (!*(&v46 + 1))
      {

        return v54;
      }

      v45 = v50;
      v46 = v51;
      *&v47 = *&v52[0];
      sub_42FB4((v52 + 8), v43);
      sub_381F8(v43, &v41);
      sub_708CC();
      if (swift_dynamicCast())
      {
        countAndFlagsBits = v40._countAndFlagsBits;
        v22 = [v40._countAndFlagsBits stringValue];
        v23 = sub_843AC();
        v25 = v24;

        v42 = &type metadata for String;
        v41._countAndFlagsBits = v23;
        v41._object = v25;
        sub_371A8(v43);
        sub_42FB4(&v41, v43);
      }

      sub_381F8(v43, &v41);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_371A8(v43);
      result = sub_559A0(&v45);
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    object = v40._object;
    v27 = v40._countAndFlagsBits;
    if (v37)
    {
      v41 = v40;
      v28 = v35;
      sub_837CC();
      v59._countAndFlagsBits = 723926335;
      v59._object = 0xE400000000000000;
      sub_837EC(v59);
      sub_3A8E8();
      v29 = sub_8493C();
      v31 = v30;
      (*v34)(v28, v36);
      if (v31)
      {

        v27 = v29;
        object = v31;
      }
    }

    if (v39)
    {
      v41._countAndFlagsBits = sub_849CC();
      v41._object = v32;
    }

    else
    {
      v41._countAndFlagsBits = 38;
      v41._object = 0xE100000000000000;
      v56._countAndFlagsBits = sub_849CC();
      sub_844AC(v56);
    }

    v57._countAndFlagsBits = 61;
    v57._object = 0xE100000000000000;
    sub_844AC(v57);
    v58._countAndFlagsBits = v27;
    v58._object = object;
    sub_844AC(v58);

    sub_844AC(v41);

    sub_371A8(v43);
    result = sub_559A0(&v45);
    v39 = 0;
  }

LABEL_8:
  if (v12 <= v14 + 1)
  {
    v16 = v14 + 1;
  }

  else
  {
    v16 = v12;
  }

  v17 = v16 - 1;
  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      v11 = 0;
      v49 = 0;
      v48 = 0u;
      v46 = 0u;
      v47 = 0u;
      v14 = v17;
      v45 = 0u;
      goto LABEL_17;
    }

    v11 = *(v7 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_708CC()
{
  result = qword_CB9E0;
  if (!qword_CB9E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_CB9E0);
  }

  return result;
}

uint64_t BooksLocalizerFactory.__allocating_init(package:)(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_75744(a1 + OBJC_IVAR___JSAPackage_jetPack, v5 + OBJC_IVAR____TtC5JSApp21BooksLocalizerFactory_jetPack, type metadata accessor for BooksJetPackResourceBundle);

  return v5;
}

uint64_t BooksLocalizerFactory.init(package:)(void *a1)
{
  sub_75744(a1 + OBJC_IVAR___JSAPackage_jetPack, v1 + OBJC_IVAR____TtC5JSApp21BooksLocalizerFactory_jetPack, type metadata accessor for BooksJetPackResourceBundle);

  return v1;
}

uint64_t sub_70A00(uint64_t a1, uint64_t a2)
{
  v3[111] = v2;
  v3[110] = a2;
  v3[109] = a1;
  v4 = sub_841EC();
  v3[112] = v4;
  v5 = *(v4 - 8);
  v3[113] = v5;
  v6 = *(v5 + 64) + 15;
  v3[114] = swift_task_alloc();
  v7 = sub_8419C();
  v3[115] = v7;
  v8 = *(v7 - 8);
  v3[116] = v8;
  v9 = *(v8 + 64) + 15;
  v3[117] = swift_task_alloc();
  v3[118] = swift_task_alloc();
  v3[119] = swift_task_alloc();
  v3[120] = swift_task_alloc();
  v3[121] = swift_task_alloc();
  v3[122] = swift_task_alloc();
  v10 = sub_8421C();
  v3[123] = v10;
  v11 = *(v10 - 8);
  v3[124] = v11;
  v12 = *(v11 + 64) + 15;
  v3[125] = swift_task_alloc();
  v3[126] = swift_task_alloc();
  v13 = type metadata accessor for BooksBagLanguageSource(0);
  v3[127] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[128] = swift_task_alloc();
  v15 = *(*(sub_8405C() - 8) + 64) + 15;
  v3[129] = swift_task_alloc();

  return _swift_task_switch(sub_70C24, 0, 0);
}

uint64_t sub_70C24()
{
  v1 = v0[129];
  v2 = v0[111];
  v3 = v0[110];
  sub_2805C(&qword_CB9F0, &qword_A1FF8);
  v4 = *(sub_8409C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_A18D0;
  sub_43834(0, &qword_CB9F8, AMSURLSession_ptr);
  sub_8408C();
  sub_43834(0, &qword_CBA00, AMSProcessInfo_ptr);
  sub_8408C();
  sub_2805C(&qword_CBA08, &qword_A2000);
  sub_8408C();
  v0[108] = v7;
  sub_2805C(&qword_CBA10, &qword_A2008);
  sub_72AF0();
  v0[130] = sub_840DC();

  v8 = OBJC_IVAR____TtC5JSApp21BooksLocalizerFactory_jetPack;
  v0[15] = type metadata accessor for BooksJetPackResourceBundle();
  v0[16] = sub_756FC(&qword_CA768, type metadata accessor for BooksJetPackResourceBundle);
  v9 = sub_382A8(v0 + 12);
  sub_75744(v2 + v8, v9, type metadata accessor for BooksJetPackResourceBundle);
  sub_8406C();
  v0[10] = sub_841DC();
  v0[11] = &protocol witness table for LocalizedStringsBundle;
  sub_382A8(v0 + 7);
  sub_841CC();
  sub_371F4((v0 + 7), (v0 + 2));
  v10 = sub_752D4();
  if (v10)
  {
    v11 = v10;
    v0[131] = v10;
    v12 = swift_task_alloc();
    v0[132] = v12;
    *v12 = v0;
    v12[1] = sub_71218;

    return sub_72BA4(v11);
  }

  else
  {
    v14 = v0[5];
    v15 = v0[6];
    sub_40E4C(v0 + 2, v14);
    v16 = async function pointer to dispatch thunk of LocalizedStringsDataSource.fetchLanguages()[1];
    v17 = swift_task_alloc();
    v0[134] = v17;
    *v17 = v0;
    v17[1] = sub_713D0;

    return dispatch thunk of LocalizedStringsDataSource.fetchLanguages()(v14, v15);
  }
}

uint64_t sub_71218(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1056);
  v6 = *v2;
  *(*v2 + 1064) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_71E10, 0, 0);
  }

  else
  {
    v4[136] = v4[131];
    v4[137] = a1;
    v7 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v8 = swift_task_alloc();
    v4[138] = v8;
    *v8 = v6;
    v8[1] = sub_71568;
    v9 = v4[130];
    v10 = v4[126];
    v11 = v4[123];

    return BaseObjectGraph.inject<A>(_:)(v10, v11, v11);
  }
}

uint64_t sub_713D0(uint64_t a1)
{
  v4 = *(*v2 + 1072);
  v5 = *v2;
  v5[135] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_71F24, 0, 0);
  }

  else
  {
    v5[136] = 0;
    v5[137] = a1;
    v6 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v7 = swift_task_alloc();
    v5[138] = v7;
    *v7 = v5;
    v7[1] = sub_71568;
    v8 = v5[130];
    v9 = v5[126];
    v10 = v5[123];

    return BaseObjectGraph.inject<A>(_:)(v9, v10, v10);
  }
}

uint64_t sub_71568()
{
  v2 = *v1;
  v3 = *(*v1 + 1104);
  v8 = *v1;
  *(*v1 + 1112) = v0;

  if (v0)
  {
    v4 = *(v2 + 1096);
    v5 = *(v2 + 1088);

    v6 = sub_72038;
  }

  else
  {
    v6 = sub_71690;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_71690()
{
  v1 = *(v0 + 1096);
  v42 = *(v0 + 1088);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 1016);
  v4 = *(v0 + 1008);
  v5 = *(v0 + 1000);
  v6 = *(v0 + 992);
  v7 = *(v0 + 984);
  v8 = *(v6 + 16);
  v8(v2, v4, v7);
  v8(v5, v4, v7);
  v9 = v2 + *(v3 + 20);
  sub_8410C();
  (*(v6 + 8))(v4, v7);
  *(v2 + *(v3 + 24)) = v1;
  sub_370FC(v0 + 16, v0 + 136);
  if (v42)
  {
    v10 = *(v0 + 1088);
    v11 = &type metadata for NativeDataSource;
    v12 = sub_756A8();
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    *(v0 + 184) = 0;
    *(v0 + 192) = 0;
  }

  *(v0 + 1120) = v10;
  v13 = *(v0 + 1040);
  v14 = *(v0 + 1024);
  v15 = *(v0 + 1016);
  v16 = *(v0 + 960);
  v17 = *(v0 + 952);
  v18 = *(v0 + 928);
  v40 = *(v0 + 920);
  v19 = *(v0 + 912);
  v20 = *(v0 + 904);
  v41 = *(v0 + 896);
  v43 = *(v0 + 968);
  *(v0 + 176) = v10;
  *(v0 + 200) = v11;
  *(v0 + 208) = v12;
  *(v0 + 240) = v15;
  *(v0 + 248) = sub_756FC(&qword_CBA28, type metadata accessor for BooksBagLanguageSource);
  v21 = sub_382A8((v0 + 216));
  sub_75744(v14, v21, type metadata accessor for BooksBagLanguageSource);
  sub_370FC(v0 + 136, v0 + 256);
  sub_370FC(v0 + 216, v0 + 296);

  sub_8415C();
  *(v0 + 360) = &type metadata for BooksLocalizerPreference;
  v22 = sub_757AC();
  *(v0 + 1128) = v22;
  *(v0 + 368) = v22;
  sub_8416C();
  v23 = *(v18 + 8);
  *(v0 + 1136) = v23;
  *(v0 + 1144) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v23(v17, v40);
  sub_38328(v0 + 336, &qword_CBA38, &qword_A2018);
  *(v0 + 1240) = enum case for LocalizerLookupStrategy.dataSourceThenNative(_:);
  v24 = *(v20 + 104);
  *(v0 + 1152) = v24;
  *(v0 + 1160) = (v20 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v24(v19);
  sub_8417C();
  v25 = *(v20 + 8);
  *(v0 + 1168) = v25;
  *(v0 + 1176) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v19, v41);
  v23(v16, v40);
  sub_75800(v0 + 176, v0 + 416);
  if (*(v0 + 440))
  {
    v26 = *(v0 + 968);
    v27 = *(v0 + 960);
    v28 = *(v0 + 928);
    v29 = *(v0 + 920);
    sub_371F4((v0 + 416), v0 + 376);
    sub_8418C();
    sub_371A8((v0 + 376));
    v23(v26, v29);
    sub_371A8((v0 + 136));
    v30 = *(v28 + 32);
    v31 = (v28 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v30(v26, v27, v29);
  }

  else
  {
    v32 = *(v0 + 928);
    sub_371A8((v0 + 136));
    sub_38328(v0 + 416, &qword_CBA40, &unk_A2020);
    v30 = *(v32 + 32);
    v31 = (v32 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  }

  *(v0 + 1184) = v30;
  v33 = *(v0 + 976);
  v34 = *(v0 + 968);
  v35 = *(v0 + 920);
  *(v0 + 1192) = v31;
  v30(v33, v34, v35);
  sub_371A8((v0 + 216));
  sub_38328(v0 + 176, &qword_CBA40, &unk_A2020);
  *(v0 + 1200) = sub_841BC();
  v36 = async function pointer to static AppleServicesLocalizer.load(using:)[1];
  v37 = swift_task_alloc();
  *(v0 + 1208) = v37;
  *v37 = v0;
  v37[1] = sub_71AFC;
  v38 = *(v0 + 976);

  return static AppleServicesLocalizer.load(using:)(v38);
}

uint64_t sub_71AFC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[102] = v2;
  v4[103] = a1;
  v4[104] = v1;
  v5 = v3[151];
  v9 = *v2;
  v4[152] = v1;

  if (v1)
  {
    v6 = sub_7214C;
  }

  else
  {
    v7 = v4[140];

    v6 = sub_71C24;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_71C24()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 1144);
  v3 = *(v0 + 1136);
  v4 = *(v0 + 1040);
  v5 = *(v0 + 1024);
  v13 = *(v0 + 1032);
  v14 = *(v0 + 1008);
  v6 = *(v0 + 976);
  v15 = *(v0 + 1000);
  v16 = *(v0 + 968);
  v17 = *(v0 + 960);
  v18 = *(v0 + 952);
  v19 = *(v0 + 944);
  v20 = *(v0 + 936);
  v7 = *(v0 + 920);
  v21 = *(v0 + 912);
  v8 = *(v0 + 872);
  *(v0 + 800) = *(v0 + 1200);
  *(v0 + 808) = &protocol witness table for AppleServicesLocalizer;
  *(v0 + 776) = v1;
  v9 = type metadata accessor for BooksLocalizer();
  v10 = swift_allocObject();
  *(v10 + 56) = 1;
  sub_371F4((v0 + 776), v10 + 16);
  v8[3] = v9;
  v8[4] = sub_756FC(&qword_CBA50, type metadata accessor for BooksLocalizer);

  *v8 = v10;
  v3(v6, v7);
  sub_758C4(v5, type metadata accessor for BooksBagLanguageSource);
  sub_371A8((v0 + 16));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_71E10()
{
  v1 = v0[130];

  sub_371A8(v0 + 2);
  v2 = v0[129];
  v3 = v0[128];
  v4 = v0[126];
  v5 = v0[125];
  v6 = v0[122];
  v7 = v0[121];
  v8 = v0[120];
  v9 = v0[119];
  v10 = v0[118];
  v11 = v0[117];
  v14 = v0[114];
  v15 = v0[133];

  v12 = v0[1];

  return v12();
}

uint64_t sub_71F24()
{
  v1 = v0[130];

  sub_371A8(v0 + 2);
  v2 = v0[129];
  v3 = v0[128];
  v4 = v0[126];
  v5 = v0[125];
  v6 = v0[122];
  v7 = v0[121];
  v8 = v0[120];
  v9 = v0[119];
  v10 = v0[118];
  v11 = v0[117];
  v14 = v0[114];
  v15 = v0[135];

  v12 = v0[1];

  return v12();
}

uint64_t sub_72038()
{
  v1 = v0[130];

  sub_371A8(v0 + 2);
  v2 = v0[129];
  v3 = v0[128];
  v4 = v0[126];
  v5 = v0[125];
  v6 = v0[122];
  v7 = v0[121];
  v8 = v0[120];
  v9 = v0[119];
  v10 = v0[118];
  v11 = v0[117];
  v14 = v0[114];
  v15 = v0[139];

  v12 = v0[1];

  return v12();
}

uint64_t sub_7214C()
{
  if (qword_CA4A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1216);
  v2 = sub_83D6C();
  sub_2C284(v2, qword_CB410);
  swift_errorRetain();
  v3 = sub_83D4C();
  v4 = sub_847AC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1216);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_0, v3, v4, "Failed to create AppleServicesLocalizer: %@. Falling back to native language source.", v6, 0xCu);
    sub_38328(v7, &qword_CA760, &qword_A0F80);
  }

  v9 = *(v0 + 1088);

  sub_370FC(v0 + 16, v0 + 456);
  if (v9)
  {
    v10 = sub_756A8();
    v11 = *(v0 + 1120);
    v12 = &type metadata for NativeDataSource;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v10 = 0;
    *(v0 + 504) = 0;
    *(v0 + 512) = 0;
  }

  v39 = *(v0 + 1168);
  v40 = *(v0 + 1176);
  v37 = *(v0 + 1152);
  v38 = *(v0 + 1160);
  v36 = *(v0 + 1240);
  v13 = *(v0 + 1144);
  v14 = *(v0 + 1136);
  v15 = *(v0 + 1128);
  v16 = *(v0 + 1040);
  v17 = *(v0 + 960);
  v18 = *(v0 + 952);
  v35 = *(v0 + 936);
  v19 = *(v0 + 920);
  v20 = *(v0 + 912);
  v21 = *(v0 + 896);
  *(v0 + 496) = v11;
  *(v0 + 520) = v12;
  *(v0 + 528) = v10;
  *(v0 + 560) = &type metadata for NativeLanguageSource;
  *(v0 + 568) = sub_75870();
  sub_370FC(v0 + 456, v0 + 576);
  sub_370FC(v0 + 536, v0 + 616);

  sub_8415C();
  *(v0 + 680) = &type metadata for BooksLocalizerPreference;
  *(v0 + 688) = v15;
  sub_8416C();
  v14(v18, v19);
  sub_38328(v0 + 656, &qword_CBA38, &qword_A2018);
  v37(v20, v36, v21);
  sub_8417C();
  v39(v20, v21);
  v14(v17, v19);
  sub_75800(v0 + 496, v0 + 736);
  if (*(v0 + 760))
  {
    v22 = *(v0 + 1192);
    v23 = *(v0 + 1184);
    v24 = *(v0 + 1144);
    v25 = *(v0 + 1136);
    v26 = *(v0 + 960);
    v27 = *(v0 + 936);
    v28 = *(v0 + 920);
    sub_371F4((v0 + 736), v0 + 696);
    sub_8418C();
    sub_371A8((v0 + 696));
    v25(v27, v28);
    sub_371A8((v0 + 456));
    v23(v27, v26, v28);
  }

  else
  {
    sub_371A8((v0 + 456));
    sub_38328(v0 + 736, &qword_CBA40, &unk_A2020);
  }

  v29 = *(v0 + 1192);
  (*(v0 + 1184))(*(v0 + 944), *(v0 + 936), *(v0 + 920));
  sub_371A8((v0 + 536));
  sub_38328(v0 + 496, &qword_CBA40, &unk_A2020);
  v30 = async function pointer to static AppleServicesLocalizer.load(using:)[1];
  v31 = swift_task_alloc();
  *(v0 + 1224) = v31;
  *v31 = v0;
  v31[1] = sub_72558;
  v32 = *(v0 + 1200);
  v33 = *(v0 + 944);

  return static AppleServicesLocalizer.load(using:)(v33);
}

uint64_t sub_72558(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[105] = v2;
  v4[106] = a1;
  v4[107] = v1;
  v5 = v3[153];
  v8 = *v2;
  v4[154] = v1;

  if (v1)
  {
    v6 = sub_72888;
  }

  else
  {
    v6 = sub_72678;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_72678()
{
  v1 = *(v0 + 1216);
  v2 = *(v0 + 1144);
  v3 = *(v0 + 1136);
  v4 = *(v0 + 944);
  v5 = *(v0 + 920);

  v3(v4, v5);
  v6 = *(v0 + 848);
  v7 = *(v0 + 1144);
  v8 = *(v0 + 1136);
  v9 = *(v0 + 1040);
  v10 = *(v0 + 1024);
  v18 = *(v0 + 1032);
  v19 = *(v0 + 1008);
  v11 = *(v0 + 976);
  v20 = *(v0 + 1000);
  v21 = *(v0 + 968);
  v22 = *(v0 + 960);
  v23 = *(v0 + 952);
  v24 = *(v0 + 944);
  v25 = *(v0 + 936);
  v12 = *(v0 + 920);
  v26 = *(v0 + 912);
  v13 = *(v0 + 872);
  *(v0 + 800) = *(v0 + 1200);
  *(v0 + 808) = &protocol witness table for AppleServicesLocalizer;
  *(v0 + 776) = v6;
  v14 = type metadata accessor for BooksLocalizer();
  v15 = swift_allocObject();
  *(v15 + 56) = 1;
  sub_371F4((v0 + 776), v15 + 16);
  v13[3] = v14;
  v13[4] = sub_756FC(&qword_CBA50, type metadata accessor for BooksLocalizer);

  *v13 = v15;
  v8(v11, v12);
  sub_758C4(v10, type metadata accessor for BooksBagLanguageSource);
  sub_371A8((v0 + 16));

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_72888()
{
  v1 = v0[152];
  v2 = v0[143];
  v3 = v0[142];
  v4 = v0[130];
  v5 = v0[128];
  v6 = v0[122];
  v7 = v0[118];
  v8 = v0[115];

  v3(v7, v8);
  v3(v6, v8);
  sub_758C4(v5, type metadata accessor for BooksBagLanguageSource);
  sub_371A8(v0 + 2);
  v9 = v0[129];
  v10 = v0[128];
  v11 = v0[126];
  v12 = v0[125];
  v13 = v0[122];
  v14 = v0[121];
  v15 = v0[120];
  v16 = v0[119];
  v17 = v0[118];
  v18 = v0[117];
  v21 = v0[114];
  v22 = v0[154];

  v19 = v0[1];

  return v19();
}

id sub_72A3C@<X0>(uint64_t *a1@<X0>, SEL *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

uint64_t sub_72A7C@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() bu_sharedAccountStore];
  result = sub_43834(0, &qword_CBC68, ACAccountStore_ptr);
  a1[3] = result;
  a1[4] = &protocol witness table for ACAccountStore;
  *a1 = v2;
  return result;
}

unint64_t sub_72AF0()
{
  result = qword_CBA18;
  if (!qword_CBA18)
  {
    sub_280F0(&qword_CBA10, &qword_A2008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBA18);
  }

  return result;
}

uint64_t *sub_72B54(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64);
  }

  return result;
}

uint64_t sub_72BC4()
{
  v20 = v0;
  v1 = *(v0 + 16);
  v2 = *(v1 + 64);
  v19 = _swiftEmptyArrayStorage;
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

      result = sub_5EFD4(v12);
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
      return result;
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

  v13 = *(v0 + 16);

  v14 = sub_7523C(v19);

  v15 = *(v14 + 16);
  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = sub_6CDFC(*(v14 + 16), 0);
  v17 = sub_70100(&v19, v16 + 4, v15, v14);
  sub_40AE0();
  if (v17 != v15)
  {
    __break(1u);
LABEL_14:

    v16 = _swiftEmptyArrayStorage;
  }

  v18 = *(v0 + 8);

  return v18(v16);
}

uint64_t BooksLocalizerFactory.__deallocating_deinit()
{
  sub_758C4(v0 + OBJC_IVAR____TtC5JSApp21BooksLocalizerFactory_jetPack, type metadata accessor for BooksJetPackResourceBundle);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_72E28()
{
  v1[2] = v0;
  v2 = type metadata accessor for BooksBagLanguageSource(0);
  v1[3] = v2;
  v3 = *(v2 + 20);
  v4 = async function pointer to BagLanguageSource.fetchLanguages()[1];
  v5 = swift_task_alloc();
  v1[4] = v5;
  *v5 = v1;
  v5[1] = sub_72ED0;

  return BagLanguageSource.fetchLanguages()();
}

uint64_t sub_72ED0(uint64_t a1)
{
  v3 = *(*v2 + 32);
  v4 = *v2;
  *(v4 + 40) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_73004, 0, 0);
  }
}

uint64_t sub_73004()
{
  v27 = v0;
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = objc_opt_self();
  v5 = *(v3 + *(v2 + 24));
  isa = sub_8458C().super.isa;
  v7 = sub_8458C().super.isa;
  v8 = [v4 preferredLocalizationsFromArray:isa forPreferences:v7];

  v9 = sub_845AC();
  if (qword_CA4A8 != -1)
  {
    swift_once();
  }

  v10 = v0[5];
  v11 = sub_83D6C();
  sub_2C284(v11, qword_CB410);

  v12 = sub_83D4C();
  v13 = sub_847CC();

  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[5];
  if (v14)
  {
    v16 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v16 = 136315394;
    v17 = sub_845BC();
    v19 = v18;

    v20 = sub_3A93C(v17, v19, &v26);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = sub_845BC();
    v23 = sub_3A93C(v21, v22, &v26);

    *(v16 + 14) = v23;
    _os_log_impl(&dword_0, v12, v13, "BooksBagLanguageSource: languages from bag %s coerced to %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v24 = v0[1];

  return v24(v9);
}

void sub_732AC(uint64_t a1@<X8>)
{
  v3 = sub_83A7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1 + *(type metadata accessor for BooksBagLanguageSource(0) + 20);
  sub_8411C();
  if (qword_CA4A8 != -1)
  {
    swift_once();
  }

  v9 = sub_83D6C();
  sub_2C284(v9, qword_CB410);
  (*(v4 + 16))(v7, a1, v3);
  v10 = sub_83D4C();
  v11 = sub_847CC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    sub_756FC(&qword_CBC50, &type metadata accessor for Locale);
    v14 = sub_84BBC();
    v16 = v15;
    (*(v4 + 8))(v7, v3);
    v17 = sub_3A93C(v14, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_0, v10, v11, "BooksBagLanguageSource: Computed locale=%s based on bag languages", v12, 0xCu);
    sub_371A8(v13);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_73540()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_76244;

  return sub_72E28();
}

BOOL sub_735D0()
{
  v0 = sub_2805C(&qword_CAD58, &qword_A1610);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7[-v3];
  if (qword_CA438 != -1)
  {
    swift_once();
  }

  v5 = sub_2C284(v0, qword_CAD18);
  (*(v1 + 16))(v4, v5, v0);
  sub_83BAC();
  (*(v1 + 8))(v4, v0);
  return (v7[15] & 1) == 0;
}

uint64_t sub_73728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_7374C, 0, 0);
}

uint64_t sub_7374C()
{
  v17 = v0;
  if (qword_CA4A8 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_83D6C();
  sub_2C284(v2, qword_CB410);

  v3 = sub_83D4C();
  v4 = sub_8478C();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_3A93C(v6, v5, &v16);
    _os_log_impl(&dword_0, v3, v4, "Using '%{public}s' strings from JetTranslations.json", v7, 0xCu);
    sub_371A8(v8);
  }

  v9 = v0[4];
  v10 = v0[5];
  v12 = v0[2];
  v11 = v0[3];

  v13 = sub_75EE8(v10, v11, v9);

  v12[3] = &type metadata for NativeDataSource.NativeLocalizedStrings;
  v12[4] = sub_76178();
  *v12 = v13;
  v14 = v0[1];

  return v14();
}

uint64_t sub_73920(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_55854(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(v3 + 56) + 16 * v4);
  v8 = *v6;
  v7 = v6[1];

  return v8;
}

uint64_t sub_73974()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_73A08;

  return sub_72BA4(v2);
}

uint64_t sub_73A08(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_73B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2C958;

  return sub_73728(a1, a2, a3, v8);
}

uint64_t sub_73BDC()
{
  v1 = sub_83A6C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_73C3C()
{

  return sub_83A5C();
}

uint64_t sub_73C90(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_849AC();

    if (v9)
    {

      sub_43834(0, &qword_CAB60, UIWindowScene_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = sub_8499C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_74018(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_74208(v21 + 1);
    }

    v19 = v8;
    sub_74690(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_43834(0, &qword_CAB60, UIWindowScene_ptr);
  v11 = sub_848AC(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_74714(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_848BC();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

uint64_t sub_73EC8(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_84CCC();
  sub_8446C();
  v9 = sub_84D0C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_84BEC() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_74884(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_74018(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_2805C(&qword_CBC70, &unk_A2210);
    v2 = sub_84A2C();
    v15 = v2;
    sub_8498C();
    if (sub_849BC())
    {
      sub_43834(0, &qword_CAB60, UIWindowScene_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_74208(v9 + 1);
        }

        v2 = v15;
        result = sub_848AC(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_849BC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_74208(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2805C(&qword_CBC70, &unk_A2210);
  result = sub_84A1C();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_848AC(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}