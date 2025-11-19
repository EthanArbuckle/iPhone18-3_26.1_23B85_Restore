uint64_t sub_1790()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 name];

  v2 = sub_33244();
  return v2;
}

uint64_t sub_1810()
{
  v0 = 0x6E776F6E6B6E75;
  v16 = 0;
  if (!getifaddrs(&v16))
  {
    v1 = v16;
    if (v16)
    {
      v2 = 0;
      v3 = 0;
      while (v1)
      {
        ifa_addr = v1->ifa_addr;
        if (!ifa_addr)
        {
          goto LABEL_34;
        }

        if (ifa_addr->sa_family != 2)
        {
          goto LABEL_12;
        }

        if (!v1->ifa_name)
        {
          goto LABEL_35;
        }

        if (sub_33314() == 3173989 && v5 == 0xE300000000000000)
        {
LABEL_10:
        }

        else
        {
          while (1)
          {
            v6 = sub_33644();

            if (v6)
            {
              break;
            }

            do
            {
LABEL_12:
              v1 = v1->ifa_next;
              if (!v1)
              {
                goto LABEL_28;
              }

              ifa_addr = v1->ifa_addr;
              if (!ifa_addr)
              {
                goto LABEL_34;
              }
            }

            while (ifa_addr->sa_family != 2);
            if (!v1->ifa_name)
            {
              goto LABEL_35;
            }

            if (sub_33314() == 3173989 && v7 == 0xE300000000000000)
            {
              goto LABEL_10;
            }
          }
        }

        v9 = sub_333C4();
        *(v9 + 16) = 1025;
        bzero((v9 + 32), 0x401uLL);
        getnameinfo(ifa_addr, ifa_addr->sa_len, (v9 + 32), 0x401u, 0, 0, 2);
        v10 = *(v9 + 16);
        if (!v10)
        {
          goto LABEL_33;
        }

        if (*(v9 + 32))
        {
          v11 = 0;
          v12 = v10 - 1;
          while (v12 != v11)
          {
            if (!*(v9 + 33 + v11++))
            {
              goto LABEL_27;
            }
          }

          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
        }

LABEL_27:
        v2 = sub_332C4();
        v3 = v14;

        v1 = v1->ifa_next;
      }

LABEL_28:
      freeifaddrs(v16);
      if (v3)
      {
        return v2;
      }
    }

    else
    {
      freeifaddrs(0);
    }
  }

  return v0;
}

uint64_t sub_1A58(uint64_t a1)
{
  v2 = sub_160C4();
  if (*(a1 + 16) && (v3 = *v2, v4 = v2[1], , v5 = sub_26C8(v3, v4), v7 = v6, , (v7 & 1) != 0) && (sub_2740(*(a1 + 56) + 32 * v5, v10), (swift_dynamicCast() & 1) != 0))
  {
    return v9;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

Class sub_1B14(void *a1)
{
  if (!a1)
  {
    v2 = objc_allocWithZone(NSNull);

    return [v2 init];
  }

  *&v83 = a1;
  swift_unknownObjectRetain_n();
  if (swift_dynamicCast())
  {

    return a1;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    swift_unknownObjectRelease();
    return a1;
  }

  *&v88 = a1;
  sub_279C(&qword_45138, &qword_33E40);
  if (swift_dynamicCast())
  {
    v4 = *(v83 + 16);
    if (v4)
    {
      v5 = v83 + 32;
      v6 = &_swiftEmptyArrayStorage;
      do
      {
        sub_3228(v5, &v88);
        isa = sub_33514().isa;
        sub_3310(&v88);
        v8 = sub_1B14(isa);

        *&v80 = v8;
        swift_dynamicCast();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_25A8(0, *(v6 + 2) + 1, 1, v6);
        }

        v10 = *(v6 + 2);
        v9 = *(v6 + 3);
        if (v10 >= v9 >> 1)
        {
          v6 = sub_25A8((v9 > 1), v10 + 1, 1, v6);
        }

        *(v6 + 2) = v10 + 1;
        v11 = &v6[40 * v10];
        v12 = v83;
        v13 = v84;
        *(v11 + 8) = v85;
        *(v11 + 2) = v12;
        *(v11 + 3) = v13;
        v5 += 40;
        --v4;
      }

      while (v4);
    }

    else
    {
    }

    v58.super.isa = sub_333B4().super.isa;
    goto LABEL_66;
  }

  *&v88 = a1;
  swift_unknownObjectRetain();
  sub_279C(&qword_45140, &qword_33E48);
  if (swift_dynamicCast())
  {
    v14 = 0;
    v16 = v83 + 56;
    v15 = *(v83 + 56);
    v74 = v83;
    v17 = 1 << *(v83 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v15;
    v20 = (v17 + 63) >> 6;
    v21 = &_swiftEmptyArrayStorage;
    if ((v18 & v15) != 0)
    {
      goto LABEL_28;
    }

    while (1)
    {
      v22 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_76;
      }

      if (v22 >= v20)
      {

        v57.super.isa = sub_333B4().super.isa;
        swift_unknownObjectRelease();
        goto LABEL_67;
      }

      v19 = *(v16 + 8 * v22);
      ++v14;
      if (v19)
      {
        v14 = v22;
        do
        {
LABEL_28:
          sub_3228(*(v74 + 48) + 40 * (__clz(__rbit64(v19)) | (v14 << 6)), &v88);
          v23 = sub_33514().isa;
          sub_3310(&v88);
          v24 = sub_1B14(v23);

          *&v80 = v24;
          swift_dynamicCast();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_25A8(0, *(v21 + 2) + 1, 1, v21);
          }

          v26 = *(v21 + 2);
          v25 = *(v21 + 3);
          if (v26 >= v25 >> 1)
          {
            v21 = sub_25A8((v25 > 1), v26 + 1, 1, v21);
          }

          v19 &= v19 - 1;
          *(v21 + 2) = v26 + 1;
          v27 = &v21[40 * v26];
          v28 = v83;
          v29 = v84;
          *(v27 + 8) = v85;
          *(v27 + 2) = v28;
          *(v27 + 3) = v29;
        }

        while (v19);
      }
    }
  }

  *&v88 = a1;
  swift_unknownObjectRetain();
  sub_279C(&qword_45148, &qword_33E50);
  if (!swift_dynamicCast())
  {
    *&v88 = a1;
    sub_27E4();
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      v59 = v83;
      sub_279C(&qword_45160, &unk_33E60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_33E20;
      *(inited + 32) = 0x726F727265;
      *(inited + 40) = 0xE500000000000000;
      sub_279C(&qword_45168, qword_340E0);
      v61 = swift_initStackObject();
      *(v61 + 16) = xmmword_33E30;
      *(v61 + 32) = 0x6E69616D6F64;
      *(v61 + 40) = 0xE600000000000000;
      v62 = [v59 domain];
      v63 = sub_33244();
      v65 = v64;

      *(v61 + 48) = v63;
      *(v61 + 56) = v65;
      *(v61 + 72) = &type metadata for String;
      *(v61 + 80) = 1701080931;
      *(v61 + 88) = 0xE400000000000000;
      *(v61 + 96) = [v59 code];
      *(v61 + 120) = &type metadata for Int;
      *(v61 + 128) = 0x6F666E4972657375;
      *(v61 + 136) = 0xE800000000000000;
      v66 = [v59 userInfo];
      v67 = sub_331E4();

      *(v61 + 168) = sub_279C(&qword_45170, &unk_33E70);
      *(v61 + 144) = v67;
      v68 = sub_2F8C(v61);
      swift_setDeallocating();
      sub_279C(&qword_45178, "T\b");
      swift_arrayDestroy();
      *(inited + 48) = v68;
      sub_30BC(inited);
      swift_setDeallocating();
      sub_31C0(inited + 32);
      v57.super.isa = sub_331D4().super.isa;
      swift_unknownObjectRelease();

      goto LABEL_67;
    }

    if ([a1 respondsToSelector:"description"])
    {
      v70 = [a1 description];
      v71 = sub_33244();
      v73 = v72;
    }

    else
    {
      v71 = 0;
      v73 = 0;
    }

    *&v88 = v71;
    *(&v88 + 1) = v73;
    sub_279C(&qword_45158, &qword_33E58);
    v58.super.isa = sub_334A4();
LABEL_66:
    v57.super.isa = v58.super.isa;
    swift_unknownObjectRelease();
LABEL_67:

    return v57.super.isa;
  }

  v30 = sub_2E50(&_swiftEmptyArrayStorage);
  v31 = 0;
  v32 = v83 + 64;
  v75 = v83;
  v33 = 1 << *(v83 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v83 + 64);
  v36 = (v33 + 63) >> 6;
  while (v35)
  {
    v38 = v31;
LABEL_50:
    v41 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v42 = v41 | (v38 << 6);
    sub_3228(*(v75 + 48) + 40 * v42, &v80);
    sub_2740(*(v75 + 56) + 32 * v42, &v78);
    v83 = v80;
    v84 = v81;
    *&v85 = v82;
    sub_3284(&v78, (&v85 + 8));
LABEL_51:
    v90[0] = v85;
    v90[1] = v86;
    v91 = v87;
    v88 = v83;
    v89 = v84;
    if (!*(&v84 + 1))
    {

      v69 = sub_331D4().super.isa;
      swift_unknownObjectRelease();

      return v69;
    }

    sub_3284((v90 + 8), &v80);
    v83 = v88;
    v84 = v89;
    *&v85 = *&v90[0];
    sub_3294(&v80, *(&v81 + 1));
    sub_33634();
    v43 = (sub_1B14)();
    swift_unknownObjectRelease();
    v77 = v43;
    v79 = &type metadata for AnyHashable;
    *&v78 = swift_allocObject();
    swift_dynamicCast();
    sub_3284(&v78, v76);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = sub_2830(&v83);
    v47 = v30[2];
    v48 = (v46 & 1) == 0;
    v49 = __OFADD__(v47, v48);
    v50 = v47 + v48;
    if (v49)
    {
      goto LABEL_77;
    }

    v51 = v46;
    if (v30[3] < v50)
    {
      sub_29F4(v50, isUniquelyReferenced_nonNull_native);
      v45 = sub_2830(&v83);
      if ((v51 & 1) != (v52 & 1))
      {
        goto LABEL_79;
      }

LABEL_57:
      if (v51)
      {
        goto LABEL_38;
      }

      goto LABEL_58;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_57;
    }

    v56 = v45;
    sub_2CAC();
    v45 = v56;
    if (v51)
    {
LABEL_38:
      v37 = (v30[7] + 32 * v45);
      sub_3364(v37);
      sub_3284(v76, v37);
      sub_3310(&v83);
      goto LABEL_39;
    }

LABEL_58:
    v30[(v45 >> 6) + 8] |= 1 << v45;
    v53 = v45;
    sub_3228(&v83, v30[6] + 40 * v45);
    sub_3284(v76, (v30[7] + 32 * v53));
    sub_3310(&v83);
    v54 = v30[2];
    v49 = __OFADD__(v54, 1);
    v55 = v54 + 1;
    if (v49)
    {
      goto LABEL_78;
    }

    v30[2] = v55;
LABEL_39:
    sub_3364(&v80);
  }

  if (v36 <= v31 + 1)
  {
    v39 = v31 + 1;
  }

  else
  {
    v39 = v36;
  }

  v40 = v39 - 1;
  while (1)
  {
    v38 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v38 >= v36)
    {
      v35 = 0;
      v87 = 0;
      v85 = 0u;
      v86 = 0u;
      v84 = 0u;
      v31 = v40;
      v83 = 0u;
      goto LABEL_51;
    }

    v35 = *(v32 + 8 * v38);
    ++v31;
    if (v35)
    {
      v31 = v38;
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  result = sub_33664();
  __break(1u);
  return result;
}

char *sub_25A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_279C(&qword_45188, &qword_33EB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_26C8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_336C4();
  sub_332E4();
  v6 = sub_336E4();

  return sub_2874(a1, a2, v6);
}

uint64_t sub_2740(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_279C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_27E4()
{
  result = qword_45150;
  if (!qword_45150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_45150);
  }

  return result;
}

unint64_t sub_2830(uint64_t a1)
{
  v2 = v1;
  v4 = sub_33524(*(v2 + 40));

  return sub_292C(a1, v4);
}

unint64_t sub_2874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_33644())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_292C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_3228(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_33534();
      sub_3310(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_29F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_279C(&qword_45190, &qword_33EC0);
  result = sub_335E4();
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_3284((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_3228(v24, &v37);
        sub_2740(*(v5 + 56) + 32 * v23, v36);
      }

      result = sub_33524(*(v8 + 40));
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
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_3284(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
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

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

void *sub_2CAC()
{
  v1 = v0;
  sub_279C(&qword_45190, &qword_33EC0);
  v2 = *v0;
  v3 = sub_335D4();
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
        v18 = 40 * v17;
        sub_3228(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_2740(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_3284(v22, (*(v4 + 56) + v17));
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

unint64_t sub_2E50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_279C(&qword_45190, &qword_33EC0);
    v3 = sub_335F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_33C4(v4, v13, &qword_45198, &qword_33EC8);
      result = sub_2830(v13);
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
      result = sub_3284(&v15, (v3[7] + 32 * result));
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

unint64_t sub_2F8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_279C(&qword_451A8, &qword_34190);
    v3 = sub_335F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_33C4(v4, &v13, &qword_45178, "T\b");
      v5 = v13;
      v6 = v14;
      result = sub_26C8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_3284(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_30BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_279C(&qword_451A0, qword_33ED0);
    v3 = sub_335F4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_26C8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_31C0(uint64_t a1)
{
  v2 = sub_279C(&qword_45180, &qword_33E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_3284(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_3294(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_32D8()
{
  sub_3364((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_3364(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_33C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_279C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_3484(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_349C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 632))();

  swift_beginAccess();
  return sub_35E4(v1 + 16, a1);
}

uint64_t sub_35E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_3648(uint64_t *a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 640))();

  return sub_3364(a1);
}

uint64_t sub_36F0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  sub_94B4((v2 + 16), v1);
  return swift_endAccess();
}

void (*sub_3750(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 632))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14Content_Caches15ServerViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_92EC(&qword_451B0, type metadata accessor for ServerViewModel);
  sub_32B44();

  v4[7] = sub_342C();
  return sub_38A0;
}

uint64_t type metadata accessor for ServerViewModel()
{
  result = qword_46B30;
  if (!qword_46B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3948()
{
  swift_getKeyPath();
  (*(*v0 + 632))();

  v1 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel__subscriptions;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_39D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 632))();

  v4 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel__subscriptions;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_3A74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_3AA0(v4);
}

uint64_t sub_3AA0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel__subscriptions;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v6 = sub_8590(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    swift_getKeyPath();
    v9 = __chkstk_darwin();
    v10 = v1;
    v11 = a1;
    (*(*v1 + 640))(v9, sub_9280);
  }
}

double sub_3C40()
{
  swift_getKeyPath();
  (*(*v0 + 632))();

  v1 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel__minSpacerLength;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_3D6C(double a1)
{
  v3 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel__minSpacerLength;
  result = swift_beginAccess();
  if (*(v1 + v3) == a1)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    swift_getKeyPath();
    v5 = __chkstk_darwin();
    (*(*v1 + 640))(v5, sub_3E78);
  }

  return result;
}

uint64_t sub_3E78()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel__minSpacerLength;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void (*sub_3EDC(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 632))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14Content_Caches15ServerViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_92EC(&qword_451B0, type metadata accessor for ServerViewModel);
  sub_32B44();

  v4[7] = sub_3BD8();
  return sub_402C;
}

uint64_t sub_40AC()
{
  swift_getKeyPath();
  (*(*v0 + 632))();

  v1 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel__testInProgress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_4134@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 472))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_41DC(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel__testInProgress;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    swift_getKeyPath();
    v5 = __chkstk_darwin();
    v6 = v1;
    v7 = v2;
    (*(*v1 + 640))(v5, sub_42E0);
  }

  return result;
}

uint64_t sub_42E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel__testInProgress;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void (*sub_433C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 632))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14Content_Caches15ServerViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_92EC(&qword_451B0, type metadata accessor for ServerViewModel);
  sub_32B44();

  v4[7] = sub_4040();
  return sub_448C;
}

uint64_t sub_4498@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PerformanceResult();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_456C(uint64_t a1, uint64_t a2)
{
  v4 = sub_279C(&qword_451B8, &qword_35710);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_45DC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 632))();

  v3 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel__performanceResult;
  swift_beginAccess();
  return sub_478C(v1 + v3, a1);
}

uint64_t sub_46C4(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(sub_279C(&qword_451B8, &qword_35710) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v8 - v5;
  sub_478C(a1, &v8 - v5);
  return (*(**a2 + 528))(v6);
}

uint64_t sub_478C(uint64_t a1, uint64_t a2)
{
  v4 = sub_279C(&qword_451B8, &qword_35710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_47FC(uint64_t a1)
{
  v3 = (*(*(sub_279C(&qword_451B8, &qword_35710) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v10[-v4];
  v6 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel__performanceResult;
  swift_beginAccess();
  sub_478C(v1 + v6, v5);
  v7 = sub_87A4(v5, a1);
  sub_93EC(v5, &qword_451B8, &qword_35710);
  if (v7)
  {
    swift_getKeyPath();
    v8 = __chkstk_darwin();
    *&v10[-16] = v1;
    *&v10[-8] = a1;
    (*(*v1 + 640))(v8, sub_8AF4);
  }

  else
  {
    sub_478C(a1, v5);
    swift_beginAccess();
    sub_8A84(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_93EC(a1, &qword_451B8, &qword_35710);
}

void (*sub_49CC(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 632))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14Content_Caches15ServerViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_92EC(&qword_451B0, type metadata accessor for ServerViewModel);
  sub_32B44();

  v4[7] = sub_4504();
  return sub_4B1C;
}

uint64_t sub_4B94@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_4B9C()
{
  swift_getKeyPath();
  (*(*v0 + 632))();

  v1 = (v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel__performanceErrorString);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_4C38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 568))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_4C8C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 576);

  return v4(v2, v3);
}

uint64_t sub_4CFC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel__performanceErrorString);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    if (a2)
    {
      if (*v5 == a1 && v6 == a2)
      {
        goto LABEL_8;
      }

      v8 = v5[1];
      if (sub_33644())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v5 = a1;
    v5[1] = a2;
  }

  swift_getKeyPath();
  v10 = __chkstk_darwin();
  v11 = v2;
  v12 = a1;
  v13 = a2;
  (*(*v2 + 640))(v10, sub_8B5C);
}

void (*sub_4E4C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 632))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14Content_Caches15ServerViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_92EC(&qword_451B0, type metadata accessor for ServerViewModel);
  sub_32B44();

  v4[7] = sub_4B34();
  return sub_4F9C;
}

void sub_4FA8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_32B34();

  free(v1);
}

uint64_t sub_503C(uint64_t *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_508C(a1, a2);
  return v7;
}

void *sub_508C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v131 = a2;
  v5 = sub_279C(&qword_451C0, &qword_33FB8);
  v6 = *(v5 - 8);
  v124 = v5;
  v125 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v123 = v111 - v8;
  v9 = type metadata accessor for CachingServer();
  v121 = *(v9 - 8);
  v129 = *(v121 + 64);
  __chkstk_darwin(v9 - 8);
  v128 = v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_279C(&qword_451C8, &qword_34850);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v127 = v111 - v13;
  v120 = sub_279C(&qword_451D0, &qword_33FC0);
  v122 = *(v120 - 1);
  v14 = *(v122 + 64);
  __chkstk_darwin(v120);
  v119 = v111 - v15;
  v16 = sub_32AE4();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = sub_33224();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  *(v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel__subscriptions) = &_swiftEmptyArrayStorage;
  *(v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel__minSpacerLength) = 0x403E000000000000;
  *(v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel__testInProgress) = 0;
  v20 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel__performanceResult;
  v21 = type metadata accessor for PerformanceResult();
  (*(*(v21 - 8) + 56))(v2 + v20, 1, 1, v21);
  v22 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel__performanceErrorString);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_goodLabel);
  sub_33214();
  v24 = sub_2A72C();
  swift_beginAccess();
  v25 = *v24;
  sub_32AD4();
  *v23 = sub_33284();
  v23[1] = v26;
  v27 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_badLabel);
  sub_33214();
  swift_beginAccess();
  v28 = *v24;
  sub_32AD4();
  *v27 = sub_33284();
  v27[1] = v29;
  v30 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_infoSectionHeader);
  sub_33214();
  swift_beginAccess();
  v31 = *v24;
  sub_32AD4();
  *v30 = sub_33284();
  v30[1] = v32;
  v33 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_yesLabel);
  sub_33214();
  swift_beginAccess();
  v34 = *v24;
  sub_32AD4();
  *v33 = sub_33284();
  v33[1] = v35;
  v36 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_noLabel);
  sub_33214();
  swift_beginAccess();
  v37 = *v24;
  sub_32AD4();
  *v36 = sub_33284();
  v36[1] = v38;
  v39 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_addressLabel);
  sub_33214();
  swift_beginAccess();
  v40 = *v24;
  sub_32AD4();
  *v39 = sub_33284();
  v39[1] = v41;
  v42 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_guidLabel);
  sub_33214();
  swift_beginAccess();
  v43 = *v24;
  sub_32AD4();
  *v42 = sub_33284();
  v42[1] = v44;
  v45 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_typeLabel);
  sub_33214();
  swift_beginAccess();
  v46 = *v24;
  sub_32AD4();
  *v45 = sub_33284();
  v45[1] = v47;
  v48 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_rankLabel);
  sub_33214();
  swift_beginAccess();
  v49 = *v24;
  sub_32AD4();
  *v48 = sub_33284();
  v48[1] = v50;
  v51 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_healthLabel);
  sub_33214();
  swift_beginAccess();
  v52 = *v24;
  sub_32AD4();
  *v51 = sub_33284();
  v51[1] = v53;
  v54 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_inFavoredLabel);
  sub_33214();
  swift_beginAccess();
  v55 = *v24;
  sub_32AD4();
  *v54 = sub_33284();
  v54[1] = v56;
  v57 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_reachableLabel);
  sub_33214();
  swift_beginAccess();
  v58 = *v24;
  sub_32AD4();
  *v57 = sub_33284();
  v57[1] = v59;
  v60 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_testSectionFooter);
  sub_33214();
  swift_beginAccess();
  v61 = *v24;
  sub_32AD4();
  *v60 = sub_33284();
  v60[1] = v62;
  v63 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_learnMoreLabel);
  sub_33214();
  swift_beginAccess();
  v64 = *v24;
  sub_32AD4();
  *v63 = sub_33284();
  v63[1] = v65;
  v66 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_cancelDownloadLabel);
  sub_33214();
  swift_beginAccess();
  v67 = *v24;
  sub_32AD4();
  *v66 = sub_33284();
  v66[1] = v68;
  v69 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadTestLabel);
  sub_33214();
  swift_beginAccess();
  v70 = *v24;
  sub_32AD4();
  *v69 = sub_33284();
  v69[1] = v71;
  v72 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_lastCheckedLabel);
  sub_33214();
  swift_beginAccess();
  v73 = *v24;
  sub_32AD4();
  *v72 = sub_33284();
  v72[1] = v74;
  v75 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadSpeedLabel);
  sub_33214();
  swift_beginAccess();
  v76 = *v24;
  sub_32AD4();
  *v75 = sub_33284();
  v75[1] = v77;
  v78 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadCancelledLabel);
  sub_33214();
  swift_beginAccess();
  v79 = *v24;
  sub_32AD4();
  *v78 = sub_33284();
  v78[1] = v80;
  v81 = (v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadFailedLabel);
  sub_33214();
  swift_beginAccess();
  v82 = *v24;
  sub_32AD4();
  *v81 = sub_33284();
  v81[1] = v83;
  sub_32B54();
  sub_35E4(a1, (v2 + 2));
  v130 = type metadata accessor for CachingServer;
  sub_8F98(v131, v2 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_server, type metadata accessor for CachingServer);
  v126 = a1;
  v84 = a1[3];
  v85 = a1[4];
  sub_3294(a1, v84);
  v132 = (*(v85 + 48))(v84, v85);
  v111[4] = sub_9334(0, &qword_451D8, OS_dispatch_queue_ptr);
  v86 = sub_33474();
  v133 = v86;
  v117 = sub_33454();
  v87 = *(v117 - 8);
  v116 = *(v87 + 56);
  v118 = v87 + 56;
  v88 = v127;
  v116(v127, 1, 1, v117);
  sub_279C(&qword_451E0, &qword_33FC8);
  v115 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_8F50(&qword_451E8, &qword_451E0, &qword_33FC8);
  v114 = sub_8C18();
  v89 = v119;
  sub_32C94();
  sub_93EC(v88, &qword_451C8, &qword_34850);

  v90 = swift_allocObject();
  swift_weakInit();
  v91 = v130;
  v92 = v128;
  sub_8F98(v131, v128, v130);
  v121 = *(v121 + 80);
  v93 = (v121 + 24) & ~v121;
  v112 = v93;
  v94 = swift_allocObject();
  *(v94 + 16) = v90;
  sub_944C(v92, v94 + v93, v91);
  v113 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_8F50(&qword_451F8, &qword_451D0, &qword_33FC0);

  v95 = v120;
  sub_32CA4();

  (*(v122 + 8))(v89, v95);
  KeyPath = swift_getKeyPath();
  v120 = (*v3 + 632);
  v122 = *v120;
  (v122)(KeyPath);

  v97 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel___observationRegistrar;
  v132 = v3;
  swift_getKeyPath();
  v111[1] = sub_92EC(&qword_451B0, type metadata accessor for ServerViewModel);
  v111[2] = v97;
  sub_32B44();

  swift_beginAccess();
  v119 = sub_279C(&qword_45200, &qword_34890);
  v111[3] = sub_8F50(&qword_45208, &qword_45200, &qword_34890);
  sub_32BE4();
  swift_endAccess();

  v132 = v3;
  swift_getKeyPath();
  sub_32B34();

  v98 = v126[3];
  v99 = v126[4];
  sub_3294(v126, v98);
  v132 = (*(v99 + 40))(v98, v99);
  v100 = sub_33474();
  v133 = v100;
  v101 = v127;
  v116(v127, 1, 1, v117);
  sub_279C(&qword_45210, &qword_33FF8);
  sub_8F50(&qword_45218, &qword_45210, &qword_33FF8);
  v102 = v123;
  sub_32C94();
  sub_93EC(v101, &qword_451C8, &qword_34850);

  v103 = swift_allocObject();
  swift_weakInit();

  v104 = v130;
  v105 = v131;
  v106 = v128;
  sub_8F98(v131, v128, v130);
  v107 = v112;
  v108 = swift_allocObject();
  *(v108 + 16) = v103;
  sub_944C(v106, v108 + v107, v104);
  sub_8F50(&qword_45220, &qword_451C0, &qword_33FB8);
  v109 = v124;
  sub_32CA4();

  (*(v125 + 8))(v102, v109);
  swift_getKeyPath();
  (v122)();

  v132 = v3;
  swift_getKeyPath();
  sub_32B44();

  swift_beginAccess();
  sub_32BE4();
  swift_endAccess();

  v132 = v3;
  swift_getKeyPath();
  sub_32B34();

  sub_9000(v105, v130);
  sub_3364(v126);
  return v3;
}

uint64_t sub_6558()
{
  v0 = *(*(sub_32AE4() - 8) + 64);
  __chkstk_darwin();
  v1 = *(*(sub_33224() - 8) + 64);
  __chkstk_darwin();
  sub_33214();
  v2 = sub_2A72C();
  swift_beginAccess();
  v3 = *v2;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_66A4()
{
  v0 = *(*(sub_32AE4() - 8) + 64);
  __chkstk_darwin();
  v1 = *(*(sub_33224() - 8) + 64);
  __chkstk_darwin();
  sub_33214();
  v2 = sub_2A72C();
  swift_beginAccess();
  v3 = *v2;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_67F8()
{
  v0 = *(*(sub_32AE4() - 8) + 64);
  __chkstk_darwin();
  v1 = *(*(sub_33224() - 8) + 64);
  __chkstk_darwin();
  sub_33214();
  v2 = sub_2A72C();
  swift_beginAccess();
  v3 = *v2;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_691C()
{
  v0 = *(*(sub_32AE4() - 8) + 64);
  __chkstk_darwin();
  v1 = *(*(sub_33224() - 8) + 64);
  __chkstk_darwin();
  sub_33214();
  v2 = sub_2A72C();
  swift_beginAccess();
  v3 = *v2;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_6A9C()
{
  v0 = *(*(sub_32AE4() - 8) + 64);
  __chkstk_darwin();
  v1 = *(*(sub_33224() - 8) + 64);
  __chkstk_darwin();
  sub_33214();
  v2 = sub_2A72C();
  swift_beginAccess();
  v3 = *v2;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_6BF0()
{
  v0 = *(*(sub_32AE4() - 8) + 64);
  __chkstk_darwin();
  v1 = *(*(sub_33224() - 8) + 64);
  __chkstk_darwin();
  sub_33214();
  v2 = sub_2A72C();
  swift_beginAccess();
  v3 = *v2;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_6D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_336C4();
  sub_332E4();
  v7 = sub_336E4();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_33644() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_6E14(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_32BD4();
  v6 = *(v5 - 8);
  v46 = v5;
  v47 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PerformanceResult();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_279C(&qword_451B8, &qword_35710);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v45 - v20;
  v22 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = result;
    v25 = type metadata accessor for CachingServer();
    if (*(v22 + 16) && (v26 = sub_26C8(*(a3 + *(v25 + 24)), *(a3 + *(v25 + 24) + 8)), (v27 & 1) != 0))
    {
      sub_8F98(*(v22 + 56) + *(v11 + 72) * v26, v21, type metadata accessor for PerformanceResult);
      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    (*(v11 + 56))(v21, v28, 1, v10);
    v29 = (*(*v24 + 528))(v21);
    (*(*v24 + 520))(v29);
    if ((*(v11 + 48))(v19, 1, v10))
    {
      sub_93EC(v19, &qword_451B8, &qword_35710);
LABEL_8:
      (*(*v24 + 576))(0, 0);
    }

    sub_8F98(v19, v14, type metadata accessor for PerformanceResult);
    sub_93EC(v19, &qword_451B8, &qword_35710);
    v30 = *&v14[*(v10 + 32)];
    swift_errorRetain();
    sub_9000(v14, type metadata accessor for PerformanceResult);
    if (!v30)
    {
      goto LABEL_8;
    }

    v49 = v30;
    sub_279C(&qword_45540, &unk_35120);
    sub_9334(0, &qword_45150, NSError_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_8;
    }

    v31 = v48;
    v32 = [v48 code];
    v33 = &OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadCancelledLabel;
    if (v32 != -999)
    {
      v33 = &OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadFailedLabel;
    }

    v34 = (v24 + *v33);
    v35 = *v34;
    v36 = v34[1];

    (*(*v24 + 576))(v35, v36);
    v37 = sub_2167C();
    v38 = v46;
    (*(v47 + 16))(v9, v37, v46);
    v39 = v31;
    v40 = sub_32BB4();
    v41 = sub_33424();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138543362;
      *(v42 + 4) = v39;
      *v43 = v39;
      v44 = v39;
      _os_log_impl(&dword_0, v40, v41, "Download test recieved error %{public}@", v42, 0xCu);
      sub_93EC(v43, &qword_45548, &qword_340B8);
    }

    else
    {
    }

    return (*(v47 + 8))(v9, v38);
  }

  return result;
}

uint64_t sub_73B4()
{
  (*(*v0 + 328))(v6);
  v1 = v7;
  v2 = v8;
  sub_3294(v6, v7);
  v3 = v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_server;
  v4 = type metadata accessor for CachingServer();
  (*(v2 + 64))(*(v3 + *(v4 + 24)), *(v3 + *(v4 + 24) + 8), v1, v2);
  return sub_3364(v6);
}

uint64_t sub_746C()
{
  (*(*v0 + 328))(v6);
  v1 = v7;
  v2 = v8;
  sub_3294(v6, v7);
  v3 = v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_server;
  v4 = type metadata accessor for CachingServer();
  (*(v2 + 56))(*(v3 + *(v4 + 24)), *(v3 + *(v4 + 24) + 8), v1, v2);
  return sub_3364(v6);
}

uint64_t sub_7524()
{
  v1 = type metadata accessor for PerformanceResult();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (__chkstk_darwin)();
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*(sub_279C(&qword_451B8, &qword_35710) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v8 = &v23 - v7;
  v9 = sub_32A84();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = (__chkstk_darwin)();
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v23 - v16;
  (*(*v0 + 520))(v15);
  if ((*(v2 + 48))(v8, 1, v1))
  {
    sub_93EC(v8, &qword_451B8, &qword_35710);
    return 0;
  }

  else
  {
    sub_8F98(v8, v5, type metadata accessor for PerformanceResult);
    sub_93EC(v8, &qword_451B8, &qword_35710);
    (*(v10 + 16))(v14, v5, v9);
    sub_9000(v5, type metadata accessor for PerformanceResult);
    (*(v10 + 32))(v17, v14, v9);
    v19 = [objc_allocWithZone(NSDateFormatter) init];
    [v19 setTimeStyle:1];
    [v19 setDateStyle:1];
    isa = sub_32A34().super.isa;
    v21 = [v19 stringFromDate:isa];

    v22 = sub_33244();
    (*(v10 + 8))(v17, v9);
    return v22;
  }
}

uint64_t sub_7870()
{
  v1 = sub_279C(&qword_45228, &qword_34000);
  v40 = *(v1 - 8);
  v41 = v1;
  v2 = *(v40 + 64);
  __chkstk_darwin(v1);
  v4 = &v38 - v3;
  v5 = type metadata accessor for PerformanceResult();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_279C(&qword_451B8, &qword_35710);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v38 - v16;
  v18 = *(*v0 + 520);
  v18(v15);
  v19 = *(v6 + 48);
  if (v19(v17, 1, v5))
  {
    v20 = v17;
LABEL_5:
    sub_93EC(v20, &qword_451B8, &qword_35710);
    return 0;
  }

  v39 = v4;
  sub_8F98(v17, v9, type metadata accessor for PerformanceResult);
  sub_93EC(v17, &qword_451B8, &qword_35710);
  v21 = *&v9[*(v5 + 28)];
  v22 = sub_9000(v9, type metadata accessor for PerformanceResult);
  v18(v22);
  if (v19(v14, 1, v5))
  {
    v20 = v14;
    goto LABEL_5;
  }

  sub_8F98(v14, v9, type metadata accessor for PerformanceResult);
  sub_93EC(v14, &qword_451B8, &qword_35710);
  v24 = *&v9[*(v5 + 24)];
  sub_9000(v9, type metadata accessor for PerformanceResult);
  v25 = [objc_allocWithZone(NSByteCountFormatter) init];
  [v25 setCountStyle:1];
  v26 = [objc_opt_self() bytes];
  sub_9334(0, &qword_45230, NSUnitInformationStorage_ptr);
  v27 = v39;
  sub_32894();
  sub_279C(&qword_45238, &qword_34008);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_33E20;
  v29 = v41;
  v30 = sub_32884();
  v32 = v31;
  v33 = [v25 stringFromMeasurement:{v31, v30}];

  v34 = sub_33244();
  v36 = v35;

  *(v28 + 56) = &type metadata for String;
  *(v28 + 64) = sub_9060();
  *(v28 + 32) = v34;
  *(v28 + 40) = v36;
  v37 = sub_33254();

  (*(v40 + 8))(v27, v29);
  return v37;
}

uint64_t sub_7CE8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_goodLabel);
  v2 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_goodLabel + 8);

  return v1;
}

uint64_t sub_7D24()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_badLabel);
  v2 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_badLabel + 8);

  return v1;
}

uint64_t sub_7D60()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_infoSectionHeader);
  v2 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_infoSectionHeader + 8);

  return v1;
}

uint64_t sub_7D9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_yesLabel);
  v2 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_yesLabel + 8);

  return v1;
}

uint64_t sub_7DD8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_noLabel);
  v2 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_noLabel + 8);

  return v1;
}

uint64_t sub_7E14()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_addressLabel);
  v2 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_addressLabel + 8);

  return v1;
}

uint64_t sub_7E50()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_guidLabel);
  v2 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_guidLabel + 8);

  return v1;
}

uint64_t sub_7E8C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_typeLabel);
  v2 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_typeLabel + 8);

  return v1;
}

uint64_t sub_7EC8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_rankLabel);
  v2 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_rankLabel + 8);

  return v1;
}

uint64_t sub_7F04()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_healthLabel);
  v2 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_healthLabel + 8);

  return v1;
}

uint64_t sub_7F40()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_inFavoredLabel);
  v2 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_inFavoredLabel + 8);

  return v1;
}

uint64_t sub_7F7C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_reachableLabel);
  v2 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_reachableLabel + 8);

  return v1;
}

uint64_t sub_7FB8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_testSectionFooter);
  v2 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_testSectionFooter + 8);

  return v1;
}

uint64_t sub_7FF4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_learnMoreLabel);
  v2 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_learnMoreLabel + 8);

  return v1;
}

uint64_t sub_8030()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_cancelDownloadLabel);
  v2 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_cancelDownloadLabel + 8);

  return v1;
}

uint64_t sub_806C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadTestLabel);
  v2 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadTestLabel + 8);

  return v1;
}

uint64_t sub_80A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_lastCheckedLabel);
  v2 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_lastCheckedLabel + 8);

  return v1;
}

uint64_t sub_80E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadSpeedLabel);
  v2 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadSpeedLabel + 8);

  return v1;
}

uint64_t sub_8120()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadCancelledLabel);
  v2 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadCancelledLabel + 8);

  return v1;
}

uint64_t sub_815C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadFailedLabel);
  v2 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadFailedLabel + 8);

  return v1;
}

uint64_t sub_82D8()
{
  sub_3364((v0 + 16));
  sub_9000(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_server, type metadata accessor for CachingServer);
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel__subscriptions);

  sub_93EC(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel__performanceResult, &qword_451B8, &qword_35710);
  v2 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel__performanceErrorString + 8);

  v3 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_goodLabel + 8);

  v4 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_badLabel + 8);

  v5 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_infoSectionHeader + 8);

  v6 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_yesLabel + 8);

  v7 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_noLabel + 8);

  v8 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_addressLabel + 8);

  v9 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_guidLabel + 8);

  v10 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_typeLabel + 8);

  v11 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_rankLabel + 8);

  v12 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_healthLabel + 8);

  v13 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_inFavoredLabel + 8);

  v14 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_reachableLabel + 8);

  v15 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_testSectionFooter + 8);

  v16 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_learnMoreLabel + 8);

  v17 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_cancelDownloadLabel + 8);

  v18 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadTestLabel + 8);

  v19 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_lastCheckedLabel + 8);

  v20 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadSpeedLabel + 8);

  v21 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadCancelledLabel + 8);

  v22 = *(v0 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadFailedLabel + 8);

  v23 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel___observationRegistrar;
  v24 = sub_32B64();
  (*(*(v24 - 8) + 8))(v0 + v23, v24);
  return v0;
}

uint64_t sub_8538()
{
  sub_82D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_8590(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_335C4();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v17 = 0;
    return v17 & 1;
  }

  result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v17 = 1;
    return v17 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v4 = sub_32C04();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = sub_335C4();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        sub_33594();
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_30;
        }

        v15 = *(a1 + 8 * v12);

        if (v11)
        {
LABEL_20:
          sub_33594();
          goto LABEL_25;
        }
      }

      if (v13 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_31;
      }

      v16 = *(a2 + 8 * v12);

LABEL_25:
      sub_92EC(&qword_45538, &type metadata accessor for AnyCancellable);
      v17 = sub_33204();

      if (v17)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v17 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_87A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PerformanceResult();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(sub_279C(&qword_451B8, &qword_35710) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v21 - v10;
  v12 = (*(*(sub_279C(&qword_45550, &unk_340C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = __chkstk_darwin();
  v15 = &v21 - v14;
  v16 = *(v13 + 56);
  sub_478C(a1, &v21 - v14);
  sub_478C(a2, &v15[v16]);
  v17 = *(v5 + 48);
  if (v17(v15, 1, v4) != 1)
  {
    sub_478C(v15, v11);
    if (v17(&v15[v16], 1, v4) != 1)
    {
      sub_944C(&v15[v16], v8, type metadata accessor for PerformanceResult);
      sub_92EC(&qword_45558, type metadata accessor for PerformanceResult);
      v19 = sub_33204();
      sub_9000(v8, type metadata accessor for PerformanceResult);
      sub_9000(v11, type metadata accessor for PerformanceResult);
      sub_93EC(v15, &qword_451B8, &qword_35710);
      v18 = v19 ^ 1;
      return v18 & 1;
    }

    sub_9000(v11, type metadata accessor for PerformanceResult);
    goto LABEL_6;
  }

  if (v17(&v15[v16], 1, v4) != 1)
  {
LABEL_6:
    sub_93EC(v15, &qword_45550, &unk_340C0);
    v18 = 1;
    return v18 & 1;
  }

  sub_93EC(v15, &qword_451B8, &qword_35710);
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_8A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_279C(&qword_451B8, &qword_35710);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_8AF4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel__performanceResult;
  swift_beginAccess();
  sub_937C(v1, v2 + v3);
  return swift_endAccess();
}

uint64_t sub_8B5C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel__performanceErrorString);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v2;
  v4[1] = v3;
}

uint64_t sub_8BD0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_8C18()
{
  result = qword_451F0;
  if (!qword_451F0)
  {
    sub_9334(255, &qword_451D8, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_451F0);
  }

  return result;
}

uint64_t sub_8C80()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_8CBC(uint64_t *a1)
{
  v3 = type metadata accessor for CachingServer();
  v4 = *(*(v3 - 8) + 80);
  v5 = *(v1 + 16);
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = (v1 + *(v3 + 24) + ((v4 + 24) & ~v4));
    v10 = sub_6D1C(*v9, v9[1], v6);
    (*(*v8 + 480))(v10 & 1);
  }

  return result;
}

uint64_t sub_8DBC()
{
  v1 = (type metadata accessor for CachingServer() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = sub_32AC4();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3, v6);
  v7(v0 + v3 + v1[7], v6);
  v8 = *(v0 + v3 + v1[8] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_8EDC(uint64_t *a1)
{
  v3 = *(type metadata accessor for CachingServer() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_6E14(a1, v4, v5);
}

uint64_t sub_8F50(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_8BD0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_8F98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_9000(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_9060()
{
  result = qword_45240;
  if (!qword_45240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45240);
  }

  return result;
}

void sub_90BC()
{
  v0 = type metadata accessor for CachingServer();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_9228();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_32B64();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_9228()
{
  if (!qword_45270)
  {
    type metadata accessor for PerformanceResult();
    v0 = sub_334B4();
    if (!v1)
    {
      atomic_store(v0, &qword_45270);
    }
  }
}

uint64_t sub_9280()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel__subscriptions;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
}

uint64_t sub_92EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_9334(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_937C(uint64_t a1, uint64_t a2)
{
  v4 = sub_279C(&qword_451B8, &qword_35710);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_93EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_279C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_944C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t *sub_94B4(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

uint64_t sub_96EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_32A84();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_9754@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PerformanceResult() + 20);
  v4 = sub_32A84();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for PerformanceResult()
{
  result = qword_46C40;
  if (!qword_46C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_9864()
{
  v1 = *(v0 + *(type metadata accessor for PerformanceResult() + 32));
  swift_errorRetain();
  return v1;
}

BOOL sub_98DC(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (sub_32A54())
  {
    v4 = type metadata accessor for PerformanceResult();
    v5 = v4[5];
    if ((sub_32A54() & 1) != 0 && *(a1 + v4[7]) == *(a2 + v4[7]) && *(a1 + v4[6]) == *(a2 + v4[6]))
    {
      return 1;
    }
  }

  return result;
}

unint64_t sub_9964()
{
  v1 = v0;
  v2 = sub_32A24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_279C(&qword_45168, qword_340E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_340D0;
  *(inited + 32) = 0x7461447472617473;
  v23[1] = inited + 32;
  *(inited + 40) = 0xE900000000000065;
  sub_9C3C(v6);
  v8 = sub_329B4();
  v10 = v9;
  v11 = *(v3 + 8);
  v11(v6, v2);
  *(inited + 48) = v8;
  *(inited + 56) = v10;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x65746144646E65;
  *(inited + 88) = 0xE700000000000000;
  v12 = type metadata accessor for PerformanceResult();
  v13 = v12[5];
  sub_9C3C(v6);
  v14 = sub_329B4();
  v16 = v15;
  v11(v6, v2);
  *(inited + 96) = v14;
  *(inited + 104) = v16;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x6E6F697461727564;
  *(inited + 136) = 0xE800000000000000;
  *(inited + 144) = *(v1 + v12[6]);
  *(inited + 168) = &type metadata for Double;
  *(inited + 176) = 1702521203;
  *(inited + 184) = 0xE400000000000000;
  v17 = *(v1 + v12[7]);
  *(inited + 216) = &type metadata for Int;
  *(inited + 192) = v17;
  v18 = sub_2F8C(inited);
  swift_setDeallocating();
  sub_279C(&qword_45178, "T\b");
  swift_arrayDestroy();
  if (*(v1 + v12[8]))
  {
    swift_getErrorValue();
    swift_errorRetain();
    v19 = sub_33674();
    v27 = &type metadata for String;
    *&v26 = v19;
    *(&v26 + 1) = v20;
    sub_3284(&v26, v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v18;
    sub_A4AC(v25, 0x726F727265, 0xE500000000000000, isUniquelyReferenced_nonNull_native);

    return v24;
  }

  return v18;
}

uint64_t sub_9C3C@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_279C(&qword_455F8, qword_34198);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v35 = &v30 - v3;
  v34 = sub_32B04();
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v34);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_32A14();
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v33);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_329F4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_329D4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_329E4();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  (*(v24 + 104))(&v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Date.ISO8601FormatStyle.DateSeparator.dash(_:));
  v25 = v16;
  v26 = v34;
  (*(v17 + 104))(v20, enum case for Date.ISO8601FormatStyle.DateTimeSeparator.standard(_:), v25);
  v27 = v10;
  v28 = v35;
  (*(v12 + 104))(v15, enum case for Date.ISO8601FormatStyle.TimeSeparator.colon(_:), v11);
  (*(v7 + 104))(v27, enum case for Date.ISO8601FormatStyle.TimeZoneSeparator.omitted(_:), v33);
  sub_32AF4();
  result = (*(v4 + 48))(v28, 1, v26);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v31, v28, v26);
    return sub_32A04();
  }

  return result;
}

uint64_t sub_A040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = sub_32A84();
  v13 = *(*(v12 - 8) + 32);
  v13(a5, a1, v12);
  v14 = type metadata accessor for PerformanceResult();
  result = (v13)(a5 + v14[5], a2, v12);
  *(a5 + v14[6]) = a6;
  *(a5 + v14[7]) = a3;
  *(a5 + v14[8]) = a4;
  return result;
}

BOOL sub_A174(uint64_t a1, uint64_t a2, int *a3)
{
  result = 0;
  if (sub_32A54())
  {
    v6 = a3[5];
    if ((sub_32A54() & 1) != 0 && *(a1 + a3[7]) == *(a2 + a3[7]) && *(a1 + a3[6]) == *(a2 + a3[6]))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_A1F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_279C(&qword_451A8, &qword_34190);
  v36 = a2;
  result = sub_335E4();
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
        sub_3284(v25, v37);
      }

      else
      {
        sub_2740(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_336C4();
      sub_332E4();
      result = sub_336E4();
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
      result = sub_3284(v37, (*(v8 + 56) + 32 * v16));
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

_OWORD *sub_A4AC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26C8(a2, a3);
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
      sub_A668();
      v11 = v19;
      goto LABEL_8;
    }

    sub_A1F4(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_26C8(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_33664();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_3364(v23);

    return sub_3284(a1, v23);
  }

  else
  {
    sub_A5FC(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_A5FC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_3284(a4, (a5[7] + 32 * a1));
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

void *sub_A668()
{
  v1 = v0;
  sub_279C(&qword_451A8, &qword_34190);
  v2 = *v0;
  v3 = sub_335D4();
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
        sub_2740(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_3284(v25, (*(v4 + 56) + v22));
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

unint64_t sub_A810()
{
  result = qword_45558;
  if (!qword_45558)
  {
    type metadata accessor for PerformanceResult();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45558);
  }

  return result;
}

uint64_t sub_A87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_32A84();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_A958(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_32A84();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2;
  }

  return result;
}

void sub_AA10()
{
  sub_32A84();
  if (v0 <= 0x3F)
  {
    sub_AAA8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_AAA8()
{
  if (!qword_455B8)
  {
    sub_8BD0(&qword_45540, &unk_35120);
    v0 = sub_334B4();
    if (!v1)
    {
      atomic_store(v0, &qword_455B8);
    }
  }
}

uint64_t sub_AB0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_279C(&qword_45178, "T\b");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_ABB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = *(*(type metadata accessor for PerformanceResult() - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v6 = sub_32BD4();
  v4[10] = v6;
  v7 = *(v6 - 8);
  v4[11] = v7;
  v8 = *(v7 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v9 = *(*(sub_279C(&qword_45600, &qword_341D8) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v10 = sub_32974();
  v4[16] = v10;
  v11 = *(v10 - 8);
  v4[17] = v11;
  v12 = *(v11 + 64) + 15;
  v4[18] = swift_task_alloc();
  v13 = *(*(sub_279C(&qword_45608, &qword_341E0) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v14 = sub_328E4();
  v4[20] = v14;
  v15 = *(v14 - 8);
  v4[21] = v15;
  v16 = *(v15 + 64) + 15;
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_ADF0, 0, 0);
}

uint64_t sub_ADF0()
{
  v64 = v0;
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  v4 = v0[7];
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  sub_328D4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_93EC(v0[19], &qword_45608, &qword_341E0);
    return sub_335B4();
  }

  v8 = v0[5];
  v9 = v0[6];
  (*(v0[21] + 32))(v0[22], v0[19], v0[20]);
  v0[2] = 58;
  v0[3] = 0xE100000000000000;
  v10 = swift_task_alloc();
  *(v10 + 16) = v0 + 2;

  v12 = sub_CC7C(0x7FFFFFFFFFFFFFFFLL, 1, sub_EA04, v10, v8, v9, v11);

  if (v12[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  v13 = v12[8];
  v14 = v12[9];
  if ((v14 ^ v13) < 0x4000)
  {
    goto LABEL_13;
  }

  v16 = v12[10];
  v15 = v12[11];
  result = sub_E834(v12[8], v12[9], v16, v15, 10);
  if ((v17 & 0x100) == 0)
  {
    if ((v17 & 1) == 0)
    {
      v18 = result;
      goto LABEL_9;
    }

LABEL_13:

    v28 = 1;
    goto LABEL_14;
  }

  v18 = sub_D6F0(v13, v14, v16, v15, 10);
  v20 = v19;

  if (v20)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (v18 > 65534)
  {
    goto LABEL_13;
  }

  if (!v12[2])
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v21 = v0[22];
  v22 = v0[17];
  v61 = v0[16];
  v23 = v0[15];
  v24 = v12[4];
  v25 = v12[5];
  v26 = v12[6];
  v27 = v12[7];

  sub_332B4();

  sub_328B4();
  sub_328C4();
  sub_328A4();
  if ((*(v22 + 48))(v23, 1, v61) == 1)
  {
    sub_93EC(v0[15], &qword_45600, &qword_341D8);
    v28 = 0;
LABEL_14:
    sub_EA5C();
    swift_allocError();
    *v29 = v28;
    *(v29 + 8) = 1;
    swift_willThrow();
    v30 = v0[19];
    v31 = v0[18];
    v33 = v0[14];
    v32 = v0[15];
    v35 = v0[12];
    v34 = v0[13];
    v36 = v0[9];
    v62 = v0[8];
    (*(v0[21] + 8))(v0[22], v0[20]);

    v37 = v0[1];

    return v37();
  }

  v38 = v0[14];
  v39 = v0[10];
  v40 = v0[11];
  v41 = v0[6];
  (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
  v42 = sub_2167C();
  v0[23] = v42;
  v43 = *(v40 + 16);
  v0[24] = v43;
  v0[25] = (v40 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v43(v38, v42, v39);

  v44 = sub_32BB4();
  v45 = sub_33434();

  v46 = os_log_type_enabled(v44, v45);
  v47 = v0[14];
  v48 = v0[10];
  v49 = v0[11];
  if (v46)
  {
    v51 = v0[5];
    v50 = v0[6];
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v63 = v53;
    *v52 = 136446210;
    *(v52 + 4) = sub_D148(v51, v50, &v63);
    _os_log_impl(&dword_0, v44, v45, "Starting download test for: %{public}s", v52, 0xCu);
    sub_3364(v53);
  }

  v54 = *(v49 + 8);
  v54(v47, v48);
  v0[26] = v54;
  v55 = swift_task_alloc();
  v0[27] = v55;
  *v55 = v0;
  v55[1] = sub_B374;
  v56 = v0[18];
  v57 = v0[9];
  v58 = v0[6];
  v59 = v0[7];
  v60 = v0[5];

  return sub_BC38(v57, v56, v60, v58);
}

uint64_t sub_B374()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_BA08;
  }

  else
  {
    v3 = sub_B488;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_B488()
{
  v23 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 48);
  (*(v0 + 192))(*(v0 + 104), *(v0 + 184), *(v0 + 80));

  v3 = sub_32BB4();
  v4 = sub_33434();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 208);
  v7 = *(v0 + 104);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  if (v5)
  {
    v21 = *(v0 + 208);
    v11 = *(v0 + 40);
    v10 = *(v0 + 48);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_D148(v11, v10, &v22);
    _os_log_impl(&dword_0, v3, v4, "Starting second download test for: %{public}s", v12, 0xCu);
    sub_3364(v13);

    v21(v7, v8);
  }

  else
  {

    v6(v7, v8);
  }

  v14 = swift_task_alloc();
  *(v0 + 232) = v14;
  *v14 = v0;
  v14[1] = sub_B674;
  v15 = *(v0 + 144);
  v17 = *(v0 + 56);
  v16 = *(v0 + 64);
  v18 = *(v0 + 40);
  v19 = *(v0 + 48);

  return sub_BC38(v16, v15, v18, v19);
}

uint64_t sub_B674()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_BB18;
  }

  else
  {
    v3 = sub_B788;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_B788()
{
  v35 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 48);
  (*(v0 + 192))(*(v0 + 96), *(v0 + 184), *(v0 + 80));

  v3 = sub_32BB4();
  v4 = sub_33434();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 208);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v9 = *(v0 + 80);
  if (v5)
  {
    v32 = *(v0 + 208);
    v11 = *(v0 + 40);
    v10 = *(v0 + 48);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v34 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_D148(v11, v10, &v34);
    _os_log_impl(&dword_0, v3, v4, "Returning performance results for: %{public}s", v12, 0xCu);
    sub_3364(v13);

    v32(v7, v9);
  }

  else
  {

    v6(v7, v9);
  }

  v15 = *(v0 + 168);
  v14 = *(v0 + 176);
  v16 = *(v0 + 160);
  v17 = *(v0 + 136);
  v18 = *(v0 + 144);
  v19 = *(v0 + 128);
  v28 = *(v0 + 152);
  v29 = *(v0 + 120);
  v30 = *(v0 + 112);
  v31 = *(v0 + 104);
  v33 = *(v0 + 96);
  v21 = *(v0 + 64);
  v20 = *(v0 + 72);
  v27 = *(v0 + 32);
  v22 = sub_989C(v20, v21);
  (*(v17 + 8))(v18, v19);
  (*(v15 + 8))(v14, v16);
  if (v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = v20;
  }

  if (v22)
  {
    v24 = v20;
  }

  else
  {
    v24 = v21;
  }

  sub_EAB0(v23);
  sub_EB0C(v24, v27);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_BA08()
{
  (*(v0[17] + 8))(v0[18], v0[16]);
  v11 = v0[28];
  v1 = v0[19];
  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[8];
  v8 = v0[9];
  (*(v0[21] + 8))(v0[22], v0[20]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_BB18()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  sub_EAB0(v0[9]);
  (*(v2 + 8))(v1, v3);
  v14 = v0[30];
  v4 = v0[19];
  v5 = v0[18];
  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[8];
  v11 = v0[9];
  (*(v0[21] + 8))(v0[22], v0[20]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_BC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = sub_32A84();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v9 = sub_32974();
  v5[16] = v9;
  v10 = *(v9 - 8);
  v5[17] = v10;
  v11 = *(v10 + 64) + 15;
  v5[18] = swift_task_alloc();
  v12 = sub_32874();
  v5[19] = v12;
  v13 = *(v12 - 8);
  v5[20] = v13;
  v14 = *(v13 + 64) + 15;
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_BDDC, 0, 0);
}

uint64_t sub_BDDC()
{
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[16];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v17 = v0[7];
  v18 = v0[15];
  v8 = [objc_opt_self() ephemeralSessionConfiguration];
  v9 = [objc_opt_self() sessionWithConfiguration:v8];
  v0[22] = v9;

  (*(v2 + 16))(v3, v7, v4);
  sub_32864();
  sub_32854();
  swift_beginAccess();

  v10 = v9;
  v11 = *(v5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v5 + 16);
  *(v5 + 16) = 0x8000000000000000;
  sub_E550(v10, v17, v6, isUniquelyReferenced_nonNull_native);

  *(v5 + 16) = v19;
  swift_endAccess();
  sub_32A64();
  v13 = async function pointer to NSURLSession.data(for:delegate:)[1];
  v14 = swift_task_alloc();
  v0[23] = v14;
  *v14 = v0;
  v14[1] = sub_BFC0;
  v15 = v0[21];

  return NSURLSession.data(for:delegate:)(v15, 0);
}

uint64_t sub_BFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 184);
  v9 = *v4;
  v5[24] = a1;
  v5[25] = a2;
  v5[26] = a3;
  v5[27] = v3;

  if (v3)
  {
    v7 = sub_C410;
  }

  else
  {
    v7 = sub_C0D8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_C0D8()
{
  v1 = *(v0 + 208);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [v2 statusCode];
    if (v3 == 200)
    {
      v4 = *(v0 + 200);
      v5 = *(v0 + 112);
      v6 = *(v0 + 120);
      v8 = *(v0 + 96);
      v7 = *(v0 + 104);
      v9 = *(v0 + 80);
      v10 = *(v0 + 88);
      sub_32A64();
      v11 = *(v10 + 16);
      v11(v7, v6, v9);
      v11(v8, v5, v9);
      result = sub_329C4();
      v14 = v4 >> 62;
      if ((v4 >> 62) > 1)
      {
        if (v14 != 2)
        {
          v15 = 0;
          goto LABEL_15;
        }

        v29 = *(*(v0 + 192) + 16);
        v30 = *(*(v0 + 192) + 24);
        v15 = v30 - v29;
        if (!__OFSUB__(v30, v29))
        {
          goto LABEL_15;
        }

        __break(1u);
      }

      else if (!v14)
      {
        v15 = *(v0 + 206);
LABEL_15:
        v36 = *(v0 + 200);
        v35 = *(v0 + 208);
        v37 = *(v0 + 192);
        v38 = *(v0 + 168);
        v39 = *(v0 + 160);
        v48 = *(v0 + 176);
        v50 = *(v0 + 152);
        v40 = *(v0 + 112);
        v52 = *(v0 + 104);
        v42 = *(v0 + 80);
        v41 = *(v0 + 88);
        v45 = *(v0 + 72);
        v46 = *(v0 + 120);
        v47 = *(v0 + 64);
        v43 = *(v0 + 56);
        sub_A040(v52, *(v0 + 96), v15, 0, *(v0 + 40), v13);
        sub_EC48(v37, v36);

        v44 = *(v41 + 8);
        v44(v40, v42);
        v44(v46, v42);
        sub_C620(v45, v43, v47);

        (*(v39 + 8))(v38, v50);

        v28 = *(v0 + 8);
        goto LABEL_16;
      }

      v31 = *(v0 + 192);
      v32 = *(v0 + 196);
      v33 = __OFSUB__(v32, v31);
      v34 = v32 - v31;
      if (v33)
      {
        __break(1u);
        return result;
      }

      v15 = v34;
      goto LABEL_15;
    }
  }

  else
  {
    v3 = -1;
  }

  v16 = *(v0 + 200);
  v17 = *(v0 + 208);
  v18 = *(v0 + 192);
  sub_EA5C();
  swift_allocError();
  *v19 = v3;
  *(v19 + 8) = 0;
  swift_willThrow();
  sub_EC48(v18, v16);

  v20 = *(v0 + 168);
  v21 = *(v0 + 176);
  v22 = *(v0 + 152);
  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v49 = *(v0 + 112);
  v51 = *(v0 + 104);
  v53 = *(v0 + 96);
  v25 = *(v0 + 64);
  v26 = *(v0 + 72);
  v27 = *(v0 + 56);
  (*(*(v0 + 88) + 8))(*(v0 + 120), *(v0 + 80));
  sub_C620(v26, v27, v25);

  (*(v23 + 8))(v20, v22);

  v28 = *(v0 + 8);
LABEL_16:

  return v28();
}

uint64_t sub_C410()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];
  v6 = v0[14];
  v12 = v0[13];
  v13 = v0[12];
  v14 = v0[27];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[7];
  (*(v0[11] + 8))(v0[15], v0[10]);
  sub_C620(v8, v9, v7);

  (*(v4 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_C528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_E550(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_26C8(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_E6C8();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_E3A0(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_C620(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_32BD4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  sub_C528(0, a2, a3);
  swift_endAccess();
  v10 = sub_2167C();
  (*(v6 + 16))(v9, v10, v5);

  v11 = sub_32BB4();
  v12 = sub_33434();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_D148(a2, a3, &v17);
    _os_log_impl(&dword_0, v11, v12, "Cleaning up test for %{public}s", v13, 0xCu);
    sub_3364(v14);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_C824(uint64_t a1, unint64_t a2)
{
  v5 = sub_32BD4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v28 - v11;
  swift_beginAccess();
  v13 = *(v2 + 16);
  if (*(v13 + 16))
  {

    v14 = sub_26C8(a1, a2);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 8 * v14);

      [v16 invalidateAndCancel];
      v17 = sub_2167C();
      (*(v6 + 16))(v12, v17, v5);

      v18 = sub_32BB4();
      v19 = sub_33434();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v28 = v21;
        *v20 = 136446210;
        *(v20 + 4) = sub_D148(a1, a2, &v28);
        _os_log_impl(&dword_0, v18, v19, "Download Test cancelled for %{public}s", v20, 0xCu);
        sub_3364(v21);
      }

      return (*(v6 + 8))(v12, v5);
    }
  }

  v23 = sub_2167C();
  (*(v6 + 16))(v10, v23, v5);

  v24 = sub_32BB4();
  v25 = sub_33434();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_D148(a1, a2, &v28);
    _os_log_impl(&dword_0, v24, v25, "Unable to cancel, no session found for host port: %{public}s", v26, 0xCu);
    sub_3364(v27);
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_CB70()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_CB98()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocClassInstance(v0, 40, 7);
}

void *sub_CBD8()
{
  v0 = swift_allocObject();
  v0[2] = sub_E900(&_swiftEmptyArrayStorage);
  v0[3] = 0xD000000000000079;
  v0[4] = 0x800000000003ADD0;
  return v0;
}

void *sub_CC38()
{
  v0[2] = sub_E900(&_swiftEmptyArrayStorage);
  v0[3] = 0xD000000000000079;
  v0[4] = 0x800000000003ADD0;
  return v0;
}

void *sub_CC7C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v7 = sub_333A4();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_D03C(0, 1, 1, &_swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_D03C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = &_swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_33384();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_332F4();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_332F4();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_333A4();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_D03C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_333A4();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_D03C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_D03C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_332F4();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_D03C(char *result, int64_t a2, char a3, char *a4)
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
    sub_279C(&qword_45708, &qword_34270);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_D148(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_D214(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2740(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_3364(v11);
  return v7;
}

unint64_t sub_D214(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_D320(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_335A4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_D320(uint64_t a1, unint64_t a2)
{
  v4 = sub_D36C(a1, a2);
  sub_D49C(&off_41400);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_D36C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_D588(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_335A4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_33324();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_D588(v10, 0);
        result = sub_33574();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_D49C(uint64_t result)
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
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

  result = sub_D5FC(result, v12, 1, v3);
  v3 = result;
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_D588(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_279C(&qword_456F0, &qword_35A40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_D5FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_279C(&qword_456F0, &qword_35A40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unsigned __int8 *sub_D6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_EC9C();

  result = sub_33394();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_DC88();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_335A4();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
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

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_DC88()
{
  v0 = sub_333A4();
  v4 = sub_DD08(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_DD08(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_332D4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_334C4();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_D588(v9, 0);
  v12 = sub_DE60(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_332D4();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_335A4();
LABEL_4:

  return sub_332D4();
}

unint64_t sub_DE60(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_E080(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_33364();
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
          result = sub_335A4();
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

    result = sub_E080(v12, a6, a7);
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

    result = sub_33334();
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

uint64_t sub_E080(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_33374();
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
    v5 = sub_33344();
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

uint64_t sub_E0FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_279C(&qword_456F8, &qword_34268);
  v39 = a2;
  result = sub_335E4();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_336C4();
      sub_332E4();
      result = sub_336E4();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_E3A0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_33504() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_336C4();

      sub_332E4();
      v13 = sub_336E4();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_E550(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26C8(a2, a3);
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
      sub_E0FC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_26C8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_33664();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_E6C8();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

id sub_E6C8()
{
  v1 = v0;
  sub_279C(&qword_456F8, &qword_34268);
  v2 = *v0;
  v3 = sub_335D4();
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

        result = v20;
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

uint64_t sub_E834(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_335A4();
  }

  result = sub_ECF0(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_E900(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_279C(&qword_456F8, &qword_34268);
    v3 = sub_335F4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_26C8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_EA04(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_33644() & 1;
  }
}

unint64_t sub_EA5C()
{
  result = qword_45610;
  if (!qword_45610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45610);
  }

  return result;
}

uint64_t sub_EAB0(uint64_t a1)
{
  v2 = type metadata accessor for PerformanceResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_EB0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PerformanceResult();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t initializeBufferWithCopyOfBuffer for DownloadTester.Errors(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DownloadTester.Errors(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DownloadTester.Errors(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_EBFC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_EC18(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_EC48(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_EC9C()
{
  result = qword_45700;
  if (!qword_45700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45700);
  }

  return result;
}

uint64_t sub_ECF0(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_E080(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_33354();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_E080(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_E080(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_33354();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_F160@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_32AC4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_F1C8()
{
  v1 = (v0 + *(type metadata accessor for AddressRange() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for AddressRange()
{
  result = qword_46D50;
  if (!qword_46D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_F254()
{
  v1 = (v0 + *(type metadata accessor for AddressRange() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_F294()
{
  v1 = (v0 + *(type metadata accessor for AddressRange() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

int *sub_F2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_32AB4();
  result = type metadata accessor for AddressRange();
  v15 = (a7 + result[5]);
  *v15 = a1;
  v15[1] = a2;
  v16 = (a7 + result[6]);
  *v16 = a3;
  v16[1] = a4;
  v17 = (a7 + result[7]);
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t sub_F354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AddressRange();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_32AB4();
  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  v9 = sub_26C8(0x7472617473, 0xE500000000000000);
  if ((v10 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_F670(*(a1 + 56) + 32 * v9, &v28);
  v30 = v28;
  v31 = v29;
  if (*(&v29 + 1))
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_18:

      goto LABEL_19;
    }

    v11 = v27;
    if (*(a1 + 16))
    {
      v12 = v26;
      v13 = sub_26C8(6581861, 0xE300000000000000);
      if (v14)
      {
        sub_F670(*(a1 + 56) + 32 * v13, &v28);
        v30 = v28;
        v31 = v29;
        if (!*(&v29 + 1))
        {
LABEL_16:

          goto LABEL_14;
        }

        if (swift_dynamicCast())
        {
          v15 = v27;
          if (!*(a1 + 16) || (v16 = v26, v17 = sub_26C8(0x656372756F73, 0xE600000000000000), (v18 & 1) == 0))
          {

            goto LABEL_18;
          }

          sub_F670(*(a1 + 56) + 32 * v17, &v28);

          v30 = v28;
          v31 = v29;
          if (*(&v29 + 1))
          {
            if (swift_dynamicCast())
            {
              v19 = v26;
              v20 = v27;
              v21 = &v8[v4[5]];
              *v21 = v12;
              *(v21 + 1) = v11;
              v22 = &v8[v4[6]];
              *v22 = v16;
              *(v22 + 1) = v15;
              v23 = &v8[v4[7]];
              *v23 = v19;
              *(v23 + 1) = v20;
              sub_F748(v8, a2);
              (*(v5 + 56))(a2, 0, 1, v4);
              return sub_F7AC(v8);
            }

            goto LABEL_15;
          }

          goto LABEL_16;
        }
      }
    }

LABEL_15:

    goto LABEL_18;
  }

LABEL_14:

  sub_F6E0(&v30);
LABEL_19:
  v25 = sub_32AC4();
  (*(*(v25 - 8) + 8))(v8, v25);
  return (*(v5 + 56))(a2, 1, 1, v4);
}

uint64_t sub_F670(uint64_t a1, uint64_t a2)
{
  v4 = sub_279C(&qword_45710, &qword_34278);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F6E0(uint64_t a1)
{
  v2 = sub_279C(&qword_45710, &qword_34278);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddressRange();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F7AC(uint64_t a1)
{
  v2 = type metadata accessor for AddressRange();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_F80C()
{
  result = qword_45718;
  if (!qword_45718)
  {
    sub_32AC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45718);
  }

  return result;
}

uint64_t sub_F878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_32AC4();
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

uint64_t sub_F94C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_32AC4();
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

uint64_t sub_FA08()
{
  result = sub_32AC4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_FA84()
{
  sub_279C(&qword_457A8, &qword_342E0);
  sub_33114();
  return v1;
}

void (*sub_FB28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x48uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 19) = a5 & 1;
  *(v9 + 48) = a3;
  *(v9 + 56) = a4;
  *v9 = a3;
  *(v9 + 8) = a4;
  *(v9 + 16) = a5 & 1;

  *(v10 + 64) = sub_279C(&qword_457A8, &qword_342E0);
  sub_33114();
  return sub_FBF0;
}

void sub_FBF0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v4 = *(*a1 + 56);
  v3 = *(*a1 + 64);
  *(*a1 + 24) = *(*a1 + 48);
  v5 = *(v1 + 19);
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 18) = v2;
  sub_33124();

  free(v1);
}

uint64_t sub_FC68()
{
  sub_279C(&qword_457A8, &qword_342E0);
  sub_33134();
  return v1;
}

double sub_FCBC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_32E94();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = a2 + *(sub_279C(&qword_457B0, &qword_342E8) + 44);
  v5 = sub_32E94();
  v6 = *(a1 + 32);
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = 0;
  v7 = v4 + *(sub_279C(&qword_457B8, &qword_342F0) + 44);
  sub_FDA8(a1);
  v8 = sub_32EE4();
  v9 = a2 + *(sub_279C(&qword_457C0, &qword_342F8) + 36);
  *v9 = v8;
  result = 0.0;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 1;
  return result;
}

uint64_t sub_FDA8(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  LODWORD(v260) = v2;
  v4 = v3;
  v6 = v5;
  v7 = v1;
  v218 = v8;
  v9 = sub_279C(&qword_45800, &qword_34440);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v253 = &v197[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v257 = &v197[-v13];
  v14 = sub_279C(&qword_45808, &qword_34448);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v251 = &v197[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v258 = &v197[-v18];
  v19 = sub_279C(&qword_45810, &qword_34450);
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = __chkstk_darwin(v19);
  v24 = &v197[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v26 = &v197[-v25];
  v27 = sub_279C(&qword_45818, &qword_34458);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v250 = &v197[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29);
  v32 = &v197[-v31];
  *v32 = sub_32E14();
  *(v32 + 1) = 0;
  v32[16] = 1;
  v252 = v32;
  v33 = &v32[*(sub_279C(&qword_45820, &qword_34460) + 44)];
  v34 = swift_allocObject();
  *(v34 + 16) = v7;
  *(v34 + 24) = v6;
  *(v34 + 32) = v4;
  v35 = v260;
  *(v34 + 40) = v260;
  v261 = v7;
  v262 = v6;
  v263 = v4;
  v264 = v35;

  sub_33104();
  v36 = v20[2];
  v36(v24, v26, v19);
  *v33 = 0;
  v33[8] = 1;
  v37 = sub_279C(&qword_45828, &qword_34468);
  v36(&v33[*(v37 + 48)], v24, v19);
  v38 = v20[1];
  v38(v26, v19);
  v38(v24, v19);
  v39 = sub_32E14();
  v40 = v258;
  *v258 = v39;
  v40[1] = 0;
  *(v40 + 16) = 1;
  v41 = v40 + *(sub_279C(&qword_45830, &qword_34470) + 44);
  *&v259 = v7;
  sub_119F0(v7, v41);
  v42 = v7[15];
  v271 = v7[14];
  v272 = v42;
  v260 = sub_1288C();

  v43 = sub_32FE4();
  v45 = v44;
  LOBYTE(v7) = v46;
  sub_32F44();
  v47 = sub_32FC4();
  v49 = v48;
  LOBYTE(v20) = v50;

  sub_128E0(v43, v45, v7 & 1);

  v51 = sub_32FB4();
  v215 = v52;
  v216 = v51;
  v217 = v53;
  v249 = v54;
  sub_128E0(v47, v49, v20 & 1);

  KeyPath = swift_getKeyPath();
  v55 = sub_32EA4();
  v56 = v259;
  v57 = *(v259 + 24);
  v58 = v257;
  *v257 = v55;
  v58[1] = v57;
  *(v58 + 16) = 0;
  v59 = v58;
  v60 = sub_279C(&qword_45840, &qword_344A8);
  sub_11DC4(v56, (v59 + *(v60 + 44)));
  v61 = sub_32EA4();
  v212 = v56[2];
  v213 = v61;
  v266 = 0;
  v62 = *(v56 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_statusIndicatorsTitle + 8);
  v271 = *(v56 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_statusIndicatorsTitle);
  v272 = v62;

  v63 = sub_32FE4();
  v65 = v64;
  LOBYTE(v7) = v66;
  sub_32F24();
  v67 = sub_32FC4();
  v69 = v68;
  LOBYTE(v20) = v70;

  sub_128E0(v63, v65, v7 & 1);

  v71 = sub_32FB4();
  v246 = v72;
  v247 = v71;
  LOBYTE(v63) = v73;
  v248 = v74;
  sub_128E0(v67, v69, v20 & 1);

  v244 = swift_getKeyPath();
  v245 = sub_32F04();
  v75 = v259;
  v76 = *(v259 + 48);
  sub_32CC4();
  v78 = v77;
  v208 = v79;
  v209 = v77;
  v80 = v79;
  v233 = v81;
  v234 = v82;
  v241 = v63 & 1;
  v270[0] = v63 & 1;
  LOBYTE(v268[0]) = 0;
  v243 = sub_32EF4();
  v83 = *(v75 + 56);
  sub_32CC4();
  v231 = v84;
  v232 = v85;
  v224 = v86;
  v242 = v87;
  LOBYTE(v271) = 0;
  v240 = sub_32E14();
  LOBYTE(v268[0]) = 1;
  v254 = sub_33094();
  v255 = sub_32F64();
  v239 = swift_getKeyPath();
  v271 = sub_33054();
  v256 = sub_12A04();
  v238 = sub_33084();
  v88 = *(v75 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_reachableLabelTitle + 8);
  v271 = *(v75 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_reachableLabelTitle);
  v272 = v88;

  v89 = sub_32FE4();
  v91 = v90;
  LOBYTE(v63) = v92;
  sub_32F54();
  v93 = sub_32FC4();
  v95 = v94;
  LOBYTE(v75) = v96;
  v98 = v97;

  sub_128E0(v89, v91, v63 & 1);

  LOBYTE(v89) = v75 & 1;
  LOBYTE(v271) = v75 & 1;
  v99 = v254;

  v100 = v239;

  v101 = v255;

  v102 = v238;

  sub_12948(v93, v95, v89);

  sub_128E0(v93, v95, v89);

  *(&v299 + 1) = *v270;
  DWORD1(v299) = *&v270[3];
  *&v296 = v99;
  *(&v296 + 1) = v100;
  *&v297 = v101;
  *(&v297 + 1) = v102;
  *&v298 = v93;
  *(&v298 + 1) = v95;
  LOBYTE(v299) = v89;
  *(&v299 + 1) = v98;
  v300[0] = v99;
  v300[1] = v100;
  v300[2] = v101;
  v300[3] = v102;
  v300[4] = v93;
  v300[5] = v95;
  v301 = v89;
  *&v302[3] = *&v270[3];
  *v302 = *v270;
  v303 = v98;
  sub_33C4(&v296, &v271, &qword_45860, &qword_344C8);
  sub_93EC(v300, &qword_45860, &qword_344C8);
  *(v290 + 7) = v296;
  *(&v290[1] + 7) = v297;
  *(&v290[2] + 7) = v298;
  *(&v290[3] + 7) = v299;
  LODWORD(v239) = LOBYTE(v268[0]);
  v103 = v259;
  v104 = *(v259 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_reachableLabelDescription + 8);
  v271 = *(v259 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_reachableLabelDescription);
  v272 = v104;

  v105 = sub_32FE4();
  v107 = v106;
  LOBYTE(v98) = v108;
  sub_32F64();
  v109 = sub_32FC4();
  v236 = v110;
  v237 = v109;
  LOBYTE(v95) = v111;
  v238 = v112;

  sub_128E0(v105, v107, v98 & 1);

  v230 = swift_getKeyPath();
  v235 = sub_32F04();
  v113 = *(v103 + 40);
  sub_32CC4();
  v115 = v114;
  v117 = v116;
  v210 = v119;
  v211 = v118;
  v229 = v95 & 1;
  LOBYTE(v271) = v95 & 1;
  v270[0] = 0;
  v228 = sub_32E14();
  LOBYTE(v268[0]) = 1;
  v254 = sub_33094();
  v255 = sub_32F64();
  v227 = swift_getKeyPath();
  v271 = sub_33034();
  v256 = sub_33084();
  v120 = *(v103 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_unreachableLabelTitle + 8);
  v271 = *(v103 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_unreachableLabelTitle);
  v272 = v120;

  v121 = sub_32FE4();
  v123 = v122;
  LOBYTE(v102) = v124;
  sub_32F54();
  v125 = sub_32FC4();
  v127 = v126;
  LOBYTE(v93) = v128;
  v130 = v129;

  sub_128E0(v121, v123, v102 & 1);

  LOBYTE(v121) = v93 & 1;
  LOBYTE(v271) = v93 & 1;
  v131 = v254;

  v132 = v227;

  v133 = v255;

  v134 = v256;

  sub_12948(v125, v127, v121);

  sub_128E0(v125, v127, v121);

  *(&v307 + 1) = *v270;
  DWORD1(v307) = *&v270[3];
  *&v304 = v131;
  *(&v304 + 1) = v132;
  *&v305 = v133;
  *(&v305 + 1) = v134;
  *&v306 = v125;
  *(&v306 + 1) = v127;
  LOBYTE(v307) = v121;
  *(&v307 + 1) = v130;
  v308[0] = v131;
  v308[1] = v132;
  v308[2] = v133;
  v308[3] = v134;
  v308[4] = v125;
  v308[5] = v127;
  v309 = v121;
  *&v310[3] = *&v270[3];
  *v310 = *v270;
  v311 = v130;
  sub_33C4(&v304, &v271, &qword_45860, &qword_344C8);
  sub_93EC(v308, &qword_45860, &qword_344C8);
  *&v286[7] = v304;
  *&v286[23] = v305;
  *&v286[39] = v306;
  *&v286[55] = v307;
  LODWORD(v227) = LOBYTE(v268[0]);
  v135 = v259;
  v136 = *(v259 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_unreachableLabelDescription + 8);
  v271 = *(v259 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_unreachableLabelDescription);
  v272 = v136;

  v137 = sub_32FE4();
  v139 = v138;
  LOBYTE(v133) = v140;
  sub_32F64();
  v220 = sub_32FC4();
  v225 = v141;
  v226 = v142;
  LOBYTE(v125) = v143;

  sub_128E0(v137, v139, v133 & 1);

  v223 = swift_getKeyPath();
  v222 = sub_32F04();
  sub_32CC4();
  v145 = v144;
  v201 = v146;
  v202 = v144;
  v205 = v148;
  v206 = v147;
  v149 = v146;
  v221 = v125 & 1;
  LOBYTE(v271) = v125 & 1;
  v270[0] = 0;
  v207 = sub_32E14();
  v270[0] = 1;
  v150 = sub_33094();
  v255 = sub_32F64();
  v256 = swift_getKeyPath();
  v151 = *(v135 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_favoredLabelTitle + 8);
  v271 = *(v135 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_favoredLabelTitle);
  v272 = v151;

  v152 = sub_32FE4();
  v154 = v153;
  LOBYTE(v132) = v155;
  sub_32F54();
  v156 = sub_32FC4();
  v158 = v157;
  LOBYTE(v121) = v159;
  v254 = v160;

  sub_128E0(v152, v154, v132 & 1);

  v280 = v121 & 1;

  v219 = v156;
  v204 = v158;
  sub_12948(v156, v158, v121 & 1);

  sub_128E0(v156, v158, v121 & 1);

  v199 = v150;

  v203 = v270[0];
  LOBYTE(v125) = v280;
  v198 = v280;
  v161 = *(v259 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_favoredLabelDescription + 8);
  v271 = *(v259 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_favoredLabelDescription);
  v272 = v161;

  v162 = sub_32FE4();
  v164 = v163;
  LOBYTE(v132) = v165;
  sub_32F64();
  v260 = sub_32FC4();
  v167 = v166;
  v200 = v168;
  v170 = v169;

  sub_128E0(v162, v164, v132 & 1);

  v171 = swift_getKeyPath();
  LOBYTE(v162) = sub_32F04();
  sub_32CC4();
  *v270 = v247;
  *&v270[8] = v246;
  v270[16] = v241;
  *&v270[17] = *v293;
  *&v270[20] = *&v293[3];
  *&v270[24] = v248;
  *&v270[32] = v244;
  v270[40] = 1;
  *&v270[44] = *&v292[3];
  *&v270[41] = *v292;
  v270[48] = v245;
  *&v270[52] = *&v291[3];
  *&v270[49] = *v291;
  *&v270[56] = v78;
  *&v270[64] = v80;
  *&v270[72] = v233;
  *&v270[80] = v234;
  v270[88] = 0;
  *&v270[92] = *&v295[3];
  *&v270[89] = *v295;
  v270[96] = v243;
  *&v270[100] = *&v294[3];
  *&v270[97] = *v294;
  *&v270[104] = v231;
  *&v270[112] = v224;
  *&v270[120] = v232;
  *&v270[128] = v242;
  v270[136] = 0;
  v259 = *v270;
  *&v313[49] = v290[3];
  *&v313[64] = *(&v290[3] + 15);
  DWORD1(v315) = *&v289[3];
  *(&v315 + 1) = *v289;
  HIDWORD(v316) = *&v288[3];
  *(&v316 + 9) = *v288;
  v312[0] = v240;
  v312[1] = 0;
  v313[0] = v239;
  *&v313[1] = v290[0];
  *&v313[17] = v290[1];
  *&v313[33] = v290[2];
  *(&v314 + 1) = v236;
  LOBYTE(v315) = v229;
  *(&v315 + 1) = v238;
  *&v316 = v230;
  BYTE8(v316) = 1;
  LOBYTE(v317) = v235;
  DWORD1(v317) = *&v287[3];
  *(&v317 + 1) = *v287;
  *(&v317 + 1) = v115;
  *&v318[0] = v117;
  v173 = v210;
  v172 = v211;
  *(&v318[0] + 1) = v211;
  *&v318[1] = v210;
  BYTE8(v318[1]) = 0;
  *(&v276[19] + 1) = *(v318 + 9);
  *(&v276[17] + 8) = v317;
  *(&v276[18] + 8) = v318[0];
  *(&v276[16] + 8) = v316;
  v319[0] = v228;
  v319[1] = 0;
  v320[0] = v227;
  *&v320[1] = *v286;
  *&v320[64] = *&v286[63];
  *&v320[49] = *&v286[48];
  *&v320[33] = *&v286[32];
  *&v320[17] = *&v286[16];
  *(&v276[20] + 8) = v228;
  *(&v276[21] + 8) = *v320;
  *(&v276[23] + 8) = *&v320[32];
  *(&v276[24] + 8) = *&v320[48];
  *(&v276[22] + 8) = *&v320[16];
  *&v276[14] = *(&v290[3] + 15);
  *(&v276[25] + 1) = *&v320[64];
  *(&v321 + 1) = v225;
  DWORD1(v322) = *&v285[3];
  *(&v322 + 1) = *v285;
  *(&v322 + 1) = v226;
  *&v323 = v223;
  HIDWORD(v323) = *&v284[3];
  *(&v323 + 9) = *v284;
  DWORD1(v324) = *&v283[3];
  *(&v324 + 1) = *v283;
  *(&v324 + 1) = v145;
  v174 = v206;
  *&v325[0] = v206;
  *(&v325[0] + 1) = v149;
  v175 = v205;
  *&v325[1] = v205;
  BYTE8(v325[1]) = 0;
  *(&v276[30] + 9) = *(v325 + 9);
  DWORD1(v327) = *(v282 + 3);
  *(&v327 + 1) = v282[0];
  DWORD1(v330) = *&v281[3];
  *(&v330 + 1) = *v281;
  DWORD1(v332) = *&v279[3];
  HIDWORD(v333) = *&v278[3];
  DWORD1(v334) = *&v277[3];
  *&v314 = v237;
  *(&v276[7] + 9) = *&v270[121];
  *(&v276[15] + 8) = v315;
  *(&v276[14] + 8) = v314;
  *(&v331 + 1) = v167;
  LOBYTE(v332) = v200 & 1;
  v176 = v170;
  *(&v332 + 1) = v170;
  *&v333 = v171;
  *(&v334 + 1) = v177;
  *&v335[0] = v178;
  *(&v335[0] + 1) = v179;
  *&v335[1] = v180;
  BYTE8(v335[1]) = 0;
  *(&v276[41] + 9) = *(v335 + 9);
  *&v321 = v220;
  LOBYTE(v322) = v221;
  BYTE8(v323) = 1;
  LOBYTE(v324) = v222;
  v181 = v207;
  v326[0] = v207;
  v326[1] = 0;
  LOBYTE(v170) = v203;
  LOBYTE(v327) = v203;
  *(&v327 + 1) = v150;
  *&v328 = v256;
  *(&v328 + 1) = v255;
  *&v329 = v219;
  v182 = v204;
  *(&v329 + 1) = v204;
  LOBYTE(v330) = v125;
  *(&v330 + 1) = v254;
  *(&v332 + 1) = *v279;
  *(&v333 + 9) = *v278;
  *(&v334 + 1) = *v277;
  *&v331 = v260;
  v336[0] = v260;
  v336[1] = v167;
  LOBYTE(v271) = v200 & 1;
  v337 = v200 & 1;
  *&v338[3] = *&v279[3];
  *v338 = *v279;
  v339 = v176;
  v340 = v171;
  *&v342[3] = *&v278[3];
  *v342 = *v278;
  LOBYTE(v334) = v162;
  v343 = v162;
  *&v344[3] = *&v277[3];
  *v344 = *v277;
  v276[3] = *&v270[48];
  v276[2] = *&v270[32];
  v276[0] = *v270;
  v276[1] = *&v270[16];
  v276[7] = *&v270[112];
  v276[6] = *&v270[96];
  v276[4] = *&v270[64];
  v276[5] = *&v270[80];
  v276[9] = v240;
  v276[10] = *v313;
  v276[13] = *&v313[48];
  v276[12] = *&v313[32];
  v276[11] = *&v313[16];
  v276[27] = v322;
  v276[26] = v321;
  v276[29] = v324;
  v276[28] = v323;
  v276[30] = v325[0];
  v276[32] = v207;
  v276[36] = v330;
  v276[35] = v329;
  v276[34] = v328;
  v276[33] = v327;
  BYTE8(v333) = 1;
  v276[38] = v332;
  v276[37] = v331;
  v276[41] = v335[0];
  v276[40] = v334;
  v276[39] = v333;
  v275 = 1;
  v341 = 1;
  v345 = v177;
  v346 = v178;
  v347 = v179;
  v348 = v180;
  v349 = 0;
  sub_33C4(v270, &v271, &qword_45868, &qword_344D0);
  sub_33C4(v312, &v271, &qword_45870, &qword_344D8);
  sub_33C4(&v314, &v271, &qword_45878, &qword_344E0);
  sub_33C4(v319, &v271, &qword_45870, &qword_344D8);
  sub_33C4(&v321, &v271, &qword_45878, &qword_344E0);
  sub_33C4(v326, &v271, &qword_45880, &qword_344E8);
  sub_33C4(&v331, &v271, &qword_45878, &qword_344E0);
  sub_93EC(v336, &qword_45878, &qword_344E0);
  v350[0] = v181;
  v350[1] = 0;
  v351 = v170;
  *v352 = v282[0];
  *&v352[3] = *(v282 + 3);
  v353 = v199;
  v354 = v256;
  v355 = v255;
  v356 = v219;
  v357 = v182;
  v358 = v198;
  *v359 = *v281;
  *&v359[3] = *&v281[3];
  v360 = v254;
  sub_93EC(v350, &qword_45880, &qword_344E8);
  v267[0] = v220;
  v267[1] = v225;
  LOBYTE(v267[2]) = v221;
  *(&v267[2] + 1) = *v285;
  HIDWORD(v267[2]) = *&v285[3];
  v267[3] = v226;
  v267[4] = v223;
  LOBYTE(v267[5]) = 1;
  *(&v267[5] + 1) = *v284;
  HIDWORD(v267[5]) = *&v284[3];
  LOBYTE(v267[6]) = v222;
  *(&v267[6] + 1) = *v283;
  HIDWORD(v267[6]) = *&v283[3];
  v267[7] = v202;
  v267[8] = v174;
  v267[9] = v201;
  v267[10] = v175;
  LOBYTE(v267[11]) = 0;
  sub_93EC(v267, &qword_45878, &qword_344E0);
  v361[0] = v228;
  v361[1] = 0;
  v362 = v227;
  v364 = *&v286[16];
  v365 = *&v286[32];
  *v366 = *&v286[48];
  *&v366[15] = *&v286[63];
  v363 = *v286;
  sub_93EC(v361, &qword_45870, &qword_344D8);
  v268[0] = v237;
  v268[1] = v236;
  LOBYTE(v268[2]) = v229;
  *(&v268[2] + 1) = *v289;
  HIDWORD(v268[2]) = *&v289[3];
  v268[3] = v238;
  v268[4] = v230;
  LOBYTE(v268[5]) = 1;
  *(&v268[5] + 1) = *v288;
  HIDWORD(v268[5]) = *&v288[3];
  LOBYTE(v268[6]) = v235;
  *(&v268[6] + 1) = *v287;
  HIDWORD(v268[6]) = *&v287[3];
  v268[7] = v115;
  v268[8] = v117;
  v268[9] = v172;
  v268[10] = v173;
  LOBYTE(v268[11]) = 0;
  sub_93EC(v268, &qword_45878, &qword_344E0);
  v367[0] = v240;
  v367[1] = 0;
  v368 = v239;
  v370 = v290[1];
  v371 = v290[2];
  v372[0] = v290[3];
  *(v372 + 15) = *(&v290[3] + 15);
  v369 = v290[0];
  sub_93EC(v367, &qword_45870, &qword_344D8);
  v271 = v247;
  v272 = v246;
  v273 = v241;
  v274[0] = *v293;
  *(v274 + 3) = *&v293[3];
  *(&v274[1] + 3) = v248;
  *(&v274[3] + 3) = v244;
  HIBYTE(v274[5]) = 1;
  v274[6] = *v292;
  *(&v274[6] + 3) = *&v292[3];
  HIBYTE(v274[7]) = v245;
  v274[8] = *v291;
  *(&v274[8] + 3) = *&v291[3];
  *(&v274[9] + 3) = v209;
  *(&v274[11] + 3) = v208;
  *(&v274[13] + 3) = v233;
  *(&v274[15] + 3) = v234;
  HIBYTE(v274[17]) = 0;
  *(&v274[18] + 3) = *&v295[3];
  v274[18] = *v295;
  HIBYTE(v274[19]) = v243;
  *(&v274[20] + 3) = *&v294[3];
  v274[20] = *v294;
  *(&v274[21] + 3) = v231;
  *(&v274[23] + 3) = v224;
  *(&v274[25] + 3) = v232;
  *(&v274[27] + 3) = v242;
  HIBYTE(v274[29]) = 0;
  sub_93EC(&v271, &qword_45868, &qword_344D0);
  memcpy(v267, v276, 0x2B0uLL);
  v267[86] = 0;
  LOBYTE(v267[87]) = 1;
  memcpy(v268, v276, 0x2B0uLL);
  v268[86] = 0;
  v269 = 1;
  sub_33C4(v267, &v271, &qword_45848, &qword_344B0);
  sub_93EC(v268, &qword_45848, &qword_344B0);
  memcpy(&v265[7], v267, 0x2B9uLL);
  LODWORD(v260) = v266;
  v183 = v250;
  sub_33C4(v252, v250, &qword_45818, &qword_34458);
  v184 = v251;
  sub_33C4(v258, v251, &qword_45808, &qword_34448);
  v185 = v253;
  sub_33C4(v257, v253, &qword_45800, &qword_34440);
  v186 = v183;
  v187 = v218;
  sub_33C4(v186, v218, &qword_45818, &qword_34458);
  v188 = sub_279C(&qword_45850, &qword_344B8);
  sub_33C4(v184, v187 + v188[12], &qword_45808, &qword_34448);
  v189 = v187 + v188[16];
  v190 = v215;
  v191 = v216;
  *v189 = v216;
  *(v189 + 8) = v190;
  LODWORD(v184) = v217 & 1;
  *(v189 + 16) = v184;
  LODWORD(v259) = v184;
  v192 = KeyPath;
  *(v189 + 24) = v249;
  *(v189 + 32) = v192;
  *(v189 + 40) = 1;
  sub_33C4(v185, v187 + v188[20], &qword_45800, &qword_34440);
  v193 = v188[24];
  v194 = v212;
  v195 = v213;
  *v270 = v213;
  *&v270[8] = v212;
  v270[16] = v260;
  memcpy(&v270[17], v265, 0x2C0uLL);
  memcpy((v187 + v193), v270, 0x2D1uLL);
  sub_12948(v191, v190, v184);

  sub_33C4(v270, &v271, &qword_45858, &qword_344C0);
  sub_93EC(v257, &qword_45800, &qword_34440);
  sub_93EC(v258, &qword_45808, &qword_34448);
  sub_93EC(v252, &qword_45818, &qword_34458);
  v271 = v195;
  v272 = v194;
  v273 = v260;
  memcpy(v274, v265, sizeof(v274));
  sub_93EC(&v271, &qword_45858, &qword_344C0);
  sub_93EC(v253, &qword_45800, &qword_34440);
  sub_128E0(v191, v190, v259);

  sub_93EC(v251, &qword_45808, &qword_34448);
  return sub_93EC(v250, &qword_45818, &qword_34458);
}

uint64_t sub_119F0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_330A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[8];
  v10 = *(sub_32D64() + 20);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = sub_32E84();
  (*(*(v12 - 8) + 104))(&a2[v10], v11, v12);
  *a2 = v9;
  *(a2 + 1) = v9;
  v13 = sub_33044();
  v14 = sub_279C(&qword_458A8, &qword_34568);
  *&a2[*(v14 + 52)] = v13;
  *&a2[*(v14 + 56)] = 256;
  v15 = a1[9];
  sub_33184();
  sub_32D04();
  v16 = &a2[*(sub_279C(&qword_458B0, &qword_34570) + 36)];
  v45 = a2;
  v17 = v50;
  *v16 = v49;
  *(v16 + 1) = v17;
  *(v16 + 2) = v51;
  LOBYTE(v15) = sub_32EE4();
  v18 = a1[10];
  sub_32CC4();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = &a2[*(sub_279C(&qword_458B8, &qword_34578) + 36)];
  *v27 = v15;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  sub_33094();
  (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
  v28 = sub_330B4();

  (*(v5 + 8))(v8, v4);
  v29 = a1[11];
  sub_33184();
  sub_32D04();
  v30 = v52;
  LOBYTE(v10) = v53;
  v31 = v54;
  v32 = v55;
  v34 = v56;
  v33 = v57;
  v35 = sub_33184();
  v37 = v36;
  v48 = v10;
  v47 = v32;
  *&v58 = v28;
  *(&v58 + 1) = v30;
  LOBYTE(v59) = v10;
  *(&v59 + 1) = v31;
  LOBYTE(v60) = v32;
  *(&v60 + 1) = v34;
  *&v61 = v33;
  *(&v61 + 1) = v35;
  v62 = v36;
  v38 = sub_279C(&qword_458C0, &qword_34580);
  v39 = v45 + *(v38 + 36);
  v40 = v61;
  *(v39 + 2) = v60;
  *(v39 + 3) = v40;
  *(v39 + 8) = v62;
  v41 = v59;
  *v39 = v58;
  *(v39 + 1) = v41;
  v63[0] = v28;
  v63[1] = v30;
  v64 = v10;
  v65 = v31;
  v66 = v32;
  v67 = v34;
  v68 = v33;
  v69 = v35;
  v70 = v37;
  sub_33C4(&v58, v46, &qword_458C8, &qword_34588);
  sub_93EC(v63, &qword_458C8, &qword_34588);
  v46[0] = sub_33064();
  sub_12A04();
  v42 = sub_33084();
  result = sub_279C(&qword_458D0, &unk_34590);
  *(v45 + *(result + 36)) = v42;
  return result;
}

uint64_t sub_11DC4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v50 = a2;
  v49 = sub_32974();
  v47 = *(v49 - 8);
  v3 = *(v47 + 64);
  __chkstk_darwin(v49);
  v46 = &v39[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_279C(&qword_45890, &qword_34520);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5);
  v48 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v11 = &v39[-v10];
  v12 = a1[17];
  v56 = a1[16];
  v57 = v12;
  v42 = sub_1288C();

  v13 = sub_32FE4();
  v15 = v14;
  v17 = v16;
  sub_32F34();
  v44 = sub_32FC4();
  v43 = v18;
  v20 = v19;
  v45 = v21;

  sub_128E0(v13, v15, v17 & 1);

  KeyPath = swift_getKeyPath();
  v41 = KeyPath;
  v23 = swift_getKeyPath();
  LOBYTE(v56) = v20 & 1;
  v40 = v20 & 1;
  v24 = a1[19];
  v56 = a1[18];
  v57 = v24;
  (*(v47 + 16))(v46, a1 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_moreInfoURL, v49);

  sub_32F74();
  v25 = sub_32F54();
  v26 = swift_getKeyPath();
  v27 = &v11[*(v6 + 44)];
  *v27 = v26;
  v27[1] = v25;
  v28 = v48;
  sub_33C4(v11, v48, &qword_45890, &qword_34520);
  v29 = v44;
  v30 = v43;
  *&v53 = v44;
  *(&v53 + 1) = v43;
  LOBYTE(v54) = v20 & 1;
  *(&v54 + 1) = *v52;
  DWORD1(v54) = *&v52[3];
  v31 = v45;
  *(&v54 + 1) = v45;
  *v55 = KeyPath;
  v55[8] = 0;
  *&v55[12] = *&v51[3];
  *&v55[9] = *v51;
  *&v55[16] = v23;
  v55[24] = 1;
  v32 = v53;
  v33 = v54;
  v34 = *v55;
  v35 = v50;
  *(v50 + 41) = *&v55[9];
  v35[1] = v33;
  v35[2] = v34;
  *v35 = v32;
  v36 = v35;
  v37 = sub_279C(&qword_45898, &qword_34558);
  sub_33C4(v28, v36 + *(v37 + 48), &qword_45890, &qword_34520);
  sub_33C4(&v53, &v56, &qword_458A0, &qword_34560);
  sub_93EC(v11, &qword_45890, &qword_34520);
  sub_93EC(v28, &qword_45890, &qword_34520);
  v56 = v29;
  v57 = v30;
  v58 = v40;
  *v59 = *v52;
  *&v59[3] = *&v52[3];
  v60 = v31;
  v61 = v41;
  v62 = 0;
  *v63 = *v51;
  *&v63[3] = *&v51[3];
  v64 = v23;
  v65 = 1;
  return sub_93EC(&v56, &qword_458A0, &qword_34560);
}

double sub_12204@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  *a1 = sub_32E94();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v7 = a1 + *(sub_279C(&qword_457B0, &qword_342E8) + 44);
  v8 = sub_32E94();
  v9 = *(v3 + 32);
  *v7 = v8;
  *(v7 + 8) = v9;
  *(v7 + 16) = 0;
  v10 = v7 + *(sub_279C(&qword_457B8, &qword_342F0) + 44);
  sub_FDA8(v3);
  LOBYTE(v6) = sub_32EE4();
  v11 = a1 + *(sub_279C(&qword_457C0, &qword_342F8) + 36);
  *v11 = v6;
  result = 0.0;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  *(v11 + 40) = 1;
  return result;
}

uint64_t sub_122EC@<X0>(uint64_t a1@<X8>)
{
  LOBYTE(v4) = 1;
  sub_330C4();
  type metadata accessor for InfoViewModel();
  v2 = sub_30E5C();
  sub_279C(&qword_457C8, &qword_34300);
  sub_330F4();

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return result;
}

unint64_t sub_123B8()
{
  result = qword_457D0;
  if (!qword_457D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_457D0);
  }

  return result;
}

uint64_t sub_1242C(uint64_t a1)
{
  v2 = sub_126D0();

  return static PreviewProvider._previews.getter(a1, v2);
}

uint64_t sub_12478(uint64_t a1)
{
  v2 = sub_126D0();

  return static PreviewProvider._platform.getter(a1, v2);
}

__n128 sub_124C4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_124D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_12520(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_12588()
{
  result = qword_457D8;
  if (!qword_457D8)
  {
    sub_8BD0(&qword_457C0, &qword_342F8);
    sub_12614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_457D8);
  }

  return result;
}

unint64_t sub_12614()
{
  result = qword_457E0;
  if (!qword_457E0)
  {
    sub_8BD0(&qword_457E8, &qword_34438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_457E0);
  }

  return result;
}

unint64_t sub_1267C()
{
  result = qword_457F0;
  if (!qword_457F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_457F0);
  }

  return result;
}

unint64_t sub_126D0()
{
  result = qword_457F8;
  if (!qword_457F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_457F8);
  }

  return result;
}

uint64_t sub_12724()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1276C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  sub_279C(&qword_457A8, &qword_342E0);
  sub_33114();
  sub_33124();
}

uint64_t sub_1281C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v8 = *(v3 + 96);
  v9 = *(v3 + 104);
  sub_1288C();

  result = sub_32FE4();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

unint64_t sub_1288C()
{
  result = qword_45838;
  if (!qword_45838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45838);
  }

  return result;
}

uint64_t sub_128E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_128F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_32D94();
  *a1 = result & 1;
  return result;
}

uint64_t sub_12948(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_12958@<X0>(_BYTE *a1@<X8>)
{
  result = sub_32DB4();
  *a1 = result;
  return result;
}

uint64_t sub_129AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_32DD4();
  *a1 = result;
  return result;
}

uint64_t sub_129D8(uint64_t *a1)
{
  v1 = *a1;

  return sub_32DE4();
}

unint64_t sub_12A04()
{
  result = qword_45888;
  if (!qword_45888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45888);
  }

  return result;
}

uint64_t sub_12A64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_279C(&qword_458D8, &qword_345B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - v6;
  *v7 = sub_32E14();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = sub_279C(&qword_458E0, &qword_345B8);
  sub_12C24(v2, &v7[*(v8 + 44)]);
  sub_279C(&qword_458E8, &qword_345C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_345A0;
  v10 = sub_32EF4();
  *(inited + 32) = v10;
  v11 = sub_32F04();
  *(inited + 33) = v11;
  v12 = sub_32F14();
  sub_32F14();
  if (sub_32F14() != v10)
  {
    v12 = sub_32F14();
  }

  sub_32F14();
  if (sub_32F14() != v11)
  {
    v12 = sub_32F14();
  }

  sub_32CC4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_130EC(v7, a1);
  result = sub_279C(&qword_458F0, &qword_345C8);
  v22 = a1 + *(result + 36);
  *v22 = v12;
  *(v22 + 8) = v14;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_12C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_279C(&qword_459A0, &qword_346F0);
  v5 = *(v4 - 8);
  v64 = v4 - 8;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v75 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v57 - v9;
  v11 = type metadata accessor for AddressRange();
  v12 = (a1 + v11[5]);
  v13 = v12[1];
  v77 = *v12;
  v78 = v13;
  sub_1288C();

  v14 = sub_32FE4();
  v66 = v15;
  v67 = v14;
  v63 = v16;
  v68 = v17;
  KeyPath = swift_getKeyPath();
  sub_32E64();
  v18 = sub_32FD4();
  v61 = v19;
  v62 = v18;
  v60 = v20;
  v73 = v21;
  v74 = swift_getKeyPath();
  v22 = (a1 + v11[6]);
  v23 = v22[1];
  v77 = *v22;
  v78 = v23;

  v24 = sub_32FE4();
  v69 = v25;
  v70 = v24;
  v59 = v26;
  v72 = v27;
  v71 = swift_getKeyPath();
  v28 = (a1 + v11[7]);
  v29 = v28[1];
  v77 = *v28;
  v78 = v29;

  v30 = sub_32FE4();
  v32 = v31;
  LOBYTE(a1) = v33;
  v57 = v34;
  v35 = &v10[*(sub_279C(&qword_459A8, &qword_34728) + 36)];
  v36 = *(sub_279C(&qword_459B0, &qword_34730) + 28);
  v37 = enum case for Text.Case.uppercase(_:);
  v38 = sub_32FA4();
  v39 = *(v38 - 8);
  (*(v39 + 104))(v35 + v36, v37, v38);
  (*(v39 + 56))(v35 + v36, 0, 1, v38);
  *v35 = swift_getKeyPath();
  *v10 = v30;
  *(v10 + 1) = v32;
  v10[16] = a1 & 1;
  *(v10 + 3) = v57;
  LODWORD(v39) = sub_32ED4();
  *&v10[*(sub_279C(&qword_459B8, &qword_34768) + 36)] = v39;
  v40 = swift_getKeyPath();
  v41 = *(v64 + 44);
  v58 = v10;
  v42 = &v10[v41];
  *v42 = v40;
  v42[8] = 1;
  LOBYTE(v36) = v63 & 1;
  LOBYTE(v77) = v63 & 1;
  LOBYTE(v30) = v60 & 1;
  v76 = v60 & 1;
  v43 = v75;
  sub_33C4(v10, v75, &qword_459A0, &qword_346F0);
  v45 = v66;
  v44 = v67;
  *a2 = v67;
  *(a2 + 8) = v45;
  *(a2 + 16) = v36;
  v46 = KeyPath;
  *(a2 + 24) = v68;
  *(a2 + 32) = v46;
  *(a2 + 40) = 1;
  v48 = v61;
  v47 = v62;
  *(a2 + 48) = v62;
  *(a2 + 56) = v48;
  *(a2 + 64) = v30;
  v49 = v74;
  *(a2 + 72) = v73;
  *(a2 + 80) = v49;
  *(a2 + 88) = 1;
  v50 = v69;
  *(a2 + 96) = v70;
  *(a2 + 104) = v50;
  LODWORD(v64) = v59 & 1;
  *(a2 + 112) = v59 & 1;
  v51 = v71;
  *(a2 + 120) = v72;
  *(a2 + 128) = v51;
  *(a2 + 136) = 1;
  *(a2 + 144) = 0;
  *(a2 + 152) = 1;
  v52 = sub_279C(&qword_459C0, &qword_34770);
  sub_33C4(v43, a2 + *(v52 + 96), &qword_459A0, &qword_346F0);
  sub_12948(v44, v45, v36);

  v53 = v47;
  sub_12948(v47, v48, v30);

  v55 = v69;
  v54 = v70;
  LOBYTE(v47) = v64;
  sub_12948(v70, v69, v64);

  sub_13774(v58);
  sub_13774(v75);
  sub_128E0(v54, v55, v47);

  sub_128E0(v53, v48, v76);

  sub_128E0(v67, v66, v77);
}

uint64_t sub_130EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_279C(&qword_458D8, &qword_345B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_13164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddressRange();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_13230()
{
  result = qword_458F8;
  if (!qword_458F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_458F8);
  }

  return result;
}

uint64_t sub_132A0(uint64_t a1)
{
  v2 = sub_13654();

  return static PreviewProvider._previews.getter(a1, v2);
}

uint64_t sub_132EC(uint64_t a1)
{
  v2 = sub_13654();

  return static PreviewProvider._platform.getter(a1, v2);
}

uint64_t sub_1334C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddressRange();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_133CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddressRange();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for AddressRangeItemView()
{
  result = qword_47080;
  if (!qword_47080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_13488()
{
  result = type metadata accessor for AddressRange();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_13508()
{
  result = qword_45980;
  if (!qword_45980)
  {
    sub_8BD0(&qword_458F0, &qword_345C8);
    sub_13594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45980);
  }

  return result;
}

unint64_t sub_13594()
{
  result = qword_45988;
  if (!qword_45988)
  {
    sub_8BD0(&qword_458D8, &qword_345B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45988);
  }

  return result;
}

unint64_t sub_135FC()
{
  result = qword_45990;
  if (!qword_45990)
  {
    type metadata accessor for AddressRangeItemView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45990);
  }

  return result;
}

unint64_t sub_13654()
{
  result = qword_45998;
  if (!qword_45998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45998);
  }

  return result;
}

uint64_t sub_136CC(uint64_t a1)
{
  v2 = sub_279C(&qword_459C8, &qword_34778);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_33C4(a1, &v6 - v4, &qword_459C8, &qword_34778);
  return sub_32E04();
}

uint64_t sub_13774(uint64_t a1)
{
  v2 = sub_279C(&qword_459A0, &qword_346F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1382C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 504))();

  swift_beginAccess();
  return sub_35E4(v1 + 16, a1);
}

uint64_t sub_13964(uint64_t *a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 512))();

  return sub_3364(a1);
}

void (*sub_13A0C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 504))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14Content_Caches21CacheLocatorViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_15F28(&qword_459D0, type metadata accessor for CacheLocatorViewModel);
  sub_32B44();

  v4[7] = sub_137DC();
  return sub_13B5C;
}

void sub_13B5C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_32B34();

  free(v1);
}

uint64_t type metadata accessor for CacheLocatorViewModel()
{
  result = qword_47160;
  if (!qword_47160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_13C3C()
{
  swift_getKeyPath();
  (*(*v0 + 504))();

  swift_beginAccess();
  v1 = v0[7];
}

uint64_t sub_13CC0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 504))();

  swift_beginAccess();
  *a2 = v3[7];
}

uint64_t sub_13D58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_13D84(v4);
}

uint64_t sub_13D84(uint64_t a1)
{
  swift_beginAccess();
  v3 = v1[7];

  v5 = sub_8590(v4, a1);

  if (v5)
  {
    v6 = v1[7];
    v1[7] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = __chkstk_darwin(KeyPath);
    v10 = v1;
    v11 = a1;
    (*(*v1 + 512))(v9, sub_15EC4);
  }
}

uint64_t sub_13EAC()
{
  swift_getKeyPath();
  (*(*v0 + 504))();

  v1 = v0[13];
}

uint64_t sub_13F20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result;
  return result;
}

uint64_t sub_13FCC()
{
  swift_getKeyPath();
  (*(*v0 + 504))();

  v1 = v0[14];
}

uint64_t sub_14040@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 360))();
  *a2 = result;
  return result;
}

uint64_t sub_140EC()
{
  swift_getKeyPath();
  (*(*v0 + 504))();

  v1 = v0[15];
}

uint64_t sub_14160@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 408))();
  *a2 = result;
  return result;
}

uint64_t sub_141D4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v8 = *a2;
  KeyPath = swift_getKeyPath();
  v11[2] = v8;
  v11[3] = v7;
  (*(*v8 + 512))(KeyPath, a6, v11, &type metadata for ()[8]);
}

uint64_t sub_14294()
{
  swift_getKeyPath();
  (*(*v0 + 512))();
}

uint64_t sub_1434C()
{
  swift_getKeyPath();
  (*(*v0 + 504))();

  return v0[128];
}

uint64_t sub_143B0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 456))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_14430(uint64_t result)
{
  if (v1[128] == (result & 1))
  {
    v1[128] = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3 = __chkstk_darwin(KeyPath);
    (*(*v1 + 512))(v3, sub_14518);
  }

  return result;
}

uint64_t sub_14528(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_14568(a1);
  return v5;
}

uint64_t sub_14568(uint64_t *a1)
{
  v3 = sub_279C(&qword_459D8, &qword_34848);
  v4 = *(v3 - 8);
  v63 = v3;
  v64 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v62 = v49 - v6;
  v7 = sub_279C(&qword_451C8, &qword_34850);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v49 - v9;
  v11 = sub_279C(&qword_459E0, &qword_34858);
  v12 = *(v11 - 8);
  v60 = v11;
  v61 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v59 = v49 - v14;
  v15 = sub_32AE4();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = sub_33224();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  *(v1 + 56) = &_swiftEmptyArrayStorage;
  v66 = v1 + 56;
  *(v1 + 104) = &_swiftEmptyArrayStorage;
  *(v1 + 112) = &_swiftEmptyArrayStorage;
  *(v1 + 120) = &_swiftEmptyArrayStorage;
  *(v1 + 128) = 0;
  sub_33214();
  v19 = sub_2A72C();
  swift_beginAccess();
  v20 = *v19;
  sub_32AD4();
  *(v1 + 136) = sub_33284();
  *(v1 + 144) = v21;
  sub_33214();
  swift_beginAccess();
  v22 = *v19;
  sub_32AD4();
  *(v1 + 152) = sub_33284();
  *(v1 + 160) = v23;
  sub_33214();
  swift_beginAccess();
  v24 = *v19;
  sub_32AD4();
  *(v1 + 168) = sub_33284();
  *(v1 + 176) = v25;
  sub_33214();
  swift_beginAccess();
  v26 = *v19;
  sub_32AD4();
  *(v1 + 184) = sub_33284();
  *(v1 + 192) = v27;
  sub_33214();
  swift_beginAccess();
  v28 = *v19;
  sub_32AD4();
  *(v1 + 200) = sub_33284();
  *(v1 + 208) = v29;
  sub_33214();
  swift_beginAccess();
  v30 = *v19;
  sub_32AD4();
  *(v1 + 216) = sub_33284();
  *(v1 + 224) = v31;
  sub_32B54();
  sub_35E4(a1, v1 + 16);
  sub_35E4(a1, v67);
  sub_347C(v67, v68);
  v32 = v68[1];
  *(v1 + 64) = v68[0];
  *(v1 + 80) = v32;
  *(v1 + 96) = v69;
  v65 = a1;
  v33 = a1[3];
  v34 = a1[4];
  sub_3294(a1, v33);
  *&v68[0] = (*(v34 + 24))(v33, v34);
  v51 = sub_1507C();
  v35 = sub_33474();
  *&v67[0] = v35;
  v57 = sub_33454();
  v36 = *(v57 - 8);
  v56 = *(v36 + 56);
  v58 = v36 + 56;
  v50 = v10;
  v56(v10, 1, 1, v57);
  sub_279C(&qword_459E8, &qword_34860);
  v55 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_8F50(&qword_459F0, &qword_459E8, &qword_34860);
  v53 = sub_15F28(&qword_451F0, sub_1507C);
  v37 = v59;
  sub_32C94();
  sub_150C8(v10);

  swift_getKeyPath();
  *&v68[0] = v1;
  v54 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_8F50(&qword_459F8, &qword_459E0, &qword_34858);
  v38 = v60;
  sub_32CB4();

  v61[1](v37, v38);
  KeyPath = swift_getKeyPath();
  v40 = *(*v1 + 504);
  v60 = *v1 + 504;
  v61 = v40;
  (v40)(KeyPath);

  v41 = OBJC_IVAR____TtC14Content_Caches21CacheLocatorViewModel___observationRegistrar;
  *&v68[0] = v1;
  swift_getKeyPath();
  v49[0] = sub_15F28(&qword_459D0, type metadata accessor for CacheLocatorViewModel);
  v49[1] = v41;
  sub_32B44();

  swift_beginAccess();
  v59 = sub_279C(&qword_45200, &qword_34890);
  v52 = sub_8F50(&qword_45208, &qword_45200, &qword_34890);
  sub_32BE4();
  swift_endAccess();

  *&v68[0] = v1;
  swift_getKeyPath();
  sub_32B34();

  v43 = v65[3];
  v42 = v65[4];
  sub_3294(v65, v43);
  *&v68[0] = (*(v42 + 16))(v43, v42);
  v44 = sub_33474();
  *&v67[0] = v44;
  v45 = v50;
  v56(v50, 1, 1, v57);
  sub_279C(&qword_45A00, &qword_34898);
  sub_8F50(&qword_45A08, &qword_45A00, &qword_34898);
  v46 = v62;
  sub_32C94();
  sub_150C8(v45);

  swift_allocObject();
  swift_weakInit();
  sub_8F50(&qword_45A10, &qword_459D8, &qword_34848);
  v47 = v63;
  sub_32CA4();

  (*(v64 + 8))(v46, v47);
  swift_getKeyPath();
  (v61)();

  *&v68[0] = v1;
  swift_getKeyPath();
  sub_32B44();

  swift_beginAccess();
  sub_32BE4();
  swift_endAccess();

  *&v68[0] = v1;
  swift_getKeyPath();
  sub_32B34();

  sub_3364(v65);
  return v1;
}

unint64_t sub_1507C()
{
  result = qword_451D8;
  if (!qword_451D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_451D8);
  }

  return result;
}

uint64_t sub_150C8(uint64_t a1)
{
  v2 = sub_279C(&qword_451C8, &qword_34850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_15130()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_15198()
{
  v0 = sub_32AE4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_33224();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_33214();
  v4 = sub_2A72C();
  swift_beginAccess();
  v5 = *v4;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_152BC()
{
  v0 = sub_32AE4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_33224();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_33214();
  v4 = sub_2A72C();
  swift_beginAccess();
  v5 = *v4;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_153E0()
{
  v0 = sub_32AE4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_33224();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_33214();
  v4 = sub_2A72C();
  swift_beginAccess();
  v5 = *v4;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_15564()
{
  v0 = sub_32AE4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_33224();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_33214();
  v4 = sub_2A72C();
  swift_beginAccess();
  v5 = *v4;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_1568C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    if (v1)
    {
      KeyPath = swift_getKeyPath();
      v7 = __chkstk_darwin(KeyPath);
      v13 = v5;
      v14 = v1;
      v8 = *(*v5 + 512);
      v8(v7, sub_16028);

      v9 = swift_getKeyPath();
      v10 = __chkstk_darwin(v9);
      v13 = v5;
      v14 = v2;
      v8(v10, sub_16040);

      v11 = swift_getKeyPath();
      v12 = __chkstk_darwin(v11);
      v13 = v5;
      v14 = v3;
      v8(v12, sub_16058);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_15890(uint64_t a1)
{
  v3 = type metadata accessor for CachingServer();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ServerViewModel();
  (*(*v1 + 216))(v9);
  sub_15954(a1, v6);
  return sub_503C(v9, v6);
}

uint64_t sub_15954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachingServer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_15A20()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return v1;
}

uint64_t sub_15A50()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return v1;
}

uint64_t sub_15A80()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return v1;
}

uint64_t sub_15AB0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return v1;
}

uint64_t sub_15AE0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return v1;
}

uint64_t sub_15B10()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return v1;
}

uint64_t *sub_15C80()
{
  sub_3364(v0 + 2);
  v1 = v0[7];

  sub_15D40((v0 + 8));
  v2 = v0[13];

  v3 = v0[14];

  v4 = v0[15];

  v5 = v0[18];

  v6 = v0[20];

  v7 = v0[22];

  v8 = v0[24];

  v9 = v0[26];

  v10 = v0[28];

  v11 = OBJC_IVAR____TtC14Content_Caches21CacheLocatorViewModel___observationRegistrar;
  v12 = sub_32B64();
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  return v0;
}

uint64_t sub_15D94()
{
  sub_15C80();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_15DF4()
{
  result = sub_32B64();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_15EC4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 56);
  *(v2 + 56) = v1;
}

uint64_t sub_15F28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_15F70()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 120);
  *(v1 + 120) = *(v0 + 24);
}

uint64_t sub_15FAC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 112);
  *(v1 + 112) = *(v0 + 24);
}

uint64_t sub_15FE8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 104);
  *(v1 + 104) = *(v0 + 24);
}

uint64_t sub_16364@<X0>(uint64_t a1@<X8>)
{
  v32 = sub_32E14();
  v40 = 1;
  v2 = type metadata accessor for CachingServer();
  v3 = *(v1 + v2[11]);
  v4 = sub_33094();
  v5 = sub_32F64();
  KeyPath = swift_getKeyPath();
  if (v3 == 1)
  {
    *&v47 = sub_33054();
    sub_12A04();
    *&v41 = v4;
    *(&v41 + 1) = KeyPath;
    *&v42 = v5;
    *(&v42 + 1) = sub_33084();
    LOBYTE(v43) = 0;
  }

  else
  {
    *&v47 = sub_33034();
    sub_12A04();
    *&v41 = v4;
    *(&v41 + 1) = KeyPath;
    *&v42 = v5;
    *(&v42 + 1) = sub_33084();
    LOBYTE(v43) = 1;
  }

  sub_279C(&qword_45D50, &qword_34C00);
  sub_17068();
  sub_32EC4();
  v7 = v47;
  v8 = (v1 + v2[6]);
  v9 = v8[1];
  *&v47 = *v8;
  *(&v47 + 1) = v9;
  v31 = v7;
  sub_171D8();
  sub_1288C();

  v33 = sub_32FE4();
  v34 = v10;
  v12 = v11;
  v29 = v13;
  if (*(v1 + v2[10]) == 1)
  {
    v14 = sub_33094();
    v15 = sub_32F64();
    *&v41 = v14;
    *(&v41 + 1) = swift_getKeyPath();
    *&v42 = v15;
    DWORD2(v42) = sub_32ED4();
    BYTE12(v42) = 0;
  }

  else
  {
    v41 = xmmword_34A90;
    *&v42 = 0;
    DWORD2(v42) = 0;
    BYTE12(v42) = 1;
  }

  sub_279C(&qword_45D90, &qword_34C20);
  sub_17234();
  sub_32EC4();
  v35[0] = v12 & 1;
  LOBYTE(v38[0]) = 1;
  sub_171D8();
  sub_12948(v33, v34, v12 & 1);

  sub_172EC(v47, *(&v47 + 1), v48, DWORD2(v48), SBYTE12(v48));
  sub_1733C();
  LOBYTE(v37[0]) = BYTE12(v48);
  sub_17394(v47, *(&v47 + 1), v48, DWORD2(v48), SBYTE12(v48));
  sub_128E0(v33, v34, v12 & 1);

  sub_1733C();
  *(&v43 + 1) = v38[0];
  DWORD1(v43) = *(v38 + 3);
  *(&v44 + 9) = v37[0];
  HIDWORD(v44) = *(v37 + 3);
  *&v46[4] = *&v36[3];
  *&v46[1] = *v36;
  LOBYTE(v43) = v49;
  *v50 = v38[0];
  *&v50[3] = *(v38 + 3);
  v42 = v48;
  v41 = v31;
  *(&v43 + 1) = v33;
  *&v44 = v34;
  BYTE8(v44) = v12 & 1;
  v45 = v29;
  v46[0] = 1;
  *&v46[8] = v47;
  *&v46[24] = v48;
  *&v46[32] = DWORD2(v48);
  v46[36] = BYTE12(v48);
  v47 = v31;
  v51 = v33;
  v52 = v34;
  v53 = v12 & 1;
  *&v54[3] = *(v37 + 3);
  *v54 = v37[0];
  v55 = v29;
  v56 = 0;
  v57 = 1;
  *v58 = *v36;
  *&v58[3] = *&v36[3];
  v59 = *&v46[8];
  v60 = v48;
  v61 = DWORD2(v48);
  v62 = BYTE12(v48);
  sub_16974(&v41, v35);
  sub_169E4(&v47);
  *(&v39[4] + 7) = v45;
  *(&v39[5] + 7) = *v46;
  *(&v39[6] + 7) = *&v46[16];
  *(v39 + 7) = v41;
  *(&v39[1] + 7) = v42;
  *(&v39[2] + 7) = v43;
  *(&v39[7] + 4) = *&v46[29];
  *(&v39[3] + 7) = v44;
  v16 = v40;
  sub_279C(&qword_458E8, &qword_345C0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_345A0;
  v18 = sub_32EF4();
  *(v17 + 32) = v18;
  v19 = sub_32F04();
  *(v17 + 33) = v19;
  v20 = sub_32F14();
  sub_32F14();
  if (sub_32F14() != v18)
  {
    v20 = sub_32F14();
  }

  sub_32F14();
  if (sub_32F14() != v19)
  {
    v20 = sub_32F14();
  }

  result = sub_32CC4();
  v22 = v39[5];
  *(a1 + 81) = v39[4];
  *(a1 + 97) = v22;
  *(a1 + 113) = v39[6];
  *(a1 + 125) = *(&v39[6] + 12);
  v23 = v39[1];
  *(a1 + 17) = v39[0];
  *(a1 + 33) = v23;
  v24 = v39[3];
  *(a1 + 49) = v39[2];
  *a1 = v32;
  *(a1 + 8) = 0;
  *(a1 + 16) = v16;
  *(a1 + 65) = v24;
  *(a1 + 144) = v20;
  *(a1 + 152) = v25;
  *(a1 + 160) = v26;
  *(a1 + 168) = v27;
  *(a1 + 176) = v28;
  *(a1 + 184) = 0;
  return result;
}

uint64_t sub_16974(uint64_t a1, uint64_t a2)
{
  v4 = sub_279C(&qword_45C80, &unk_34AA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_169E4(uint64_t a1)
{
  v2 = sub_279C(&qword_45C80, &unk_34AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_16A54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachingServer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_16ABC()
{
  v0 = type metadata accessor for CacheItemView();
  v1 = sub_16C14();

  return NavigationStack.init<>(root:)(sub_16B20, 0, v0, v1);
}

uint64_t sub_16B20@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_32AC4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_32AB4();
  return sub_1759C(v5, 0xD000000000000013, 0x800000000003B2F0, 0, 1, 2, 0, 1, a1);
}

uint64_t type metadata accessor for CacheItemView()
{
  result = qword_472F0;
  if (!qword_472F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_16C14()
{
  result = qword_45C88;
  if (!qword_45C88)
  {
    type metadata accessor for CacheItemView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45C88);
  }

  return result;
}

unint64_t sub_16C8C()
{
  result = qword_45C90;
  if (!qword_45C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45C90);
  }

  return result;
}

uint64_t sub_16CFC(uint64_t a1)
{
  v2 = sub_17014();

  return static PreviewProvider._previews.getter(a1, v2);
}

uint64_t sub_16D48(uint64_t a1)
{
  v2 = sub_17014();

  return static PreviewProvider._platform.getter(a1, v2);
}

uint64_t sub_16DA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachingServer();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_16E28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachingServer();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_16E98()
{
  result = type metadata accessor for CachingServer();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_16F18()
{
  result = qword_45D18;
  if (!qword_45D18)
  {
    sub_8BD0(&qword_45D20, ":%");
    sub_8F50(&qword_45D28, &qword_45D30, &qword_34BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45D18);
  }

  return result;
}

unint64_t sub_17014()
{
  result = qword_45D48;
  if (!qword_45D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45D48);
  }

  return result;
}

unint64_t sub_17068()
{
  result = qword_45D58;
  if (!qword_45D58)
  {
    sub_8BD0(&qword_45D50, &qword_34C00);
    sub_17120();
    sub_8F50(&qword_45D80, &qword_45D88, &qword_34C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45D58);
  }

  return result;
}

unint64_t sub_17120()
{
  result = qword_45D60;
  if (!qword_45D60)
  {
    sub_8BD0(&qword_45D68, &qword_34C08);
    sub_8F50(&qword_45D70, &qword_45D78, &qword_34C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45D60);
  }

  return result;
}

uint64_t sub_171D8()
{
}