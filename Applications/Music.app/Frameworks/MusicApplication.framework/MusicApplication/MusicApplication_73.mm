uint64_t _s9MusicCore7LibraryO19ContentFilterOptionO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D1BF00;
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

uint64_t type metadata accessor for Library.Context()
{
  result = qword_E11C88;
  if (!qword_E11C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_67A92C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Library.Context();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_67A990()
{
  result = qword_E11C10;
  if (!qword_E11C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11C10);
  }

  return result;
}

uint64_t sub_67A9E4(uint64_t a1)
{
  v2 = type metadata accessor for Library.Context();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_67AA88()
{
  result = qword_E11C18;
  if (!qword_E11C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11C18);
  }

  return result;
}

unint64_t sub_67AAE0()
{
  result = qword_E11C20;
  if (!qword_E11C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11C20);
  }

  return result;
}

uint64_t sub_67ABB0(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC98);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_17:
    v17 = *(v10 + 48);

    return v17(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F570);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_17;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11BB8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_17;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11BC0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[8];
    goto LABEL_17;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10B00);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[9];
    goto LABEL_17;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F6C8);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a3[10];
    goto LABEL_17;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F698);
  v19 = *(*(v18 - 8) + 48);
  v20 = &a1[a3[11]];

  return v19(v20, a2, v18);
}

char *sub_67AEA4(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC98);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_15:
    v17 = *(v10 + 56);

    return v17(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F570);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_15;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11BB8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_15;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11BC0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[8];
    goto LABEL_15;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10B00);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[9];
    goto LABEL_15;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F6C8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[10];
    goto LABEL_15;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F698);
  v19 = *(*(v18 - 8) + 56);
  v20 = &v5[a4[11]];

  return v19(v20, a2, a2, v18);
}

void sub_67B184()
{
  sub_AB8510();
  if (v0 <= 0x3F)
  {
    sub_67B4D8(319, &qword_E11C98, &type metadata accessor for Album, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_67B4D8(319, &qword_E11CA0, &type metadata accessor for Artist, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_67B4D8(319, &qword_E11CA8, &type metadata accessor for Composer, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_67B4D8(319, &qword_E11CB0, &type metadata accessor for Genre, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_67B4D8(319, &qword_E11CB8, &type metadata accessor for Playlist, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_67B4D8(319, &qword_E11CC0, &type metadata accessor for TVShow, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_67B4D8(319, &qword_E11CC8, &type metadata accessor for TVSeason, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
                {
                  sub_48C430(319, &qword_E11CD0);
                  if (v8 <= 0x3F)
                  {
                    sub_48C430(319, &qword_E11CD8);
                    if (v9 <= 0x3F)
                    {
                      sub_48C430(319, &qword_E15330);
                      if (v10 <= 0x3F)
                      {
                        sub_67B4D8(319, &unk_E11CE0, &type metadata accessor for Playlist.Variant, &type metadata accessor for Array);
                        if (v11 <= 0x3F)
                        {
                          sub_48C430(319, &unk_E0FDE0);
                          if (v12 <= 0x3F)
                          {
                            swift_cvw_initStructMetadataWithLayoutString();
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
  }
}

void sub_67B4D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_67B54C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11D40);
  sub_AB5D50();
  sub_67B5C4();
  return swift_getWitnessTable();
}

unint64_t sub_67B5C4()
{
  result = qword_E11D48;
  if (!qword_E11D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11D48);
  }

  return result;
}

unint64_t sub_67B638()
{
  result = qword_E11D50;
  if (!qword_E11D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11D50);
  }

  return result;
}

uint64_t sub_67B68C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_67B6D8(uint64_t a1, char **a2)
{
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = *(*(a1 + 48) + (__clz(__rbit64(v8)) | (v12 << 6)));
      result = sub_681154(&v13, a2);
      if (v2)
      {
      }

      v8 &= v8 - 1;
      v11 = v12;
      if (!v8)
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
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

BOOL sub_67B7C4(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = ActionType.rawValue.getter(*v4);
    v9 = v8;
    if (v7 == ActionType.rawValue.getter(a1) && v9 == v10)
    {

      return v5 != 0;
    }

    v12 = sub_ABB3C0();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

BOOL sub_67B888(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v6 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v8 = 0xD000000000000029;
    v9 = "LibraryView.Playlists";
    switch(*v4)
    {
      case 1:
        v8 = 0xD000000000000025;
        v9 = "LibraryView.Artists";
        break;
      case 2:
        v8 = 0xD000000000000023;
        v9 = "LibraryView.Albums";
        break;
      case 3:
        v8 = 0xD000000000000022;
        v9 = "LibraryView.Songs";
        break;
      case 4:
        v8 = 0xD000000000000021;
        v9 = "LibraryView.MadeForYou";
        break;
      case 5:
        v8 = 0xD000000000000026;
        v9 = "LibraryView.MusicVideos";
        break;
      case 6:
        v8 = 0xD000000000000027;
        v9 = "LibraryView.Genres";
        break;
      case 7:
        v8 = 0xD000000000000022;
        v9 = "LibraryView.Compilations";
        break;
      case 8:
        v8 = 0xD000000000000028;
        v9 = "LibraryView.Composers";
        break;
      case 9:
        v8 = 0xD000000000000025;
        v9 = "LibraryView.Shows";
        break;
      case 0xA:
        v8 = 0xD000000000000021;
        v9 = "LibraryView.Downloaded";
        break;
      case 0xB:
        v8 = 0xD000000000000026;
        v9 = "LibraryView.Downloading";
        break;
      case 0xC:
        v8 = 0xD000000000000027;
        v9 = "ByPlaylistOrderAscending";
        break;
      default:
        break;
    }

    v10 = v9 | 0x8000000000000000;
    v11 = 0xD000000000000029;
    v12 = "LibraryView.Playlists";
    switch(a1)
    {
      case 1:
        v11 = 0xD000000000000025;
        v12 = "LibraryView.Artists";
        break;
      case 2:
        v11 = 0xD000000000000023;
        v12 = "LibraryView.Albums";
        break;
      case 3:
        v11 = 0xD000000000000022;
        v12 = "LibraryView.Songs";
        break;
      case 4:
        v11 = 0xD000000000000021;
        v12 = "LibraryView.MadeForYou";
        break;
      case 5:
        v11 = 0xD000000000000026;
        v12 = "LibraryView.MusicVideos";
        break;
      case 6:
        v11 = 0xD000000000000027;
        v12 = "LibraryView.Genres";
        break;
      case 7:
        v11 = 0xD000000000000022;
        v12 = "LibraryView.Compilations";
        break;
      case 8:
        v11 = 0xD000000000000028;
        v12 = "LibraryView.Composers";
        break;
      case 9:
        v11 = 0xD000000000000025;
        v12 = "LibraryView.Shows";
        break;
      case 10:
        v11 = 0xD000000000000021;
        v12 = "LibraryView.Downloaded";
        break;
      case 11:
        v11 = 0xD000000000000026;
        v12 = "LibraryView.Downloading";
        break;
      case 12:
        v11 = 0xD000000000000027;
        v12 = "ByPlaylistOrderAscending";
        break;
      default:
        break;
    }

    if (v8 == v11 && v10 == (v12 | 0x8000000000000000))
    {

      return v6 != 0;
    }

    v5 = sub_ABB3C0();

    ++v4;
  }

  while ((v5 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_67BBE8(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v3 = a1;
  if (*(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v24 = a1 + 56;
    v5 = 1 << *(a1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a1 + 56);
    v8 = (v5 + 63) >> 6;
    v28 = a2 + 56;
    v25 = v8;
    if (v7)
    {
      do
      {
        v9 = __clz(__rbit64(v7));
        v27 = (v7 - 1) & v7;
LABEL_13:
        v12 = *(*(v3 + 48) + (v9 | (v4 << 6)));
        sub_ABB5C0();
        Library.Menu.Identifier.rawValue.getter(v12);
        sub_AB93F0();

        v13 = sub_ABB610();
        v14 = -1 << *(a2 + 32);
        v15 = v13 & ~v14;
        if (((*(v28 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          return 0;
        }

        v16 = ~v14;
        while (1)
        {
          v17 = 0xD000000000000029;
          v18 = "LibraryView.Playlists";
          switch(*(*(a2 + 48) + v15))
          {
            case 1:
              v17 = 0xD000000000000025;
              v18 = "LibraryView.Artists";
              break;
            case 2:
              v17 = 0xD000000000000023;
              v18 = "LibraryView.Albums";
              break;
            case 3:
              v17 = 0xD000000000000022;
              v18 = "LibraryView.Songs";
              break;
            case 4:
              v17 = 0xD000000000000021;
              v18 = "LibraryView.MadeForYou";
              break;
            case 5:
              v17 = 0xD000000000000026;
              v18 = "LibraryView.MusicVideos";
              break;
            case 6:
              v17 = 0xD000000000000027;
              v18 = "LibraryView.Genres";
              break;
            case 7:
              v17 = 0xD000000000000022;
              v18 = "LibraryView.Compilations";
              break;
            case 8:
              v17 = 0xD000000000000028;
              v18 = "LibraryView.Composers";
              break;
            case 9:
              v17 = 0xD000000000000025;
              v18 = "LibraryView.Shows";
              break;
            case 0xA:
              v17 = 0xD000000000000021;
              v18 = "LibraryView.Downloaded";
              break;
            case 0xB:
              v17 = 0xD000000000000026;
              v18 = "LibraryView.Downloading";
              break;
            case 0xC:
              v17 = 0xD000000000000027;
              v18 = "ByPlaylistOrderAscending";
              break;
            default:
              break;
          }

          v19 = v18 | 0x8000000000000000;
          v20 = 0xD000000000000029;
          v21 = "LibraryView.Playlists";
          switch(v12)
          {
            case 1:
              v20 = 0xD000000000000025;
              v21 = "LibraryView.Artists";
              break;
            case 2:
              v20 = 0xD000000000000023;
              v21 = "LibraryView.Albums";
              break;
            case 3:
              v20 = 0xD000000000000022;
              v21 = "LibraryView.Songs";
              break;
            case 4:
              v20 = 0xD000000000000021;
              v21 = "LibraryView.MadeForYou";
              break;
            case 5:
              v20 = 0xD000000000000026;
              v21 = "LibraryView.MusicVideos";
              break;
            case 6:
              v20 = 0xD000000000000027;
              v21 = "LibraryView.Genres";
              break;
            case 7:
              v20 = 0xD000000000000022;
              v21 = "LibraryView.Compilations";
              break;
            case 8:
              v20 = 0xD000000000000028;
              v21 = "LibraryView.Composers";
              break;
            case 9:
              v20 = 0xD000000000000025;
              v21 = "LibraryView.Shows";
              break;
            case 10:
              v20 = 0xD000000000000021;
              v21 = "LibraryView.Downloaded";
              break;
            case 11:
              v20 = 0xD000000000000026;
              v21 = "LibraryView.Downloading";
              break;
            case 12:
              v20 = 0xD000000000000027;
              v21 = "ByPlaylistOrderAscending";
              break;
            default:
              break;
          }

          if (v17 == v20 && v19 == (v21 | 0x8000000000000000))
          {
            break;
          }

          v22 = sub_ABB3C0();

          if (v22)
          {
            goto LABEL_47;
          }

          v15 = (v15 + 1) & v16;
          if (((*(v28 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
          {
            return 0;
          }
        }

LABEL_47:
        v8 = v25;
        v3 = a1;
        v7 = v27;
      }

      while (v27);
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        JUMPOUT(0x67C02CLL);
      }

      if (v4 >= v8)
      {
        return 1;
      }

      v11 = *(v24 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v27 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }
  }

  return 0;
}

uint64_t sub_67C094(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v35 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v36 = v8;
  v37 = result;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v38 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_ABB5C0();
    ApplicationCapabilities.Service.rawValue.getter(v13);
    sub_AB93F0();

    v14 = sub_ABB610();
    v15 = -1 << *(a2 + 32);
    v16 = v14 & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (1)
    {
      v18 = *(*(a2 + 48) + v16);
      if (v18 <= 4)
      {
        v21 = 0x6C6169636F73;
        if (v18 != 3)
        {
          v21 = 0x6F69646172;
        }

        v22 = 0xE600000000000000;
        if (v18 != 3)
        {
          v22 = 0xE500000000000000;
        }

        if (v18 == 2)
        {
          v21 = 0xD000000000000013;
          v22 = 0x8000000000B5B970;
        }

        v23 = 0x646956636973756DLL;
        if (!*(*(a2 + 48) + v16))
        {
          v23 = 0x636973756DLL;
        }

        v24 = 0xEB00000000736F65;
        if (!*(*(a2 + 48) + v16))
        {
          v24 = 0xE500000000000000;
        }

        if (*(*(a2 + 48) + v16) <= 1u)
        {
          v19 = v23;
        }

        else
        {
          v19 = v21;
        }

        if (*(*(a2 + 48) + v16) <= 1u)
        {
          v20 = v24;
        }

        else
        {
          v20 = v22;
        }
      }

      else if (*(*(a2 + 48) + v16) > 7u)
      {
        if (v18 == 8)
        {
          v19 = 0xD000000000000013;
          v20 = 0x8000000000B5B9B0;
        }

        else if (v18 == 9)
        {
          v19 = 0xD000000000000011;
          v20 = 0x8000000000B5B990;
        }

        else
        {
          v19 = 0x6C62616E45696C6DLL;
          v20 = 0xEA00000000006465;
        }
      }

      else if (v18 == 5)
      {
        v20 = 0xE600000000000000;
        v19 = 0x73656E757469;
      }

      else
      {
        if (v18 == 6)
        {
          v19 = 0x74634170756F7267;
        }

        else
        {
          v19 = 0x746963696C707865;
        }

        if (v18 == 6)
        {
          v20 = 0xED00007974697669;
        }

        else
        {
          v20 = 0xEF746E65746E6F43;
        }
      }

      if (v13 > 4)
      {
        v25 = 0xD000000000000011;
        if (v13 != 9)
        {
          v25 = 0x6C62616E45696C6DLL;
        }

        v26 = 0xEA00000000006465;
        if (v13 == 9)
        {
          v26 = 0x8000000000B5B990;
        }

        if (v13 == 8)
        {
          v25 = 0xD000000000000013;
          v26 = 0x8000000000B5B9B0;
        }

        v27 = 0x746963696C707865;
        if (v13 == 6)
        {
          v27 = 0x74634170756F7267;
        }

        v28 = 0xEF746E65746E6F43;
        if (v13 == 6)
        {
          v28 = 0xED00007974697669;
        }

        if (v13 == 5)
        {
          v27 = 0x73656E757469;
          v28 = 0xE600000000000000;
        }

        if (v13 <= 7)
        {
          v29 = v27;
        }

        else
        {
          v29 = v25;
        }

        if (v13 <= 7)
        {
          v30 = v28;
        }

        else
        {
          v30 = v26;
        }

        if (v19 == v29)
        {
          goto LABEL_83;
        }

        goto LABEL_84;
      }

      if (v13 <= 1)
      {
        break;
      }

      v31 = 0x6C6169636F73;
      if (v13 != 3)
      {
        v31 = 0x6F69646172;
      }

      v32 = 0xE500000000000000;
      if (v13 == 3)
      {
        v32 = 0xE600000000000000;
      }

      if (v13 == 2)
      {
        v33 = 0xD000000000000013;
      }

      else
      {
        v33 = v31;
      }

      if (v13 == 2)
      {
        v30 = 0x8000000000B5B970;
      }

      else
      {
        v30 = v32;
      }

      if (v19 == v33)
      {
        goto LABEL_83;
      }

LABEL_84:
      v34 = sub_ABB3C0();

      if (v34)
      {
        goto LABEL_89;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }

    if (!v13)
    {
      v30 = 0xE500000000000000;
      if (v19 == 0x636973756DLL)
      {
        goto LABEL_83;
      }

      goto LABEL_84;
    }

    v30 = 0xEB00000000736F65;
    if (v19 != 0x646956636973756DLL)
    {
      goto LABEL_84;
    }

LABEL_83:
    if (v20 != v30)
    {
      goto LABEL_84;
    }

LABEL_89:
    v8 = v36;
    v3 = v37;
    v7 = v38;
  }

  while (v38);
LABEL_8:
  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v35 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v38 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t Library.Menu.setSelectionState(_:for:)(char a1, Swift::Int a2)
{
  if (a1)
  {
    sub_613C30(a2);
  }

  else
  {
    sub_6836B0(&v4, a2);
  }

  return a1 & 1;
}

uint64_t Library.Menu.move(_:to:)(char a1, unint64_t a2)
{
  v4 = a1;
  v5 = *v2;
  v6 = sub_61A160(a1, *v2);
  if (v7)
  {
    v9 = v2[2];
    v8 = v2[3];
    v10 = v2[4];
LABEL_5:
    v14 = v2[5];
    sub_683DF4();
    swift_allocError();
    *v15 = v9;
    *(v15 + 8) = v8;
    *(v15 + 16) = v10;
    *(v15 + 24) = v14;
    *(v15 + 32) = v4;

    return swift_willThrow();
  }

  v11 = v6;
  v10 = v2[4];
  result = sub_61A160(v4, v10);
  if (v13)
  {
    v9 = v2[2];
    v8 = v2[3];
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(v5 + 16) <= a2)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = result;
  v17 = *(v5 + a2 + 32);
  v18 = sub_61A160(v17, v10);
  if (v19)
  {
    v9 = v2[2];
    v8 = v2[3];
    v4 = v17 | 0x80;
    goto LABEL_5;
  }

  v20 = v18;
  result = sub_5208E8(v11);
  if (*(*v2 + 16) < a2)
  {
    goto LABEL_16;
  }

  sub_5284D4(a2, a2, result);
  result = sub_5208E8(v16);
  if (*(v2[4] + 16) < v20)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((v20 & 0x8000000000000000) == 0)
  {
    return sub_5284D4(v20, v20, result);
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Library.Menu.persist()()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  NSUserDefaults.libraryMenuRevision.setter(v1, v2, v3);
}

uint64_t NSUserDefaults.libraryMenuRevision.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_AB2B00();
  swift_allocObject();
  sub_AB2AF0();
  v9[2] = a3;
  sub_683E48();
  v4 = sub_AB2AE0();
  v6 = v5;

  v9[3] = &type metadata for Data;
  v9[0] = v4;
  v9[1] = v6;
  v8[0] = 0x4D7972617262694CLL;
  v8[1] = 0xEB00000000756E65;
  sub_90090(v4, v6);
  sub_4FD6CC();
  NSUserDefaults.subscript.setter(v9, v8, &type metadata for String);
  return sub_466B8(v4, v6);
}

uint64_t Library.Menu.revision.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t static Library.Menu.Request.label.getter()
{
  swift_beginAccess();
  v0 = *static Library.Menu.Request.label;

  return v0;
}

uint64_t static Library.Menu.Request.label.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *static Library.Menu.Request.label = a1;
  *&static Library.Menu.Request.label[8] = a2;
}

id Library.Menu.Request.init()@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() deviceMediaLibrary];
  if (result)
  {
    *a1 = result;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = &_swiftEmptySetSingleton;
    *(a1 + 40) = 257;
    *(a1 + 42) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static Library.Menu.Request.with(_:)@<X0>(uint64_t (*a1)(__int128 *)@<X0>, _OWORD *a2@<X8>)
{
  result = [objc_opt_self() deviceMediaLibrary];
  if (result)
  {
    *&v7 = result;
    BYTE8(v7) = 0;
    v8 = 0uLL;
    *&v9 = &_swiftEmptySetSingleton;
    WORD4(v9) = 257;
    BYTE10(v9) = 0;
    v10 = 0u;
    v11 = 0u;
    result = a1(&v7);
    v5 = v10;
    a2[2] = v9;
    a2[3] = v5;
    a2[4] = v11;
    v6 = v8;
    *a2 = v7;
    a2[1] = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void Library.Menu.Request.MediaLibrarySource.init(_:)()
{
  ;
}

{
  ;
}

uint64_t static Library.Menu.Request.MediaLibrarySource.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      sub_13C80(0, &qword_E112E0);
      v4 = sub_ABA790();
      return v4 & 1;
    }

    return 0;
  }

  if ((a4 & 1) == 0)
  {
    return 0;
  }

  sub_AB8510();
  v4 = sub_AB8340();
  return v4 & 1;
}

uint64_t sub_67CDDC(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      sub_13C80(0, &qword_E112E0);
      v2 = sub_ABA790();
      return v2 & 1;
    }

    return 0;
  }

  if ((*(a2 + 8) & 1) == 0)
  {
    return 0;
  }

  sub_AB8510();
  v2 = sub_AB8340();
  return v2 & 1;
}

void *Library.Menu.Request.librarySource.getter()
{
  v1 = *v0;
  sub_683E9C(*v0, *(v0 + 8));
  return v1;
}

void Library.Menu.Request.librarySource.setter(uint64_t a1, char a2)
{
  sub_1F3358(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

uint64_t Library.Menu.Request.excludedIdentifiers.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Library.Menu.Request.editingRevision.getter()
{
  v1 = *(v0 + 48);
  sub_683EA8(v1);
  return v1;
}

uint64_t Library.Menu.Request.editingRevision.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_683F08(v4[6]);
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
  return result;
}

uint64_t Library.Menu.Request.perform(_:_:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v61 = a1;
  v7 = sub_AB7C20();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_AB7C10();
  __chkstk_darwin(v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  if (v4[1])
  {
    v15 = sub_AB8100();
  }

  else
  {
    v15 = v14;
  }

  v51 = v4[2];
  v52 = v15;
  v16 = swift_allocObject();
  v17 = v4[3];
  v59 = v7;
  v60 = a3;
  v57 = v10;
  v58 = v8;
  v56 = v13;
  v53 = v11;
  v54 = a2;
  if (v17)
  {
    v18 = 1;
    v19 = 1;
  }

  else
  {
    v18 = 0;
    v19 = *(v4 + 42);
  }

  v55 = v16;
  *(v16 + 16) = v18;
  v62 = swift_allocObject();
  *(v62 + 16) = v19;
  v20 = v4[4];
  v21 = *(v4 + 40);
  v22 = objc_opt_self();

  v23 = [v22 standardUserDefaults];
  v24 = swift_allocObject();
  v26 = v4[6];
  v25 = v4[7];
  v28 = v4[8];
  v27 = v4[9];
  v50 = v25;
  if (v26)
  {
    v29 = v26;
    v30 = v25;
    v31 = v28;
    v32 = v27;
  }

  else
  {
    v29 = NSUserDefaults.libraryMenuRevision.getter();
  }

  v24[2] = v29;
  v24[3] = v30;
  v24[4] = v31;
  v24[5] = v32;
  if (*(v4 + 41))
  {
    v33 = v31;
  }

  else
  {
    v33 = v29;
  }

  v34 = swift_allocObject();
  *(v34 + 16) = v24;
  *(v34 + 24) = v23;
  *(v34 + 32) = v17;
  *(v34 + 40) = v33;
  v35 = v17;
  v36 = v51;
  v37 = v52;
  *(v34 + 48) = v52;
  *(v34 + 56) = v36;
  *(v34 + 64) = v20;
  *(v34 + 72) = v21;
  v39 = v54;
  v38 = v55;
  *(v34 + 80) = v62;
  *(v34 + 88) = v38;
  *(v34 + 96) = v61;
  *(v34 + 104) = v39;
  aBlock[4] = sub_684040;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_188;
  v51 = _Block_copy(aBlock);
  v63 = _swiftEmptyArrayStorage;
  sub_683EA8(v26);
  sub_68D6D4(&qword_E13D90, &type metadata accessor for DispatchWorkItemFlags);

  v61 = v23;
  v40 = v35;
  v41 = v37;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11A50);
  sub_36A00(&qword_E13DA0, &unk_E11A50);
  sub_ABABB0();
  v42 = sub_AB7CB0();
  swift_allocObject();
  v43 = sub_AB7C90();

  sub_13C80(0, &qword_E103C0);
  v45 = v57;
  v44 = v58;
  v46 = v59;
  (*(v58 + 104))(v57, enum case for DispatchQoS.QoSClass.userInteractive(_:), v59);
  v47 = sub_ABA190();
  (*(v44 + 8))(v45, v46);
  sub_ABA170();

  v48 = v60;
  v60[3] = v42;
  v48[4] = &protocol witness table for DispatchWorkItem;

  *v48 = v43;
}

uint64_t NSUserDefaults.libraryMenuRevision.getter()
{
  sub_681C44();
  v8 = 0x4D7972617262694CLL;
  v9 = 0xEB00000000756E65;
  sub_4FD6CC();
  NSUserDefaults.subscript.getter(&v8, &v10);
  if (v11)
  {
    if (swift_dynamicCast())
    {
      v0 = v8;
      v1 = v9;
      sub_AB2AD0();
      swift_allocObject();
      sub_AB2AC0();
      sub_68409C();
      sub_AB2AB0();
      sub_466B8(v0, v1);

      return v10;
    }
  }

  else
  {
    sub_12E1C(&v10, &qword_E11F60);
  }

  if (qword_E0CE28 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  __swift_project_value_buffer(v2, static Logger.libraryMenu);
  v3 = sub_AB4BA0();
  v4 = sub_AB9F50();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "No edits found — Returning stock menu revision", v5, 2u);
  }

  if (qword_E0CE20 != -1)
  {
    swift_once();
  }

  v6 = static Library.Menu.Revision.Version.current;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  return v6;
}

uint64_t sub_67D928(uint64_t *a1, void *a2, void *a3, void *a4, char *a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, void (*a11)(__int128 *, uint64_t, uint64_t))
{
  if (qword_E0CE20 != -1)
  {
    goto LABEL_150;
  }

  while (1)
  {
    v15 = static Library.Menu.Revision.Version.current;
    v14 = unk_E71F30;
    swift_beginAccess();
    v16 = a1[3];
    v111 = a7;
    if (sub_5D47CC(a1[2], v15) & 1) != 0 && (sub_67BBE8(v16, v14))
    {
      break;
    }

    sub_6801C4(v15, v14);
    swift_endAccess();
    swift_beginAccess();
    v17 = a1[2];
    v18 = a1[3];
    v19 = a1[4];

    NSUserDefaults.libraryMenuRevision.setter(v17, v18, v19);
    v108 = a1;
    if (a3)
    {
      goto LABEL_9;
    }

LABEL_6:
    a3 = a4;
    v20 = a4[2];
    if (!v20)
    {
      v112 = 0;
      goto LABEL_68;
    }

    v21 = 0;
    v112 = 0;
    v22 = a4 + 4;
LABEL_39:
    v31 = v21;
    while (v31 < v20)
    {
      v21 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_149;
      }

      v32 = *(v22 + v31);
      if (v32 <= 4)
      {
        if (*(v22 + v31) <= 1u)
        {
          if (*(v22 + v31))
          {
            v33 = v112 | 0xC0;
          }

          else
          {
            v33 = v112 | 0x41;
          }

LABEL_38:
          v112 = v33;
          if (v21 == v20)
          {
            goto LABEL_68;
          }

          goto LABEL_39;
        }

        switch(v32)
        {
          case 2u:
            v33 = v112 | 2;
            goto LABEL_38;
          case 3u:
            v33 = v112 | 1;
            goto LABEL_38;
          case 4u:
            v33 = v112 | 0x80;
            goto LABEL_38;
        }
      }

      else if (*(v22 + v31) > 7u)
      {
        switch(v32)
        {
          case 8u:
            v33 = v112 | 4;
            goto LABEL_38;
          case 9u:
            v33 = v112 | 8;
            goto LABEL_38;
          case 0xAu:
            v33 = v112 | 0x300;
            goto LABEL_38;
        }
      }

      else
      {
        switch(v32)
        {
          case 5u:
            v33 = v112 | 0x400;
            goto LABEL_38;
          case 6u:
            v33 = v112 | 0x20;
            goto LABEL_38;
          case 7u:
            v33 = v112 | 0x10;
            goto LABEL_38;
        }
      }

      ++v31;
      if (v21 == v20)
      {
        goto LABEL_68;
      }
    }

LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    swift_once();
  }

  swift_endAccess();
  v108 = a1;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_9:
  v101 = a3;
  MPMediaPickerConfiguration.musicTypeIdentifiers.getter();
  a7 = 0;
  v24 = *(v23 + 16);
  a1 = 0x8000000000B6E6D0;
  v112 = 0;
  v106 = v23 + 40;
LABEL_12:
  v26 = (v106 + 16 * a7);
  a3 = a7;
  while (v24 != a3)
  {
    if (a3 >= v24)
    {
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    a7 = a3 + 1;
    if (__OFADD__(a3, 1))
    {
      goto LABEL_147;
    }

    v28 = *(v26 - 1);
    v27 = *v26;
    v29 = v28 == 0xD000000000000014 && 0x8000000000B4ED60 == v27;
    if (v29 || (sub_ABB3C0() & 1) != 0)
    {
      v25 = 1247;
LABEL_11:
      v112 |= v25;
      goto LABEL_12;
    }

    if (v28 == 0xD00000000000001BLL && 0x8000000000B6E6D0 == v27 || (sub_ABB3C0() & 1) != 0)
    {
      v25 = 32;
      goto LABEL_11;
    }

    if (v28 == 0xD00000000000001ALL && 0x8000000000B6F8E0 == v27 || (sub_ABB3C0() & 1) != 0)
    {
      v25 = 256;
      goto LABEL_11;
    }

    if (v28 != 0xD000000000000015 || 0x8000000000B4ED00 != v27)
    {
      a3 = (a3 + 1);
      v26 += 2;
      if ((sub_ABB3C0() & 1) == 0)
      {
        continue;
      }
    }

    v25 = 512;
    goto LABEL_11;
  }

  a7 = v111;
  if ([v101 selectionMode] == &dword_0 + 2)
  {

    a1 = v108;
    a3 = a4;
  }

  else
  {
    v30 = [v101 selectionMode];

    v29 = v30 == &dword_0 + 3;
    a1 = v108;
    a3 = a4;
    if (!v29)
    {
      goto LABEL_68;
    }
  }

  v112 &= 0xFFFFFFFFFFFFFC5FLL;
LABEL_68:
  v107 = [a5 filterAvailableContentGroups:v112 withOptions:{a6, v99}];
  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v125[4] = v121;
  v125[5] = v122;
  v125[6] = v123;
  v125[7] = v124;
  v125[0] = v117;
  v125[1] = v118;
  v125[2] = v119;
  v125[3] = v120;
  LODWORD(a4) = BYTE2(v117);
  if (v123 == 2)
  {
    v102 = 1;
  }

  else
  {
    v102 = sub_ABB3C0();
  }

  v34 = a3[2];

  v113 = a5;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  if (!v34)
  {
    a5 = _swiftEmptyArrayStorage;
    goto LABEL_133;
  }

  v35 = 0;
  a3 += 4;
  LODWORD(v99) = (v107 & 0x300) != 0;
  HIDWORD(v99) = (v107 & 0xC0) != 0;
  a5 = _swiftEmptyArrayStorage;
  while (2)
  {
    a1 = v35;
    while (2)
    {
      if (a1 >= v34)
      {
        __break(1u);
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      v35 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        goto LABEL_145;
      }

      v36 = *(a1 + a3);
      if (sub_5E9960(*(a1 + a3), a7))
      {
        goto LABEL_77;
      }

      if (a8)
      {
        v37 = v108[5];

        v38 = sub_5E9960(v36, v37);

        if (v36 != 5)
        {
          goto LABEL_83;
        }

LABEL_88:
        v38 &= v102 & a4;
LABEL_100:
        v50 = (*(a9 + 16) ^ 1) & v38;
        if ((*(a9 + 16) ^ 1) & 1) == 0 && (v38)
        {
          if (v36 > 6)
          {
            if (v36 > 9)
            {
              if ((v36 - 11) >= 2)
              {
                v50 = v99;
              }

              else
              {
                v50 = 1;
              }
            }

            else
            {
              if (v36 == 7)
              {
                v53 = -17;
              }

              else if (v36 == 8)
              {
                v53 = -5;
              }

              else
              {
                v53 = -9;
              }

LABEL_122:
              v50 = (v53 | v107) == -1;
            }
          }

          else if (v36 <= 2)
          {
            v50 = (v107 & 0x41) != 0;
            if (v36)
            {
              v50 = (v107 & 0xC0) != 0;
              if (v36 != 1)
              {
                v53 = -3;
                goto LABEL_122;
              }
            }
          }

          else
          {
            if (v36 <= 4)
            {
              if (v36 == 3)
              {
                v53 = -2;
              }

              else
              {
                v53 = -129;
              }

              goto LABEL_122;
            }

            v50 = (v107 & 0x400) != 0;
            if (v36 != 5)
            {
              v53 = -33;
              goto LABEL_122;
            }
          }
        }
      }

      else
      {
        v38 = 1;
        if (v36 == 5)
        {
          goto LABEL_88;
        }

LABEL_83:
        if (v36 == 12)
        {
          v44 = [objc_opt_self() deviceMediaLibrary];
          if (v44)
          {
            v45 = v44;
            sub_13C80(0, &qword_E11F30);
            v46 = v113;
            v47 = sub_ABA790();
          }

          else
          {
            v47 = 0;
          }

          v48 = [objc_opt_self() sharedManager];
          v49 = [v48 hasActiveDownloads];

          if (v38)
          {
            v38 = v47 & v49;
            goto LABEL_100;
          }

          v50 = 0;
        }

        else
        {
          if (v36 != 11)
          {
            goto LABEL_100;
          }

          v39 = [objc_opt_self() deviceMediaLibrary];
          if (v39)
          {
            v40 = v39;
            sub_13C80(0, &qword_E11F30);
            v41 = v113;
            v42 = sub_ABA790();

            v43 = v42 ^ 1;
          }

          else
          {
            v43 = 1;
          }

          v51 = [objc_opt_self() sharedManager];
          v52 = [v51 hasActiveDownloads];

          v50 = 0;
          if ((v38 & 1) != 0 && (a6 & 2) == 0 && (v43 & 1) == 0)
          {
            v38 = (v107 != 0) | v52;
            goto LABEL_100;
          }
        }
      }

      if (*(a10 + 16) == 1)
      {
        v50 &= v36 != 12;
      }

      a7 = v111;
      if ((v50 & 1) == 0)
      {
LABEL_77:
        a1 = (a1 + 1);
        if (v35 == v34)
        {
          a1 = v108;
          goto LABEL_133;
        }

        continue;
      }

      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a5 = sub_506E8C(0, *(a5 + 2) + 1, 1, a5);
    }

    a1 = v108;
    v55 = *(a5 + 2);
    v54 = *(a5 + 3);
    if (v55 >= v54 >> 1)
    {
      a5 = sub_506E8C((v54 > 1), v55 + 1, 1, a5);
    }

    *(a5 + 2) = v55 + 1;
    a5[v55 + 32] = v36;
    if (v35 != v34)
    {
      continue;
    }

    break;
  }

LABEL_133:

  swift_beginAccess();
  v57 = a1[2];
  v56 = a1[3];
  v58 = a1[4];
  v59 = a1[5];
  *&v117 = a5;
  *(&v117 + 1) = a2;
  *&v118 = v57;
  *(&v118 + 1) = v56;
  *&v119 = v58;
  *(&v119 + 1) = v59;
  LOBYTE(v120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E103F0);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_AF85D0;
  UIScreen.Dimensions.size.getter(COERCE_DOUBLE(4));
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  *(v60 + 56) = &type metadata for UserDefaultsKeyValueTrigger;
  *(v60 + 64) = &protocol witness table for UserDefaultsKeyValueTrigger;
  v69 = swift_allocObject();
  *(v60 + 32) = v69;
  v69[2] = v62;
  v69[3] = v64;
  v69[4] = v66;
  v69[5] = v68;
  v70 = qword_E0CCE0;

  v110 = a2;
  if (v70 != -1)
  {
    swift_once();
  }

  v72 = static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
  UIScreen.Dimensions.size.getter(v71);
  *(v60 + 96) = &type metadata for NotificationTrigger;
  *(v60 + 104) = &protocol witness table for NotificationTrigger;
  *(v60 + 72) = v73;
  *(v60 + 80) = v74;
  v75 = qword_E0CCC0;
  swift_retain_n();
  v76 = v72;
  if (v75 != -1)
  {
    swift_once();
  }

  v78 = static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
  v79 = UIScreen.Dimensions.size.getter(v77);
  *(v60 + 136) = &type metadata for NotificationTrigger;
  *(v60 + 144) = &protocol witness table for NotificationTrigger;
  *(v60 + 112) = v80;
  *(v60 + 120) = v81;
  UIScreen.Dimensions.size.getter(v79);
  *(v60 + 176) = &type metadata for NotificationTrigger;
  *(v60 + 184) = &protocol witness table for NotificationTrigger;
  *(v60 + 152) = v82;
  *(v60 + 160) = v83;
  v84 = v113;
  v85 = v78;
  v86 = MPMediaLibraryDidChangeNotification;
  if ((sub_5E9960(12, v111) & 1) == 0)
  {
    if (qword_E0CD58 != -1)
    {
      swift_once();
    }

    v88 = static MusicLibrary.downloadingStateDidChange;
    UIScreen.Dimensions.size.getter(v87);
    v90 = v89;
    v92 = v91;
    v93 = *(v60 + 16);
    v94 = *(v60 + 24);
    v95 = v88;
    if (v93 >= v94 >> 1)
    {
      v60 = sub_506EA0((v94 > 1), v93 + 1, 1, v60);
    }

    v115 = &type metadata for NotificationTrigger;
    v116 = &protocol witness table for NotificationTrigger;
    *&v114 = v90;
    *(&v114 + 1) = v92;
    *(v60 + 16) = v93 + 1;
    sub_70DF8(&v114, v60 + 40 * v93 + 32);
  }

  type metadata accessor for BindingRequestResponseInvalidation();
  swift_allocObject();
  v96 = BindingRequestResponseInvalidation.init(triggers:)(v60);
  v97 = sub_68D6D4(&qword_E11F38, type metadata accessor for BindingRequestResponseInvalidation);
  a11(&v117, v96, v97);

  sub_70C54(v125);
}

uint64_t *Library.Menu.Revision.Version.current.unsafeMutableAddressor()
{
  if (qword_E0CE20 != -1)
  {
    swift_once();
  }

  return &static Library.Menu.Revision.Version.current;
}

uint64_t Logger.libraryMenu.unsafeMutableAddressor()
{
  if (qword_E0CE28 != -1)
  {
    swift_once();
  }

  v0 = sub_AB4BC0();

  return __swift_project_value_buffer(v0, static Logger.libraryMenu);
}

uint64_t Library.Menu.Identifier.contentGroups.getter(unsigned __int8 a1)
{
  if (a1 > 0xAu)
  {
    return 0;
  }

  else
  {
    return qword_B201C8[a1];
  }
}

uint64_t sub_67E9A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  Library.Menu.Request.perform(_:_:)(sub_68D3E8, v6, a3);
}

BOOL sub_67EA30(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s9MusicCore7LibraryO4MenuV7RequestV23__derived_struct_equalsySbAG_AGtFZ_0(v8, v9);
}

uint64_t Library.Menu.Identifier.symbolName(for:)(char a1, char a2)
{
  result = 0x732E657261757173;
  switch(a2)
  {
    case 1:
      if (a1 == 2)
      {
        result = 0x6F6E2E636973756DLL;
      }

      else
      {
        result = 0x672E657261757173;
      }

      break;
    case 2:
      result = 0x696D2E636973756DLL;
      break;
    case 3:
      return result;
    case 4:
    case 6:
      result = 0x6F6E2E636973756DLL;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x73726174697567;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 30324;
      break;
    case 11:
    case 12:
      result = 0xD000000000000011;
      break;
    default:
      result = 0x6B636F6C63;
      break;
  }

  return result;
}

uint64_t Library.Menu.Identifier.name(for:)()
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

BOOL static Library.Menu.Identifier.Location.__derived_enum_equals(_:_:)(int a1, int a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a2 == 2)
  {
    return 0;
  }

  return (a2 ^ a1 ^ 1) & 1;
}

unint64_t Library.Menu.Identifier.description.getter(char a1)
{
  v1 = Library.Menu.Identifier.rawValue.getter(a1);
  sub_4FD6CC();
  v2 = sub_ABAA30();

  v3 = *(v2 + 16);
  if (v3)
  {
    v1 = *(v2 + 16 + 16 * v3);
  }

  return v1;
}

unint64_t Library.Menu.Identifier.rawValue.getter(char a1)
{
  result = 0xD000000000000029;
  switch(a1)
  {
    case 1:
    case 9:
      result = 0xD000000000000025;
      break;
    case 2:
      result = 0xD000000000000023;
      break;
    case 3:
    case 7:
      result = 0xD000000000000022;
      break;
    case 4:
    case 10:
      result = 0xD000000000000021;
      break;
    case 5:
    case 11:
      result = 0xD000000000000026;
      break;
    case 6:
    case 12:
      result = 0xD000000000000027;
      break;
    case 8:
      result = 0xD000000000000028;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_67F2E8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = Library.Menu.Identifier.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == Library.Menu.Identifier.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_67F370()
{
  v1 = *v0;
  sub_ABB5C0();
  Library.Menu.Identifier.rawValue.getter(v1);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_67F3D4()
{
  Library.Menu.Identifier.rawValue.getter(*v0);
  sub_AB93F0();
}

Swift::Int sub_67F428()
{
  v1 = *v0;
  sub_ABB5C0();
  Library.Menu.Identifier.rawValue.getter(v1);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_67F488@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore7LibraryO4MenuV10IdentifierO8rawValueAGSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_67F4B8@<X0>(unint64_t *a1@<X8>)
{
  result = Library.Menu.Identifier.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t Library.Menu.Revision.init(from:)(void *a1)
{
  result = sub_68C278(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t Library.Menu.Revision.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a3;
  v17 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11DE8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_68C948();
  sub_ABB690();
  v18 = a4;
  v20 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11DF8);
  sub_68D434(&qword_E11E00, sub_68C99C);
  sub_ABB280();
  if (!v5)
  {
    v13 = a2;
    v14 = v16;
    v18 = v17;
    v20 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11E10);
    sub_68C9F0(&qword_E11E18, sub_68C99C);
    sub_ABB280();
    v18 = v13;
    v19 = v14;
    v20 = 2;
    sub_68CA68();
    sub_ABB280();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_67F840(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7105633;
  if (v2 != 1)
  {
    v4 = 0x6E6F6973726576;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x64657463656C6573;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7105633;
  if (*a2 != 1)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64657463656C6573;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_ABB3C0();
  }

  return v11 & 1;
}

Swift::Int sub_67F934()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_67F9D0()
{
  sub_AB93F0();
}

Swift::Int sub_67FA58()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_67FAF0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_68CB10(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_67FB20(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE300000000000000;
  v5 = 7105633;
  if (v2 != 1)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64657463656C6573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_67FB78()
{
  v1 = 7105633;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64657463656C6573;
  }
}

uint64_t sub_67FBCC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_68CB10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_67FC00(uint64_t a1)
{
  v2 = sub_68C948();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_67FC3C(uint64_t a1)
{
  v2 = sub_68C948();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_67FC80()
{
  if (*v0)
  {
    return 0x64657463656C6573;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_67FCC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEB00000000737265;
  if (v6 || (sub_ABB3C0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_ABB3C0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_67FDA4(uint64_t a1)
{
  v2 = sub_68CABC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_67FDE0(uint64_t a1)
{
  v2 = sub_68CABC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static Library.Menu.Revision.Version.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_5D47CC(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_67BBE8(a2, a4);
}

uint64_t Library.Menu.Revision.Version.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11E28);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_68CABC();
  sub_ABB690();
  v14 = a2;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11DF8);
  sub_68D434(&qword_E11E00, sub_68C99C);
  sub_ABB280();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11E10);
    sub_68C9F0(&qword_E11E18, sub_68C99C);
    sub_ABB280();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_6800AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_68CB5C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_6800F4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_5D47CC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_67BBE8(v2, v3);
}

uint64_t Library.Menu.Revision.version.getter(uint64_t a1)
{

  return a1;
}

uint64_t MPCPlaybackEngine.Configuration.options.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void sub_6801C4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v5 = *(v2 + 8);
  if (qword_E0CE28 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v7 = sub_AB4BC0();
    __swift_project_value_buffer(v7, static Logger.libraryMenu);
    v8 = sub_AB4BA0();
    v9 = sub_AB9F50();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "╭ ⏩ Begin Migration", v10, 2u);
    }

    v11 = sub_AB4BA0();
    v12 = sub_AB9F50();

    v44 = v6;
    v45 = v5;
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v49 = v14;
      *v13 = 136315138;
      v47 = v6;
      v48 = v5;

      v15 = sub_AB9350();
      v17 = sub_500C84(v15, v16, &v49);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_0, v11, v12, "╞< %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
    }

    v18 = sub_AB4BA0();
    v19 = sub_AB9F50();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v49 = v21;
      *v20 = 136315138;
      v47 = a1;
      v48 = a2;

      v22 = sub_AB9350();
      v24 = sub_500C84(v22, v23, &v49);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_0, v18, v19, "╞> %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
    }

    v5 = v46[2];

    v26 = sub_615414(v25);

    v28 = sub_615414(v27);

    if (*(v28 + 16) <= *(v26 + 16) >> 3)
    {
      v47 = v26;

      sub_68A100(v28);
      v6 = v47;
    }

    else
    {

      v6 = sub_68A1F4(v28, v26);
    }

    if (*(v26 + 16) <= *(v28 + 16) >> 3)
    {
      v47 = v28;
      sub_68A100(v26);
      v29 = v47;
    }

    else
    {
      v29 = sub_68A1F4(v26, v28);
    }

    v49 = v5;
    v30 = *(v5 + 16);
    v31 = *(v26 + 16);

    if (v30 == v31)
    {
      break;
    }

    v32 = *(v5 + 16);
    if (!v32)
    {
      break;
    }

    v33 = 0;
    while (v33 < *(v5 + 16))
    {
      v34 = v33 + 1;
      LOBYTE(v47) = *(v5 + 32 + v33);
      sub_680B28(&v47, &v49);
      v33 = v34;
      if (v32 == v34)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

LABEL_19:
  sub_67B6D8(v6, &v49);

  sub_68B870(v29, a1, &v49);

  v35 = *(a1 + 16);
  swift_beginAccess();
  v36 = v49;
  if (v35 == *(v49 + 2))
  {

    v46[2] = v36;
    v37 = v46[3];
    if (*(v6 + 2) <= *(v37 + 16) >> 3)
    {

      sub_68A100(v6);

      v38 = v37;
    }

    else
    {

      v38 = sub_68A1F4(v6, v37);
    }

    v42 = sub_68BAE4(v29, a1, a2);

    v43 = sub_681938(v42, v38);

    v41 = v46;
    v46[3] = v43;
  }

  else
  {

    v39 = v46[3];
    sub_68D608();
    swift_allocError();
    *v40 = v44;
    v40[1] = v45;
    v40[2] = v5;
    v40[3] = v39;
    v40[4] = a1;
    v40[5] = a2;
    swift_willThrow();

    v41 = v46;
  }

  sub_6807E0(v41, a1, a2);
}

void sub_6807E0(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;

  v3 = qword_E0CE28;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = sub_AB4BC0();
  __swift_project_value_buffer(v4, static Logger.libraryMenu);
  v5 = sub_AB4BA0();
  v6 = sub_AB9F50();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "╞ ✅ Migration ended with", v7, 2u);
  }

  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136446210;
    v12 = sub_AB9770();
    v14 = v13;

    v15 = sub_500C84(v12, v14, &v24);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_0, v8, v9, "╞  - Ordered: %{public}s)", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
  }

  oslog = sub_AB4BA0();
  v16 = sub_AB9F50();

  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136446210;
    sub_615488();
    v19 = sub_AB9B60();
    v21 = v20;

    v22 = sub_500C84(v19, v21, &v24);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_0, oslog, v16, "╞  - Selected: %{public}s)", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
  }
}

uint64_t sub_680B28(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v4 = *a2;

  v5 = sub_61A160(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    do
    {
      v20 = *a2;

      v21 = sub_680DF4(v3, v20);
      v23 = v22;

      if ((v23 & 1) != 0 || v5 == v21)
      {
        break;
      }

      if (qword_E0CE28 != -1)
      {
        swift_once();
      }

      v24 = sub_AB4BC0();
      __swift_project_value_buffer(v24, static Logger.libraryMenu);
      v16 = sub_AB4BA0();
      v25 = sub_AB9F50();
      if (os_log_type_enabled(v16, v25))
      {
        v29 = v25;
        v26 = swift_slowAlloc();
        result = swift_slowAlloc();
        v28[0] = result;
        *v26 = 136315650;
        if ((v21 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_15:
          __break(1u);
          return result;
        }

        if (v21 >= *(*a2 + 16))
        {
          goto LABEL_15;
        }

        v9 = result;
        v10 = Library.Menu.Identifier.description.getter(*(*a2 + v21 + 32));
        log = v16;
        v12 = v5;
        v13 = a2;
        v14 = v3;
        v15 = sub_500C84(v10, v11, v28);

        *(v26 + 4) = v15;
        v3 = v14;
        a2 = v13;
        *(v26 + 12) = 2048;
        *(v26 + 14) = v12;
        *(v26 + 22) = 2048;
        *(v26 + 24) = v21;
        v16 = log;
        _os_log_impl(&dword_0, log, v29, "╞ Removing duplicate:%s at index: [%ld, %ld]", v26, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v9);
      }

      swift_beginAccess();
      sub_5208E8(v21);
      swift_endAccess();
      v17 = *a2;

      v5 = sub_61A160(v3, v17);
      v19 = v18;
    }

    while ((v19 & 1) == 0);
  }

  return result;
}

uint64_t sub_680DF4(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = a2 + 31;
  do
  {
    v6 = v3;
    if (!v3)
    {
      break;
    }

    --v3;
    v7 = 0xD000000000000029;
    v8 = "LibraryView.Playlists";
    switch(*(v4 + v6))
    {
      case 1:
        v7 = 0xD000000000000025;
        v8 = "LibraryView.Artists";
        break;
      case 2:
        v7 = 0xD000000000000023;
        v8 = "LibraryView.Albums";
        break;
      case 3:
        v7 = 0xD000000000000022;
        v8 = "LibraryView.Songs";
        break;
      case 4:
        v7 = 0xD000000000000021;
        v8 = "LibraryView.MadeForYou";
        break;
      case 5:
        v7 = 0xD000000000000026;
        v8 = "LibraryView.MusicVideos";
        break;
      case 6:
        v7 = 0xD000000000000027;
        v8 = "LibraryView.Genres";
        break;
      case 7:
        v7 = 0xD000000000000022;
        v8 = "LibraryView.Compilations";
        break;
      case 8:
        v7 = 0xD000000000000028;
        v8 = "LibraryView.Composers";
        break;
      case 9:
        v7 = 0xD000000000000025;
        v8 = "LibraryView.Shows";
        break;
      case 0xA:
        v7 = 0xD000000000000021;
        v8 = "LibraryView.Downloaded";
        break;
      case 0xB:
        v7 = 0xD000000000000026;
        v8 = "LibraryView.Downloading";
        break;
      case 0xC:
        v7 = 0xD000000000000027;
        v8 = "ByPlaylistOrderAscending";
        break;
      default:
        break;
    }

    v9 = v8 | 0x8000000000000000;
    v10 = 0xD000000000000029;
    v11 = "LibraryView.Playlists";
    switch(a1)
    {
      case 1:
        v10 = 0xD000000000000025;
        v11 = "LibraryView.Artists";
        break;
      case 2:
        v10 = 0xD000000000000023;
        v11 = "LibraryView.Albums";
        break;
      case 3:
        v10 = 0xD000000000000022;
        v11 = "LibraryView.Songs";
        break;
      case 4:
        v10 = 0xD000000000000021;
        v11 = "LibraryView.MadeForYou";
        break;
      case 5:
        v10 = 0xD000000000000026;
        v11 = "LibraryView.MusicVideos";
        break;
      case 6:
        v10 = 0xD000000000000027;
        v11 = "LibraryView.Genres";
        break;
      case 7:
        v10 = 0xD000000000000022;
        v11 = "LibraryView.Compilations";
        break;
      case 8:
        v10 = 0xD000000000000028;
        v11 = "LibraryView.Composers";
        break;
      case 9:
        v10 = 0xD000000000000025;
        v11 = "LibraryView.Shows";
        break;
      case 10:
        v10 = 0xD000000000000021;
        v11 = "LibraryView.Downloaded";
        break;
      case 11:
        v10 = 0xD000000000000026;
        v11 = "LibraryView.Downloading";
        break;
      case 12:
        v10 = 0xD000000000000027;
        v11 = "ByPlaylistOrderAscending";
        break;
      default:
        break;
    }

    if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
    {

      return v3;
    }

    v5 = sub_ABB3C0();
  }

  while ((v5 & 1) == 0);
  return v3;
}

uint64_t sub_681154(unsigned __int8 *a1, char **a2)
{
  v29 = *a1;
  swift_beginAccess();
  v4 = *a2;
  v5 = *(*a2 + 2);
  if (v5)
  {
    v28 = a2;
    v6 = 0;
    v7 = "LibraryView.Playlists";
    do
    {
      if (v6 >= *(v4 + 2))
      {
        __break(1u);
        goto LABEL_81;
      }

      v8 = 0xD000000000000029;
      v9 = "LibraryView.Playlists";
      switch(v4[v6 + 32])
      {
        case 1:
          v8 = 0xD000000000000025;
          v9 = "LibraryView.Artists";
          break;
        case 2:
          v8 = 0xD000000000000023;
          v9 = "LibraryView.Albums";
          break;
        case 3:
          v8 = 0xD000000000000022;
          v9 = "LibraryView.Songs";
          break;
        case 4:
          v8 = 0xD000000000000021;
          v9 = "LibraryView.MadeForYou";
          break;
        case 5:
          v8 = 0xD000000000000026;
          v9 = "LibraryView.MusicVideos";
          break;
        case 6:
          v8 = 0xD000000000000027;
          v9 = "LibraryView.Genres";
          break;
        case 7:
          v8 = 0xD000000000000022;
          v9 = "LibraryView.Compilations";
          break;
        case 8:
          v8 = 0xD000000000000028;
          v9 = "LibraryView.Composers";
          break;
        case 9:
          v8 = 0xD000000000000025;
          v9 = "LibraryView.Shows";
          break;
        case 10:
          v8 = 0xD000000000000021;
          v9 = "LibraryView.Downloaded";
          break;
        case 11:
          v8 = 0xD000000000000026;
          v9 = "LibraryView.Downloading";
          break;
        case 12:
          v8 = 0xD000000000000027;
          v9 = "ByPlaylistOrderAscending";
          break;
        default:
          break;
      }

      v10 = v9 | 0x8000000000000000;
      v11 = 0xD000000000000029;
      v12 = "LibraryView.Playlists";
      switch(v29)
      {
        case 1:
          v11 = 0xD000000000000025;
          v12 = "LibraryView.Artists";
          break;
        case 2:
          v11 = 0xD000000000000023;
          v12 = "LibraryView.Albums";
          break;
        case 3:
          v11 = 0xD000000000000022;
          v12 = "LibraryView.Songs";
          break;
        case 4:
          v11 = 0xD000000000000021;
          v12 = "LibraryView.MadeForYou";
          break;
        case 5:
          v11 = 0xD000000000000026;
          v12 = "LibraryView.MusicVideos";
          break;
        case 6:
          v11 = 0xD000000000000027;
          v12 = "LibraryView.Genres";
          break;
        case 7:
          v11 = 0xD000000000000022;
          v12 = "LibraryView.Compilations";
          break;
        case 8:
          v11 = 0xD000000000000028;
          v12 = "LibraryView.Composers";
          break;
        case 9:
          v11 = 0xD000000000000025;
          v12 = "LibraryView.Shows";
          break;
        case 10:
          v11 = 0xD000000000000021;
          v12 = "LibraryView.Downloaded";
          break;
        case 11:
          v11 = 0xD000000000000026;
          v12 = "LibraryView.Downloading";
          break;
        case 12:
          v11 = 0xD000000000000027;
          v12 = "ByPlaylistOrderAscending";
          break;
        default:
          break;
      }

      if (v8 == v11 && v10 == (v12 | 0x8000000000000000))
      {

LABEL_37:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v5 = a2;
        *a2 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_86;
        }

        while (1)
        {
          *v5 = v4;
          v16 = *(v4 + 2);
          if ((v16 - 1) == v6)
          {
LABEL_39:
            v7 = v2;
            *v28 = v4;
            v14 = *(v4 + 2);
            if (v14 >= v6)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v5 = (v6 + 1);
            v27 = v4 + 32;
            v18 = &v4[v6 + 33];
            while (v5 < v16)
            {
              v19 = 0xD000000000000029;
              v20 = v7;
              switch(*v18)
              {
                case 1:
                  v19 = 0xD000000000000025;
                  v20 = "LibraryView.Artists";
                  break;
                case 2:
                  v19 = 0xD000000000000023;
                  v20 = "LibraryView.Albums";
                  break;
                case 3:
                  v19 = 0xD000000000000022;
                  v20 = "LibraryView.Songs";
                  break;
                case 4:
                  v19 = 0xD000000000000021;
                  v20 = "LibraryView.MadeForYou";
                  break;
                case 5:
                  v19 = 0xD000000000000026;
                  v20 = "LibraryView.MusicVideos";
                  break;
                case 6:
                  v19 = 0xD000000000000027;
                  v20 = "LibraryView.Genres";
                  break;
                case 7:
                  v19 = 0xD000000000000022;
                  v20 = "LibraryView.Compilations";
                  break;
                case 8:
                  v19 = 0xD000000000000028;
                  v20 = "LibraryView.Composers";
                  break;
                case 9:
                  v19 = 0xD000000000000025;
                  v20 = "LibraryView.Shows";
                  break;
                case 10:
                  v19 = 0xD000000000000021;
                  v20 = "LibraryView.Downloaded";
                  break;
                case 11:
                  v19 = 0xD000000000000026;
                  v20 = "LibraryView.Downloading";
                  break;
                case 12:
                  v19 = 0xD000000000000027;
                  v20 = "ByPlaylistOrderAscending";
                  break;
                default:
                  break;
              }

              v21 = v20 | 0x8000000000000000;
              v22 = 0xD000000000000029;
              v23 = v7;
              switch(v29)
              {
                case 1:
                  v22 = 0xD000000000000025;
                  v23 = "LibraryView.Artists";
                  break;
                case 2:
                  v22 = 0xD000000000000023;
                  v23 = "LibraryView.Albums";
                  break;
                case 3:
                  v22 = 0xD000000000000022;
                  v23 = "LibraryView.Songs";
                  break;
                case 4:
                  v22 = 0xD000000000000021;
                  v23 = "LibraryView.MadeForYou";
                  break;
                case 5:
                  v22 = 0xD000000000000026;
                  v23 = "LibraryView.MusicVideos";
                  break;
                case 6:
                  v22 = 0xD000000000000027;
                  v23 = "LibraryView.Genres";
                  break;
                case 7:
                  v22 = 0xD000000000000022;
                  v23 = "LibraryView.Compilations";
                  break;
                case 8:
                  v22 = 0xD000000000000028;
                  v23 = "LibraryView.Composers";
                  break;
                case 9:
                  v22 = 0xD000000000000025;
                  v23 = "LibraryView.Shows";
                  break;
                case 10:
                  v22 = 0xD000000000000021;
                  v23 = "LibraryView.Downloaded";
                  break;
                case 11:
                  v22 = 0xD000000000000026;
                  v23 = "LibraryView.Downloading";
                  break;
                case 12:
                  v22 = 0xD000000000000027;
                  v23 = "ByPlaylistOrderAscending";
                  break;
                default:
                  break;
              }

              if (v19 == v22 && v21 == (v23 | 0x8000000000000000))
              {
              }

              else
              {
                v24 = sub_ABB3C0();

                if ((v24 & 1) == 0)
                {
                  if (v5 != v6)
                  {
                    if (v6 < 0)
                    {
                      goto LABEL_83;
                    }

                    v25 = *(v4 + 2);
                    if (v6 >= v25)
                    {
                      goto LABEL_84;
                    }

                    if (v5 >= v25)
                    {
                      goto LABEL_85;
                    }

                    v26 = v27[v6];
                    v27[v6] = *v18;
                    *v18 = v26;
                  }

                  ++v6;
                }
              }

              v5 = (v5 + 1);
              v16 = *(v4 + 2);
              ++v18;
              if (v5 == v16)
              {
                goto LABEL_39;
              }
            }

LABEL_81:
            __break(1u);
          }

          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          v4 = sub_52860C(v4);
        }
      }

      v13 = sub_ABB3C0();

      if (v13)
      {
        goto LABEL_37;
      }

      ++v6;
    }

    while (v5 != v6);
    v6 = *(v4 + 2);
    v14 = v6;
  }

  else
  {
    v6 = 0;
    v14 = 0;
  }

LABEL_40:
  sub_529774(v6, v14);
  return swift_endAccess();
}

uint64_t sub_681820(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v10 = a4 >> 1;
  result = swift_beginAccess();
  do
  {
    if (a3 == v10)
    {
      return 13;
    }

    if (__OFSUB__(v10--, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    if (v10 < a3)
    {
      goto LABEL_11;
    }

    v13 = *a5;
    v14 = *(a2 + v10);

    v15 = sub_67B888(v14, v13);
  }

  while (!v15);
  __chkstk_darwin(result);
  v16 = v10;
  result = sub_68D65C(&v16, &v17);
  if (!v6)
  {
    return v17;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_681938(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_6836B0(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t static Library.Menu.Revision.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((sub_5D47CC(a1, a5) & 1) == 0 || (sub_67BBE8(a2, a6) & 1) == 0 || (sub_5D47CC(a3, a7) & 1) == 0)
  {
    return 0;
  }

  return sub_67BBE8(a4, a8);
}

uint64_t sub_681AB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_68C278(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_681B04(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if ((sub_5D47CC(*a1, *a2) & 1) == 0 || (sub_67BBE8(v2, v5) & 1) == 0 || (sub_5D47CC(v4, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_67BBE8(v3, v6);
}

void *sub_681BA0()
{
  result = sub_508594(&off_D1BF98);
  static Library.Menu.Revision.Version.current = &off_D1BF68;
  unk_E71F30 = result;
  return result;
}

uint64_t static Library.Menu.Revision.Version.current.getter()
{
  if (qword_E0CE20 != -1)
  {
    swift_once();
  }

  v0 = static Library.Menu.Revision.Version.current;

  return v0;
}

void sub_681C44()
{
  LOBYTE(v15[0]) = 0;
  sub_68D5B4();
  sub_4FD6CC();
  NSUserDefaults.subscript.getter(&v16);
  if (!*(&v17 + 1))
  {
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E103E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v1 = v15[0];
  LOBYTE(v15[0]) = 1;
  NSUserDefaults.subscript.getter(&v16);
  if (!*(&v17 + 1))
  {
LABEL_7:

LABEL_8:
    sub_12E1C(&v16, &qword_E11F60);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v2 = v15[0];
  v15[0] = 0x4D7972617262694CLL;
  v15[1] = 0xEB00000000756E65;
  NSUserDefaults.subscript.getter(v15, &v16);
  if (*(&v17 + 1))
  {

    goto LABEL_7;
  }

  sub_12E1C(&v16, &qword_E11F60);
  if (qword_E0CE20 != -1)
  {
    swift_once();
  }

  v3 = sub_68BD70(v1, v2, static Library.Menu.Revision.Version.current, unk_E71F30);
  if (v0)
  {

    if (qword_E0CE28 != -1)
    {
      swift_once();
    }

    v6 = sub_AB4BC0();
    __swift_project_value_buffer(v6, static Logger.libraryMenu);
    swift_errorRetain();
    v7 = sub_AB4BA0();
    v8 = sub_AB9F30();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *&v16 = v0;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
      sub_AB9350();
      v11 = sub_AB9260();

      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&dword_0, v7, v8, "Unable to migrate legacy library menu: %@", v9, 0xCu);
      sub_12E1C(v10, &qword_E0F560);
    }

    else
    {
    }
  }

  else
  {
    v12 = v3;
    v13 = v4;
    v14 = v5;

    NSUserDefaults.libraryMenuRevision.setter(v12, v13, v14);
    v16 = 0u;
    v17 = 0u;
    LOBYTE(v15[0]) = 0;
    NSUserDefaults.subscript.setter(&v16, v15, &_s9LegacyKeyON);
    v16 = 0u;
    v17 = 0u;
    LOBYTE(v15[0]) = 1;
    NSUserDefaults.subscript.setter(&v16, v15, &_s9LegacyKeyON);
  }
}

void (*NSUserDefaults.libraryMenuRevision.modify(void *a1))(uint64_t **a1, char a2)
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
  v3[4] = v1;
  *v3 = NSUserDefaults.libraryMenuRevision.getter();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  return sub_6820BC;
}

void sub_6820BC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  if (a2)
  {

    NSUserDefaults.libraryMenuRevision.setter(v4, v3, v5);
  }

  else
  {
    NSUserDefaults.libraryMenuRevision.setter(**a1, v3, v5);
  }

  free(v2);
}

uint64_t sub_682180(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000001CLL;
  }

  else
  {
    v3 = 0xD00000000000001DLL;
  }

  if (v2)
  {
    v4 = "orites";
  }

  else
  {
    v4 = "orderedLibraryViewIdentifiers";
  }

  if (*a2)
  {
    v5 = 0xD00000000000001CLL;
  }

  else
  {
    v5 = 0xD00000000000001DLL;
  }

  if (*a2)
  {
    v6 = "orderedLibraryViewIdentifiers";
  }

  else
  {
    v6 = "orites";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_682228()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_6822A4()
{
  sub_AB93F0();
}

Swift::Int sub_68230C()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_682384@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_D1C180;
  v8._object = v3;
  v5 = sub_ABB140(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_6823E4(unint64_t *a1@<X8>)
{
  v2 = "orderedLibraryViewIdentifiers";
  v3 = 0xD00000000000001CLL;
  if (!*v1)
  {
    v3 = 0xD00000000000001DLL;
    v2 = "orites";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_682420()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, static Logger.libraryMenu);
  __swift_project_value_buffer(v0, static Logger.libraryMenu);
  return sub_AB4BB0();
}

uint64_t static Logger.libraryMenu.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_E0CE28 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  v3 = __swift_project_value_buffer(v2, static Logger.libraryMenu);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Library.Menu.Identifier.musicAccessibilityIdentifier.getter(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_E0D2B8 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryPlaylistsView;
      break;
    case 2:
      if (qword_E0D268 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryArtistsListView;
      break;
    case 3:
      if (qword_E0D278 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryAlbumsView;
      break;
    case 4:
      if (qword_E0D2C0 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.librarySongsView;
      break;
    case 5:
      if (qword_E0D2A8 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryMadeForYouView;
      break;
    case 6:
      if (qword_E0D2B0 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryMusicVideosView;
      break;
    case 7:
      if (qword_E0D2A0 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryGenresView;
      break;
    case 8:
      if (qword_E0D288 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryCompilationsView;
      break;
    case 9:
      if (qword_E0D280 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryComposersView;
      break;
    case 10:
      if (qword_E0D2C8 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryTVAndMoviesView;
      break;
    case 11:
      if (qword_E0D290 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryDownloadedView;
      break;
    case 12:
      if (qword_E0D298 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryDownloadingView;
      break;
    default:
      if (qword_E0D260 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryRecentlyAddedView;
      break;
  }

  v2 = *v1;

  return v2;
}

uint64_t sub_6828F4(_BYTE *a1, Swift::Int a2)
{
  v3 = v2;
  v6 = *v2;
  sub_ABB5C0();
  ActionType.rawValue.getter(a2);
  sub_AB93F0();

  v7 = sub_ABB610();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = ActionType.rawValue.getter(*(*(v6 + 48) + v9));
      v13 = v12;
      if (v11 == ActionType.rawValue.getter(a2) && v13 == v14)
      {
        break;
      }

      v16 = sub_ABB3C0();

      if (v16)
      {
        goto LABEL_11;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    LOBYTE(a2) = *(*(v6 + 48) + v9);
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_6882E0(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_682A7C(_BYTE *a1, Swift::Int a2)
{
  v4 = *v2;
  sub_ABB5C0();
  ApplicationCapabilities.Service.rawValue.getter(a2);
  sub_AB93F0();

  v5 = sub_ABB610();
  v32 = v4;
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v31 = v4 + 56;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v30 = ~v6;
    while (1)
    {
      v8 = *(*(v32 + 48) + v7);
      v33 = v7;
      if (v8 <= 4)
      {
        if (v8 == 3)
        {
          v11 = 0x6C6169636F73;
        }

        else
        {
          v11 = 0x6F69646172;
        }

        if (v8 == 3)
        {
          v12 = 0xE600000000000000;
        }

        else
        {
          v12 = 0xE500000000000000;
        }

        if (v8 == 2)
        {
          v11 = 0xD000000000000013;
          v12 = 0x8000000000B5B970;
        }

        v13 = *(*(v32 + 48) + v7) ? 0x646956636973756DLL : 0x636973756DLL;
        v14 = *(*(v32 + 48) + v7) ? 0xEB00000000736F65 : 0xE500000000000000;
        v9 = *(*(v32 + 48) + v7) <= 1u ? v13 : v11;
        v10 = *(*(v32 + 48) + v7) <= 1u ? v14 : v12;
      }

      else if (*(*(v32 + 48) + v7) > 7u)
      {
        if (v8 == 8)
        {
          v9 = 0xD000000000000013;
          v10 = 0x8000000000B5B9B0;
        }

        else if (v8 == 9)
        {
          v9 = 0xD000000000000011;
          v10 = 0x8000000000B5B990;
        }

        else
        {
          v9 = 0x6C62616E45696C6DLL;
          v10 = 0xEA00000000006465;
        }
      }

      else if (v8 == 5)
      {
        v10 = 0xE600000000000000;
        v9 = 0x73656E757469;
      }

      else if (v8 == 6)
      {
        v9 = 0x74634170756F7267;
        v10 = 0xED00007974697669;
      }

      else
      {
        v9 = 0x746963696C707865;
        v10 = 0xEF746E65746E6F43;
      }

      v15 = 0xD000000000000011;
      if (a2 != 9)
      {
        v15 = 0x6C62616E45696C6DLL;
      }

      v16 = 0xEA00000000006465;
      if (a2 == 9)
      {
        v16 = 0x8000000000B5B990;
      }

      if (a2 == 8)
      {
        v15 = 0xD000000000000013;
        v16 = 0x8000000000B5B9B0;
      }

      v17 = 0x746963696C707865;
      if (a2 == 6)
      {
        v17 = 0x74634170756F7267;
      }

      v18 = 0xEF746E65746E6F43;
      if (a2 == 6)
      {
        v18 = 0xED00007974697669;
      }

      if (a2 == 5)
      {
        v17 = 0x73656E757469;
        v18 = 0xE600000000000000;
      }

      if (a2 <= 7u)
      {
        v15 = v17;
        v16 = v18;
      }

      if (a2 == 3)
      {
        v19 = 0x6C6169636F73;
      }

      else
      {
        v19 = 0x6F69646172;
      }

      if (a2 == 3)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      if (a2 == 2)
      {
        v19 = 0xD000000000000013;
        v20 = 0x8000000000B5B970;
      }

      if (a2)
      {
        v21 = 0x646956636973756DLL;
      }

      else
      {
        v21 = 0x636973756DLL;
      }

      if (a2)
      {
        v22 = 0xEB00000000736F65;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      if (a2 <= 1u)
      {
        v19 = v21;
        v20 = v22;
      }

      v23 = a2 <= 4u ? v19 : v15;
      v24 = a2 <= 4u ? v20 : v16;
      if (v9 == v23 && v10 == v24)
      {
        break;
      }

      v25 = sub_ABB3C0();

      if (v25)
      {
        goto LABEL_78;
      }

      v7 = (v33 + 1) & v30;
      if (((*(v31 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_76;
      }
    }

LABEL_78:
    result = 0;
    LOBYTE(a2) = *(*(v32 + 48) + v33);
  }

  else
  {
LABEL_76:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v28;
    sub_6884C8(a2, v7, isUniquelyReferenced_nonNull_native);
    *v28 = v34;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_682E84(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_AB8550();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_68D6D4(&qword_E10CF8, &type metadata accessor for AudioVariant);
  v33 = a2;
  v11 = sub_AB90D0();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_68D6D4(&qword_E10D00, &type metadata accessor for AudioVariant);
      v21 = sub_AB91C0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_68892C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_683164(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_AB92A0();
  sub_ABB5C0();
  sub_AB93F0();
  v7 = sub_ABB610();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_AB92A0();
      v13 = v12;
      if (v11 == sub_AB92A0() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_ABB3C0();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_688BD0(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_683310(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  sub_ABB5C0();
  v7 = a2 & 1;
  sub_ABB5D0(v7);
  v8 = sub_ABB610();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v6 + 48);
      if (*(v12 + v10) == v7)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v7) = *(v12 + v10);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_688DB8(v7, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_683410(void *a1, uint64_t a2)
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

    v8 = sub_ABAC60();

    if (v8)
    {

      sub_AB5460();
      swift_dynamicCast();
      result = 0;
      *a1 = v18;
      return result;
    }

    result = sub_ABAC50();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_687FC4(v7, result + 1);
    if (*(v16 + 24) <= *(v16 + 16))
    {
      sub_687250();
    }

    sub_6881F8(v17, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_AB5460();
  sub_68D6D4(&qword_E0E138, &type metadata accessor for AnyCancellable);
  v10 = sub_AB90D0();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;

    sub_688F0C(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v19;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_68D6D4(&qword_E0E140, &type metadata accessor for AnyCancellable);
  while ((sub_AB91C0() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_6836B0(_BYTE *a1, Swift::Int a2)
{
  v4 = *v2;
  sub_ABB5C0();
  Library.Menu.Identifier.rawValue.getter(a2);
  sub_AB93F0();

  v5 = sub_ABB610();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = 0xD000000000000029;
      v10 = "LibraryView.Playlists";
      switch(*(*(v4 + 48) + v7))
      {
        case 1:
          v9 = 0xD000000000000025;
          v10 = "LibraryView.Artists";
          break;
        case 2:
          v9 = 0xD000000000000023;
          v10 = "LibraryView.Albums";
          break;
        case 3:
          v9 = 0xD000000000000022;
          v10 = "LibraryView.Songs";
          break;
        case 4:
          v9 = 0xD000000000000021;
          v10 = "LibraryView.MadeForYou";
          break;
        case 5:
          v9 = 0xD000000000000026;
          v10 = "LibraryView.MusicVideos";
          break;
        case 6:
          v9 = 0xD000000000000027;
          v10 = "LibraryView.Genres";
          break;
        case 7:
          v9 = 0xD000000000000022;
          v10 = "LibraryView.Compilations";
          break;
        case 8:
          v9 = 0xD000000000000028;
          v10 = "LibraryView.Composers";
          break;
        case 9:
          v9 = 0xD000000000000025;
          v10 = "LibraryView.Shows";
          break;
        case 0xA:
          v9 = 0xD000000000000021;
          v10 = "LibraryView.Downloaded";
          break;
        case 0xB:
          v9 = 0xD000000000000026;
          v10 = "LibraryView.Downloading";
          break;
        case 0xC:
          v9 = 0xD000000000000027;
          v10 = "ByPlaylistOrderAscending";
          break;
        default:
          break;
      }

      v11 = v10 | 0x8000000000000000;
      v12 = 0xD000000000000029;
      v13 = "LibraryView.Playlists";
      switch(a2)
      {
        case 1:
          v12 = 0xD000000000000025;
          v13 = "LibraryView.Artists";
          break;
        case 2:
          v12 = 0xD000000000000023;
          v13 = "LibraryView.Albums";
          break;
        case 3:
          v12 = 0xD000000000000022;
          v13 = "LibraryView.Songs";
          break;
        case 4:
          v12 = 0xD000000000000021;
          v13 = "LibraryView.MadeForYou";
          break;
        case 5:
          v12 = 0xD000000000000026;
          v13 = "LibraryView.MusicVideos";
          break;
        case 6:
          v12 = 0xD000000000000027;
          v13 = "LibraryView.Genres";
          break;
        case 7:
          v12 = 0xD000000000000022;
          v13 = "LibraryView.Compilations";
          break;
        case 8:
          v12 = 0xD000000000000028;
          v13 = "LibraryView.Composers";
          break;
        case 9:
          v12 = 0xD000000000000025;
          v13 = "LibraryView.Shows";
          break;
        case 10:
          v12 = 0xD000000000000021;
          v13 = "LibraryView.Downloaded";
          break;
        case 11:
          v12 = 0xD000000000000026;
          v13 = "LibraryView.Downloading";
          break;
        case 12:
          v12 = 0xD000000000000027;
          v13 = "ByPlaylistOrderAscending";
          break;
        default:
          break;
      }

      if (v9 == v12 && v11 == (v13 | 0x8000000000000000))
      {
        break;
      }

      v14 = sub_ABB3C0();

      if (v14)
      {
        goto LABEL_35;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

LABEL_35:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_33:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    sub_6890F4(a2, v7, isUniquelyReferenced_nonNull_native);
    *v17 = v19;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_683ACC(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  sub_ABB5C0();
  sub_ABB5D0(a2);
  v6 = sub_ABB610();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_689560(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_683BC4(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_ABB5B0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_6896C0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_683CA4(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  sub_ABB5C0();
  sub_AB93F0();
  v8 = sub_ABB610();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_ABB3C0() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_6897E0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

unint64_t sub_683DF4()
{
  result = qword_E11DD0;
  if (!qword_E11DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11DD0);
  }

  return result;
}

unint64_t sub_683E48()
{
  result = qword_E11DD8;
  if (!qword_E11DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11DD8);
  }

  return result;
}

id sub_683E9C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return a1;
  }
}

uint64_t sub_683EA8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_683F08(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_683F78()
{

  return swift_deallocObject();
}

uint64_t sub_683FC8()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_188(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_68409C()
{
  result = qword_E11DE0;
  if (!qword_E11DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11DE0);
  }

  return result;
}

void *sub_684104()
{
  v1 = v0;
  v2 = sub_AB8550();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11F48);
  v6 = *v0;
  v7 = sub_ABAD20();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

id sub_68433C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11EC0);
  v2 = *v0;
  v3 = sub_ABAD20();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_68448C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11F40);
  v2 = *v0;
  v3 = sub_ABAD20();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_6845CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E130);
  v2 = *v0;
  v3 = sub_ABAD20();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_684730()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11ED8);
  v2 = *v0;
  v3 = sub_ABAD20();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_684870()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11EB8);
  v2 = *v0;
  v3 = sub_ABAD20();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_6849CC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E1B8);
  result = sub_ABAD30();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_ABB5C0();
      ActionType.rawValue.getter(v15);
      sub_AB93F0();

      result = sub_ABB610();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_684C08()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11EC8);
  result = sub_ABAD30();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_17:
      v18 = *(*(v2 + 48) + (v15 | (v5 << 6)));
      sub_ABB5C0();
      sub_AB93F0();

      result = sub_ABB610();
      v11 = -1 << *(v4 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v10 + 8 * (v12 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v11) >> 6;
        while (++v13 != v20 || (v19 & 1) == 0)
        {
          v21 = v13 == v20;
          if (v13 == v20)
          {
            v13 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v13);
          if (v22 != -1)
          {
            v14 = __clz(__rbit64(~v22)) + (v13 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v10 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v4 + 48) + v14) = v18;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_27;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_684FB4()
{
  v1 = v0;
  v32 = sub_AB8550();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11F48);
  v6 = sub_ABAD30();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_68D6D4(&qword_E10CF8, &type metadata accessor for AudioVariant);
      result = sub_AB90D0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_6852D0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11EC0);
  result = sub_ABAD30();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = v2 + 56;
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_AB92A0();
      sub_ABB5C0();
      v17 = v16;
      sub_AB93F0();
      v18 = sub_ABB610();

      v19 = -1 << *(v4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v17;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v26;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_685524()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11F40);
  result = sub_ABAD30();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_ABB5C0();
      sub_ABB5D0(v15);
      result = sub_ABB610();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_685744()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E130);
  result = sub_ABAD30();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v2;
    v5 = 0;
    v6 = v2 + 56;
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v25 = (v9 - 1) & v9;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_AB5460();
      sub_68D6D4(&qword_E0E138, &type metadata accessor for AnyCancellable);

      result = sub_AB90D0();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v24;
      v9 = v25;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v25 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_6859BC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E118);
  v3 = sub_ABAD30();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    while (v8)
    {
      v17 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_17:
      v20 = *(*(v2 + 48) + (v17 | (v5 << 6)));
      sub_ABB5C0();
      sub_AB93F0();

      v12 = sub_ABB610();
      v13 = -1 << *(v4 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v10 + 8 * (v14 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v14) & ~*(v10 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        do
        {
          if (++v15 == v22 && (v21 & 1) != 0)
          {
            goto LABEL_29;
          }

          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v15);
        }

        while (v24 == -1);
        v16 = __clz(__rbit64(~v24)) + (v15 << 6);
      }

      *(v10 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v4 + 48) + v16) = v20;
      ++*(v4 + 16);
    }

    v18 = v5;
    while (1)
    {
      v5 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        JUMPOUT(0x685D64);
      }

      if (v5 >= v9)
      {
        break;
      }

      v19 = *(v2 + 56 + 8 * v5);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v8 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v1 = v0;
  }

  else
  {
  }

  *v1 = v4;
  return result;
}

uint64_t sub_685D98()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E0F8);
  result = sub_ABAD30();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_ABB5C0();
      sub_ABB5D0(v15);
      result = sub_ABB610();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_685FB8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11ED8);
  result = sub_ABAD30();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_ABB5B0();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_6861A8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11EB8);
  result = sub_ABAD30();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_ABB5C0();

      sub_AB93F0();
      result = sub_ABB610();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_6863E0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E1B8);
  result = sub_ABAD30();
  v4 = result;
  if (*(v2 + 16))
  {
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_ABB5C0();
      ActionType.rawValue.getter(v16);
      sub_AB93F0();

      result = sub_ABB610();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_68664C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11EC8);
  result = sub_ABAD30();
  v4 = result;
  if (*(v2 + 16))
  {
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
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v2 + 48) + (v16 | (v5 << 6)));
      sub_ABB5C0();
      sub_AB93F0();

      result = sub_ABB610();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + v15) = v19;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v10)
      {
        break;
      }

      v18 = v6[v5];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_686A28()
{
  v1 = v0;
  v35 = sub_AB8550();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11F48);
  result = sub_ABAD30();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_68D6D4(&qword_E10CF8, &type metadata accessor for AudioVariant);
      result = sub_AB90D0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_686D84()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11EC0);
  result = sub_ABAD30();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_AB92A0();
      sub_ABB5C0();
      sub_AB93F0();
      v17 = sub_ABB610();

      v18 = -1 << *(v4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero(v6, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v26;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_687000()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11F40);
  result = sub_ABAD30();
  v4 = result;
  if (*(v2 + 16))
  {
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_ABB5C0();
      sub_ABB5D0(v16);
      result = sub_ABB610();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_687250()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E130);
  result = sub_ABAD30();
  v4 = result;
  if (*(v2 + 16))
  {
    v25 = v2;
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_AB5460();
      sub_68D6D4(&qword_E0E138, &type metadata accessor for AnyCancellable);
      result = sub_AB90D0();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v25;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero(v6, ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_6874E4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E118);
  v3 = sub_ABAD30();
  v4 = v3;
  if (*(v2 + 16))
  {
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
    v11 = v3 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v20 = *(*(v2 + 48) + (v17 | (v5 << 6)));
      sub_ABB5C0();
      sub_AB93F0();

      v12 = sub_ABB610();
      v13 = -1 << *(v4 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        do
        {
          if (++v15 == v22 && (v21 & 1) != 0)
          {
            goto LABEL_31;
          }

          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v15);
        }

        while (v24 == -1);
        v16 = __clz(__rbit64(~v24)) + (v15 << 6);
      }

      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v4 + 48) + v16) = v20;
      ++*(v4 + 16);
    }

    v18 = v5;
    while (1)
    {
      v5 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        JUMPOUT(0x6878BCLL);
      }

      if (v5 >= v10)
      {
        break;
      }

      v19 = v6[v5];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_6878F0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E0F8);
  result = sub_ABAD30();
  v4 = result;
  if (*(v2 + 16))
  {
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_ABB5C0();
      sub_ABB5D0(v16);
      result = sub_ABB610();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_687B40()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11ED8);
  result = sub_ABAD30();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_ABB5B0();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_687D64()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11EB8);
  result = sub_ABAD30();
  v4 = result;
  if (*(v2 + 16))
  {
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
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_ABB5C0();
      sub_AB93F0();
      result = sub_ABB610();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_687FC4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E130);
    v2 = sub_ABAD40();
    v14 = v2;
    sub_ABAC10();
    if (sub_ABAC90())
    {
      sub_AB5460();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_687250();
        }

        v2 = v14;
        sub_68D6D4(&qword_E0E138, &type metadata accessor for AnyCancellable);
        result = sub_AB90D0();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_ABAC90());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

unint64_t sub_6881F8(uint64_t a1, uint64_t a2)
{
  sub_AB5460();
  sub_68D6D4(&qword_E0E138, &type metadata accessor for AnyCancellable);
  sub_AB90D0();
  result = sub_ABABF0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_6882E0(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_6863E0();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_2660C(&qword_E0E1B8);
      goto LABEL_16;
    }

    sub_6849CC();
  }

  v9 = *v3;
  sub_ABB5C0();
  ActionType.rawValue.getter(v6);
  sub_AB93F0();

  result = sub_ABB610();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = ActionType.rawValue.getter(*(*(v9 + 48) + a2));
      v14 = v13;
      if (v12 == ActionType.rawValue.getter(v6) && v14 == v15)
      {
        goto LABEL_19;
      }

      v17 = sub_ABB3C0();

      if (v17)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v6;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_ABB4B0();
  __break(1u);
  return result;
}

Swift::Int sub_6884C8(Swift::Int result, unint64_t a2, char a3)
{
  v36 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_84;
  }

  if (a3)
  {
    sub_68664C();
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_2660C(&qword_E11EC8);
      goto LABEL_84;
    }

    sub_684C08();
  }

  v7 = *v3;
  sub_ABB5C0();
  ApplicationCapabilities.Service.rawValue.getter(v36);
  sub_AB93F0();

  result = sub_ABB610();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v35 = ~v8;
    v9 = 0xEB00000000736F65;
    v10 = 0x8000000000B5B970;
    do
    {
      v11 = *(*(v7 + 48) + a2);
      if (v11 <= 4)
      {
        if (v11 == 3)
        {
          v14 = 0x6C6169636F73;
        }

        else
        {
          v14 = 0x6F69646172;
        }

        if (v11 == 3)
        {
          v15 = 0xE600000000000000;
        }

        else
        {
          v15 = 0xE500000000000000;
        }

        if (v11 == 2)
        {
          v14 = 0xD000000000000013;
          v15 = v10;
        }

        v16 = *(*(v7 + 48) + a2) ? 0x646956636973756DLL : 0x636973756DLL;
        v17 = *(*(v7 + 48) + a2) ? v9 : 0xE500000000000000;
        v12 = *(*(v7 + 48) + a2) <= 1u ? v16 : v14;
        v13 = *(*(v7 + 48) + a2) <= 1u ? v17 : v15;
      }

      else if (*(*(v7 + 48) + a2) > 7u)
      {
        if (v11 == 8)
        {
          v12 = 0xD000000000000013;
          v13 = 0x8000000000B5B9B0;
        }

        else if (v11 == 9)
        {
          v12 = 0xD000000000000011;
          v13 = 0x8000000000B5B990;
        }

        else
        {
          v12 = 0x6C62616E45696C6DLL;
          v13 = 0xEA00000000006465;
        }
      }

      else if (v11 == 5)
      {
        v13 = 0xE600000000000000;
        v12 = 0x73656E757469;
      }

      else if (v11 == 6)
      {
        v12 = 0x74634170756F7267;
        v13 = 0xED00007974697669;
      }

      else
      {
        v12 = 0x746963696C707865;
        v13 = 0xEF746E65746E6F43;
      }

      v18 = 0xD000000000000011;
      if (v36 != 9)
      {
        v18 = 0x6C62616E45696C6DLL;
      }

      v19 = 0xEA00000000006465;
      if (v36 == 9)
      {
        v19 = 0x8000000000B5B990;
      }

      if (v36 == 8)
      {
        v18 = 0xD000000000000013;
        v19 = 0x8000000000B5B9B0;
      }

      v20 = 0x746963696C707865;
      if (v36 == 6)
      {
        v20 = 0x74634170756F7267;
      }

      v21 = 0xEF746E65746E6F43;
      if (v36 == 6)
      {
        v21 = 0xED00007974697669;
      }

      if (v36 == 5)
      {
        v20 = 0x73656E757469;
        v21 = 0xE600000000000000;
      }

      if (v36 <= 7u)
      {
        v18 = v20;
        v19 = v21;
      }

      if (v36 == 3)
      {
        v22 = 0x6C6169636F73;
      }

      else
      {
        v22 = 0x6F69646172;
      }

      if (v36 == 3)
      {
        v23 = 0xE600000000000000;
      }

      else
      {
        v23 = 0xE500000000000000;
      }

      if (v36 == 2)
      {
        v22 = 0xD000000000000013;
      }

      v24 = v10;
      if (v36 == 2)
      {
        v23 = v10;
      }

      if (v36)
      {
        v25 = 0x646956636973756DLL;
      }

      else
      {
        v25 = 0x636973756DLL;
      }

      v26 = v9;
      if (!v36)
      {
        v9 = 0xE500000000000000;
      }

      if (v36 <= 1u)
      {
        v22 = v25;
        v23 = v9;
      }

      v27 = v36 <= 4u ? v22 : v18;
      v28 = v36 <= 4u ? v23 : v19;
      if (v12 == v27 && v13 == v28)
      {
        goto LABEL_87;
      }

      v29 = sub_ABB3C0();

      if (v29)
      {
        goto LABEL_88;
      }

      a2 = (a2 + 1) & v35;
      v9 = v26;
      v10 = v24;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_84:
  v30 = *v34;
  *(*v34 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v30 + 48) + a2) = v36;
  v31 = *(v30 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (!v32)
  {
    *(v30 + 16) = v33;
    return result;
  }

  __break(1u);
LABEL_87:

LABEL_88:
  result = sub_ABB4B0();
  __break(1u);
  return result;
}

uint64_t sub_68892C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_AB8550();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_686A28();
  }

  else
  {
    if (v11 > v10)
    {
      sub_684104();
      goto LABEL_12;
    }

    sub_684FB4();
  }

  v12 = *v3;
  sub_68D6D4(&qword_E10CF8, &type metadata accessor for AudioVariant);
  v13 = sub_AB90D0();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_68D6D4(&qword_E10D00, &type metadata accessor for AudioVariant);
      v21 = sub_AB91C0();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_ABB4B0();
  __break(1u);
  return result;
}

uint64_t sub_688BD0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_686D84();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_68433C();
      goto LABEL_16;
    }

    sub_6852D0();
  }

  v9 = *v3;
  sub_AB92A0();
  sub_ABB5C0();
  sub_AB93F0();
  v10 = sub_ABB610();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    _s3__C4NameVMa_0(0);
    do
    {
      v13 = sub_AB92A0();
      v15 = v14;
      if (v13 == sub_AB92A0() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_ABB3C0();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_ABB4B0();
  __break(1u);
  return result;
}

Swift::Int sub_688DB8(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_687000();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_68448C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_685524();
  }

  v8 = *v3;
  sub_ABB5C0();
  sub_ABB5D0(v4 & 1);
  result = sub_ABB610();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != (v4 & 1))
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4 & 1;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_ABB4B0();
  __break(1u);
  return result;
}

uint64_t sub_688F0C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_687250();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_6845CC();
      goto LABEL_12;
    }

    sub_685744();
  }

  v8 = *v3;
  sub_AB5460();
  sub_68D6D4(&qword_E0E138, &type metadata accessor for AnyCancellable);
  result = sub_AB90D0();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_68D6D4(&qword_E0E140, &type metadata accessor for AnyCancellable);
    do
    {
      result = sub_AB91C0();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_ABB4B0();
  __break(1u);
  return result;
}

Swift::Int sub_6890F4(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_6874E4();
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_2660C(&qword_E0E118);
        goto LABEL_40;
      }

      sub_6859BC();
    }

    v8 = *v3;
    sub_ABB5C0();
    Library.Menu.Identifier.rawValue.getter(v5);
    sub_AB93F0();

    result = sub_ABB610();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      while (1)
      {
        v11 = 0xD000000000000029;
        v12 = "LibraryView.Playlists";
        switch(*(*(v8 + 48) + a2))
        {
          case 1:
            v11 = 0xD000000000000025;
            v12 = "LibraryView.Artists";
            break;
          case 2:
            v11 = 0xD000000000000023;
            v12 = "LibraryView.Albums";
            break;
          case 3:
            v11 = 0xD000000000000022;
            v12 = "LibraryView.Songs";
            break;
          case 4:
            v11 = 0xD000000000000021;
            v12 = "LibraryView.MadeForYou";
            break;
          case 5:
            v11 = 0xD000000000000026;
            v12 = "LibraryView.MusicVideos";
            break;
          case 6:
            v11 = 0xD000000000000027;
            v12 = "LibraryView.Genres";
            break;
          case 7:
            v11 = 0xD000000000000022;
            v12 = "LibraryView.Compilations";
            break;
          case 8:
            v11 = 0xD000000000000028;
            v12 = "LibraryView.Composers";
            break;
          case 9:
            v11 = 0xD000000000000025;
            v12 = "LibraryView.Shows";
            break;
          case 0xA:
            v11 = 0xD000000000000021;
            v12 = "LibraryView.Downloaded";
            break;
          case 0xB:
            v11 = 0xD000000000000026;
            v12 = "LibraryView.Downloading";
            break;
          case 0xC:
            v11 = 0xD000000000000027;
            v12 = "ByPlaylistOrderAscending";
            break;
          default:
            break;
        }

        v13 = v12 | 0x8000000000000000;
        v14 = 0xD000000000000029;
        v15 = "LibraryView.Playlists";
        switch(v5)
        {
          case 1:
            v14 = 0xD000000000000025;
            v15 = "LibraryView.Artists";
            break;
          case 2:
            v14 = 0xD000000000000023;
            v15 = "LibraryView.Albums";
            break;
          case 3:
            v14 = 0xD000000000000022;
            v15 = "LibraryView.Songs";
            break;
          case 4:
            v14 = 0xD000000000000021;
            v15 = "LibraryView.MadeForYou";
            break;
          case 5:
            v14 = 0xD000000000000026;
            v15 = "LibraryView.MusicVideos";
            break;
          case 6:
            v14 = 0xD000000000000027;
            v15 = "LibraryView.Genres";
            break;
          case 7:
            v14 = 0xD000000000000022;
            v15 = "LibraryView.Compilations";
            break;
          case 8:
            v14 = 0xD000000000000028;
            v15 = "LibraryView.Composers";
            break;
          case 9:
            v14 = 0xD000000000000025;
            v15 = "LibraryView.Shows";
            break;
          case 10:
            v14 = 0xD000000000000021;
            v15 = "LibraryView.Downloaded";
            break;
          case 11:
            v14 = 0xD000000000000026;
            v15 = "LibraryView.Downloading";
            break;
          case 12:
            v14 = 0xD000000000000027;
            v15 = "ByPlaylistOrderAscending";
            break;
          default:
            break;
        }

        if (v11 == v14 && v13 == (v15 | 0x8000000000000000))
        {
          break;
        }

        v16 = sub_ABB3C0();

        if (v16)
        {
          goto LABEL_44;
        }

        a2 = (a2 + 1) & v10;
        if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

LABEL_43:

LABEL_44:
      sub_ABB4B0();
      __break(1u);
      JUMPOUT(0x6894F8);
    }
  }

LABEL_40:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v5;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
    goto LABEL_43;
  }

  *(v17 + 16) = v20;
  return result;
}

Swift::Int sub_689560(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_6878F0();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2660C(&qword_E0E0F8);
      a2 = v7;
      goto LABEL_12;
    }

    sub_685D98();
  }

  v8 = *v3;
  sub_ABB5C0();
  sub_ABB5D0(v4);
  result = sub_ABB610();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_ABB4B0();
  __break(1u);
  return result;
}

uint64_t sub_6896C0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_687B40();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_684730();
      a2 = v7;
      goto LABEL_12;
    }

    sub_685FB8();
  }

  v8 = *v3;
  result = sub_ABB5B0();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_ABB4B0();
  __break(1u);
  return result;
}

Swift::Int sub_6897E0(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_687D64();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_684870();
      goto LABEL_16;
    }

    sub_6861A8();
  }

  v10 = *v4;
  sub_ABB5C0();
  sub_AB93F0();
  result = sub_ABB610();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_ABB3C0();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_ABB4B0();
  __break(1u);
  return result;
}

void *sub_689960(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v9 = sub_68B9B0(v8, a2, a3, a5);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_689A14(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_AB8550();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11F48);
  result = sub_ABAD50();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_68D6D4(&qword_E10CF8, &type metadata accessor for AudioVariant);
    result = sub_AB90D0();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

_BYTE *sub_689D3C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
    goto LABEL_6;
  }

  v5 = a3;
  if (*(a4 + 16) != a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E118);
    v8 = sub_ABAD50();
    v9 = v8;
    if (a2 < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = *a1;
    }

    v12 = 0;
    v13 = v8 + 56;
    while (1)
    {
      if (v10)
      {
        v14 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        goto LABEL_17;
      }

      v15 = v12;
      do
      {
        v12 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          JUMPOUT(0x68A0CCLL);
        }

        if (v12 >= a2)
        {
          goto LABEL_6;
        }

        v16 = a1[v12];
        ++v15;
      }

      while (!v16);
      v14 = __clz(__rbit64(v16));
      v10 = (v16 - 1) & v16;
LABEL_17:
      v17 = *(*(v4 + 48) + (v14 | (v12 << 6)));
      sub_ABB5C0();
      sub_AB93F0();

      v18 = sub_ABB610();
      v19 = -1 << v9[32];
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) != 0)
      {
        v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = 0;
        v24 = (63 - v19) >> 6;
        do
        {
          if (++v21 == v24 && (v23 & 1) != 0)
          {
            goto LABEL_31;
          }

          v25 = v21 == v24;
          if (v21 == v24)
          {
            v21 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v21);
        }

        while (v26 == -1);
        v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      }

      *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v9 + 6) + v22) = v17;
      ++*(v9 + 2);
      if (__OFSUB__(v5--, 1))
      {
        goto LABEL_32;
      }

      if (!v5)
      {
LABEL_6:

        return v9;
      }
    }
  }

  return v4;
}

uint64_t sub_68A100(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_613C30(*(*(v2 + 48) + (v10 | (v9 << 6))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

_BYTE *sub_68A1F4(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  if (*(a2 + 16))
  {
    v6 = a1;
    v58 = 0;
    v7 = *(a1 + 56);
    v78 = a1 + 56;
    v8 = -1 << *(a1 + 32);
    v77 = ~v8;
    if (-v8 < 64)
    {
      v9 = ~(-1 << -v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & v7;
    v63 = (63 - v8) >> 6;
    v81 = (a2 + 56);

    v79 = 0;
    v76 = "LibraryView.Artists";
    v75 = "LibraryView.Albums";
    v74 = "LibraryView.Songs";
    v73 = "LibraryView.MadeForYou";
    v72 = "LibraryView.MusicVideos";
    v71 = "LibraryView.Genres";
    v70 = "LibraryView.Compilations";
    v69 = "LibraryView.Composers";
    v68 = "LibraryView.Shows";
    v67 = "LibraryView.Downloaded";
    v66 = "LibraryView.Downloading";
    v65 = "ByPlaylistOrderAscending";
    do
    {
LABEL_6:
      if (!v10)
      {
        v12 = v78;
        v13 = v79;
        while (1)
        {
          v14 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v14 >= v63)
          {
            goto LABEL_105;
          }

          v10 = *(v78 + 8 * v14);
          ++v13;
          if (v10)
          {
            v79 = v14;
            goto LABEL_13;
          }
        }

LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      v12 = v78;
LABEL_13:
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v16 = *(*(v6 + 48) + (v15 | (v79 << 6)));
      v83 = v6;
      v84 = v12;
      v85 = v77;
      v86 = v79;
      v87 = v10;
      sub_ABB5C0();
      v80 = v16;
      Library.Menu.Identifier.rawValue.getter(v16);
      sub_AB93F0();

      v17 = sub_ABB610();
      v18 = -1 << v5[32];
      v2 = v17 & ~v18;
      v3 = v2 >> 6;
      v4 = 1 << v2;
    }

    while (((1 << v2) & v81[v2 >> 6]) == 0);
    v64 = v6;
    v19 = ~v18;
    while (1)
    {
      v20 = 0xD000000000000029;
      v21 = "LibraryView.Playlists";
      switch(*(*(v5 + 6) + v2))
      {
        case 1:
          v20 = 0xD000000000000025;
          v22 = &v99;
          goto LABEL_28;
        case 2:
          v20 = 0xD000000000000023;
          v22 = &v98;
          goto LABEL_28;
        case 3:
          v20 = 0xD000000000000022;
          v22 = &v97;
          goto LABEL_28;
        case 4:
          v20 = 0xD000000000000021;
          v22 = &v96;
          goto LABEL_28;
        case 5:
          v20 = 0xD000000000000026;
          v22 = &v95;
          goto LABEL_28;
        case 6:
          v20 = 0xD000000000000027;
          v22 = &v94;
          goto LABEL_28;
        case 7:
          v20 = 0xD000000000000022;
          v22 = &v93;
          goto LABEL_28;
        case 8:
          v20 = 0xD000000000000028;
          v22 = &v92;
          goto LABEL_28;
        case 9:
          v20 = 0xD000000000000025;
          v22 = &v91;
          goto LABEL_28;
        case 0xA:
          v20 = 0xD000000000000021;
          v22 = &v90;
          goto LABEL_28;
        case 0xB:
          v20 = 0xD000000000000026;
          v22 = &v89;
          goto LABEL_28;
        case 0xC:
          v20 = 0xD000000000000027;
          v22 = &v88;
LABEL_28:
          v21 = *(v22 - 32);
          break;
        default:
          break;
      }

      v23 = v21 | 0x8000000000000000;
      v24 = 0xD000000000000029;
      v25 = "LibraryView.Playlists";
      switch(v80)
      {
        case 1:
          v24 = 0xD000000000000025;
          v26 = &v99;
          goto LABEL_42;
        case 2:
          v24 = 0xD000000000000023;
          v26 = &v98;
          goto LABEL_42;
        case 3:
          v24 = 0xD000000000000022;
          v26 = &v97;
          goto LABEL_42;
        case 4:
          v24 = 0xD000000000000021;
          v26 = &v96;
          goto LABEL_42;
        case 5:
          v24 = 0xD000000000000026;
          v26 = &v95;
          goto LABEL_42;
        case 6:
          v24 = 0xD000000000000027;
          v26 = &v94;
          goto LABEL_42;
        case 7:
          v24 = 0xD000000000000022;
          v26 = &v93;
          goto LABEL_42;
        case 8:
          v24 = 0xD000000000000028;
          v26 = &v92;
          goto LABEL_42;
        case 9:
          v24 = 0xD000000000000025;
          v26 = &v91;
          goto LABEL_42;
        case 10:
          v24 = 0xD000000000000021;
          v26 = &v90;
          goto LABEL_42;
        case 11:
          v24 = 0xD000000000000026;
          v26 = &v89;
          goto LABEL_42;
        case 12:
          v24 = 0xD000000000000027;
          v26 = &v88;
LABEL_42:
          v25 = *(v26 - 32);
          break;
        default:
          break;
      }

      if (v20 == v24 && v23 == (v25 | 0x8000000000000000))
      {
        break;
      }

      v27 = sub_ABB3C0();

      if (v27)
      {
        goto LABEL_51;
      }

      v2 = (v2 + 1) & v19;
      v3 = v2 >> 6;
      v4 = 1 << v2;
      if ((v81[v2 >> 6] & (1 << v2)) == 0)
      {
        v6 = v64;
        goto LABEL_6;
      }
    }

LABEL_51:
    v29 = v5[32];
    v59 = ((1 << v29) + 63) >> 6;
    v11 = 8 * v59;
    if ((v29 & 0x3Fu) <= 0xD)
    {
      goto LABEL_52;
    }

LABEL_109:
    v53 = v11;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v54 = swift_slowAlloc();
      memcpy(v54, v81, v53);
      v55 = v58;
      v56 = sub_68ACCC(v54, v59, v5, v2, &v83);

      if (v55)
      {

        __break(1u);
        JUMPOUT(0x68ABFCLL);
      }

      v5 = v56;
      goto LABEL_105;
    }

LABEL_52:
    v60 = &v57;
    __chkstk_darwin(v28);
    v31 = &v57 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v31, v81, v30);
    v32 = *&v31[8 * v3] & ~v4;
    v33 = *(v5 + 2);
    v62 = v31;
    *&v31[8 * v3] = v32;
    v34 = v33 - 1;
LABEL_53:
    v61 = v34;
LABEL_54:
    while (v10)
    {
      v35 = v78;
LABEL_61:
      v38 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v3 = *(*(v64 + 48) + (v38 | (v79 << 6)));
      v83 = v64;
      v84 = v35;
      v85 = v77;
      v86 = v79;
      v87 = v10;
      sub_ABB5C0();
      Library.Menu.Identifier.rawValue.getter(v3);
      sub_AB93F0();

      v2 = &v82;
      v39 = sub_ABB610();
      v40 = -1 << v5[32];
      v41 = v39 & ~v40;
      v4 = v41 >> 6;
      v42 = 1 << v41;
      if (((1 << v41) & v81[v41 >> 6]) != 0)
      {
        v80 = ~v40;
        while (1)
        {
          v43 = 0xD000000000000029;
          v44 = "LibraryView.Playlists";
          switch(*(*(v5 + 6) + v41))
          {
            case 1:
              v43 = 0xD000000000000025;
              v45 = &v99;
              goto LABEL_76;
            case 2:
              v43 = 0xD000000000000023;
              v45 = &v98;
              goto LABEL_76;
            case 3:
              v43 = 0xD000000000000022;
              v45 = &v97;
              goto LABEL_76;
            case 4:
              v43 = 0xD000000000000021;
              v45 = &v96;
              goto LABEL_76;
            case 5:
              v43 = 0xD000000000000026;
              v45 = &v95;
              goto LABEL_76;
            case 6:
              v43 = 0xD000000000000027;
              v45 = &v94;
              goto LABEL_76;
            case 7:
              v43 = 0xD000000000000022;
              v45 = &v93;
              goto LABEL_76;
            case 8:
              v43 = 0xD000000000000028;
              v45 = &v92;
              goto LABEL_76;
            case 9:
              v43 = 0xD000000000000025;
              v45 = &v91;
              goto LABEL_76;
            case 0xA:
              v43 = 0xD000000000000021;
              v45 = &v90;
              goto LABEL_76;
            case 0xB:
              v43 = 0xD000000000000026;
              v45 = &v89;
              goto LABEL_76;
            case 0xC:
              v43 = 0xD000000000000027;
              v45 = &v88;
LABEL_76:
              v44 = *(v45 - 32);
              break;
            default:
              break;
          }

          v2 = v44 | 0x8000000000000000;
          v46 = 0xD000000000000029;
          v47 = "LibraryView.Playlists";
          switch(v3)
          {
            case 1uLL:
              v46 = 0xD000000000000025;
              v48 = &v99;
              goto LABEL_90;
            case 2uLL:
              v46 = 0xD000000000000023;
              v48 = &v98;
              goto LABEL_90;
            case 3uLL:
              v46 = 0xD000000000000022;
              v48 = &v97;
              goto LABEL_90;
            case 4uLL:
              v46 = 0xD000000000000021;
              v48 = &v96;
              goto LABEL_90;
            case 5uLL:
              v46 = 0xD000000000000026;
              v48 = &v95;
              goto LABEL_90;
            case 6uLL:
              v46 = 0xD000000000000027;
              v48 = &v94;
              goto LABEL_90;
            case 7uLL:
              v46 = 0xD000000000000022;
              v48 = &v93;
              goto LABEL_90;
            case 8uLL:
              v46 = 0xD000000000000028;
              v48 = &v92;
              goto LABEL_90;
            case 9uLL:
              v46 = 0xD000000000000025;
              v48 = &v91;
              goto LABEL_90;
            case 0xAuLL:
              v46 = 0xD000000000000021;
              v48 = &v90;
              goto LABEL_90;
            case 0xBuLL:
              v46 = 0xD000000000000026;
              v48 = &v89;
              goto LABEL_90;
            case 0xCuLL:
              v46 = 0xD000000000000027;
              v48 = &v88;
LABEL_90:
              v47 = *(v48 - 32);
              break;
            default:
              break;
          }

          if (v43 == v46 && v2 == (v47 | 0x8000000000000000))
          {
            break;
          }

          v49 = sub_ABB3C0();

          if (v49)
          {
            goto LABEL_97;
          }

          v41 = (v41 + 1) & v80;
          v4 = v41 >> 6;
          v42 = 1 << v41;
          if ((v81[v41 >> 6] & (1 << v41)) == 0)
          {
            goto LABEL_54;
          }
        }

LABEL_97:
        v50 = v62[v4];
        v62[v4] = v50 & ~v42;
        if ((v50 & v42) != 0)
        {
          v34 = v61 - 1;
          if (__OFSUB__(v61, 1))
          {
            __break(1u);
          }

          if (v61 == 1)
          {

            v5 = &_swiftEmptySetSingleton;
            goto LABEL_105;
          }

          goto LABEL_53;
        }
      }
    }

    v35 = v78;
    v36 = v79;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        goto LABEL_108;
      }

      if (v37 >= v63)
      {
        break;
      }

      v10 = *(v78 + 8 * v37);
      ++v36;
      if (v10)
      {
        v79 = v37;
        goto LABEL_61;
      }
    }

    if (v63 <= v79 + 1)
    {
      v51 = v79 + 1;
    }

    else
    {
      v51 = v63;
    }

    v83 = v64;
    v84 = v78;
    v85 = v77;
    v86 = v51 - 1;
    v87 = 0;
    v5 = sub_689D3C(v62, v59, v61, v5);
LABEL_105:
    sub_2BB88();
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v5;
}