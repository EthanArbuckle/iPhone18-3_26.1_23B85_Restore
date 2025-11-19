_BYTE *sub_68ACCC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v32 = a3 + 56;
LABEL_2:
  v28 = v6;
LABEL_3:
  while (1)
  {
    v7 = a5[3];
    v8 = a5[4];
    if (!v8)
    {
      break;
    }

    v9 = a5[3];
LABEL_9:
    v12 = *(*(*a5 + 48) + (__clz(__rbit64(v8)) | (v9 << 6)));
    a5[3] = v9;
    a5[4] = (v8 - 1) & v8;
    sub_ABB5C0();
    Library.Menu.Identifier.rawValue.getter(v12);
    sub_AB93F0();

    v13 = sub_ABB610();
    v14 = -1 << *(a3 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    v17 = 1 << v15;
    if (((1 << v15) & *(v32 + 8 * (v15 >> 6))) != 0)
    {
      v31 = ~v14;
      while (1)
      {
        v18 = 0xD000000000000029;
        v19 = "LibraryView.Playlists";
        switch(*(*(a3 + 48) + v15))
        {
          case 1:
            v18 = 0xD000000000000025;
            v19 = "LibraryView.Artists";
            break;
          case 2:
            v18 = 0xD000000000000023;
            v19 = "LibraryView.Albums";
            break;
          case 3:
            v18 = 0xD000000000000022;
            v19 = "LibraryView.Songs";
            break;
          case 4:
            v18 = 0xD000000000000021;
            v19 = "LibraryView.MadeForYou";
            break;
          case 5:
            v18 = 0xD000000000000026;
            v19 = "LibraryView.MusicVideos";
            break;
          case 6:
            v18 = 0xD000000000000027;
            v19 = "LibraryView.Genres";
            break;
          case 7:
            v18 = 0xD000000000000022;
            v19 = "LibraryView.Compilations";
            break;
          case 8:
            v18 = 0xD000000000000028;
            v19 = "LibraryView.Composers";
            break;
          case 9:
            v18 = 0xD000000000000025;
            v19 = "LibraryView.Shows";
            break;
          case 0xA:
            v18 = 0xD000000000000021;
            v19 = "LibraryView.Downloaded";
            break;
          case 0xB:
            v18 = 0xD000000000000026;
            v19 = "LibraryView.Downloading";
            break;
          case 0xC:
            v18 = 0xD000000000000027;
            v19 = "ByPlaylistOrderAscending";
            break;
          default:
            break;
        }

        v20 = v19 | 0x8000000000000000;
        v21 = 0xD000000000000029;
        v22 = "LibraryView.Playlists";
        switch(v12)
        {
          case 1:
            v21 = 0xD000000000000025;
            v22 = "LibraryView.Artists";
            break;
          case 2:
            v21 = 0xD000000000000023;
            v22 = "LibraryView.Albums";
            break;
          case 3:
            v21 = 0xD000000000000022;
            v22 = "LibraryView.Songs";
            break;
          case 4:
            v21 = 0xD000000000000021;
            v22 = "LibraryView.MadeForYou";
            break;
          case 5:
            v21 = 0xD000000000000026;
            v22 = "LibraryView.MusicVideos";
            break;
          case 6:
            v21 = 0xD000000000000027;
            v22 = "LibraryView.Genres";
            break;
          case 7:
            v21 = 0xD000000000000022;
            v22 = "LibraryView.Compilations";
            break;
          case 8:
            v21 = 0xD000000000000028;
            v22 = "LibraryView.Composers";
            break;
          case 9:
            v21 = 0xD000000000000025;
            v22 = "LibraryView.Shows";
            break;
          case 10:
            v21 = 0xD000000000000021;
            v22 = "LibraryView.Downloaded";
            break;
          case 11:
            v21 = 0xD000000000000026;
            v22 = "LibraryView.Downloading";
            break;
          case 12:
            v21 = 0xD000000000000027;
            v22 = "ByPlaylistOrderAscending";
            break;
          default:
            break;
        }

        if (v18 == v21 && v20 == (v22 | 0x8000000000000000))
        {
          break;
        }

        v23 = sub_ABB3C0();

        if (v23)
        {
          goto LABEL_43;
        }

        v15 = (v15 + 1) & v31;
        v16 = v15 >> 6;
        v17 = 1 << v15;
        if ((*(v32 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
        {
          goto LABEL_3;
        }
      }

LABEL_43:
      v24 = a1[v16];
      a1[v16] = v24 & ~v17;
      if ((v24 & v17) != 0)
      {
        v6 = v28 - 1;
        if (__OFSUB__(v28, 1))
        {
          goto LABEL_52;
        }

        if (v28 == 1)
        {
          return &_swiftEmptySetSingleton;
        }

        goto LABEL_2;
      }
    }
  }

  v10 = (a5[2] + 64) >> 6;
  v11 = a5[3];
  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_52:
      __break(1u);
      JUMPOUT(0x68B15CLL);
    }

    if (v9 >= v10)
    {
      break;
    }

    v8 = *(a5[1] + 8 * v9);
    ++v11;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  if (v10 <= v7 + 1)
  {
    v26 = v7 + 1;
  }

  else
  {
    v26 = (a5[2] + 64) >> 6;
  }

  a5[3] = v26 - 1;
  a5[4] = 0;

  return sub_689D3C(a1, a2, v28, a3);
}

BOOL _s9MusicCore7LibraryO4MenuV7RequestV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }

    sub_AB8510();
    if ((sub_AB8340() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    sub_13C80(0, &qword_E112E0);
    if ((sub_ABA790() & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    sub_13C80(0, &qword_E11F18);
    v6 = v5;
    v7 = v4;
    v8 = sub_ABA790();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (sub_67BBE8(*(a1 + 32), *(a2 + 32)) & 1) == 0 || ((*(a1 + 40) ^ *(a2 + 40)) & 1) != 0 || ((*(a1 + 41) ^ *(a2 + 41)) & 1) != 0 || ((*(a1 + 42) ^ *(a2 + 42)))
  {
    return 0;
  }

  v10 = *(a1 + 48);
  v9 = *(a1 + 56);
  v12 = *(a1 + 64);
  v11 = *(a1 + 72);
  v13 = *(a2 + 48);
  v14 = *(a2 + 56);
  v16 = *(a2 + 64);
  v15 = *(a2 + 72);
  if (v10)
  {
    if (v13)
    {
      sub_683EA8(v13);
      sub_683EA8(v10);
      if (sub_5D47CC(v10, v13) & 1) != 0 && (sub_67BBE8(v9, v14) & 1) != 0 && (sub_5D47CC(v12, v16))
      {
        v17 = sub_67BBE8(v11, v15);

        sub_683F08(v10);
        return (v17 & 1) != 0;
      }

      v18 = v10;
LABEL_27:
      sub_683F08(v18);
      return 0;
    }

LABEL_25:
    sub_683EA8(v13);
    sub_683EA8(v10);
    sub_683F08(v10);
    v18 = v13;
    goto LABEL_27;
  }

  if (v13)
  {
    goto LABEL_25;
  }

  return 1;
}

uint64_t sub_68B474(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v7 = a3 >> 1;
  result = swift_beginAccess();
  if (a2 <= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a2;
  }

  v10 = v9 - a2;
  v11 = (a1 + a2);
  for (i = v7 - a2; ; --i)
  {
    if (!i)
    {
      return 13;
    }

    if (!v10)
    {
      break;
    }

    v14 = *v11++;
    v13 = v14;
    v15 = *a4;

    v16 = sub_67B888(v14, v15);

    --v10;
    if (v16)
    {
      return v13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_68B53C(char *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  result = sub_61A160(*a1, a2);
  if (v7)
  {
    goto LABEL_43;
  }

  v8 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v9 = *(a2 + 16);
  if (v9 < result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  LOBYTE(v10) = sub_681820(a2, a2 + 32, 0, (2 * result) | 1, a3);
  if (v8 >= (v9 - 1))
  {
LABEL_11:
    if (v10 == 13)
    {
      goto LABEL_12;
    }

LABEL_14:
    swift_beginAccess();
    v16 = *a3;

    v17 = sub_61A160(v10, v16);
    v19 = v18;

    if (v19)
    {
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v20 = __OFADD__(v17, 1);
    v10 = v17 + 1;
    if (!v20)
    {
      result = swift_beginAccess();
      if (*(*a3 + 16) >= v10)
      {
        if ((v10 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_37;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v11 = sub_68B474(a2 + 32, v8, (2 * v9) | 1, a3);
  if (v10 == 13)
  {
    if (v11 == 13)
    {
LABEL_12:
      swift_beginAccess();
      sub_5284D4(0, 0, v5);
      return swift_endAccess();
    }

    v12 = v11;
    swift_beginAccess();
    v13 = *a3;

    v10 = sub_61A160(v12, v13);
    v15 = v14;

    if (v15)
    {
      goto LABEL_45;
    }

    result = swift_beginAccess();
    if (*(*a3 + 16) < v10)
    {
      goto LABEL_38;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
LABEL_18:
      sub_5284D4(v10, v10, v5);
      return swift_endAccess();
    }

    __break(1u);
    goto LABEL_11;
  }

  if (v11 == 13)
  {
    goto LABEL_14;
  }

  v21 = v11;
  swift_beginAccess();
  v22 = *a3;

  v23 = sub_61A160(v10, v22);
  v25 = v24;

  if (v25)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  swift_beginAccess();
  v26 = *a3;

  v27 = sub_61A160(v21, v26);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
    if (v27 <= v23)
    {
      v30 = v23;
    }

    else
    {
      v30 = v27;
    }

    if (v27 >= v23)
    {
      v31 = v23;
    }

    else
    {
      v31 = v27;
    }

    v20 = __OFSUB__(v30, v31);
    v32 = v30 - v31;
    if (!v20)
    {
      v10 = v31 + v32 / 2;
      if (!__OFADD__(v31, v32 / 2))
      {
        result = swift_beginAccess();
        if (*(*a3 + 16) >= v10)
        {
          if ((v10 & 0x8000000000000000) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_42;
        }

LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_47:
  __break(1u);
  return result;
}

unint64_t sub_68B870(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = *(*(a1 + 48) + (__clz(__rbit64(v10)) | (v14 << 6)));
      result = sub_68B53C(&v15, a2, a3);
      if (v3)
      {
      }

      v10 &= v10 - 1;
      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _s9MusicCore7LibraryO4MenuV10IdentifierO8rawValueAGSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D1BFC0;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_68B9B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    result = sub_5E9960(*(*(a3 + 48) + v17), a4);
    if (result)
    {
      *(v6 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_689D3C(v6, a2, v7, a3);
      }
    }
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
      goto LABEL_15;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_68BAE4(uint64_t a1, int64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v25 = v10;
    v26 = a2;
    v27 = v4;
    v24[1] = v24;
    __chkstk_darwin(v12);
    v13 = v24 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v11);
    v11 = 0;
    v4 = 0;
    v14 = 1 << *(a1 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(a1 + 56);
    a2 = (v14 + 63) >> 6;
    while (v16)
    {
      v17 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_12:
      v10 = v17 | (v4 << 6);
      if (sub_5E9960(*(*(a1 + 48) + v10), a3))
      {
        *&v13[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
        if (__OFADD__(v11++, 1))
        {
          __break(1u);
LABEL_16:
          v21 = sub_689D3C(v13, v25, v11, a1);

          return v21;
        }
      }
    }

    v18 = v4;
    while (1)
    {
      v4 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v4 >= a2)
      {
        goto LABEL_16;
      }

      v19 = *(a1 + 56 + 8 * v4);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v16 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();

  v21 = sub_689960(v23, v10, a1, a2, a3);

  return v21;
}

uint64_t sub_68BD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = a1 + 40;
  v8 = _swiftEmptyArrayStorage;
LABEL_2:
  v9 = (v7 + 16 * v5);
  while (v6 != v5)
  {
    if (v5 >= v6)
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:

LABEL_37:
      swift_beginAccess();
      v30 = sub_5208E8(v4);
      sub_5284D4(0, 0, v30);
      sub_6836B0(&v38, 0);
      swift_endAccess();
      return v36;
    }

    v4 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_33;
    }

    v10 = *(v9 - 1);
    v11 = *v9;

    v12._rawValue = &off_D1BFC0;
    v39._countAndFlagsBits = v10;
    v39._object = v11;
    v13 = sub_ABB140(v12, v39);

    ++v5;
    v9 += 2;
    if (v13 < 0xD)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_506E8C(0, *(v8 + 2) + 1, 1, v8);
      }

      v15 = *(v8 + 2);
      v14 = *(v8 + 3);
      if (v15 >= v14 >> 1)
      {
        v8 = sub_506E8C((v14 > 1), v15 + 1, 1, v8);
      }

      *(v8 + 2) = v15 + 1;
      v8[v15 + 32] = v13;
      v5 = v4;
      goto LABEL_2;
    }
  }

  v4 = 0;
  v16 = *(a2 + 16);
  v17 = a2 + 40;
  v18 = _swiftEmptyArrayStorage;
  v35 = a2 + 40;
LABEL_13:
  v19 = (v17 + 16 * v4);
  while (v16 != v4)
  {
    if (v4 >= v16)
    {
      goto LABEL_34;
    }

    v20 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_35;
    }

    v21 = *(v19 - 1);
    v22 = *v19;

    v23._rawValue = &off_D1BFC0;
    v40._countAndFlagsBits = v21;
    v40._object = v22;
    v24 = sub_ABB140(v23, v40);

    ++v4;
    v19 += 2;
    if (v24 < 0xD)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_506E8C(0, *(v18 + 2) + 1, 1, v18);
      }

      v26 = *(v18 + 2);
      v25 = *(v18 + 3);
      if (v26 >= v25 >> 1)
      {
        v18 = sub_506E8C((v25 > 1), v26 + 1, 1, v18);
      }

      *(v18 + 2) = v26 + 1;
      v18[v26 + 32] = v24;
      v4 = v20;
      v17 = v35;
      goto LABEL_13;
    }
  }

  sub_615414(v18);

  v36 = v8;
  v37 = v8;

  sub_6801C4(a3, a4);
  if (v33)
  {
  }

  swift_beginAccess();
  v28 = *(v8 + 2);
  if (v28)
  {
    v4 = 0;
    while (2)
    {
      if (v4 < *(v37 + 2))
      {
        switch(v37[v4 + 32])
        {
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 10:
          case 11:
          case 12:
            v29 = sub_ABB3C0();

            if (v29)
            {
              goto LABEL_37;
            }

            if (v28 == ++v4)
            {
              return v36;
            }

            continue;
          default:
            goto LABEL_36;
        }
      }

      break;
    }

    __break(1u);
    JUMPOUT(0x68C244);
  }

  return v36;
}

uint64_t sub_68C278(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11F00);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v60 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_68C948();
  sub_ABB680();
  if (v1)
  {
LABEL_3:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v7;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E103E0);
    v68 = 1;
    v9 = sub_68D500(&qword_E11F08, &unk_E103E0);
    result = sub_ABB1E0();
    v60[1] = v9;
    v61 = v8;
    v63 = v4;
    v64 = v6;
    v65 = v3;
    v11 = 0;
    v12 = v67;
    v13 = *(v67 + 16);
    v14 = v67 + 40;
    v66 = _swiftEmptyArrayStorage;
    v62 = v67 + 40;
LABEL_4:
    v15 = (v14 + 16 * v11);
    while (v13 != v11)
    {
      if (v11 >= *(v12 + 16))
      {
        __break(1u);
        goto LABEL_43;
      }

      ++v11;
      v16 = v15 + 2;
      v17 = *(v15 - 1);
      v18 = *v15;

      v19._rawValue = &off_D1BFC0;
      v69._countAndFlagsBits = v17;
      v69._object = v18;
      v20 = sub_ABB140(v19, v69);

      v15 = v16;
      if (v20 < 0xD)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v21 = v66;
        }

        else
        {
          result = sub_506E8C(0, *(v66 + 2) + 1, 1, v66);
          v21 = result;
        }

        v23 = *(v21 + 2);
        v22 = *(v21 + 3);
        if (v23 >= v22 >> 1)
        {
          result = sub_506E8C((v22 > 1), v23 + 1, 1, v21);
          v21 = result;
        }

        *(v21 + 2) = v23 + 1;
        v66 = v21;
        v21[v23 + 32] = v20;
        v14 = v62;
        goto LABEL_4;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FB50);
    v68 = 0;
    sub_68D500(&qword_E0FC40, &qword_E0FB50);
    sub_ABB1E0();
    v62 = 0;
    v24 = v67;
    v25 = v67 + 56;
    v26 = 1 << *(v67 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v67 + 56);
    v29 = (v26 + 63) >> 6;

    v30 = 0;
    v31 = _swiftEmptyArrayStorage;
    if (!v28)
    {
      goto LABEL_19;
    }

    do
    {
LABEL_17:
      while (1)
      {
        v32 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v33 = (*(v24 + 48) + ((v30 << 10) | (16 * v32)));
        v34 = *v33;
        v35 = v33[1];

        v36._rawValue = &off_D1BFC0;
        v70._countAndFlagsBits = v34;
        v70._object = v35;
        v37 = sub_ABB140(v36, v70);

        if (v37 < 0xD)
        {
          break;
        }

        if (!v28)
        {
          goto LABEL_19;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_506E8C(0, *(v31 + 2) + 1, 1, v31);
        v31 = result;
      }

      v39 = v31;
      v40 = *(v31 + 2);
      v41 = v39;
      v42 = *(v39 + 3);
      if (v40 >= v42 >> 1)
      {
        result = sub_506E8C((v42 > 1), v40 + 1, 1, v41);
        v41 = result;
      }

      *(v41 + 16) = v40 + 1;
      v43 = v41 + v40;
      v31 = v41;
      *(v43 + 32) = v37;
    }

    while (v28);
LABEL_19:
    while (1)
    {
      v38 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v38 >= v29)
      {

        v44 = sub_615414(v31);

        v68 = 2;
        v45 = v64;
        v46 = v65;
        v47 = v62;
        result = sub_ABB1E0();
        if (v47)
        {

          v68 = 2;
          sub_68D560();
          sub_ABB1E0();
          (*(v63 + 8))(v45, v46);
          v7 = v67;
        }

        else
        {
          v62 = v44;
          v48 = 0;
          v49 = v67;
          v50 = *(v67 + 16);
          v51 = v67 + 40;
          v7 = _swiftEmptyArrayStorage;
          v61 = v67 + 40;
LABEL_32:
          v52 = (v51 + 16 * v48);
          while (v50 != v48)
          {
            if (v48 >= *(v49 + 16))
            {
              goto LABEL_44;
            }

            ++v48;
            v53 = v52 + 2;
            v54 = *(v52 - 1);
            v55 = *v52;

            v56._rawValue = &off_D1BFC0;
            v71._countAndFlagsBits = v54;
            v71._object = v55;
            v57 = sub_ABB140(v56, v71);

            v52 = v53;
            if (v57 < 0xD)
            {
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_506E8C(0, *(v7 + 2) + 1, 1, v7);
                v7 = result;
              }

              v59 = *(v7 + 2);
              v58 = *(v7 + 3);
              if (v59 >= v58 >> 1)
              {
                result = sub_506E8C((v58 > 1), v59 + 1, 1, v7);
                v7 = result;
              }

              *(v7 + 2) = v59 + 1;
              v7[v59 + 32] = v57;
              v51 = v61;
              goto LABEL_32;
            }
          }

          (*(v63 + 8))(v64, v65);
        }

        goto LABEL_3;
      }

      v28 = *(v25 + 8 * v38);
      ++v30;
      if (v28)
      {
        v30 = v38;
        goto LABEL_17;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  return result;
}

unint64_t sub_68C948()
{
  result = qword_E11DF0;
  if (!qword_E11DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11DF0);
  }

  return result;
}

unint64_t sub_68C99C()
{
  result = qword_E11E08;
  if (!qword_E11E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11E08);
  }

  return result;
}

uint64_t sub_68C9F0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11E10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_68CA68()
{
  result = qword_E11E20;
  if (!qword_E11E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11E20);
  }

  return result;
}

unint64_t sub_68CABC()
{
  result = qword_E11E30;
  if (!qword_E11E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11E30);
  }

  return result;
}

uint64_t sub_68CB10(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D1C118;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_68CB5C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11EE0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_68CABC();
  sub_ABB680();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11DF8);
  HIBYTE(v8) = 0;
  sub_68D434(&qword_E11EE8, sub_68D4AC);
  sub_ABB1E0();
  v7 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11E10);
  HIBYTE(v8) = 1;
  sub_68C9F0(&qword_E11EF8, sub_68D4AC);
  sub_ABB1E0();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_68CDD0()
{
  result = qword_E11E38;
  if (!qword_E11E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11E38);
  }

  return result;
}

unint64_t sub_68CE24(uint64_t a1)
{
  result = sub_68CE4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_68CE4C()
{
  result = qword_E11E70;
  if (!qword_E11E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11E70);
  }

  return result;
}

unint64_t sub_68CEA4()
{
  result = qword_E11E78;
  if (!qword_E11E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11E78);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore7LibraryO4MenuV8RevisionVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_68CF80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_68CFC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8_0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_68D0B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_68D0F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_68D150()
{
  result = qword_E11E88;
  if (!qword_E11E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11E88);
  }

  return result;
}

unint64_t sub_68D1A8()
{
  result = qword_E11E90;
  if (!qword_E11E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11E90);
  }

  return result;
}

unint64_t sub_68D200()
{
  result = qword_E11E98;
  if (!qword_E11E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11E98);
  }

  return result;
}

unint64_t sub_68D258()
{
  result = qword_E11EA0;
  if (!qword_E11EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11EA0);
  }

  return result;
}

unint64_t sub_68D2B0()
{
  result = qword_E11EA8;
  if (!qword_E11EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11EA8);
  }

  return result;
}

unint64_t sub_68D308()
{
  result = qword_E11EB0;
  if (!qword_E11EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11EB0);
  }

  return result;
}

unint64_t sub_68D35C()
{
  result = qword_E11ED0;
  if (!qword_E11ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11ED0);
  }

  return result;
}

uint64_t sub_68D3B0()
{

  return swift_deallocObject();
}

uint64_t sub_68D3E8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  return v2(v5);
}

uint64_t sub_68D434(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11DF8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_68D4AC()
{
  result = qword_E11EF0;
  if (!qword_E11EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11EF0);
  }

  return result;
}

uint64_t sub_68D500(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_68D560()
{
  result = qword_E11F10;
  if (!qword_E11F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11F10);
  }

  return result;
}

unint64_t sub_68D5B4()
{
  result = qword_E11F20;
  if (!qword_E11F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11F20);
  }

  return result;
}

unint64_t sub_68D608()
{
  result = qword_E11F28;
  if (!qword_E11F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11F28);
  }

  return result;
}

uint64_t *sub_68D65C@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *result;
  v5 = v3[3] >> 1;
  if (*result >= v3[2])
  {
    v7 = __OFSUB__(v4, v5);
    v6 = v4 - v5 < 0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  if (v6 != v7)
  {
    *a2 = *(v3[1] + v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_68D694()
{

  return swift_deallocObject();
}

uint64_t sub_68D6D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s4MenuV9MoveErrorV7FailureOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF)
  {
    goto LABEL_17;
  }

  if (a2 + 241 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 241) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 241;
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

      return (*a1 | (v4 << 8)) - 241;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 241;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 3) & 0xE | (*a1 >> 7)) ^ 0xF;
  if (v6 >= 0xE)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t _s4MenuV9MoveErrorV7FailureOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 241 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 241) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF)
  {
    v4 = 0;
  }

  if (a2 > 0xE)
  {
    v5 = ((a2 - 15) >> 8) + 1;
    *result = a2 - 15;
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
    *result = 16 * (((-a2 >> 1) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_68D8DC()
{
  result = qword_E11F50;
  if (!qword_E11F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11F50);
  }

  return result;
}

Swift::Int sub_68D930()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

Swift::Int sub_68DA48()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

Swift::Int sub_68DB60()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

unint64_t Library.SortConfiguration.storageKey.getter(unsigned __int8 a1)
{
  sub_ABAD90(33);

  v2 = 0xE600000000000000;
  v3 = 0x736D75626C61;
  v4 = 0xE900000000000073;
  v5 = 0x7473696C79616C70;
  if (a1 != 5)
  {
    v5 = 0x73676E6F73;
    v4 = 0xE500000000000000;
  }

  v6 = 0xEA0000000000756FLL;
  v7 = 0x59726F466564616DLL;
  if (a1 != 3)
  {
    v7 = 0x646956636973756DLL;
    v6 = 0xEB00000000736F65;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x73747369747261;
  if (a1 != 1)
  {
    v9 = 0x74616C69706D6F63;
    v8 = 0xEC000000736E6F69;
  }

  if (a1)
  {
    v3 = v9;
    v2 = v8;
  }

  if (a1 <= 2u)
  {
    v10._countAndFlagsBits = v3;
  }

  else
  {
    v10._countAndFlagsBits = v5;
  }

  if (a1 <= 2u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  v10._object = v11;
  sub_AB94A0(v10);

  return 0xD00000000000001FLL;
}

uint64_t Library.SortConfiguration.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x736D75626C61;
  v2 = 0x7473696C79616C70;
  if (a1 != 5)
  {
    v2 = 0x73676E6F73;
  }

  v3 = 0x59726F466564616DLL;
  if (a1 != 3)
  {
    v3 = 0x646956636973756DLL;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x73747369747261;
  if (a1 != 1)
  {
    v4 = 0x74616C69706D6F63;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_68DEFC()
{
  sub_AB93F0();
}

uint64_t sub_68E024@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore7LibraryO17SortConfigurationO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_68E054(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x736D75626C61;
  v5 = 0xE900000000000073;
  v6 = 0x7473696C79616C70;
  if (v2 != 5)
  {
    v6 = 0x73676E6F73;
    v5 = 0xE500000000000000;
  }

  v7 = 0xEA0000000000756FLL;
  v8 = 0x59726F466564616DLL;
  if (v2 != 3)
  {
    v8 = 0x646956636973756DLL;
    v7 = 0xEB00000000736F65;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x73747369747261;
  if (v2 != 1)
  {
    v10 = 0x74616C69706D6F63;
    v9 = 0xEC000000736E6F69;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t _s9MusicCore7LibraryO17SortConfigurationO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D1C1D0;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_68E194()
{
  result = qword_E11F58;
  if (!qword_E11F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11F58);
  }

  return result;
}

unint64_t *sub_68E1F8(uint64_t a1)
{
  v2 = sub_AB31C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = &_swiftEmptyArrayStorage;
  if (v9)
  {
    v20 = &_swiftEmptyArrayStorage;
    sub_503858(0, v9, 0);
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v20;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_503858(v14 > 1, v15 + 1, 1);
        v10 = v20;
      }

      v10[2] = v15 + 1;
      sub_4FE54C(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_68E42C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_693640();

    v1 = sub_ABAFF0();
  }

  else
  {
    v1 = a1;

    sub_ABB3E0();
    sub_693640();
  }

  return v1;
}

void *sub_68E4B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_503A08(0, v2, 0);
    result = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    v5 = _swiftEmptyArrayStorage[2];
    do
    {
      v6 = *v4;
      v8 = result;
      v7 = result[3];
      if (v5 >= v7 >> 1)
      {
        sub_503A08((v7 > 1), v5 + 1, 1);
        result = v8;
      }

      result[2] = v5 + 1;
      *(result + v5 + 8) = v6;
      ++v4;
      ++v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

void *sub_68E580(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v6 = _swiftEmptyArrayStorage;
    sub_ABAEC0();
    v4 = a1 + 32;
    do
    {
      sub_9ACA0(v4, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15430);
      swift_dynamicCast();
      sub_ABAE90();
      sub_ABAED0();
      sub_ABAEE0();
      sub_ABAEA0();
      v4 += 40;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

uint64_t SortOptions.SortType.localizedTitle.getter(Swift::Int a1)
{
  sub_68E6F0(a1, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

Swift::Int sub_68E6F0@<X0>(Swift::Int result@<X0>, uint64_t a2@<X8>)
{
  switch(result)
  {
    case 1:
      v7 = &type metadata for PlaylistOrderSort;
      v8 = &off_D2BE88;
      goto LABEL_12;
    case 2:
      v5 = &type metadata for TitleSort;
      v6 = &off_D2BE28;
      goto LABEL_18;
    case 3:
      v5 = &type metadata for RecentlyAddedSort;
      v6 = &off_D2BEC8;
      goto LABEL_18;
    case 4:
      v5 = &type metadata for RecentlyPlayedSort;
      v6 = &off_D2BEE8;
      goto LABEL_18;
    case 5:
      v5 = &type metadata for RecentlyUpdatedSort;
      v6 = &off_D2BF08;
      goto LABEL_18;
    case 6:
      v5 = &type metadata for ArtistSort;
      v6 = &off_D2BE48;
      goto LABEL_18;
    case 7:
      v5 = &type metadata for AlbumSort;
      v6 = &off_D2BE68;
      goto LABEL_18;
    case 8:
      v5 = &type metadata for PlaylistTypeSort;
      v6 = &off_D2BEA8;
LABEL_18:
      *(a2 + 24) = v5;
      *(a2 + 32) = v6;
      return result;
    case 9:
      v7 = &type metadata for YearSort;
      v8 = &off_D2BF28;
LABEL_12:
      *(a2 + 24) = v7;
      *(a2 + 32) = v8;
      *a2 = 0;
      return result;
    case 10:
      v2 = &type metadata for YearSort;
      v3 = &off_D2BF28;
      goto LABEL_16;
    case 11:
      v4 = a2;
      result = sub_5089F4(&off_D1C2C8);
      *(v4 + 24) = &type metadata for ReleaseDateSort;
      *(v4 + 32) = &off_D2BF48;
      *v4 = 1;
      goto LABEL_6;
    case 12:
      v4 = a2;
      result = sub_5089F4(&off_D1C2F0);
      *(v4 + 24) = &type metadata for ReleaseDateSort;
      *(v4 + 32) = &off_D2BF48;
      *v4 = 0;
LABEL_6:
      *(v4 + 8) = result;
      break;
    default:
      v2 = &type metadata for PlaylistOrderSort;
      v3 = &off_D2BE88;
LABEL_16:
      *(a2 + 24) = v2;
      *(a2 + 32) = v3;
      *a2 = 1;
      break;
  }

  return result;
}

id SortOptions.SortType.image.getter(char a1)
{
  result = 0;
  v3 = 1 << a1;
  if ((v3 & 0x1FC) == 0)
  {
    if ((v3 & 0xC01) != 0)
    {
      v4 = [objc_opt_self() configurationWithScale:1];
      v5 = sub_AB9260();
      v6 = [objc_opt_self() systemImageNamed:v5];

      if (v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v4 = [objc_opt_self() configurationWithScale:1];
      v7 = sub_AB9260();
      v6 = [objc_opt_self() systemImageNamed:v7];

      if (v6)
      {
LABEL_6:
        v8 = [v6 imageWithConfiguration:v4];

        return v8;
      }
    }

    return 0;
  }

  return result;
}

uint64_t SortOptions.SortType.sortDescriptors(for:)(uint64_t a1, Swift::Int a2)
{
  sub_68E6F0(a2, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v5 = (*(v4 + 24))(a1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

unint64_t SortOptions.SortType.rawValue.getter(char a1)
{
  result = 0x656C7469547942;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x7473697472417942;
      break;
    case 7:
      result = 0x6D75626C417942;
      break;
    case 8:
      result = 0x696C79616C507942;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x646E656373417942;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_68ECA8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = SortOptions.SortType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == SortOptions.SortType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

uint64_t sub_68ED78@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore11SortOptionsV0C4TypeO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_68EDA8@<X0>(unint64_t *a1@<X8>)
{
  result = SortOptions.SortType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t SortOptions.ContentType.localizedTitle.getter(unsigned __int8 a1)
{
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  if ((a1 >> 6) > 2u && a1 != 192 && a1 != 193)
  {
    return 0;
  }

  sub_AB91E0();
  (*(v4 + 16))(v7, v9, v3);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v10 = qword_E71B20;
  sub_AB3550();
  v11 = sub_AB9320();
  (*(v4 + 8))(v9, v3);
  return v11;
}

char *SortOptions.ContentType.availableSortTypes(withSelectedType:)(unsigned __int8 a1, int a2)
{
  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v6 = *(&off_D1C298 + v4 + 32);
    switch(*(&off_D1C298 + v4 + 32))
    {
      case 1:
        v7 = &type metadata for PlaylistOrderSort;
        v22 = &type metadata for PlaylistOrderSort;
        v8 = &off_D2BE88;
        goto LABEL_15;
      case 2:
        v7 = &type metadata for TitleSort;
        v8 = &off_D2BE28;
        goto LABEL_21;
      case 3:
        v7 = &type metadata for RecentlyAddedSort;
        v8 = &off_D2BEC8;
        goto LABEL_21;
      case 4:
        v7 = &type metadata for RecentlyPlayedSort;
        v8 = &off_D2BEE8;
        goto LABEL_21;
      case 5:
        v7 = &type metadata for RecentlyUpdatedSort;
        v8 = &off_D2BF08;
        goto LABEL_21;
      case 6:
        v7 = &type metadata for ArtistSort;
        v8 = &off_D2BE48;
        goto LABEL_21;
      case 7:
        v7 = &type metadata for AlbumSort;
        v8 = &off_D2BE68;
        goto LABEL_21;
      case 8:
        v7 = &type metadata for PlaylistTypeSort;
        v8 = &off_D2BEA8;
LABEL_21:
        v22 = v7;
        v23 = v8;
        break;
      case 9:
        v7 = &type metadata for YearSort;
        v22 = &type metadata for YearSort;
        v8 = &off_D2BF28;
LABEL_15:
        v23 = v8;
        LOBYTE(v21[0]) = 0;
        break;
      case 0xA:
        v7 = &type metadata for YearSort;
        v22 = &type metadata for YearSort;
        v8 = &off_D2BF28;
        goto LABEL_19;
      case 0xB:
        v9 = sub_5089F4(&off_D1C5E8);
        v23 = &off_D2BF48;
        LOBYTE(v21[0]) = 1;
        goto LABEL_9;
      case 0xC:
        v9 = sub_5089F4(&off_D1C610);
        v23 = &off_D2BF48;
        LOBYTE(v21[0]) = 0;
LABEL_9:
        v7 = &type metadata for ReleaseDateSort;
        v22 = &type metadata for ReleaseDateSort;
        v21[1] = v9;
        v8 = &off_D2BF48;
        break;
      default:
        v7 = &type metadata for PlaylistOrderSort;
        v22 = &type metadata for PlaylistOrderSort;
        v8 = &off_D2BE88;
LABEL_19:
        v23 = v8;
        LOBYTE(v21[0]) = 1;
        break;
    }

    __swift_project_boxed_opaque_existential_1(v21, v7);
    v10 = (v8[2])();
    v11 = sub_5E9D44(a2, v10);

    __swift_destroy_boxed_opaque_existential_0(v21);
    if (v11)
    {
      v12 = a1;
      if (v6 > 8)
      {
        if (v6 > 10)
        {
          v12 = 24;
          if (v6 == 11)
          {
            v13 = 0xD000000000000017;
            v14 = 0x8000000000B492C0;
          }

          else
          {
            v13 = 0xD000000000000016;
            v14 = 0x8000000000B492E0;
          }
        }

        else
        {
          v13 = 0x646E656373417942;
          v14 = 0xEF72616559676E69;
          if (v6 != 9)
          {
            v12 = 24;
            v13 = 0xD000000000000010;
            v14 = 0x8000000000B49300;
          }
        }
      }

      else
      {
        v12 = v6 - 2;
        if ((v6 - 2) < 7)
        {
LABEL_53:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_506EC4(0, *(v5 + 2) + 1, 1, v5);
          }

          v19 = *(v5 + 2);
          v18 = *(v5 + 3);
          if (v19 >= v18 >> 1)
          {
            v5 = sub_506EC4((v18 > 1), v19 + 1, 1, v5);
          }

          *(v5 + 2) = v19 + 1;
          v5[v19 + 32] = v6;
          goto LABEL_3;
        }

        if (v6)
        {
          v13 = 0xD000000000000018;
          v14 = 0x8000000000B493A0;
        }

        else
        {
          v12 = 24;
          v13 = 0xD000000000000019;
          v14 = 0x8000000000B49380;
        }
      }

      v15 = 0xE700000000000000;
      v16 = 0x656C7469547942;
      switch(v12)
      {
        case 0:
          v15 = 0x8000000000B493A0;
          if (v13 == 0xD000000000000018)
          {
            goto LABEL_49;
          }

          goto LABEL_51;
        case 1:
          v15 = 0x8000000000B49380;
          if (v13 != 0xD000000000000019)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        case 2:
          goto LABEL_48;
        case 3:
        case 5:
        case 6:
        case 7:
        case 8:
          goto LABEL_51;
        case 4:
          v15 = 0x8000000000B49340;
          if (v13 != 0xD000000000000018)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        case 9:
          v15 = 0x8000000000B49300;
          if (v13 != 0xD000000000000010)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        case 10:
          v16 = 0x646E656373417942;
          v15 = 0xEF72616559676E69;
LABEL_48:
          if (v13 == v16)
          {
            goto LABEL_49;
          }

          goto LABEL_51;
        case 11:
          v15 = 0x8000000000B492E0;
          if (v13 != 0xD000000000000016)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        case 12:
          v15 = 0x8000000000B492C0;
          if (v13 != 0xD000000000000017)
          {
            goto LABEL_51;
          }

LABEL_49:
          if (v14 == v15)
          {

            LOBYTE(v6) = a1;
          }

          else
          {
LABEL_51:
            v17 = sub_ABB3C0();

            if (v17)
            {
              LOBYTE(v6) = a1;
            }
          }

          break;
        default:
          goto LABEL_53;
      }

      goto LABEL_53;
    }

LABEL_3:
    ++v4;
  }

  while (v4 != 10);
  return v5;
}

uint64_t SortOptions.ContentType.defaultSortType.getter(unsigned __int8 a1)
{
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 == 2)
    {
      return 8;
    }

    else
    {
      return 0x206u >> (8 * (a1 + 64));
    }
  }

  else
  {
    if (a1 >> 6)
    {
      if ((a1 & 0x3F) == 0)
      {
        return 6;
      }
    }

    else if ((a1 & 1) == 0)
    {
      return 6;
    }

    return 2;
  }
}

uint64_t sub_68F6E4(unsigned __int8 a1)
{
  v1 = 0x676E6F5374726F73;
  if (a1 != 192)
  {
    sub_ABB5C0();
    v3 = SortOptions.ContentType.identifier.getter(a1);
    sub_AB93F0();

    v4 = sub_ABB610();
    sub_ABB5C0();
    sub_AB93F0();
    if (v4 != sub_ABB610())
    {
      v1 = 0x75626C4174726F53;
      if ((a1 & 0xC0) != 0x40)
      {
        sub_ABB5C0();
        sub_AB93F0();

        v6 = sub_ABB610();
        sub_ABB5C0();
        sub_AB93F0();
        if (v6 == sub_ABB610())
        {
          return v1;
        }

        goto LABEL_5;
      }

      if ((a1 & 0x3F) != 0)
      {
LABEL_5:

        v7._countAndFlagsBits = 0x6570795474726F53;
        v7._object = 0xE800000000000000;
        sub_AB94A0(v7);

        return v3;
      }
    }
  }

  return v1;
}

uint64_t SortOptions.ContentType.identifier.getter(unsigned __int8 a1)
{
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 == 2)
    {
      if (a1)
      {
        return 0xD000000000000018;
      }

      else
      {
        return 0x7473696C79616C70;
      }
    }

    else
    {
      v5 = 0x736569766F6DLL;
      if (a1 != 193)
      {
        v5 = 0x7473696C79616C70;
      }

      if (a1 == 192)
      {
        return 0x73676E6F73;
      }

      else
      {
        return v5;
      }
    }
  }

  else if (a1 >> 6)
  {
    v2 = 0x736D75626C61;
    v3 = 0xD000000000000016;
    v4 = 0x7265736F706D6F63;
    if ((a1 & 0x3F) != 3)
    {
      v4 = 0x626C4165726E6567;
    }

    if ((a1 & 0x3F) != 2)
    {
      v3 = v4;
    }

    if ((a1 & 0x3F) != 0)
    {
      v2 = 0x6C41747369747261;
    }

    if ((a1 & 0x3Fu) <= 1)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }

  else if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x646956636973756DLL;
  }
}

Swift::String __swiftcall SortOptions.ContentType.storageKey(using:)(Swift::String_optional using)
{
  if (using.value._object)
  {
    object = using.value._object;
    countAndFlagsBits = using.value._countAndFlagsBits;
    v8 = sub_68F6E4(v1);
    v9 = v4;

    v10._countAndFlagsBits = 45;
    v10._object = 0xE100000000000000;
    sub_AB94A0(v10);

    v11._countAndFlagsBits = countAndFlagsBits;
    v11._object = object;
    sub_AB94A0(v11);

    v5 = v8;
    v6 = v9;
  }

  else
  {
    v5 = sub_68F6E4(v1);
  }

  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t SortOptions.ContentType.hash(into:)()
{
  sub_AB93F0();
}

Swift::Int SortOptions.ContentType.hashValue.getter(unsigned __int8 a1)
{
  sub_ABB5C0();
  SortOptions.ContentType.identifier.getter(a1);
  sub_AB93F0();

  return sub_ABB610();
}

Swift::Int sub_68FD60(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_ABB5C0();
  a3(v5);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_68FDE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  sub_AB93F0();
}

Swift::Int sub_68FE54(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_ABB5C0();
  a4(v6);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t static SortOptions.ViewType.Albums.preferredItemSortDescriptors.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF82E0;
  sub_AB92A0();
  v1 = objc_allocWithZone(NSSortDescriptor);
  v2 = sub_AB9260();

  v3 = [v1 initWithKey:v2 ascending:1];

  *(v0 + 32) = v3;
  sub_AB92A0();
  v4 = objc_allocWithZone(NSSortDescriptor);
  v5 = sub_AB9260();

  v6 = [v4 initWithKey:v5 ascending:1];

  *(v0 + 40) = v6;
  sub_AB92A0();
  v7 = objc_allocWithZone(NSSortDescriptor);
  v8 = sub_AB9260();

  v9 = [v7 initWithKey:v8 ascending:1];

  *(v0 + 48) = v9;
  return v0;
}

uint64_t sub_690044(unsigned __int8 a1, char a2)
{
  if (a1 == 194)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_AF82B0;
    sub_AB92A0();
    v4 = objc_allocWithZone(NSSortDescriptor);
    v5 = sub_AB9260();

    v6 = [v4 initWithKey:v5 ascending:a2 & 1];

    *(v3 + 32) = v6;
    return v3;
  }

  else
  {
    result = sub_ABAFD0();
    __break(1u);
  }

  return result;
}

void sub_6901A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF7C50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_AF85F0;
  *(v1 + 32) = sub_AB92A0();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_AB92A0();
  *(v1 + 56) = v3;
  isa = sub_AB9740().super.isa;

  v5 = objc_opt_self();
  v6 = [v5 sortDescriptorWithKeyPath:isa ascending:1];

  *(v0 + 32) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_AF8820;
  *(v7 + 32) = sub_AB92A0();
  *(v7 + 40) = v8;
  *(v7 + 48) = sub_AB92A0();
  *(v7 + 56) = v9;
  *(v7 + 64) = sub_AB92A0();
  *(v7 + 72) = v10;
  v11 = sub_AB9740().super.isa;

  v12 = [v5 sortDescriptorWithKeyPath:v11 ascending:1];

  *(v0 + 40) = v12;
  qword_E71F50 = v0;
}

void sub_690380()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B13C80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_AF8820;
  *(v1 + 32) = sub_AB92A0();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_AB92A0();
  *(v1 + 56) = v3;
  *(v1 + 64) = sub_AB92A0();
  *(v1 + 72) = v4;
  isa = sub_AB9740().super.isa;

  v6 = objc_opt_self();
  v7 = [v6 sortDescriptorWithKeyPath:isa ascending:1];

  *(v0 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_AF85F0;
  *(v8 + 32) = sub_AB92A0();
  *(v8 + 40) = v9;
  *(v8 + 48) = sub_AB92A0();
  *(v8 + 56) = v10;
  v11 = sub_AB9740().super.isa;

  v12 = [v6 sortDescriptorWithKeyPath:v11 ascending:1];

  *(v0 + 40) = v12;
  sub_AB92A0();
  v13 = objc_allocWithZone(NSSortDescriptor);
  v14 = sub_AB9260();

  v15 = [v13 initWithKey:v14 ascending:1];

  *(v0 + 48) = v15;
  sub_AB92A0();
  v16 = objc_allocWithZone(NSSortDescriptor);
  v17 = sub_AB9260();

  v18 = [v16 initWithKey:v17 ascending:1];

  *(v0 + 56) = v18;
  sub_AB92A0();
  v19 = objc_allocWithZone(NSSortDescriptor);
  v20 = sub_AB9260();

  v21 = [v19 initWithKey:v20 ascending:1];

  *(v0 + 64) = v21;
  qword_E71F58 = v0;
}

void sub_690654()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF7C50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_AF85F0;
  *(v1 + 32) = sub_AB92A0();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_AB92A0();
  *(v1 + 56) = v3;
  isa = sub_AB9740().super.isa;

  v5 = [objc_opt_self() sortDescriptorWithKeyPath:isa ascending:1];

  *(v0 + 32) = v5;
  sub_AB92A0();
  v6 = objc_allocWithZone(NSSortDescriptor);
  v7 = sub_AB9260();

  v8 = [v6 initWithKey:v7 ascending:1];

  *(v0 + 40) = v8;
  qword_E71F60 = v0;
}

void sub_6907BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF82E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_AF8820;
  *(v1 + 32) = sub_AB92A0();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_AB92A0();
  *(v1 + 56) = v3;
  *(v1 + 64) = sub_AB92A0();
  *(v1 + 72) = v4;
  isa = sub_AB9740().super.isa;

  v6 = objc_opt_self();
  v7 = [v6 sortDescriptorWithKeyPath:isa ascending:1];

  *(v0 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_AF8820;
  *(v8 + 32) = sub_AB92A0();
  *(v8 + 40) = v9;
  *(v8 + 48) = sub_AB92A0();
  *(v8 + 56) = v10;
  *(v8 + 64) = sub_AB92A0();
  *(v8 + 72) = v11;
  v12 = sub_AB9740().super.isa;

  v13 = [v6 sortDescriptorWithKeyPath:v12 ascending:1];

  *(v0 + 40) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_AF85F0;
  *(v14 + 32) = sub_AB92A0();
  *(v14 + 40) = v15;
  *(v14 + 48) = sub_AB92A0();
  *(v14 + 56) = v16;
  v17 = sub_AB9740().super.isa;

  v18 = [v6 sortDescriptorWithKeyPath:v17 ascending:1];

  *(v0 + 48) = v18;
  qword_E71F68 = v0;
}

uint64_t sub_690A30(unsigned __int8 a1)
{
  if ((a1 >> 6) <= 1u)
  {
    if (a1 >> 6)
    {
      if (qword_E0CE40 == -1)
      {
      }

      goto LABEL_15;
    }

LABEL_7:
    if (qword_E0CE38 == -1)
    {
    }

LABEL_15:
    swift_once();
  }

  if (a1 >> 6 != 3)
  {
    goto LABEL_17;
  }

  if (a1 == 192)
  {
    goto LABEL_7;
  }

  if (a1 == 194)
  {
    if (qword_E0CE48 != -1)
    {
      swift_once();
    }

    v2 = qword_E71F68;

    return sub_68E42C(v2);
  }

  else
  {
LABEL_17:
    result = sub_ABAFD0();
    __break(1u);
  }

  return result;
}

void sub_690B90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF7C50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_AF8820;
  *(v1 + 32) = sub_AB92A0();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_AB92A0();
  *(v1 + 56) = v3;
  *(v1 + 64) = sub_AB92A0();
  *(v1 + 72) = v4;
  isa = sub_AB9740().super.isa;

  v6 = objc_opt_self();
  v7 = [v6 sortDescriptorWithKeyPath:isa ascending:1];

  *(v0 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_AF85F0;
  *(v8 + 32) = sub_AB92A0();
  *(v8 + 40) = v9;
  *(v8 + 48) = sub_AB92A0();
  *(v8 + 56) = v10;
  v11 = sub_AB9740().super.isa;

  v12 = [v6 sortDescriptorWithKeyPath:v11 ascending:1];

  *(v0 + 40) = v12;
  qword_E71F70 = v0;
}

uint64_t sub_690D68(unsigned __int8 a1)
{
  if (a1 == 194)
  {
    if (qword_E0CE50 != -1)
    {
      swift_once();
    }

    v1 = qword_E71F70;

    return sub_68E42C(v1);
  }

  else
  {
    result = sub_ABAFD0();
    __break(1u);
  }

  return result;
}

void sub_690E24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B13C80;
  sub_AB92A0();
  v1 = objc_allocWithZone(NSSortDescriptor);
  v2 = sub_AB9260();

  v3 = [v1 initWithKey:v2 ascending:0];

  *(v0 + 32) = v3;
  sub_AB92A0();
  v4 = objc_allocWithZone(NSSortDescriptor);
  v5 = sub_AB9260();

  v6 = [v4 initWithKey:v5 ascending:1];

  *(v0 + 40) = v6;
  sub_AB92A0();
  v7 = objc_allocWithZone(NSSortDescriptor);
  v8 = sub_AB9260();

  v9 = [v7 initWithKey:v8 ascending:1];

  *(v0 + 48) = v9;
  sub_AB92A0();
  v10 = objc_allocWithZone(NSSortDescriptor);
  v11 = sub_AB9260();

  v12 = [v10 initWithKey:v11 ascending:1];

  *(v0 + 56) = v12;
  sub_AB92A0();
  v13 = objc_allocWithZone(NSSortDescriptor);
  v14 = sub_AB9260();

  v15 = [v13 initWithKey:v14 ascending:1];

  *(v0 + 64) = v15;
  qword_E71F78 = v0;
}

uint64_t sub_69110C()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

void *sub_6912F8(char a1)
{
  if ((a1 & 0xC0) == 0x80)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_ABAFD0();
  __break(1u);
  return result;
}

uint64_t sub_69136C()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_69157C(unsigned __int8 a1, char a2)
{
  if ((a1 >> 6) <= 1u || a1 >> 6 == 3 && a1 == 193)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_AF7C50;
    sub_AB92A0();
    v4 = objc_allocWithZone(NSSortDescriptor);
    v5 = sub_AB9260();

    v6 = [v4 initWithKey:v5 ascending:a2 & 1];

    *(v3 + 32) = v6;
    sub_AB92A0();
    v7 = objc_allocWithZone(NSSortDescriptor);
    v8 = sub_AB9260();

    v9 = [v7 initWithKey:v8 ascending:1];

    *(v3 + 40) = v9;
    return v3;
  }

  else
  {
    result = sub_ABAFD0();
    __break(1u);
  }

  return result;
}

uint64_t sub_691770()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t NSUserDefaults.sortType(for:keyDomain:)(unsigned __int8 a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v11 = sub_68F6E4(a1);
    v12 = v6;

    v15._countAndFlagsBits = 45;
    v15._object = 0xE100000000000000;
    sub_AB94A0(v15);

    v16._countAndFlagsBits = a2;
    v16._object = a3;
    sub_AB94A0(v16);

    v7 = v11;
    v8 = v12;
  }

  else
  {
    v7 = sub_68F6E4(a1);
    v8 = v9;
  }

  v11 = v7;
  v12 = v8;
  sub_4FD6CC();
  NSUserDefaults.subscript.getter(&v11, &v13);

  if (!v14)
  {
    sub_607768(&v13);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0 || (result = _s9MusicCore11SortOptionsV0C4TypeO8rawValueAESgSS_tcfC_0(v11, v12), result == 13))
  {
LABEL_9:
    if ((a1 >> 6) > 1u)
    {
      if (a1 >> 6 == 2)
      {
        return 8;
      }

      else
      {
        return 0x206u >> (8 * (a1 + 64));
      }
    }

    if (a1 >> 6)
    {
      if ((a1 & 0x3F) == 0)
      {
        return 6;
      }
    }

    else if ((a1 & 1) == 0)
    {
      return 6;
    }

    return 2;
  }

  return result;
}

void NSUserDefaults.setSortType(_:for:keyDomain:)(char a1, unsigned __int8 a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    v27 = sub_68F6E4(a2);
    v28 = v8;

    v30._countAndFlagsBits = 45;
    v30._object = 0xE100000000000000;
    sub_AB94A0(v30);

    v31._countAndFlagsBits = a3;
    v31._object = a4;
    sub_AB94A0(v31);

    v9 = v27;
    v10 = v28;
  }

  else
  {
    v9 = sub_68F6E4(a2);
    v10 = v11;
  }

  if ((a2 & 0xC0) == 0x40)
  {
    v12 = (a2 & 0x3F) == 0;
    if (a4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_ABB5C0();
    SortOptions.ContentType.identifier.getter(a2);
    sub_AB93F0();

    v13 = sub_ABB610();
    sub_ABB5C0();
    sub_AB93F0();
    v12 = v13 == sub_ABB610();
    if (a4)
    {
LABEL_12:
      v19 = SortOptions.SortType.rawValue.getter(a1);
      v20 = v22;
      v21 = 0;
      goto LABEL_14;
    }
  }

  if (!v12)
  {
    goto LABEL_12;
  }

  v14 = NSUserDefaults.sortType(for:keyDomain:)(a2, a3, 0);
  v15 = SortOptions.SortType.rawValue.getter(v14);
  v17 = v16;
  v19 = SortOptions.SortType.rawValue.getter(a1);
  v20 = v18;
  if (v15 == v19 && v17 == v18)
  {

    v21 = 0;
  }

  else
  {
    v23 = sub_ABB3C0();

    v21 = v23 ^ 1;
  }

LABEL_14:
  v29 = &type metadata for String;
  v27 = v19;
  v28 = v20;
  v26[0] = v9;
  v26[1] = v10;
  sub_4FD6CC();
  NSUserDefaults.subscript.setter(&v27, v26, &type metadata for String);
  if (v21)
  {
    v24 = CFNotificationCenterGetDarwinNotifyCenter();
    v25 = sub_AB9260();
    CFNotificationCenterPostNotification(v24, v25, 0, 0, 1u);
  }
}

id MPModelPlaylist.canBeSorted.getter()
{
  if ([v0 hasLoadedValueForKey:MPModelPropertyAlbumLibraryAdded])
  {
    return [v0 isLibraryAdded];
  }

  if ([v0 hasLoadedValueForKey:MPModelPropertyMovieLibraryAdded])
  {
    return [v0 isLibraryAdded];
  }

  if ([v0 hasLoadedValueForKey:MPModelPropertyPlaylistLibraryAdded])
  {
    return [v0 isLibraryAdded];
  }

  if ([v0 hasLoadedValueForKey:MPModelPropertySongLibraryAdded])
  {
    return [v0 isLibraryAdded];
  }

  if ([v0 hasLoadedValueForKey:MPModelPropertyTVEpisodeLibraryAdded])
  {
    return [v0 isLibraryAdded];
  }

  if ([v0 hasLoadedValueForKey:MPModelPropertyTVSeasonLibraryAdded])
  {
    return [v0 isLibraryAdded];
  }

  result = [v0 hasLoadedValueForKey:MPModelPropertyArtistLibraryAdded];
  if (result)
  {
    return [v0 isLibraryAdded];
  }

  return result;
}

uint64_t MPModelPlaylist.sortStorageKeyDomain.getter()
{
  v1 = [v0 identifiers];
  v2 = [v1 universalStore];

  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = [v2 globalPlaylistID];
  swift_unknownObjectRelease();
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = sub_AB92A0();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

LABEL_8:
    v9 = [v0 identifiers];
    v8 = MPIdentifierSet.bestLibraryIdentifier.getter();

    return v8;
  }

  sub_4FD6CC();
  v8 = sub_ABAAB0();

  return v8;
}

uint64_t MPModelPlaylist.legacyPreferredTracklistSortDescriptors.getter()
{
  if (([v0 hasLoadedValueForKey:MPModelPropertyAlbumLibraryAdded] & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyMovieLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyPlaylistLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertySongLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVEpisodeLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVSeasonLibraryAdded) & 1) == 0 && !objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyArtistLibraryAdded) || !objc_msgSend(v0, "isLibraryAdded"))
  {
    return 0;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  v2 = [v0 sortStorageKeyDomain];
  if (v2)
  {
    v3 = v2;
    v4 = sub_AB92A0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v8 = NSUserDefaults.sortType(for:keyDomain:)(0xC2u, v4, v6);

  sub_68E6F0(v8, v12);
  v9 = v13;
  v10 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v11 = (*(v10 + 24))(194, v9, v10);
  __swift_destroy_boxed_opaque_existential_0(v12);
  return v11;
}

Class sub_692240(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    sub_693640();
    v6.super.isa = sub_AB9740().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

id MPModelPlaylist.preferredTracklistSortDescriptors.getter()
{
  v1 = v0;
  if (([v0 hasLoadedValueForKey:MPModelPropertyAlbumLibraryAdded] & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyMovieLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyPlaylistLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertySongLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVEpisodeLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVSeasonLibraryAdded) & 1) == 0 && !objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyArtistLibraryAdded) || !objc_msgSend(v0, "isLibraryAdded"))
  {
    return 0;
  }

  result = [v0 sortStorageKeyDomain];
  if (result)
  {
    v3 = result;
    v4 = sub_AB92A0();
    v6 = v5;

    v7 = [objc_opt_self() standardUserDefaults];
    v62[0] = 0x2D74726F53;
    v62[1] = 0xE500000000000000;
    v63._countAndFlagsBits = v4;
    v63._object = v6;
    sub_AB94A0(v63);

    sub_693598();
    sub_6935EC();
    NSUserDefaults.decodeValue<A>(_:forKey:)(&type metadata for Actions.SortPlaylist.TrackListSort, v62);

    v8 = LOWORD(v62[0]);
    if ((v62[0] & 0xFF00) == 0x200)
    {
      result = [v1 legacyPreferredTracklistSortDescriptors];
      if (result)
      {
        v9 = result;
        sub_693640();
        v10 = sub_AB9760();

        return v10;
      }
    }

    else
    {
      v11 = LOBYTE(v62[0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
      if (v8 <= 1u)
      {
        if (v11)
        {
          v49 = swift_allocObject();
          *(v49 + 16) = xmmword_AF7C50;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0);
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_AF85F0;
          *(v50 + 32) = sub_AB92A0();
          *(v50 + 40) = v51;
          *(v50 + 48) = sub_AB92A0();
          *(v50 + 56) = v52;
          isa = sub_AB9740().super.isa;

          v54 = objc_opt_self();
          v55 = [v54 sortDescriptorWithKeyPath:isa ascending:(v8 >> 8) & 1];

          *(v49 + 32) = v55;
          v56 = swift_allocObject();
          *(v56 + 16) = xmmword_AF8820;
          *(v56 + 32) = sub_AB92A0();
          *(v56 + 40) = v57;
          *(v56 + 48) = sub_AB92A0();
          *(v56 + 56) = v58;
          *(v56 + 64) = sub_AB92A0();
          *(v56 + 72) = v59;
          v60 = sub_AB9740().super.isa;

          v61 = [v54 sortDescriptorWithKeyPath:v60 ascending:1];

          result = v49;
          *(v49 + 40) = v61;
        }

        else
        {
          v24 = (v8 >> 8) & 1;
          v25 = swift_allocObject();
          *(v25 + 16) = xmmword_AF82B0;
          sub_AB92A0();
          v26 = objc_allocWithZone(NSSortDescriptor);
          v27 = sub_AB9260();

          v28 = [v26 initWithKey:v27 ascending:v24];

          result = v25;
          *(v25 + 32) = v28;
        }
      }

      else if (v11 == 2)
      {
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_AF82E0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_AF8820;
        *(v30 + 32) = sub_AB92A0();
        *(v30 + 40) = v31;
        *(v30 + 48) = sub_AB92A0();
        *(v30 + 56) = v32;
        *(v30 + 64) = sub_AB92A0();
        *(v30 + 72) = v33;
        v34 = sub_AB9740().super.isa;

        v35 = objc_opt_self();
        v36 = [v35 sortDescriptorWithKeyPath:v34 ascending:(v8 >> 8) & 1];

        *(v29 + 32) = v36;
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_AF8820;
        *(v37 + 32) = sub_AB92A0();
        *(v37 + 40) = v38;
        *(v37 + 48) = sub_AB92A0();
        *(v37 + 56) = v39;
        *(v37 + 64) = sub_AB92A0();
        *(v37 + 72) = v40;
        v41 = sub_AB9740().super.isa;

        v42 = [v35 sortDescriptorWithKeyPath:v41 ascending:1];

        *(v29 + 40) = v42;
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_AF85F0;
        *(v43 + 32) = sub_AB92A0();
        *(v43 + 40) = v44;
        *(v43 + 48) = sub_AB92A0();
        *(v43 + 56) = v45;
        v46 = sub_AB9740().super.isa;

        v47 = [v35 sortDescriptorWithKeyPath:v46 ascending:1];

        result = v29;
        *(v29 + 48) = v47;
      }

      else
      {
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_AF7C50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_AF8820;
        *(v13 + 32) = sub_AB92A0();
        *(v13 + 40) = v14;
        *(v13 + 48) = sub_AB92A0();
        *(v13 + 56) = v15;
        *(v13 + 64) = sub_AB92A0();
        *(v13 + 72) = v16;
        v17 = sub_AB9740().super.isa;

        v18 = objc_opt_self();
        v19 = [v18 sortDescriptorWithKeyPath:v17 ascending:(v8 >> 8) & 1];

        *(v12 + 32) = v19;
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_AF85F0;
        *(v20 + 32) = sub_AB92A0();
        *(v20 + 40) = v21;
        *(v20 + 48) = sub_AB92A0();
        *(v20 + 56) = v22;
        v23 = sub_AB9740().super.isa;

        v48 = [v18 sortDescriptorWithKeyPath:v23 ascending:1];

        result = v12;
        *(v12 + 40) = v48;
      }
    }
  }

  return result;
}

uint64_t sub_692BF4()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, static Logger.sortOptions);
  __swift_project_value_buffer(v0, static Logger.sortOptions);
  return sub_AB4BB0();
}

uint64_t Logger.sortOptions.unsafeMutableAddressor()
{
  if (qword_E0CE60 != -1)
  {
    swift_once();
  }

  v0 = sub_AB4BC0();

  return __swift_project_value_buffer(v0, static Logger.sortOptions);
}

uint64_t static Logger.sortOptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_E0CE60 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  v3 = __swift_project_value_buffer(v2, static Logger.sortOptions);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t _s9MusicCore11SortOptionsV11ContentTypeO2eeoiySbAE_AEtFZ_0(int a1, int a2)
{
  v2 = a2;
  v3 = a1;
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 != 2 && a1 == 192 && a2 == 192)
    {
      return 1;
    }
  }

  else if (a1 >> 6)
  {
    if ((a2 & 0xC0) == 0x40)
    {
      return ((a2 ^ a1) & 0x3F) == 0;
    }
  }

  else if (a2 < 0x40u)
  {
    return ((a2 ^ a1) & 1) == 0;
  }

  sub_ABB5C0();
  SortOptions.ContentType.identifier.getter(v3);
  sub_AB93F0();

  v6 = sub_ABB610();
  sub_ABB5C0();
  SortOptions.ContentType.identifier.getter(v2);
  sub_AB93F0();

  return v6 == sub_ABB610();
}

uint64_t sub_692EA0(unsigned __int8 a1, char a2)
{
  if (a1 == 194)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_AF7C50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_AF8820;
    *(v4 + 32) = sub_AB92A0();
    *(v4 + 40) = v5;
    *(v4 + 48) = sub_AB92A0();
    *(v4 + 56) = v6;
    *(v4 + 64) = sub_AB92A0();
    *(v4 + 72) = v7;
    isa = sub_AB9740().super.isa;

    v9 = objc_opt_self();
    v10 = [v9 sortDescriptorWithKeyPath:isa ascending:a2 & 1];

    *(v3 + 32) = v10;
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_AF85F0;
    *(v11 + 32) = sub_AB92A0();
    *(v11 + 40) = v12;
    *(v11 + 48) = sub_AB92A0();
    *(v11 + 56) = v13;
    v14 = sub_AB9740().super.isa;

    v15 = [v9 sortDescriptorWithKeyPath:v14 ascending:1];

    *(v3 + 40) = v15;
    return v3;
  }

  else
  {
    result = sub_ABAFD0();
    __break(1u);
  }

  return result;
}

uint64_t sub_6930B8(unsigned __int8 a1)
{
  if ((a1 >> 6) <= 1u)
  {
    if (a1 >> 6)
    {
      goto LABEL_10;
    }

LABEL_6:
    if (qword_E0CE58 != -1)
    {
      swift_once();
    }

    v1 = qword_E71F78;

    return v1;
  }

  if (a1 >> 6 == 2)
  {
    goto LABEL_10;
  }

  if (a1 == 192)
  {
    goto LABEL_6;
  }

  if (a1 == 193)
  {
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_AF82B0;
    sub_AB92A0();
    v2 = objc_allocWithZone(NSSortDescriptor);
    v3 = sub_AB9260();

    v4 = [v2 initWithKey:v3 ascending:0];

    *(v1 + 32) = v4;
    return v1;
  }

  result = sub_ABAFD0();
  __break(1u);
  return result;
}

uint64_t sub_6932B0(char a1)
{
  if ((a1 & 0xC0) == 0x80)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_AF82B0;
    sub_AB92A0();
    v2 = objc_allocWithZone(NSSortDescriptor);
    v3 = sub_AB9260();

    v4 = [v2 initWithKey:v3 ascending:0];

    *(v1 + 32) = v4;
    return v1;
  }

  else
  {
    result = sub_ABAFD0();
    __break(1u);
  }

  return result;
}

void *sub_6933C4(unsigned __int8 a1)
{
  v1 = a1 >> 6;
  if (v1 < 2)
  {
    return _swiftEmptyArrayStorage;
  }

  if (v1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_AF82B0;
    sub_AB92A0();
    v4 = objc_allocWithZone(NSSortDescriptor);
    v5 = sub_AB9260();

    v6 = [v4 initWithKey:v5 ascending:1];

    result = v3;
    *(v3 + 32) = v6;
  }

  else
  {
    if ((a1 & 0xFE) == 0xC0)
    {
      return _swiftEmptyArrayStorage;
    }

    if (qword_E0CE30 != -1)
    {
      swift_once();
    }

    if (qword_E71F50 >> 62)
    {
      sub_693640();

      v7 = sub_ABAFF0();
    }

    else
    {
      v7 = qword_E71F50;

      sub_ABB3E0();
      sub_693640();
    }

    return v7;
  }

  return result;
}

uint64_t _s9MusicCore11SortOptionsV0C4TypeO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D1C490;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_693598()
{
  result = qword_E11F68;
  if (!qword_E11F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11F68);
  }

  return result;
}

unint64_t sub_6935EC()
{
  result = qword_E11F70;
  if (!qword_E11F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11F70);
  }

  return result;
}

unint64_t sub_693640()
{
  result = qword_E10380;
  if (!qword_E10380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E10380);
  }

  return result;
}

unint64_t sub_693690()
{
  result = qword_E11F78;
  if (!qword_E11F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11F78);
  }

  return result;
}

unint64_t sub_6936E8()
{
  result = qword_E11F80;
  if (!qword_E11F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11F80);
  }

  return result;
}

unint64_t sub_693740()
{
  result = qword_E11F88;
  if (!qword_E11F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11F88);
  }

  return result;
}

unint64_t sub_693798()
{
  result = qword_E11F90;
  if (!qword_E11F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11F90);
  }

  return result;
}

unint64_t sub_6937F0()
{
  result = qword_E11F98;
  if (!qword_E11F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11F98);
  }

  return result;
}

unint64_t sub_693848()
{
  result = qword_E11FA0;
  if (!qword_E11FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11FA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SortOptions.ContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1D)
  {
    goto LABEL_17;
  }

  if (a2 + 227 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 227) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 227;
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

      return (*a1 | (v4 << 8)) - 227;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 227;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v6 >= 0x1C)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for SortOptions.ContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 227 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 227) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1D)
  {
    v4 = 0;
  }

  if (a2 > 0x1C)
  {
    v5 = ((a2 - 29) >> 8) + 1;
    *result = a2 - 29;
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
    *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_693A18(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >> 6;
  v3 = (v1 & 7) + 3;
  if (v2 == 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

_BYTE *sub_693A34(_BYTE *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 7 | (a2 << 6);
  }

  else
  {
    *result = (a2 + 5) & 7 | 0xC0;
  }

  return result;
}

uint64_t static MPModelPlaylist.artworkPlaceholderSystemImageName(for:)(uint64_t a1, char a2)
{
  result = 0x6F6E2E636973756DLL;
  if ((a2 & 1) == 0)
  {
    v4 = a1 - 1;
    if (v4 <= 2)
    {
      return *&aGearshapgenius[8 * v4];
    }
  }

  return result;
}

uint64_t MPModelPlaylist.artworkPlaceholderImage.getter()
{
  v1 = 0x6F6E2E636973756DLL;
  if ([v0 hasLoadedValueForKey:MPModelPropertyPlaylistType])
  {
    v2 = [v0 type] - 1;
    if (v2 <= 2)
    {
      return *&aGearshapgenius[8 * v2];
    }
  }

  return v1;
}

id MPModelPlaylist.preferredArtworkCatalog.getter()
{
  if (![v0 hasLoadedValueForKey:MPModelPropertyPlaylistType])
  {
    goto LABEL_12;
  }

  v1 = [v0 type];
  if (v1 > 8)
  {
    goto LABEL_12;
  }

  if (((1 << v1) & 0x173) != 0)
  {
    result = MPModelPlaylist.coverArtworkCatalog.getter();
    if (!result)
    {
      result = [v0 artworkCatalog];
      if (!result)
      {
        if ([v0 hasLoadedValueForKey:MPModelPropertyPlaylistTracksTiledArtwork])
        {
          v3 = [v0 tracksTiledArtworkCatalogWithRows:2 columns:2];
          return v3;
        }

        return 0;
      }
    }

    return result;
  }

  if (v1 == 3)
  {
    return 0;
  }

  if (v1 != 7 || ![v0 hasLoadedValueForKey:MPModelPropertyPlaylistEditorialArtwork] || (result = objc_msgSend(v0, "editorialArtworkCatalog")) == 0)
  {
LABEL_12:
    v3 = [v0 artworkCatalog];
    return v3;
  }

  return result;
}

char *ModelObjectBackedStoreItemMetadata.init(modelObject:)(void *a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  *&v1[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v4 = &v1[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v4 = 0;
  *(v4 + 1) = 0;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 anyObject];
    goto LABEL_5;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v6 = [v7 innerObject];
LABEL_5:
    v8 = v6;
    if (v8)
    {
      goto LABEL_7;
    }
  }

  v8 = a1;
LABEL_7:
  v9 = v8;
  ObjectType = swift_getObjectType();
  v11 = [v9 identifiers];
  v12 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 0, v11);
  v14 = v13;

  if (v14)
  {
    v21.receiver = v1;
    v21.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
    v15 = objc_msgSendSuper2(&v21, "init");
    v16 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
    swift_beginAccess();
    v17 = *&v15[v16];
    *&v15[v16] = a1;
    v18 = v15;

    v19 = &v18[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
    swift_beginAccess();
    *v19 = v12;
    *(v19 + 1) = v14;
  }

  else
  {

    type metadata accessor for ModelObjectBackedStoreItemMetadata();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v18;
}

id ModelObjectBackedStoreItemMetadata.__allocating_init(storePlatformDictionary:parentStoreItemMetadata:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = sub_AB8FD0().super.isa;

  v6 = [v4 initWithStorePlatformDictionary:isa parentStoreItemMetadata:a2];

  return v6;
}

id ModelObjectBackedStoreItemMetadata.init(storePlatformDictionary:parentStoreItemMetadata:)(uint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v4 = &v2[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v4 = 0;
  *(v4 + 1) = 0;
  isa = sub_AB8FD0().super.isa;

  v8.receiver = v2;
  v8.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v6 = objc_msgSendSuper2(&v8, "initWithStorePlatformDictionary:parentStoreItemMetadata:", isa, a2);

  return v6;
}

id ModelObjectBackedStoreItemMetadata.__allocating_init(storePlatformDictionary:expirationDate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5.super.isa = sub_AB8FD0().super.isa;

  v6 = sub_AB3430();
  v7 = *(v6 - 8);
  isa = 0;
  if ((*(v7 + 48))(a2, 1, v6) != 1)
  {
    isa = sub_AB3370().super.isa;
    (*(v7 + 8))(a2, v6);
  }

  v9 = [objc_allocWithZone(v3) initWithStorePlatformDictionary:v5.super.isa expirationDate:isa];

  return v9;
}

id ModelObjectBackedStoreItemMetadata.init(storePlatformDictionary:expirationDate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  *&v3[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v8 = &v3[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9.super.isa = sub_AB8FD0().super.isa;

  sub_5E41F0(a2, v7);
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  isa = 0;
  if ((*(v11 + 48))(v7, 1, v10) != 1)
  {
    isa = sub_AB3370().super.isa;
    (*(v11 + 8))(v7, v10);
  }

  v13 = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v16.receiver = v3;
  v16.super_class = v13;
  v14 = objc_msgSendSuper2(&v16, "initWithStorePlatformDictionary:expirationDate:", v9.super.isa, isa);

  sub_12E1C(a2, &qword_E0FF60);
  return v14;
}

id ModelObjectBackedStoreItemMetadata.__allocating_init(storePlatformDictionary:parentStoreItemMetadata:expirationDate:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7.super.isa = sub_AB8FD0().super.isa;

  v8 = sub_AB3430();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(a3, 1, v8) != 1)
  {
    isa = sub_AB3370().super.isa;
    (*(v9 + 8))(a3, v8);
  }

  v11 = [objc_allocWithZone(v4) initWithStorePlatformDictionary:v7.super.isa parentStoreItemMetadata:a2 expirationDate:isa];

  return v11;
}

id ModelObjectBackedStoreItemMetadata.init(storePlatformDictionary:parentStoreItemMetadata:expirationDate:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_69D4C4(a1, a2, a3);

  return v4;
}

id sub_6948D4(uint64_t a1, SEL *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = sub_AB8FD0().super.isa;

  v6 = [v4 *a2];

  return v6;
}

id sub_694964(uint64_t a1, SEL *a2)
{
  *&v2[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v4 = &v2[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v4 = 0;
  *(v4 + 1) = 0;
  isa = sub_AB8FD0().super.isa;

  v8.receiver = v2;
  v8.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v6 = objc_msgSendSuper2(&v8, *a2, isa);

  return v6;
}

id sub_694A10(char *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  sub_AB8FF0();
  *&a1[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v6 = &a1[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v6 = 0;
  *(v6 + 1) = 0;
  isa = sub_AB8FD0().super.isa;

  v10.receiver = a1;
  v10.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v8 = objc_msgSendSuper2(&v10, *a4, isa);

  return v8;
}

void ModelObjectBackedStoreItemMetadata.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject) = 0;
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID);
  *v1 = 0;
  v1[1] = 0;
  sub_ABAFD0();
  __break(1u);
}

void *ModelObjectBackedStoreItemMetadata.modelObject.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ModelObjectBackedStoreItemMetadata.modelObject.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ModelObjectBackedStoreItemMetadata.modelObjectStoreID.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t ModelObjectBackedStoreItemMetadata.modelObjectStoreID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

char *ModelObjectBackedStoreItemMetadata.appending(_:)(uint64_t a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v3 = objc_msgSendSuper2(&v14, "metadataByAppendingMetadata:", a1);
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *&v1[v4];
  v6 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v7 = *&v3[v6];
  *&v3[v6] = v5;
  v8 = v5;

  v9 = &v1[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  swift_beginAccess();
  v11 = *v9;
  v10 = *(v9 + 1);
  v12 = &v3[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  swift_beginAccess();
  *v12 = v11;
  *(v12 + 1) = v10;

  return v3;
}

uint64_t ModelObjectBackedStoreItemMetadata.artistName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D6B8;
  *(v3 + 24) = v2;
  v9[4] = sub_2D4D0;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1822E0;
  v9[3] = &block_descriptor_189;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t sub_69519C(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = v6;
      v10 = [v8 artist];
      if (v10)
      {
LABEL_7:
        v13 = v10;
        v14 = [v10 name];

        if (v14)
        {
          v15 = sub_AB92A0();
          v17 = v16;

LABEL_12:
          *a2 = v15;
          a2[1] = v17;
        }
      }

LABEL_9:

      goto LABEL_10;
    }

    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v9 = v6;
      v10 = [v12 artist];
      if (v10)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v18 = result;
      v19 = v6;
      v20 = [v18 show];
      v21 = v20;
      if (!v20)
      {
        v22 = [v18 season];
        v15 = [v22 show];

        if (!v15)
        {

          goto LABEL_11;
        }

        v21 = v15;
        v20 = 0;
      }

      v23 = v20;
      v24 = [v21 title];

      if (v24)
      {
        v15 = sub_AB92A0();
        v17 = v25;

        goto LABEL_12;
      }

LABEL_10:
      v15 = 0;
LABEL_11:
      v17 = 0;
      goto LABEL_12;
    }
  }

  return result;
}

void ModelObjectBackedStoreItemMetadata.artistStoreID.getter(uint64_t a1@<X8>)
{
  v25 = 0;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = &v25;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_69D6D8;
  *(v5 + 24) = v4;
  aBlock[4] = sub_36C08;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_13_4;
  v6 = _Block_copy(aBlock);
  v7 = v1;

  [v3 performWithoutEnforcement:v6];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v9 = v25;
    if (!v25)
    {
      goto LABEL_11;
    }

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      v13 = [v11 anyObject];
    }

    else
    {
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      v15 = v9;
      if (!v14)
      {
LABEL_8:
        v16 = v9;
LABEL_9:
        v17 = v16;
        ObjectType = swift_getObjectType();
        v19 = [v17 identifiers];
        v20 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 0, v19);
        v22 = v21;

        if (v22)
        {
          *(a1 + 24) = &type metadata for String;
          *a1 = v20;
          *(a1 + 8) = v22;
LABEL_12:
          v23 = v25;

          return;
        }

LABEL_11:
        *a1 = 0u;
        *(a1 + 16) = 0u;
        goto LABEL_12;
      }

      v13 = [v14 innerObject];
    }

    v16 = v13;
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  __break(1u);
}

void sub_695674(uint64_t a1, void **a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6 || (objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) != 0))
    {
      v7 = [v6 artist];
LABEL_5:
      v8 = *a2;
      *a2 = v7;

      return;
    }

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = v5;
      v12 = [v10 show];
      if (v12)
      {
        v13 = v12;

        v7 = v13;
      }

      else
      {
        v14 = [v10 season];
        if (v14)
        {
          v15 = v14;
          v16 = [v14 show];

          v7 = v16;
        }

        else
        {

          v7 = 0;
        }
      }

      goto LABEL_5;
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.audioTraits.getter()
{
  v10 = _swiftEmptyArrayStorage;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D6E0;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_23_4;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void sub_6959B4(uint64_t a1, char **a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (!v5)
  {
    return;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    goto LABEL_3;
  }

  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (!v29)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
      return;
    }

LABEL_3:
    v7 = v6;
    v8 = v5;
    if (([v7 traits] & 0x10) != 0)
    {
      v9 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_506314(0, *(v9 + 2) + 1, 1, v9);
        *a2 = v9;
      }

      v11 = *(v9 + 2);
      v12 = *(v9 + 3);
      v13 = v11 + 1;
      if (v11 >= v12 >> 1)
      {
        v62 = v11 + 1;
        v50 = v9;
        v51 = *(v9 + 2);
        v52 = sub_506314((v12 > 1), v11 + 1, 1, v50);
        v11 = v51;
        v13 = v62;
        v9 = v52;
        *a2 = v52;
      }

      *(v9 + 2) = v13;
      v14 = &v9[16 * v11];
      *(v14 + 4) = 0x736F6D7461;
      *(v14 + 5) = 0xE500000000000000;
    }

    if (([v7 traits] & 4) != 0)
    {
      v15 = *a2;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v15;
      if ((v16 & 1) == 0)
      {
        v15 = sub_506314(0, *(v15 + 2) + 1, 1, v15);
        *a2 = v15;
      }

      v17 = *(v15 + 2);
      v18 = *(v15 + 3);
      v19 = v17 + 1;
      if (v17 >= v18 >> 1)
      {
        v63 = v17 + 1;
        v53 = v15;
        v54 = *(v15 + 2);
        v55 = sub_506314((v18 > 1), v17 + 1, 1, v53);
        v17 = v54;
        v19 = v63;
        v15 = v55;
        *a2 = v55;
      }

      *(v15 + 2) = v19;
      v20 = &v15[16 * v17];
      *(v20 + 4) = 0x6C2D7365722D6968;
      *(v20 + 5) = 0xEF7373656C73736FLL;
    }

    if (([v7 traits] & 2) == 0)
    {
      goto LABEL_29;
    }

    v21 = *a2;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v21;
    if ((v22 & 1) == 0)
    {
      v21 = sub_506314(0, *(v21 + 2) + 1, 1, v21);
      *a2 = v21;
    }

    v23 = *(v21 + 2);
    v24 = *(v21 + 3);
    v25 = v23 + 1;
    if (v23 >= v24 >> 1)
    {
      v62 = v23 + 1;
      v56 = v21;
      v57 = *(v21 + 2);
      v58 = sub_506314((v24 > 1), v23 + 1, 1, v56);
      v23 = v57;
      v25 = v62;
      v21 = v58;
      *a2 = v58;
    }

    *(v21 + 2) = v25;
    v26 = &v21[16 * v23];
    v27 = 0x7373656C73736F6CLL;
    v28 = 0xE800000000000000;
    goto LABEL_28;
  }

  v7 = v29;
  v8 = v5;
  if (([v7 traits] & 0x10) != 0)
  {
    v30 = *a2;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v30;
    if ((v31 & 1) == 0)
    {
      v30 = sub_506314(0, *(v30 + 2) + 1, 1, v30);
      *a2 = v30;
    }

    v32 = *(v30 + 2);
    v33 = *(v30 + 3);
    v34 = v32 + 1;
    if (v32 >= v33 >> 1)
    {
      v62 = v32 + 1;
      v59 = v30;
      v60 = *(v30 + 2);
      v61 = sub_506314((v33 > 1), v32 + 1, 1, v59);
      v32 = v60;
      v34 = v62;
      v30 = v61;
      *a2 = v61;
    }

    *(v30 + 2) = v34;
    v26 = &v30[16 * v32];
    v27 = 0x736F6D7461;
    v28 = 0xE500000000000000;
LABEL_28:
    *(v26 + 4) = v27;
    *(v26 + 5) = v28;
  }

LABEL_29:
  if (([v7 traits] & 8) != 0)
  {
    v35 = *a2;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v35;
    if ((v36 & 1) == 0)
    {
      v35 = sub_506314(0, *(v35 + 2) + 1, 1, v35);
      *a2 = v35;
    }

    v37 = *(v35 + 2);
    v38 = *(v35 + 3);
    v39 = v37 + 1;
    if (v37 >= v38 >> 1)
    {
      v64 = v37 + 1;
      v47 = v35;
      v48 = *(v35 + 2);
      v49 = sub_506314((v38 > 1), v37 + 1, 1, v47);
      v37 = v48;
      v39 = v64;
      v35 = v49;
      *a2 = v49;
    }

    *(v35 + 2) = v39;
    v40 = &v35[16 * v37];
    *(v40 + 4) = 0x6C616974617073;
    *(v40 + 5) = 0xE700000000000000;
  }

  if (([v7 traits] & 0x20) != 0)
  {
    v41 = *a2;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v41;
    if ((v42 & 1) == 0)
    {
      v41 = sub_506314(0, *(v41 + 2) + 1, 1, v41);
      *a2 = v41;
    }

    v44 = *(v41 + 2);
    v43 = *(v41 + 3);
    if (v44 >= v43 >> 1)
    {
      *a2 = sub_506314((v43 > 1), v44 + 1, 1, v41);
    }

    v45 = *a2;
    *(v45 + 2) = v44 + 1;
    v46 = &v45[16 * v44];
    *(v46 + 4) = 0x646E756F72727573;
    *(v46 + 5) = 0xE800000000000000;
  }

  else
  {
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.isBeats1.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D6E8;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_33_2;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.collectionName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D714;
  *(v3 + 24) = v2;
  v9[4] = sub_36C08;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1822E0;
  v9[3] = &block_descriptor_43_10;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

void ModelObjectBackedStoreItemMetadata.collectionStoreID.getter(uint64_t a1@<X8>)
{
  v25 = 0;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = &v25;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_69D740;
  *(v5 + 24) = v4;
  aBlock[4] = sub_36C08;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_53_1;
  v6 = _Block_copy(aBlock);
  v7 = v1;

  [v3 performWithoutEnforcement:v6];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v9 = v25;
    if (!v25)
    {
      goto LABEL_11;
    }

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      v13 = [v11 anyObject];
    }

    else
    {
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      v15 = v9;
      if (!v14)
      {
LABEL_8:
        v16 = v9;
LABEL_9:
        v17 = v16;
        ObjectType = swift_getObjectType();
        v19 = [v17 identifiers];
        v20 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 0, v19);
        v22 = v21;

        if (v22)
        {
          *(a1 + 24) = &type metadata for String;
          *a1 = v20;
          *(a1 + 8) = v22;
LABEL_12:
          v23 = v25;

          return;
        }

LABEL_11:
        *a1 = 0u;
        *(a1 + 16) = 0u;
        goto LABEL_12;
      }

      v13 = [v14 innerObject];
    }

    v16 = v13;
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  __break(1u);
}

void sub_696450(uint64_t a1, void **a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = &selRef_album;
    }

    else
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (!v5)
      {
        return;
      }

      v6 = &selRef_season;
    }

    v7 = [v5 *v6];
    v8 = *a2;
    *a2 = v7;
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.isCompilation.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D748;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_63_3;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.composerName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D774;
  *(v3 + 24) = v2;
  v9[4] = sub_36C08;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1822E0;
  v9[3] = &block_descriptor_73_0;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t sub_696840(uint64_t a1, uint64_t *a2, SEL *a3, const char **a4)
{
  v8 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v10 = *(a1 + v8);
  if (v10)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v11 = result;
      v12 = v10;
      v13 = [v11 *a3];
      if (v13 && (v14 = *a4, v15 = v13, v16 = [v13 v14], v15, v16))
      {
        v17 = sub_AB92A0();
        v19 = v18;
      }

      else
      {

        v17 = 0;
        v19 = 0;
      }

      *a2 = v17;
      a2[1] = v19;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.copyrightText.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D7A0;
  *(v3 + 24) = v2;
  v9[4] = sub_36C08;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1822E0;
  v9[3] = &block_descriptor_83;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.curatorName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D7D8;
  *(v3 + 24) = v2;
  v9[4] = sub_36C08;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1822E0;
  v9[3] = &block_descriptor_93_0;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

void sub_696C54(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = [v7 curator];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 name];
        if (v11)
        {
          v12 = v11;
          v13 = sub_AB92A0();
          v15 = v14;
        }

        else
        {
          v16 = [v10 shortName];
          if (v16)
          {
            v17 = v16;
            v13 = sub_AB92A0();
            v15 = v18;
          }

          else
          {

            v13 = 0;
            v15 = 0;
          }
        }

        *a2 = v13;
        a2[1] = v15;
      }

      else
      {
      }
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.descriptionText.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D7E0;
  *(v3 + 24) = v2;
  v9[4] = sub_36C08;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1822E0;
  v9[3] = &block_descriptor_103_1;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t sub_696F20(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = v6;
      v10 = [v8 descriptionText];
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    else
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;
        v9 = v6;
        v10 = [v12 descriptionText];
        if (!v10)
        {
          goto LABEL_13;
        }
      }

      else
      {
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13)
        {
          v14 = v13;
          v9 = v6;
          v10 = [v14 descriptionText];
          if (!v10)
          {
LABEL_13:

            v16 = 0;
            v18 = 0;
            goto LABEL_14;
          }
        }

        else
        {
          objc_opt_self();
          result = swift_dynamicCastObjCClass();
          if (!result)
          {
            return result;
          }

          v19 = result;
          v9 = v6;
          v10 = [v19 descriptionText];
          if (!v10)
          {
            goto LABEL_13;
          }
        }
      }
    }

    v15 = v10;
    v16 = sub_AB92A0();
    v18 = v17;

LABEL_14:
    *a2 = v16;
    a2[1] = v18;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.discCount.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D7E8;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_113;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.discNumber.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D824;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_123_2;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.duration.getter()
{
  v9 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v9;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D850;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_133_0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
  }

  __break(1u);
  return result;
}

id sub_6975C8(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
    {
      result = [result duration];
      *a2 = v6;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.editorNotes.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D858;
  *(v3 + 24) = v2;
  v9[4] = sub_36C08;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1822E0;
  v9[3] = &block_descriptor_143_0;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t sub_697810(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v6 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v8 = *(a1 + v6);
  if (v8)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = v8;
      v12 = [v10 *a3];
      if (!v12)
      {
        goto LABEL_13;
      }
    }

    else
    {
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = v13;
        v11 = v8;
        v12 = [v14 *a3];
        if (!v12)
        {
          goto LABEL_13;
        }
      }

      else
      {
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (v15)
        {
          v16 = v15;
          v11 = v8;
          v12 = [v16 *a3];
          if (!v12)
          {
LABEL_13:

            v18 = 0;
            v20 = 0;
            goto LABEL_14;
          }
        }

        else
        {
          objc_opt_self();
          result = swift_dynamicCastObjCClass();
          if (!result)
          {
            return result;
          }

          v21 = result;
          v11 = v8;
          v12 = [v21 *a3];
          if (!v12)
          {
            goto LABEL_13;
          }
        }
      }
    }

    v17 = v12;
    v18 = sub_AB92A0();
    v20 = v19;

LABEL_14:
    *a2 = v18;
    a2[1] = v20;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.shortEditorNotes.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D87C;
  *(v3 + 24) = v2;
  v9[4] = sub_36C08;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1822E0;
  v9[3] = &block_descriptor_153_1;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.episodeCount.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D8A0;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_163;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.explicitRating.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D8CC;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_173_0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id sub_697E84(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
    {
      result = [result explicitRating];
      *a2 = result;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.genreNames.getter()
{
  v16 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v16;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D8D4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_183_0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (v16 && (v8 = [v16 name]) != 0)
    {
      v9 = v8;
      v10 = sub_AB92A0();
      v12 = v11;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FD00);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_AF4EC0;
      *(v13 + 56) = &type metadata for String;
      *(v13 + 32) = v10;
      *(v13 + 40) = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v16;

    return v13;
  }

  return result;
}

void sub_698184(uint64_t a1, void **a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5 || (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) != 0))
    {
      v6 = [v5 genre];
      v7 = *a2;
      *a2 = v6;
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.handle.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D8DC;
  *(v3 + 24) = v2;
  v9[4] = sub_36C08;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1822E0;
  v9[3] = &block_descriptor_193_0;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.hasArtistBiography.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D908;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_203;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.hasLyrics.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D934;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_213_1;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void sub_698724(uint64_t a1, unsigned __int8 *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = [v7 lyrics];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 hasStoreLyrics];

        *a2 = v11;
      }

      else
      {
      }
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.hasTimeSyncedLyrics.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D93C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_223_0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void sub_69898C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = [v7 lyrics];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 hasTimeSyncedLyrics];

        *a2 = v11;
      }

      else
      {
      }
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.hasSocialPosts.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D944;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_233_0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id sub_698BF4(uint64_t a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
    {
      result = [result hasSocialPosts];
      *a2 = result;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isExplicitContent.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D94C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_243;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id sub_698E38(uint64_t a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          v6 = &selRef_isExplicitSong;
          goto LABEL_5;
        }

        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (!result)
        {
          return result;
        }
      }
    }

    v6 = &selRef_hasExplicitContent;
LABEL_5:
    result = [result *v6];
    *a2 = result;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isMasteredForiTunes.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D954;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_253_1;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t sub_6990C8(uint64_t a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
    {
      result = [result traits];
      *a2 = result & 1;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isPreorder.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D95C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_263_0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isPrivatePerson.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D988;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_273_0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isVerifiedPerson.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D9B4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_283;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isOnboardedPerson.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D9E0;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_293;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t sub_6997FC(uint64_t a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      result = [result hasLightweightProfile];
      *a2 = result ^ 1;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.itemKind.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D9E8;
  *(v3 + 24) = v2;
  v9[4] = sub_36C08;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1822E0;
  v9[3] = &block_descriptor_303;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

void sub_699A10(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = v5;
      v10 = [v8 curatorKind];
      if (v10 <= 1)
      {
        if (!v10)
        {

          return;
        }

        if (v10 == (&dword_0 + 1))
        {
          goto LABEL_22;
        }
      }

      else if (v10 == (&dword_0 + 2) || v10 == (&dword_0 + 3) || v10 == &dword_4)
      {
        goto LABEL_22;
      }

      sub_ABAD90(24);
      v16._countAndFlagsBits = 0xD000000000000013;
      v16._object = 0x8000000000B4AB80;
      sub_AB94A0(v16);
      v17._object = 0x8000000000B6FD60;
      v17._countAndFlagsBits = 0xD000000000000012;
      sub_AB94A0(v17);
      v18._countAndFlagsBits = 32;
      v18._object = 0xE100000000000000;
      sub_AB94A0(v18);
      type metadata accessor for MPModelCuratorKind(0);
      sub_ABAF70();
      sub_ABAFD0();
      __break(1u);
      return;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      v9 = v5;
      [v15 isArtistUploadedContent];
      [v15 hasVideo];
LABEL_22:
      v11 = sub_AB92A0();
      v13 = v12;

      *a2 = v11;
      a2[1] = v13;
      goto LABEL_5;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
LABEL_4:
      *a2 = sub_AB92A0();
      a2[1] = v6;
LABEL_5:
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.lastModifiedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_AB3430();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_69D9F0;
  *(v6 + 24) = v5;
  v11[4] = sub_36C08;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1822E0;
  v11[3] = &block_descriptor_313;
  v7 = _Block_copy(v11);
  v8 = v1;

  [v4 performWithoutEnforcement:v7];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_699FE0(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = sub_AB36A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = sub_AB2DC0();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v18 = *(a1 + v17);
  if (v18)
  {
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      v20 = v19;
      v21 = v18;
      v22 = [v20 lastModifiedDateComponents];
      if (v22)
      {
        v23 = v22;
        sub_AB2D70();

        (*(v11 + 32))(v16, v14, v10);
        v24 = [objc_opt_self() storeServerCalendar];
        sub_AB3640();

        sub_AB3650();
        (*(v4 + 8))(v6, v3);
        (*(v11 + 8))(v16, v10);
        sub_160B4(v9, v25, &qword_E0FF60);
      }

      else
      {
      }
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.movementCount.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D9F8;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_323;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.movementName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69DA24;
  *(v3 + 24) = v2;
  v9[4] = sub_36C08;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1822E0;
  v9[3] = &block_descriptor_333;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.movementNumber.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69DA50;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_343_0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.name.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69DA7C;
  *(v3 + 24) = v2;
  v9[4] = sub_36C08;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1822E0;
  v9[3] = &block_descriptor_353;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t sub_69A914(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
LABEL_15:
      v12 = v7;
      v10 = v6;
      v11 = [v12 title];
LABEL_16:
      v13 = v11;
      if (v13)
      {
LABEL_17:
        v14 = v13;
LABEL_18:
        v15 = sub_AB92A0();
        v17 = v16;

LABEL_27:
        *a2 = v15;
        a2[1] = v17;
      }

      goto LABEL_25;
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (!v8)
      {
        objc_opt_self();
        v7 = swift_dynamicCastObjCClass();
        if (v7)
        {
          goto LABEL_15;
        }

        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (!v8)
        {
          objc_opt_self();
          v8 = swift_dynamicCastObjCClass();
          if (!v8)
          {
            objc_opt_self();
            v8 = swift_dynamicCastObjCClass();
            if (!v8)
            {
              objc_opt_self();
              v7 = swift_dynamicCastObjCClass();
              if (!v7)
              {
                objc_opt_self();
                v7 = swift_dynamicCastObjCClass();
                if (!v7)
                {
                  objc_opt_self();
                  v18 = swift_dynamicCastObjCClass();
                  if (v18)
                  {
                    v19 = v18;
                    v10 = v6;
                    v20 = [v19 show];
                    v15 = v20;
                    if (!v20)
                    {

                      goto LABEL_26;
                    }

                    v14 = [v20 title];

                    if (v14)
                    {
                      goto LABEL_18;
                    }
                  }

                  else
                  {
                    objc_opt_self();
                    result = swift_dynamicCastObjCClass();
                    if (!result)
                    {
                      return result;
                    }

                    v21 = result;
                    v10 = v6;
                    v13 = [v21 title];
                    if (v13)
                    {
                      goto LABEL_17;
                    }
                  }

LABEL_25:

                  v15 = 0;
LABEL_26:
                  v17 = 0;
                  goto LABEL_27;
                }
              }

              goto LABEL_15;
            }
          }
        }
      }
    }

    v9 = v8;
    v10 = v6;
    v11 = [v9 name];
    goto LABEL_16;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.nameRaw.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69DA84;
  *(v3 + 24) = v2;
  v9[4] = sub_36C08;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1822E0;
  v9[3] = &block_descriptor_363_0;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

Class sub_69AE50(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = a1;
  a3();

  v9 = sub_AB3430();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    isa = sub_AB3370().super.isa;
    (*(v10 + 8))(v7, v9);
    v12 = isa;
  }

  return v12;
}

uint64_t ModelObjectBackedStoreItemMetadata.releaseDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_AB3430();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_69DAB0;
  *(v6 + 24) = v5;
  v11[4] = sub_36C08;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1822E0;
  v11[3] = &block_descriptor_373;
  v7 = _Block_copy(v11);
  v8 = v1;

  [v4 performWithoutEnforcement:v7];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_69B124(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = sub_AB2DC0();
  v67 = *(v3 - 8);
  v68 = v3;
  __chkstk_darwin(v3);
  v66 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FE0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v65 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v65 - v13;
  __chkstk_darwin(v12);
  v16 = &v65 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v65 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v65 - v25;
  __chkstk_darwin(v24);
  v28 = &v65 - v27;
  v29 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v31 = *(a1 + v29);
  if (v31)
  {
    objc_opt_self();
    v32 = swift_dynamicCastObjCClass();
    if (v32)
    {
      v33 = v32;
      v34 = v31;
      v35 = [v33 releaseDateComponents];
      if (v35)
      {
        v36 = v35;
        sub_AB2D70();

        v37 = 0;
      }

      else
      {
        v37 = 1;
      }

      v45 = v67;
      v44 = v68;
      (*(v67 + 56))(v14, v37, 1, v68);
      sub_69DBE0(v14, v16);
      if ((*(v45 + 48))(v16, 1, v44))
      {

        sub_12E1C(v16, &qword_E11FE0);
        v46 = sub_AB3430();
        (*(*(v46 - 8) + 56))(v28, 1, 1, v46);
      }

      else
      {
        v47 = v66;
        (*(v45 + 16))(v66, v16, v44);
        sub_12E1C(v16, &qword_E11FE0);
        sub_AB2D90();

        (*(v45 + 8))(v47, v44);
      }

      v23 = v28;
    }

    else
    {
      objc_opt_self();
      v38 = swift_dynamicCastObjCClass();
      if (v38)
      {
        v39 = v38;
        v40 = v31;
        v41 = [v39 releaseDateComponents];
        if (v41)
        {
          v42 = v41;
          sub_AB2D70();

          v43 = 0;
        }

        else
        {
          v43 = 1;
        }

        v55 = v67;
        v54 = v68;
        (*(v67 + 56))(v8, v43, 1, v68);
        sub_69DBE0(v8, v11);
        if ((*(v55 + 48))(v11, 1, v54))
        {

          sub_12E1C(v11, &qword_E11FE0);
          v56 = sub_AB3430();
          (*(*(v56 - 8) + 56))(v26, 1, 1, v56);
        }

        else
        {
          v57 = v66;
          (*(v55 + 16))(v66, v11, v54);
          sub_12E1C(v11, &qword_E11FE0);
          sub_AB2D90();

          (*(v55 + 8))(v57, v54);
        }

        v23 = v26;
      }

      else
      {
        objc_opt_self();
        v48 = swift_dynamicCastObjCClass();
        if (v48)
        {
          v49 = v48;
          v50 = v31;
          v51 = [v49 releaseDate];
          if (v51)
          {
            v52 = v51;
            sub_AB33F0();

            v53 = 0;
            v50 = v52;
          }

          else
          {
            v53 = 1;
          }

          v63 = sub_AB3430();
          (*(*(v63 - 8) + 56))(v23, v53, 1, v63);
        }

        else
        {
          objc_opt_self();
          result = swift_dynamicCastObjCClass();
          if (!result)
          {
            return result;
          }

          v58 = result;
          v59 = v31;
          v60 = [v58 releaseDate];
          if (v60)
          {
            v61 = v60;
            sub_AB33F0();

            v62 = 0;
            v59 = v61;
          }

          else
          {
            v62 = 1;
          }

          v64 = sub_AB3430();
          (*(*(v64 - 8) + 56))(v20, v62, 1, v64);
          v23 = v20;
        }
      }
    }

    return sub_160B4(v23, v69, &qword_E0FF60);
  }

  return result;
}

id sub_69B7F8(void *a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  v4 = a1;
  a3(v12);

  v5 = v13;
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = *(v5 - 8);
    __chkstk_darwin(v6);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_ABB3A0();
    (*(v7 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t ModelObjectBackedStoreItemMetadata.socialProfileID.getter@<X0>(_OWORD *a1@<X8>)
{
  *a1 = 0u;
  a1[1] = 0u;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_69DAB8;
  *(v5 + 24) = v4;
  v10[4] = sub_36C08;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1822E0;
  v10[3] = &block_descriptor_383;
  v6 = _Block_copy(v10);
  v7 = v1;

  [v3 performWithoutEnforcement:v6];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_69BAA8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v6 = (a1 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID);
      swift_beginAccess();
      v7 = v6[1];
      if (v7)
      {
        v8 = *v6;
        v9 = &type metadata for String;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10[2] = 0;
      }

      v10[0] = v8;
      v10[1] = v7;
      v10[3] = v9;

      return sub_160B4(v10, a2, &qword_E11F60);
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.seasonNumber.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69DAC0;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_393;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void sub_69BD2C(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = [v7 season];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 number];

        *a2 = v11;
      }

      else
      {
      }
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.shortName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69DAC8;
  *(v3 + 24) = v2;
  v9[4] = sub_36C08;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1822E0;
  v9[3] = &block_descriptor_403_1;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t sub_69BF7C(uint64_t a1, uint64_t *a2, uint64_t a3, SEL *a4, uint64_t a5, SEL *a6)
{
  v10 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v12 = *(a1 + v10);
  if (v12)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      v15 = v12;
      v16 = [v14 *a4];
      if (v16)
      {
        v17 = v16;
        v18 = sub_AB92A0();
        v20 = v19;

LABEL_11:
        *a2 = v18;
        a2[1] = v20;
      }
    }

    else
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {
        return result;
      }

      v21 = result;
      v22 = v12;
      v23 = [v21 *a6];
      if (v23)
      {
        v24 = v23;
        v18 = sub_AB92A0();
        v20 = v25;

        goto LABEL_11;
      }
    }

    v18 = 0;
    v20 = 0;
    goto LABEL_11;
  }

  return result;
}

id sub_69C0DC(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = a1;
  a3();

  v9 = sub_AB31C0();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    sub_AB30F0(v11);
    v14 = v13;
    (*(v10 + 8))(v7, v9);
    v12 = v14;
  }

  return v12;
}

uint64_t ModelObjectBackedStoreItemMetadata.shortURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_AB31C0();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_69DB04;
  *(v6 + 24) = v5;
  v11[4] = sub_36C08;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1822E0;
  v11[3] = &block_descriptor_413_0;
  v7 = _Block_copy(v11);
  v8 = v1;

  [v4 performWithoutEnforcement:v7];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.showComposer.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69DB28;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_423;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id sub_69C554(uint64_t a1, _BYTE *a2, uint64_t a3, SEL *a4)
{
  v7 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v7))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      result = [result *a4];
      *a2 = result;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.storeID.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID);
  swift_beginAccess();
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = &type metadata for String;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    a1[2] = 0;
  }

  *a1 = v5;
  a1[1] = v4;
  a1[3] = v6;
}

uint64_t ModelObjectBackedStoreItemMetadata.isStoreRedownloadable.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69DB54;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_433;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void sub_69C88C(uint64_t a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    ObjectType = swift_getObjectType();
    v7 = swift_conformsToProtocol2();
    if (v7)
    {
      v8 = *(v7 + 16);
      v9 = v7;
      v10 = v5;
      v11 = v8(ObjectType, v9);

      *a2 = v11 & 1;
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.trackCount.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69DB5C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_443_0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id sub_69CAF0(uint64_t a1, void *a2, uint64_t a3, SEL *a4)
{
  v7 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v7))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      result = [result *a4];
      *a2 = result;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.trackNumber.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69DB88;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_453;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id sub_69CD20(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v6 = &selRef_trackNumber;
    }

    else
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {
        return result;
      }

      v6 = &selRef_episodeNumber;
    }

    result = [result *v6];
    *a2 = result;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_AB31C0();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_69DB90;
  *(v6 + 24) = v5;
  v11[4] = sub_36C08;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1822E0;
  v11[3] = &block_descriptor_463;
  v7 = _Block_copy(v11);
  v8 = v1;

  [v4 performWithoutEnforcement:v7];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_69CF8C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v11 = *(a1 + v9);
  if (v11)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v12 = result;
      v13 = v11;
      v14 = [v12 *a3];
      if (v14)
      {
        v15 = v14;
        sub_AB3150();

        v16 = 0;
        v13 = v15;
      }

      else
      {
        v16 = 1;
      }

      v17 = sub_AB31C0();
      (*(*(v17 - 8) + 56))(v8, v16, 1, v17);
      return sub_160B4(v8, a2, &qword_E0DC30);
    }
  }

  return result;
}

id sub_69D114(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_AB9260();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t ModelObjectBackedStoreItemMetadata.workName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69DBB4;
  *(v3 + 24) = v2;
  v9[4] = sub_36C08;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1822E0;
  v9[3] = &block_descriptor_473;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t sub_69D308(uint64_t a1, uint64_t *a2, uint64_t a3, SEL *a4)
{
  v7 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v9 = *(a1 + v7);
  if (v9)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v10 = result;
      v11 = v9;
      v12 = [v10 *a4];
      if (v12)
      {
        v13 = v12;
        v14 = sub_AB92A0();
        v16 = v15;
      }

      else
      {

        v14 = 0;
        v16 = 0;
      }

      *a2 = v14;
      a2[1] = v16;
    }
  }

  return result;
}

id ModelObjectBackedStoreItemMetadata.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_69D4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  *&v4[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v10 = &v4[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11.super.isa = sub_AB8FD0().super.isa;

  sub_5E41F0(a3, v9);
  v12 = sub_AB3430();
  v13 = *(v12 - 8);
  isa = 0;
  if ((*(v13 + 48))(v9, 1, v12) != 1)
  {
    isa = sub_AB3370().super.isa;
    (*(v13 + 8))(v9, v12);
  }

  v15 = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v18.receiver = v4;
  v18.super_class = v15;
  v16 = objc_msgSendSuper2(&v18, "initWithStorePlatformDictionary:parentStoreItemMetadata:expirationDate:", v11.super.isa, a2, isa);

  sub_12E1C(a3, &qword_E0FF60);
  return v16;
}

uint64_t sub_69D680()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_189(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_69DBE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MotionMode.allowsMotion.getter()
{
  v1 = v0;
  v2 = sub_AB3870();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for MotionMode.off(_:))
  {
    return 0;
  }

  if (v6 == enum case for MotionMode.wifiOnly(_:))
  {
    v8 = [objc_opt_self() sharedMonitor];
    [v8 networkType];

    return ICEnvironmentNetworkTypeIsWiFi();
  }

  else if (v6 == enum case for MotionMode.on(_:))
  {
    return 1;
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
    sub_ABAD90(24);

    v9 = 0xD00000000000001ELL;
    v10 = 0x8000000000B6FDA0;
    sub_69E14C();
    v11._countAndFlagsBits = sub_ABB330();
    sub_AB94A0(v11);

    result = sub_ABAFD0();
    __break(1u);
  }

  return result;
}

unint64_t sub_69E14C()
{
  result = qword_E11FE8;
  if (!qword_E11FE8)
  {
    sub_AB3870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11FE8);
  }

  return result;
}

id sub_69E1A4()
{
  type metadata accessor for NetworkMonitor();
  v0 = swift_allocObject();
  result = NetworkMonitor.init()();
  static NetworkMonitor.shared = v0;
  return result;
}

uint64_t NetworkMonitor.__allocating_init()()
{
  v0 = swift_allocObject();
  NetworkMonitor.init()();
  return v0;
}

uint64_t *NetworkMonitor.shared.unsafeMutableAddressor()
{
  if (qword_E0CE68 != -1)
  {
    swift_once();
  }

  return &static NetworkMonitor.shared;
}

uint64_t static NetworkMonitor.shared.getter()
{
  if (qword_E0CE68 != -1)
  {
    swift_once();
  }
}

uint64_t NetworkMonitor.isOnline.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_69E33C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_69E3BC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

uint64_t NetworkMonitor.$isOnline.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FF8);
  sub_AB54E0();
  return swift_endAccess();
}

uint64_t sub_69E4A4()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FF8);
  sub_AB54E0();
  return swift_endAccess();
}

uint64_t sub_69E51C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12B60);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FF8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

id NetworkMonitor.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FF8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - v3;
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v6 = result;
    v7 = OBJC_IVAR____TtC9MusicCore14NetworkMonitor__isOnline;
    v8 = [result hasProperNetworkConditionsToShowCloudMedia];

    LOBYTE(aBlock[0]) = v8;
    sub_AB54D0();
    (*(v2 + 32))(v0 + v7, v4, v1);
    v9 = [objc_opt_self() defaultCenter];
    v10 = MPCloudControllerHasProperNetworkConditionsToShowCloudMediaDidChangeNotification;
    v11 = [objc_opt_self() mainQueue];
    v12 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_69EA28;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_69EA30;
    aBlock[3] = &block_descriptor_190;
    v13 = _Block_copy(aBlock);

    v14 = [v9 addObserverForName:v10 object:0 queue:v11 usingBlock:v13];
    _Block_release(v13);
    swift_unknownObjectRelease();

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_69E90C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id sub_69E944()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    result = [objc_opt_self() sharedCloudController];
    if (result)
    {
      v1 = result;
      if (([result shouldProhibitMusicActionForCurrentNetworkConditions] & 1) == 0)
      {
        [v1 hasProperNetworkConditionsToShowCloudMedia];
      }

      swift_getKeyPath();
      swift_getKeyPath();
      return sub_AB5520();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_69EA30(uint64_t a1)
{
  v2 = sub_AB2BD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_AB2B90();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t block_copy_helper_190(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t NetworkMonitor.deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore14NetworkMonitor__isOnline;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FF8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NetworkMonitor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore14NetworkMonitor__isOnline;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FF8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NetworkMonitor()
{
  result = qword_E12028;
  if (!qword_E12028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_69ECAC()
{
  sub_69ED3C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_69ED3C()
{
  if (!qword_E12BD0)
  {
    v0 = sub_AB5540();
    if (!v1)
    {
      atomic_store(v0, &qword_E12BD0);
    }
  }
}

uint64_t static Notice.variant(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v209 = a2;
  v3 = sub_AB9230();
  __chkstk_darwin(v3 - 8);
  v214 = type metadata accessor for Notice.Thumbnail(0);
  v212 = *(v214 - 8);
  __chkstk_darwin(v214);
  v5 = &v202 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10D80);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v202 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v202 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E120B0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v202 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = (&v202 - v17);
  __chkstk_darwin(v16);
  v207 = (&v202 - v19);
  v20 = sub_AB35C0();
  __chkstk_darwin(v20 - 8);
  v213 = &v202 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_AB9250();
  v23 = *(v22 - 8);
  v210 = v22;
  v211 = v23;
  v24 = __chkstk_darwin(v22);
  v208 = &v202 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v202 - v26;
  v28 = type metadata accessor for Notice.Variant(0);
  __chkstk_darwin(v28);
  v30 = (&v202 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_6A2290(a1, v30, type metadata accessor for Notice.Variant);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v88 = *v30;
      v87 = v30[1];
      v89 = Notice.Variant.id.getter();
      v202 = v90;
      v203 = v89;
      if (v87)
      {
        v205 = v87;
        v206 = v88;
        v204 = 0x7265646C6F66;
        v91 = v214;
        v92 = v211;
        v93 = v212;
        v94 = v27;
        v95 = v209;
        v96 = v210;
        v97 = v208;
      }

      else
      {
        v94 = v27;
        sub_AB91E0();
        v96 = v210;
        v92 = v211;
        v97 = v208;
        (*(v211 + 16))(v208, v27, v210);
        v91 = v214;
        v93 = v212;
        if (qword_E0CB80 != -1)
        {
          swift_once();
        }

        v204 = 0x672E657261757173;
        v187 = qword_E71B20;
        sub_AB3550();
        v188 = sub_AB9320();
        v205 = v189;
        v206 = v188;
        (*(v92 + 8))(v27, v96);
        v95 = v209;
      }

      sub_AB91E0();
      (*(v92 + 16))(v97, v94, v96);
      if (qword_E0CB80 != -1)
      {
        swift_once();
      }

      v190 = qword_E71B20;
      sub_AB3550();
      v214 = sub_AB9320();
      v192 = v191;
      (*(v92 + 8))(v94, v96);
      v193 = sub_AB7550();
      v194 = v207;
      *v207 = v193;
      swift_storeEnumTagMultiPayload();
      v195 = *(v93 + 56);
      v195(v194, 0, 1, v91);
      v196 = type metadata accessor for Notice(0);
      v197 = v196[5];
      v195(v95 + v197, 1, 1, v91);
      v198 = (v95 + v196[7]);
      v183 = (v95 + v196[8]);
      v121 = v95 + v196[9];
      v122 = v95 + v196[10];
      v199 = v202;
      *v95 = v203;
      v95[1] = v199;
      result = sub_6A1DB0(v194, v95 + v197);
      v200 = (v95 + v196[6]);
      v201 = v205;
      *v200 = v206;
      v200[1] = v201;
      *v198 = v214;
      v198[1] = v192;
      goto LABEL_74;
    case 2u:
      v71 = *v30;
      v70 = v30[1];
      v72 = v30[2];
      v73 = Notice.Variant.id.getter();
      v203 = v74;
      v204 = v73;
      if (v72)
      {
        v205 = v72;
        v206 = v70;
        v76 = v210;
        v75 = v211;
        v77 = v27;
        v79 = v208;
        v78 = v209;
      }

      else
      {
        v77 = v27;
        sub_AB91E0();
        v76 = v210;
        v75 = v211;
        v79 = v208;
        (*(v211 + 16))(v208, v27, v210);
        if (qword_E0CB80 != -1)
        {
          swift_once();
        }

        v165 = qword_E71B20;
        sub_AB3550();
        v166 = sub_AB9320();
        v205 = v167;
        v206 = v166;
        (*(v75 + 8))(v27, v76);
        v78 = v209;
      }

      sub_AB9220();
      v218._countAndFlagsBits = 0;
      v218._object = 0xE000000000000000;
      sub_AB9210(v218);
      v215 = v71;
      sub_AB91F0();
      v168._object = 0x8000000000B6FE70;
      v168._countAndFlagsBits = 0xD000000000000015;
      goto LABEL_65;
    case 3u:
      v83 = *v30;
      v82 = v30[1];
      v84 = v30[2];
      v85 = Notice.Variant.id.getter();
      v203 = v86;
      v204 = v85;
      if (v84)
      {
        v205 = v84;
        v206 = v82;
        v76 = v210;
        v75 = v211;
        v77 = v27;
        v79 = v208;
        v78 = v209;
      }

      else
      {
        v77 = v27;
        sub_AB91E0();
        v76 = v210;
        v75 = v211;
        v79 = v208;
        (*(v211 + 16))(v208, v27, v210);
        if (qword_E0CB80 != -1)
        {
          swift_once();
        }

        v169 = qword_E71B20;
        sub_AB3550();
        v170 = sub_AB9320();
        v205 = v171;
        v206 = v170;
        (*(v75 + 8))(v27, v76);
        v78 = v209;
      }

      sub_AB9220();
      v219._countAndFlagsBits = 0;
      v219._object = 0xE000000000000000;
      sub_AB9210(v219);
      v215 = v83;
      sub_AB91F0();
      v168._countAndFlagsBits = 0xD000000000000013;
      v168._object = 0x8000000000B6FE50;
LABEL_65:
      sub_AB9210(v168);
      sub_AB9240();
      (*(v75 + 16))(v79, v77, v76);
      if (qword_E0CB80 != -1)
      {
        swift_once();
      }

      v172 = qword_E71B20;
      sub_AB3550();
      v173 = sub_AB9320();
      v175 = v174;
      (*(v75 + 8))(v77, v76);
      v176 = sub_AB7550();
      v177 = v207;
      *v207 = v176;
      v178 = v214;
      swift_storeEnumTagMultiPayload();
      v179 = *(v212 + 56);
      v179(v177, 0, 1, v178);
      v180 = type metadata accessor for Notice(0);
      v181 = v180[5];
      v179(v78 + v181, 1, 1, v178);
      v182 = (v78 + v180[7]);
      v183 = (v78 + v180[8]);
      v121 = v78 + v180[9];
      v122 = v78 + v180[10];
      v184 = v203;
      *v78 = v204;
      v78[1] = v184;
      result = sub_6A1DB0(v177, v78 + v181);
      v185 = (v78 + v180[6]);
      v186 = v205;
      *v185 = v206;
      v185[1] = v186;
      *v182 = v173;
      v182[1] = v175;
LABEL_74:
      *v183 = 0;
      v183[1] = 0;
      break;
    case 4u:
      v56 = *v30;
      v55 = v30[1];
      v57 = Notice.Variant.id.getter();
      v203 = v58;
      if (v55)
      {
        v205 = v55;
        v206 = v56;
        v59 = v214;
        v61 = v210;
        v60 = v211;
        v62 = v27;
      }

      else
      {
        v62 = v27;
        sub_AB91E0();
        v61 = v210;
        v60 = v211;
        (*(v211 + 16))(v208, v27, v210);
        if (qword_E0CB80 != -1)
        {
          swift_once();
        }

        v143 = qword_E71B20;
        sub_AB3550();
        v144 = sub_AB9320();
        v205 = v145;
        v206 = v144;
        (*(v60 + 8))(v27, v61);
        v59 = v214;
      }

      v146 = v209;
      v147 = qword_E0D528;

      if (v147 != -1)
      {
        swift_once();
      }

      v204 = v57;
      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        sub_AB91E0();
        (*(v60 + 16))(v208, v62, v61);
        if (qword_E0CB80 != -1)
        {
          swift_once();
        }

        v148 = qword_E71B20;
        sub_AB3550();
        v149 = sub_AB9320();
        v213 = v150;
        v214 = v149;
        (*(v60 + 8))(v62, v61);
        v152 = swift_allocObject();
        *(v152 + 16) = v56;
        *(v152 + 24) = v55;
        v151 = sub_6A1E58;
      }

      else
      {

        v151 = 0;
        v152 = 0;
        v213 = 0;
        v214 = 0;
      }

      v153 = sub_AB7550();
      v154 = v207;
      *v207 = v153;
      swift_storeEnumTagMultiPayload();
      v155 = *(v212 + 56);
      v155(v154, 0, 1, v59);
      v156 = type metadata accessor for Notice(0);
      v157 = v59;
      v158 = v156[5];
      v155(v146 + v158, 1, 1, v157);
      v159 = (v146 + v156[7]);
      v160 = (v146 + v156[8]);
      v121 = v146 + v156[9];
      v122 = v146 + v156[10];
      v161 = v203;
      *v146 = v204;
      v146[1] = v161;
      result = sub_6A1DB0(v154, v146 + v158);
      v162 = (v146 + v156[6]);
      v163 = v205;
      *v162 = v206;
      v162[1] = v163;
      v164 = v213;
      *v159 = v214;
      v159[1] = v164;
      *v160 = v151;
      v160[1] = v152;
      *v121 = 2;
      goto LABEL_37;
    case 5u:
      v100 = Notice.Variant.id.getter();
      v205 = v101;
      v206 = v100;
      v50 = v27;
      sub_AB91E0();
      v52 = v210;
      v51 = v211;
      (*(v211 + 16))(v208, v27, v210);
      if (qword_E0CB80 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 6u:
    case 7u:
    case 8u:
      v108 = Notice.Variant.id.getter();
      v205 = v109;
      v206 = v108;
      v50 = v27;
      sub_AB91E0();
      v52 = v210;
      v51 = v211;
      (*(v211 + 16))(v208, v27, v210);
      if (qword_E0CB80 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 9u:
      v68 = Notice.Variant.id.getter();
      v205 = v69;
      v206 = v68;
      v50 = v27;
      sub_AB91E0();
      v52 = v210;
      v51 = v211;
      (*(v211 + 16))(v208, v27, v210);
      if (qword_E0CB80 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 0xAu:
      v104 = Notice.Variant.id.getter();
      v205 = v105;
      v206 = v104;
      v65 = v27;
      sub_AB91E0();
      v67 = v210;
      v66 = v211;
      (*(v211 + 16))(v208, v27, v210);
      if (qword_E0CB80 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0xBu:
      v53 = Notice.Variant.id.getter();
      v205 = v54;
      v206 = v53;
      v50 = v27;
      sub_AB91E0();
      v52 = v210;
      v51 = v211;
      (*(v211 + 16))(v208, v27, v210);
      if (qword_E0CB80 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 0xCu:
      v63 = Notice.Variant.id.getter();
      v205 = v64;
      v206 = v63;
      v65 = v27;
      sub_AB91E0();
      v67 = v210;
      v66 = v211;
      (*(v211 + 16))(v208, v27, v210);
      if (qword_E0CB80 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0xDu:
      v102 = Notice.Variant.id.getter();
      v205 = v103;
      v206 = v102;
      v65 = v27;
      sub_AB91E0();
      v67 = v210;
      v66 = v211;
      (*(v211 + 16))(v208, v27, v210);
      if (qword_E0CB80 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0xEu:
      v48 = Notice.Variant.id.getter();
      v205 = v49;
      v206 = v48;
      v50 = v27;
      sub_AB91E0();
      v52 = v210;
      v51 = v211;
      (*(v211 + 16))(v208, v27, v210);
      if (qword_E0CB80 == -1)
      {
        goto LABEL_34;
      }

LABEL_75:
      swift_once();
LABEL_34:
      v110 = qword_E71B20;
      sub_AB3550();
      v45 = sub_AB9320();
      v47 = v111;
      (*(v51 + 8))(v50, v52);
      goto LABEL_35;
    case 0xFu:
      v80 = Notice.Variant.id.getter();
      v205 = v81;
      v206 = v80;
      v65 = v27;
      sub_AB91E0();
      v67 = v210;
      v66 = v211;
      (*(v211 + 16))(v208, v27, v210);
      if (qword_E0CB80 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0x10u:
      v40 = Notice.Variant.id.getter();
      v205 = v41;
      v206 = v40;
      sub_AB91E0();
      v43 = v210;
      v42 = v211;
      (*(v211 + 16))(v208, v27, v210);
      if (qword_E0CB80 != -1)
      {
        swift_once();
      }

      v44 = qword_E71B20;
      sub_AB3550();
      v45 = sub_AB9320();
      v47 = v46;
      (*(v42 + 8))(v27, v43);
      goto LABEL_35;
    case 0x11u:
      v98 = Notice.Variant.id.getter();
      v205 = v99;
      v206 = v98;
      v65 = v27;
      sub_AB91E0();
      v67 = v210;
      v66 = v211;
      (*(v211 + 16))(v208, v27, v210);
      if (qword_E0CB80 == -1)
      {
        goto LABEL_32;
      }

LABEL_81:
      swift_once();
LABEL_32:
      v106 = qword_E71B20;
      sub_AB3550();
      v45 = sub_AB9320();
      v47 = v107;
      (*(v66 + 8))(v65, v67);
LABEL_35:
      v112 = sub_AB7550();
      v113 = v207;
      *v207 = v112;
      v114 = v214;
      swift_storeEnumTagMultiPayload();
      v115 = *(v212 + 56);
      v115(v113, 0, 1, v114);
      v116 = type metadata accessor for Notice(0);
      v117 = v116[5];
      v118 = v209;
      v115(v209 + v117, 1, 1, v114);
      v119 = (v118 + v116[7]);
      v120 = (v118 + v116[8]);
      v121 = v118 + v116[9];
      v122 = v118 + v116[10];
      v123 = v205;
      *v118 = v206;
      v118[1] = v123;
      result = sub_6A1DB0(v113, v118 + v117);
      v125 = (v118 + v116[6]);
      *v125 = v45;
      v125[1] = v47;
      *v119 = 0;
      v119[1] = 0;
      *v120 = 0;
      v120[1] = 0;
      break;
    default:
      v31 = *v30;
      v206 = v30[1];
      v207 = v31;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E120B8);
      v33 = *(v32 + 48);
      v202 = *(v30 + *(v32 + 64));
      sub_6A1E60(v30 + v33, v11);
      v34 = Notice.Variant.id.getter();
      v204 = v35;
      v205 = v34;
      sub_15F84(v11, v9, &unk_E10D80);
      v36 = sub_AB8A60();
      v37 = *(v36 - 8);
      if ((*(v37 + 48))(v9, 1, v36) == 1)
      {
        sub_12E1C(v9, &unk_E10D80);
        v38 = 1;
        v39 = v214;
      }

      else
      {
        (*(v37 + 32))(v5, v9, v36);
        v39 = v214;
        swift_storeEnumTagMultiPayload();
        sub_6A1ED0(v5, v15);
        v38 = 0;
      }

      v126 = v212;
      v127 = *(v212 + 56);
      v127(v15, v38, 1, v39);
      v212 = *(v126 + 48);
      v128 = (v212)(v15, 1, v39);
      v203 = v127;
      if (v128 == 1)
      {
        *v18 = sub_AB7550();
        swift_storeEnumTagMultiPayload();
        v127(v18, 0, 1, v39);
        if ((v212)(v15, 1, v39) != 1)
        {
          sub_12E1C(v15, &qword_E120B0);
        }
      }

      else
      {
        sub_6A1ED0(v15, v18);
        v127(v18, 0, 1, v39);
      }

      sub_AB9220();
      v216._countAndFlagsBits = 0;
      v216._object = 0xE000000000000000;
      sub_AB9210(v216);
      v215 = v202;
      sub_AB91F0();
      v217._countAndFlagsBits = 0x297328676E6F7320;
      v217._object = 0xEE00646564646120;
      sub_AB9210(v217);
      sub_AB9240();
      v130 = v210;
      v129 = v211;
      (*(v211 + 16))(v208, v27, v210);
      if (qword_E0CB80 != -1)
      {
        swift_once();
      }

      v131 = qword_E71B20;
      sub_AB3550();
      v132 = sub_AB9320();
      v134 = v133;
      (*(v129 + 8))(v27, v130);
      sub_12E1C(v11, &unk_E10D80);
      v135 = type metadata accessor for Notice(0);
      v136 = v135[5];
      v137 = v209;
      v203(v209 + v136, 1, 1, v214);
      v138 = (v137 + v135[7]);
      v139 = (v137 + v135[8]);
      v121 = v137 + v135[9];
      v122 = v137 + v135[10];
      v140 = v204;
      *v137 = v205;
      v137[1] = v140;
      result = sub_6A1DB0(v18, v137 + v136);
      v141 = (v137 + v135[6]);
      v142 = v206;
      *v141 = v207;
      v141[1] = v142;
      *v138 = v132;
      v138[1] = v134;
      *v139 = 0;
      v139[1] = 0;
      break;
  }

  *v121 = 0;
LABEL_37:
  v121[8] = 0;
  *v122 = 1;
  return result;
}

uint64_t Notice.thumbnail.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Notice(0) + 20);

  return sub_6A1DB0(a1, v3);
}

uint64_t Notice.message.getter()
{
  v1 = *(v0 + *(type metadata accessor for Notice(0) + 24));

  return v1;
}

uint64_t Notice.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Notice(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Notice.headnote.getter()
{
  v1 = *(v0 + *(type metadata accessor for Notice(0) + 28));

  return v1;
}

uint64_t Notice.headnote.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Notice(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Notice.link.getter()
{
  v1 = *(v0 + *(type metadata accessor for Notice(0) + 32));
  sub_307CC(v1);
  return v1;
}

uint64_t Notice.link.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Notice(0) + 32));
  result = sub_17654(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Notice.hapticFeedback.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for Notice(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t Notice.isDismissable.setter(char a1)
{
  result = type metadata accessor for Notice(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t Notice.init(id:image:message:headnote:link:hapticFeedback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v39 = a7;
  v40 = a8;
  v37 = a5;
  v38 = a6;
  v36 = a12;
  v34 = a11;
  v35 = a4;
  v33 = a10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E120B0);
  __chkstk_darwin(v16 - 8);
  v18 = &v33 - v17;
  *(&v33 - v17) = a3;
  v19 = type metadata accessor for Notice.Thumbnail(0);
  swift_storeEnumTagMultiPayload();
  v20 = *(*(v19 - 8) + 56);
  v20(v18, 0, 1, v19);
  v21 = type metadata accessor for Notice(0);
  v22 = v21[5];
  v20(&a9[v22], 1, 1, v19);
  v23 = &a9[v21[7]];
  v24 = &a9[v21[8]];
  v25 = v21[10];
  v26 = &a9[v21[9]];
  *a9 = a1;
  *(a9 + 1) = a2;
  result = sub_6A1DB0(v18, &a9[v22]);
  v28 = &a9[v21[6]];
  v29 = v37;
  *v28 = v35;
  *(v28 + 1) = v29;
  v30 = v39;
  *v23 = v38;
  *(v23 + 1) = v30;
  v32 = v33;
  v31 = v34;
  *v24 = v40;
  *(v24 + 1) = v32;
  *v26 = v31;
  v26[8] = v36 & 1;
  a9[v25] = 1;
  return result;
}

uint64_t Notice.init(id:thumbnail:message:headnote:link:hapticFeedback:isDismissable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, char a12, char a13)
{
  v17 = type metadata accessor for Notice(0);
  v18 = v17[5];
  v19 = type metadata accessor for Notice.Thumbnail(0);
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  v20 = &a9[v17[7]];
  v21 = &a9[v17[8]];
  v22 = v17[10];
  v23 = &a9[v17[9]];
  *a9 = a1;
  *(a9 + 1) = a2;
  result = sub_6A1DB0(a3, &a9[v18]);
  v25 = &a9[v17[6]];
  *v25 = a4;
  *(v25 + 1) = a5;
  *v20 = a6;
  *(v20 + 1) = a7;
  *v21 = a8;
  *(v21 + 1) = a10;
  *v23 = a11;
  v23[8] = a12 & 1;
  a9[v22] = a13;
  return result;
}