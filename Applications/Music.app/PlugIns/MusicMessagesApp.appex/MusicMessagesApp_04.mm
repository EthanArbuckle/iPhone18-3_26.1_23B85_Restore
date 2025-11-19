uint64_t sub_100055FB4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_1001BB1E4(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_100056090(uint64_t a1)
{
  v2 = sub_1004D966C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(v6 + 16);

  if (!v7)
  {
  }

  v10 = 0;
  v24 = (v3 + 16);
  v11 = (v3 + 8);
  v12 = (v6 + 40);
  *&v9 = 136446210;
  v21 = v9;
  v22 = v11;
  v23 = v7;
  while (v10 < *(v6 + 16))
  {
    v13 = *v12;
    v25 = *(v12 - 1);
    if (qword_100633A98 != -1)
    {
      swift_once();
    }

    v14 = sub_100035430(v2, qword_1006356F0);
    (*v24)(v5, v14, v2);

    v15 = sub_1004D964C();
    v16 = sub_1004DDF9C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = v2;
      v19 = v6;
      v20 = swift_slowAlloc();
      v26 = v20;
      *v17 = v21;
      *(v17 + 4) = sub_1000343A8(v25, v13, &v26);
      _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s", v17, 0xCu);
      sub_100008D24(v20);
      v6 = v19;
      v2 = v18;
      v7 = v23;

      v11 = v22;
    }

    result = (*v11)(v5, v2);
    ++v10;
    v12 += 2;
    if (v7 == v10)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t ActionMenu.append(_:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 80) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_10003A240(0, *(v3 + 2) + 1, 1, v3);
    *(v1 + 80) = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = sub_10003A240((v5 > 1), v6 + 1, 1, v3);
  }

  *(v3 + 2) = v6 + 1;
  v7 = &v3[56 * v6];
  v8 = *a1;
  v9 = *(a1 + 16);
  v10 = *(a1 + 32);
  *(v7 + 10) = *(a1 + 48);
  *(v7 + 3) = v9;
  *(v7 + 4) = v10;
  *(v7 + 2) = v8;
  *(v1 + 80) = v3;
  swift_endAccess();
  return sub_1000532D4(a1, v12);
}

Swift::Void __swiftcall ActionMenu.append(contentsOf:)(Swift::OpaquePointer contentsOf)
{
  swift_beginAccess();

  sub_100044FD0(v1);
  swift_endAccess();
}

uint64_t ActionMenu.deinit()
{

  sub_10000DE74(*(v0 + 88));
  return v0;
}

uint64_t ActionMenu.__deallocating_deinit()
{

  sub_10000DE74(*(v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_100056500@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_100056510()
{
  v1 = *(*v0 + 56);

  return v1;
}

uint64_t ActionMenu.Item.menuItemConfiguring.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ActionMenu.Item.execute.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t (*ActionMenuItemImage.init(systemName:)(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  return sub_10005ED58;
}

uint64_t sub_1000566B8()
{

  return sub_1004DB8EC();
}

uint64_t (*ActionMenuItemImage.init(uiImage:)(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return sub_10005EDF4;
}

uint64_t sub_100056798()
{
  v0 = sub_1004DD3FC();
  v1 = [objc_opt_self() imageNamed:v0];

  if (v1)
  {
    return sub_1004DB8DC();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100056878()
{
  v0 = sub_1004DD3FC();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  if (v1)
  {
    return sub_1004DB8DC();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000568DC()
{

  return sub_1004DB90C();
}

id sub_10005692C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = sub_1004DD3FC();
  v5 = [objc_opt_self() *a3];

  return v5;
}

Swift::Int LaunchURL.Resolver.PerformOption.hashValue.getter(char a1)
{
  sub_1004DF26C();
  sub_1004DF27C(a1 & 1);
  return sub_1004DF2BC();
}

Swift::Int sub_100056A20()
{
  v1 = *v0;
  sub_1004DF26C();
  sub_1004DF27C(v1);
  return sub_1004DF2BC();
}

Swift::Int sub_100056A98()
{
  v1 = *v0;
  sub_1004DF26C();
  sub_1004DF27C(v1);
  return sub_1004DF2BC();
}

uint64_t sub_100056ADC(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1004DF08C();
  }
}

uint64_t sub_100056B08()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, qword_1006356F0);
  sub_100035430(v0, qword_1006356F0);
  return sub_1004D965C();
}

unint64_t sub_100056B9C(uint64_t a1)
{
  sub_1004DF26C();
  MenuType.rawValue.getter(a1);
  sub_1004DD55C();

  v2 = sub_1004DF2BC();

  return sub_100056F2C(a1, v2);
}

unint64_t sub_100056C24(unsigned __int8 a1)
{
  sub_1004DF26C();
  sub_1004DF27C(a1);
  v2 = sub_1004DF2BC();
  return sub_100057594(a1, v2);
}

unint64_t sub_100056C8C(uint64_t a1)
{
  sub_1004D82AC();
  sub_10005F0DC(&qword_100635888);
  v2 = sub_1004DD2AC();

  return sub_100057370(a1, v2);
}

unint64_t sub_100056D10(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004DE5EC(*(v2 + 40));
  return sub_100029338(a1, v4, &qword_100638360);
}

unint64_t sub_100056D60(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004DE5EC(*(v2 + 40));
  return sub_100029338(a1, v4, &qword_100635878);
}

unint64_t sub_100056DB0(Swift::UInt a1, Swift::UInt a2)
{
  sub_1004DF26C();
  sub_1004DF27C(a1);
  sub_1004DF27C(a2);
  v4 = sub_1004DF2BC();

  return sub_10005751C(a1, a2, v4);
}

unint64_t sub_100056E30(uint64_t a1)
{
  sub_1004DD43C();
  sub_1004DF26C();
  sub_1004DD55C();
  v2 = sub_1004DF2BC();

  return sub_100029048(a1, v2);
}

unint64_t sub_100056EC0(unsigned __int8 a1)
{
  sub_1004DF26C();
  sub_1004DF27C(a1 + 1);
  v2 = sub_1004DF2BC();
  return sub_100057594(a1, v2);
}

unint64_t sub_100056F2C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x6C6576654C706F74;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x7463416B63697571;
          v7 = 0xEB000000006E6F69;
          break;
        case 2:
          v7 = 0xE300000000000000;
          v8 = 7368564;
          break;
        case 3:
          v7 = 0xE700000000000000;
          v8 = 0x7972617262696CLL;
          break;
        case 4:
          v8 = 0x7473696C79616C70;
          break;
        case 5:
          v8 = 0x6B63616279616C70;
          break;
        case 6:
          v8 = 0x697461676976616ELL;
          v7 = 0xEA00000000006E6FLL;
          break;
        case 7:
          v7 = 0xE500000000000000;
          v8 = 0x6574736174;
          break;
        case 8:
          v8 = 0x6E6974726F706572;
          v7 = 0xE900000000000067;
          break;
        case 9:
          v7 = 0xE90000000000006ELL;
          v8 = 0x6F697463416E6970;
          break;
        case 0xA:
          v8 = 0x7463757274736564;
          v7 = 0xEB00000000657669;
          break;
        case 0xB:
          v8 = 0x7473696C79616C70;
          v7 = 0xEC00000074726F53;
          break;
        case 0xC:
          v7 = 0xE400000000000000;
          v8 = 1867804519;
          break;
        default:
          break;
      }

      v9 = 0xE800000000000000;
      v10 = 0x6C6576654C706F74;
      switch(a1)
      {
        case 1:
          v9 = 0xEB000000006E6F69;
          if (v8 == 0x7463416B63697571)
          {
            goto LABEL_39;
          }

          goto LABEL_40;
        case 2:
          v9 = 0xE300000000000000;
          if (v8 != 7368564)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 3:
          v9 = 0xE700000000000000;
          if (v8 != 0x7972617262696CLL)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 4:
          if (v8 != 0x7473696C79616C70)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 5:
          if (v8 != 0x6B63616279616C70)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 6:
          v9 = 0xEA00000000006E6FLL;
          if (v8 != 0x697461676976616ELL)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 7:
          v9 = 0xE500000000000000;
          if (v8 != 0x6574736174)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 8:
          v9 = 0xE900000000000067;
          if (v8 != 0x6E6974726F706572)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 9:
          v9 = 0xE90000000000006ELL;
          if (v8 != 0x6F697463416E6970)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 10:
          v10 = 0x7463757274736564;
          v9 = 0xEB00000000657669;
          goto LABEL_38;
        case 11:
          v9 = 0xEC00000074726F53;
          if (v8 != 0x7473696C79616C70)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 12:
          v9 = 0xE400000000000000;
          if (v8 != 1867804519)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        default:
LABEL_38:
          if (v8 != v10)
          {
            goto LABEL_40;
          }

LABEL_39:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_40:
          v11 = sub_1004DF08C();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_100057370(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1004D82AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_10005F0DC(&qword_100635890);
      v15 = sub_1004DD35C();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_10005751C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100057594(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_100057604(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004CB8(&qword_100635960);
  v37 = a2;
  result = sub_1004DED9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1004DF26C();
      sub_1004DD55C();
      result = sub_1004DF2BC();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000578C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004CB8(&qword_100635988);
  v32 = a2;
  v6 = sub_1004DED9C();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_33:

    goto LABEL_34;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v6 + 64;
  while (v12)
  {
    v20 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v23 = v20 | (v8 << 6);
    v24 = *(*(v5 + 48) + v23);
    v25 = *(*(v5 + 56) + 8 * v23);
    if ((v32 & 1) == 0)
    {
    }

    sub_1004DF26C();
    sub_1004DD55C();

    v15 = sub_1004DF2BC();
    v16 = -1 << *(v7 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v16) >> 6;
      do
      {
        if (++v18 == v27 && (v26 & 1) != 0)
        {
          goto LABEL_36;
        }

        v28 = v18 == v27;
        if (v18 == v27)
        {
          v18 = 0;
        }

        v26 |= v28;
        v29 = *(v14 + 8 * v18);
      }

      while (v29 == -1);
      v19 = __clz(__rbit64(~v29)) + (v18 << 6);
    }

    *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v7 + 48) + v19) = v24;
    *(*(v7 + 56) + 8 * v19) = v25;
    ++*(v7 + 16);
  }

  v21 = v8;
  while (1)
  {
    v8 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      JUMPOUT(0x100057CBCLL);
    }

    if (v8 >= v13)
    {
      break;
    }

    v22 = v9[v8];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v12 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  if (v32)
  {
    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  v3 = v2;
LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_100057CF0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004CB8(&qword_100635968);
  result = sub_1004DED9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_100006F5C((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_100010678(v23, &v36);
        sub_10000904C(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_1004DEA2C(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_100006F5C(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100057FA8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004CB8(&qword_100635950);
  result = sub_1004DED9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_1004DF26C();
      sub_1004DF27C(v20);
      result = sub_1004DF2BC();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_100058228(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004CB8(&qword_100635948);
  v34 = a2;
  result = sub_1004DED9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1004DF26C();
      sub_1004DD55C();
      result = sub_1004DF2BC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000584D0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1004D82AC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100004CB8(&qword_100634A68);
  v39 = a2;
  result = sub_1004DED9C();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_10005F0DC(&qword_100635888);
      result = sub_1004DD2AC();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100058898(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004CB8(&unk_100635930);
  result = sub_1004DED9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (a2)
      {
        sub_100006F5C(v21, v32);
      }

      else
      {
        sub_10000904C(v21, v32);
        v22 = v20;
      }

      result = sub_1004DE5EC(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_100006F5C(v32, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100058B10(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  v42 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004D82AC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100004CB8(&qword_100635918);
  v43 = a2;
  result = sub_1004DED9C();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_100060134(v27 + v28 * v24, v47);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1000601FC(v29 + v28 * v24, v47);
      }

      sub_10005F0DC(&qword_100635888);
      result = sub_1004DD2AC();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_100060134(v47, *(v12 + 56) + v28 * v20);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_100058F60(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004CB8(&qword_100635908);
  v33 = a2;
  result = sub_1004DED9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_100006F5C(v24, v34);
      }

      else
      {
        sub_10000904C(v24, v34);
      }

      sub_1004DF26C();
      sub_1004DD55C();
      result = sub_1004DF2BC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100006F5C(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_100059218(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004CB8(&qword_1006358F0);
  result = sub_1004DED9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = a2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v23 = *v21;
      v22 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      sub_1004DF26C();
      sub_1004DF27C(v23);
      sub_1004DF27C(v22);
      result = sub_1004DF2BC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v22;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1000594B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004CB8(&qword_100635880);
  result = sub_1004DED9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        swift_unknownObjectRetain();
      }

      result = sub_1004DE5EC(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100059720(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = sub_100004CB8(&qword_1006358E0);
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - v6;
  v7 = sub_1004D82AC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100004CB8(&qword_1006358E8);
  v47 = a2;
  result = sub_1004DED9C();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_10005F0DC(&qword_100635888);
      result = sub_1004DD2AC();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

Swift::Int sub_100059BBC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004CB8(&qword_1006358B8);
  v46 = a2;
  v6 = sub_1004DED9C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v43 = v3;
    v44 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v45 = v5;
    while (v11)
    {
      v17 = __clz(__rbit64(v11));
      v47 = (v11 - 1) & v11;
LABEL_15:
      v21 = v17 | (v8 << 6);
      v49 = *(*(v5 + 48) + v21);
      v22 = *(v5 + 56) + 56 * v21;
      v48 = *v22;
      v24 = *(v22 + 8);
      v23 = *(v22 + 16);
      v26 = *(v22 + 24);
      v25 = *(v22 + 32);
      v27 = *(v22 + 40);
      v28 = *(v22 + 48);
      if ((v46 & 1) == 0)
      {
        v29 = v24;
        v30 = v23;
        v31 = v26;
        v32 = v25;
        v33 = v27;
        v34 = v28;
      }

      sub_1004DF26C();
      sub_1004DF27C(v49 + 1);
      result = sub_1004DF2BC();
      v35 = -1 << *(v7 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v13 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v15 = v28;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v13 + 8 * v37);
          if (v41 != -1)
          {
            v14 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v36) & ~*(v13 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v15 = v28;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + v14) = v49;
      v16 = *(v7 + 56) + 56 * v14;
      *v16 = v48;
      *(v16 + 8) = v24;
      *(v16 + 16) = v23;
      *(v16 + 24) = v26;
      *(v16 + 32) = v25;
      *(v16 + 40) = v27;
      *(v16 + 48) = v15;
      ++*(v7 + 16);
      v5 = v45;
      v11 = v47;
    }

    v18 = v8;
    result = v44;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v12)
      {
        break;
      }

      v20 = v44[v8];
      ++v18;
      if (v20)
      {
        v17 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v46)
    {
      v42 = 1 << *(v5 + 32);
      if (v42 >= 64)
      {
        bzero(v44, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v44 = -1 << v42;
      }

      *(v5 + 16) = 0;
    }

    v3 = v43;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100059EBC(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_1004D90CC();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100004CB8(&qword_100635870);
  v42 = a2;
  result = sub_1004DED9C();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_1004DF26C();
      sub_1004DD55C();
      result = sub_1004DF2BC();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_10005A23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10005DF90(a3, a4, sub_100029280);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100057604(v18, a5 & 1);
      v13 = sub_10005DF90(a3, a4, sub_100029280);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1004DF16C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_10005B7A0();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

unint64_t sub_10005A3EC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100056B9C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1000578C4(v14, a3 & 1);
      result = sub_100056B9C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1004DF16C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_10005B918();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

_OWORD *sub_10005A538(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100028F3C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10005BA74();
      goto LABEL_7;
    }

    sub_100057CF0(v13, a3 & 1);
    v19 = sub_100028F3C(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100010678(a2, v21);
      return sub_10005B3BC(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_1004DF16C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_100008D24(v17);

  return sub_100006F5C(a1, v17);
}

uint64_t sub_10005A684(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10005DF90(a2, a3, sub_100029280);
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
      sub_100058228(v16, a4 & 1);
      v11 = sub_10005DF90(a2, a3, sub_100029280);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1004DF16C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10005BD64();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void sub_10005A828(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1004D82AC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100056C8C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10005BED4();
      goto LABEL_7;
    }

    sub_1000584D0(v17, a3 & 1);
    v23 = sub_100056C8C(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_10005B438(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_1004DF16C();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

_OWORD *sub_10005A9F4(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100056D10(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_10005C148();
      v8 = v16;
      goto LABEL_8;
    }

    sub_100058898(v13, a3 & 1);
    v8 = sub_100056D10(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_100006F10(0, &qword_100638360);
      result = sub_1004DF16C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_100008D24(v19);

    return sub_100006F5C(a1, v19);
  }

  else
  {
    sub_10005B4F0(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_10005AB44(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1004D82AC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100056C8C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10005C2C8();
      goto LABEL_7;
    }

    sub_100058B10(v17, a3 & 1);
    v24 = sub_100056C8C(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10005B558(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1004DF16C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for PushNotificationObserver.RegisteredHandler() - 8) + 72) * v14;

  return sub_100060198(a1, v22);
}

_OWORD *sub_10005AD2C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10005DF90(a2, a3, sub_100029280);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10005C5CC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100058F60(v16, a4 & 1);
    v11 = sub_10005DF90(a2, a3, sub_100029280);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1004DF16C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100008D24(v22);

    return sub_100006F5C(a1, v22);
  }

  else
  {
    sub_10005B634(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_10005AEA4(uint64_t a1, Swift::UInt a2, Swift::UInt a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100056DB0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a4 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    v19 = result;
    sub_10005C770();
    result = v19;
    goto LABEL_8;
  }

  sub_100059218(v16, a4 & 1);
  result = sub_100056DB0(a2, a3);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      *(v21[7] + 8 * result) = a1;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = a2;
    v22[1] = a3;
    *(v21[7] + 8 * result) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  type metadata accessor for MPCPlayerRequestTracklistRange(0);
  result = sub_1004DF16C();
  __break(1u);
  return result;
}

id sub_10005AFE0(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100056D60(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1000594B0(v13, a3 & 1);
      v8 = sub_100056D60(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100006F10(0, &qword_100635878);
        result = sub_1004DF16C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_10005C8C0();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return swift_unknownObjectRelease();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

uint64_t sub_10005B15C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1004D82AC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100056C8C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10005CA24();
      goto LABEL_7;
    }

    sub_100059720(v17, a3 & 1);
    v28 = sub_100056C8C(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10005B6A0(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1004DF16C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_100004CB8(&qword_1006358E0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

unint64_t sub_10005B36C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

_OWORD *sub_10005B3BC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100006F5C(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_10005B438(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1004D82AC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_10005B4F0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_100006F5C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_10005B558(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1004D82AC();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  result = sub_100060134(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

_OWORD *sub_10005B634(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100006F5C(a4, (a5[7] + 32 * a1));
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

uint64_t sub_10005B6A0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1004D82AC();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_100004CB8(&qword_1006358E0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void *sub_10005B7A0()
{
  v1 = v0;
  sub_100004CB8(&qword_100635960);
  v2 = *v0;
  v3 = sub_1004DED8C();
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
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_10005B918()
{
  v1 = v0;
  sub_100004CB8(&qword_100635988);
  v2 = *v0;
  v3 = sub_1004DED8C();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_10005BA74()
{
  v1 = v0;
  sub_100004CB8(&qword_100635968);
  v2 = *v0;
  v3 = sub_1004DED8C();
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
        sub_100010678(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000904C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100006F5C(v22, (*(v4 + 56) + v17));
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

void *sub_10005BC18()
{
  v1 = v0;
  sub_100004CB8(&qword_100635950);
  v2 = *v0;
  v3 = sub_1004DED8C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_10005BD64()
{
  v1 = v0;
  sub_100004CB8(&qword_100635948);
  v2 = *v0;
  v3 = sub_1004DED8C();
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

char *sub_10005BED4()
{
  v1 = v0;
  v31 = sub_1004D82AC();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100634A68);
  v3 = *v0;
  v4 = sub_1004DED8C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_10005C148()
{
  v1 = v0;
  sub_100004CB8(&unk_100635930);
  v2 = *v0;
  v3 = sub_1004DED8C();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_10000904C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_100006F5C(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

char *sub_10005C2C8()
{
  v1 = v0;
  v2 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  v36 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1004D82AC();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100635918);
  v5 = *v0;
  v6 = sub_1004DED8C();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_1000601FC(*(v5 + 56) + v26, v35);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_100060134(v25, *(v27 + 56) + v26);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_10005C5CC()
{
  v1 = v0;
  sub_100004CB8(&qword_100635908);
  v2 = *v0;
  v3 = sub_1004DED8C();
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
        sub_10000904C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100006F5C(v25, (*(v4 + 56) + v22));
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

void *sub_10005C770()
{
  v1 = v0;
  sub_100004CB8(&qword_1006358F0);
  v2 = *v0;
  v3 = sub_1004DED8C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_10005C8C0()
{
  v1 = v0;
  sub_100004CB8(&qword_100635880);
  v2 = *v0;
  v3 = sub_1004DED8C();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

char *sub_10005CA24()
{
  v1 = v0;
  v41 = sub_100004CB8(&qword_1006358E0);
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v30 - v2;
  v39 = sub_1004D82AC();
  v43 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_1006358E8);
  v4 = *v0;
  v5 = sub_1004DED8C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
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

id sub_10005CD80()
{
  sub_100004CB8(&qword_1006358B8);
  v29 = v0;
  v1 = *v0;
  v30 = sub_1004DED8C();
  if (*(v1 + 16))
  {
    result = (v30 + 64);
    v3 = ((1 << *(v30 + 32)) + 63) >> 6;
    if (v30 != v1 || result >= v1 + 64 + 8 * v3)
    {
      result = memmove(result, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v30 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 64);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = v11 | (v5 << 6);
        v15 = *(v1 + 56) + 56 * v14;
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        v19 = *(v15 + 24);
        v20 = *(v15 + 32);
        v21 = *(v15 + 40);
        v22 = *(v15 + 48);
        *(*(v30 + 48) + v14) = *(*(v1 + 48) + v14);
        v23 = *(v30 + 56) + 56 * v14;
        *v23 = v16;
        *(v23 + 8) = v17;
        *(v23 + 16) = v18;
        *(v23 + 24) = v19;
        *(v23 + 32) = v20;
        *(v23 + 40) = v21;
        *(v23 + 48) = v22;
        v24 = v17;
        v25 = v18;
        v26 = v19;
        v27 = v20;
        v28 = v21;
        result = v22;
      }

      while (v9);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_19;
      }

      v13 = *(v1 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v29 = v30;
  }

  return result;
}

char *sub_10005CF3C()
{
  v1 = v0;
  v35 = sub_1004D90CC();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100635870);
  v3 = *v0;
  v4 = sub_1004DED8C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_10005D1BC(uint64_t result, int64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_10003ACAC(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_100154FDC(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

Swift::Int sub_10005D330(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10026F734(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_10005D3C4(v5, sub_100060474, sub_100060428);
  *a1 = v2;
  return result;
}

Swift::Int sub_10005D3C4(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_1004DEF7C(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      if (v6 <= 1)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        v9 = sub_1004DD8EC();
        v9[2] = v6 / 2;
      }

      v11[0] = v9 + 4;
      v11[1] = v6 / 2;
      v10 = v9;
      a2(v11, v12, a1, v8);
      v10[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_10005D4CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 56 * a3 - 56;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 56 * a3);
    v8 = v6;
    result = v5;
    while (1)
    {
      v9 = &unk_100516CC0 + 8 * v7;
      if (v7 < 0)
      {
        v9 = &unk_100516E60 + 8 * *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
      }

      v10 = result + 56;
      v11 = *result;
      if ((*result & 0x8000000000000000) != 0)
      {
        v12 = &unk_100516E60 + 8 * *((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
      }

      else
      {
        v12 = &unk_100516CC0 + 8 * v11;
      }

      if (*v9 >= *v12)
      {
LABEL_4:
        ++a3;
        v5 += 56;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v13 = *(result + 64);
      v14 = *(result + 80);
      v15 = *(result + 96);
      v16 = *(result + 16);
      *v10 = *result;
      *(result + 72) = v16;
      *(result + 88) = *(result + 32);
      v17 = *(result + 48);
      *result = v7;
      *(result + 8) = v13;
      *(result + 24) = v14;
      *(result + 40) = v15;
      result -= 56;
      *(v10 + 48) = v17;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_10005D5B4(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v107 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_105:
    v5 = *v107;
    if (!*v107)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_107:
      v102 = *(v10 + 2);
      if (v102 >= 2)
      {
        while (*a3)
        {
          v103 = *&v10[16 * v102];
          v104 = *&v10[16 * v102 + 24];
          sub_10005DC88((*a3 + 56 * v103), (*a3 + 56 * *&v10[16 * v102 + 16]), *a3 + 56 * v104, v5);
          if (v6)
          {
          }

          if (v104 < v103)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_10026F720(v10);
          }

          if (v102 - 2 >= *(v10 + 2))
          {
            goto LABEL_131;
          }

          v105 = &v10[16 * v102];
          *v105 = v103;
          *(v105 + 1) = v104;
          result = sub_10026F694(v102 - 1);
          v102 = *(v10 + 2);
          if (v102 <= 1)
          {
          }
        }

        goto LABEL_141;
      }
    }

LABEL_137:
    result = sub_10026F720(v10);
    v10 = result;
    goto LABEL_107;
  }

  v8 = a4;
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
LABEL_4:
  v11 = v9++;
  if (v9 >= v7)
  {
    goto LABEL_32;
  }

  v12 = *a3;
  v13 = *(*a3 + 56 * v9);
  if (v13 < 0)
  {
    v14 = &unk_100516E60 + 8 * *((v13 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  }

  else
  {
    v14 = &unk_100516CC0 + 8 * v13;
  }

  v15 = *(v12 + 56 * v11);
  if (v15 < 0)
  {
    v16 = &unk_100516E60 + 8 * *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  }

  else
  {
    v16 = &unk_100516CC0 + 8 * v15;
  }

  v17 = *v14;
  v18 = *v16;
  v19 = v11 + 2;
  if (v7 > v11 + 2)
  {
    v19 = v7;
  }

  v20 = v19 - v11 - 2;
  v21 = 56 * v11;
  v22 = (v12 + 56 * v11 + 112);
  while (v20)
  {
    v25 = *v22;
    if (*v22 < 0)
    {
      v26 = &unk_100516E60 + 8 * *((v25 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
      if ((v13 & 0x8000000000000000) == 0)
      {
LABEL_21:
        v23 = &unk_100516CC0 + 8 * v13;
        goto LABEL_15;
      }
    }

    else
    {
      v26 = &unk_100516CC0 + 8 * v25;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }
    }

    v23 = &unk_100516E60 + 8 * *((v13 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
LABEL_15:
    v24 = (v17 < v18) ^ (*v26 >= *v23);
    --v20;
    v22 += 7;
    ++v9;
    v13 = v25;
    if ((v24 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v9 = v19;
LABEL_23:
  if (v17 < v18)
  {
    if (v9 < v11)
    {
      goto LABEL_134;
    }

    if (v11 < v9)
    {
      v27 = 56 * v9;
      v28 = v9;
      v29 = v11;
      do
      {
        if (v29 != --v28)
        {
          v39 = *a3;
          if (!*a3)
          {
            goto LABEL_140;
          }

          v30 = (v39 + v21);
          v31 = *(v39 + v21 + 48);
          v32 = v39 + v27;
          v33 = *v30;
          v34 = v30[1];
          v35 = v30[2];
          v36 = *(v32 - 40);
          v37 = *(v32 - 24);
          v38 = *(v32 - 56);
          *(v30 + 6) = *(v32 - 8);
          v30[1] = v36;
          v30[2] = v37;
          *v30 = v38;
          *(v32 - 56) = v33;
          *(v32 - 40) = v34;
          *(v32 - 24) = v35;
          *(v32 - 8) = v31;
        }

        ++v29;
        v27 -= 56;
        v21 += 56;
      }

      while (v29 < v28);
    }
  }

LABEL_32:
  v40 = a3[1];
  if (v9 >= v40)
  {
    goto LABEL_54;
  }

  if (__OFSUB__(v9, v11))
  {
    goto LABEL_133;
  }

  if (v9 - v11 >= v8)
  {
    goto LABEL_54;
  }

  if (__OFADD__(v11, v8))
  {
    goto LABEL_135;
  }

  if (v11 + v8 < v40)
  {
    v40 = v11 + v8;
  }

  if (v40 < v11)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v9 == v40)
  {
    goto LABEL_54;
  }

  v41 = *a3;
  v42 = *a3 + 56 * v9 - 56;
  v43 = v11 - v9;
LABEL_42:
  v44 = *(v41 + 56 * v9);
  v45 = v43;
  v46 = v42;
  while (1)
  {
    v47 = &unk_100516CC0 + 8 * v44;
    if (v44 < 0)
    {
      v47 = &unk_100516E60 + 8 * *((v44 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    }

    v49 = v46 + 56;
    v48 = *v46;
    if ((*v46 & 0x8000000000000000) != 0)
    {
      v50 = &unk_100516E60 + 8 * *((v48 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    }

    else
    {
      v50 = &unk_100516CC0 + 8 * v48;
    }

    result = *v50;
    if (*v47 >= result)
    {
LABEL_41:
      ++v9;
      v42 += 56;
      --v43;
      if (v9 == v40)
      {
        v9 = v40;
LABEL_54:
        if (v9 < v11)
        {
          goto LABEL_132;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_10003A490(0, *(v10 + 2) + 1, 1, v10);
          v10 = result;
        }

        v5 = *(v10 + 2);
        v57 = *(v10 + 3);
        v58 = v5 + 1;
        if (v5 >= v57 >> 1)
        {
          result = sub_10003A490((v57 > 1), v5 + 1, 1, v10);
          v10 = result;
        }

        *(v10 + 2) = v58;
        v59 = &v10[16 * v5];
        *(v59 + 4) = v11;
        *(v59 + 5) = v9;
        v60 = *v107;
        if (!*v107)
        {
          goto LABEL_142;
        }

        if (!v5)
        {
LABEL_3:
          v7 = a3[1];
          v8 = a4;
          if (v9 >= v7)
          {
            goto LABEL_105;
          }

          goto LABEL_4;
        }

        while (1)
        {
          v61 = v58 - 1;
          if (v58 >= 4)
          {
            break;
          }

          if (v58 == 3)
          {
            v62 = *(v10 + 4);
            v63 = *(v10 + 5);
            v72 = __OFSUB__(v63, v62);
            v64 = v63 - v62;
            v65 = v72;
LABEL_74:
            if (v65)
            {
              goto LABEL_121;
            }

            v78 = &v10[16 * v58];
            v80 = *v78;
            v79 = *(v78 + 1);
            v81 = __OFSUB__(v79, v80);
            v82 = v79 - v80;
            v83 = v81;
            if (v81)
            {
              goto LABEL_124;
            }

            v84 = &v10[16 * v61 + 32];
            v86 = *v84;
            v85 = *(v84 + 1);
            v72 = __OFSUB__(v85, v86);
            v87 = v85 - v86;
            if (v72)
            {
              goto LABEL_127;
            }

            if (__OFADD__(v82, v87))
            {
              goto LABEL_128;
            }

            if (v82 + v87 >= v64)
            {
              if (v64 < v87)
              {
                v61 = v58 - 2;
              }

              goto LABEL_95;
            }

            goto LABEL_88;
          }

          v88 = &v10[16 * v58];
          v90 = *v88;
          v89 = *(v88 + 1);
          v72 = __OFSUB__(v89, v90);
          v82 = v89 - v90;
          v83 = v72;
LABEL_88:
          if (v83)
          {
            goto LABEL_123;
          }

          v91 = &v10[16 * v61];
          v93 = *(v91 + 4);
          v92 = *(v91 + 5);
          v72 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v72)
          {
            goto LABEL_126;
          }

          if (v94 < v82)
          {
            goto LABEL_3;
          }

LABEL_95:
          v99 = v61 - 1;
          if (v61 - 1 >= v58)
          {
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
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
            goto LABEL_136;
          }

          if (!*a3)
          {
            goto LABEL_139;
          }

          v100 = *&v10[16 * v99 + 32];
          v5 = *&v10[16 * v61 + 40];
          sub_10005DC88((*a3 + 56 * v100), (*a3 + 56 * *&v10[16 * v61 + 32]), *a3 + 56 * v5, v60);
          if (v6)
          {
          }

          if (v5 < v100)
          {
            goto LABEL_117;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_10026F720(v10);
          }

          if (v99 >= *(v10 + 2))
          {
            goto LABEL_118;
          }

          v101 = &v10[16 * v99];
          *(v101 + 4) = v100;
          *(v101 + 5) = v5;
          result = sub_10026F694(v61);
          v58 = *(v10 + 2);
          if (v58 <= 1)
          {
            goto LABEL_3;
          }
        }

        v66 = &v10[16 * v58 + 32];
        v67 = *(v66 - 64);
        v68 = *(v66 - 56);
        v72 = __OFSUB__(v68, v67);
        v69 = v68 - v67;
        if (v72)
        {
          goto LABEL_119;
        }

        v71 = *(v66 - 48);
        v70 = *(v66 - 40);
        v72 = __OFSUB__(v70, v71);
        v64 = v70 - v71;
        v65 = v72;
        if (v72)
        {
          goto LABEL_120;
        }

        v73 = &v10[16 * v58];
        v75 = *v73;
        v74 = *(v73 + 1);
        v72 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v72)
        {
          goto LABEL_122;
        }

        v72 = __OFADD__(v64, v76);
        v77 = v64 + v76;
        if (v72)
        {
          goto LABEL_125;
        }

        if (v77 >= v69)
        {
          v95 = &v10[16 * v61 + 32];
          v97 = *v95;
          v96 = *(v95 + 1);
          v72 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v72)
          {
            goto LABEL_129;
          }

          if (v64 < v98)
          {
            v61 = v58 - 2;
          }

          goto LABEL_95;
        }

        goto LABEL_74;
      }

      goto LABEL_42;
    }

    if (!v41)
    {
      break;
    }

    v51 = *(v46 + 64);
    v52 = *(v46 + 80);
    v53 = *(v46 + 96);
    v54 = *(v46 + 16);
    *v49 = *v46;
    *(v46 + 72) = v54;
    *(v46 + 88) = *(v46 + 32);
    v55 = *(v46 + 48);
    *v46 = v44;
    *(v46 + 8) = v51;
    *(v46 + 24) = v52;
    *(v46 + 40) = v53;
    v46 -= 56;
    *(v49 + 48) = v55;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_10005DC88(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[56 * v11] <= a4)
    {
      memmove(a4, __src, 56 * v11);
    }

    v12 = &v4[56 * v11];
    if (v10 < 56 || v6 <= v7)
    {
      goto LABEL_42;
    }

LABEL_26:
    v22 = v6 - 56;
    v5 -= 56;
    v23 = v12;
    while (1)
    {
      v25 = *(v23 - 56);
      v23 -= 56;
      v24 = v25;
      if (v25 < 0)
      {
        v26 = &unk_100516E60 + 8 * *((v24 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
        v27 = *v22;
        if ((*v22 & 0x8000000000000000) != 0)
        {
LABEL_32:
          v28 = &unk_100516E60 + 8 * *((v27 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
          goto LABEL_33;
        }
      }

      else
      {
        v26 = &unk_100516CC0 + 8 * v24;
        v27 = *v22;
        if ((*v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_32;
        }
      }

      v28 = &unk_100516CC0 + 8 * v27;
LABEL_33:
      if (*v26 < *v28)
      {
        if ((v5 + 56) != v6)
        {
          v32 = *v22;
          v33 = *(v6 - 40);
          v34 = *(v6 - 24);
          *(v5 + 48) = *(v6 - 1);
          *(v5 + 16) = v33;
          *(v5 + 32) = v34;
          *v5 = v32;
        }

        if (v12 <= v4 || (v6 -= 56, v22 <= v7))
        {
          v6 = v22;
          goto LABEL_42;
        }

        goto LABEL_26;
      }

      if ((v5 + 56) != v12)
      {
        v29 = *v23;
        v30 = *(v23 + 16);
        v31 = *(v23 + 32);
        *(v5 + 48) = *(v23 + 48);
        *(v5 + 16) = v30;
        *(v5 + 32) = v31;
        *v5 = v29;
      }

      v5 -= 56;
      v12 = v23;
      if (v23 <= v4)
      {
        v12 = v23;
        goto LABEL_42;
      }
    }
  }

  if (a4 != __dst || &__dst[56 * v9] <= a4)
  {
    memmove(a4, __dst, 56 * v9);
  }

  v12 = &v4[56 * v9];
  if (v8 >= 56 && v6 < v5)
  {
    do
    {
      v13 = *v6;
      if ((*v6 & 0x8000000000000000) != 0)
      {
        v14 = &unk_100516E60 + 8 * *((v13 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
        v15 = *v4;
        if ((*v4 & 0x8000000000000000) == 0)
        {
LABEL_9:
          v16 = &unk_100516CC0 + 8 * v15;
          goto LABEL_12;
        }
      }

      else
      {
        v14 = &unk_100516CC0 + 8 * v13;
        v15 = *v4;
        if ((*v4 & 0x8000000000000000) == 0)
        {
          goto LABEL_9;
        }
      }

      v16 = &unk_100516E60 + 8 * *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
LABEL_12:
      if (*v14 >= *v16)
      {
        v17 = v4;
        v18 = v7 == v4;
        v4 += 56;
        if (v18)
        {
          goto LABEL_18;
        }

LABEL_17:
        v19 = *v17;
        v20 = *(v17 + 1);
        v21 = *(v17 + 2);
        *(v7 + 6) = *(v17 + 6);
        *(v7 + 1) = v20;
        *(v7 + 2) = v21;
        *v7 = v19;
        goto LABEL_18;
      }

      v17 = v6;
      v18 = v7 == v6;
      v6 += 56;
      if (!v18)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 56;
    }

    while (v4 < v12 && v6 < v5);
  }

  v6 = v7;
LABEL_42:
  v35 = ((v12 - v4) * 0x4924924924924925) >> 64;
  v36 = (v35 >> 4) + (v35 >> 63);
  if (v6 != v4 || v6 >= &v4[56 * v36])
  {
    memmove(v6, v4, 56 * v36);
  }

  return 1;
}

uint64_t sub_10005DF90(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, Swift::Int))
{
  sub_1004DF26C();
  sub_1004DD55C();
  v5 = sub_1004DF2BC();

  return a3(a1, a2, v5);
}

uint64_t sub_10005E014(void *(*a1)(void *__return_ptr), uint64_t a2, void (*a3)(void *__return_ptr, void *))
{
  v4 = a1(v29);
  a3(v26, v4);
  v5 = v30;
  v6 = v31;
  sub_100008C70(v29, v30);
  v7 = (*(v6 + 8))(v5, v6);
  v9 = v8;
  v10 = v27;
  v11 = v28;
  sub_100008C70(v26, v27);
  if (v7 == (*(v11 + 8))(v10, v11) && v9 == v12)
  {
  }

  else
  {
    v14 = sub_1004DF08C();

    v15 = 0;
    if ((v14 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v16 = v30;
  v17 = v31;
  sub_100008C70(v29, v30);
  v18 = (*(v17 + 24))(v16, v17);
  v20 = v19;
  v21 = v27;
  v22 = v28;
  sub_100008C70(v26, v27);
  v23 = (*(v22 + 24))(v21, v22);
  if (v20)
  {
    if (v24)
    {
      if (v18 == v23 && v20 == v24)
      {

        v15 = 1;
      }

      else
      {
        v15 = sub_1004DF08C();
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    if (!v24)
    {
      v15 = 1;
      goto LABEL_18;
    }

    v15 = 0;
  }

LABEL_18:
  sub_100008D24(v26);
  sub_100008D24(v29);
  return v15 & 1;
}

uint64_t sub_10005E224()
{

  return swift_deallocObject();
}

char *sub_10005E25C(uint64_t a1, char **a2, uint64_t a3, int a4)
{
  v29 = a4;
  v5 = *(a1 + 16);
  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = (a1 + 40);
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v8[5];
    v12 = *v8;
    LOBYTE(v25[0]) = *(v8 - 8);
    v25[1] = v12;
    v21 = *(v8 + 3);
    v26 = *(v8 + 1);
    v27 = v21;
    v28 = v11;

    sub_100054828(v25, a2, a3, v29 & 1, v23);
    if (v4)
    {
      break;
    }

    if (*&v23[0] >> 60 != 15)
    {
      v22 = v23[0];
      v19 = v23[2];
      v20 = v23[1];
      v13 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_10003A240(0, *(v9 + 2) + 1, 1, v9);
      }

      v15 = *(v9 + 2);
      v14 = *(v9 + 3);
      v16 = v22;
      if (v15 >= v14 >> 1)
      {
        v17 = sub_10003A240((v14 > 1), v15 + 1, 1, v9);
        v16 = v22;
        v9 = v17;
      }

      *(v9 + 2) = v15 + 1;
      v10 = &v9[56 * v15];
      *(v10 + 2) = v16;
      *(v10 + 3) = v20;
      *(v10 + 4) = v19;
      *(v10 + 10) = v13;
    }

    v8 += 7;
    if (!--v5)
    {
      return v9;
    }
  }

  return v9;
}

char *sub_10005E45C(char *result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = &result[-a2];
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = &v7[v5];
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_10003ACAC(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_100154234(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_10005E51C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_100635960);
    v3 = sub_1004DEDBC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10005DF90(v5, v6, sub_100029280);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_10005E644(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_100635908);
    v3 = sub_1004DEDBC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000108DC(v4, &v13, &qword_100635958);
      v5 = v13;
      v6 = v14;
      result = sub_10005DF90(v13, v14, sub_100029280);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100006F5C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_10005E788(uint64_t result, char **a2, uint64_t *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = 0;
  v5 = result + 40;
  v6 = _swiftEmptyArrayStorage;
  v24 = *(result + 16);
  v22 = result + 40;
  do
  {
    v23 = v6;
    v7 = (v5 + 56 * v4);
    for (i = v4; ; ++i)
    {
      if (i >= v3)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return result;
      }

      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_24;
      }

      v9 = *(v7 - 1);
      v32 = v7[4];
      v10 = v7[5];
      v30 = v7[2];
      v31 = v7[3];
      v28 = *v7;
      v29 = v7[1];
      if (v9 < 0)
      {
        break;
      }

      v27 = v10;

      sub_1004DEAAC(49);

      v33._countAndFlagsBits = ActionType.rawValue.getter(v9);
      sub_1004DD5FC(v33);

      v34._object = 0x80000001004EA350;
      v34._countAndFlagsBits = 0xD00000000000002BLL;
      sub_1004DD5FC(v34);
      v11 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v11;
      v13 = i + 1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = sub_10003A134(0, *(v11 + 2) + 1, 1, v11);
        *a2 = v11;
      }

      v15 = *(v11 + 2);
      v14 = *(v11 + 3);
      if (v15 >= v14 >> 1)
      {
        v11 = sub_10003A134((v14 > 1), v15 + 1, 1, v11);
        *a2 = v11;
      }

      *(v11 + 2) = v15 + 1;
      v16 = &v11[16 * v15];
      *(v16 + 4) = 544743456;
      *(v16 + 5) = 0xE400000000000000;
      v17 = *a3;

      v18 = sub_100120180(v9, v17);

      v3 = v24;
      v4 = i + 1;
      v10 = v27;
      if ((v18 & 1) == 0)
      {
        goto LABEL_15;
      }

      result = sub_10005ECB0(v9);
      v7 += 7;
      if (v13 == v24)
      {
        return v23;
      }
    }

LABEL_15:
    v6 = v23;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000374AC(0, v23[2] + 1, 1);
      v6 = v23;
    }

    v5 = v22;
    v20 = v6[2];
    v19 = v6[3];
    if (v20 >= v19 >> 1)
    {
      result = sub_1000374AC((v19 > 1), v20 + 1, 1);
      v6 = v23;
    }

    v6[2] = v20 + 1;
    v21 = &v6[7 * v20];
    v21[4] = v9;
    v21[5] = v28;
    v21[6] = v29;
    v21[7] = v30;
    v21[8] = v31;
    v21[9] = v32;
    v21[10] = v10;
  }

  while (v4 != v3);
  return v6;
}

unint64_t sub_10005EA78(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = sub_10003A134(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  result = sub_1001542D8(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

unint64_t sub_10005EB54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_100635988);
    v3 = sub_1004DEDBC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_100056B9C(v5);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10005EC48(uint64_t a1)
{
  v2 = sub_100004CB8(&unk_100635710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005ECB0(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
  }
}

uint64_t sub_10005ED20()
{

  return swift_deallocObject();
}

uint64_t sub_10005ED58()
{

  return sub_1004DB8EC();
}

uint64_t sub_10005EDBC()
{

  return swift_deallocObject();
}

uint64_t sub_10005EDF4()
{
  result = (*(v0 + 16))();
  if (result)
  {
    return sub_1004DB8DC();
  }

  return result;
}

unint64_t sub_10005EE28()
{
  result = qword_100635728;
  if (!qword_100635728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100635728);
  }

  return result;
}

unint64_t sub_10005EE80()
{
  result = qword_100635730;
  if (!qword_100635730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100635730);
  }

  return result;
}

uint64_t sub_10005EED4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10005EF1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005EF78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10005EFC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005F01C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10005F064(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005F0DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1004D82AC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005F144(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_1006358A8);
    v3 = sub_1004DEDBC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10005DF90(v5, v6, sub_100029280);
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

unint64_t sub_10005F274(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_100635968);
    v3 = sub_1004DEDBC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000108DC(v4, v13, &unk_100635970);
      result = sub_100028F3C(v13);
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
      result = sub_100006F5C(&v15, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10005F3B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_100635950);
    v3 = sub_1004DEDBC();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_100056C24(v5);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10005F490(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_100004CB8(&qword_1006358A0);
  v3 = sub_1004DEDBC();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_100056C24(v4);
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

    v9 = sub_100056C24(v4);
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

unint64_t sub_10005F5A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_100635948);
    v3 = sub_1004DEDBC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10005DF90(v5, v6, sub_100029280);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10005F6BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&unk_100635920);
    v3 = sub_1004DEDBC();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10005DF90(v5, v6, sub_100029280);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10005F7CC(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100634A60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100004CB8(&qword_100634A68);
    v7 = sub_1004DEDBC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000108DC(v9, v5, &qword_100634A60);
      result = sub_100056C8C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1004D82AC();
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10005F9B4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, Swift::Int))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004CB8(&qword_100635940);
    v5 = sub_1004DEDBC();

    for (i = (a1 + 56); ; i += 4)
    {
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      sub_100010530(v9, v10);
      result = sub_10005DF90(v7, v8, a2);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      v14 = (v5[7] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      v15 = v5[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v5[2] = v17;
      if (!--v2)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10005FAD4(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100635910);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100004CB8(&qword_100635918);
    v7 = sub_1004DEDBC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000108DC(v9, v5, &qword_100635910);
      result = sub_100056C8C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1004D82AC();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
      result = sub_100060134(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_10005FCDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_100635880);
    v3 = sub_1004DEDBC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_100056D60(v6);
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

unint64_t sub_10005FDD4(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_1006358B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100004CB8(&qword_100635870);
    v7 = sub_1004DEDBC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000108DC(v9, v5, &qword_1006358B0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10005DF90(*v5, v12, sub_100029280);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1004D90CC();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

unint64_t sub_10006001C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_100004CB8(a2);
    v7 = sub_1004DEDBC();
    v8 = a1 + 32;

    while (1)
    {
      sub_1000108DC(v8, &v15, a4);
      v9 = v15;
      result = sub_100056E30(v15);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      result = sub_100006F5C(&v16, (v7[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100060134(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100060198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000601FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100060314(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a3;
    v4 = a2;
    v6 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    v14 = a4;
    if (!v9)
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1004DED5C();
  if (result < v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 - v4;
  if (__OFSUB__(0, v4 - v6))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v12 = sub_1004DED5C();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  v7(result, 1);

  return v14(v6, v4, 0);
}

uint64_t sub_10006048C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  a5[3] = a2(0);
  a5[4] = a3;
  v9 = sub_1000357EC(a5);
  return sub_10006CCA4(a1, v9, a4);
}

uint64_t sub_100060568(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(sub_100004CB8(&qword_1006359B0) - 8);
  v1[3] = v2;
  v1[4] = *(v2 + 64);
  v1[5] = swift_task_alloc();
  sub_100004CB8(&qword_100635240);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100060670, 0, 0);
}

uint64_t sub_100060670()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];
  v5 = sub_1004DDA8C();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_1000108DC(v4, v2, &qword_1006359B0);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_100047F38(v2, v7 + v6, &qword_1006359B0);
  sub_10021C658(0, 0, v1, &unk_1005172A0, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000607CC(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(sub_100004CB8(&qword_1006359B8) - 8);
  v1[3] = v2;
  v1[4] = *(v2 + 64);
  v1[5] = swift_task_alloc();
  sub_100004CB8(&qword_100635240);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000608D4, 0, 0);
}

uint64_t sub_1000608D4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];
  v5 = sub_1004DDA8C();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_1000108DC(v4, v2, &qword_1006359B8);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_100047F38(v2, v7 + v6, &qword_1006359B8);
  sub_10021C658(0, 0, v1, &unk_1005172B0, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100060A30(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(sub_100004CB8(&qword_100635B30) - 8);
  v1[3] = v2;
  v1[4] = *(v2 + 64);
  v1[5] = swift_task_alloc();
  sub_100004CB8(&qword_100635240);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100060B38, 0, 0);
}

uint64_t sub_100060B38()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];
  v5 = sub_1004DDA8C();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_1000108DC(v4, v2, &qword_100635B30);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_100047F38(v2, v7 + v6, &qword_100635B30);
  sub_10021C658(0, 0, v1, &unk_1005171B0, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100060C94(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return (sub_100173670)(a1, 1);
}

uint64_t sub_100060D4C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return (sub_100174B90)(a1, 1);
}

uint64_t sub_100060E04(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035B28;

  return (sub_1001898BC)(a1, 1);
}

uint64_t Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v56 = a7;
  v57 = a6;
  v54 = a4;
  v55 = a5;
  v50 = a2;
  v12 = sub_1004D96BC();
  v47 = *(v12 - 8);
  v48 = v12;
  __chkstk_darwin(v12);
  v46 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v51 = v14;
  v53 = *(v14 - 8);
  v15 = v53;
  __chkstk_darwin(v14);
  v49 = (&v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_100004CB8(&qword_100635990);
  __chkstk_darwin(v17 - 8);
  v52 = &v46 - v18;
  v19 = type metadata accessor for Actions.PlaybackContext();
  v20 = v19[5];
  (*(v15 + 56))(&a8[v20], 1, 1, v14);
  v21 = &a8[v19[6]];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v22 = &a8[v19[7]];
  *(v22 + 32) = 0;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *a8 = a1;
  sub_1000613B8(a2, &a8[v20], &qword_100635990);
  v24 = *v21;
  v23 = *(v21 + 1);
  v25 = *(v21 + 2);
  v26 = *(v21 + 3);
  v27 = a3;
  v28 = a3;
  v29 = v54;
  v30 = v55;
  v31 = v57;
  sub_100061320(v28, v54, v55, v57);
  v32 = v25;
  v33 = v50;
  sub_10006136C(v24, v23, v32, v26);
  v34 = v27;
  *v21 = v27;
  *(v21 + 1) = v29;
  *(v21 + 2) = v30;
  *(v21 + 3) = v31;
  v36 = v51;
  v35 = v52;
  sub_1000613B8(v56, v22, &qword_100635998);
  sub_1000108DC(v33, v35, &qword_100635990);
  if ((*(v53 + 48))(v35, 1, v36) == 1)
  {
    sub_10006136C(v34, v29, v55, v57);
    sub_10001074C(v56, &qword_100635998);
    sub_10001074C(v33, &qword_100635990);
    v33 = v35;
  }

  else
  {
    v37 = v29;
    v38 = v49;
    sub_10006CCA4(v35, v49, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v39 = v46;
      v40 = v47;
      v41 = v48;
      (*(v47 + 32))(v46, v38, v48);
      v42 = sub_1004D968C();
      (*(v40 + 8))(v39, v41);
    }

    else
    {
      v42 = *v38;
    }

    sub_100061420(v35);
    v43 = v55;
    v44 = v57;
    sub_100219684(v34, v37, v55, v57);
    sub_10006136C(v34, v37, v43, v44);

    sub_10001074C(v56, &qword_100635998);
  }

  return sub_10001074C(v33, &qword_100635990);
}

uint64_t type metadata accessor for Actions.PlaybackContext()
{
  result = qword_100635AD0;
  if (!qword_100635AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100061320(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_100027F64(a3, a4);
  }
}

void sub_10006136C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_100010584(a3, a4);
  }
}

uint64_t sub_1000613B8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100004CB8(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_100061420(uint64_t a1)
{
  v2 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Actions.PlaybackContext.playActivityInformation.getter()
{
  v1 = v0 + *(type metadata accessor for Actions.PlaybackContext() + 24);
  v2 = *v1;
  sub_100061320(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  return v2;
}

void Actions.PlaybackContext.playActivityInformation.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v29 = a2;
  v6 = sub_1004D96BC();
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  v16 = type metadata accessor for Actions.PlaybackContext();
  v17 = v4 + *(v16 + 24);
  sub_10006136C(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24));
  v18 = v29;
  v19 = v30;
  *v17 = a1;
  *(v17 + 8) = v18;
  v20 = v31;
  *(v17 + 16) = v19;
  *(v17 + 24) = v20;
  v21 = *(v16 + 20);
  if (!(*(v10 + 48))(v4 + v21, 1, v9))
  {
    v22 = v28;
    sub_10006CCA4(v4 + v21, v15, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    sub_10006CCA4(v15, v13, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v22 + 32))(v8, v13, v6);
      v23 = sub_1004D968C();
      (*(v22 + 8))(v8, v6);
      sub_100061420(v15);
    }

    else
    {
      sub_100061420(v15);
      v23 = *v13;
    }

    v24 = *v17;
    v25 = *(v17 + 8);
    v26 = *(v17 + 16);
    v27 = *(v17 + 24);
    sub_100061320(*v17, v25, v26, v27);
    sub_100219684(v24, v25, v26, v27);
    sub_10006136C(v24, v25, v26, v27);
  }
}

void (*Actions.PlaybackContext.playActivityInformation.modify(void *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_1004D96BC();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v4[3] = v7;
  v8 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v4[4] = v8;
  v9 = *(v8 - 8);
  v4[5] = v9;
  v10 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[6] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v4[6] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v4[7] = v11;
  v12 = type metadata accessor for Actions.PlaybackContext();
  v4[8] = v12;
  *(v4 + 18) = *(v12 + 24);
  return sub_1000619FC;
}

void sub_1000619FC(void **a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v3 = *v2;
    v4 = *(v2[8] + 20);
    if (!(*(v2[5] + 48))(*v2 + v4, 1, v2[4]))
    {
      v6 = v2[6];
      v5 = v2[7];
      sub_10006CCA4(v3 + v4, v5, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      sub_10006CCA4(v5, v6, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v8 = v2[6];
      v9 = v2[7];
      if (EnumCaseMultiPayload == 1)
      {
        v11 = v2[2];
        v10 = v2[3];
        v12 = v2[1];
        (*(v11 + 32))(v10, v2[6], v12);
        v13 = sub_1004D968C();
        (*(v11 + 8))(v10, v12);
        sub_100061420(v9);
      }

      else
      {
        sub_100061420(v2[7]);
        v13 = *v8;
      }

      v14 = (*v2 + *(v2 + 18));
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = v14[3];
      sub_100061320(*v14, v16, v17, v18);
      sub_100219684(v15, v16, v17, v18);
      sub_10006136C(v15, v16, v17, v18);
    }
  }

  v19 = v2[6];
  v20 = v2[3];
  free(v2[7]);
  free(v19);
  free(v20);

  free(v2);
}

uint64_t static MusicActions.queueActions(item:playbackContext:presentationSource:metricsReportingContext:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v113 = a2;
  v8 = sub_100004CB8(&qword_1006359A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v110 - v9;
  v11 = type metadata accessor for Actions.PlaybackContext();
  __chkstk_darwin(v11 - 8);
  v13 = (&v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[3];
  v15 = a1[4];
  v16 = sub_100008C70(a1, v14);
  __chkstk_darwin(v16);
  v18 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v117 = type metadata accessor for Actions.PlaybackContext;
  sub_10006CCA4(a2, v13, type metadata accessor for Actions.PlaybackContext);
  v20 = a3;
  v115 = a3;
  sub_1000699E8(a3, &v155);
  v21 = a4;
  v114 = a4;
  v111 = v10;
  sub_1000108DC(a4, v10, &qword_1006359A0);
  Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v18, 0, v13, &v155, v10, v14, v15, &v120);
  sub_1000BE470(&v120, &v122);
  v171[0] = v120;
  sub_100069A44(v171);
  v170 = v121;
  sub_10001074C(&v170, &unk_100639EB0);

  v116 = sub_100004CB8(&qword_1006350A8);
  v22 = swift_allocObject();
  v118 = xmmword_100511DA0;
  *(v22 + 16) = xmmword_100511DA0;
  LOBYTE(a4) = BYTE8(v126);
  v23 = swift_allocObject();
  v24 = v129;
  *(v23 + 112) = v128;
  *(v23 + 128) = v24;
  *(v23 + 144) = v130;
  v25 = v125;
  *(v23 + 48) = v124;
  *(v23 + 64) = v25;
  v26 = v127;
  *(v23 + 80) = v126;
  *(v23 + 96) = v26;
  v27 = v123;
  *(v23 + 16) = v122;
  *(v23 + 32) = v27;
  v28 = swift_allocObject();
  v29 = v129;
  *(v28 + 112) = v128;
  *(v28 + 128) = v29;
  *(v28 + 144) = v130;
  v30 = v125;
  *(v28 + 48) = v124;
  *(v28 + 64) = v30;
  v31 = v127;
  *(v28 + 80) = v126;
  *(v28 + 96) = v31;
  v32 = v123;
  *(v28 + 16) = v122;
  *(v28 + 32) = v32;
  v33 = swift_allocObject();
  v34 = v129;
  *(v33 + 112) = v128;
  *(v33 + 128) = v34;
  *(v33 + 144) = v130;
  v35 = v125;
  *(v33 + 48) = v124;
  *(v33 + 64) = v35;
  v36 = v127;
  *(v33 + 80) = v126;
  *(v33 + 96) = v36;
  v37 = v123;
  *(v33 + 16) = v122;
  *(v33 + 32) = v37;
  v112 = v22;
  *(v22 + 32) = a4;
  *(v22 + 40) = sub_100069A9C;
  *(v22 + 48) = v23;
  *(v22 + 56) = sub_100069AA4;
  *(v22 + 64) = v28;
  *(v22 + 72) = &unk_100516F00;
  *(v22 + 80) = v33;
  v38 = a1[3];
  v39 = a1[4];
  v40 = sub_100008C70(a1, v38);
  __chkstk_darwin(v40);
  v42 = &v110 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v43 + 16))(v42);
  v44 = v113;
  v45 = v13;
  sub_10006CCA4(v113, v13, v117);
  sub_1000699E8(v20, &v144);
  v46 = v111;
  sub_1000108DC(v21, v111, &qword_1006359A0);
  sub_1000108DC(&v122, &v155, &qword_1006359A8);
  sub_1000108DC(&v122, &v155, &qword_1006359A8);
  Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v42, 2, v45, &v144, v46, v38, v39, &v131);
  sub_1000BE470(&v131, &v133);
  v169 = v131;
  sub_100069A44(&v169);
  v168 = v132;
  sub_10001074C(&v168, &unk_100639EB0);

  v47 = swift_allocObject();
  *(v47 + 16) = v118;
  LOBYTE(v42) = BYTE8(v137);
  v48 = swift_allocObject();
  v49 = v140;
  *(v48 + 112) = v139;
  *(v48 + 128) = v49;
  *(v48 + 144) = v141;
  v50 = v136;
  *(v48 + 48) = v135;
  *(v48 + 64) = v50;
  v51 = v138;
  *(v48 + 80) = v137;
  *(v48 + 96) = v51;
  v52 = v134;
  *(v48 + 16) = v133;
  *(v48 + 32) = v52;
  v53 = swift_allocObject();
  v54 = v140;
  *(v53 + 112) = v139;
  *(v53 + 128) = v54;
  *(v53 + 144) = v141;
  v55 = v136;
  *(v53 + 48) = v135;
  *(v53 + 64) = v55;
  v56 = v138;
  *(v53 + 80) = v137;
  *(v53 + 96) = v56;
  v57 = v134;
  *(v53 + 16) = v133;
  *(v53 + 32) = v57;
  v58 = swift_allocObject();
  v59 = v140;
  *(v58 + 112) = v139;
  *(v58 + 128) = v59;
  *(v58 + 144) = v141;
  v60 = v136;
  *(v58 + 48) = v135;
  *(v58 + 64) = v60;
  v61 = v138;
  *(v58 + 80) = v137;
  *(v58 + 96) = v61;
  v62 = v134;
  *(v58 + 16) = v133;
  *(v58 + 32) = v62;
  *(v47 + 32) = v42;
  *(v47 + 40) = sub_10006CEC4;
  *(v47 + 48) = v48;
  *(v47 + 56) = sub_10006CEDC;
  *(v47 + 64) = v53;
  *(v47 + 72) = &unk_100516F10;
  *(v47 + 80) = v58;
  v63 = a1[3];
  v64 = a1[4];
  v65 = sub_100008C70(a1, v63);
  __chkstk_darwin(v65);
  v67 = &v110 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v68 + 16))(v67);
  sub_10006CCA4(v44, v45, v117);
  sub_1000699E8(v115, &v144);
  sub_1000108DC(v114, v46, &qword_1006359A0);
  sub_1000108DC(&v133, &v155, &qword_1006359A8);
  sub_1000108DC(&v133, &v155, &qword_1006359A8);
  Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v67, 1, v45, &v144, v46, v63, v64, &v142);
  sub_1000BE470(&v142, &v144);
  v167 = v142;
  sub_100069A44(&v167);
  v166 = v143;
  sub_10001074C(&v166, &unk_100639EB0);

  v69 = swift_allocObject();
  *(v69 + 16) = v118;
  LOBYTE(v21) = BYTE8(v148);
  v70 = swift_allocObject();
  v71 = v151;
  *(v70 + 112) = v150;
  *(v70 + 128) = v71;
  *(v70 + 144) = v152;
  v72 = v147;
  *(v70 + 48) = v146;
  *(v70 + 64) = v72;
  v73 = v149;
  *(v70 + 80) = v148;
  *(v70 + 96) = v73;
  v74 = v145;
  *(v70 + 16) = v144;
  *(v70 + 32) = v74;
  v75 = swift_allocObject();
  v76 = v151;
  *(v75 + 112) = v150;
  *(v75 + 128) = v76;
  *(v75 + 144) = v152;
  v77 = v147;
  *(v75 + 48) = v146;
  *(v75 + 64) = v77;
  v78 = v149;
  *(v75 + 80) = v148;
  *(v75 + 96) = v78;
  v79 = v145;
  *(v75 + 16) = v144;
  *(v75 + 32) = v79;
  v80 = swift_allocObject();
  v81 = v151;
  *(v80 + 112) = v150;
  *(v80 + 128) = v81;
  *(v80 + 144) = v152;
  v82 = v147;
  *(v80 + 48) = v146;
  *(v80 + 64) = v82;
  v83 = v149;
  *(v80 + 80) = v148;
  *(v80 + 96) = v83;
  v84 = v145;
  *(v80 + 16) = v144;
  *(v80 + 32) = v84;
  *(v69 + 32) = v21;
  *(v69 + 40) = sub_10006CEC4;
  *(v69 + 48) = v70;
  *(v69 + 56) = sub_10006CEDC;
  *(v69 + 64) = v75;
  *(v69 + 72) = &unk_100516F18;
  *(v69 + 80) = v80;
  v85 = a1[3];
  v86 = a1[4];
  v87 = sub_100008C70(a1, v85);
  __chkstk_darwin(v87);
  v89 = &v110 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v90 + 16))(v89);
  sub_10006CCA4(v113, v45, v117);
  sub_1000699E8(v115, v119);
  sub_1000108DC(v114, v46, &qword_1006359A0);
  sub_1000108DC(&v144, &v155, &qword_1006359A8);
  sub_1000108DC(&v144, &v155, &qword_1006359A8);
  Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v89, 3, v45, v119, v46, v85, v86, &v153);
  sub_1000BE470(&v153, &v155);
  v165 = v153;
  sub_100069A44(&v165);
  v164 = v154;
  sub_10001074C(&v164, &unk_100639EB0);

  v91 = swift_allocObject();
  *(v91 + 16) = v118;
  LOBYTE(v21) = BYTE8(v159);
  v92 = swift_allocObject();
  v93 = v162;
  *(v92 + 112) = v161;
  *(v92 + 128) = v93;
  *(v92 + 144) = v163;
  v94 = v158;
  *(v92 + 48) = v157;
  *(v92 + 64) = v94;
  v95 = v160;
  *(v92 + 80) = v159;
  *(v92 + 96) = v95;
  v96 = v156;
  *(v92 + 16) = v155;
  *(v92 + 32) = v96;
  v97 = swift_allocObject();
  v98 = v162;
  *(v97 + 112) = v161;
  *(v97 + 128) = v98;
  *(v97 + 144) = v163;
  v99 = v158;
  *(v97 + 48) = v157;
  *(v97 + 64) = v99;
  v100 = v160;
  *(v97 + 80) = v159;
  *(v97 + 96) = v100;
  v101 = v156;
  *(v97 + 16) = v155;
  *(v97 + 32) = v101;
  v102 = swift_allocObject();
  v103 = v162;
  *(v102 + 112) = v161;
  *(v102 + 128) = v103;
  *(v102 + 144) = v163;
  v104 = v158;
  *(v102 + 48) = v157;
  *(v102 + 64) = v104;
  v105 = v160;
  *(v102 + 80) = v159;
  *(v102 + 96) = v105;
  v106 = v156;
  *(v102 + 16) = v155;
  *(v102 + 32) = v106;
  *(v91 + 32) = v21;
  *(v91 + 40) = sub_10006CEC4;
  *(v91 + 48) = v92;
  *(v91 + 56) = sub_10006CEDC;
  *(v91 + 64) = v97;
  *(v91 + 72) = &unk_100516F20;
  *(v91 + 80) = v102;
  sub_100004CB8(&qword_100634FB0);
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_100511B10;
  *(v107 + 32) = v112;
  *(v107 + 40) = v47;
  *(v107 + 48) = v69;
  *(v107 + 56) = v91;
  sub_1000108DC(&v155, v119, &qword_1006359A8);
  sub_1000108DC(&v155, v119, &qword_1006359A8);
  v108 = sub_100046EC0(v107);
  swift_setDeallocating();
  sub_100004CB8(&qword_100634FB8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v108;
}

uint64_t static MusicActions.pinActions(item:library:presentationSource:metricsReportingContext:onFinish:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v96 = a5;
  v97 = a6;
  v86 = a3;
  v87 = a4;
  v95 = a2;
  v9 = sub_100004CB8(&qword_1006359B0);
  v10 = *(v9 - 8);
  v88 = (v9 - 8);
  v92 = v10;
  v91 = *(v10 + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v94 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v93 = &v77 - v14;
  v15 = __chkstk_darwin(v13);
  v90 = &v77 - v16;
  __chkstk_darwin(v15);
  v89 = &v77 - v17;
  v18 = sub_100004CB8(&qword_1006359A0);
  __chkstk_darwin(v18 - 8);
  v20 = &v77 - v19;
  v21 = sub_100004CB8(&qword_1006359B8);
  v22 = (v21 - 8);
  v79 = *(v21 - 8);
  v23 = *(v79 + 64);
  v24 = __chkstk_darwin(v21);
  v82 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v24);
  v80 = &v77 - v26;
  v27 = __chkstk_darwin(v25);
  v78 = &v77 - v28;
  __chkstk_darwin(v27);
  v30 = &v77 - v29;
  v85 = a1;
  v31 = a1[3];
  inited = a1[4];
  v32 = sub_100008C70(a1, v31);
  __chkstk_darwin(v32);
  v34 = &v77 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v34);
  sub_1000699E8(a3, v99);
  v81 = v20;
  sub_1000108DC(a4, v20, &qword_1006359A0);
  v36 = v95;

  v38 = v96;
  v37 = v97;
  sub_10000DE64(v96);
  Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)(v34, v36, v99, v20, v38, v37, v31, inited, v30);
  v30[v22[11]] = 7;
  *&v30[v22[13]] = 0x4014000000000000;
  v39 = &v30[v22[12]];
  *v39 = sub_1001E6194;
  v39[1] = 0;
  v40 = &v30[v22[14]];
  *v40 = &unk_10051FC20;
  *(v40 + 1) = 0;
  v41 = &v30[v22[15]];
  *v41 = &unk_10051FC28;
  *(v41 + 1) = 0;
  v84 = sub_100004CB8(&qword_1006350A8);
  inited = swift_initStackObject();
  v83 = xmmword_100511DA0;
  *(inited + 16) = xmmword_100511DA0;
  v42 = v78;
  sub_1000108DC(v30, v78, &qword_1006359B8);
  v43 = (*(v79 + 80) + 16) & ~*(v79 + 80);
  v44 = swift_allocObject();
  sub_100047F38(v42, v44 + v43, &qword_1006359B8);
  v45 = v80;
  sub_1000108DC(v30, v80, &qword_1006359B8);
  v46 = swift_allocObject();
  sub_100047F38(v45, v46 + v43, &qword_1006359B8);
  v47 = v82;
  sub_1000108DC(v30, v82, &qword_1006359B8);
  v48 = swift_allocObject();
  sub_100047F38(v47, v48 + v43, &qword_1006359B8);
  v49 = inited;
  *(inited + 32) = 7;
  v49[5] = sub_100069C4C;
  v49[6] = v44;
  v49[7] = sub_100069CEC;
  v49[8] = v46;
  v49[9] = &unk_100516F50;
  v49[10] = v48;
  sub_10001074C(v30, &qword_1006359B8);
  v50 = v85[3];
  v51 = v85[4];
  v52 = sub_100008C70(v85, v50);
  __chkstk_darwin(v52);
  v54 = &v77 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v55 + 16))(v54);
  sub_1000699E8(v86, v99);
  v56 = v81;
  sub_1000108DC(v87, v81, &qword_1006359A0);
  v57 = v95;

  v59 = v96;
  v58 = v97;
  sub_10000DE64(v96);
  v60 = v89;
  Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)(v54, v57, v99, v56, v59, v58, v50, v51, v89);
  v61 = v88;
  *(v60 + v88[11]) = 8;
  *(v60 + v61[13]) = 0x4014000000000000;
  v62 = (v60 + v61[12]);
  v63 = v60;
  *v62 = sub_1001E63E4;
  v62[1] = 0;
  v64 = (v60 + v61[14]);
  *v64 = &unk_10051FC50;
  v64[1] = 0;
  v65 = (v60 + v61[15]);
  *v65 = &unk_10051FC58;
  v65[1] = 0;
  v66 = swift_initStackObject();
  *(v66 + 16) = v83;
  v67 = v90;
  sub_1000108DC(v60, v90, &qword_1006359B0);
  v68 = (*(v92 + 80) + 16) & ~*(v92 + 80);
  v97 = swift_allocObject();
  sub_100047F38(v67, v97 + v68, &qword_1006359B0);
  v69 = v93;
  sub_1000108DC(v60, v93, &qword_1006359B0);
  v70 = swift_allocObject();
  sub_100047F38(v69, v70 + v68, &qword_1006359B0);
  v71 = v94;
  sub_1000108DC(v60, v94, &qword_1006359B0);
  v72 = swift_allocObject();
  sub_100047F38(v71, v72 + v68, &qword_1006359B0);
  *(v66 + 32) = 8;
  v73 = v97;
  *(v66 + 40) = sub_100069E00;
  *(v66 + 48) = v73;
  *(v66 + 56) = sub_100069EA0;
  *(v66 + 64) = v70;
  *(v66 + 72) = &unk_100516F60;
  *(v66 + 80) = v72;
  sub_10001074C(v63, &qword_1006359B0);
  sub_100004CB8(&qword_100634FB0);
  v74 = swift_initStackObject();
  *(v74 + 16) = xmmword_1005126C0;
  *(v74 + 32) = inited;
  *(v74 + 40) = v66;
  v75 = sub_100046EC0(v74);
  swift_setDeallocating();
  sub_100004CB8(&qword_100634FB8);
  swift_arrayDestroy();
  return v75;
}

uint64_t static MusicActions.libraryActions(item:library:presentationSource:playlistPickerPresenter:observer:metricsReportingContext:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v195 = a7;
  *&v196 = a6;
  v193 = a3;
  v194 = a5;
  v184 = a4;
  v9 = sub_1004DCEBC();
  v180 = *(v9 - 8);
  v181 = v9;
  __chkstk_darwin(v9);
  v182 = &v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004CB8(&qword_100637A00);
  __chkstk_darwin(v11 - 8);
  v189 = (&v176 - v12);
  v13 = sub_1004DD05C();
  v186 = *(v13 - 8);
  v187 = v13;
  __chkstk_darwin(v13);
  v192 = &v176 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1004DCA0C();
  v191 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v176 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100004CB8(&qword_1006359A0);
  __chkstk_darwin(v18 - 8);
  v20 = &v176 - v19;
  v22 = a1[3];
  v21 = a1[4];
  v23 = a1[5];
  v24 = sub_100008C70(a1, v22);
  __chkstk_darwin(v24);
  v26 = &v176 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26);
  sub_1000699E8(v193, &v217);
  sub_1000108DC(v195, v20, &qword_1006359A0);
  v188 = v20;
  Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)(v26, a2, &v217, v194, v196, v20, v22, v21, &v224, v23);
  LOBYTE(v227) = 0;
  *(&v227 + 1) = sub_10006D3E4;
  *&v228 = 0;
  *(&v228 + 1) = 0x4014000000000000;
  *&v229 = &unk_100517308;
  *(&v229 + 1) = 0;
  *&v230 = &unk_100517310;
  *(&v230 + 1) = 0;
  sub_10006A190(a1, &v217);
  swift_unknownObjectRetain();
  v190 = a2;

  v194 = sub_100004CB8(&qword_1006359C0);
  if (swift_dynamicCast())
  {
    v28 = (*(v191 + 8))(v17, v15);
    v29 = (v224)(v28);
    if (v30 == 1)
    {
      v31 = 0;
      goto LABEL_6;
    }

    sub_1000354D0(v29, v30);
  }

  v31 = 1;
LABEL_6:
  v191 = sub_100004CB8(&qword_1006350A8);
  v32 = swift_allocObject();
  v196 = xmmword_100511DA0;
  *(v32 + 16) = xmmword_100511DA0;
  v33 = v227;
  v34 = swift_allocObject();
  v35 = v229;
  v34[5] = v228;
  v34[6] = v35;
  v34[7] = v230;
  v36 = v225;
  v34[1] = v224;
  v34[2] = v36;
  v37 = v227;
  v34[3] = v226;
  v34[4] = v37;
  v38 = swift_allocObject();
  v39 = v229;
  v38[5] = v228;
  v38[6] = v39;
  v38[7] = v230;
  v40 = v225;
  v38[1] = v224;
  v38[2] = v40;
  v41 = v227;
  v38[3] = v226;
  v38[4] = v41;
  v42 = swift_allocObject();
  v43 = v229;
  v42[5] = v228;
  v42[6] = v43;
  v42[7] = v230;
  v44 = v225;
  v42[1] = v224;
  v42[2] = v44;
  v45 = v227;
  v42[3] = v226;
  v42[4] = v45;
  *(v32 + 32) = v33;
  *(v32 + 40) = sub_10006A1F4;
  *(v32 + 48) = v34;
  *(v32 + 56) = sub_10006CF1C;
  *(v32 + 64) = v38;
  *(v32 + 72) = &unk_100516F80;
  *(v32 + 80) = v42;
  v185 = v32;
  if (v31)
  {
    v46 = a1[3];
    v47 = a1[4];
    v48 = a1[5];
    v49 = sub_100008C70(a1, v46);
    __chkstk_darwin(v49);
    v51 = &v176 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v52 + 16))(v51);
    v53 = v193;
    sub_1000699E8(v193, &v217);
    v54 = v195;
    v55 = v188;
    sub_1000108DC(v195, v188, &qword_1006359A0);
    Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v51, v190, &v217, v55, v46, v47, v48, &v210);
    v203 = v210;
    v204 = v211;
    v205 = v212;
    LOBYTE(v206) = 49;
    *(&v206 + 1) = sub_10006D3E4;
    *&v207 = 0;
    *(&v207 + 1) = 0x4014000000000000;
    *&v208 = &unk_1005176A8;
    *(&v208 + 1) = 0;
    *&v209 = &unk_1005176B0;
    *(&v209 + 1) = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v196;
    v57 = swift_allocObject();
    v58 = v208;
    v57[5] = v207;
    v57[6] = v58;
    v57[7] = v209;
    v59 = v204;
    v57[1] = v203;
    v57[2] = v59;
    v60 = v206;
    v57[3] = v205;
    v57[4] = v60;
    v61 = swift_allocObject();
    v62 = v208;
    v61[5] = v207;
    v61[6] = v62;
    v61[7] = v209;
    v63 = v204;
    v61[1] = v203;
    v61[2] = v63;
    v64 = v206;
    v61[3] = v205;
    v61[4] = v64;
    v65 = swift_allocObject();
    v66 = v208;
    v65[5] = v207;
    v65[6] = v66;
    v65[7] = v209;
    v67 = v204;
    v65[1] = v203;
    v65[2] = v67;
    v68 = v206;
    v65[3] = v205;
    v65[4] = v68;
    v183 = v56;
    *(v56 + 32) = 49;
    *(v56 + 40) = sub_10006A470;
    *(v56 + 48) = v57;
    *(v56 + 56) = sub_10006CF1C;
    *(v56 + 64) = v61;
    *(v56 + 72) = &unk_100516FE0;
    *(v56 + 80) = v65;
    v69 = a1[3];
    v70 = a1[4];
    v71 = a1[5];
    v72 = sub_100008C70(a1, v69);
    __chkstk_darwin(v72);
    v74 = &v176 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v75 + 16))(v74);
    sub_1000699E8(v53, &v217);
    v76 = v54;
    v77 = v55;
    sub_1000108DC(v76, v55, &qword_1006359A0);
    v78 = v190;
    Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)(v74, v190, 0, &v217, v77, v69, v70, v71, &v197);
    v210 = v197;
    v211 = v198;
    v212 = v199;
    LOBYTE(v213) = 48;
    *(&v213 + 1) = sub_10006D3E4;
    *&v214 = 0;
    *(&v214 + 1) = 0x4014000000000000;
    *&v215 = &unk_100517E00;
    *(&v215 + 1) = 0;
    *&v216 = &unk_100517E08;
    *(&v216 + 1) = 0;
    v79 = swift_allocObject();
    *(v79 + 16) = v196;
    v80 = swift_allocObject();
    v81 = v215;
    v80[5] = v214;
    v80[6] = v81;
    v80[7] = v216;
    v82 = v211;
    v80[1] = v210;
    v80[2] = v82;
    v83 = v213;
    v80[3] = v212;
    v80[4] = v83;
    v84 = swift_allocObject();
    v85 = v215;
    v84[5] = v214;
    v84[6] = v85;
    v84[7] = v216;
    v86 = v211;
    v84[1] = v210;
    v84[2] = v86;
    v87 = v213;
    v84[3] = v212;
    v84[4] = v87;
    v88 = swift_allocObject();
    v89 = v215;
    v88[5] = v214;
    v88[6] = v89;
    v88[7] = v216;
    v90 = v211;
    v88[1] = v210;
    v88[2] = v90;
    v91 = v213;
    v88[3] = v212;
    v88[4] = v91;
    *(v79 + 32) = 48;
    *(v79 + 40) = sub_10006A548;
    *(v79 + 48) = v80;
    *(v79 + 56) = sub_10006CF1C;
    *(v79 + 64) = v84;
    *(v79 + 72) = &unk_100516FF0;
    *(v79 + 80) = v88;
    v92 = a1[3];
    v178 = a1[4];
    v179 = v79;
    v177 = a1[5];
    v93 = sub_100008C70(a1, v92);
    v176 = &v176;
    __chkstk_darwin(v93);
    v95 = &v176 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v96 + 16))(v95);
    sub_1000699E8(v53, &v197);
    sub_1000108DC(v195, v77, &qword_1006359A0);

    sub_1000108DC(&v224, &v217, &qword_1006359C8);

    sub_1000108DC(&v224, &v217, &qword_1006359C8);
    sub_1000108DC(&v203, &v217, &qword_1006359F8);
    sub_1000108DC(&v210, &v217, &qword_100635A00);

    sub_1000108DC(&v224, &v217, &qword_1006359C8);
    sub_1000108DC(&v203, &v217, &qword_1006359F8);
    sub_1000108DC(&v210, &v217, &qword_100635A00);
    Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v95, v78, &v197, v188, v92, v178, v177, &v200);
    v217 = v200;
    v218 = v201;
    v219 = v202;
    LOBYTE(v220) = 1;
    *(&v220 + 1) = sub_10006D3E4;
    *&v221 = 0;
    *(&v221 + 1) = 0x4014000000000000;
    *&v222 = &unk_100517A98;
    *(&v222 + 1) = 0;
    *&v223 = &unk_100517AA0;
    *(&v223 + 1) = 0;
    v97 = swift_allocObject();
    *(v97 + 16) = v196;
    v98 = swift_allocObject();
    v99 = v222;
    v98[5] = v221;
    v98[6] = v99;
    v98[7] = v223;
    v100 = v218;
    v98[1] = v217;
    v98[2] = v100;
    v101 = v220;
    v98[3] = v219;
    v98[4] = v101;
    v102 = swift_allocObject();
    v103 = v222;
    v102[5] = v221;
    v102[6] = v103;
    v102[7] = v223;
    v104 = v218;
    v102[1] = v217;
    v102[2] = v104;
    v105 = v220;
    v102[3] = v219;
    v102[4] = v105;
    v106 = swift_allocObject();
    v107 = v222;
    v106[5] = v221;
    v106[6] = v107;
    v106[7] = v223;
    v108 = v218;
    v106[1] = v217;
    v106[2] = v108;
    v109 = v220;
    v106[3] = v219;
    v106[4] = v109;
    *(v97 + 32) = 1;
    *(v97 + 40) = sub_10006A61C;
    *(v97 + 48) = v98;
    *(v97 + 56) = sub_10006CF1C;
    *(v97 + 64) = v102;
    *(v97 + 72) = &unk_100517010;
    *(v97 + 80) = v106;
    sub_100004CB8(&qword_100634FB0);
    v110 = swift_allocObject();
    *(v110 + 16) = xmmword_100511A40;
    *(v110 + 32) = v183;
    *(v110 + 40) = v179;
    *(v110 + 48) = v97;
    sub_1000108DC(&v217, &v197, &qword_100635A08);
    sub_1000108DC(&v217, &v197, &qword_100635A08);
    v183 = sub_100046EC0(v110);
    swift_setDeallocating();
    sub_100004CB8(&qword_100634FB8);
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  else
  {
    sub_1000108DC(&v224, &v217, &qword_1006359C8);
    sub_1000108DC(&v224, &v217, &qword_1006359C8);
    sub_1000108DC(&v224, &v217, &qword_1006359C8);
    v183 = _swiftEmptyArrayStorage;
  }

  v111 = v186;
  v112 = v187;
  v113 = v192;
  sub_10006A190(a1, &v217);
  sub_100004CB8(&qword_1006359D0);
  v114 = swift_dynamicCast();
  v115 = v189;
  if (v114)
  {
    sub_10006B4EC(&v210, &v203);
    sub_1000108DC(v184, &v200, &qword_1006359E0);
    if (*(&v201 + 1))
    {
      sub_100035850(&v200, &v197);
      v116 = *(&v204 + 1);
      v186 = *(&v205 + 1);
      v187 = v205;
      v117 = sub_100008C70(&v203, *(&v204 + 1));
      v118 = v111;
      v119 = *(&v198 + 1);
      v120 = v199;
      v121 = a1;
      v122 = sub_100008C70(&v197, *(&v198 + 1));
      sub_1000699E8(v193, &v210);
      v123 = v112;
      v124 = v188;
      sub_1000108DC(v195, v188, &qword_1006359A0);
      v175 = v120;
      v111 = v118;
      v125 = v122;
      a1 = v121;
      v126 = v124;
      v112 = v123;
      v127 = v119;
      v113 = v192;
      sub_10007D118(v117, &v210, v125, v126, v116, v127, v187, v186, &v217, v175);
      LOBYTE(v220) = 11;
      *(&v220 + 1) = sub_10006D3E4;
      *&v221 = 0;
      *(&v221 + 1) = 0x4014000000000000;
      *&v222 = &unk_100517498;
      *(&v222 + 1) = 0;
      *&v223 = &unk_1005174A0;
      *(&v223 + 1) = 0;
      v128 = swift_allocObject();
      *(v128 + 16) = v196;
      v129 = swift_allocObject();
      v130 = v222;
      v129[5] = v221;
      v129[6] = v130;
      v129[7] = v223;
      v131 = v218;
      v129[1] = v217;
      v129[2] = v131;
      v132 = v220;
      v129[3] = v219;
      v129[4] = v132;
      v133 = swift_allocObject();
      v134 = v222;
      v133[5] = v221;
      v133[6] = v134;
      v133[7] = v223;
      v135 = v218;
      v133[1] = v217;
      v133[2] = v135;
      v136 = v220;
      v133[3] = v219;
      v133[4] = v136;
      v137 = swift_allocObject();
      v138 = v222;
      v137[5] = v221;
      v137[6] = v138;
      v137[7] = v223;
      v139 = v218;
      v137[1] = v217;
      v137[2] = v139;
      v140 = v220;
      v137[3] = v219;
      v137[4] = v140;
      *(v128 + 32) = 11;
      *(v128 + 40) = sub_10006A39C;
      *(v128 + 48) = v129;
      *(v128 + 56) = sub_10006CF1C;
      *(v128 + 64) = v133;
      *(v128 + 72) = &unk_100516FC8;
      *(v128 + 80) = v137;
      sub_100004CB8(&qword_100634FB0);
      v141 = swift_allocObject();
      *(v141 + 16) = v196;
      *(v141 + 32) = v128;
      sub_1000108DC(&v217, &v210, &qword_1006359F0);
      sub_1000108DC(&v217, &v210, &qword_1006359F0);
      v142 = sub_100046EC0(v141);
      swift_setDeallocating();
      sub_10001074C(v141 + 32, &qword_100634FB8);
      v115 = v189;
      swift_deallocClassInstance();
      sub_100008D24(&v197);
      sub_100008D24(&v203);
      goto LABEL_15;
    }

    sub_10001074C(&v200, &qword_1006359E0);
    sub_100008D24(&v203);
  }

  else
  {
    v211 = 0u;
    v212 = 0u;
    v210 = 0u;
    sub_10001074C(&v210, &qword_1006359D8);
  }

  v142 = _swiftEmptyArrayStorage;
LABEL_15:
  sub_10006A190(a1, &v217);
  v143 = swift_dynamicCast();
  v144 = *(v111 + 56);
  if ((v143 & 1) == 0)
  {
    v144(v115, 1, 1, v112);
    v170 = &qword_100637A00;
    v171 = v115;
LABEL_20:
    sub_10001074C(v171, v170);
    v169 = _swiftEmptyArrayStorage;
    goto LABEL_21;
  }

  v144(v115, 0, 1, v112);
  (*(v111 + 32))(v113, v115, v112);
  sub_1000108DC(v184, &v197, &qword_1006359E0);
  if (!*(&v198 + 1))
  {
    (*(v111 + 8))(v113, v112);
    v170 = &qword_1006359E0;
    v171 = &v197;
    goto LABEL_20;
  }

  sub_100035850(&v197, &v203);
  v145 = *(&v204 + 1);
  v146 = v205;
  v147 = sub_100008C70(&v203, *(&v204 + 1));
  v148 = *(v111 + 16);
  v149 = v111;
  v150 = v182;
  v148(v182, v113, v112);
  v151 = (*(v180 + 104))(v150, enum case for Playlist.Folder.Item.playlist(_:), v181);
  __chkstk_darwin(v151);
  v153 = &v176 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v154 + 16))(v153, v147, v145);
  Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)(v150, v190, v153, v145, v146, &v210);
  v217 = v210;
  v218 = v211;
  v219 = v212;
  LOBYTE(v220) = 20;
  *(&v220 + 1) = sub_1000987F0;
  *&v221 = 0;
  *(&v221 + 1) = 0x4014000000000000;
  *&v222 = &unk_100517BE0;
  *(&v222 + 1) = 0;
  *&v223 = &unk_100517BE8;
  *(&v223 + 1) = 0;
  v155 = swift_allocObject();
  *(v155 + 16) = v196;
  v156 = swift_allocObject();
  v157 = v222;
  v156[5] = v221;
  v156[6] = v157;
  v156[7] = v223;
  v158 = v218;
  v156[1] = v217;
  v156[2] = v158;
  v159 = v220;
  v156[3] = v219;
  v156[4] = v159;
  v160 = swift_allocObject();
  v161 = v222;
  v160[5] = v221;
  v160[6] = v161;
  v160[7] = v223;
  v162 = v218;
  v160[1] = v217;
  v160[2] = v162;
  v163 = v220;
  v160[3] = v219;
  v160[4] = v163;
  v164 = swift_allocObject();
  v165 = v222;
  v164[5] = v221;
  v164[6] = v165;
  v164[7] = v223;
  v166 = v218;
  v164[1] = v217;
  v164[2] = v166;
  v167 = v220;
  v164[3] = v219;
  v164[4] = v167;
  *(v155 + 32) = 20;
  *(v155 + 40) = sub_10006A2C8;
  *(v155 + 48) = v156;
  *(v155 + 56) = sub_10006CF1C;
  *(v155 + 64) = v160;
  *(v155 + 72) = &unk_100516FB0;
  *(v155 + 80) = v164;
  sub_100004CB8(&qword_100634FB0);
  v168 = swift_allocObject();
  *(v168 + 16) = v196;
  *(v168 + 32) = v155;
  sub_1000108DC(&v217, &v210, &qword_1006359E8);

  sub_1000108DC(&v217, &v210, &qword_1006359E8);
  v169 = sub_100046EC0(v168);
  swift_setDeallocating();
  sub_10001074C(v168 + 32, &qword_100634FB8);
  swift_deallocClassInstance();
  (*(v149 + 8))(v192, v112);
  sub_100008D24(&v203);
LABEL_21:
  sub_100004CB8(&qword_100634FB0);
  v172 = swift_allocObject();
  *(v172 + 16) = xmmword_100511B10;
  *(v172 + 32) = v185;
  *(v172 + 40) = v183;
  *(v172 + 48) = v142;
  *(v172 + 56) = v169;
  v173 = sub_100046EC0(v172);
  sub_10001074C(&v224, &qword_1006359C8);
  swift_setDeallocating();
  sub_100004CB8(&qword_100634FB8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v173;
}

uint64_t static MusicActions.folderActions(folder:library:presentationSource:folderPickerPresenter:onCreateFolder:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v133 = a6;
  v118 = a4;
  v131 = a2;
  v123 = a1;
  v9 = sub_1004DCEBC();
  v119 = *(v9 - 8);
  v120 = v9;
  __chkstk_darwin(v9);
  v121 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004DCEDC();
  v129 = *(v11 - 8);
  v130 = v11;
  v12 = __chkstk_darwin(v11);
  v125 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v13;
  __chkstk_darwin(v12);
  v132 = &v112 - v14;
  v15 = sub_100004CB8(&qword_100635A10);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15 - 8);
  v122 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v112 - v19;
  sub_1000108DC(a1, &v112 - v19, &qword_100635A10);
  v126 = a3;
  sub_1000699E8(a3, &v156);
  v21 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_100047F38(v20, v24 + v21, &qword_100635A10);
  *(v24 + v22) = 0;
  v25 = (v24 + v23);
  v127 = a5;
  v26 = v133;
  *v25 = a5;
  v25[1] = v26;
  sub_10006A8BC(&v156, v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8));
  *&v156 = sub_10006A6F0;
  *(&v156 + 1) = v131;
  *&v157 = &unk_100517028;
  *(&v157 + 1) = v24;
  *&v158 = &unk_100517BF8;
  *(&v158 + 1) = 0;
  LOBYTE(v159) = 10;
  *(&v159 + 1) = sub_1000987F0;
  *&v160 = 0;
  *(&v160 + 1) = 0x4014000000000000;
  *&v161 = &unk_100517C00;
  *(&v161 + 1) = 0;
  *&v162 = &unk_100517C08;
  *(&v162 + 1) = 0;
  v27 = sub_100004CB8(&qword_1006350A8);
  v28 = swift_allocObject();
  v128 = xmmword_100511DA0;
  *(v28 + 16) = xmmword_100511DA0;
  v29 = swift_allocObject();
  v30 = v161;
  v29[5] = v160;
  v29[6] = v30;
  v29[7] = v162;
  v31 = v157;
  v29[1] = v156;
  v29[2] = v31;
  v32 = v159;
  v29[3] = v158;
  v29[4] = v32;
  v33 = swift_allocObject();
  v34 = v161;
  v33[5] = v160;
  v33[6] = v34;
  v33[7] = v162;
  v35 = v157;
  v33[1] = v156;
  v33[2] = v35;
  v36 = v159;
  v33[3] = v158;
  v33[4] = v36;
  v37 = swift_allocObject();
  v38 = v161;
  v37[5] = v160;
  v37[6] = v38;
  v37[7] = v162;
  v39 = v157;
  v37[1] = v156;
  v37[2] = v39;
  v40 = v159;
  v37[3] = v158;
  v37[4] = v40;
  *(v28 + 32) = 10;
  *(v28 + 40) = sub_10006AA54;
  *(v28 + 48) = v29;
  *(v28 + 56) = sub_10006CF1C;
  *(v28 + 64) = v33;
  *(v28 + 72) = &unk_100517038;
  *(v28 + 80) = v37;
  v41 = v122;
  sub_1000108DC(v123, v122, &qword_100635A10);
  v42 = v129;
  v43 = v130;
  if ((*(v129 + 48))(v41, 1) == 1)
  {
    sub_1000108DC(&v156, &v149, &qword_100635A18);

    sub_1000108DC(&v156, &v149, &qword_100635A18);
    sub_10000DE64(v127);
    sub_10001074C(v41, &qword_100635A10);
    v44 = _swiftEmptyArrayStorage;
  }

  else
  {
    v45 = *(v42 + 32);
    v46 = v132;
    v124 = v27;
    v45(v132, v41, v43);
    v115 = v45;
    v116 = v42 + 32;
    v47 = *(v42 + 16);
    v122 = v28;
    v123 = v42 + 16;
    v48 = v125;
    v49 = v43;
    v47(v125, v46, v43);
    v113 = v47;
    sub_1000699E8(v126, &v149);
    v50 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v114 = *(v42 + 80);
    v117 += 7;
    v51 = (v117 + v50) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    v53 = v49;
    v54 = v49;
    v28 = v122;
    v45((v52 + v50), v48, v53);
    sub_10006A8BC(&v149, v52 + v51);
    v55 = v131;
    *&v135 = sub_10006A6F0;
    *(&v135 + 1) = v131;
    *&v136 = &unk_100517048;
    *(&v136 + 1) = v52;
    *&v137 = &unk_100517C18;
    *(&v137 + 1) = 0;
    LOBYTE(v138) = 19;
    *(&v138 + 1) = sub_1000987F0;
    *&v139 = 0;
    *(&v139 + 1) = 0x4014000000000000;
    *&v140 = &unk_100517C20;
    *(&v140 + 1) = 0;
    *&v141 = &unk_100517C28;
    *(&v141 + 1) = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v128;
    v57 = swift_allocObject();
    v58 = v140;
    v57[5] = v139;
    v57[6] = v58;
    v57[7] = v141;
    v59 = v136;
    v57[1] = v135;
    v57[2] = v59;
    v60 = v138;
    v57[3] = v137;
    v57[4] = v60;
    v61 = swift_allocObject();
    v62 = v140;
    v61[5] = v139;
    v61[6] = v62;
    v61[7] = v141;
    v63 = v136;
    v61[1] = v135;
    v61[2] = v63;
    v64 = v138;
    v61[3] = v137;
    v61[4] = v64;
    v65 = swift_allocObject();
    v66 = v140;
    v65[5] = v139;
    v65[6] = v66;
    v65[7] = v141;
    v67 = v136;
    v65[1] = v135;
    v65[2] = v67;
    v68 = v138;
    v65[3] = v137;
    v65[4] = v68;
    *(v56 + 32) = 19;
    *(v56 + 40) = sub_10006AD04;
    *(v56 + 48) = v57;
    *(v56 + 56) = sub_10006CF1C;
    *(v56 + 64) = v61;
    *(v56 + 72) = &unk_100517058;
    *(v56 + 80) = v65;
    v69 = v118[3];
    v70 = v118[4];
    v71 = sub_100008C70(v118, v69);
    v72 = v121;
    v47(v121, v132, v54);
    v73 = (*(v119 + 104))(v72, enum case for Playlist.Folder.Item.folder(_:), v120);
    __chkstk_darwin(v73);
    v75 = &v112 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v76 + 16))(v75, v71, v69);
    Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)(v72, v55, v75, v69, v70, &v149);
    v142 = v149;
    v143 = v150;
    v144 = v151;
    LOBYTE(v145) = 20;
    *(&v145 + 1) = sub_1000987F0;
    *&v146 = 0;
    *(&v146 + 1) = 0x4014000000000000;
    *&v147 = &unk_100517BE0;
    *(&v147 + 1) = 0;
    *&v148 = &unk_100517BE8;
    *(&v148 + 1) = 0;
    v77 = swift_allocObject();
    *(v77 + 16) = v128;
    v78 = swift_allocObject();
    v79 = v147;
    v78[5] = v146;
    v78[6] = v79;
    v78[7] = v148;
    v80 = v143;
    v78[1] = v142;
    v78[2] = v80;
    v81 = v145;
    v78[3] = v144;
    v78[4] = v81;
    v82 = swift_allocObject();
    v83 = v147;
    v82[5] = v146;
    v82[6] = v83;
    v82[7] = v148;
    v84 = v143;
    v82[1] = v142;
    v82[2] = v84;
    v85 = v145;
    v82[3] = v144;
    v82[4] = v85;
    v86 = swift_allocObject();
    v87 = v147;
    v86[5] = v146;
    v86[6] = v87;
    v86[7] = v148;
    v88 = v143;
    v86[1] = v142;
    v86[2] = v88;
    v89 = v145;
    v86[3] = v144;
    v86[4] = v89;
    *(v77 + 32) = 20;
    *(v77 + 40) = sub_10006CEC8;
    *(v77 + 48) = v78;
    *(v77 + 56) = sub_10006CF1C;
    *(v77 + 64) = v82;
    *(v77 + 72) = &unk_100517060;
    *(v77 + 80) = v86;
    v90 = v125;
    v91 = v130;
    v113(v125, v132, v130);
    sub_1000699E8(v126, &v149);
    v92 = (v114 + 24) & ~v114;
    v93 = (v117 + v92) & 0xFFFFFFFFFFFFFFF8;
    v94 = swift_allocObject();
    *(v94 + 16) = v55;

    v115(v94 + v92, v90, v91);
    sub_10006A8BC(&v149, v94 + v93);
    *&v149 = sub_10006ADD8;
    *(&v149 + 1) = v55;
    *&v150 = &unk_100517068;
    *(&v150 + 1) = v94;
    *&v151 = &unk_100517C38;
    *(&v151 + 1) = 0;
    LOBYTE(v152) = 50;
    *(&v152 + 1) = sub_1000987F0;
    *&v153 = 0;
    *(&v153 + 1) = 0x4014000000000000;
    *&v154 = &unk_100517C40;
    *(&v154 + 1) = 0;
    *&v155 = &unk_100517C48;
    *(&v155 + 1) = 0;
    v95 = swift_allocObject();
    *(v95 + 16) = v128;
    v96 = swift_allocObject();
    v97 = v154;
    v96[5] = v153;
    v96[6] = v97;
    v96[7] = v155;
    v98 = v150;
    v96[1] = v149;
    v96[2] = v98;
    v99 = v152;
    v96[3] = v151;
    v96[4] = v99;
    v100 = swift_allocObject();
    v101 = v154;
    v100[5] = v153;
    v100[6] = v101;
    v100[7] = v155;
    v102 = v150;
    v100[1] = v149;
    v100[2] = v102;
    v103 = v152;
    v100[3] = v151;
    v100[4] = v103;
    v104 = swift_allocObject();
    v105 = v154;
    v104[5] = v153;
    v104[6] = v105;
    v104[7] = v155;
    v106 = v150;
    v104[1] = v149;
    v104[2] = v106;
    v107 = v152;
    v104[3] = v151;
    v104[4] = v107;
    *(v95 + 32) = 50;
    *(v95 + 40) = sub_10006AFFC;
    *(v95 + 48) = v96;
    *(v95 + 56) = sub_10006CF1C;
    *(v95 + 64) = v100;
    *(v95 + 72) = &unk_100517078;
    *(v95 + 80) = v104;
    sub_100004CB8(&qword_100634FB0);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_100511A40;
    *(v108 + 32) = v56;
    *(v108 + 40) = v77;
    *(v108 + 48) = v95;
    swift_retain_n();
    sub_1000108DC(&v156, v134, &qword_100635A18);
    sub_1000108DC(&v135, v134, &qword_100635A20);
    sub_1000108DC(&v142, v134, &qword_1006359E8);
    sub_1000108DC(&v149, v134, &qword_100635A28);

    sub_1000108DC(&v156, v134, &qword_100635A18);
    sub_1000108DC(&v135, v134, &qword_100635A20);
    sub_1000108DC(&v142, v134, &qword_1006359E8);
    sub_1000108DC(&v149, v134, &qword_100635A28);
    sub_10000DE64(v127);
    v44 = sub_100046EC0(v108);
    swift_setDeallocating();
    sub_100004CB8(&qword_100634FB8);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v129 + 8))(v132, v130);
  }

  sub_100004CB8(&qword_100634FB0);
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_1005126C0;
  *(v109 + 32) = v28;
  *(v109 + 40) = v44;
  v110 = sub_100046EC0(v109);
  swift_setDeallocating();
  sub_100004CB8(&qword_100634FB8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v110;
}

uint64_t static MusicActions.tasteActions(item:library:alertPresenter:noticePresenting:ratingViewController:presentationSource:metricsReportingContext:onFinish:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v148 = a7;
  v138 = a5;
  v139 = a6;
  v142 = a4;
  v143 = a2;
  v145 = a3;
  v150 = a9;
  v151 = a10;
  v16 = sub_100004CB8(&qword_1006359A0);
  __chkstk_darwin(v16 - 8);
  v152 = &v137 - v17;
  v18 = a1;
  v149 = a1;
  v19 = a1[3];
  *&v153 = v18[4];
  v20 = sub_100008C70(v18, v19);
  __chkstk_darwin(v20);
  v22 = &v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22);
  sub_100035868(a3, &v181);
  sub_1000108DC(a4, &v174, &qword_100635A30);
  sub_1000699E8(a7, &v188);
  v24 = a8;
  v25 = v152;
  sub_1000108DC(a8, v152, &qword_1006359A0);
  Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(v22, a2, &v181, &v174, &v188, v25, a9, a10, &v167, v19, v153);
  LOBYTE(v170) = 2;
  *(&v170 + 1) = sub_1000987F0;
  *&v171 = 0;
  *(&v171 + 1) = 0x4014000000000000;
  *&v172 = &unk_1005195C0;
  *(&v172 + 1) = 0;
  *&v173 = &unk_1005195C8;
  *(&v173 + 1) = 0;
  v26 = sub_100004CB8(&qword_1006350A8);
  v27 = swift_allocObject();
  v153 = xmmword_100511DA0;
  *(v27 + 16) = xmmword_100511DA0;
  v28 = swift_allocObject();
  v29 = v172;
  v28[5] = v171;
  v28[6] = v29;
  v28[7] = v173;
  v30 = v168;
  v28[1] = v167;
  v28[2] = v30;
  v31 = v170;
  v28[3] = v169;
  v28[4] = v31;
  v32 = swift_allocObject();
  v33 = v172;
  v32[5] = v171;
  v32[6] = v33;
  v32[7] = v173;
  v34 = v168;
  v32[1] = v167;
  v32[2] = v34;
  v35 = v170;
  v32[3] = v169;
  v32[4] = v35;
  v36 = swift_allocObject();
  v37 = v172;
  v36[5] = v171;
  v36[6] = v37;
  v36[7] = v173;
  v38 = v168;
  v36[1] = v167;
  v36[2] = v38;
  v39 = v170;
  v36[3] = v169;
  v36[4] = v39;
  *(v27 + 32) = 2;
  *(v27 + 40) = sub_10006B0D0;
  *(v27 + 48) = v28;
  *(v27 + 56) = sub_10006CF1C;
  *(v27 + 64) = v32;
  *(v27 + 72) = &unk_1005170A0;
  *(v27 + 80) = v36;
  v146 = v27;
  v40 = v149[3];
  v41 = v149[4];
  v42 = v149;
  v43 = sub_100008C70(v149, v40);
  __chkstk_darwin(v43);
  v45 = &v137 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v46 + 16))(v45);
  sub_100035868(v145, &v181);
  v47 = v142;
  sub_1000108DC(v142, &v155, &qword_100635A30);
  sub_1000699E8(v148, &v188);
  v141 = v24;
  v48 = v152;
  sub_1000108DC(v24, v152, &qword_1006359A0);
  v49 = v143;
  Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(v45, v143, &v181, &v155, &v188, v48, v150, v151, &v174, v40, v41);
  LOBYTE(v177) = 3;
  *(&v177 + 1) = sub_1000987F0;
  *&v178 = 0;
  *(&v178 + 1) = 0x4014000000000000;
  *&v179 = &unk_1005195F0;
  *(&v179 + 1) = 0;
  *&v180 = &unk_1005195F8;
  *(&v180 + 1) = 0;
  v147 = v26;
  v50 = swift_allocObject();
  *(v50 + 16) = v153;
  v51 = swift_allocObject();
  v52 = v179;
  v51[5] = v178;
  v51[6] = v52;
  v51[7] = v180;
  v53 = v175;
  v51[1] = v174;
  v51[2] = v53;
  v54 = v177;
  v51[3] = v176;
  v51[4] = v54;
  v55 = swift_allocObject();
  v56 = v179;
  v55[5] = v178;
  v55[6] = v56;
  v55[7] = v180;
  v57 = v175;
  v55[1] = v174;
  v55[2] = v57;
  v58 = v177;
  v55[3] = v176;
  v55[4] = v58;
  v59 = swift_allocObject();
  v60 = v179;
  v59[5] = v178;
  v59[6] = v60;
  v59[7] = v180;
  v61 = v175;
  v59[1] = v174;
  v59[2] = v61;
  v62 = v177;
  v59[3] = v176;
  v59[4] = v62;
  *(v50 + 32) = 3;
  *(v50 + 40) = sub_10006B1A4;
  *(v50 + 48) = v51;
  *(v50 + 56) = sub_10006CF1C;
  *(v50 + 64) = v55;
  *(v50 + 72) = &unk_1005170B0;
  *(v50 + 80) = v59;
  v145 = v50;
  v63 = v42[3];
  v64 = v42[4];
  v65 = sub_100008C70(v42, v63);
  __chkstk_darwin(v65);
  v67 = &v137 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v68 + 16))(v67);
  sub_1000108DC(v47, &v188, &qword_100635A30);
  v69 = v24;
  v70 = v152;
  sub_1000108DC(v69, v152, &qword_1006359A0);
  Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)(v67, v49, &v188, v70, v63, v64, &v181);
  LOBYTE(v184) = 36;
  *(&v184 + 1) = sub_1000987F0;
  *&v185 = 0;
  *(&v185 + 1) = 0x4014000000000000;
  *&v186 = &unk_100519620;
  *(&v186 + 1) = 0;
  *&v187 = &unk_100519628;
  *(&v187 + 1) = 0;
  v71 = swift_allocObject();
  *(v71 + 16) = v153;
  v72 = swift_allocObject();
  v73 = v186;
  v72[5] = v185;
  v72[6] = v73;
  v72[7] = v187;
  v74 = v182;
  v72[1] = v181;
  v72[2] = v74;
  v75 = v184;
  v72[3] = v183;
  v72[4] = v75;
  v76 = swift_allocObject();
  v77 = v186;
  v76[5] = v185;
  v76[6] = v77;
  v76[7] = v187;
  v78 = v182;
  v76[1] = v181;
  v76[2] = v78;
  v79 = v184;
  v76[3] = v183;
  v76[4] = v79;
  v80 = swift_allocObject();
  v81 = v186;
  v80[5] = v185;
  v80[6] = v81;
  v80[7] = v187;
  v82 = v182;
  v80[1] = v181;
  v80[2] = v82;
  v83 = v184;
  v80[3] = v183;
  v80[4] = v83;
  *(v71 + 32) = 36;
  *(v71 + 40) = sub_10006B278;
  *(v71 + 48) = v72;
  *(v71 + 56) = sub_10006B2AC;
  *(v71 + 64) = v76;
  *(v71 + 72) = &unk_1005170C0;
  *(v71 + 80) = v80;
  v144 = v71;
  v84 = v42[3];
  v140 = v42[4];
  v85 = sub_100008C70(v42, v84);
  __chkstk_darwin(v85);
  v87 = &v137 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v88 + 16))(v87);
  sub_1000108DC(v47, &v155, &qword_100635A30);
  sub_1000108DC(v141, v70, &qword_1006359A0);
  v89 = v49;
  swift_retain_n();
  v90 = v150;
  sub_10000DE64(v150);
  sub_1000108DC(&v167, &v188, &qword_100635A38);
  sub_1000108DC(&v174, &v188, &qword_100635A40);
  sub_1000108DC(&v181, &v188, &qword_100635A48);

  sub_1000108DC(&v167, &v188, &qword_100635A38);
  sub_10000DE64(v90);
  sub_1000108DC(&v174, &v188, &qword_100635A40);
  sub_1000108DC(&v181, &v188, &qword_100635A48);
  Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)(v87, v49, v152, v84, v140, &v188);
  LOBYTE(v191) = 37;
  *(&v191 + 1) = sub_1000987F0;
  *&v192 = 0;
  *(&v192 + 1) = 0x4014000000000000;
  *&v193 = &unk_100519650;
  *(&v193 + 1) = 0;
  *&v194 = &unk_100519658;
  *(&v194 + 1) = 0;
  v91 = swift_allocObject();
  *(v91 + 16) = v153;
  v92 = swift_allocObject();
  v93 = v193;
  v92[5] = v192;
  v92[6] = v93;
  v92[7] = v194;
  v94 = v189;
  v92[1] = v188;
  v92[2] = v94;
  v95 = v191;
  v92[3] = v190;
  v92[4] = v95;
  v96 = swift_allocObject();
  v97 = v193;
  v96[5] = v192;
  v96[6] = v97;
  v96[7] = v194;
  v98 = v189;
  v96[1] = v188;
  v96[2] = v98;
  v99 = v191;
  v96[3] = v190;
  v96[4] = v99;
  v100 = swift_allocObject();
  v101 = v193;
  v100[5] = v192;
  v100[6] = v101;
  v100[7] = v194;
  v102 = v189;
  v100[1] = v188;
  v100[2] = v102;
  v103 = v191;
  v100[3] = v190;
  v100[4] = v103;
  *(v91 + 32) = 37;
  *(v91 + 40) = sub_10006B350;
  *(v91 + 48) = v92;
  *(v91 + 56) = sub_10006CF1C;
  *(v91 + 64) = v96;
  *(v91 + 72) = &unk_1005170E8;
  *(v91 + 80) = v100;
  sub_100035868(v149, &v162);
  sub_1000108DC(&v188, &v155, &qword_100635A50);
  sub_1000108DC(&v188, &v155, &qword_100635A50);
  sub_100004CB8(&qword_100635A58);
  sub_100004CB8(&qword_100635A60);
  if (swift_dynamicCast())
  {
    sub_10006B4EC(v161, &v163);
    v104 = v164;
    v105 = v165;
    v106 = v166;
    v107 = sub_100008C70(&v163, v164);
    __chkstk_darwin(v107);
    v109 = &v137 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v110 + 16))(v109);
    sub_1000699E8(v148, &v155);
    v111 = swift_allocObject();
    v111[2] = v104;
    v111[3] = v105;
    v112 = v138;
    v113 = v139;
    v111[4] = v106;
    v111[5] = v112;
    v111[6] = v113;
    *&v155 = Actions.RateSong.Context.init<A>(item:library:ratingViewController:presentationSource:)(v109, v89, sub_10006B53C, v111, &v155, v104, v105, v106);
    *(&v155 + 1) = v114;
    *&v156 = v115;
    *(&v156 + 1) = v116;
    LOBYTE(v157) = 38;
    *(&v157 + 1) = sub_10006D3E4;
    *&v158 = 0;
    *(&v158 + 1) = 0x4014000000000000;
    *&v159 = &unk_1005197D0;
    *(&v159 + 1) = 0;
    *&v160 = &unk_1005197D8;
    *(&v160 + 1) = 0;
    v117 = swift_allocObject();
    *(v117 + 16) = v153;
    v118 = swift_allocObject();
    v119 = v158;
    v118[3] = v157;
    v118[4] = v119;
    v120 = v160;
    v118[5] = v159;
    v118[6] = v120;
    v121 = v156;
    v118[1] = v155;
    v118[2] = v121;
    v122 = swift_allocObject();
    v123 = v158;
    v122[3] = v157;
    v122[4] = v123;
    v124 = v160;
    v122[5] = v159;
    v122[6] = v124;
    v125 = v156;
    v122[1] = v155;
    v122[2] = v125;
    v126 = swift_allocObject();
    v127 = v158;
    v126[3] = v157;
    v126[4] = v127;
    v128 = v160;
    v126[5] = v159;
    v126[6] = v128;
    v129 = v156;
    v126[1] = v155;
    v126[2] = v129;
    *(v117 + 32) = 38;
    *(v117 + 40) = sub_10006B550;
    *(v117 + 48) = v118;
    *(v117 + 56) = sub_10006B558;
    *(v117 + 64) = v122;
    *(v117 + 72) = &unk_100517118;
    *(v117 + 80) = v126;
    sub_100004CB8(&qword_100634FB0);
    v130 = swift_allocObject();
    *(v130 + 16) = v153;
    *(v130 + 32) = v117;
    sub_1000108DC(&v155, v154, &qword_100635A70);

    sub_1000108DC(&v155, v154, &qword_100635A70);

    v131 = sub_100046EC0(v130);
    swift_setDeallocating();
    sub_10001074C(v130 + 32, &qword_100634FB8);
    swift_deallocClassInstance();
    sub_100008D24(&v163);
  }

  else
  {
    memset(v161, 0, sizeof(v161));
    sub_10001074C(v161, &qword_100635A68);
    v131 = _swiftEmptyArrayStorage;
  }

  sub_100004CB8(&qword_100634FB0);
  v132 = swift_allocObject();
  *(v132 + 16) = xmmword_100512790;
  v133 = v145;
  *(v132 + 32) = v146;
  v134 = v144;
  *(v132 + 40) = v133;
  *(v132 + 48) = v134;
  *(v132 + 56) = v91;
  *(v132 + 64) = v131;
  v135 = sub_100046EC0(v132);
  swift_setDeallocating();
  sub_100004CB8(&qword_100634FB8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v135;
}

uint64_t sub_100066B3C(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[3] = a4;
  v12[4] = a6;
  v9 = sub_1000357EC(v12);
  (*(*(a4 - 8) + 16))(v9, a1, a4);
  v10 = a2(v12);
  sub_100008D24(v12);
  return v10;
}

uint64_t sub_100066BD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 64);
  a2[3] = &type metadata for Actions.Queue.Context;
  a2[4] = &protocol witness table for Actions.Queue.Context;
  v9 = swift_allocObject();
  *a2 = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;
  v11 = *(a1 + 48);
  *(v9 + 48) = *(a1 + 32);
  *(v9 + 64) = v11;
  *(v9 + 80) = v8;
  sub_10006CEB0(v4);
}

uint64_t sub_100066CA8(uint64_t a1)
{
  sub_100004CB8(&qword_100635240);
  *(v1 + 288) = swift_task_alloc();
  v3 = *(a1 + 112);
  *(v1 + 112) = *(a1 + 96);
  *(v1 + 128) = v3;
  *(v1 + 144) = *(a1 + 128);
  v4 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v4;
  v5 = *(a1 + 80);
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = v5;
  v6 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v6;

  return _swift_task_switch(sub_100066D6C, 0, 0);
}

uint64_t sub_100066D6C()
{
  v1 = *(v0 + 288);
  v2 = sub_1004DDA8C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 128);
  *(v3 + 128) = *(v0 + 112);
  *(v3 + 144) = v4;
  *(v3 + 160) = *(v0 + 144);
  v5 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v5;
  v6 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v6;
  v7 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v7;
  sub_1000108DC(v0 + 16, v0 + 152, &qword_1006359A8);
  sub_10021C658(0, 0, v1, &unk_1005172C0, v3);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100066EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 112);
  *(v4 + 112) = *(a4 + 96);
  *(v4 + 128) = v6;
  *(v4 + 144) = *(a4 + 128);
  v7 = *(a4 + 48);
  *(v4 + 48) = *(a4 + 32);
  *(v4 + 64) = v7;
  v8 = *(a4 + 80);
  *(v4 + 80) = *(a4 + 64);
  *(v4 + 96) = v8;
  v9 = *(a4 + 16);
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = swift_task_alloc();
  *(v4 + 152) = v10;
  *v10 = v4;
  v10[1] = sub_100066F80;

  return (sub_100172118)(a1, 1);
}

uint64_t sub_100066F80()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100067074(_OWORD *a1)
{
  sub_100004CB8(&qword_100635240);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_100067130, 0, 0);
}

uint64_t sub_100067130()
{
  v1 = *(v0 + 240);
  v2 = sub_1004DDA8C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_1000108DC(v0 + 16, v0 + 128, &qword_1006359E8);
  sub_10021C658(0, 0, v1, &unk_100517280, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10006725C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_10006CEC0;

  return (sub_1001760B0)(a1, 1);
}

uint64_t sub_100067334(_OWORD *a1)
{
  sub_100004CB8(&qword_100635240);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1000673F0, 0, 0);
}