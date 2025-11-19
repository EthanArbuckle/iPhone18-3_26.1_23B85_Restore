uint64_t sub_1000FE800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1004BDBA4();
  sub_1004BBF84();
  v6 = sub_1004BDBF4();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1004BD9C4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000FE8F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004BB214();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10010A7D0(&qword_100603EA8, &type metadata accessor for AudioVariant), v7 = sub_1004BBCD4(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_10010A7D0(&qword_100603EB0, &type metadata accessor for AudioVariant);
      v15 = sub_1004BBD84();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1000FEB10(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1004BDBA4(), Library.Menu.Identifier.rawValue.getter(a1), sub_1004BBF84(), , v4 = sub_1004BDBF4(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = 0xD000000000000029;
      v9 = "orites";
      switch(*(*(a2 + 48) + v6))
      {
        case 1:
          v8 = 0xD000000000000025;
          v9 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v8 = 0xD000000000000023;
          v9 = "LibraryView.Playlists";
          break;
        case 3:
          v8 = 0xD000000000000022;
          v9 = "LibraryView.Artists";
          break;
        case 4:
          v8 = 0xD000000000000021;
          v9 = "LibraryView.Albums";
          break;
        case 5:
          v8 = 0xD000000000000026;
          v9 = "LibraryView.Songs";
          break;
        case 6:
          v8 = 0xD000000000000027;
          v9 = "LibraryView.MadeForYou";
          break;
        case 7:
          v8 = 0xD000000000000022;
          v9 = "LibraryView.MusicVideos";
          break;
        case 8:
          v8 = 0xD000000000000028;
          v9 = "LibraryView.Genres";
          break;
        case 9:
          v8 = 0xD000000000000025;
          v9 = "LibraryView.Compilations";
          break;
        case 0xA:
          v8 = 0xD000000000000021;
          v9 = "LibraryView.Composers";
          break;
        case 0xB:
          v8 = 0xD000000000000026;
          v9 = "LibraryView.Shows";
          break;
        case 0xC:
          v8 = 0xD000000000000027;
          v9 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      v10 = v9 | 0x8000000000000000;
      v11 = 0xD000000000000029;
      v12 = "orites";
      switch(a1)
      {
        case 1:
          v11 = 0xD000000000000025;
          v12 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v11 = 0xD000000000000023;
          v12 = "LibraryView.Playlists";
          break;
        case 3:
          v11 = 0xD000000000000022;
          v12 = "LibraryView.Artists";
          break;
        case 4:
          v11 = 0xD000000000000021;
          v12 = "LibraryView.Albums";
          break;
        case 5:
          v11 = 0xD000000000000026;
          v12 = "LibraryView.Songs";
          break;
        case 6:
          v11 = 0xD000000000000027;
          v12 = "LibraryView.MadeForYou";
          break;
        case 7:
          v11 = 0xD000000000000022;
          v12 = "LibraryView.MusicVideos";
          break;
        case 8:
          v11 = 0xD000000000000028;
          v12 = "LibraryView.Genres";
          break;
        case 9:
          v11 = 0xD000000000000025;
          v12 = "LibraryView.Compilations";
          break;
        case 10:
          v11 = 0xD000000000000021;
          v12 = "LibraryView.Composers";
          break;
        case 11:
          v11 = 0xD000000000000026;
          v12 = "LibraryView.Shows";
          break;
        case 12:
          v11 = 0xD000000000000027;
          v12 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      if (v8 == v11 && v10 == (v12 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_1004BD9C4();

      if ((v13 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v13 & 1;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1000FEEF4(int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1004BDBA4();
  SortOptions.ContentType.identifier.getter(a1);
  sub_1004BBF84();

  v4 = sub_1004BDBF4();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (1)
  {
    v8 = *(*(a2 + 48) + v6);
    v9 = v8 >> 6;
    if (v8 >> 6 > 1)
    {
      break;
    }

    if (v9)
    {
      if ((a1 & 0xC0) == 0x40)
      {
        if (((v8 ^ a1) & 0x3F) == 0)
        {
          return 1;
        }

        goto LABEL_5;
      }
    }

    else if (a1 < 0x40u)
    {
      if (((v8 ^ a1) & 1) == 0)
      {
        return 1;
      }

      goto LABEL_5;
    }

LABEL_18:
    sub_1004BDBA4();
    sub_1004BBF84();

    v10 = sub_1004BDBF4();
    sub_1004BDBA4();
    sub_1004BBF84();

    if (v10 == sub_1004BDBF4())
    {
      return 1;
    }

LABEL_5:
    v6 = (v6 + 1) & v7;
    if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  if (v9 == 2 || v8 != 192 || a1 != 192)
  {
    goto LABEL_18;
  }

  return 1;
}

BOOL sub_1000FF478(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_1004BDBA4();
  sub_1004BDBB4(v3);
  v4 = sub_1004BDBF4();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t Playlist.hasActiveCollaboration.getter()
{
  v0 = sub_100003ABC(&qword_100603BF0);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - v1;
  v3 = sub_100003ABC(&qword_100603BF8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  sub_1004BB854();
  v9 = sub_1004BB844();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v2, 1, v9) == 1)
  {
    sub_100007214(v2, &qword_100603BF0);
    v11 = sub_1004BB794();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
LABEL_13:
    v17 = 0;
    goto LABEL_14;
  }

  sub_1004BB814();
  (*(v10 + 8))(v2, v9);
  v12 = sub_1004BB794();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    goto LABEL_13;
  }

  sub_10000F778(v8, v6, &qword_100603BF8);
  v14 = (*(v13 + 88))(v6, v12);
  if (v14 != enum case for Playlist.Collaborator.Status.host(_:) && v14 != enum case for Playlist.Collaborator.Status.joined(_:) && v14 != enum case for Playlist.Collaborator.Status.pending(_:))
  {
    (*(v13 + 8))(v6, v12);
    goto LABEL_13;
  }

  v17 = 1;
LABEL_14:
  sub_100007214(v8, &qword_100603BF8);
  return v17;
}

BOOL Playlist.Collaboration.hasPendingCollaborators.getter()
{
  v0 = sub_100003ABC(&qword_100603C00);
  __chkstk_darwin(v0 - 8);
  v2 = v7 - v1;
  sub_1004BB824();
  v3 = sub_100003ABC(&qword_100603C08);
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_100007214(v2, &qword_100603C00);
    return 0;
  }

  else
  {
    sub_1000206D4(&unk_100603C10, &qword_100603C08);
    sub_1004BC724();
    sub_1004BC764();
    v5 = v7[1] != v7[0];
    (*(v4 + 8))(v2, v3);
  }

  return v5;
}

uint64_t static Collaboration.Setup.contextualImageName(active:hasPendingCollaborators:)(char a1)
{
  if (a1)
  {
    return 0x322E6E6F73726570;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1000FFA0C()
{
  type metadata accessor for Collaboration.ArtworkCachingReference();
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000027;
  *(v0 + 24) = 0x80000001004FC220;
  v1 = objc_opt_self();
  v2 = sub_1004BBE24();

  [v1 setCacheLimit:100 forCacheIdentifier:v2 cacheReference:v0];

  static Collaboration.artworkCaching = v0;
  return result;
}

uint64_t *Collaboration.artworkCaching.unsafeMutableAddressor()
{
  if (qword_1005FFEE8 != -1)
  {
    swift_once();
  }

  return &static Collaboration.artworkCaching;
}

uint64_t static Collaboration.artworkCaching.getter()
{
  if (qword_1005FFEE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static Collaboration.artworkCaching.setter(uint64_t a1)
{
  if (qword_1005FFEE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Collaboration.artworkCaching = a1;
}

uint64_t (*static Collaboration.artworkCaching.modify())()
{
  if (qword_1005FFEE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t static Collaboration.Setup.imageName(active:hasPendingCollaborators:)(char a1, char a2)
{
  v2 = 0x322E6E6F73726570;
  v3 = 0xD000000000000013;
  if ((a2 & 1) == 0)
  {
    v3 = 0x322E6E6F73726570;
  }

  if (a2 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t Collaboration.Error.errorDescription.getter(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    v7 = 0;
    if (a3)
    {
      sub_1004BD404(17);
      v4._countAndFlagsBits = 0x74694B636973754DLL;
      v4._object = 0xEF3D726F72726520;
    }

    else
    {
      sub_1004BD404(25);
      v4._object = 0x80000001004FFD60;
      v4._countAndFlagsBits = 0xD000000000000017;
    }

    sub_1004BC024(v4);
    sub_100003ABC(&qword_100604C30);
    sub_1004BD5C4();
    return v7;
  }

  if (a3 == 2)
  {
    sub_1004BD404(38);

    v7 = 0xD000000000000024;
    v8._countAndFlagsBits = a1;
    v8._object = a2;
    sub_1004BC024(v8);
    return v7;
  }

  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 ^ 5 | a2)
      {
        return 0xD000000000000019;
      }

      else
      {
        return 0xD000000000000016;
      }
    }

    else if (a1 ^ 7 | a2)
    {
      if (a1 ^ 8 | a2)
      {
        return 0x73736F7020746F4ELL;
      }

      else
      {
        return 0xD000000000000032;
      }
    }

    else
    {
      return 0xD00000000000001DLL;
    }
  }

  else if (a1 <= 1)
  {
    if (a1 | a2)
    {
      return 0xD000000000000017;
    }

    else
    {
      return 0x636120726F6E694DLL;
    }
  }

  else if (a1 ^ 2 | a2)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000024;
  }
}

uint64_t static Collaboration.Error.tapToRadarAlert()()
{
  v0 = sub_100003ABC(&qword_1006014F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v38 - v1;
  v3 = sub_1004B6D14();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004B6B04();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v38 - v11;
  v13 = sub_100003ABC(&qword_100600DE0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v14);
  v19 = &v38 - v18;
  if (qword_1006006D8 != -1)
  {
    result = swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    v38 = v6;
    v39 = v4;
    v40 = v3;
    v41 = v2;
    v20 = sub_10003D264(_swiftEmptyArrayStorage);
    sub_100144204(0xD00000000000001FLL, 0x80000001004FFE10, 0xD000000000000032, 0x80000001004FFE30, _swiftEmptyArrayStorage, v20, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v19, 1u);

    sub_10000F778(v19, v16, &qword_100600DE0);
    if ((*(v8 + 48))(v16, 1, v7) == 1)
    {
      sub_100007214(v19, &qword_100600DE0);
      v21 = v16;
    }

    else
    {
      v22 = *(v8 + 32);
      v22(v12, v16, v7);
      v23 = [objc_opt_self() sharedApplication];
      sub_1004B6A44(v24);
      v26 = v25;
      v27 = [v23 canOpenURL:v25];

      if (v27)
      {
        v28 = v42;
        (*(v8 + 16))(v42, v12, v7);
        v29 = (*(v8 + 80) + 16) & ~*(v8 + 80);
        v30 = swift_allocObject();
        v22((v30 + v29), v28, v7);
        v31 = v38;
        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v32 = sub_1004B6CE4();
        v34 = v33;
        (*(v39 + 8))(v31, v40);
        (*(v8 + 8))(v12, v7);
        sub_100007214(v19, &qword_100600DE0);
        v35 = sub_1004BC4B4();
        v36 = v41;
        (*(*(v35 - 8) + 56))(v41, 1, 1, v35);
        v37 = swift_allocObject();
        *(v37 + 16) = 0;
        *(v37 + 24) = 0;
        *(v37 + 32) = v32;
        *(v37 + 40) = v34;
        strcpy((v37 + 48), "File a Radar");
        *(v37 + 61) = 0;
        *(v37 + 62) = -5120;
        *(v37 + 64) = 2;
        *(v37 + 65) = *v43;
        *(v37 + 68) = *&v43[3];
        *(v37 + 72) = &unk_1004D0880;
        *(v37 + 80) = v30;
        sub_1000FD6BC(0, 0, v36, &unk_1004CE258, v37);
      }

      (*(v8 + 8))(v12, v7);
      v21 = v19;
    }

    return sub_100007214(v21, &qword_100600DE0);
  }

  return result;
}

uint64_t sub_1001005A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0u;
  *(v4 + 80) = 0;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 32) = 0u;
  v5 = *(a4 + 40);
  if (v5)
  {
    v10 = (v5 + *v5);
    v7 = swift_task_alloc();
    *(v4 + 88) = v7;
    *v7 = v4;
    v7[1] = sub_1001006F0;

    return v10(a4, v4 + 16);
  }

  else
  {
    v9 = *(v4 + 8);

    return v9();
  }
}

uint64_t sub_1001006F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t Collaboration.Manager.__allocating_init(coordinator:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_100013414(a1, v2 + 16);
  return v2;
}

id Collaboration.Manager.participantProfile.getter()
{
  v0 = [objc_opt_self() shared];
  v1 = [v0 activeUserState];

  v2 = [v1 music];
  v3 = [v2 userProfile];

  return v3;
}

uint64_t sub_100100960()
{
  v0 = sub_1004BB8A4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003ABC(&unk_100603F40);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  sub_1004BB8B4();
  if ((*(v1 + 48))(v6, 1, v0) == 1)
  {
    sub_100007214(v6, &unk_100603F40);
  }

  else
  {
    sub_1004BB894();
    sub_10010A7D0(&qword_100602170, &type metadata accessor for Playlist.EditableComponents);
    v7 = sub_1004BD2A4();
    v8 = *(v1 + 8);
    v8(v3, v0);
    v8(v6, v0);
    if (v7)
    {
      return [objc_opt_self() isRunningInStoreDemoMode] ^ 1;
    }
  }

  return 0;
}

id Collaboration.Manager.canCollaborate(for:)()
{
  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v13[4] = v9;
  v13[5] = v10;
  v13[6] = v11;
  v13[7] = v12;
  v13[0] = v5;
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  if ((BYTE8(v5) & 1) == 0)
  {
    v0 = 3;
    goto LABEL_10;
  }

  if (BYTE2(v13[0]) != 1)
  {
    v0 = 6;
    goto LABEL_10;
  }

  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v2 = result;
    v3 = [result isInitialImport];

    if ((v3 & 1) == 0)
    {
      return sub_100051DEC(v13);
    }

    v0 = 7;
LABEL_10:
    sub_100109E64();
    swift_allocError();
    *v4 = v0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 3;
    swift_willThrow();
    return sub_100051DEC(v13);
  }

  __break(1u);
  return result;
}

uint64_t Logger.collaboration.unsafeMutableAddressor()
{
  if (qword_1005FFEF0 != -1)
  {
    swift_once();
  }

  v0 = sub_1004B80B4();

  return sub_100007084(v0, static Logger.collaboration);
}

uint64_t sub_100100F68(uint64_t *a1)
{
  swift_beginAccess();
  v2 = *a1;

  return v2;
}

uint64_t sub_100100FCC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

MusicCore::Collaboration::Manager::DeepLinkType_optional __swiftcall Collaboration.Manager.DeepLinkType.init(_:)(Swift::OpaquePointer a1)
{
  swift_beginAccess();
  if (*(a1._rawValue + 2) && (v2 = static Collaboration.Manager.DeepLinkType.actionKey, v3 = qword_100603BD8, , v4 = sub_1000346D4(v2, v3), v6 = v5, , (v6 & 1) != 0))
  {
    v7 = (*(a1._rawValue + 7) + 16 * v4);
    v8 = *v7;
    v9 = v7[1];

    v10._rawValue = &off_1005A5008;
    v14._countAndFlagsBits = v8;
    v14._object = v9;
    v11 = sub_1004BD764(v10, v14);

    if (v11 == 1)
    {
      v12.value = MusicCore_Collaboration_Manager_DeepLinkType_pending;
    }

    else
    {
      v12.value = MusicCore_Collaboration_Manager_DeepLinkType_unknownDefault;
    }

    if (v11)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 2;
  }
}

MusicCore::Collaboration::Manager::DeepLinkType_optional __swiftcall Collaboration.Manager.DeepLinkType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_1005A5008;
  v6._object = object;
  v3 = sub_1004BD764(v2, v6);

  if (v3 == 1)
  {
    v4.value = MusicCore_Collaboration_Manager_DeepLinkType_pending;
  }

  else
  {
    v4.value = MusicCore_Collaboration_Manager_DeepLinkType_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t Collaboration.Manager.DeepLinkType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x676E69646E6570;
  }

  else
  {
    return 1852403562;
  }
}

uint64_t sub_1001011E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x676E69646E6570;
  }

  else
  {
    v3 = 1852403562;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x676E69646E6570;
  }

  else
  {
    v5 = 1852403562;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004BD9C4();
  }

  return v8 & 1;
}

Swift::Int sub_100101288()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_100101304()
{
  sub_1004BBF84();
}

Swift::Int sub_10010136C()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_1001013E4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1005A5008;
  v8._object = v3;
  v5 = sub_1004BD764(v4, v8);

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

void sub_100101444(uint64_t *a1@<X8>)
{
  v2 = 1852403562;
  if (*v1)
  {
    v2 = 0x676E69646E6570;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t Collaboration.Manager.queryItemsDictionary(for:)()
{
  v0 = sub_100003ABC(&qword_100603C28);
  __chkstk_darwin(v0 - 8);
  v2 = &v18 - v1;
  v3 = sub_1004B66F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6664();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_100007214(v2, &qword_100603C28);
    return 0;
  }

  (*(v4 + 32))(v6, v2, v3);
  v7 = URLComponents.queryItemsDictionary.getter();
  if (!v7)
  {
    (*(v4 + 8))(v6, v3);
    return v7;
  }

  v8 = sub_100019B70(&off_1005A5058);
  swift_arrayDestroy();
  swift_beginAccess();
  if (!*(v7 + 16) || (v9 = static Collaboration.Manager.DeepLinkType.actionKey, v10 = qword_100603BD8, , v11 = sub_1000346D4(v9, v10), v13 = v12, , (v13 & 1) == 0))
  {

    (*(v4 + 8))(v6, v3);
    return 0;
  }

  v14 = (*(v7 + 56) + 16 * v11);
  v15 = *v14;
  v16 = v14[1];

  LOBYTE(v15) = sub_1000FE800(v15, v16, v8);

  (*(v4 + 8))(v6, v3);
  if ((v15 & 1) == 0)
  {

    return 0;
  }

  return v7;
}

uint64_t Collaboration.Manager.start(_:isOpen:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 200) = a3;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  sub_100003ABC(&qword_100603BF0);
  *(v3 + 40) = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0);
  *(v3 + 48) = swift_task_alloc();
  v4 = sub_1004BB7F4();
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();
  v5 = sub_1004BBA84();
  *(v3 + 80) = v5;
  *(v3 + 88) = *(v5 - 8);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  v6 = sub_1004B7864();
  *(v3 + 112) = v6;
  *(v3 + 120) = *(v6 - 8);
  *(v3 + 128) = swift_task_alloc();
  sub_1004BC474();
  *(v3 + 136) = sub_1004BC464();
  v8 = sub_1004BC3E4();
  *(v3 + 144) = v8;
  *(v3 + 152) = v7;

  return _swift_task_switch(sub_100101954, v8, v7);
}

uint64_t sub_100101954()
{
  if (qword_1005FFEF0 != -1)
  {
    swift_once();
  }

  v1 = sub_1004B80B4();
  *(v0 + 160) = sub_100007084(v1, static Logger.collaboration);
  v2 = sub_1004B8094();
  v3 = sub_1004BC9A4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 200);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Start called - isOpenInvite=%{BOOL,public}d", v5, 8u);
  }

  v6 = *(v0 + 104);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v11 = *(v0 + 56);
  v12 = *(v0 + 200);
  v13 = *(v0 + 32);

  v14 = *(v8 + 16);
  *(v0 + 168) = v14;
  *(v0 + 176) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v6, v13, v7);
  v15 = &enum case for Playlist.Collaboration.InvitationMode.open(_:);
  if (!v12)
  {
    v15 = &enum case for Playlist.Collaboration.InvitationMode.requiresApproval(_:);
  }

  (*(v10 + 104))(v9, *v15, v11);
  sub_1004B7844();
  v16 = swift_task_alloc();
  *(v0 + 184) = v16;
  *v16 = v0;
  v16[1] = sub_100101B64;
  v17 = *(v0 + 24);

  return MusicCollaborativePlaylist.StartCollaborationRequest.response()(v17);
}

uint64_t sub_100101B64()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_100102250;
  }

  else
  {
    v5 = sub_100101CA0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100101CA0()
{
  v47 = v0;
  v1 = v0[5];

  sub_1004BB854();
  v2 = sub_1004BB844();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v6 = v0[5];
  v5 = v0[6];
  if (v4 == 1)
  {
    sub_100007214(v0[5], &qword_100603BF0);
    v7 = sub_1004B6B04();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  }

  else
  {
    sub_1004BB7E4();
    (*(v3 + 8))(v6, v2);
    v8 = sub_1004B6B04();
    if ((*(*(v8 - 8) + 48))(v5, 1, v8) != 1)
    {
      v43 = v0[6];
      (*(v0[15] + 8))(v0[16], v0[14]);
      sub_100007214(v43, &qword_100600DE0);

      v42 = v0[1];
      goto LABEL_11;
    }
  }

  v9 = v0[21];
  v10 = v0[12];
  v11 = v0[10];
  v12 = v0[3];
  sub_100007214(v0[6], &qword_100600DE0);
  v9(v10, v12, v11);
  v13 = sub_1004B8094();
  v14 = sub_1004BC984();
  v15 = os_log_type_enabled(v13, v14);
  v17 = v0[11];
  v16 = v0[12];
  v18 = v0[10];
  if (v15)
  {
    v19 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46[0] = v45;
    *v19 = 136446210;
    sub_10010A7D0(&qword_100603C30, &type metadata accessor for Playlist);
    v20 = sub_1004BD934();
    v22 = v21;
    v23 = v18;
    v24 = *(v17 + 8);
    v24(v16, v23);
    v25 = sub_100012018(v20, v22, v46);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "invitationURL missing for=%{public}s", v19, 0xCu);
    sub_100004C6C(v45);
  }

  else
  {

    v26 = v18;
    v24 = *(v17 + 8);
    v24(v16, v26);
  }

  v27 = v0[10];
  v28 = v0[3];
  sub_100109E64();
  v29 = swift_allocError();
  *v30 = xmmword_1004C50E0;
  *(v30 + 16) = 3;
  swift_willThrow();
  v24(v28, v27);
  swift_errorRetain();
  v31 = sub_1004B8094();
  v32 = sub_1004BC984();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v46[0] = v34;
    *v33 = 136446210;
    v0[2] = v29;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v35 = sub_1004BBF04();
    v37 = sub_100012018(v35, v36, v46);

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v31, v32, "Start failed with error=%{public}s", v33, 0xCu);
    sub_100004C6C(v34);
  }

  v39 = v0[15];
  v38 = v0[16];
  v40 = v0[14];
  swift_allocError();
  *v41 = v29;
  *(v41 + 8) = 0;
  *(v41 + 16) = 1;
  swift_willThrow();
  (*(v39 + 8))(v38, v40);

  v42 = v0[1];
LABEL_11:

  return v42();
}

uint64_t sub_100102250()
{
  v16 = v0;

  v1 = v0[24];
  swift_errorRetain();
  v2 = sub_1004B8094();
  v3 = sub_1004BC984();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v6 = sub_1004BBF04();
    v8 = sub_100012018(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Start failed with error=%{public}s", v4, 0xCu);
    sub_100004C6C(v5);
  }

  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[14];
  sub_100109E64();
  swift_allocError();
  *v12 = v1;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  swift_willThrow();
  (*(v10 + 8))(v9, v11);

  v13 = v0[1];

  return v13();
}

uint64_t Collaboration.Manager.validate(_:url:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_1004BBA84();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_1004B77D4();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_1004B6B04();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  sub_1004BC474();
  v3[16] = sub_1004BC464();
  v8 = sub_1004BC3E4();
  v3[17] = v8;
  v3[18] = v7;

  return _swift_task_switch(sub_100102628, v8, v7);
}

uint64_t sub_100102628()
{
  v29 = v0;
  if (qword_1005FFEF0 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[5];
  v5 = sub_1004B80B4();
  v0[19] = sub_100007084(v5, static Logger.collaboration);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_1004B8094();
  v8 = sub_1004BC9A4();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  v12 = v0[12];
  v11 = v0[13];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v13 = 136446210;
    sub_10010A7D0(&qword_100603C38, &type metadata accessor for URL);
    v26 = v8;
    v14 = v6;
    v15 = sub_1004BD934();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = sub_100012018(v18, v17, &v28);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v26, "Validate called with url=%{public}s", v13, 0xCu);
    sub_100004C6C(v27);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[14];
  v21 = v0[12];
  v22 = v0[5];
  (*(v0[7] + 16))(v0[8], v0[4], v0[6]);
  v6(v20, v22, v21);
  sub_1004B77A4();
  v23 = swift_task_alloc();
  v0[20] = v23;
  *v23 = v0;
  v23[1] = sub_100102904;
  v24 = v0[3];

  return MusicCollaborativePlaylist.JoinRequest.validate()(v24);
}

uint64_t sub_100102904()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_100102AF8;
  }

  else
  {
    v5 = sub_100102A40;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100102A40()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100102AF8()
{
  v17 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);
  swift_errorRetain();
  v4 = sub_1004B8094();
  v5 = sub_1004BC984();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    v0[2] = v6;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v9 = sub_1004BBF04();
    v11 = sub_100012018(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Validate failed with error=%{public}s", v7, 0xCu);
    sub_100004C6C(v8);
  }

  v12 = v0[21];
  sub_100109E64();
  swift_allocError();
  *v13 = v12;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t Collaboration.Manager.join(_:url:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_1004BBA84();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = sub_1004B77D4();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_1004B6B04();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  sub_1004BC474();
  v2[16] = sub_1004BC464();
  v7 = sub_1004BC3E4();
  v2[17] = v7;
  v2[18] = v6;

  return _swift_task_switch(sub_100102EC4, v7, v6);
}

uint64_t sub_100102EC4()
{
  v29 = v0;
  if (qword_1005FFEF0 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[4];
  v5 = sub_1004B80B4();
  v0[19] = sub_100007084(v5, static Logger.collaboration);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_1004B8094();
  v8 = sub_1004BC9A4();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  v12 = v0[12];
  v11 = v0[13];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v13 = 136446210;
    sub_10010A7D0(&qword_100603C38, &type metadata accessor for URL);
    v26 = v8;
    v14 = v6;
    v15 = sub_1004BD934();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = sub_100012018(v18, v17, &v28);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v26, "Join called with url=%{public}s", v13, 0xCu);
    sub_100004C6C(v27);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[14];
  v21 = v0[12];
  v22 = v0[4];
  (*(v0[6] + 16))(v0[8], v0[3], v0[5]);
  v6(v20, v22, v21);
  sub_1004B77A4();
  v23 = swift_task_alloc();
  v0[20] = v23;
  *v23 = v0;
  v23[1] = sub_1001031A0;
  v24 = v0[7];

  return MusicCollaborativePlaylist.JoinRequest.response()(v24);
}

uint64_t sub_1001031A0()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = v2[17];
    v4 = v2[18];
    v5 = sub_100103398;
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);
    v3 = v2[17];
    v4 = v2[18];
    v5 = sub_1001032CC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1001032CC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100103398()
{
  v17 = v0;

  swift_errorRetain();
  v1 = sub_1004B8094();
  v2 = sub_1004BC984();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[21];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v6 = sub_1004BBF04();
    v8 = sub_100012018(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Join failed with error=%{public}s", v4, 0xCu);
    sub_100004C6C(v5);
  }

  v9 = v0[21];
  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[9];
  sub_100109E64();
  swift_allocError();
  *v13 = v9;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();
  (*(v11 + 8))(v10, v12);

  v14 = v0[1];

  return v14();
}

uint64_t Collaboration.Manager.end(_:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_1004BBA84();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_1004B7804();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  sub_1004BC474();
  v2[11] = sub_1004BC464();
  v6 = sub_1004BC3E4();
  v2[12] = v6;
  v2[13] = v5;

  return _swift_task_switch(sub_1001036FC, v6, v5);
}

uint64_t sub_1001036FC()
{
  if (qword_1005FFEF0 != -1)
  {
    swift_once();
  }

  v1 = sub_1004B80B4();
  v0[14] = sub_100007084(v1, static Logger.collaboration);
  v2 = sub_1004B8094();
  v3 = sub_1004BC9A4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "End called", v4, 2u);
  }

  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];

  (*(v6 + 16))(v5, v8, v7);
  sub_1004B77E4();
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_100103894;
  v10 = v0[3];

  return MusicCollaborativePlaylist.EndCollaborationRequest.response()(v10);
}

uint64_t sub_100103894()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_1001039D0;
  }

  else
  {
    v5 = sub_10010A878;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001039D0()
{
  v17 = v0;

  swift_errorRetain();
  v1 = sub_1004B8094();
  v2 = sub_1004BC984();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[16];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v6 = sub_1004BBF04();
    v8 = sub_100012018(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "End failed with error=%{public}s", v4, 0xCu);
    sub_100004C6C(v5);
  }

  v9 = v0[16];
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  sub_100109E64();
  swift_allocError();
  *v13 = v9;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();
  (*(v11 + 8))(v10, v12);

  v14 = v0[1];

  return v14();
}

uint64_t Collaboration.Manager.moderate(_:collaborator:in:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 193) = a1;
  v4 = sub_1004B7904();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  v5 = sub_1004BBA84();
  *(v3 + 64) = v5;
  *(v3 + 72) = *(v5 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  v6 = sub_1004BB7D4();
  *(v3 + 96) = v6;
  *(v3 + 104) = *(v6 - 8);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  sub_1004BC474();
  *(v3 + 128) = sub_1004BC464();
  v8 = sub_1004BC3E4();
  *(v3 + 136) = v8;
  *(v3 + 144) = v7;

  return _swift_task_switch(sub_100103D84, v8, v7);
}

uint64_t sub_100103D84()
{
  v44 = v0;
  if (qword_1005FFEF0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v9 = sub_1004B80B4();
  *(v0 + 152) = sub_100007084(v9, static Logger.collaboration);
  v42 = *(v3 + 16);
  v42(v1, v8, v2);
  v41 = *(v6 + 16);
  v41(v4, v7, v5);
  v10 = sub_1004B8094();
  v11 = sub_1004BC9A4();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 120);
  v15 = *(v0 + 96);
  v14 = *(v0 + 104);
  v16 = *(v0 + 88);
  v18 = *(v0 + 64);
  v17 = *(v0 + 72);
  if (v12)
  {
    v40 = v11;
    v19 = *(v0 + 193);
    log = v10;
    v20 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v20 = 136446722;
    *(v0 + 192) = v19 & 1;
    v21 = sub_1004BBF04();
    v23 = sub_100012018(v21, v22, &v43);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2082;
    sub_10010A7D0(&unk_100603C40, &type metadata accessor for Playlist.Collaborator);
    v24 = sub_1004BD934();
    v26 = v25;
    (*(v14 + 8))(v13, v15);
    v27 = sub_100012018(v24, v26, &v43);

    *(v20 + 14) = v27;
    *(v20 + 22) = 2082;
    sub_10010A7D0(&qword_100603C30, &type metadata accessor for Playlist);
    v28 = sub_1004BD934();
    v30 = v29;
    (*(v17 + 8))(v16, v18);
    v31 = sub_100012018(v28, v30, &v43);

    *(v20 + 24) = v31;
    _os_log_impl(&_mh_execute_header, log, v40, "    Moderate called for:\n        - type=%{public}s\n        - collaborator=%{public}s\n        - playlist=%{public}s", v20, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    (*(v14 + 8))(v13, v15);
  }

  v32 = *(v0 + 80);
  v33 = *(v0 + 64);
  v34 = *(v0 + 32);
  v35 = *(v0 + 193);
  v42(*(v0 + 112), *(v0 + 24), *(v0 + 96));
  v41(v32, v34, v33);
  sub_1004B78D4();
  if (v35)
  {
    v36 = swift_task_alloc();
    *(v0 + 176) = v36;
    *v36 = v0;
    v36[1] = sub_10010441C;

    return MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.reject()();
  }

  else
  {
    v37 = swift_task_alloc();
    *(v0 + 160) = v37;
    *v37 = v0;
    v37[1] = sub_100104214;

    return MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.approve()();
  }
}

uint64_t sub_100104214()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_100104558;
  }

  else
  {
    v5 = sub_100104350;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100104350()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10010441C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_100104768;
  }

  else
  {
    v5 = sub_10010A854;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100104558()
{
  v16 = v0;
  v1 = v0[21];

  swift_errorRetain();
  v2 = sub_1004B8094();
  v3 = sub_1004BC984();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v6 = sub_1004BBF04();
    v8 = sub_100012018(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Moderate failed with error=%{public}s", v4, 0xCu);
    sub_100004C6C(v5);
  }

  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[5];
  sub_100109E64();
  swift_allocError();
  *v12 = v1;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  swift_willThrow();
  (*(v9 + 8))(v10, v11);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100104768()
{
  v16 = v0;
  v1 = v0[23];

  swift_errorRetain();
  v2 = sub_1004B8094();
  v3 = sub_1004BC984();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v6 = sub_1004BBF04();
    v8 = sub_100012018(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Moderate failed with error=%{public}s", v4, 0xCu);
    sub_100004C6C(v5);
  }

  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[5];
  sub_100109E64();
  swift_allocError();
  *v12 = v1;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  swift_willThrow();
  (*(v9 + 8))(v10, v11);

  v13 = v0[1];

  return v13();
}

uint64_t Collaboration.Manager.remove(collaborator:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_1004B7834();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_1004BBA84();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v6 = sub_1004BB7D4();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_1004BC474();
  v3[17] = sub_1004BC464();
  v8 = sub_1004BC3E4();
  v3[18] = v8;
  v3[19] = v7;

  return _swift_task_switch(sub_100104B40, v8, v7);
}

uint64_t sub_100104B40()
{
  v39 = v0;
  if (qword_1005FFEF0 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v8 = v0[4];
  v7 = v0[5];
  v9 = sub_1004B80B4();
  v0[20] = sub_100007084(v9, static Logger.collaboration);
  v37 = *(v3 + 16);
  v37(v1, v8, v2);
  v10 = *(v6 + 16);
  v10(v4, v7, v5);
  v11 = sub_1004B8094();
  v12 = sub_1004BC9A4();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[16];
  v16 = v0[13];
  v15 = v0[14];
  v17 = v0[12];
  v18 = v0[10];
  v36 = v0[9];
  if (v13)
  {
    log = v11;
    v19 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v19 = 136446466;
    sub_10010A7D0(&unk_100603C40, &type metadata accessor for Playlist.Collaborator);
    v20 = sub_1004BD934();
    v34 = v12;
    v22 = v21;
    (*(v15 + 8))(v14, v16);
    v23 = sub_100012018(v20, v22, &v38);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    sub_10010A7D0(&qword_100603C30, &type metadata accessor for Playlist);
    v24 = sub_1004BD934();
    v26 = v25;
    (*(v18 + 8))(v17, v36);
    v27 = sub_100012018(v24, v26, &v38);

    *(v19 + 14) = v27;
    _os_log_impl(&_mh_execute_header, log, v34, "    Remove called for:\n        - collaborator=%{public}s\n        - playlist=%{public}s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v18 + 8))(v17, v36);
    (*(v15 + 8))(v14, v16);
  }

  v28 = v0[11];
  v29 = v0[9];
  v30 = v0[5];
  v37(v0[15], v0[4], v0[13]);
  v10(v28, v30, v29);
  sub_1004B7814();
  v31 = swift_task_alloc();
  v0[21] = v31;
  *v31 = v0;
  v31[1] = sub_100104F24;
  v32 = v0[3];

  return MusicCollaborativePlaylist.RemoveCollaboratorRequest.response()(v32);
}

uint64_t sub_100104F24()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_10010512C;
  }

  else
  {
    v5 = sub_100105060;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100105060()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10010512C()
{
  v17 = v0;

  swift_errorRetain();
  v1 = sub_1004B8094();
  v2 = sub_1004BC984();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[22];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v6 = sub_1004BBF04();
    v8 = sub_100012018(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Remove failed with error=%{public}s", v4, 0xCu);
    sub_100004C6C(v5);
  }

  v9 = v0[22];
  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[6];
  sub_100109E64();
  swift_allocError();
  *v13 = v9;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();
  (*(v11 + 8))(v10, v12);

  v14 = v0[1];

  return v14();
}

uint64_t Collaboration.Manager.resetInvitationURL(_:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_1004BBA84();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_1004B7894();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  sub_1004BC474();
  v2[11] = sub_1004BC464();
  v6 = sub_1004BC3E4();
  v2[12] = v6;
  v2[13] = v5;

  return _swift_task_switch(sub_100105490, v6, v5);
}

uint64_t sub_100105490()
{
  if (qword_1005FFEF0 != -1)
  {
    swift_once();
  }

  v1 = sub_1004B80B4();
  v0[14] = sub_100007084(v1, static Logger.collaboration);
  v2 = sub_1004B8094();
  v3 = sub_1004BC9A4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Reset URL called", v4, 2u);
  }

  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];

  (*(v6 + 16))(v5, v8, v7);
  sub_1004B7874();
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_100105628;
  v10 = v0[3];

  return MusicCollaborativePlaylist.ResetInvitationLinkRequest.response()(v10);
}

uint64_t sub_100105628()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_100105800;
  }

  else
  {
    v5 = sub_100105764;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100105764()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100105800()
{
  v17 = v0;

  swift_errorRetain();
  v1 = sub_1004B8094();
  v2 = sub_1004BC984();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[16];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v6 = sub_1004BBF04();
    v8 = sub_100012018(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Reset failed with error=%{public}s", v4, 0xCu);
    sub_100004C6C(v5);
  }

  v9 = v0[16];
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  sub_100109E64();
  swift_allocError();
  *v13 = v9;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();
  (*(v11 + 8))(v10, v12);

  v14 = v0[1];

  return v14();
}

uint64_t Collaboration.Manager.updateShareOption(_:for:)(char a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  *(v2 + 168) = a1;
  v3 = sub_1004BB7F4();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  v4 = sub_1004B78C4();
  *(v2 + 56) = v4;
  *(v2 + 64) = *(v4 - 8);
  *(v2 + 72) = swift_task_alloc();
  sub_100003ABC(&qword_100603BF0);
  *(v2 + 80) = swift_task_alloc();
  v5 = sub_1004BB844();
  *(v2 + 88) = v5;
  *(v2 + 96) = *(v5 - 8);
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  sub_1004BC474();
  *(v2 + 120) = sub_1004BC464();
  v7 = sub_1004BC3E4();
  *(v2 + 128) = v7;
  *(v2 + 136) = v6;

  return _swift_task_switch(sub_100105BE0, v7, v6);
}

uint64_t sub_100105BE0()
{
  if (qword_1005FFEF0 != -1)
  {
    swift_once();
  }

  v1 = sub_1004B80B4();
  *(v0 + 144) = sub_100007084(v1, static Logger.collaboration);
  v2 = sub_1004B8094();
  v3 = sub_1004BC9A4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 168);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "updateShareOption called with isOpen=%{BOOL,public}d", v5, 8u);
  }

  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  sub_1004BB854();
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    v9 = *(v0 + 80);

    sub_100007214(v9, &qword_100603BF0);
    sub_100109E64();
    swift_allocError();
    *v10 = xmmword_1004C5140;
    *(v10 + 16) = 3;
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 104);
    v14 = *(v0 + 112);
    v15 = *(v0 + 88);
    v16 = *(v0 + 96);
    v18 = *(v0 + 40);
    v17 = *(v0 + 48);
    v19 = *(v0 + 32);
    v20 = *(v0 + 168);
    (*(v16 + 32))(v14, *(v0 + 80), v15);
    (*(v16 + 16))(v13, v14, v15);
    v21 = &enum case for Playlist.Collaboration.InvitationMode.open(_:);
    if (!v20)
    {
      v21 = &enum case for Playlist.Collaboration.InvitationMode.requiresApproval(_:);
    }

    (*(v18 + 104))(v17, *v21, v19);
    sub_1004B78A4();
    v22 = swift_task_alloc();
    *(v0 + 152) = v22;
    *v22 = v0;
    v22[1] = sub_100105EF8;

    return MusicCollaborativePlaylist.UpdateInvitationModeRequest.response()();
  }
}

uint64_t sub_100105EF8()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_100106120;
  }

  else
  {
    v5 = sub_100106034;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100106034()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100106120()
{
  v20 = v0;

  swift_errorRetain();
  v1 = sub_1004B8094();
  v2 = sub_1004BC984();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[20];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v6 = sub_1004BBF04();
    v8 = sub_100012018(v6, v7, &v19);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "updateShareOption failed with error=%{public}s", v4, 0xCu);
    sub_100004C6C(v5);
  }

  v9 = v0[20];
  v10 = v0[14];
  v11 = v0[11];
  v12 = v0[12];
  v14 = v0[8];
  v13 = v0[9];
  v15 = v0[7];
  sub_100109E64();
  swift_allocError();
  *v16 = v9;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  swift_willThrow();
  (*(v14 + 8))(v13, v15);
  (*(v12 + 8))(v10, v11);

  v17 = v0[1];

  return v17();
}

uint64_t Collaboration.Manager.handleError(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1005FFEF0 != -1)
  {
    swift_once();
  }

  v4 = sub_1004B80B4();
  sub_100007084(v4, static Logger.collaboration);
  swift_errorRetain();
  v5 = sub_1004B8094();
  v6 = sub_1004BC9A4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Calling coordinator to handle error=%{public}@", v7, 0xCu);
    sub_100007214(v8, &qword_100602710);
  }

  swift_beginAccess();
  sub_10001342C(v2 + 16, v13);
  v10 = v14;
  v11 = v15;
  sub_100009178(v13, v14);
  (*(v11 + 8))(a1, v10, v11);
  return sub_100004C6C(v13);
}

uint64_t Collaboration.Manager.activityViewController(for:url:)()
{
  v0 = objc_allocWithZone(NSItemProvider);
  sub_1004B6A44(v1);
  v3 = v2;
  v4 = [v0 initWithContentsOfURL:v2];

  if (v4)
  {
    v5 = [objc_allocWithZone(LPLinkMetadata) init];
    sub_1004B6A44(v6);
    v8 = v7;
    [v5 setURL:v7];

    v9 = [objc_allocWithZone(LPiTunesMediaPlaylistMetadata) init];
    sub_1004BB994();
    v10 = sub_1004BBE24();

    [v9 setName:v10];

    sub_1004BB954();
    if (v11)
    {
      v12 = sub_1004BBE24();
    }

    else
    {
      v12 = 0;
    }

    [v9 setCurator:v12];

    sub_1004BB944();
    if (v13)
    {
      v14 = sub_1004BBE24();
    }

    else
    {
      v14 = 0;
    }

    [v9 setStoreIdentifier:v14];

    sub_10010689C();
    v16 = v15;
    [v9 setArtwork:v15];

    [v5 setSpecialization:v9];
    sub_100003ABC(&qword_100603C50);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1004C4D40;
    *(v17 + 32) = v4;
    v18 = objc_allocWithZone(UIActivityItemsConfiguration);
    sub_100009130(0, &qword_100603C58);
    v19 = v4;
    isa = sub_1004BC284().super.isa;

    v21 = [v18 initWithItemProviders:isa];

    v22 = swift_allocObject();
    *(v22 + 16) = v5;
    aBlock[4] = sub_100109EF0;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100106CCC;
    aBlock[3] = &unk_1005B0FB0;
    v23 = _Block_copy(aBlock);
    v24 = v5;

    [v21 setPerItemMetadataProvider:v23];
    _Block_release(v23);
    v25 = [objc_allocWithZone(UIActivityViewController) initWithActivityItemsConfiguration:v21];
    [v25 setAllowsProminentActivity:0];

    return v25;
  }

  else
  {
    result = sub_1004BD624();
    __break(1u);
  }

  return result;
}

void sub_10010689C()
{
  v0 = sub_1004BBA84();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v3 = sub_1004B7F64();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(NSItemProvider) init];
  sub_1004B7F44();
  sub_1004B7F34();
  (*(v4 + 8))(v6, v3);
  v8 = sub_1004BBE24();

  (*(v1 + 16))(v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v15[1], v0);
  v9 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v10 = swift_allocObject();
  (*(v1 + 32))(v10 + v9, v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v0);
  aBlock[4] = sub_10010A4EC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100109308;
  aBlock[3] = &unk_1005B12E0;
  v11 = _Block_copy(aBlock);

  [v7 registerItemForTypeIdentifier:v8 loadHandler:v11];
  _Block_release(v11);

  v12 = sub_1004BBE24();
  v13 = [objc_opt_self() _systemImageNamed:v12];

  if (v13)
  {
    v14 = [objc_allocWithZone(LPImage) initWithPlatformImage:v13];

    [objc_allocWithZone(LPImage) initWithItemProvider:v7 properties:0 placeholderImage:v14];
  }

  else
  {
    __break(1u);
  }
}

id sub_100106BD4@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v3 = sub_1004BBE64();
  v5 = v4;
  if (v3 == sub_1004BBE64() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_1004BD9C4();

    if ((v8 & 1) == 0)
    {
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }
  }

  *(a2 + 24) = sub_100009130(0, &qword_100603EB8);
  *a2 = a1;

  return a1;
}

id sub_100106CCC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(v15, a2, v6);

  v7 = v16;
  if (v16)
  {
    v8 = sub_100009178(v15, v16);
    v9 = *(v7 - 8);
    v10 = __chkstk_darwin(v8);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = sub_1004BD9A4();
    (*(v9 + 8))(v12, v7);
    sub_100004C6C(v15);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t Collaboration.Manager.__deallocating_deinit()
{
  sub_100004C6C(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t Collaboration.ArtworkCachingReference.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100106EE4()
{
  v0 = sub_1004B80B4();
  sub_100007108(v0, static Logger.collaboration);
  sub_100007084(v0, static Logger.collaboration);
  sub_100009130(0, &qword_1006090F0);
  sub_1004BD164();
  return sub_1004B80C4();
}

uint64_t static Logger.collaboration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1005FFEF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1004B80B4();
  v3 = sub_100007084(v2, static Logger.collaboration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Playlist.Collaboration.isOpenInvitation.getter()
{
  v0 = sub_1004BB7F4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003ABC(&qword_100603C60);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  v7 = sub_100003ABC(&qword_100603C68);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  sub_1004BB804();
  (*(v1 + 104))(v12, enum case for Playlist.Collaboration.InvitationMode.open(_:), v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_10000F778(v15, v6, &qword_100603C68);
  sub_10000F778(v12, &v6[v16], &qword_100603C68);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) != 1)
  {
    sub_10000F778(v6, v9, &qword_100603C68);
    if (v17(&v6[v16], 1, v0) != 1)
    {
      v19 = &v6[v16];
      v20 = v24;
      (*(v1 + 32))(v24, v19, v0);
      sub_10010A7D0(&qword_100603C70, &type metadata accessor for Playlist.Collaboration.InvitationMode);
      v18 = sub_1004BBD84();
      v21 = *(v1 + 8);
      v21(v20, v0);
      sub_100007214(v12, &qword_100603C68);
      sub_100007214(v15, &qword_100603C68);
      v21(v9, v0);
      sub_100007214(v6, &qword_100603C68);
      return v18 & 1;
    }

    sub_100007214(v12, &qword_100603C68);
    sub_100007214(v15, &qword_100603C68);
    (*(v1 + 8))(v9, v0);
    goto LABEL_6;
  }

  sub_100007214(v12, &qword_100603C68);
  sub_100007214(v15, &qword_100603C68);
  if (v17(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_100007214(v6, &qword_100603C60);
    v18 = 0;
    return v18 & 1;
  }

  sub_100007214(v6, &qword_100603C68);
  v18 = 1;
  return v18 & 1;
}

uint64_t Playlist.Collaborator.isHost.getter()
{
  v0 = sub_1004BB764();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003ABC(&qword_100603C78);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  v7 = sub_100003ABC(&qword_100603C80);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  sub_1004BB784();
  (*(v1 + 104))(v12, enum case for Playlist.Collaborator.Role.host(_:), v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_10000F778(v15, v6, &qword_100603C80);
  sub_10000F778(v12, &v6[v16], &qword_100603C80);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) != 1)
  {
    sub_10000F778(v6, v9, &qword_100603C80);
    if (v17(&v6[v16], 1, v0) != 1)
    {
      v19 = &v6[v16];
      v20 = v24;
      (*(v1 + 32))(v24, v19, v0);
      sub_10010A7D0(&qword_100603C88, &type metadata accessor for Playlist.Collaborator.Role);
      v18 = sub_1004BBD84();
      v21 = *(v1 + 8);
      v21(v20, v0);
      sub_100007214(v12, &qword_100603C80);
      sub_100007214(v15, &qword_100603C80);
      v21(v9, v0);
      sub_100007214(v6, &qword_100603C80);
      return v18 & 1;
    }

    sub_100007214(v12, &qword_100603C80);
    sub_100007214(v15, &qword_100603C80);
    (*(v1 + 8))(v9, v0);
    goto LABEL_6;
  }

  sub_100007214(v12, &qword_100603C80);
  sub_100007214(v15, &qword_100603C80);
  if (v17(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_100007214(v6, &qword_100603C78);
    v18 = 0;
    return v18 & 1;
  }

  sub_100007214(v6, &qword_100603C80);
  v18 = 1;
  return v18 & 1;
}

uint64_t Playlist.hasJoinedCollaboration.getter()
{
  v0 = sub_100003ABC(&qword_100603BF0);
  __chkstk_darwin(v0 - 8);
  v2 = &v18 - v1;
  v3 = sub_100003ABC(&qword_100603BF8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  sub_1004BB854();
  v9 = sub_1004BB844();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v2, 1, v9) == 1)
  {
    sub_100007214(v2, &qword_100603BF0);
    v11 = sub_1004BB794();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
LABEL_10:
    v16 = 0;
    goto LABEL_11;
  }

  sub_1004BB814();
  (*(v10 + 8))(v2, v9);
  v12 = sub_1004BB794();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    goto LABEL_10;
  }

  sub_10000F778(v8, v6, &qword_100603BF8);
  v14 = (*(v13 + 88))(v6, v12);
  if (v14 != enum case for Playlist.Collaborator.Status.host(_:) && v14 != enum case for Playlist.Collaborator.Status.joined(_:))
  {
    (*(v13 + 8))(v6, v12);
    goto LABEL_10;
  }

  v16 = 1;
LABEL_11:
  sub_100007214(v8, &qword_100603BF8);
  return v16;
}

uint64_t Playlist.hasUnsupportedContent.getter()
{
  v1[7] = v0;
  v2 = sub_1004BBA44();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = sub_100003ABC(&unk_100603C90);
  v1[13] = swift_task_alloc();
  sub_100003ABC(&qword_100601E78);
  v1[14] = swift_task_alloc();
  v3 = sub_100003ABC(&qword_100603CA0);
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v4 = sub_100003ABC(&qword_100603CA8);
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();
  sub_100003ABC(&qword_100603CB0);
  v1[22] = swift_task_alloc();
  v5 = sub_100003ABC(&qword_100603CB8);
  v1[23] = v5;
  v1[24] = *(v5 - 8);
  v1[25] = swift_task_alloc();

  return _swift_task_switch(sub_100107E78, 0, 0);
}

uint64_t sub_100107E78()
{
  v1 = v0[22];
  v2 = v0[7];
  sub_1004BAB34();
  swift_getKeyPath();
  v3 = sub_1004BBA84();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  sub_10010A7D0(&qword_100603CC0, &type metadata accessor for Playlist);
  sub_1004BAAF4();

  sub_100007214(v1, &qword_100603CB0);
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_100108040;
  v6 = v0[23];
  v7 = v0[21];

  return MusicLibraryRequest.response()(v7, v6);
}

uint64_t sub_100108040()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_10010858C;
  }

  else
  {
    v2 = sub_100108154;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100108154()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  sub_1004BAB84();
  (*(v2 + 16))(v3, v1, v4);
  sub_1000206D4(&qword_100603CC8, &qword_100603CA0);
  sub_1004BC124();
  v7 = *(v5 + 36);
  sub_1000206D4(&qword_100603CD0, &qword_100603CA0);
  sub_1004BC764();
  v47 = v0;
  if (*(v6 + v7) == v0[6])
  {
LABEL_5:
    v19 = v47[24];
    v18 = v47[25];
    v20 = v47[23];
    v22 = v47[20];
    v21 = v47[21];
    v24 = v47[18];
    v23 = v47[19];
    v25 = v47[15];
    v26 = v47[16];
    sub_100007214(v47[13], &unk_100603C90);
    (*(v26 + 8))(v24, v25);
    (*(v22 + 8))(v21, v23);
    (*(v19 + 8))(v18, v20);
    v27 = 0;
    v28 = 1;
  }

  else
  {
    v8 = v0[9];
    v43 = (v8 + 16);
    v46 = (v8 + 32);
    v41 = (v8 + 8);
    while (1)
    {
      v9 = v47[10];
      v10 = v47[11];
      v11 = v47[8];
      v12 = v7;
      v13 = sub_1004BC844();
      (*v43)(v10);
      v13(v47 + 2, 0);
      v7 = v12;
      sub_1004BC774();
      v14 = *v46;
      (*v46)(v9, v10, v11);
      sub_1004BB9E4();
      if (!v15)
      {
        break;
      }

      v16 = v47[10];
      v17 = v47[8];

      (*v41)(v16, v17);
      sub_1004BC764();
      if (*(v6 + v12) == v47[6])
      {
        goto LABEL_5;
      }
    }

    v29 = v47[24];
    v30 = v47[25];
    v32 = v47[20];
    v31 = v47[21];
    v34 = v47[18];
    v33 = v47[19];
    v36 = v47[15];
    v35 = v47[16];
    v44 = v47[14];
    v45 = v47[23];
    v37 = v47[10];
    v42 = v47[8];
    sub_100007214(v47[13], &unk_100603C90);
    (*(v35 + 8))(v34, v36);
    (*(v32 + 8))(v31, v33);
    (*(v29 + 8))(v30, v45);
    v14(v44, v37, v42);
    v28 = 0;
    v27 = 1;
  }

  v38 = v47[14];
  (*(v47[9] + 56))(v38, v28, 1, v47[8]);
  sub_100007214(v38, &qword_100601E78);

  v39 = v47[1];

  return v39(v27);
}

uint64_t sub_10010858C()
{
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1(0);
}

uint64_t Playlist.duplicate()()
{
  v1[2] = v0;
  v2 = sub_100003ABC(&qword_1006027B0);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_100003ABC(&qword_100603CE0);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1001087B0, 0, 0);
}

uint64_t sub_1001087B0()
{
  sub_1004B7914();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_100108858;
  v2 = *(v0 + 40);

  return MusicLibraryPlaylistRequest.response<>()(v2);
}

uint64_t sub_100108858()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100108A0C;
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);
    v3 = sub_100108984;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100108984()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100108A0C()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

void sub_100108A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1004BBA84();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = sub_100003ABC(&qword_1006014F0);
  __chkstk_darwin(v11 - 8);
  v13 = &v18 - v12;
  if (a1)
  {
    v14 = sub_1004BC4B4();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    (*(v9 + 16))(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v8);
    v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    (*(v9 + 32))(v16 + v15, &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v17 = (v16 + ((v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v17 = a1;
    v17[1] = a2;

    sub_1000FD6BC(0, 0, v13, &unk_1004CE690, v16);
  }
}

uint64_t sub_100108C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_100003ABC(&qword_100603F20);
  v6[5] = swift_task_alloc();
  sub_100003ABC(&qword_100603F28);
  v6[6] = swift_task_alloc();
  sub_100003ABC(&unk_100603F30);
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_100108DA4, 0, 0);
}

uint64_t sub_100108DA4()
{
  v1 = *(v0 + 56);
  sub_1004BBA64();
  v2 = sub_1004BB6C4();
  *(v0 + 64) = v2;
  v3 = *(v2 - 8);
  *(v0 + 72) = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100007214(*(v0 + 56), &unk_100603F30);
    (*(v0 + 24))(0, 0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = sub_1004BB634();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = sub_1004BB594();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_task_alloc();
    *(v0 + 80) = v10;
    *v10 = v0;
    v10[1] = sub_100108FC4;
    v11 = *(v0 + 48);
    v12 = *(v0 + 40);
    v13.n128_u64[0] = 0x4072C00000000000;
    v14.n128_u64[0] = 1.0;
    v15.n128_u64[0] = 0x4072C00000000000;

    return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v11, v12, 0, 0, v13, v15, v14);
  }
}

uint64_t sub_100108FC4(uint64_t a1)
{
  v3 = *v2;
  (*v2)[11] = a1;

  if (v1)
  {
    v6 = v3 + 5;
    v4 = v3[5];
    v5 = v6[1];

    sub_100007214(v4, &qword_100603F20);
    sub_100007214(v5, &qword_100603F28);
    v7 = sub_100109268;
  }

  else
  {
    v8 = v3[8];
    v9 = v3[9];
    v11 = v3[6];
    v10 = v3[7];
    sub_100007214(v3[5], &qword_100603F20);
    sub_100007214(v11, &qword_100603F28);
    (*(v9 + 8))(v10, v8);
    v7 = sub_100109174;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100109174()
{
  v1 = UIImagePNGRepresentation(*(v0 + 88));
  if (v1)
  {
    v2 = v1;
    v3 = sub_1004B6B74();
    v5 = v4;

    v6.super.isa = sub_1004B6B64().super.isa;
    sub_100004D90(v3, v5);
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = *(v0 + 88);
  (*(v0 + 24))(v6.super.isa, 0);

  swift_unknownObjectRelease();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100109268()
{
  (*(*(v0 + 72) + 8))(*(v0 + 56), *(v0 + 64));
  (*(v0 + 24))(0, 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100109308(uint64_t a1, void *aBlock, uint64_t ObjCClassMetadata, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_10010A5BC;
    if (!ObjCClassMetadata)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (ObjCClassMetadata)
  {
LABEL_3:
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

LABEL_4:
  if (a4)
  {
    a4 = sub_1004BBC44();
  }

  v6(v7, v8, ObjCClassMetadata, a4);

  sub_10003CC4C(v7);
}

void sub_100109410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1004B69A4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_100109480(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000513EC;

  return v6(a1);
}

void *sub_100109578(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1001095EC@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_10010961C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100109710;

  return v5(v2 + 32);
}

uint64_t sub_100109710()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t _s9MusicCore13CollaborationO5SetupO5title6activeSSSb_tFZ_0()
{
  v0 = sub_1004B6E64();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004BBE14();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004BBDA4();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v8 = qword_100617118;
  sub_1004B6DF4();
  v9 = sub_1004BBED4();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_100109A50(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_1004B6B04() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001384C;

  return sub_10010D1F4(a1, a2, v2 + v7);
}

uint64_t sub_100109B30()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100109B88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_1001005A0(a1, v4, v5, v1 + 32);
}

uint64_t sub_100109C38()
{
  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v17 = v10;
  *v18 = v11;
  v19 = v12;
  v20 = v13;
  v14[0] = v6;
  v14[1] = v7;
  v15 = v8;
  v16 = v9;
  if ((Playlist.hasActiveCollaboration.getter() & 1) == 0)
  {
    if (BYTE1(v14[0]) != 1)
    {
      sub_100109E64();
      swift_allocError();
      v4 = xmmword_1004C4F70;
      goto LABEL_13;
    }

    if ((sub_100100960() & 1) == 0)
    {
      sub_100109E64();
      swift_allocError();
      v4 = xmmword_1004C5150;
LABEL_13:
      *v3 = v4;
      v2 = v3 + 1;
      goto LABEL_14;
    }
  }

  if ((sub_1000FE42C(3, v15) & 1) == 0)
  {
    sub_100109E64();
    swift_allocError();
    v4 = xmmword_1004C5160;
    goto LABEL_13;
  }

  if (v18[1] && ([v18[1] isMinorAccountHolder] & 1) == 0)
  {
    if (BYTE8(v14[0]))
    {
      return sub_100051DEC(v14);
    }

    sub_100109E64();
    swift_allocError();
    v4 = xmmword_1004C50F0;
    goto LABEL_13;
  }

  sub_100109E64();
  swift_allocError();
  v1 = v0;
  v2 = (v0 + 16);
  *v1 = 0;
  v1[1] = 0;
LABEL_14:
  *v2 = 3;
  swift_willThrow();
  return sub_100051DEC(v14);
}

unint64_t sub_100109E64()
{
  result = qword_100603C20;
  if (!qword_100603C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100603C20);
  }

  return result;
}

uint64_t sub_100109EB8()
{

  return swift_deallocObject();
}

uint64_t sub_100109EF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100109F60()
{
  result = qword_100603CE8;
  if (!qword_100603CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100603CE8);
  }

  return result;
}

unint64_t sub_100109FB8()
{
  result = qword_100603CF0;
  if (!qword_100603CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100603CF0);
  }

  return result;
}

uint64_t sub_10010A02C(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_10010A048(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10010A090(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10010A0D4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_10010A164(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001384C;

  return sub_10010961C(a1, v4);
}

uint64_t sub_10010A21C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001384C;

  return sub_10010961C(a1, v4);
}

uint64_t sub_10010A2D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000136EC;

  return sub_10010961C(a1, v4);
}

uint64_t sub_10010A38C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001384C;

  return sub_10010961C(a1, v4);
}

uint64_t sub_10010A45C(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

void sub_10010A4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_1004BBA84() - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  sub_100108A94(a1, a2, a3, a4, v10);
}

uint64_t sub_10010A584()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10010A5C4()
{
  v1 = sub_1004BBA84();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10010A6A0(uint64_t a1)
{
  v4 = *(sub_1004BBA84() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000136EC;

  return sub_100108C94(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_10010A7D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10010A818()
{

  return swift_deallocObject();
}

__n128 static Alert.explicitRestrictedAlert(traitCollection:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100114418(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

__n128 static Alert.confirmDelete(for:library:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = sub_100009178(a1, v5);
  sub_10010D3C0(v7, a2, v5, v6, v10);
  v8 = v10[3];
  *(a3 + 32) = v10[2];
  *(a3 + 48) = v8;
  *(a3 + 64) = v11;
  result = v10[1];
  *a3 = v10[0];
  *(a3 + 16) = result;
  return result;
}

__n128 static Alert.cellularDataDisallowedAlert(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100115724(a1, a2, v6);
  v4 = v6[3];
  *(a3 + 32) = v6[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7;
  result = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = result;
  return result;
}

__n128 static Alert.dolbyAtmosDownloadsAlert(message:completion:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1001151F0(a1, a2, a3, a4, v8);
  v6 = v8[3];
  *(a5 + 32) = v8[2];
  *(a5 + 48) = v6;
  *(a5 + 64) = v9;
  result = v8[1];
  *a5 = v8[0];
  *(a5 + 16) = result;
  return result;
}

double static Alert.Action.cancel.getter@<D0>(uint64_t a1@<X8>)
{
  sub_100114F58(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

__n128 static Alert.enableCloudLibraryAlert(context:)@<Q0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  sub_100115C5C(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t static Alert.Action.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(char *, char *, uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v52 = a7;
  v53 = a8;
  v50 = a5;
  v51 = a6;
  v48 = a3;
  v49 = a4;
  v13 = sub_1004B6D14();
  v46 = *(v13 - 8);
  v47 = v13;
  __chkstk_darwin(v13);
  v45 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1004B6B04();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v19 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v44 - v20;
  v22 = sub_100003ABC(&qword_100600DE0);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v23);
  v28 = &v44 - v27;
  if (qword_1006006D8 != -1)
  {
    result = swift_once();
  }

  v29 = 0uLL;
  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    sub_100144204(a1, a2, v48, v49, v50, v51, v52, v53, v28, a10 & 1);
    sub_1000C8C40(v28, v25);
    if ((*(v16 + 48))(v25, 1, v15) == 1)
    {
      sub_10000F7E0(v28);
      v30 = v25;
LABEL_10:
      result = sub_10000F7E0(v30);
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v29 = 0uLL;
      goto LABEL_11;
    }

    v52 = *(v16 + 32);
    v53 = v16 + 32;
    v52(v21, v25, v15);
    v36 = [objc_opt_self() sharedApplication];
    sub_1004B6A44(v37);
    v39 = v38;
    v40 = [v36 canOpenURL:v38];

    if (!v40)
    {
      (*(v16 + 8))(v21, v15);
      v30 = v28;
      goto LABEL_10;
    }

    (*(v16 + 16))(v19, v21, v15);
    v41 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v35 = swift_allocObject();
    v52((v35 + v41), v19, v15);
    v42 = v45;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v31 = sub_1004B6CE4();
    v32 = v43;
    (*(v46 + 8))(v42, v47);
    (*(v16 + 8))(v21, v15);
    result = sub_10000F7E0(v28);
    v29 = xmmword_1004C5170;
    v34 = &unk_1004D0880;
    v33 = 2;
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
  }

LABEL_11:
  *a9 = v31;
  *(a9 + 8) = v32;
  *(a9 + 16) = v29;
  *(a9 + 32) = v33;
  *(a9 + 40) = v34;
  *(a9 + 48) = v35;
  return result;
}

__n128 static Alert.cellularRestrictedAlert(model:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100115F10(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

id sub_10010AF28()
{
  result = [objc_opt_self() sharedNetworkObserver];
  if (result)
  {
    v2 = result;
    [result setVideoCellularStreamingAllowed:1];

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10010AFDC()
{
  result = [objc_opt_self() sharedNetworkObserver];
  if (result)
  {
    v2 = result;
    [result setMusicCellularStreamingAllowed:1];

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 static Alert.networkUnavailableAlert(model:traitCollection:)@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_100116DD0(a1, a2, v6);
  v4 = v6[3];
  *(a3 + 32) = v6[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7;
  result = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = result;
  return result;
}

uint64_t static Alert.accountRequiredAlert(traitCollection:)@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v3 = sub_1004B6D14();
  v60 = *(v3 - 8);
  v61 = v3;
  __chkstk_darwin(v3);
  v59 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004B6E64();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1004BBE14();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v47 - v11;
  sub_1004BBDA4();
  v13 = *(v7 + 16);
  v13(v10, v12, v6);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v14 = qword_100617118;
  v15 = qword_100617118;
  sub_1004B6DF4();
  v58 = v15;
  v16 = sub_1004BBED4();
  v56 = v17;
  v57 = v16;
  v18 = *(v7 + 8);
  v18(v12, v6);
  sub_1004BBDA4();
  v13(v10, v12, v6);
  sub_1004B6DF4();
  v19 = sub_1004BBED4();
  v54 = v20;
  v55 = v19;
  v18(v12, v6);
  v53 = v18;
  if (v52 && [v52 userInterfaceIdiom] == 3)
  {
    v21 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_1004BBDA4();
    v52 = v13;
    v13(v10, v12, v6);
    v22 = v58;
    sub_1004B6DF4();
    v51 = v14;
    v23 = sub_1004BBED4();
    v49 = v24;
    v50 = v23;
    v18(v12, v6);
    v25 = v59;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v26 = sub_1004B6CE4();
    v47 = v27;
    v48 = v26;
    (*(v60 + 8))(v25, v61);
    v21 = sub_1000183D4(0, 1, 1, _swiftEmptyArrayStorage);
    v29 = v21[2];
    v28 = v21[3];
    if (v29 >= v28 >> 1)
    {
      v21 = sub_1000183D4((v28 > 1), v29 + 1, 1, v21);
    }

    v21[2] = (v29 + 1);
    v30 = &v21[7 * v29];
    v31 = v47;
    v30[4] = v48;
    v30[5] = v31;
    v32 = v49;
    v30[6] = v50;
    v30[7] = v32;
    *(v30 + 64) = 2;
    v30[9] = &unk_1004CE6D8;
    v30[10] = 0;
    v13 = v52;
  }

  sub_1004BBDA4();
  v13(v10, v12, v6);
  v33 = v58;
  sub_1004B6DF4();
  v34 = sub_1004BBED4();
  v36 = v35;
  v53(v12, v6);
  v37 = v59;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v38 = sub_1004B6CE4();
  v40 = v39;
  (*(v60 + 8))(v37, v61);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000183D4(0, v21[2] + 1, 1, v21);
    v21 = result;
  }

  v43 = v21[2];
  v42 = v21[3];
  if (v43 >= v42 >> 1)
  {
    result = sub_1000183D4((v42 > 1), v43 + 1, 1, v21);
    v21 = result;
  }

  v21[2] = (v43 + 1);
  v44 = &v21[7 * v43];
  v44[4] = v38;
  v44[5] = v40;
  v44[6] = v34;
  v44[7] = v36;
  *(v44 + 64) = 2;
  v44[9] = 0;
  v44[10] = 0;
  v45 = v56;
  *a2 = v57;
  *(a2 + 8) = v45;
  v46 = v54;
  *(a2 + 16) = v55;
  *(a2 + 24) = v46;
  *(a2 + 32) = 0;
  *(a2 + 33) = v63[0];
  *(a2 + 36) = *(v63 + 3);
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 49) = *v62;
  *(a2 + 52) = *&v62[3];
  *(a2 + 56) = v21;
  *(a2 + 64) = 0;
  return result;
}

id sub_10010B6C0()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v2 = result;
    LSApplicationWorkspace.openSettings()();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Alert.subscriptionRequiredAlert(traitCollection:)@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v3 = sub_1004B6D14();
  v60 = *(v3 - 8);
  v61 = v3;
  __chkstk_darwin(v3);
  v59 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004B6E64();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1004BBE14();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v47 - v11;
  sub_1004BBDA4();
  v13 = *(v7 + 16);
  v13(v10, v12, v6);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v14 = qword_100617118;
  v15 = qword_100617118;
  sub_1004B6DF4();
  v58 = v15;
  v16 = sub_1004BBED4();
  v56 = v17;
  v57 = v16;
  v18 = *(v7 + 8);
  v18(v12, v6);
  sub_1004BBDA4();
  v13(v10, v12, v6);
  sub_1004B6DF4();
  v19 = sub_1004BBED4();
  v54 = v20;
  v55 = v19;
  v18(v12, v6);
  v53 = v18;
  if (v52 && [v52 userInterfaceIdiom] == 3)
  {
    v21 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_1004BBDA4();
    v52 = v13;
    v13(v10, v12, v6);
    v22 = v58;
    sub_1004B6DF4();
    v51 = v14;
    v23 = sub_1004BBED4();
    v49 = v24;
    v50 = v23;
    v18(v12, v6);
    v25 = v59;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v26 = sub_1004B6CE4();
    v47 = v27;
    v48 = v26;
    (*(v60 + 8))(v25, v61);
    v21 = sub_1000183D4(0, 1, 1, _swiftEmptyArrayStorage);
    v29 = v21[2];
    v28 = v21[3];
    if (v29 >= v28 >> 1)
    {
      v21 = sub_1000183D4((v28 > 1), v29 + 1, 1, v21);
    }

    v21[2] = (v29 + 1);
    v30 = &v21[7 * v29];
    v31 = v47;
    v30[4] = v48;
    v30[5] = v31;
    v32 = v49;
    v30[6] = v50;
    v30[7] = v32;
    *(v30 + 64) = 2;
    v30[9] = &unk_1004CE6E0;
    v30[10] = 0;
    v13 = v52;
  }

  sub_1004BBDA4();
  v13(v10, v12, v6);
  v33 = v58;
  sub_1004B6DF4();
  v34 = sub_1004BBED4();
  v36 = v35;
  v53(v12, v6);
  v37 = v59;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v38 = sub_1004B6CE4();
  v40 = v39;
  (*(v60 + 8))(v37, v61);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000183D4(0, v21[2] + 1, 1, v21);
    v21 = result;
  }

  v43 = v21[2];
  v42 = v21[3];
  if (v43 >= v42 >> 1)
  {
    result = sub_1000183D4((v42 > 1), v43 + 1, 1, v21);
    v21 = result;
  }

  v21[2] = (v43 + 1);
  v44 = &v21[7 * v43];
  v44[4] = v38;
  v44[5] = v40;
  v44[6] = v34;
  v44[7] = v36;
  *(v44 + 64) = 2;
  v44[9] = 0;
  v44[10] = 0;
  v45 = v56;
  *a2 = v57;
  *(a2 + 8) = v45;
  v46 = v54;
  *(a2 + 16) = v55;
  *(a2 + 24) = v46;
  *(a2 + 32) = 0;
  *(a2 + 33) = v63[0];
  *(a2 + 36) = *(v63 + 3);
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 49) = *v62;
  *(a2 + 52) = *&v62[3];
  *(a2 + 56) = v21;
  *(a2 + 64) = 0;
  return result;
}

id sub_10010BD28()
{
  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v1 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v1;
  v2 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v2;
  v3 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v3;
  v4 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v4;
  sub_100051DEC(v0 + 16);
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v6 = result;
    sub_1004BBE64();
    v7 = sub_1004BBE24();

    [v6 setBoolValue:1 forSetting:v7];

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10010BEBC()
{
  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = v1;
    LSApplicationWorkspace.openRestrictions()();
  }

  v3 = *(v0 + 8);

  return v3();
}

double static Alert.contentUnavailableAlert()@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1004B6D14();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v30 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004B6E64();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1004BBE14();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  sub_1004BBDA4();
  v12 = *(v6 + 16);
  v12(v9, v11, v5);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v13 = qword_100617118;
  sub_1004B6DF4();
  v14 = v13;
  v15 = sub_1004BBED4();
  v28 = v16;
  v29 = v15;
  v17 = *(v6 + 8);
  v17(v11, v5);
  sub_1004BBDA4();
  v12(v9, v11, v5);
  sub_1004B6DF4();
  v18 = sub_1004BBED4();
  v20 = v19;
  v17(v11, v5);
  v21 = v30;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v22 = sub_1004B6CE4();
  v24 = v23;
  (*(v31 + 8))(v21, v32);
  sub_100003ABC(&qword_1006011F0);
  v25 = swift_allocObject();
  *&result = 1;
  *(v25 + 16) = xmmword_1004C50A0;
  *(v25 + 32) = v22;
  *(v25 + 40) = v24;
  *(v25 + 48) = v18;
  *(v25 + 56) = v20;
  *(v25 + 64) = 2;
  *(v25 + 72) = 0;
  *(v25 + 80) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  v27 = v28;
  *(a1 + 16) = v29;
  *(a1 + 24) = v27;
  *(a1 + 32) = 0;
  *(a1 + 33) = *v34;
  *(a1 + 36) = *&v34[3];
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 49) = *v33;
  *(a1 + 52) = *&v33[3];
  *(a1 + 56) = v25;
  *(a1 + 64) = 0;
  return result;
}

double static Alert.userUploadRequiredAlert()@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1004B6D14();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v35 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004B6E64();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1004BBE14();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  sub_1004BBDA4();
  v12 = *(v6 + 16);
  v12(v9, v11, v5);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v13 = qword_100617118;
  sub_1004B6DF4();
  v14 = v13;
  v15 = sub_1004BBED4();
  v33 = v16;
  v34 = v15;
  v17 = *(v6 + 8);
  v17(v11, v5);
  sub_1004BBDA4();
  v12(v9, v11, v5);
  sub_1004B6DF4();
  v18 = sub_1004BBED4();
  v31 = v19;
  v32 = v18;
  v17(v11, v5);
  sub_1004BBDA4();
  v12(v9, v11, v5);
  sub_1004B6DF4();
  v20 = sub_1004BBED4();
  v22 = v21;
  v17(v11, v5);
  v23 = v35;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v24 = sub_1004B6CE4();
  v26 = v25;
  (*(v36 + 8))(v23, v37);
  sub_100003ABC(&qword_1006011F0);
  v27 = swift_allocObject();
  *&result = 1;
  *(v27 + 16) = xmmword_1004C50A0;
  *(v27 + 32) = v24;
  *(v27 + 40) = v26;
  *(v27 + 48) = v20;
  *(v27 + 56) = v22;
  *(v27 + 64) = 2;
  *(v27 + 72) = 0;
  *(v27 + 80) = 0;
  v29 = v33;
  *a1 = v34;
  *(a1 + 8) = v29;
  v30 = v31;
  *(a1 + 16) = v32;
  *(a1 + 24) = v30;
  *(a1 + 32) = 0;
  *(a1 + 33) = *v39;
  *(a1 + 36) = *&v39[3];
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 49) = *v38;
  *(a1 + 52) = *&v38[3];
  *(a1 + 56) = v27;
  *(a1 + 64) = 0;
  return result;
}

__n128 static Alert.ageVerificationFallbackAlert()@<Q0>(uint64_t a1@<X8>)
{
  sub_100117524(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10010C744()
{
  if (qword_1005FFFB0 != -1)
  {
    swift_once();
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(0, 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10010C7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10010C804, 0, 0);
}

uint64_t sub_10010C804()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v1(0);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10010C874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10010C894, 0, 0);
}

id sub_10010C894()
{
  result = [objc_opt_self() sharedNetworkObserver];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    [result setMusicCellularDownloadingAllowed:1];

    if (v3)
    {
      (*(v0 + 16))(1);
    }

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10010C944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  return _swift_task_switch(sub_10010C964, 0, 0);
}

uint64_t sub_10010C964()
{
  v1 = *(v0 + 24);
  v3 = v1[3];
  v2 = v1[4];
  v4 = sub_100009178(v1, v3);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_10010CA20;

  return MusicLibrary.remove<A>(_:)(v4, v3, v2);
}

uint64_t sub_10010CA20()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10010CB54, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10010CB54()
{
  v14 = v0;
  if (qword_1005FFD38 != -1)
  {
    swift_once();
  }

  v1 = sub_1004B80B4();
  sub_100007084(v1, static Logger.actions);
  swift_errorRetain();
  v2 = sub_1004B8094();
  v3 = sub_1004BC984();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[6];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v8 = sub_1004BBF04();
    v10 = sub_100012018(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to delete item=%s", v6, 0xCu);
    sub_100004C6C(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_10010CD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10010CD44, 0, 0);
}

uint64_t sub_10010CD44()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() standardUserDefaults];
  [v2 setPrefersSpatialDownloads:1];

  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_10010CE70;

  return v5(1);
}

uint64_t sub_10010CE70()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10010CF64(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1000136EC;

  return v6(0);
}

__n128 static Alert.downloadPinsAlert(completion:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100117828(a1, a2, v6);
  v4 = v6[3];
  *(a3 + 32) = v6[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7;
  result = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_10010D0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10010D0C0, 0, 0);
}

uint64_t sub_10010D0C0()
{
  (*(v0 + 16))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10010D128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10010D148, 0, 0);
}

id sub_10010D148()
{
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    [result enableAutomaticDownloadsForPinnedLibraryEntities];

    v3(1);
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10010D1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  sub_1004BC474();
  *(v3 + 24) = sub_1004BC464();
  v5 = sub_1004BC3E4();

  return _swift_task_switch(sub_10010D28C, v5, v4);
}

uint64_t sub_10010D28C()
{

  v1 = [objc_opt_self() sharedApplication];
  sub_1004B6A44(v2);
  v4 = v3;
  sub_10003D128(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1001183C4(&qword_100600FD0, type metadata accessor for OpenExternalURLOptionsKey);
  isa = sub_1004BBC24().super.isa;

  [v1 openURL:v4 options:isa completionHandler:0];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10010D3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a2;
  v9 = sub_1004B6D14();
  v36 = *(v9 - 8);
  v37 = v9;
  __chkstk_darwin(v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004B6E64();
  __chkstk_darwin(v12 - 8);
  v13 = sub_1004BBE14();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v34 - v18;
  v39[3] = a3;
  v39[4] = a4;
  v38 = a4;
  v20 = sub_1000133B0(v39);
  (*(*(a3 - 8) + 16))(v20, a1, a3);
  sub_1004BBDA4();
  (*(v14 + 16))(v17, v19, v13);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v21 = qword_100617118;
  sub_1004B6DF4();
  v34 = sub_1004BBED4();
  v23 = v22;
  (*(v14 + 8))(v19, v13);
  sub_10001342C(v39, v40);
  v24 = swift_allocObject();
  sub_100013414(v40, v24 + 16);
  *(v24 + 56) = v35;

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v25 = sub_1004B6CE4();
  v27 = v26;
  (*(v36 + 8))(v11, v37);
  v28 = sub_100112EA8(v20, a3, v38);
  v30 = v29;
  sub_100003ABC(&qword_1006011F0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1004C50C0;
  *(v31 + 32) = v25;
  *(v31 + 40) = v27;
  *(v31 + 48) = v34;
  *(v31 + 56) = v23;
  *(v31 + 64) = 1;
  *(v31 + 72) = &unk_1004CE778;
  *(v31 + 80) = v24;

  sub_100114F58(v40);
  v32 = v40[1];
  *(v31 + 88) = v40[0];
  *(v31 + 104) = v32;
  *(v31 + 120) = v40[2];
  *(v31 + 136) = v41;

  result = sub_100004C6C(v39);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = v28;
  *(a5 + 24) = v30;
  *(a5 + 32) = 1;
  *(a5 + 33) = v40[0];
  *(a5 + 36) = *(v40 + 3);
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  *(a5 + 49) = v39[0];
  *(a5 + 52) = *(v39 + 3);
  *(a5 + 56) = v31;
  *(a5 + 64) = 0;
  return result;
}

uint64_t sub_10010D7E8(uint64_t a1)
{
  v124 = a1;
  v103 = sub_1004BB4D4();
  v97 = *(v103 - 8);
  v1 = __chkstk_darwin(v103);
  v95 = &v91 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v96 = &v91 - v4;
  __chkstk_darwin(v3);
  v98 = &v91 - v5;
  v100 = sub_1004BB9B4();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v101 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1004BBA44();
  v104 = *(v107 - 8);
  v7 = __chkstk_darwin(v107);
  v102 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v105 = &v91 - v9;
  v109 = sub_1004B7CF4();
  v106 = *(v109 - 8);
  v10 = __chkstk_darwin(v109);
  v91 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v110 = &v91 - v12;
  v111 = sub_1004B7C94();
  v108 = *(v111 - 8);
  __chkstk_darwin(v111);
  v113 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1004B7A34();
  v112 = *(v115 - 8);
  v14 = __chkstk_darwin(v115);
  v94 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v116 = &v91 - v16;
  v17 = sub_1004BB384();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v93 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v118 = &v91 - v21;
  v120 = sub_1004BBA84();
  v117 = *(v120 - 8);
  __chkstk_darwin(v120);
  v119 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1004BAD04();
  v121 = *(v23 - 8);
  v24 = __chkstk_darwin(v23);
  v92 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v91 - v26;
  v28 = sub_1004B6E64();
  __chkstk_darwin(v28 - 8);
  v123 = &v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1004BBE14();
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v34 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = &v91 - v35;
  v37 = sub_1004BB434();
  v122 = *(v37 - 8);
  __chkstk_darwin(v37);
  v39 = &v91 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126[3] = v17;
  v126[4] = &protocol witness table for Song;
  v40 = sub_1000133B0(v126);
  v114 = v18;
  v41 = *(v18 + 16);
  v42 = v124;
  v124 = v17;
  v41(v40, v42, v17);
  sub_10001342C(v126, v125);
  sub_100003ABC(&qword_100603FB8);
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v31 + 16))(v34, v36, v30);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v43 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v31 + 8))(v36, v30);
    v45 = *(v122 + 8);
    v46 = v39;
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v31 + 16))(v34, v36, v30);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v48 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v31 + 8))(v36, v30);
    (*(v121 + 8))(v27, v23);
    goto LABEL_15;
  }

  v50 = v119;
  v49 = v120;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v31 + 16))(v34, v36, v30);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v51 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v31 + 8))(v36, v30);
    v45 = *(v117 + 8);
    v46 = v50;
    v47 = v49;
    goto LABEL_14;
  }

  v37 = v124;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v31 + 16))(v34, v36, v30);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v53 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v31 + 8))(v36, v30);
    v45 = *(v114 + 8);
    v46 = v118;
    goto LABEL_5;
  }

  v37 = v115;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v31 + 16))(v34, v36, v30);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v54 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v31 + 8))(v36, v30);
    v45 = *(v112 + 8);
    v46 = v116;
    goto LABEL_5;
  }

  v37 = v111;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v31 + 16))(v34, v36, v30);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v55 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v31 + 8))(v36, v30);
    v45 = *(v108 + 8);
    v56 = &v128;
LABEL_33:
    v46 = *(v56 - 32);
LABEL_5:
    v47 = v37;
LABEL_14:
    v45(v46, v47);
LABEL_15:
    sub_100004C6C(v125);
LABEL_16:
    sub_100004C6C(v126);
    return v44;
  }

  v37 = v109;
  v57 = v31;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v31 + 16))(v34, v36, v30);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v58 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v31 + 8))(v36, v30);
    v45 = *(v106 + 8);
    v56 = &v127;
    goto LABEL_33;
  }

  v59 = v105;
  v60 = v107;
  if (!swift_dynamicCast())
  {
    v72 = v98;
    v73 = v103;
    v74 = swift_dynamicCast();
    v75 = v34;
    v76 = v124;
    if (v74)
    {
      v77 = v97;
      v78 = v96;
      (*(v97 + 32))(v96, v72, v73);
      v79 = v95;
      (*(v77 + 16))(v95, v78, v73);
      v80 = (*(v77 + 88))(v79, v73);
      if (v80 == enum case for Track.song(_:))
      {
        (*(v77 + 96))(v79, v73);
        v81 = v114;
        v82 = v93;
        (*(v114 + 32))(v93, v79, v76);
        v83 = sub_10010D7E8(v82);
        v84 = v76;
        v44 = v83;
        (*(v81 + 8))(v82, v84);
LABEL_46:
        (*(v77 + 8))(v78, v73);
        goto LABEL_15;
      }

      if (v80 == enum case for Track.musicVideo(_:))
      {
        (*(v77 + 96))(v79, v73);
        v87 = v121;
        v88 = v92;
        (*(v121 + 32))(v92, v79, v23);
        v44 = sub_10010ED30(v88);
        (*(v87 + 8))(v88, v23);
        goto LABEL_46;
      }

      v89 = *(v77 + 8);
      v89(v78, v73);
      v89(v79, v73);
    }

LABEL_55:
    sub_100004C6C(v125);
    sub_1004BBDA4();
    (*(v57 + 16))(v75, v36, v30);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v90 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v57 + 8))(v36, v30);
    goto LABEL_16;
  }

  v61 = v104;
  v62 = v102;
  (*(v104 + 32))(v102, v59, v60);
  v63 = v101;
  sub_1004BB9C4();
  v64 = v99;
  v65 = v100;
  v66 = (*(v99 + 88))(v63, v100);
  if (v66 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v64 + 96))(v63, v65);
    v67 = v112;
    v68 = v94;
    v69 = v115;
    (*(v112 + 32))(v94, v63, v115);
    v70 = sub_1001102FC(v68);
LABEL_37:
    v71 = v69;
    v44 = v70;
    (*(v67 + 8))(v68, v71);
LABEL_43:
    (*(v61 + 8))(v62, v107);
    goto LABEL_15;
  }

  if (v66 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v64 + 96))(v63, v65);
    v85 = v121;
    v86 = v92;
    (*(v121 + 32))(v92, v63, v23);
    v44 = sub_10010ED30(v86);
    (*(v85 + 8))(v86, v23);
    goto LABEL_43;
  }

  if (v66 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v64 + 96))(v63, v65);
    v67 = v114;
    v68 = v93;
    v69 = v124;
    (*(v114 + 32))(v93, v63, v124);
    v70 = sub_10010D7E8(v68);
    goto LABEL_37;
  }

  if (v66 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v64 + 96))(v63, v65);
    v67 = v106;
    v68 = v91;
    v69 = v109;
    (*(v106 + 32))(v91, v63, v109);
    v70 = sub_1001118B4(v68);
    goto LABEL_37;
  }

  if (v66 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v66 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v61 + 8))(v62, v107);
    (*(v64 + 8))(v63, v65);
    v75 = v34;
    goto LABEL_55;
  }

  (*(v64 + 8))(v63, v65);
  result = sub_1004BD624();
  __break(1u);
  return result;
}

uint64_t sub_10010ED30(uint64_t a1)
{
  v129 = a1;
  v106 = sub_1004BB4D4();
  v102 = *(v106 - 8);
  v1 = __chkstk_darwin(v106);
  v100 = &v96 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v101 = &v96 - v4;
  __chkstk_darwin(v3);
  v103 = &v96 - v5;
  v104 = sub_1004BB9B4();
  v108 = *(v104 - 8);
  __chkstk_darwin(v104);
  v105 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1004BBA44();
  v107 = *(v112 - 8);
  v7 = __chkstk_darwin(v112);
  v109 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v110 = &v96 - v9;
  v115 = sub_1004B7CF4();
  v111 = *(v115 - 8);
  v10 = __chkstk_darwin(v115);
  v96 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v114 = &v96 - v12;
  v116 = sub_1004B7C94();
  v113 = *(v116 - 8);
  __chkstk_darwin(v116);
  v118 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1004B7A34();
  v117 = *(v121 - 8);
  v14 = __chkstk_darwin(v121);
  v99 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v120 = &v96 - v16;
  v124 = sub_1004BB384();
  v119 = *(v124 - 8);
  v17 = __chkstk_darwin(v124);
  v98 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v123 = &v96 - v19;
  v127 = sub_1004BBA84();
  v122 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1004BAD04();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v97 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v96 - v25;
  v27 = sub_1004B6E64();
  __chkstk_darwin(v27 - 8);
  v128 = &v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1004BBE14();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v33 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v96 - v34;
  v36 = sub_1004BB434();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v96 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131[3] = v21;
  v131[4] = &protocol witness table for MusicVideo;
  v40 = sub_1000133B0(v131);
  v125 = v22;
  (*(v22 + 16))(v40, v129, v21);
  sub_10001342C(v131, v130);
  sub_100003ABC(&qword_100603FB8);
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v41 = qword_100617118;
    sub_1004B6DF4();
    v42 = sub_1004BBED4();
    (*(v30 + 8))(v35, v29);
    (*(v37 + 8))(v39, v36);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v43 = qword_100617118;
    sub_1004B6DF4();
    v42 = sub_1004BBED4();
    (*(v30 + 8))(v35, v29);
    (*(v125 + 8))(v26, v21);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v44 = qword_100617118;
    sub_1004B6DF4();
    v42 = sub_1004BBED4();
    (*(v30 + 8))(v35, v29);
    (*(v122 + 8))(v126, v127);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v45 = qword_100617118;
    sub_1004B6DF4();
    v42 = sub_1004BBED4();
    (*(v30 + 8))(v35, v29);
    (*(v119 + 8))(v123, v124);
    goto LABEL_29;
  }

  v46 = v35;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v47 = qword_100617118;
    sub_1004B6DF4();
    v42 = sub_1004BBED4();
    (*(v30 + 8))(v35, v29);
    (*(v117 + 8))(v120, v121);
    goto LABEL_29;
  }

  v48 = v116;
  v49 = v29;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v30 + 16))(v33, v46, v29);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v50 = qword_100617118;
    sub_1004B6DF4();
    v42 = sub_1004BBED4();
    (*(v30 + 8))(v46, v29);
    (*(v113 + 8))(v118, v48);
    goto LABEL_29;
  }

  v51 = v114;
  v52 = v115;
  v53 = v30;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v30 + 16))(v33, v46, v49);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v54 = qword_100617118;
    sub_1004B6DF4();
    v42 = sub_1004BBED4();
    (*(v30 + 8))(v46, v49);
    (*(v111 + 8))(v51, v52);
    goto LABEL_29;
  }

  v56 = v110;
  v57 = v112;
  if (!swift_dynamicCast())
  {
    v69 = v103;
    v70 = v106;
    v71 = v33;
    if (swift_dynamicCast())
    {
      v72 = v69;
      v73 = v102;
      v74 = v101;
      (*(v102 + 32))(v101, v72, v70);
      v75 = v100;
      (*(v73 + 16))(v100, v74, v70);
      v76 = (*(v73 + 88))(v75, v70);
      if (v76 == enum case for Track.song(_:))
      {
        (*(v73 + 96))(v75, v70);
        v77 = v119;
        v78 = v98;
        v79 = v124;
        (*(v119 + 32))(v98, v75, v124);
        v80 = sub_10010D7E8(v78);
        v81 = v79;
        v42 = v80;
        (*(v77 + 8))(v78, v81);
LABEL_42:
        (*(v73 + 8))(v74, v70);
        goto LABEL_29;
      }

      if (v76 == enum case for Track.musicVideo(_:))
      {
        (*(v73 + 96))(v75, v70);
        v85 = v125;
        v86 = v97;
        (*(v125 + 32))(v97, v75, v21);
        v87 = sub_10010ED30(v86);
        (*(v85 + 8))(v86, v21);
        v42 = v87;
        goto LABEL_42;
      }

      v93 = *(v73 + 8);
      v93(v74, v70);
      v93(v75, v70);
    }

LABEL_52:
    sub_100004C6C(v130);
    sub_1004BBDA4();
    (*(v53 + 16))(v71, v46, v49);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v95 = qword_100617118;
    sub_1004B6DF4();
    v42 = sub_1004BBED4();
    (*(v53 + 8))(v46, v49);
    goto LABEL_30;
  }

  v58 = v107;
  v59 = v109;
  (*(v107 + 32))(v109, v56, v57);
  v60 = v105;
  sub_1004BB9C4();
  v61 = v108;
  v62 = v104;
  v63 = (*(v108 + 88))(v60, v104);
  if (v63 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v61 + 96))(v60, v62);
    v64 = v117;
    v65 = v99;
    v66 = v121;
    (*(v117 + 32))(v99, v60, v121);
    v67 = sub_1001102FC(v65);
LABEL_34:
    v68 = v66;
    v42 = v67;
    (*(v64 + 8))(v65, v68);
    (*(v58 + 8))(v59, v112);
LABEL_29:
    sub_100004C6C(v130);
LABEL_30:
    sub_100004C6C(v131);
    return v42;
  }

  if (v63 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v108 + 96))(v60, v62);
    v82 = v125;
    v83 = v97;
    (*(v125 + 32))(v97, v60, v21);
    v84 = sub_10010ED30(v83);
    (*(v82 + 8))(v83, v21);
    v42 = v84;
LABEL_45:
    (*(v58 + 8))(v109, v112);
    goto LABEL_29;
  }

  if (v63 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v108 + 96))(v60, v62);
    v88 = v119;
    v89 = v98;
    v90 = v124;
    (*(v119 + 32))(v98, v60, v124);
    v91 = sub_10010D7E8(v89);
    v92 = v90;
    v42 = v91;
    (*(v88 + 8))(v89, v92);
    goto LABEL_45;
  }

  v94 = v108;
  v59 = v109;
  if (v63 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v108 + 96))(v60, v62);
    v64 = v111;
    v65 = v96;
    v66 = v115;
    (*(v111 + 32))(v96, v60, v115);
    v67 = sub_1001118B4(v65);
    goto LABEL_34;
  }

  if (v63 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v63 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v58 + 8))(v109, v112);
    (*(v94 + 8))(v60, v62);
    v71 = v33;
    goto LABEL_52;
  }

  (*(v108 + 8))(v60, v62);
  result = sub_1004BD624();
  __break(1u);
  return result;
}

uint64_t sub_1001102FC(uint64_t a1)
{
  v123 = a1;
  v103 = sub_1004BB4D4();
  v98 = *(v103 - 8);
  v1 = __chkstk_darwin(v103);
  v96 = &v91 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v97 = &v91 - v4;
  __chkstk_darwin(v3);
  v99 = &v91 - v5;
  v101 = sub_1004BB9B4();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v102 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1004BBA44();
  v104 = *(v108 - 8);
  v7 = __chkstk_darwin(v108);
  v105 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v106 = &v91 - v9;
  v110 = sub_1004B7CF4();
  v107 = *(v110 - 8);
  v10 = __chkstk_darwin(v110);
  v92 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v111 = &v91 - v12;
  v112 = sub_1004B7C94();
  v109 = *(v112 - 8);
  __chkstk_darwin(v112);
  v113 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004B7A34();
  v124 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v95 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v115 = &v91 - v17;
  v118 = sub_1004BB384();
  v114 = *(v118 - 8);
  v18 = __chkstk_darwin(v118);
  v94 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v117 = &v91 - v20;
  v119 = sub_1004BBA84();
  v116 = *(v119 - 8);
  __chkstk_darwin(v119);
  v121 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1004BAD04();
  v120 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v93 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v91 - v25;
  v27 = sub_1004B6E64();
  __chkstk_darwin(v27 - 8);
  v122 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1004BBE14();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v33 = &v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v91 - v34;
  v36 = sub_1004BB434();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v91 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126[3] = v14;
  v126[4] = sub_1001183C4(&qword_100603FC0, &type metadata accessor for MusicMovie);
  v40 = sub_1000133B0(v126);
  v41 = v123;
  v42 = *(v124 + 16);
  v123 = v14;
  v42(v40, v41, v14);
  sub_10001342C(v126, v125);
  sub_100003ABC(&qword_100603FB8);
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v43 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v30 + 8))(v35, v29);
    (*(v37 + 8))(v39, v36);
    goto LABEL_16;
  }

  v45 = v22;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v46 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v30 + 8))(v35, v29);
    v47 = *(v120 + 8);
    v48 = v26;
LABEL_9:
    v49 = v45;
LABEL_15:
    v47(v48, v49);
LABEL_16:
    sub_100004C6C(v125);
LABEL_17:
    sub_100004C6C(v126);
    return v44;
  }

  v50 = v119;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v51 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v30 + 8))(v35, v29);
    v47 = *(v116 + 8);
    v48 = v121;
    goto LABEL_14;
  }

  v53 = v45;
  v54 = v117;
  v45 = v118;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v55 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v30 + 8))(v35, v29);
    v47 = *(v114 + 8);
    v48 = v54;
    goto LABEL_9;
  }

  v50 = v123;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v56 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v30 + 8))(v35, v29);
    v47 = *(v124 + 8);
    v48 = v115;
    goto LABEL_14;
  }

  v50 = v112;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v57 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v30 + 8))(v35, v29);
    v47 = *(v109 + 8);
    v58 = &v128;
LABEL_34:
    v48 = *(v58 - 32);
LABEL_14:
    v49 = v50;
    goto LABEL_15;
  }

  v50 = v110;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v59 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v30 + 8))(v35, v29);
    v47 = *(v107 + 8);
    v58 = &v127;
    goto LABEL_34;
  }

  v60 = v106;
  v61 = v108;
  if (!swift_dynamicCast())
  {
    v72 = v103;
    v73 = v35;
    if (swift_dynamicCast())
    {
      v124 = v29;
      v74 = v98;
      v75 = v97;
      (*(v98 + 32))();
      v76 = v96;
      (*(v74 + 16))(v96, v75, v72);
      v77 = (*(v74 + 88))(v76, v72);
      if (v77 == enum case for Track.song(_:))
      {
        (*(v74 + 96))(v76, v72);
        v78 = v114;
        v79 = v94;
        (*(v114 + 32))(v94, v76, v45);
        v44 = sub_10010D7E8(v79);
        (*(v78 + 8))(v79, v45);
        (*(v74 + 8))(v75, v72);
        goto LABEL_16;
      }

      if (v77 == enum case for Track.musicVideo(_:))
      {
        (*(v74 + 96))(v76, v72);
        v82 = v120;
        v83 = v75;
        v84 = v93;
        (*(v120 + 32))(v93, v76, v53);
        v44 = sub_10010ED30(v84);
        (*(v82 + 8))(v84, v53);
        (*(v74 + 8))(v83, v72);
        goto LABEL_16;
      }

      v89 = *(v74 + 8);
      v89(v75, v72);
      v89(v76, v72);
      v29 = v124;
    }

LABEL_55:
    sub_100004C6C(v125);
    sub_1004BBDA4();
    (*(v30 + 16))(v33, v73, v29);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v90 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v30 + 8))(v73, v29);
    goto LABEL_17;
  }

  v62 = v61;
  v63 = v104;
  v64 = v105;
  (*(v104 + 32))(v105, v60, v62);
  v65 = v102;
  sub_1004BB9C4();
  v66 = v100;
  v67 = v101;
  v68 = (*(v100 + 88))(v65, v101);
  if (v68 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v66 + 96))(v65, v67);
    v69 = v123;
    v70 = v124;
    v71 = v95;
    (*(v124 + 32))(v95, v65, v123);
    v44 = sub_1001102FC(v71);
    (*(v70 + 8))(v71, v69);
    (*(v63 + 8))(v64, v108);
    goto LABEL_16;
  }

  if (v68 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v66 + 96))(v65, v67);
    v80 = v120;
    v81 = v93;
    (*(v120 + 32))(v93, v65, v53);
    v44 = sub_10010ED30(v81);
    (*(v80 + 8))(v81, v53);
LABEL_51:
    (*(v63 + 8))(v105, v108);
    goto LABEL_16;
  }

  if (v68 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v66 + 96))(v65, v67);
    v85 = v114;
    v86 = v94;
    v87 = v118;
    (*(v114 + 32))(v94, v65, v118);
    v88 = sub_10010D7E8(v86);
LABEL_50:
    v44 = v88;
    (*(v85 + 8))(v86, v87);
    goto LABEL_51;
  }

  if (v68 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v66 + 96))(v65, v67);
    v85 = v107;
    v86 = v92;
    v87 = v110;
    (*(v107 + 32))(v92, v65, v110);
    v88 = sub_1001118B4(v86);
    goto LABEL_50;
  }

  if (v68 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v68 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v63 + 8))(v105, v108);
    (*(v66 + 8))(v65, v67);
    v73 = v35;
    goto LABEL_55;
  }

  (*(v66 + 8))(v65, v67);
  result = sub_1004BD624();
  __break(1u);
  return result;
}

uint64_t sub_1001118B4(uint64_t a1)
{
  v134 = a1;
  v114 = sub_1004BB4D4();
  v109 = *(v114 - 8);
  v1 = __chkstk_darwin(v114);
  v107 = &v102 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v108 = &v102 - v4;
  __chkstk_darwin(v3);
  v110 = &v102 - v5;
  v112 = sub_1004BB9B4();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v113 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1004BBA44();
  v115 = *(v118 - 8);
  v7 = __chkstk_darwin(v118);
  v116 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v117 = &v102 - v9;
  v10 = sub_1004B7CF4();
  v135 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v103 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v120 = &v102 - v13;
  v123 = sub_1004B7C94();
  v119 = *(v123 - 8);
  __chkstk_darwin(v123);
  v122 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1004B7A34();
  v121 = *(v126 - 8);
  v15 = __chkstk_darwin(v126);
  v106 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v125 = &v102 - v17;
  v128 = sub_1004BB384();
  v124 = *(v128 - 8);
  v18 = __chkstk_darwin(v128);
  v105 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v129 = &v102 - v20;
  v131 = sub_1004BBA84();
  v127 = *(v131 - 8);
  __chkstk_darwin(v131);
  v130 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1004BAD04();
  v132 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v104 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v102 - v25;
  v27 = sub_1004B6E64();
  __chkstk_darwin(v27 - 8);
  v133 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1004BBE14();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v33 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v102 - v34;
  v36 = sub_1004BB434();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v102 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137[3] = v10;
  v137[4] = sub_1001183C4(&qword_100603FC8, &type metadata accessor for TVEpisode);
  v40 = sub_1000133B0(v137);
  v41 = v134;
  v42 = *(v135 + 16);
  v134 = v10;
  v42(v40, v41, v10);
  sub_10001342C(v137, v136);
  sub_100003ABC(&qword_100603FB8);
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v43 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v30 + 8))(v35, v29);
    (*(v37 + 8))(v39, v36);
    goto LABEL_27;
  }

  v45 = v22;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v46 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v30 + 8))(v35, v29);
    v47 = *(v132 + 8);
    v48 = v26;
LABEL_9:
    v49 = v45;
LABEL_26:
    v47(v48, v49);
LABEL_27:
    sub_100004C6C(v136);
LABEL_28:
    sub_100004C6C(v137);
    return v44;
  }

  v51 = v130;
  v50 = v131;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v52 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v30 + 8))(v35, v29);
    (*(v127 + 8))(v51, v50);
    goto LABEL_27;
  }

  v53 = v128;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v54 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v30 + 8))(v35, v29);
    (*(v124 + 8))(v129, v53);
    goto LABEL_27;
  }

  v55 = v33;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v56 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v30 + 8))(v35, v29);
    (*(v121 + 8))(v125, v126);
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v57 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v30 + 8))(v35, v29);
    v47 = *(v119 + 8);
    v48 = v122;
    v49 = v123;
    goto LABEL_26;
  }

  v131 = v45;
  v45 = v134;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v59 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v30 + 8))(v35, v29);
    v47 = *(v135 + 8);
    v48 = v120;
    goto LABEL_9;
  }

  v60 = v117;
  v61 = v118;
  if (!swift_dynamicCast())
  {
    v74 = v110;
    v75 = v114;
    v76 = v29;
    v77 = v35;
    if (swift_dynamicCast())
    {
      v78 = v109;
      v79 = v108;
      (*(v109 + 32))(v108, v74, v75);
      v80 = v107;
      (*(v78 + 16))(v107, v79, v75);
      v81 = (*(v78 + 88))(v80, v75);
      if (v81 == enum case for Track.song(_:))
      {
        (*(v78 + 96))(v80, v75);
        v82 = v124;
        v83 = v105;
        (*(v124 + 32))(v105, v80, v53);
        v84 = sub_10010D7E8(v83);
        (*(v82 + 8))(v83, v53);
        v44 = v84;
LABEL_43:
        (*(v78 + 8))(v79, v75);
        goto LABEL_27;
      }

      if (v81 == enum case for Track.musicVideo(_:))
      {
        (*(v78 + 96))(v80, v75);
        v90 = v131;
        v91 = v132;
        v92 = v104;
        (*(v132 + 32))(v104, v80, v131);
        v93 = sub_10010ED30(v92);
        v94 = v90;
        v44 = v93;
        (*(v91 + 8))(v92, v94);
        goto LABEL_43;
      }

      v99 = *(v78 + 8);
      v99(v79, v75);
      v99(v80, v75);
    }

LABEL_54:
    sub_100004C6C(v136);
    sub_1004BBDA4();
    (*(v30 + 16))(v55, v77, v76);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v101 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v30 + 8))(v77, v76);
    goto LABEL_28;
  }

  v62 = v115;
  v63 = v116;
  (*(v115 + 32))(v116, v60, v61);
  v64 = v113;
  sub_1004BB9C4();
  v65 = v111;
  v66 = v112;
  v67 = (*(v111 + 88))(v64, v112);
  if (v67 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v65 + 96))(v64, v66);
    v68 = v121;
    v69 = v106;
    v70 = v126;
    (*(v121 + 32))(v106, v64, v126);
    v71 = sub_1001102FC(v69);
    (*(v68 + 8))(v69, v70);
    v72 = *(v62 + 8);
    v73 = v63;
LABEL_50:
    v100 = v61;
    v44 = v71;
    v72(v73, v100);
    goto LABEL_27;
  }

  if (v67 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v65 + 96))(v64, v66);
    v85 = v131;
    v86 = v132;
    v87 = v104;
    (*(v132 + 32))(v104, v64, v131);
    v88 = sub_10010ED30(v87);
    (*(v86 + 8))(v87, v85);
    v89 = v61;
    v44 = v88;
    (*(v62 + 8))(v116, v89);
    goto LABEL_27;
  }

  if (v67 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v65 + 96))(v64, v66);
    v95 = v124;
    v96 = v105;
    v97 = v128;
    (*(v124 + 32))(v105, v64, v128);
    v98 = sub_10010D7E8(v96);
LABEL_49:
    v71 = v98;
    (*(v95 + 8))(v96, v97);
    v72 = *(v62 + 8);
    v73 = v116;
    goto LABEL_50;
  }

  if (v67 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v65 + 96))(v64, v66);
    v97 = v134;
    v95 = v135;
    v96 = v103;
    (*(v135 + 32))(v103, v64, v134);
    v98 = sub_1001118B4(v96);
    goto LABEL_49;
  }

  if (v67 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v67 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v62 + 8))(v116, v61);
    (*(v65 + 8))(v64, v66);
    v76 = v29;
    v77 = v35;
    goto LABEL_54;
  }

  (*(v65 + 8))(v64, v66);
  result = sub_1004BD624();
  __break(1u);
  return result;
}

uint64_t sub_100112EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v120 = a3;
  v121 = a1;
  v99 = sub_1004BB4D4();
  v93 = *(v99 - 8);
  v4 = __chkstk_darwin(v99);
  v91 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v92 = &v86 - v7;
  __chkstk_darwin(v6);
  v94 = &v86 - v8;
  v96 = sub_1004BB9B4();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v97 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1004BBA44();
  v100 = *(v102 - 8);
  v10 = __chkstk_darwin(v102);
  v98 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v101 = &v86 - v12;
  v105 = sub_1004B7CF4();
  v103 = *(v105 - 8);
  v13 = __chkstk_darwin(v105);
  v87 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v106 = &v86 - v15;
  v109 = sub_1004B7C94();
  v104 = *(v109 - 8);
  __chkstk_darwin(v109);
  v108 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1004B7A34();
  v107 = *(v112 - 8);
  v17 = __chkstk_darwin(v112);
  v90 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v111 = &v86 - v19;
  v114 = sub_1004BB384();
  v110 = *(v114 - 8);
  v20 = __chkstk_darwin(v114);
  v89 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v115 = &v86 - v22;
  v117 = sub_1004BBA84();
  v113 = *(v117 - 8);
  __chkstk_darwin(v117);
  v116 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1004BAD04();
  v118 = *(v24 - 8);
  v25 = __chkstk_darwin(v24);
  v88 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v86 - v27;
  v29 = sub_1004B6E64();
  __chkstk_darwin(v29 - 8);
  v119 = &v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1004BBE14();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v35 = &v86 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v37 = &v86 - v36;
  v38 = sub_1004BB434();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v86 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123[3] = a2;
  v123[4] = v120;
  v42 = sub_1000133B0(v123);
  (*(*(a2 - 8) + 16))(v42, v121, a2);
  sub_10001342C(v123, v122);
  sub_100003ABC(&qword_100603FB8);
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v32 + 16))(v35, v37, v31);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v43 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v32 + 8))(v37, v31);
    (*(v39 + 8))(v41, v38);
    goto LABEL_29;
  }

  v45 = v24;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v32 + 16))(v35, v37, v31);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v46 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v32 + 8))(v37, v31);
    (*(v118 + 8))(v28, v24);
    goto LABEL_29;
  }

  v48 = v116;
  v47 = v117;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v32 + 16))(v35, v37, v31);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v49 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v32 + 8))(v37, v31);
    (*(v113 + 8))(v48, v47);
    goto LABEL_29;
  }

  v50 = v114;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v32 + 16))(v35, v37, v31);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v51 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v32 + 8))(v37, v31);
    (*(v110 + 8))(v115, v50);
    goto LABEL_29;
  }

  v52 = v37;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v32 + 16))(v35, v37, v31);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v53 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v32 + 8))(v37, v31);
    (*(v107 + 8))(v111, v112);
    goto LABEL_29;
  }

  v54 = v31;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v32 + 16))(v35, v37, v31);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v55 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v32 + 8))(v37, v31);
    (*(v104 + 8))(v108, v109);
    goto LABEL_29;
  }

  v56 = v105;
  v57 = v32;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v32 + 16))(v35, v37, v54);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v58 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v32 + 8))(v37, v54);
    (*(v103 + 8))(v106, v56);
    goto LABEL_29;
  }

  v60 = v101;
  v61 = v102;
  if (!swift_dynamicCast())
  {
    v73 = v94;
    v74 = v99;
    if (swift_dynamicCast())
    {
      v121 = v45;
      v75 = v93;
      v76 = v92;
      (*(v93 + 32))(v92, v73, v74);
      v77 = v91;
      (*(v75 + 16))(v91, v76, v74);
      v78 = (*(v75 + 88))(v77, v74);
      if (v78 == enum case for Track.song(_:))
      {
        (*(v75 + 96))(v77, v74);
        v79 = v110;
        v80 = v89;
        (*(v110 + 32))(v89, v77, v50);
        v44 = sub_10010D7E8(v80);
        (*(v79 + 8))(v80, v50);
LABEL_41:
        (*(v75 + 8))(v76, v74);
LABEL_29:
        sub_100004C6C(v122);
LABEL_30:
        sub_100004C6C(v123);
        return v44;
      }

      if (v78 == enum case for Track.musicVideo(_:))
      {
        (*(v75 + 96))(v77, v74);
        v81 = v118;
        v82 = v88;
        v83 = v121;
        (*(v118 + 32))(v88, v77, v121);
        v44 = sub_10010ED30(v82);
        (*(v81 + 8))(v82, v83);
        goto LABEL_41;
      }

      v84 = *(v75 + 8);
      v84(v76, v74);
      v84(v77, v74);
    }

LABEL_51:
    sub_100004C6C(v122);
    sub_1004BBDA4();
    (*(v57 + 16))(v35, v52, v54);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v85 = qword_100617118;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    (*(v57 + 8))(v52, v54);
    goto LABEL_30;
  }

  v121 = v45;
  v62 = v60;
  v63 = v100;
  v64 = v98;
  (*(v100 + 32))(v98, v62, v61);
  v65 = v97;
  sub_1004BB9C4();
  v66 = v95;
  v67 = v96;
  v68 = (*(v95 + 88))(v65, v96);
  if (v68 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v66 + 96))(v65, v67);
    v69 = v107;
    v70 = v90;
    v71 = v112;
    (*(v107 + 32))(v90, v65, v112);
    v72 = sub_1001102FC(v70);
LABEL_47:
    v44 = v72;
    (*(v69 + 8))(v70, v71);
    (*(v63 + 8))(v64, v61);
    goto LABEL_29;
  }

  if (v68 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v66 + 96))(v65, v67);
    v69 = v118;
    v70 = v88;
    v71 = v121;
    (*(v118 + 32))(v88, v65, v121);
    v72 = sub_10010ED30(v70);
    goto LABEL_47;
  }

  if (v68 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v66 + 96))(v65, v67);
    v69 = v110;
    v70 = v89;
    v71 = v114;
    (*(v110 + 32))(v89, v65, v114);
    v72 = sub_10010D7E8(v70);
    goto LABEL_47;
  }

  if (v68 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v66 + 96))(v65, v67);
    v69 = v103;
    v70 = v87;
    v71 = v105;
    (*(v103 + 32))(v87, v65, v105);
    v72 = sub_1001118B4(v70);
    goto LABEL_47;
  }

  if (v68 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v68 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v63 + 8))(v64, v61);
    (*(v66 + 8))(v65, v67);
    goto LABEL_51;
  }

  (*(v66 + 8))(v65, v67);
  result = sub_1004BD624();
  __break(1u);
  return result;
}

uint64_t sub_100114418@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = sub_1004B6D14();
  v101 = *(v103 - 8);
  __chkstk_darwin(v103);
  v100 = v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004B7674();
  v92 = *(v5 - 8);
  v93 = v5;
  __chkstk_darwin(v5);
  v91 = v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004B6E64();
  __chkstk_darwin(v7 - 8);
  v9 = v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1004BBE14();
  v10 = *(v104 - 8);
  v11 = __chkstk_darwin(v104);
  v105 = v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v89 - v13;
  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v116[4] = v112;
  v116[5] = v113;
  v116[6] = v114;
  v116[7] = v115;
  v116[0] = v108;
  v116[1] = v109;
  v116[2] = v110;
  v116[3] = v111;
  v15 = *(&v110 + 1);

  sub_100051DEC(v116);
  LODWORD(v96) = sub_1000FE42C(7, v15);

  v16 = [objc_opt_self() allowAccountModifications];
  v102 = v9;
  if (v16)
  {
    if (a1)
    {
      v17 = [a1 userInterfaceIdiom] != 3;
    }

    else
    {
      v17 = 1;
    }

    LODWORD(v97) = v17;
  }

  else
  {
    LODWORD(v97) = 0;
  }

  v18 = v104;
  v19 = v105;
  sub_1004BBDA4();
  v106 = *(v10 + 16);
  v107 = v10 + 16;
  v106(v19, v14, v18);
  v20 = v14;
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v21 = qword_100617118;
  v22 = qword_100617118;
  sub_1004B6DF4();
  v23 = sub_1004BBED4();
  v98 = v24;
  v99 = v23;
  v25 = v10 + 8;
  v26 = *(v10 + 8);
  v26(v20, v18);
  if (v97)
  {
    v27 = v22;
    v94 = v25;
    v95 = v26;
    v89[1] = v21;
    v90 = a2;
    if ((v96 & 1) != 0 || (v28 = v91, sub_1004B7664(), v29 = sub_1004B7654(), (*(v92 + 8))(v28, v93), (v29 & 1) == 0))
    {
      v66 = v20;
      sub_1004BBDA4();
      v68 = v104;
      v67 = v105;
      v106(v105, v66, v104);
      v69 = v27;
      sub_1004B6DF4();
      v70 = v69;
      v96 = sub_1004BBED4();
      v97 = v71;
      v72 = v95;
      v95(v66, v68);
      sub_100003ABC(&qword_1006011F0);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1004C50C0;
      sub_1004BBDA4();
      v106(v67, v66, v68);
      sub_1004B6DF4();
      v73 = sub_1004BBED4();
      v92 = v74;
      v93 = v73;
      v72(v66, v68);
      v75 = v100;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v76 = sub_1004B6CE4();
      v78 = v77;
      v101 = *(v101 + 8);
      (v101)(v75, v103);
      *(v38 + 32) = v76;
      *(v38 + 40) = v78;
      v79 = v92;
      *(v38 + 48) = v93;
      *(v38 + 56) = v79;
      *(v38 + 64) = 2;
      *(v38 + 72) = &unk_1004CE7D0;
      *(v38 + 80) = 0;
      sub_1004BBDA4();
      v80 = v68;
      v106(v67, v66, v68);
      sub_1004B6DF4();
      v81 = sub_1004BBED4();
      v83 = v82;
      v95(v66, v80);
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v84 = sub_1004B6CE4();
      v86 = v85;
      result = (v101)(v75, v103);
      *(v38 + 88) = v84;
      *(v38 + 96) = v86;
      *(v38 + 104) = v81;
      *(v38 + 112) = v83;
      v53 = (v38 + 128);
      *(v38 + 120) = 2;
      v34 = v96;
    }

    else
    {
      sub_1004BBDA4();
      v30 = v105;
      v31 = v104;
      (v106)(v105, v20);
      v32 = v27;
      sub_1004B6DF4();
      v33 = v32;
      v34 = sub_1004BBED4();
      v97 = v35;
      v36 = v31;
      v37 = v95;
      v95(v20, v31);
      sub_100003ABC(&qword_1006011F0);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1004C50C0;
      sub_1004BBDA4();
      v106(v30, v20, v36);
      sub_1004B6DF4();
      v96 = sub_1004BBED4();
      v93 = v39;
      v37(v20, v36);
      v40 = v100;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v41 = sub_1004B6CE4();
      v43 = v42;
      v101 = *(v101 + 8);
      (v101)(v40, v103);
      *(v38 + 32) = v41;
      *(v38 + 40) = v43;
      v44 = v93;
      *(v38 + 48) = v96;
      *(v38 + 56) = v44;
      *(v38 + 64) = 2;
      *(v38 + 72) = &unk_1004CE7D8;
      *(v38 + 80) = 0;
      sub_1004BBDA4();
      v45 = v104;
      v106(v30, v20, v104);
      sub_1004B6DF4();
      v46 = sub_1004BBED4();
      v48 = v47;
      v95(v20, v45);
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v49 = sub_1004B6CE4();
      v51 = v50;
      result = (v101)(v40, v103);
      *(v38 + 88) = v49;
      *(v38 + 96) = v51;
      *(v38 + 104) = v46;
      *(v38 + 112) = v48;
      v53 = (v38 + 128);
      *(v38 + 120) = 2;
    }

    a2 = v90;
  }

  else
  {
    sub_1004BBDA4();
    v106(v19, v20, v18);
    v54 = v22;
    sub_1004B6DF4();
    v55 = v54;
    v56 = v105;
    v96 = sub_1004BBED4();
    v97 = v57;
    v58 = v18;
    v26(v20, v18);
    sub_100003ABC(&qword_1006011F0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1004C50A0;
    sub_1004BBDA4();
    v106(v56, v20, v58);
    sub_1004B6DF4();
    v34 = v96;
    v59 = sub_1004BBED4();
    v61 = v60;
    v26(v20, v58);
    v62 = v100;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v63 = sub_1004B6CE4();
    v65 = v64;
    result = (*(v101 + 8))(v62, v103);
    *(v38 + 32) = v63;
    *(v38 + 40) = v65;
    *(v38 + 48) = v59;
    *(v38 + 56) = v61;
    v53 = (v38 + 72);
    *(v38 + 64) = 2;
  }

  *v53 = 0;
  v53[1] = 0;
  v87 = v98;
  *a2 = v99;
  *(a2 + 8) = v87;
  v88 = v97;
  *(a2 + 16) = v34;
  *(a2 + 24) = v88;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = v38;
  *(a2 + 64) = 0;
  return result;
}

uint64_t sub_100114F58@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004B6D14();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1004B6E64();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1004BBE14();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v22[-v12];
  sub_1004BBDA4();
  (*(v8 + 16))(v11, v13, v7);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v14 = qword_100617118;
  sub_1004B6DF4();
  v15 = sub_1004BBED4();
  v17 = v16;
  (*(v8 + 8))(v13, v7);
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v18 = sub_1004B6CE4();
  v20 = v19;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v18;
  *(a1 + 8) = v20;
  *(a1 + 16) = v15;
  *(a1 + 24) = v17;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_1001151F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a3;
  v62 = a1;
  v63 = a2;
  v68 = sub_1004B6D14();
  v61 = *(v68 - 8);
  __chkstk_darwin(v68);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004B6E64();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1004BBE14();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v49 - v15;
  sub_1004BBDA4();
  v17 = v11;
  v18 = *(v11 + 16);
  v67 = v11 + 16;
  v60 = v18;
  v18(v14, v16, v10);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v19 = qword_100617118;
  v20 = qword_100617118;
  v66 = v19;
  v21 = v20;
  sub_1004B6DF4();
  v53 = v21;
  v22 = sub_1004BBED4();
  v58 = v23;
  v59 = v22;
  v24 = *(v17 + 8);
  v64 = v17 + 8;
  v65 = v24;
  v24(v16, v10);
  v25 = swift_allocObject();
  v56 = v25;
  v26 = v57;
  *(v25 + 16) = v57;
  *(v25 + 24) = a4;

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v27 = v14;
  v28 = v8;
  v29 = sub_1004B6CE4();
  v54 = v30;
  v55 = v29;
  v31 = v26;
  v50 = *(v61 + 8);
  v50(v28, v68);
  sub_1004BBDA4();
  v32 = v60;
  v60(v27, v16, v10);
  sub_1004B6DF4();
  v33 = v53;
  v61 = sub_1004BBED4();
  v53 = v34;
  v65(v16, v10);
  v35 = swift_allocObject();
  v52 = v35;
  *(v35 + 16) = v31;
  *(v35 + 24) = a4;

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v57 = sub_1004B6CE4();
  v51 = v36;
  v50(v28, v68);
  sub_1004BBDA4();
  v32(v27, v16, v10);
  sub_1004B6DF4();
  v37 = sub_1004BBED4();
  v39 = v38;
  v65(v16, v10);
  sub_100003ABC(&qword_1006011F0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1004C50C0;
  v41 = v54;
  *(v40 + 32) = v55;
  *(v40 + 40) = v41;
  v42 = v58;
  *(v40 + 48) = v59;
  *(v40 + 56) = v42;
  *(v40 + 64) = 2;
  v43 = v56;
  v44 = v57;
  *(v40 + 72) = &unk_1004CE738;
  *(v40 + 80) = v43;
  v45 = v51;
  *(v40 + 88) = v44;
  *(v40 + 96) = v45;
  v46 = v52;
  v47 = v53;
  *(v40 + 104) = v61;
  *(v40 + 112) = v47;
  *(v40 + 120) = 0;
  *(v40 + 128) = &unk_1004CE748;
  *(v40 + 136) = v46;

  *a5 = v37;
  *(a5 + 8) = v39;
  *(a5 + 16) = v62;
  *(a5 + 24) = result;
  *(a5 + 32) = 0;
  *(a5 + 33) = v70[0];
  *(a5 + 36) = *(v70 + 3);
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  *(a5 + 49) = *v69;
  *(a5 + 52) = *&v69[3];
  *(a5 + 56) = v40;
  *(a5 + 64) = 0;
  return result;
}

id sub_100115724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v50 = a2;
  v47 = a1;
  v4 = sub_1004B6E64();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1004BBE14();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v42 - v10;
  sub_1004BBDA4();
  v12 = v6;
  v15 = *(v6 + 16);
  v14 = v6 + 16;
  v13 = v15;
  v15(v9, v11, v5);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v53 = v13;
  v16 = qword_100617118;
  v51 = qword_100617118;
  sub_1004B6DF4();
  v52 = v16;
  v17 = sub_1004BBED4();
  v48 = v18;
  v49 = v17;
  v46 = *(v12 + 8);
  v19 = v12 + 8;
  v46(v11, v5);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v21 = result;
    MobileGestalt_get_wapiCapability();

    v43 = a3;
    sub_1004BBDA4();
    v22 = v53;
    v53(v9, v11, v5);
    v23 = v51;
    sub_1004B6DF4();
    v42[1] = v14;
    v24 = sub_1004BBED4();
    v44 = v25;
    v45 = v24;
    v26 = v46;
    v42[2] = v19;
    v46(v11, v5);
    sub_100003ABC(&qword_1006011F0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1004C50C0;
    sub_1004BBDA4();
    v22(v9, v11, v5);
    sub_1004B6DF4();
    v28 = v51;
    v29 = sub_1004BBED4();
    v31 = v30;
    v26(v11, v5);
    v32 = swift_allocObject();
    v33 = v47;
    v34 = v50;
    *(v32 + 16) = v47;
    *(v32 + 24) = v34;
    *(v27 + 32) = 0x6C65636E6163;
    *(v27 + 40) = 0xE600000000000000;
    *(v27 + 48) = v29;
    *(v27 + 56) = v31;
    *(v27 + 64) = 0;
    *(v27 + 72) = &unk_1004CE758;
    *(v27 + 80) = v32;
    sub_10002F518(v33);
    sub_1004BBDA4();
    v53(v9, v11, v5);
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
    v37 = v36;
    v26(v11, v5);
    v38 = swift_allocObject();
    *(v38 + 16) = v33;
    *(v38 + 24) = v34;
    *(v27 + 88) = 0x6E4F6E727574;
    *(v27 + 96) = 0xE600000000000000;
    *(v27 + 104) = v35;
    *(v27 + 112) = v37;
    *(v27 + 120) = 2;
    *(v27 + 128) = &unk_1004CE768;
    *(v27 + 136) = v38;
    result = sub_10002F518(v33);
    v39 = v48;
    v40 = v43;
    *v43 = v49;
    v40[1] = v39;
    v41 = v44;
    v40[2] = v45;
    v40[3] = v41;
    *(v40 + 32) = 0;
    *(v40 + 33) = v55[0];
    *(v40 + 9) = *(v55 + 3);
    v40[5] = 0;
    *(v40 + 48) = 1;
    *(v40 + 49) = *v54;
    *(v40 + 13) = *&v54[3];
    v40[7] = v27;
    v40[8] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100115C5C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1004B6D14();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005FFFA8 != -1)
  {
    swift_once();
  }

  v9 = static CloudLibrary.EnablementContext.action;
  v8 = *algn_1006174E8;

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v10 = sub_1004B6CE4();
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  v13 = CloudLibrary.EnablementContext.title.getter(a1);
  v15 = v14;
  v16 = CloudLibrary.EnablementContext.message.getter(a1);
  v18 = v17;
  sub_100003ABC(&qword_1006011F0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1004C50C0;
  *(v19 + 32) = v10;
  *(v19 + 40) = v12;
  *(v19 + 48) = v9;
  *(v19 + 56) = v8;
  *(v19 + 64) = 2;
  *(v19 + 72) = &unk_1004CE728;
  *(v19 + 80) = 0;

  sub_100114F58(v23);
  v20 = v23[1];
  *(v19 + 88) = v23[0];
  *(v19 + 104) = v20;
  *(v19 + 120) = v23[2];
  *(v19 + 136) = v24;

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16;
  *(a2 + 24) = v18;
  *(a2 + 32) = 0;
  *(a2 + 33) = v23[0];
  *(a2 + 36) = *(v23 + 3);
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 49) = *v25;
  *(a2 + 52) = *&v25[3];
  *(a2 + 56) = v19;
  *(a2 + 64) = 0;
  return result;
}

uint64_t sub_100115E88()
{
  v1 = sub_1004B6B04();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

id sub_100115F10@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1004B6D14();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004B6E64();
  __chkstk_darwin(v8 - 8);
  v98 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1004BBE14();
  v97 = *(v95 - 8);
  v10 = __chkstk_darwin(v95);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v83 - v13;
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v16 = result;
  wapiCapability = MobileGestalt_get_wapiCapability();

  v91 = v7;
  v92 = v5;
  v93 = v4;
  v94 = a2;
  if (!a1)
  {
    goto LABEL_38;
  }

  objc_opt_self();
  v18 = v12;
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    if (wapiCapability)
    {
      sub_1004BBDA4();
      v19 = v97;
      v20 = *(v97 + 16);
      v96 = (v97 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v21 = v95;
      v20(v12, v14, v95);
      v22 = v12;
      if (qword_1005FFD30 == -1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      sub_1004BBDA4();
      v19 = v97;
      v20 = *(v97 + 16);
      v96 = (v97 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v21 = v95;
      v20(v12, v14, v95);
      v22 = v12;
      if (qword_1005FFD30 == -1)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_51;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v23 = v95;
    if ((wapiCapability & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_13:
    sub_1004BBDA4();
    v24 = v97;
    v25 = *(v97 + 16);
    v96 = (v97 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v25(v18, v14, v23);
    v26 = v18;
    if (qword_1005FFD30 == -1)
    {
      goto LABEL_34;
    }

LABEL_53:
    swift_once();
    goto LABEL_34;
  }

  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (!v27)
  {
LABEL_38:
    v21 = v95;
    v18 = v12;
    if ((wapiCapability & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v28 = v27;
  v29 = MPModelRelationshipMediaClipStaticAssets;
  v30 = a1;
  if (![v28 hasLoadedValueForKey:v29])
  {

    goto LABEL_38;
  }

  v31 = [v28 staticAssets];
  v21 = v95;
  if (!v31)
  {

    v18 = v12;
    if ((wapiCapability & 1) == 0)
    {
LABEL_42:
      sub_1004BBDA4();
      v19 = v97;
      v20 = *(v97 + 16);
      v96 = (v97 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v20(v18, v14, v21);
      v22 = v18;
      if (qword_1005FFD30 == -1)
      {
LABEL_43:
        v57 = qword_100617118;
        sub_1004B6DF4();
        v58 = v57;
        v59 = sub_1004BBED4();
        v89 = v60;
        v90 = v59;
        v61 = *(v19 + 8);
        v61(v14, v21);
        sub_1004BBDA4();
        v20(v22, v14, v21);
        sub_1004B6DF4();
        v62 = sub_1004BBED4();
        v87 = v63;
        v88 = v62;
        v61(v14, v21);
        v48 = v61;
        sub_1004BBDA4();
        v51 = v14;
        v64 = v14;
        v53 = v21;
        v20(v22, v64, v21);
        if (qword_1005FFD30 != -1)
        {
          swift_once();
        }

        v54 = v20;
        v84 = v58;
        sub_1004B6DF4();
        v65 = sub_1004BBED4();
        v95 = v66;
        v85 = v65;
        v86 = &unk_1004CE718;
        v50 = v22;
        goto LABEL_46;
      }

LABEL_51:
      swift_once();
      goto LABEL_43;
    }

LABEL_39:
    sub_1004BBDA4();
    v19 = v97;
    v20 = *(v97 + 16);
    v96 = (v97 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v20(v18, v14, v21);
    v22 = v18;
    if (qword_1005FFD30 == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_51;
  }

  v32 = v31;
  v89 = v30;
  sub_100117F4C();
  v33 = sub_1004BC2A4();

  if (v33 >> 62)
  {
LABEL_56:
    v34 = sub_1004BD6A4();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v33;
  v18 = v12;
  if (!v34)
  {
LABEL_41:

    if ((wapiCapability & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v36 = 0;
  v96 = MPModelPropertyStaticAssetMediaType;
  v90 = v33 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v33 & 0xC000000000000001) != 0)
    {
      v37 = sub_1004BD484();
    }

    else
    {
      if (v36 >= *(v90 + 16))
      {
        goto LABEL_55;
      }

      v37 = *(v35 + 8 * v36 + 32);
    }

    v21 = v37;
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if ([v37 hasLoadedValueForKey:v96])
    {
      break;
    }

LABEL_23:
    ++v36;
    v21 = v95;
    v35 = v33;
    if (v38 == v34)
    {
      goto LABEL_41;
    }
  }

  v39 = [v21 mediaType];

  v40 = v39 == 2;
  v18 = v12;
  if (!v40)
  {
    goto LABEL_23;
  }

  v23 = v95;
  if (wapiCapability)
  {
    goto LABEL_13;
  }

LABEL_33:
  sub_1004BBDA4();
  v24 = v97;
  v25 = *(v97 + 16);
  v96 = (v97 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v25(v18, v14, v23);
  v26 = v18;
  if (qword_1005FFD30 != -1)
  {
    goto LABEL_53;
  }

LABEL_34:
  v41 = qword_100617118;
  sub_1004B6DF4();
  v42 = v41;
  v43 = sub_1004BBED4();
  v89 = v44;
  v90 = v43;
  v45 = *(v24 + 8);
  v45(v14, v23);
  sub_1004BBDA4();
  v25(v26, v14, v23);
  sub_1004B6DF4();
  v46 = sub_1004BBED4();
  v87 = v47;
  v88 = v46;
  v45(v14, v23);
  v48 = v45;
  v49 = v23;
  v50 = v26;
  sub_1004BBDA4();
  v51 = v14;
  v52 = v14;
  v53 = v49;
  v25(v26, v52, v49);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v54 = v25;
  v84 = v42;
  sub_1004B6DF4();
  v55 = sub_1004BBED4();
  v95 = v56;
  v85 = v55;
  v86 = &unk_1004CE720;
LABEL_46:
  v83 = v48;
  v48(v51, v53);
  v67 = v91;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v97 = sub_1004B6CE4();
  v69 = v68;
  v70 = v93;
  v71 = *(v92 + 8);
  v71(v67, v93);

  sub_1004BBDA4();
  v54(v50, v51, v53);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  sub_1004B6DF4();
  v72 = sub_1004BBED4();
  v98 = v73;
  v83(v51, v53);
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v74 = sub_1004B6CE4();
  v76 = v75;
  v71(v67, v70);
  sub_100003ABC(&qword_1006011F0);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1004C50C0;
  *(v77 + 32) = v97;
  *(v77 + 40) = v69;
  v78 = v86;
  *(v77 + 48) = v85;
  *(v77 + 56) = v95;
  *(v77 + 64) = 2;
  *(v77 + 72) = v78;
  *(v77 + 80) = 0;
  *(v77 + 88) = v74;
  *(v77 + 96) = v76;
  v79 = v98;
  *(v77 + 104) = v72;
  *(v77 + 112) = v79;
  *(v77 + 120) = 0;
  *(v77 + 128) = 0;
  *(v77 + 136) = 0;

  result = sub_10003CC4C(v78);
  v80 = v94;
  v81 = v89;
  *v94 = v90;
  v80[1] = v81;
  v82 = v87;
  v80[2] = v88;
  v80[3] = v82;
  *(v80 + 32) = 0;
  *(v80 + 33) = v100[0];
  *(v80 + 9) = *(v100 + 3);
  v80[5] = 0;
  *(v80 + 48) = 1;
  *(v80 + 49) = *v99;
  *(v80 + 13) = *&v99[3];
  v80[7] = v77;
  v80[8] = 0;
  return result;
}

id sub_100116DD0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1004B6D14();
  v64 = *(v6 - 8);
  __chkstk_darwin(v6);
  v63 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004B6E64();
  __chkstk_darwin(v8 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1004BBE14();
  v61 = *(v65 - 8);
  v11 = __chkstk_darwin(v65);
  v62 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v52 - v13;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v16 = result;
    MobileGestalt_get_wapiCapability();

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v17 = result;
      MobileGestalt_get_cellularDataCapability();

      v60 = v10;
      if (a1)
      {
        objc_opt_self();
        swift_dynamicCastObjCClass();
        v18 = v65;
        v19 = v62;
        v20 = v61;
      }

      else
      {
        v18 = v65;
        v20 = v61;
        v19 = v62;
      }

      sub_1004BBDA4();
      v59 = *(v20 + 16);
      v59(v19, v14, v18);
      if (qword_1005FFD30 != -1)
      {
        swift_once();
      }

      v58 = qword_100617118;
      sub_1004B6DF4();
      v21 = sub_1004BBED4();
      v54 = v22;
      v55 = v21;
      v23 = *(v20 + 8);
      v23(v14, v18);
      v56 = v6;
      v57 = a2;
      if (a2 && [a2 userInterfaceIdiom] == 3)
      {
        v24 = _swiftEmptyArrayStorage;
      }

      else
      {
        v53 = a3;
        sub_1004BBDA4();
        v59(v19, v14, v18);
        if (qword_1005FFD30 != -1)
        {
          swift_once();
        }

        v25 = v58;
        sub_1004B6DF4();
        v26 = sub_1004BBED4();
        v28 = v27;
        v23(v14, v18);
        v29 = v63;
        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v30 = sub_1004B6CE4();
        v32 = v31;
        (*(v64 + 8))(v29, v6);
        v24 = sub_1000183D4(0, 1, 1, _swiftEmptyArrayStorage);
        v34 = v24[2];
        v33 = v24[3];
        if (v34 >= v33 >> 1)
        {
          v24 = sub_1000183D4((v33 > 1), v34 + 1, 1, v24);
        }

        v24[2] = (v34 + 1);
        v35 = &v24[7 * v34];
        v35[4] = v30;
        v35[5] = v32;
        v35[6] = v26;
        v35[7] = v28;
        *(v35 + 64) = 2;
        v35[9] = &unk_1004CE710;
        v35[10] = 0;
        a3 = v53;
        v18 = v65;
        v19 = v62;
      }

      sub_1004BBDA4();
      v59(v19, v14, v18);
      if (qword_1005FFD30 != -1)
      {
        swift_once();
      }

      v36 = v58;
      sub_1004B6DF4();
      v37 = sub_1004BBED4();
      v39 = v38;
      v23(v14, v18);
      v40 = v63;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v41 = sub_1004B6CE4();
      v43 = v42;
      (*(v64 + 8))(v40, v56);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1000183D4(0, v24[2] + 1, 1, v24);
      }

      v45 = v54;
      v44 = v55;
      v47 = v24[2];
      v46 = v24[3];
      if (v47 >= v46 >> 1)
      {
        v24 = sub_1000183D4((v46 > 1), v47 + 1, 1, v24);
      }

      v24[2] = (v47 + 1);
      v48 = &v24[7 * v47];
      v48[4] = v41;
      v48[5] = v43;
      v48[6] = v37;
      v48[7] = v39;
      *(v48 + 64) = 2;
      v48[9] = 0;
      v48[10] = 0;
      if (v57)
      {
        v49 = [v57 userInterfaceIdiom];

        if (v49 == 3)
        {
          v50 = 0;
          v51 = v45;
          v45 = 0;
LABEL_27:
          v66 = 1;
          *a3 = v50;
          *(a3 + 8) = v45;
          *(a3 + 16) = v44;
          *(a3 + 24) = v51;
          *(a3 + 32) = 0;
          *(a3 + 40) = 0;
          *(a3 + 48) = 1;
          *(a3 + 56) = v24;
          *(a3 + 64) = 0;
          return result;
        }
      }

      else
      {
      }

      v51 = 0;
      v50 = v44;
      v44 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_100117524@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1004B6E64();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004BBE14();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  sub_1004BBDA4();
  v10 = *(v4 + 16);
  v10(v7, v9, v3);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v11 = qword_100617118;
  sub_1004B6DF4();
  v12 = v11;
  v13 = sub_1004BBED4();
  v25 = v14;
  v26 = v13;
  v15 = *(v4 + 8);
  v15(v9, v3);
  sub_1004BBDA4();
  v10(v7, v9, v3);
  sub_1004B6DF4();
  v16 = sub_1004BBED4();
  v18 = v17;
  v15(v9, v3);
  sub_100003ABC(&qword_1006011F0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1004C50A0;
  sub_100114F58(v27);
  result = *v27;
  v21 = v27[1];
  v22 = v27[2];
  *(v19 + 32) = v27[0];
  *(v19 + 48) = v21;
  *(v19 + 64) = v22;
  *(v19 + 80) = v28;
  v23 = v25;
  *a1 = v26;
  *(a1 + 8) = v23;
  *(a1 + 16) = v16;
  *(a1 + 24) = v18;
  *(a1 + 32) = 0;
  *(a1 + 33) = v27[0];
  *(a1 + 36) = *(v27 + 3);
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 49) = *v29;
  *(a1 + 52) = *&v29[3];
  *(a1 + 56) = v19;
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_100117828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v57 = a2;
  v58 = a1;
  v55 = a3;
  v59 = sub_1004B6D14();
  v56 = *(v59 - 8);
  __chkstk_darwin(v59);
  v50 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004B6E64();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1004BBE14();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v42 - v10;
  sub_1004BBDA4();
  v12 = *(v6 + 16);
  v12(v9, v11, v5);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v13 = qword_100617118;
  v14 = qword_100617118;
  sub_1004B6DF4();
  v15 = v14;
  v16 = sub_1004BBED4();
  v53 = v17;
  v54 = v16;
  v18 = *(v6 + 8);
  v45 = v6 + 8;
  v18(v11, v5);
  sub_1004BBDA4();
  v12(v9, v11, v5);
  v47 = v12;
  v49 = v6 + 16;
  sub_1004B6DF4();
  v46 = v13;
  v19 = sub_1004BBED4();
  v51 = v20;
  v52 = v19;
  v21 = v18;
  v48 = v18;
  v18(v11, v5);
  sub_100003ABC(&qword_1006011F0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1004C50C0;
  sub_1004BBDA4();
  v12(v9, v11, v5);
  sub_1004B6DF4();
  v23 = sub_1004BBED4();
  v43 = v24;
  v44 = v23;
  v21(v11, v5);
  v25 = swift_allocObject();
  *(v25 + 16) = v58;
  *(v25 + 24) = v57;

  v26 = v50;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v27 = sub_1004B6CE4();
  v29 = v28;
  v56 = *(v56 + 8);
  (v56)(v26, v59);
  *(v22 + 32) = v27;
  *(v22 + 40) = v29;
  v30 = v43;
  *(v22 + 48) = v44;
  *(v22 + 56) = v30;
  *(v22 + 64) = 2;
  *(v22 + 72) = &unk_1004CE6F8;
  *(v22 + 80) = v25;
  sub_1004BBDA4();
  v47(v9, v11, v5);
  sub_1004B6DF4();
  v31 = sub_1004BBED4();
  v33 = v32;
  v48(v11, v5);
  v34 = swift_allocObject();
  *(v34 + 16) = v58;
  *(v34 + 24) = v57;

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v35 = sub_1004B6CE4();
  v37 = v36;
  result = (v56)(v26, v59);
  *(v22 + 88) = v35;
  *(v22 + 96) = v37;
  *(v22 + 104) = v31;
  *(v22 + 112) = v33;
  *(v22 + 120) = 2;
  *(v22 + 128) = &unk_1004CE708;
  *(v22 + 136) = v34;
  v39 = v55;
  v40 = v52;
  v41 = v53;
  *v55 = v54;
  v39[1] = v41;
  v39[2] = v40;
  v39[3] = v51;
  *(v39 + 32) = 0;
  *(v39 + 33) = v61[0];
  *(v39 + 9) = *(v61 + 3);
  v39[5] = 1;
  *(v39 + 48) = 0;
  *(v39 + 49) = *v60;
  *(v39 + 13) = *&v60[3];
  v39[7] = v22;
  v39[8] = 0;
  return result;
}

uint64_t sub_100117DEC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001384C;

  return sub_10010D0A0(a1, a2, v7, v6);
}

uint64_t sub_100117E9C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000136EC;

  return sub_10010D128(a1, a2, v7, v6);
}

unint64_t sub_100117F4C()
{
  result = qword_100603FB0;
  if (!qword_100603FB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100603FB0);
  }

  return result;
}

uint64_t sub_100117F98()
{

  return swift_deallocObject();
}

uint64_t sub_100117FD0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001384C;

  return sub_10010CD24(a1, a2, v7, v6);
}

uint64_t sub_100118080(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001384C;

  return sub_10010CF64(a1, a2, v6);
}

uint64_t sub_100118134(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001384C;

  return sub_10010C7E4(a1, a2, v7, v6);
}

uint64_t sub_1001181E4()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100118224(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001384C;

  return sub_10010C874(a1, a2, v7, v6);
}

uint64_t sub_1001182D4()
{
  sub_100004C6C(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_100118314(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 56);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001384C;

  return sub_10010C944(a1, a2, v2 + 16, v6);
}

uint64_t sub_1001183C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t UInt32.formatName.getter(int a1)
{
  v10 = 0;
  memset(inSpecifier, 0, sizeof(inSpecifier));
  DWORD2(inSpecifier[0]) = a1;
  if (a1 == 1634492771)
  {
    return 1128352833;
  }

  outPropertyData = 0;
  ioPropertyDataSize = 8;
  Property = AudioFormatGetProperty(0x666E616Du, 0x28u, inSpecifier, &ioPropertyDataSize, &outPropertyData);
  if (Property == sub_1004B8484() || !outPropertyData)
  {
    if (qword_1005FFF28 != -1)
    {
      swift_once();
    }

    v4 = sub_1004B80B4();
    sub_100007084(v4, static Logger.audioFormat);
    v5 = sub_1004B8094();
    v6 = sub_1004BC984();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = Property;
      _os_log_impl(&_mh_execute_header, v5, v6, "AudioFormatGetProperty kAudioFormatProperty_FormatName error: %d", v7, 8u);
    }

    return 0;
  }

  else
  {
    v3 = sub_1004BBEE4(outPropertyData);

    return v3;
  }
}

void *sub_1001185E4()
{
  result = sub_100118604();
  static Datavault.music = result;
  return result;
}

void *sub_100118604()
{
  v0 = sub_100003ABC(&qword_100603FE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v23 - v1;
  v3 = sub_1004B6B04();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v23 - v9;
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = [objc_opt_self() defaultManager];
  v14 = sub_1004BBE24();
  v15 = [v13 containerURLForSecurityApplicationGroupIdentifier:v14];

  if (!v15)
  {
    return 0;
  }

  sub_1004B6A94();

  sub_1004B6A54();
  type metadata accessor for Datavault();
  (*(v4 + 16))(v7, v10, v3);
  v17 = Datavault.__allocating_init(url:storageClass:)(v7, 0x707041636973754DLL, 0xE800000000000000);
  if (qword_1005FFF00 != -1)
  {
    swift_once();
  }

  v18 = sub_1004B80B4();
  v19 = sub_100007084(v18, qword_100603FD0);
  v20 = *(v18 - 8);
  (*(v20 + 16))(v2, v19, v18);
  v21 = *(v4 + 8);
  v21(v10, v3);
  v21(v12, v3);
  (*(v20 + 56))(v2, 0, 1, v18);
  v22 = OBJC_IVAR____TtC14MusicUtilities9Datavault_logger;
  swift_beginAccess();
  sub_100118F4C(v2, v17 + v22);
  swift_endAccess();
  return v17;
}

uint64_t *Datavault.music.unsafeMutableAddressor()
{
  if (qword_1005FFEF8 != -1)
  {
    swift_once();
  }

  return &static Datavault.music;
}

uint64_t static Datavault.music.getter()
{
  if (qword_1005FFEF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static Datavault.music.setter(uint64_t a1)
{
  if (qword_1005FFEF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Datavault.music = a1;
}

uint64_t (*static Datavault.music.modify())()
{
  if (qword_1005FFEF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_100118E68()
{
  v0 = sub_1004B80B4();
  sub_100007108(v0, qword_100603FD0);
  sub_100007084(v0, qword_100603FD0);
  return sub_1004B80A4();
}

uint64_t sub_100118EE4(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100602710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100118F4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100603FE8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NSDateComponents.lastUpdatedDateString.getter()
{
  v0 = sub_100003ABC(&qword_100603110);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_1004B6CD4();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = sub_1004B67C4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6784();
  sub_1004B6CA4();
  sub_1004B67A4();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    (*(v4 + 8))(v9, v3);
    (*(v11 + 8))(v13, v10);
    sub_10011946C(v2);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v7, v2, v3);
    v15 = Date.lastUpdatedDateString(relativeTo:)();
    v16 = *(v4 + 8);
    v16(v7, v3);
    v16(v9, v3);
    (*(v11 + 8))(v13, v10);
    return v15;
  }
}

uint64_t DateComponents.lastUpdatedDateString(relativeTo:)()
{
  v0 = sub_100003ABC(&qword_100603110);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1004B6CD4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B67A4();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_10011946C(v2);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v8 = Date.lastUpdatedDateString(relativeTo:)();
    (*(v4 + 8))(v6, v3);
    return v8;
  }
}

uint64_t sub_10011946C(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100603110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DateComponents.lastUpdatedDateString.getter()
{
  v0 = sub_100003ABC(&qword_100603110);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_1004B6CD4();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  sub_1004B6CA4();
  sub_1004B67A4();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    (*(v4 + 8))(v9, v3);
    sub_10011946C(v2);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v7, v2, v3);
    v11 = Date.lastUpdatedDateString(relativeTo:)();
    v12 = *(v4 + 8);
    v12(v7, v3);
    v12(v9, v3);
    return v11;
  }
}

uint64_t Date.lastUpdatedDateString(relativeTo:)()
{
  v0 = sub_1004BBDF4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004B6E64();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1004BBE14();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  result = sub_1004B6C04();
  if (v10 <= 0.0)
  {
    return 0;
  }

  if (v10 < 3600.0)
  {
    v11 = v10 / 60.0;
    if (*&v11 >> 52 > 0x7FEuLL)
    {
      __break(1u);
    }

    else if (v11 > -9.22337204e18)
    {
      if (v11 < 9.22337204e18)
      {
        v12 = v11;
        if (!v11)
        {
          sub_1004BBDA4();
          goto LABEL_21;
        }

        sub_1004BBDE4();
        v25._countAndFlagsBits = 0x2064657461647055;
        v25._object = 0xE800000000000000;
        sub_1004BBDD4(v25);
        v24 = v12;
        sub_1004BBDB4();
        v13 = 9;
        goto LABEL_8;
      }

      goto LABEL_33;
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v10 >= 86400.0)
  {
    if (v10 < 604800.0)
    {
      v17 = v10 / 86400.0;
      if (*&v17 >> 52 <= 0x7FEuLL)
      {
        if (v17 > -9.22337204e18)
        {
          if (v17 < 9.22337204e18)
          {
            v18 = v17;
            sub_1004BBDE4();
            v27._countAndFlagsBits = 0x2064657461647055;
            v27._object = 0xE800000000000000;
            sub_1004BBDD4(v27);
            v24 = v18;
            sub_1004BBDB4();
            v14._countAndFlagsBits = 0x6F67612064;
            goto LABEL_19;
          }

          goto LABEL_39;
        }

LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v10 < 2592000.0)
    {
      v21 = v10 / 604800.0;
      if (*&v21 >> 52 <= 0x7FEuLL)
      {
        if (v21 > -9.22337204e18)
        {
          if (v21 < 9.22337204e18)
          {
            v22 = v21;
            sub_1004BBDE4();
            v28._countAndFlagsBits = 0x2064657461647055;
            v28._object = 0xE800000000000000;
            sub_1004BBDD4(v28);
            v24 = v22;
            sub_1004BBDB4();
            v13 = 19;
LABEL_8:
            v14._countAndFlagsBits = v13 | 0x6F67612064;
LABEL_19:
            v14._object = 0xE500000000000000;
            goto LABEL_20;
          }

LABEL_42:
          __break(1u);
          return result;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    return 0;
  }

  v15 = v10 / 3600.0;
  if (*&v15 >> 52 > 0x7FEuLL)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v16 = v15;
  sub_1004BBDE4();
  v26._countAndFlagsBits = 0x2064657461647055;
  v26._object = 0xE800000000000000;
  sub_1004BBDD4(v26);
  v24 = v16;
  sub_1004BBDB4();
  v14._countAndFlagsBits = 0x6F6761207268;
  v14._object = 0xE600000000000000;
LABEL_20:
  sub_1004BBDD4(v14);
  sub_1004BBE04();
LABEL_21:
  (*(v3 + 16))(v6, v8, v2);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v19 = qword_100617118;
  sub_1004B6DF4();
  v20 = sub_1004BBED4();
  (*(v3 + 8))(v8, v2);
  return v20;
}

uint64_t Date.lastUpdatedDateString.getter()
{
  v0 = sub_1004B6CD4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6CA4();
  v4 = Date.lastUpdatedDateString(relativeTo:)();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t static String.stringForTrackCountAndDuration(trackCount:duration:)(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v67 = a2;
  v66 = a1;
  v6 = sub_1004B6E64();
  __chkstk_darwin(v6 - 8);
  v65 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004BBE14();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v64 = &v58 - v13;
  v14 = sub_1004BBDF4();
  __chkstk_darwin(v14 - 8);
  v15 = sub_1004B6F24();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1004B6F34();
  v20 = __chkstk_darwin(v19);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v12;
  if ((a4 & 1) != 0 || (v24 = *&a3, *&a3 <= 0.0))
  {
    v40 = 0;
    v42 = 0;
    if ((v67 & 1) == 0)
    {
LABEL_13:
      if (v42)
      {
        sub_1004BBDE4();
        v74._countAndFlagsBits = 0;
        v74._object = 0xE000000000000000;
        sub_1004BBDD4(v74);
        v72 = v66;
        sub_1004BBDB4();
        v75._countAndFlagsBits = 0x297328676E6F7320;
        v75._object = 0xEA0000000000202CLL;
        sub_1004BBDD4(v75);
        v76._countAndFlagsBits = v40;
        v76._object = v42;
        sub_1004BBDC4(v76);

        v43._countAndFlagsBits = 0;
        v43._object = 0xE000000000000000;
LABEL_17:
        sub_1004BBDD4(v43);
        v45 = v64;
        sub_1004BBE04();
        (*(v9 + 16))(v63, v45, v8);
        if (qword_1005FFD30 != -1)
        {
          swift_once();
        }

        v46 = qword_100617118;
        sub_1004B6DF4();
        v40 = sub_1004BBED4();
        (*(v9 + 8))(v45, v8);
        return v40;
      }

      v44 = v66;
      if (v66 >= 1)
      {
        sub_1004BBDE4();
        v77._countAndFlagsBits = 0;
        v77._object = 0xE000000000000000;
        sub_1004BBDD4(v77);
        v72 = v44;
        sub_1004BBDB4();
        v43._countAndFlagsBits = 0x297328676E6F7320;
        v43._object = 0xE800000000000000;
        goto LABEL_17;
      }

      return 0;
    }

LABEL_9:
    if (v42)
    {
      return v40;
    }

    return 0;
  }

  v59 = v21;
  v60 = v8;
  v61 = v20;
  v62 = v9;
  sub_1004B6EF4();
  v25 = *(v16 + 104);
  v25(v18, enum case for Calendar.Component.second(_:), v15);
  sub_1004B6EA4();
  v58 = v26;
  v28 = v27;
  v29 = *(v16 + 8);
  v29(v18, v15);
  if (v28 & 1) != 0 || (v25(v18, enum case for Calendar.Component.minute(_:), v15), sub_1004B6EA4(), v31 = v30, v33 = v32, result = (v29)(v18, v15), (v33))
  {
    v9 = v62;
    goto LABEL_6;
  }

  v47 = v58 * v31;
  v9 = v62;
  if ((v58 * v31) >> 64 != (v58 * v31) >> 63)
  {
    __break(1u);
    goto LABEL_43;
  }

  if ((~a3 & 0x7FF0000000000000) == 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (*&a3 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (*&a3 >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!v47)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v48 = *&a3;
  if (*&a3 == 0x8000000000000000 && v47 == -1)
  {
    goto LABEL_53;
  }

  v49 = v48 / v47 * v47;
  if ((v48 / v47 * v47) >> 64 != v49 >> 63)
  {
    goto LABEL_47;
  }

  v50 = v48 % v47;
  if (__OFSUB__(v48, v49))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (!v58)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v50 == 0x8000000000000000 && v58 == -1)
  {
    goto LABEL_54;
  }

  v52 = v50 / v58;
  v53 = v50 / v58 * v58;
  if ((v52 * v58) >> 64 != v53 >> 63)
  {
    goto LABEL_50;
  }

  v54 = __OFADD__(v49, v53);
  v55 = v49 + v53;
  if (v54)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v54 = __OFSUB__(v48, v55);
  v56 = v48 - v55;
  if (v54)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v56 < v58 / 2)
  {
    goto LABEL_6;
  }

  v54 = __OFSUB__(v58, v56);
  v57 = v58 - v56;
  if (!v54)
  {
    v24 = *&a3 + v57;
LABEL_6:
    v35 = [*NSDateFormatter.collectionsDurationFormatter.unsafeMutableAddressor() stringFromTimeInterval:v24];
    if (v35)
    {
      v36 = v35;
      v37 = sub_1004BBE64();
      v39 = v38;

      v72 = v37;
      v73 = v39;
      v70 = 44;
      v71 = 0xE100000000000000;
      v68 = 0;
      v69 = 0xE000000000000000;
      sub_10000E7F4();
      v40 = sub_1004BD224();
      v42 = v41;

      (*(v59 + 8))(v23, v61);
    }

    else
    {
      (*(v59 + 8))(v23, v61);
      v40 = 0;
      v42 = 0;
    }

    v8 = v60;
    if ((v67 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

LABEL_55:
  __break(1u);
  return result;
}

Swift::Void __swiftcall LSApplicationWorkspace.openSettings()()
{
  v1 = v0;
  v2 = sub_100003ABC(&qword_100600DE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_1004B6B04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6AC4();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100007214(v4, &qword_100600DE0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_1004B6A44(v9);
    v11 = v10;
    sub_10003C58C(_swiftEmptyArrayStorage);
    isa = sub_1004BBC24().super.isa;

    [v1 openSensitiveURL:v11 withOptions:isa];

    (*(v6 + 8))(v8, v5);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openRestrictions()()
{
  v1 = v0;
  v2 = sub_100003ABC(&qword_100600DE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_1004B6B04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6AC4();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100007214(v4, &qword_100600DE0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_1004B6A44(v9);
    v11 = v10;
    sub_10003C58C(_swiftEmptyArrayStorage);
    isa = sub_1004BBC24().super.isa;

    [v1 openSensitiveURL:v11 withOptions:isa];

    (*(v6 + 8))(v8, v5);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openAudioQuality()()
{
  v1 = v0;
  v2 = sub_100003ABC(&qword_100600DE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_1004B6B04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6AC4();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100007214(v4, &qword_100600DE0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_1004B6A44(v9);
    v11 = v10;
    sub_10003C58C(_swiftEmptyArrayStorage);
    isa = sub_1004BBC24().super.isa;

    [v1 openSensitiveURL:v11 withOptions:isa];

    (*(v6 + 8))(v8, v5);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openAtmos()()
{
  v1 = v0;
  v2 = sub_100003ABC(&qword_100600DE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_1004B6B04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6AC4();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100007214(v4, &qword_100600DE0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_1004B6A44(v9);
    v11 = v10;
    sub_10003C58C(_swiftEmptyArrayStorage);
    isa = sub_1004BBC24().super.isa;

    [v1 openSensitiveURL:v11 withOptions:isa];

    (*(v6 + 8))(v8, v5);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openMusicSettings()()
{
  v1 = v0;
  v2 = sub_100003ABC(&qword_100600DE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_1004B6B04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6AC4();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100007214(v4, &qword_100600DE0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_1004B6A44(v9);
    v11 = v10;
    sub_10003C58C(_swiftEmptyArrayStorage);
    isa = sub_1004BBC24().super.isa;

    [v1 openSensitiveURL:v11 withOptions:isa];

    (*(v6 + 8))(v8, v5);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openAccountSettings()()
{
  v1 = v0;
  v2 = sub_100003ABC(&qword_100600DE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_1004B6B04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6AC4();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100007214(v4, &qword_100600DE0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_1004B6A44(v9);
    v11 = v10;
    sub_10003C58C(_swiftEmptyArrayStorage);
    isa = sub_1004BBC24().super.isa;

    [v1 openSensitiveURL:v11 withOptions:isa];

    (*(v6 + 8))(v8, v5);
  }
}

Swift::Bool __swiftcall LSApplicationWorkspace.openNotificationSettings()()
{
  v1 = v0;
  v2 = sub_100003ABC(&qword_100600DE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_1004B6B04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6AC4();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100007214(v4, &qword_100600DE0);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_1004B6A44(v10);
    v12 = v11;
    sub_10003C58C(_swiftEmptyArrayStorage);
    isa = sub_1004BBC24().super.isa;

    v14 = [v1 openSensitiveURL:v12 withOptions:isa];

    (*(v6 + 8))(v8, v5);
    return v14;
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openMusicHapticsSettings()()
{
  v1 = v0;
  v2 = sub_100003ABC(&qword_100600DE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_1004B6B04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6AC4();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100007214(v4, &qword_100600DE0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_1004B6A44(v9);
    v11 = v10;
    sub_10003C58C(_swiftEmptyArrayStorage);
    isa = sub_1004BBC24().super.isa;

    [v1 openSensitiveURL:v11 withOptions:isa];

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t LSApplicationWorkspace.openiTunesStore(with:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004B66F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v47 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003ABC(&qword_100600DE0);
  __chkstk_darwin(v7 - 8);
  v48 = v40 - v8;
  v49 = sub_1004B6B04();
  v9 = *(v49 - 8);
  v10 = __chkstk_darwin(v49);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v46 = v40 - v13;
  v14 = sub_100003ABC(&qword_100603C28);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v40 - v18;
  v20 = *(v5 + 56);
  v20(v40 - v18, 1, 1, v4);
  if (a1)
  {
    v21 = [a1 universalStore];
    if (v21)
    {
      v44 = a2;
      v43 = [v21 adamID];
      swift_unknownObjectRelease();
      if (qword_1005FFED8 != -1)
      {
        swift_once();
      }

      sub_100003ABC(&qword_100603560);
      UnfairLock.locked<A>(_:)(sub_10000E7D8);
      v22 = v51;
      a2 = v44;
      if (v51)
      {
        v42 = v5;
        v23 = sub_1004BBE24();
        v24 = v22;
        v25 = [v22 urlForBagKey:v23];

        if (v25)
        {
          v41 = v24;
          sub_1004B6A94();

          (*(v9 + 32))(v46, v12, v49);
          sub_1004B6664();
          sub_10011C6E8(v17, v19);
          v5 = v42;
          v26 = *(v42 + 48);
          v40[1] = v42 + 48;
          if (v26(v19, 1, v4) || (v27 = sub_1004B6644()) == 0)
          {

            v27 = _swiftEmptyArrayStorage;
          }

          v51 = v27;
          sub_100003ABC(&qword_100601328);
          sub_1004B6634();
          v39 = swift_allocObject();
          *(v39 + 16) = xmmword_1004C50C0;
          v50 = v43;
          sub_1004BD934();
          sub_1004B6604();

          sub_1004B6604();
          sub_100023000(v39);
          if (v26(v19, 1, v4))
          {
          }

          else
          {
            sub_1004B6654();
          }

          a2 = v44;
          v30 = v48;
          v29 = v49;
          (*(v9 + 8))(v46, v49);
          goto LABEL_15;
        }

        a2 = v44;
        v5 = v42;
      }
    }
  }

  sub_1004B66E4();
  v20(v17, 0, 1, v4);
  sub_10011C6E8(v17, v19);
  v26 = *(v5 + 48);
  if (!v26(v19, 1, v4))
  {
    sub_1004B66C4();
  }

  v28 = v26(v19, 1, v4);
  v29 = v49;
  if (!v28)
  {
    sub_1004B6684();
  }

  v30 = v48;
LABEL_15:
  if (v26(v19, 1, v4))
  {
    (*(v9 + 56))(v30, 1, 1, v29);
  }

  else
  {
    v31 = v47;
    (*(v5 + 16))(v47, v19, v4);
    sub_1004B6674();
    (*(v5 + 8))(v31, v4);
    if ((*(v9 + 48))(v30, 1, v29) != 1)
    {
      (*(v9 + 32))(a2, v30, v29);
      sub_1004B6A44(v34);
      v36 = v35;
      sub_10003C58C(_swiftEmptyArrayStorage);
      v37 = a2;
      isa = sub_1004BBC24().super.isa;

      [v45 openSensitiveURL:v36 withOptions:isa];

      a2 = v37;
      v32 = 0;
      goto LABEL_19;
    }
  }

  sub_100007214(v30, &qword_100600DE0);
  v32 = 1;
LABEL_19:
  (*(v9 + 56))(a2, v32, 1, v29);
  return sub_100007214(v19, &qword_100603C28);
}

uint64_t LSApplicationWorkspace.openiTunesStore(with:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004B66F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v42 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003ABC(&qword_100600DE0);
  __chkstk_darwin(v5 - 8);
  v45 = v40 - v6;
  v7 = sub_1004B6B04();
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v43 = v40 - v11;
  v12 = sub_100003ABC(&qword_100603C28);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v40 - v16;
  v18 = *(v3 + 56);
  v18(v40 - v16, 1, 1, v2);
  v19 = sub_1004BB3D4();
  v44 = v3;
  if (v20)
  {
    v40[1] = v19;
    v41 = a1;
    if (qword_1005FFED8 != -1)
    {
      swift_once();
    }

    sub_100003ABC(&qword_100603560);
    UnfairLock.locked<A>(_:)(sub_1000F3384);
    v21 = v48;
    if (v48)
    {
      v22 = sub_1004BBE24();
      v23 = [v21 urlForBagKey:v22];

      if (v23)
      {
        sub_1004B6A94();

        (*(v46 + 32))(v43, v10, v47);
        sub_1004B6664();
        sub_10011C6E8(v15, v17);
        v24 = *(v44 + 48);
        if (v24(v17, 1, v2) || (v25 = sub_1004B6644()) == 0)
        {

          v25 = _swiftEmptyArrayStorage;
        }

        v48 = v25;
        sub_100003ABC(&qword_100601328);
        sub_1004B6634();
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1004C50C0;
        sub_1004B6604();

        sub_1004B6604();
        sub_100023000(v30);
        if (v24(v17, 1, v2))
        {
        }

        else
        {
          sub_1004B6654();
        }

        v28 = v46;
        v27 = v47;
        v29 = v45;
        (*(v46 + 8))(v43, v47);
        a1 = v41;
        goto LABEL_20;
      }

      v3 = v44;
    }

    a1 = v41;
  }

  sub_1004B66E4();
  v18(v15, 0, 1, v2);
  sub_10011C6E8(v15, v17);
  v24 = *(v3 + 48);
  if (!v24(v17, 1, v2))
  {
    sub_1004B66C4();
  }

  v26 = v24(v17, 1, v2);
  v28 = v46;
  v27 = v47;
  if (!v26)
  {
    sub_1004B6684();
  }

  v29 = v45;
LABEL_20:
  if (v24(v17, 1, v2))
  {
    (*(v28 + 56))(v29, 1, 1, v27);
  }

  else
  {
    v31 = v44;
    v32 = v42;
    (*(v44 + 16))(v42, v17, v2);
    sub_1004B6674();
    (*(v31 + 8))(v32, v2);
    if ((*(v28 + 48))(v29, 1, v27) != 1)
    {
      (*(v28 + 32))(a1, v29, v27);
      sub_1004B6A44(v35);
      v37 = v36;
      sub_10003C58C(_swiftEmptyArrayStorage);
      v38 = a1;
      isa = sub_1004BBC24().super.isa;

      [v40[2] openSensitiveURL:v37 withOptions:isa];

      a1 = v38;
      v33 = 0;
      goto LABEL_24;
    }
  }

  sub_100007214(v29, &qword_100600DE0);
  v33 = 1;
LABEL_24:
  (*(v28 + 56))(a1, v33, 1, v27);
  return sub_100007214(v17, &qword_100603C28);
}

Swift::Void __swiftcall LSApplicationWorkspace.openMusic(tabIdentifier:)(MusicCore::TabIdentifier_optional tabIdentifier)
{
  v2 = v1;
  value = tabIdentifier.value;
  v4 = sub_100003ABC(&qword_100600DE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_1004B6B04();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0x2F2F3A636973756DLL;
  v26 = 0xE800000000000000;
  if (value != 7)
  {
    v11 = 0x7972617262696CLL;
    v24._countAndFlagsBits = 0x6261743F2F626174;
    v24._object = 0xE90000000000003DLL;
    v12 = 0xE600000000000000;
    v13 = 0x736F65646976;
    if (value != 5)
    {
      v13 = 0x7473696C79616C70;
      v12 = 0xE900000000000073;
    }

    v14 = 0xE500000000000000;
    v15 = 0x6F69646172;
    if (value != 3)
    {
      v15 = 0x686372616573;
      v14 = 0xE600000000000000;
    }

    if (value <= 4)
    {
      v13 = v15;
      v12 = v14;
    }

    v16 = 0xE900000000000077;
    v17 = 0x6F4E6E657473696CLL;
    if (value != 1)
    {
      v17 = 0x6573776F7262;
      v16 = 0xE600000000000000;
    }

    if (value)
    {
      v11 = v17;
    }

    else
    {
      v16 = 0xE700000000000000;
    }

    if (value <= 2)
    {
      v18._countAndFlagsBits = v11;
    }

    else
    {
      v18._countAndFlagsBits = v13;
    }

    if (value <= 2)
    {
      v19 = v16;
    }

    else
    {
      v19 = v12;
    }

    v18._object = v19;
    sub_1004BC024(v18);

    sub_1004BBFF4(v24);
  }

  sub_1004B6AC4();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100007214(v6, &qword_100600DE0);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_1004B6A44(v20);
    v22 = v21;
    sub_10003C58C(_swiftEmptyArrayStorage);
    isa = sub_1004BBC24().super.isa;

    [v2 openSensitiveURL:v22 withOptions:isa];

    (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_10011C6E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100603C28);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id static MPModelPlaylist.defaultMusicKind.getter()
{
  v0 = objc_opt_self();
  v1 = _sSo20MPModelPlaylistEntryC9MusicCoreE07defaultD4KindSo0abcG0CvgZ_0();
  v2 = [v0 kindWithPlaylistEntryKind:v1 options:0];

  return v2;
}

id sub_10011C7D4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  strcpy(v5, "showAllTVShows");
  v5[15] = -18;
  sub_10000E7F4();
  NSUserDefaults.subscript.getter(v5, &v6);
  if (!v7)
  {
    sub_10011CF58(&v6);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  v1 = v5[0];

  if (v1)
  {
    v2 = 3;
    goto LABEL_8;
  }

LABEL_7:
  v2 = 2;
LABEL_8:
  v3 = [objc_opt_self() kindWithVariants:v2];

  return v3;
}

id static MPModelArtist.defaultMusicKind.getter()
{
  v0 = objc_opt_self();
  v1 = objc_opt_self();
  v2 = [objc_opt_self() kindWithVariants:3];
  v3 = [v1 kindWithSongKind:v2];

  v4 = [v0 kindWithAlbumKind:v3];
  return v4;
}

id static MPModelAlbum.defaultMusicKind.getter()
{
  v0 = objc_opt_self();
  v1 = [objc_opt_self() kindWithVariants:3];
  v2 = [v0 kindWithSongKind:v1];

  return v2;
}

id static MPModelTVShow.defaultMusicKind.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  strcpy(v9, "showAllTVShows");
  v9[15] = -18;
  sub_10000E7F4();
  NSUserDefaults.subscript.getter(v9, &v10);
  if (!v11)
  {
    sub_10011CF58(&v10);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  v1 = v9[0];

  if ((v1 & 1) == 0)
  {
LABEL_7:
    v2 = 2;
    goto LABEL_8;
  }

  v2 = 3;
LABEL_8:
  v3 = objc_opt_self();
  v4 = objc_opt_self();
  v5 = [objc_opt_self() kindWithVariants:v2];
  v6 = [v4 kindWithEpisodeKind:v5];

  v7 = [v3 kindWithSeasonKind:v6];
  return v7;
}

id static MPModelTVSeason.defaultMusicKind.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  strcpy(v7, "showAllTVShows");
  v7[15] = -18;
  sub_10000E7F4();
  NSUserDefaults.subscript.getter(v7, &v8);
  if (!v9)
  {
    sub_10011CF58(&v8);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  v1 = v7[0];

  if ((v1 & 1) == 0)
  {
LABEL_7:
    v2 = 2;
    goto LABEL_8;
  }

  v2 = 3;
LABEL_8:
  v3 = objc_opt_self();
  v4 = [objc_opt_self() kindWithVariants:v2];
  v5 = [v3 kindWithEpisodeKind:v4];

  return v5;
}

id _sSo20MPModelPlaylistEntryC9MusicCoreE07defaultD4KindSo0abcG0CvgZ_0()
{
  sub_100003ABC(&qword_100603C50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004C5130;
  *(v0 + 32) = [objc_opt_self() kindWithVariants:7];
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  strcpy(v12, "showAllTVShows");
  v12[15] = -18;
  sub_10000E7F4();
  NSUserDefaults.subscript.getter(v12, &v13);
  if (!v14)
  {
    sub_10011CF58(&v13);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  v3 = v12[0];

  if (v3)
  {
    v4 = 3;
    goto LABEL_8;
  }

LABEL_7:
  v4 = 2;
LABEL_8:
  *(v0 + 40) = [objc_opt_self() kindWithVariants:v4];
  v5 = [v1 standardUserDefaults];
  strcpy(v12, "showAllTVShows");
  v12[15] = -18;
  NSUserDefaults.subscript.getter(v12, &v13);
  if (!v14)
  {
    sub_10011CF58(&v13);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:

    goto LABEL_14;
  }

  v6 = v12[0];

  if ((v6 & 1) == 0)
  {
LABEL_14:
    v7 = 2;
    goto LABEL_15;
  }

  v7 = 3;
LABEL_15:
  v8 = objc_opt_self();
  *(v0 + 48) = [objc_opt_self() kindWithVariants:v7];
  sub_100003ABC(&unk_100603FF0);
  isa = sub_1004BC284().super.isa;

  v10 = [v8 kindWithKinds:isa];

  return v10;
}

uint64_t sub_10011CF58(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100605110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id MPModelPlaylistEntry.innermostModelObject.getter()
{
  v1 = [v0 type];
  if (v1 == 3)
  {
    v3 = [v5 movie];
LABEL_7:
    result = v3;
    v2 = v5;
    if (result)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (v1 == 2)
  {
    v3 = [v5 tvEpisode];
    goto LABEL_7;
  }

  v2 = v5;
  if (v1 == 1)
  {
    v3 = [v5 song];
    goto LABEL_7;
  }

LABEL_8:

  return v2;
}