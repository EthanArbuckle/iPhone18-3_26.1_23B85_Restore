uint64_t sub_10006F2BC()
{
  v1 = type metadata accessor for Song();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_10012B804(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10006F3FC()
{
  v1 = type metadata accessor for Song();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Actions.PlaybackContext();
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + v6;

  v8 = v5[5];
  v9 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v9 - 8) + 48))(v0 + v6 + v8, 1, v9))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = type metadata accessor for MusicPlaybackIntentDescriptor();
      (*(*(v10 - 8) + 8))(v7 + v8, v10);
    }

    else
    {
    }
  }

  v11 = (v7 + v5[6]);
  if (v11[1])
  {

    v12 = v11[3];
    if (v12 >> 60 != 15)
    {
      sub_10002C064(v11[2], v12);
    }
  }

  v13 = v7 + v5[7];
  if (*(v13 + 24))
  {
    sub_10000959C(v13);
  }

  return swift_deallocObject();
}

uint64_t sub_10006F618()
{
  v1 = type metadata accessor for Song();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_10006F6B0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10006F6E8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10006F728()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10006F770()
{
  v1 = type metadata accessor for Song();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10006F840()
{
  v1 = type metadata accessor for Song();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + v3 + 1) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_10006F9B8()
{
  v1 = type metadata accessor for Playlist.Folder.Item();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  sub_10000959C(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_10006FAB8()
{

  return swift_deallocObject();
}

uint64_t sub_10006FAF4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10006FBC4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10006FC94()
{
  v12 = type metadata accessor for Album();
  v1 = *(v12 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v11 = type metadata accessor for MusicPropertySource();
  v4 = *(v11 - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = type metadata accessor for Track();
  v8 = *(v7 - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v2, v12);
  (*(v4 + 8))(v0 + v5, v11);
  (*(v8 + 8))(v0 + v9, v7);

  return swift_deallocObject();
}

uint64_t sub_10006FE80()
{

  return swift_deallocObject();
}

uint64_t sub_10007008C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000700CC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10007010C()
{

  return swift_deallocObject();
}

uint64_t sub_100070144()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10007017C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10010FC20(&unk_101192950);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_10010FC20(&unk_101188920);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = sub_10010FC20(&unk_101184060);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_10010FC20(&qword_101182190);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v16 = type metadata accessor for ArtworkImage.ReusePolicy();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[9];
    goto LABEL_11;
  }

  v18 = *(a1 + a3[11]);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  v19 = v18 - 1;
  if (v19 < 0)
  {
    v19 = -1;
  }

  return (v19 + 1);
}

uint64_t sub_10007039C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10010FC20(&unk_101192950);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_10010FC20(&unk_101188920);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_10010FC20(&unk_101184060);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = sub_10010FC20(&qword_101182190);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[8];
        }

        else
        {
          result = type metadata accessor for ArtworkImage.ReusePolicy();
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[11]) = a2;
            return result;
          }

          v10 = result;
          v14 = *(result - 8);
          v15 = a4[9];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000705AC@<X0>(uint64_t *a1@<X8>)
{
  result = static Color.clear.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000705D4()
{
  v1 = type metadata accessor for ArtworkMotionView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  v4 = type metadata accessor for VideoArtwork();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = v1[5];
  v7 = type metadata accessor for Artwork();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  v9 = v1[6];
  v10 = type metadata accessor for Artwork.CropStyle();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v3 + v9, v10);
  }

  v12 = v1[8];
  v13 = type metadata accessor for ArtworkImage.Placeholder(0);
  if (!(*(*(v13 - 8) + 48))(v3 + v12, 1, v13))
  {
    v14 = sub_10010FC20(&unk_101182950);
    if (!(*(*(v14 - 8) + 48))(v3 + v12, 11, v14))
    {
      v15 = type metadata accessor for Playlist.Variant();
      v16 = *(v15 - 8);
      if (!(*(v16 + 48))(v3 + v12, 1, v15))
      {
        (*(v16 + 8))(v3 + v12, v15);
      }
    }
  }

  v17 = v1[9];
  v18 = type metadata accessor for ArtworkImage.ReusePolicy();
  (*(*(v18 - 8) + 8))(v3 + v17, v18);

  return swift_deallocObject();
}

uint64_t sub_100070974()
{
  v25 = type metadata accessor for ArtworkImage.Placeholder(0);
  v1 = *(v25 - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for ArtworkMotionView();
  v5 = (v2 + v3 + *(*(v4 - 1) + 80)) & ~*(*(v4 - 1) + 80);
  v6 = sub_10010FC20(&unk_101182950);
  v24 = *(*(v6 - 8) + 48);
  if (!v24(v0 + v2, 11, v6))
  {
    v7 = type metadata accessor for Playlist.Variant();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v0 + v2, 1, v7))
    {
      (*(v8 + 8))(v0 + v2, v7);
    }
  }

  v9 = v0 + v5;
  v10 = type metadata accessor for VideoArtwork();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v5, 1, v10))
  {
    (*(v11 + 8))(v0 + v5, v10);
  }

  v12 = v4[5];
  v13 = type metadata accessor for Artwork();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v9 + v12, 1, v13))
  {
    (*(v14 + 8))(v9 + v12, v13);
  }

  v15 = v4[6];
  v16 = type metadata accessor for Artwork.CropStyle();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v9 + v15, 1, v16))
  {
    (*(v17 + 8))(v9 + v15, v16);
  }

  v18 = v4[8];
  if (!(*(v1 + 48))(v9 + v18, 1, v25) && !v24(v9 + v18, 11, v6))
  {
    v19 = type metadata accessor for Playlist.Variant();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v9 + v18, 1, v19))
    {
      (*(v20 + 8))(v9 + v18, v19);
    }
  }

  v21 = v4[9];
  v22 = type metadata accessor for ArtworkImage.ReusePolicy();
  (*(*(v22 - 8) + 8))(v9 + v21, v22);

  return swift_deallocObject();
}

uint64_t sub_100070E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101182298);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100070EA4(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101182298);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100070F10()
{

  return swift_deallocObject();
}

uint64_t sub_100070F48()
{
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100070FA8()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10007100C()
{
  v1 = *(sub_10010FC20(&qword_101183AD0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = type metadata accessor for UserProfile();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_100071194()
{

  return swift_deallocObject();
}

uint64_t sub_1000711CC()
{

  return swift_deallocObject();
}

uint64_t sub_10007121C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100071268()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000712A0()
{

  return swift_deallocObject();
}

uint64_t sub_1000712EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = _s9PlaylistsV5ScopeVMa(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_100071398(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = _s9PlaylistsV5ScopeVMa(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10007143C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10010FC20(&unk_10118F670);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000714F8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10010FC20(&unk_10118F670);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000716E0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of LibraryPlaylistFolderItemInternalFilter.isEditable.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100071740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10007180C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1000718C4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000718FC()
{
  v1 = type metadata accessor for Actions.MetricsReportingContext();
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);

  if (*(v0 + v2 + 8) >= 0xDuLL)
  {
  }

  v3 = v0 + v2 + *(v1 + 20);
  v4 = type metadata accessor for MetricsEvent.Page(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {

    v5 = *(v4 + 24);
    v6 = type metadata accessor for URL();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_100071B10()
{
  v1 = *(sub_10010FC20(&unk_1011838D0) - 8);
  v2 = (*(v1 + 80) + 160) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(*(sub_10010FC20(&unk_1011845D0) - 8) + 80);
  sub_10000959C(v0 + 16);

  swift_unknownObjectWeakDestroy();
  v5 = *(v0 + 112);
  if (v5 != 255)
  {
    sub_10012B804(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), v5);
  }

  if (*(v0 + 128))
  {
  }

  if (*(v0 + 144))
  {
  }

  v6 = (v3 + v4 + 8) & ~v4;
  v7 = v0 + v2;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v19 = *(v10 + 24);
      v11 = type metadata accessor for URL();
      v17 = *(v11 - 8);
      v18 = v11;
      if (!(*(v17 + 48))(v9 + v19, 1))
      {
        (*(v17 + 8))(v9 + v19, v18);
      }
    }
  }

  v12 = type metadata accessor for PlaylistContext();
  if (!(*(*(v12 - 8) + 48))(v0 + v6, 1, v12))
  {
    v13 = type metadata accessor for Playlist.Entry();
    (*(*(v13 - 8) + 8))(v0 + v6, v13);
    v14 = *(v12 + 20);
    v15 = type metadata accessor for Playlist();
    (*(*(v15 - 8) + 8))(v0 + v6 + v14, v15);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100071F20()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100071F68()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100071FA8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100071FE0()
{

  v1 = *(v0 + 64);
  if (v1 != 255)
  {
    sub_10012B804(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_100072034()
{

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_10012B804(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 128))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000720B8()
{

  return swift_deallocObject();
}

uint64_t sub_100072104()
{

  return swift_deallocObject();
}

uint64_t sub_10007213C()
{

  return swift_deallocObject();
}

uint64_t sub_100072178()
{

  return swift_deallocObject();
}

uint64_t sub_1000721B8()
{

  return swift_deallocObject();
}

uint64_t sub_1000721F0()
{

  return swift_deallocObject();
}

uint64_t sub_100072230()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100072270()
{

  return swift_deallocObject();
}

uint64_t sub_1000722A8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000722E8()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100072340()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100072398()
{
  v1 = _s7ContextVMa(0);
  v2 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = (v0 + v2);
  v4 = _s7ContextV6SourceOMa(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v5 = type metadata accessor for Playlist.Entry();
      (*(*(v5 - 8) + 8))(v0 + v2, v5);
      v6 = *(sub_10010FC20(&qword_101183AD8) + 48);
      v7 = type metadata accessor for Playlist();
      (*(*(v7 - 8) + 8))(v3 + v6, v7);
    }
  }

  if (*(v3 + *(v1 + 20) + 8) != 255)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100072574()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000725C8()
{

  return swift_deallocObject();
}

uint64_t sub_100072600()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100072648()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100072698()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000726D0()
{

  return swift_deallocObject();
}

uint64_t sub_100072848()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100072884()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100072940()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100072978()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100072A50()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  v4 = v0 + v3;
  swift_unknownObjectWeakDestroy();
  v5 = *(v0 + v3 + 48);
  if (v5 != 255)
  {
    sub_10012B804(*(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), v5);
  }

  if (*(v4 + 64))
  {
  }

  if (*(v4 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100072B34()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_10012B804(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100072C6C()
{
  v1 = type metadata accessor for Playlist();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for Playlist.Entry();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);
  v9 = v0 + v8;
  swift_unknownObjectWeakDestroy();
  v10 = *(v0 + v8 + 48);
  if (v10 != 255)
  {
    sub_10012B804(*(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32), *(v9 + 40), v10);
  }

  if (*(v9 + 64))
  {
  }

  if (*(v9 + 80))
  {
  }

  sub_10000959C(v0 + ((v8 + 103) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_100072E3C()
{
  v1 = type metadata accessor for Playlist.Entry();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Playlist();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_100072F8C()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 64);
  if (v1 != 255)
  {
    sub_10012B804(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), v1);
  }

  if (*(v0 + 80))
  {
  }

  if (*(v0 + 96))
  {
  }

  sub_10000959C(v0 + 112);

  return swift_deallocObject();
}

uint64_t sub_100073010()
{
  v1 = type metadata accessor for Playlist.Entry();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000730E8()
{
  v1 = type metadata accessor for Playlist.Entry();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000731C8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_10012B804(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  sub_10000959C(v0 + 128);

  return swift_deallocObject();
}

uint64_t sub_100073254()
{
  v1 = type metadata accessor for Playlist.Entry();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Playlist();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1000733AC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  swift_unknownObjectWeakDestroy();
  v4 = *(v0 + 88);
  if (v4 != 255)
  {
    sub_10012B804(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), v4);
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 120))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 136) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_1000734B8()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();
  v4 = *(v0 + 104);
  if (v4 != 255)
  {
    sub_10012B804(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), v4);
  }

  if (*(v0 + 120))
  {
  }

  if (*(v0 + 136))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 152) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_1000735EC()
{

  return swift_deallocObject();
}

uint64_t sub_10007362C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100073664()
{
  if (*(v0 + 24) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000736B4()
{

  return swift_deallocObject();
}

uint64_t sub_1000736F4()
{

  return swift_deallocObject();
}

uint64_t sub_100073750()
{

  return swift_deallocObject();
}

uint64_t sub_100073788()
{

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_10012B804(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 128))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10007380C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10007385C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10007389C()
{

  return swift_deallocObject();
}

uint64_t sub_1000738D4()
{
  v1 = type metadata accessor for Song();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_10012B804(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000739B8()
{

  return swift_deallocObject();
}

uint64_t sub_1000739F0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100073A30()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100073ABC()
{

  return swift_deallocObject();
}

uint64_t sub_100073AF4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100073B64()
{
  v1 = sub_10010FC20(&unk_1011841D0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 73) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_10010FC20(&unk_10118F670) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  v8 = type metadata accessor for Playlist.Folder();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v6, 1, v8))
  {
    (*(v9 + 8))(v0 + v6, v8);
  }

  v10 = (v7 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;

  return swift_deallocObject();
}

uint64_t sub_100073D50()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100073D90()
{
  v1 = type metadata accessor for Playlist();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_10010FC20(&unk_1011841D0);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_100073F24()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100073F5C()
{

  return swift_deallocObject();
}

uint64_t sub_100073FEC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100074028()
{
  v1 = _s9PlaylistsVMa(0);
  v2 = (*(*(v1 - 8) + 80) + 18) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2 + *(v1 + 32);

  v4 = *(_s9PlaylistsV5ScopeVMa(0) + 20);
  v5 = type metadata accessor for Playlist.Folder();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_1000741A8()
{
  v1 = _s6AlbumsVMa(0);
  v2 = (*(*(v1 - 8) + 80) + 18) & ~*(*(v1 - 8) + 80);

  v3 = *(v1 + 24);
  _s6AlbumsV5ScopeOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v5 = type metadata accessor for Artist();
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v5 = type metadata accessor for Composer();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }

    v5 = type metadata accessor for Genre();
  }

  (*(*(v5 - 8) + 8))(v0 + v2 + v3, v5);
LABEL_8:

  return swift_deallocObject();
}

uint64_t sub_100074310()
{
  v1 = _s11MusicVideosVMa(0);
  v2 = (*(*(v1 - 8) + 80) + 18) & ~*(*(v1 - 8) + 80);

  v3 = *(v1 + 28);
  v4 = type metadata accessor for Artist();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_100074478()
{

  return swift_deallocObject();
}

uint64_t sub_1000744D0()
{

  return swift_deallocObject();
}

uint64_t sub_100074538()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100074608()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000746CC()
{
  v1 = *(sub_10010FC20(&unk_10118CDB0) - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);

  sub_10000959C(v0 + 24);
  v7 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v2, 1, v7))
  {
    (*(v8 + 8))(v0 + v2, v7);
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1000748A0()
{

  return swift_deallocObject();
}

uint64_t sub_1000748E0()
{

  return swift_deallocObject();
}

uint64_t sub_100074918()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100074954()
{

  return swift_deallocObject();
}

uint64_t sub_10007498C()
{

  return swift_deallocObject();
}

uint64_t sub_1000749CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of LibraryArtistFilter.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100074A14()
{
  v1 = type metadata accessor for Artist();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(*(sub_10010FC20(&qword_101184610) - 8) + 80);
  v6 = (v4 + v5 + 8) & ~v5;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_100074B94()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100074BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010FC20(&unk_101184720);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_10010FC20(&qword_101184718);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100074CDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10010FC20(&unk_101184720);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_10010FC20(&qword_101184718);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100074E40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordLabel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100074EAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordLabel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100074F28()
{
  v1 = *(type metadata accessor for TracklistFooter.RecordLabelStack(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for RecordLabel();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_100074FF4()
{
  v1 = type metadata accessor for RecordLabel();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000750FC()
{
  sub_10000959C(v0 + 16);
  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10007514C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100075194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SuggestedSongsModule.Specs(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100075240(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SuggestedSongsModule.Specs(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000752E8()
{
  v1 = type metadata accessor for SuggestedSongsModule(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  type metadata accessor for SuggestedSongsDataSource.Placement(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for Playlist();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10007542C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for SuggestedSongsModule.Specs(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100075548(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = type metadata accessor for SuggestedSongsModule.Specs(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100075668(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for SuggestedSongsModule.Specs(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_10010FC20(&qword_10119F0B0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = sub_10010FC20(&qword_1011854E0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_1000757EC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for SuggestedSongsModule.Specs(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10010FC20(&qword_10119F0B0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = sub_10010FC20(&qword_1011854E0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_100075970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SuggestedSongsModule.Specs(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10010FC20(&qword_1011854E0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100075AA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for SuggestedSongsModule.Specs(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10010FC20(&qword_1011854E0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100075BD8()
{
  v1 = type metadata accessor for SuggestedSongsModule.ContentView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v16 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for Song();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v3;

  v8 = v1[7];
  type metadata accessor for SuggestedSongsDataSource.Placement(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for Playlist();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  v10 = v1[8];
  sub_10010FC20(&qword_10118A610);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DynamicTypeSize();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
  }

  else
  {
  }

  v12 = v1[9];
  sub_10010FC20(&unk_101184840);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for UserInterfaceSizeClass();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v7 + v12, 1, v13))
    {
      (*(v14 + 8))(v7 + v12, v13);
    }
  }

  else
  {
  }

  (*(v5 + 8))(v0 + ((v3 + v16 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_100075ED8()
{
  v1 = type metadata accessor for SuggestedSongsModule.HeaderView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  type metadata accessor for SuggestedSongsDataSource.Placement(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for Playlist();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 28);
  sub_10010FC20(&unk_101184840);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for UserInterfaceSizeClass();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v2 + v5, 1, v6))
    {
      (*(v7 + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000760D4()
{
  v1 = type metadata accessor for SuggestedSongsModule.HeaderView(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = *(v1 + 24);
  type metadata accessor for SuggestedSongsDataSource.Placement(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for Playlist();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = *(v1 + 28);
  sub_10010FC20(&unk_101184840);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for UserInterfaceSizeClass();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000762D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Song();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = type metadata accessor for SuggestedSongsModule.Specs(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[8];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  v16 = sub_10010FC20(&qword_10119F0B0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[10];
    goto LABEL_13;
  }

  v17 = sub_10010FC20(&qword_1011854E0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[11];
    goto LABEL_13;
  }

  v18 = type metadata accessor for Actions.MetricsReportingContext();
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[12];

  return v19(v20, a2, v18);
}

uint64_t sub_1000764F4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for Song();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for SuggestedSongsModule.Specs(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_10010FC20(&qword_10119F0B0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[10];
    goto LABEL_11;
  }

  v17 = sub_10010FC20(&qword_1011854E0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[11];
    goto LABEL_11;
  }

  v18 = type metadata accessor for Actions.MetricsReportingContext();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[12];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_100076744()
{
  v1 = type metadata accessor for SuggestedSongsModule.SongCell(0);
  v23 = *(*(v1 - 1) + 80);
  v21 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for Playlist();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  swift_unknownObjectRelease();
  v22 = (v23 + 32) & ~v23;
  v5 = v0 + v22;
  v6 = type metadata accessor for Song();
  (*(*(v6 - 8) + 8))(v0 + v22, v6);

  v7 = v1[8];
  type metadata accessor for SuggestedSongsDataSource.Placement(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 8))(v5 + v7, v2);
  }

  else
  {
  }

  v8 = v1[10];
  sub_10010FC20(&qword_10118A610);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for DynamicTypeSize();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[11];
  sub_10010FC20(&unk_101184840);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for UserInterfaceSizeClass();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  else
  {
  }

  v13 = v5 + v1[12];
  if (*(v13 + 8) >= 0xDuLL)
  {
  }

  v14 = v13 + *(type metadata accessor for Actions.MetricsReportingContext() + 20);
  v15 = type metadata accessor for MetricsEvent.Page(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v20 = v2;

    v16 = *(v15 + 24);
    v17 = type metadata accessor for URL();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v14 + v16, 1, v17))
    {
      (*(v18 + 8))(v14 + v16, v17);
    }

    v2 = v20;
  }

  (*(v3 + 8))(v0 + ((v22 + v21 + v4) & ~v4), v2);

  return swift_deallocObject();
}

uint64_t sub_100076BE4()
{
  v1 = type metadata accessor for SuggestedSongsModule.SongCell(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = type metadata accessor for Song();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  v5 = v1[8];
  type metadata accessor for SuggestedSongsDataSource.Placement(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Playlist();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  v7 = v1[10];
  sub_10010FC20(&qword_10118A610);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DynamicTypeSize();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  v9 = v1[11];
  sub_10010FC20(&unk_101184840);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for UserInterfaceSizeClass();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v3 + v9, 1, v10))
    {
      (*(v11 + 8))(v3 + v9, v10);
    }
  }

  else
  {
  }

  v12 = v3 + v1[12];
  if (*(v12 + 8) >= 0xDuLL)
  {
  }

  v13 = v12 + *(type metadata accessor for Actions.MetricsReportingContext() + 20);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {

    v15 = *(v14 + 24);
    v16 = type metadata accessor for URL();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v13 + v15, 1, v16))
    {
      (*(v17 + 8))(v13 + v15, v16);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_100077008()
{

  return swift_deallocObject();
}

uint64_t sub_100077058()
{

  return swift_deallocObject();
}

uint64_t sub_100077090()
{
  v1 = type metadata accessor for SuggestedSongsModule.SongCell(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = type metadata accessor for Song();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  v5 = v1[8];
  type metadata accessor for SuggestedSongsDataSource.Placement(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Playlist();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  v7 = v1[10];
  sub_10010FC20(&qword_10118A610);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DynamicTypeSize();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  v9 = v1[11];
  sub_10010FC20(&unk_101184840);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for UserInterfaceSizeClass();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v3 + v9, 1, v10))
    {
      (*(v11 + 8))(v3 + v9, v10);
    }
  }

  else
  {
  }

  v12 = v3 + v1[12];
  if (*(v12 + 8) >= 0xDuLL)
  {
  }

  v13 = v12 + *(type metadata accessor for Actions.MetricsReportingContext() + 20);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {

    v15 = *(v14 + 24);
    v16 = type metadata accessor for URL();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v13 + v15, 1, v16))
    {
      (*(v17 + 8))(v13 + v15, v16);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1000774C8()
{
  v1 = type metadata accessor for Song();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000775A0()
{
  v1 = type metadata accessor for Song();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 25) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100077680()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000776B8()
{
  v1 = *(sub_10010FC20(&unk_1011838D0) - 8);
  v2 = (*(v1 + 80) + 160) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(*(sub_10010FC20(&unk_1011845D0) - 8) + 80);
  sub_10000959C(v0 + 16);

  swift_unknownObjectWeakDestroy();
  v5 = *(v0 + 112);
  if (v5 != 255)
  {
    sub_10012B804(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), v5);
  }

  if (*(v0 + 128))
  {
  }

  if (*(v0 + 144))
  {
  }

  v6 = (v3 + v4 + 8) & ~v4;
  v7 = v0 + v2;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v19 = *(v10 + 24);
      v11 = type metadata accessor for URL();
      v17 = *(v11 - 8);
      v18 = v11;
      if (!(*(v17 + 48))(v9 + v19, 1))
      {
        (*(v17 + 8))(v9 + v19, v18);
      }
    }
  }

  v12 = type metadata accessor for PlaylistContext();
  if (!(*(*(v12 - 8) + 48))(v0 + v6, 1, v12))
  {
    v13 = type metadata accessor for Playlist.Entry();
    (*(*(v13 - 8) + 8))(v0 + v6, v13);
    v14 = *(v12 + 20);
    v15 = type metadata accessor for Playlist();
    (*(*(v15 - 8) + 8))(v0 + v6 + v14, v15);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100077ACC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Song();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = type metadata accessor for SuggestedSongsModule.Specs(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_10010FC20(&qword_10119F0B0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  v17 = sub_10010FC20(&qword_1011854E0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_100077CA4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for Song();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for SuggestedSongsModule.Specs(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_10010FC20(&qword_10119F0B0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = sub_10010FC20(&qword_1011854E0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_100077E8C()
{
  sub_1001109D0(&qword_101185B48);
  sub_1001109D0(&qword_101185B40);
  sub_1001109D0(&qword_101185B38);
  sub_1001109D0(&qword_101185C50);
  sub_100238500(&qword_101185C58, &qword_101185B38, &unk_100EC1430, sub_10023A454);
  sub_10023A55C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100077FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010FC20(&qword_10119F0B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = sub_10010FC20(&qword_1011854E0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1000780D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10010FC20(&qword_10119F0B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_10010FC20(&qword_1011854E0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_100078238()
{

  return swift_deallocObject();
}

uint64_t sub_100078278()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10007838C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010FC20(&unk_10118A5E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20));
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

  else
  {
    v12 = type metadata accessor for ArtworkImage.Placeholder(0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1000784C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10010FC20(&unk_10118A5E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v11 = type metadata accessor for ArtworkImage.Placeholder(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100078768(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10010FC20(&qword_10119F0B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100078824(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10010FC20(&qword_10119F0B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000788F0()
{
  sub_1001109D0(&qword_101186778);
  sub_1001109D0(&qword_101186770);
  sub_1001109D0(&qword_1011A1440);
  sub_10024E50C();
  sub_100020674(&qword_1011A14A0, &qword_1011A1440);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000789F4()
{
  sub_1000D8FC4();

  return swift_deallocObject();
}

uint64_t sub_100078A40()
{
  sub_1001109D0(&qword_101186968);
  type metadata accessor for BorderedProminentButtonStyle();
  sub_100020674(&qword_101186988, &qword_101186968);
  sub_10024F92C(&qword_101186990, &type metadata accessor for BorderedProminentButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100078B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010FC20(&qword_101186BB8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
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

uint64_t sub_100078C08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10010FC20(&qword_101186BB8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_100078CCC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100078D04()
{
  v1 = *(_s7ContextV6SourceOMa(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = type metadata accessor for Playlist.Entry();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
    v5 = *(sub_10010FC20(&qword_101183AD8) + 48);
    v6 = type metadata accessor for Playlist();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_100078E7C()
{

  return swift_deallocObject();
}

uint64_t sub_100078EBC()
{

  return swift_deallocObject();
}

uint64_t sub_100078EF4()
{
  v1 = type metadata accessor for SocialProfile();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100078F7C()
{
  v1 = type metadata accessor for SocialProfile();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100079058()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000790B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of LibraryPlaylistEntryFilter.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100079148()
{

  return swift_deallocObject();
}

uint64_t sub_1000791A4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000791DC()
{
  v1 = _s7ContextVMa(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = (v0 + v2);
  v4 = _s7ContextV6SourceOMa(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v5 = type metadata accessor for Playlist.Entry();
      (*(*(v5 - 8) + 8))(v0 + v2, v5);
      v6 = *(sub_10010FC20(&qword_101183AD8) + 48);
      v7 = type metadata accessor for Playlist();
      (*(*(v7 - 8) + 8))(v3 + v6, v7);
    }
  }

  if (*(v3 + *(v1 + 20) + 8) != 255)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000793B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = _s7ContextVMa(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10007945C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = _s7ContextVMa(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100079500()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100079548()
{

  if (*(v0 + 24))
  {
  }

  if (*(v0 + 64))
  {
    sub_10000959C(v0 + 40);
  }

  return swift_deallocObject();
}

uint64_t sub_1000795B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011875B8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100079630(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10010FC20(&qword_1011875B8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1000796BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10010FC20(&qword_101187678);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100079778(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10010FC20(&qword_101187678);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10007990C@<X0>(_BYTE *a1@<X8>)
{
  sub_1002675D8();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000799A8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isFocused.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100079A0C()
{

  return swift_deallocObject();
}

uint64_t sub_100079A48(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100261EE0(v1, v2);
}

uint64_t sub_100079B1C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100262364(v1, v2);
}

uint64_t sub_100079B88@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isLimitedUI.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100079BE0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.limitedUserInterfaces.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100079C38()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100079C70()
{

  return swift_deallocObject();
}

uint64_t sub_100079CA8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100079CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010FC20(&qword_101187678);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_10010FC20(&qword_10118F260);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100079E20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10010FC20(&qword_101187678);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  else
  {
    v11 = sub_10010FC20(&qword_10118F260);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100079F68()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100079FA0()
{

  return swift_deallocObject();
}

uint64_t sub_100079FD8()
{

  return swift_deallocObject();
}

uint64_t sub_10007A0B4()
{

  return swift_deallocObject();
}

uint64_t sub_10007A2E0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10007A318()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10007A418()
{

  return swift_deallocObject();
}

uint64_t sub_10007A45C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10007A4A4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10007A51C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011883A8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007A594(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10010FC20(&qword_1011883A8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10007A650(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101188508);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10007A6C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101188508);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10007A758()
{

  if (*(v0 + 32))
  {
  }

  sub_1000D8F20(*(v0 + 48), *(v0 + 56));
  sub_1000D8F20(*(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_10007A7CC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10007A804()
{

  return swift_deallocObject();
}

uint64_t sub_10007A83C()
{

  return swift_deallocObject();
}

uint64_t sub_10007A884()
{

  return swift_deallocObject();
}

uint64_t sub_10007A8D4()
{

  return swift_deallocObject();
}

uint64_t sub_10007A948()
{
  v1 = type metadata accessor for PlaybackIntentDescriptor(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = (v0 + v2);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + *(v1 + 28);
  if (*(v5 + 24))
  {
    sub_10000959C(v5);
  }

  v6 = v3 + *(v1 + 32);
  if (*(v6 + 24))
  {
    sub_10000959C(v6);
  }

  return swift_deallocObject();
}

uint64_t sub_10007AAA8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10007AAE0()
{

  return swift_deallocObject();
}

uint64_t sub_10007AB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_10010FC20(&qword_101183A20);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 52);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10007AC14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_10010FC20(&qword_101183A20);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 52);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10007AD1C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = _s6AlbumsV5ScopeOMa(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_10007ADC8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = _s6AlbumsV5ScopeOMa(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10007AE84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of LibraryAlbumInternalSortProperties.releaseYear.getter();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10007AF20@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of LibraryAlbumInternalInclusionProperties.isSingleMusicVideo.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10007AF9C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of LibraryAlbumFilter.isCompilation.getter();
  *a2 = result;
  return result;
}

uint64_t sub_10007B038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10010FC20(&qword_1011831D0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10010FC20(&qword_10119F0B0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10007B174(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_10010FC20(&qword_1011831D0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10010FC20(&qword_10119F0B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10007B2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Font.TextStyle();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10007B380(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Font.TextStyle();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

uint64_t sub_10007B43C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10007B484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MusicPin();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
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

uint64_t sub_10007B54C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MusicPin();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_10007B604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DragDropPins.Origin(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 5)
    {
      return v10 - 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10007B6BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DragDropPins.Origin(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 4;
  }

  return result;
}

uint64_t sub_10007B774(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPin();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10007B7E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPin();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

id sub_10007B860@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 userSubscriptionState];
  *a2 = result;
  return result;
}

id sub_10007B8A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 subscriptionCapabilities];
  *a2 = result;
  return result;
}

id sub_10007B8F0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 allowsRadioContent];
  *a2 = result;
  return result;
}

uint64_t sub_10007B938()
{

  return swift_deallocObject();
}

uint64_t sub_10007B978()
{

  return swift_deallocObject();
}

uint64_t sub_10007B9C4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10007B9FC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10007BA44()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10007BA98()
{

  return swift_deallocObject();
}

uint64_t sub_10007BAD0()
{

  return swift_deallocObject();
}

uint64_t sub_10007BB18()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10007BB54()
{
  v1 = type metadata accessor for Lyrics.TextLine(0);
  v15 = *(*(v1 - 8) + 80);
  v2 = (v15 + 40) & ~v15;
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for SyncedLyricsSharingTransitionInfo(0);
  v5 = *(*(v4 - 8) + 80);
  v14 = v3;
  v16 = (v3 + v5 + 8) & ~v5;

  v6 = v0 + v2;
  v7 = *(v1 + 28);
  v8 = type metadata accessor for Locale.Language();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v6 + v7, 1, v8))
  {
    (*(v9 + 8))(v6 + v7, v8);
  }

  v11 = v0 + v16;
  v12 = *(v1 + 28);
  if (!v10(v0 + v16 + v12, 1, v8))
  {
    (*(v9 + 8))(v11 + v12, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_10007BE7C()
{

  return swift_deallocObject();
}

uint64_t sub_10007BEE8()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10007BF30()
{

  return swift_deallocObject();
}

uint64_t sub_10007BF68()
{

  return swift_deallocObject();
}

uint64_t sub_10007BFC0()
{

  return swift_deallocObject();
}

uint64_t sub_10007C008()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10007C048()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10007C0E0()
{

  return swift_deallocObject();
}

uint64_t sub_10007C120()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10007C1E4()
{

  return swift_deallocObject();
}

uint64_t sub_10007C22C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_10012B804(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 128))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10007C2B4()
{
  v1 = *(sub_10010FC20(&qword_10118A308) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v4 = sub_10010FC20(&unk_10118A320);
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = v0 + v3;
  swift_unknownObjectWeakDestroy();
  v7 = *(v0 + v3 + 48);
  if (v7 != 255)
  {
    sub_10012B804(*(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), v7);
  }

  if (*(v6 + 64))
  {
  }

  if (*(v6 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10007C434()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10007C500()
{

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_10012B804(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 128))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10007C594()
{

  return swift_deallocObject();
}

uint64_t sub_10007C5CC()
{

  return swift_deallocObject();
}

uint64_t sub_10007C60C()
{

  return swift_deallocObject();
}

uint64_t sub_10007C64C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10007C720()
{
  v1 = type metadata accessor for URL();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_10007C7BC()
{
  v1 = (type metadata accessor for LaunchURL.Resolver() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  swift_unknownObjectRelease();

  v7 = v1[8];
  v8 = type metadata accessor for Logger();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);
  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_10007C998()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10007C9D0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10007CA20()
{

  return swift_deallocObject();
}

uint64_t sub_10007CA58()
{

  if (v0[3])
  {
  }

  if (v0[5])
  {
  }

  if (v0[7])
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10007CAD0()
{

  return swift_deallocObject();
}

uint64_t sub_10007CB08()
{
  v1 = sub_10010FC20(&unk_1011841D0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10007CBF0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10007CCA4()
{

  return swift_deallocObject();
}

uint64_t sub_10007CCDC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10007CD14()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10007CD64()
{

  return swift_deallocObject();
}

uint64_t sub_10007CDAC()
{

  return swift_deallocObject();
}

uint64_t sub_10007CDEC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10007CE24()
{
  v1 = v0;
  v24 = type metadata accessor for IndexPath();
  v2 = *(v24 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for GenericMusicItem();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(_s23QueueSnapshotIdentifierOMa(0) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v26 = type metadata accessor for Actions.MetricsReportingContext();
  v25 = *(*(v26 - 8) + 80);
  v12 = (v10 + v11 + v25) & ~v25;

  v13 = *(v2 + 8);
  v13(v1 + v3, v24);
  (*(v6 + 8))(v1 + v7, v5);
  v14 = (v1 + v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v13(v1 + v10, v24);
    v14 = (v14 + *(sub_10010FC20(&qword_10118AB08) + 48));
    v16 = v12;
    v17 = v26;
  }

  else
  {
    v16 = v12;
    v17 = v26;
    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }

    sub_10010FC20(&qword_10118AB00);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_10010FC20(&qword_10118AB10);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v13(v1 + v10, v24);
        v14 = (v14 + *(sub_10010FC20(&qword_10118AB18) + 48));
      }

      else
      {
        ++v14;
      }
    }
  }

LABEL_8:
  if (*(v1 + v16 + 8) >= 0xDuLL)
  {
  }

  v18 = v1 + v16 + *(v17 + 20);
  v19 = type metadata accessor for MetricsEvent.Page(0);
  if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
  {

    v20 = *(v19 + 24);
    v21 = type metadata accessor for URL();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v18 + v20, 1, v21))
    {
      (*(v22 + 8))(v18 + v20, v21);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_10007D2AC()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10007D384()
{
  v1 = sub_10010FC20(&qword_10118AB38);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);

  if (*(v0 + 40))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 56) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_10007D488()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(_s23QueueSnapshotIdentifierOMa(0) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  swift_unknownObjectRelease();

  v7 = *(v2 + 8);
  v7(v0 + v3, v1);
  v8 = (v0 + v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v7(v0 + v6, v1);
    v10 = &qword_10118AB08;
LABEL_7:
    v8 = (v8 + *(sub_10010FC20(v10) + 48));
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_9;
  }

  sub_10010FC20(&qword_10118AB00);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10010FC20(&qword_10118AB10);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      ++v8;
      goto LABEL_8;
    }

    v7(v0 + v6, v1);
    v10 = &qword_10118AB18;
    goto LABEL_7;
  }

LABEL_8:

LABEL_9:

  return swift_deallocObject();
}

uint64_t sub_10007D6A8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10007D6F0()
{

  return swift_deallocObject();
}

uint64_t sub_10007D738()
{

  return swift_deallocObject();
}

uint64_t sub_10007D774()
{
  v1 = *(_s23QueueSnapshotIdentifierOMa(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);

  v7 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v5 + 8))(v0 + v2, v4);
    v9 = &qword_10118AB08;
LABEL_7:
    v7 = (v7 + *(sub_10010FC20(v9) + 48));
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_9;
  }

  sub_10010FC20(&qword_10118AB00);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10010FC20(&qword_10118AB10);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      ++v7;
      goto LABEL_8;
    }

    (*(v5 + 8))(v0 + v2, v4);
    v9 = &qword_10118AB18;
    goto LABEL_7;
  }

LABEL_8:

LABEL_9:
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_10007D994()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10007DA78()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10007DAB0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10007DAE8()
{

  return swift_deallocObject();
}

uint64_t sub_10007DB28()
{

  return swift_deallocObject();
}

id sub_10007DB68@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10007DBB0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = _s23QueueSnapshotIdentifierOMa(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10007DC5C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = _s23QueueSnapshotIdentifierOMa(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10007DE54()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10007DE8C()
{

  return swift_deallocObject();
}

uint64_t sub_10007DECC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10007DF5C()
{

  return swift_deallocObject();
}

uint64_t sub_10007DF9C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10007DFD4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10007E014()
{

  return swift_deallocObject();
}

uint64_t sub_10007E064()
{

  return swift_deallocObject();
}

uint64_t sub_10007E0BC()
{

  return swift_deallocObject();
}

uint64_t sub_10007E144(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10118F670);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10007E1BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10118F670);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10007E254()
{

  return swift_deallocObject();
}

uint64_t sub_10007E28C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10007E2DC()
{
  v1 = type metadata accessor for Playlist.Folder();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10007E3AC()
{
  v1 = type metadata accessor for Playlist();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10007E510(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10010FC20(&unk_10118BCE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_10007E5CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10010FC20(&unk_10118BCE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10007E67C()
{
  swift_unknownObjectRelease();
  sub_10000959C(v0 + 32);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10007E6DC()
{
  swift_unknownObjectRelease();
  sub_10000959C(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_10007E730()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10007E76C()
{

  return swift_deallocObject();
}

uint64_t sub_10007E7A4()
{

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_10012B804(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10007E820()
{
  v1 = type metadata accessor for MusicPin();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Actions.PlaybackContext();
  v6 = *(*(v5 - 1) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(*(v5 - 1) + 64);
  v9 = *(sub_10010FC20(&unk_1011838D0) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v12 = v0 + v7;

  v13 = v5[5];
  v14 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v14 - 8) + 48))(v0 + v7 + v13, 1, v14))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = type metadata accessor for MusicPlaybackIntentDescriptor();
      (*(*(v15 - 8) + 8))(v12 + v13, v15);
    }

    else
    {
    }
  }

  v16 = v11 + v10;
  v17 = (v12 + v5[6]);
  if (v17[1])
  {

    v18 = v17[3];
    if (v18 >> 60 != 15)
    {
      sub_10002C064(v17[2], v18);
    }
  }

  v19 = v16 + 7;
  v20 = v12 + v5[7];
  if (*(v20 + 24))
  {
    sub_10000959C(v20);
  }

  v21 = v19 & 0xFFFFFFFFFFFFFFF8;
  v22 = v0 + v10;
  v23 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v23 - 8) + 48))(v0 + v10, 1, v23))
  {
    if (*(v22 + 8) >= 0xDuLL)
    {
    }

    v24 = v22 + *(v23 + 20);
    v25 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
    {

      v26 = *(v25 + 24);
      v27 = type metadata accessor for URL();
      v28 = *(v27 - 8);
      v32 = v27;
      if (!(*(v28 + 48))(v24 + v26, 1))
      {
        (*(v28 + 8))(v24 + v26, v32);
      }
    }
  }

  v29 = v0 + v21;
  swift_unknownObjectWeakDestroy();
  v30 = *(v0 + v21 + 48);
  if (v30 != 255)
  {
    sub_10012B804(*(v29 + 8), *(v29 + 16), *(v29 + 24), *(v29 + 32), *(v29 + 40), v30);
  }

  if (*(v29 + 64))
  {
  }

  if (*(v29 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10007ECA4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 88);
  if (v1 != 255)
  {
    sub_10012B804(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), v1);
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 120))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10007ED38()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10007ED70()
{

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_10012B804(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10007EDEC()
{
  v1 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  if (*(v0 + 16))
  {
  }

  v3 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {

LABEL_24:

      goto LABEL_30;
    }

    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        goto LABEL_30;
      }

      type metadata accessor for PlaylistPicker.Mode(0);
      v5 = swift_getEnumCaseMultiPayload() == 1 ? type metadata accessor for Playlist.Folder.Item() : sub_10010FC20(&unk_1011841D0);
      (*(*(v5 - 8) + 8))(v0 + v2, v5);
      if (*(v3 + *(type metadata accessor for PlaylistPicker.Context(0) + 20) + 16) == 1)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }

    v9 = type metadata accessor for Playlist.Folder();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v0 + v2, 1, v9))
    {
      (*(v10 + 8))(v0 + v2, v9);
    }

    v11 = type metadata accessor for PlaylistCreation.Context(0);

    v12 = *(v11 + 24);
    v13 = sub_10010FC20(&unk_1011841D0);
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v3 + v12, 1, v13))
    {
      (*(v14 + 8))(v3 + v12, v13);
    }

    v15 = *(v11 + 28);
    goto LABEL_28;
  }

  if (!EnumCaseMultiPayload)
  {
    type metadata accessor for AppInterfaceContext.Activity.Destination(0);
    v16 = swift_getEnumCaseMultiPayload();
    if (v16 == 4)
    {

      v18 = *(sub_10010FC20(&unk_10118CE00) + 48);
      v19 = type metadata accessor for UITraitOverrides();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(v3 + v18, 1, v19))
      {
        (*(v20 + 8))(v3 + v18, v19);
      }
    }

    else if (v16 == 3)
    {
      v17 = type metadata accessor for Artist();
      (*(*(v17 - 8) + 8))(v0 + v2, v17);
    }

    v15 = *(sub_10010FC20(&unk_1011841E0) + 48);
LABEL_28:
    if (*(v3 + v15))
    {
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload == 1)
  {

    v6 = *(sub_10010FC20(&unk_10118A290) + 48);
    v7 = type metadata accessor for SearchScope();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

LABEL_30:

  return swift_deallocObject();
}

uint64_t sub_10007F268()
{

  return swift_deallocObject();
}

uint64_t sub_10007F2A8()
{

  return swift_deallocObject();
}

uint64_t sub_10007F2E0()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_10012B804(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10007F35C()
{
  v1 = *(sub_10010FC20(&unk_1011838D0) - 8);
  v2 = (*(v1 + 80) + 160) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(*(sub_10010FC20(&unk_1011845D0) - 8) + 80);
  sub_10000959C(v0 + 16);

  swift_unknownObjectWeakDestroy();
  v5 = *(v0 + 112);
  if (v5 != 255)
  {
    sub_10012B804(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), v5);
  }

  if (*(v0 + 128))
  {
  }

  if (*(v0 + 144))
  {
  }

  v6 = (v3 + v4 + 8) & ~v4;
  v7 = v0 + v2;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v19 = *(v10 + 24);
      v11 = type metadata accessor for URL();
      v17 = *(v11 - 8);
      v18 = v11;
      if (!(*(v17 + 48))(v9 + v19, 1))
      {
        (*(v17 + 8))(v9 + v19, v18);
      }
    }
  }

  v12 = type metadata accessor for PlaylistContext();
  if (!(*(*(v12 - 8) + 48))(v0 + v6, 1, v12))
  {
    v13 = type metadata accessor for Playlist.Entry();
    (*(*(v13 - 8) + 8))(v0 + v6, v13);
    v14 = *(v12 + 20);
    v15 = type metadata accessor for Playlist();
    (*(*(v15 - 8) + 8))(v0 + v6 + v14, v15);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10007F768()
{

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_10012B804(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 128))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10007F8A4()
{

  return swift_deallocObject();
}

uint64_t sub_10007F8DC()
{

  return swift_deallocObject();
}

uint64_t sub_10007F92C()
{

  return swift_deallocObject();
}

uint64_t sub_10007F96C()
{

  return swift_deallocObject();
}

uint64_t sub_10007F9BC()
{

  return swift_deallocObject();
}

uint64_t sub_10007FA04()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10007FA3C()
{
  v1 = type metadata accessor for Lyrics.TextLine(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);

  v3 = *(v1 + 28);
  v4 = type metadata accessor for Locale.Language();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_10007FBE4()
{

  return swift_deallocObject();
}

uint64_t sub_10007FC50()
{

  return swift_deallocObject();
}

uint64_t sub_10007FC90()
{

  return swift_deallocObject();
}

uint64_t sub_10007FCC8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10007FD00()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10007FDC4()
{
  v1 = type metadata accessor for MusicPin();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_10007FE4C()
{
  v16 = type metadata accessor for MusicPin();
  v1 = *(v16 - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v17 = *(*(sub_10010FC20(&unk_1011838D0) - 8) + 80);

  (*(v1 + 8))(v0 + v2, v16);
  (*(v5 + 8))(v0 + v6, v4);
  v8 = v0 + ((v6 + v7 + v17) & ~v17);
  v9 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    if (*(v8 + 8) >= 0xDuLL)
    {
    }

    v10 = v8 + *(v9 + 20);
    v11 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
    {

      v12 = *(v11 + 24);
      v13 = type metadata accessor for URL();
      v15 = *(v13 - 8);
      if (!(*(v15 + 48))(v10 + v12, 1, v13))
      {
        (*(v15 + 8))(v10 + v12, v13);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1000801B4()
{
  v1 = type metadata accessor for MusicPin();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Actions.PlaybackContext();
  v6 = *(*(v5 - 1) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(*(v5 - 1) + 64);
  v9 = *(sub_10010FC20(&unk_1011838D0) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v12 = v0 + v7;

  v13 = v5[5];
  v14 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v14 - 8) + 48))(v0 + v7 + v13, 1, v14))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = type metadata accessor for MusicPlaybackIntentDescriptor();
      (*(*(v15 - 8) + 8))(v12 + v13, v15);
    }

    else
    {
    }
  }

  v16 = v11 + v10;
  v17 = (v12 + v5[6]);
  if (v17[1])
  {

    v18 = v17[3];
    if (v18 >> 60 != 15)
    {
      sub_10002C064(v17[2], v18);
    }
  }

  v19 = v16 + 7;
  v20 = v12 + v5[7];
  if (*(v20 + 24))
  {
    sub_10000959C(v20);
  }

  v21 = v19 & 0xFFFFFFFFFFFFFFF8;
  v22 = v0 + v10;
  v23 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v23 - 8) + 48))(v0 + v10, 1, v23))
  {
    if (*(v22 + 8) >= 0xDuLL)
    {
    }

    v24 = v22 + *(v23 + 20);
    v25 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
    {

      v26 = *(v25 + 24);
      v27 = type metadata accessor for URL();
      v28 = *(v27 - 8);
      v32 = v27;
      if (!(*(v28 + 48))(v24 + v26, 1))
      {
        (*(v28 + 8))(v24 + v26, v32);
      }
    }
  }

  v29 = v0 + v21;
  swift_unknownObjectWeakDestroy();
  v30 = *(v0 + v21 + 48);
  if (v30 != 255)
  {
    sub_10012B804(*(v29 + 8), *(v29 + 16), *(v29 + 24), *(v29 + 32), *(v29 + 40), v30);
  }

  if (*(v29 + 64))
  {
  }

  if (*(v29 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100080638()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100080684()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000806BC()
{

  return swift_deallocObject();
}

uint64_t sub_1000806F4()
{
  v1 = type metadata accessor for MusicPin();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000807C4()
{
  v1 = type metadata accessor for Playlist();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100080874()
{

  return swift_deallocObject();
}

uint64_t sub_1000808D4()
{
  v1 = type metadata accessor for Playlist.Folder();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100080970()
{
  v1 = type metadata accessor for Track();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100080A08()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100080A48()
{

  return swift_deallocObject();
}

uint64_t sub_100080A80()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_100080AD4()
{

  return swift_deallocObject();
}

uint64_t sub_100080B14()
{

  return swift_deallocObject();
}

uint64_t sub_100080B5C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100080BA0()
{

  return swift_deallocObject();
}

uint64_t sub_100080BD8()
{

  if (v0[3])
  {
  }

  if (v0[5])
  {
  }

  if (v0[7])
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100080C54()
{

  return swift_deallocObject();
}

uint64_t sub_100080C94()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100080CCC()
{

  return swift_deallocObject();
}

uint64_t sub_100080D18()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100080D60()
{
  v1 = *(type metadata accessor for LibraryImport.ViewModel(0) - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:

      if (v3[8])
      {
      }

      if (v3[10])
      {
      }

      if (v3[16])
      {
      }

      v5 = _s16ActionButtonViewV5ModelVMa(0);
      v6 = v3 + *(v5 + 48);
      v7 = _s12ClickMetricsVMa(0);
      v8 = *(*(v7 - 8) + 48);
      if (!v8(v6, 1, v7))
      {
        v17 = *(v7 + 20);
        v9 = type metadata accessor for URL();
        v15 = *(v9 - 8);
        v16 = v9;
        if (!(*(v15 + 48))(&v6[v17], 1))
        {
          (*(v15 + 8))(&v6[v17], v16);
        }

        if (*&v6[*(v7 + 28) + 8] >= 0xDuLL)
        {
        }
      }

      v10 = v3 + *(v5 + 52);
      if (!v8(v10, 1, v7))
      {
        v11 = *(v7 + 20);
        v12 = type metadata accessor for URL();
        v13 = *(v12 - 8);
        if (!(*(v13 + 48))(&v10[v11], 1, v12))
        {
          (*(v13 + 8))(&v10[v11], v12);
        }

        if (*&v10[*(v7 + 28) + 8] >= 0xDuLL)
        {
        }
      }

      break;
    case 0:

      break;
  }

  return swift_deallocObject();
}

uint64_t sub_1000810D0()
{

  return swift_deallocObject();
}

uint64_t sub_100081138()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100081178()
{
  v1 = type metadata accessor for MusicDataRequest();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000813D4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10008140C()
{

  return swift_deallocObject();
}

uint64_t sub_100081444()
{
  v1 = *(*(sub_10010FC20(&unk_10118F670) - 8) + 80);
  swift_unknownObjectWeakDestroy();
  v2 = *(v0 + 64);
  if (v2 != 255)
  {
    sub_10012B804(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), v2);
  }

  if (*(v0 + 80))
  {
  }

  v3 = (v1 + 112) & ~v1;
  if (*(v0 + 96))
  {
  }

  v4 = type metadata accessor for Playlist.Folder();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1000815B4()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 64);
  if (v1 != 255)
  {
    sub_10012B804(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), v1);
  }

  if (*(v0 + 80))
  {
  }

  if (*(v0 + 96))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100081628()
{
  v1 = type metadata accessor for Playlist.Folder();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_10012B804(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100081740()
{

  return swift_deallocObject();
}

uint64_t sub_100081778()
{
  v1 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  if (*(v0 + 16))
  {
  }

  v3 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {

LABEL_24:

      goto LABEL_30;
    }

    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        goto LABEL_30;
      }

      type metadata accessor for PlaylistPicker.Mode(0);
      v5 = swift_getEnumCaseMultiPayload() == 1 ? type metadata accessor for Playlist.Folder.Item() : sub_10010FC20(&unk_1011841D0);
      (*(*(v5 - 8) + 8))(v0 + v2, v5);
      if (*(v3 + *(type metadata accessor for PlaylistPicker.Context(0) + 20) + 16) == 1)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }

    v9 = type metadata accessor for Playlist.Folder();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v0 + v2, 1, v9))
    {
      (*(v10 + 8))(v0 + v2, v9);
    }

    v11 = type metadata accessor for PlaylistCreation.Context(0);

    v12 = *(v11 + 24);
    v13 = sub_10010FC20(&unk_1011841D0);
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v3 + v12, 1, v13))
    {
      (*(v14 + 8))(v3 + v12, v13);
    }

    v15 = *(v11 + 28);
    goto LABEL_28;
  }

  if (!EnumCaseMultiPayload)
  {
    type metadata accessor for AppInterfaceContext.Activity.Destination(0);
    v16 = swift_getEnumCaseMultiPayload();
    if (v16 == 4)
    {

      v18 = *(sub_10010FC20(&unk_10118CE00) + 48);
      v19 = type metadata accessor for UITraitOverrides();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(v3 + v18, 1, v19))
      {
        (*(v20 + 8))(v3 + v18, v19);
      }
    }

    else if (v16 == 3)
    {
      v17 = type metadata accessor for Artist();
      (*(*(v17 - 8) + 8))(v0 + v2, v17);
    }

    v15 = *(sub_10010FC20(&unk_1011841E0) + 48);
LABEL_28:
    if (*(v3 + v15))
    {
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload == 1)
  {

    v6 = *(sub_10010FC20(&unk_10118A290) + 48);
    v7 = type metadata accessor for SearchScope();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

LABEL_30:

  return swift_deallocObject();
}

uint64_t sub_100081BF4()
{

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_10012B804(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100081C78()
{

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_10012B804(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100081CF4()
{
  v1 = _s9PlaylistsVMa(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2 + *(v1 + 32);

  v4 = *(_s9PlaylistsV5ScopeVMa(0) + 20);
  v5 = type metadata accessor for Playlist.Folder();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_100081E74()
{
  v1 = _s6AlbumsVMa(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);

  v3 = *(v1 + 24);
  _s6AlbumsV5ScopeOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v5 = type metadata accessor for Artist();
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v5 = type metadata accessor for Composer();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }

    v5 = type metadata accessor for Genre();
  }

  (*(*(v5 - 8) + 8))(v0 + v2 + v3, v5);
LABEL_8:

  return swift_deallocObject();
}

uint64_t sub_100081FE0()
{

  return swift_deallocObject();
}

uint64_t sub_10008201C()
{

  return swift_deallocObject();
}

uint64_t sub_1000820A8()
{
  v1 = _s11MusicVideosVMa(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);

  v3 = *(v1 + 28);
  v4 = type metadata accessor for Artist();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_100082210()
{

  return swift_deallocObject();
}

uint64_t sub_100082270()
{

  return swift_deallocObject();
}

uint64_t sub_1000822C8()
{

  return swift_deallocObject();
}

uint64_t sub_100082334()
{
  v1 = _s10TVEpisodesVMa(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);

  v3 = *(v1 + 24);
  _s10TVEpisodesV5ScopeOMa(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for TVSeason();
  }

  else
  {
    v4 = type metadata accessor for TVShow();
  }

  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1000824BC()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100082588()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10008264C()
{
  v1 = type metadata accessor for Playlist.Folder.Item();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000826D4()
{
  v1 = type metadata accessor for Playlist.Folder.Item();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_100082824()
{
  v1 = *(sub_10010FC20(&unk_1011838D0) - 8);
  v2 = (*(v1 + 80) + 160) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(*(sub_10010FC20(&unk_1011845D0) - 8) + 80);
  sub_10000959C(v0 + 16);

  swift_unknownObjectWeakDestroy();
  v5 = *(v0 + 112);
  if (v5 != 255)
  {
    sub_10012B804(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), v5);
  }

  if (*(v0 + 128))
  {
  }

  if (*(v0 + 144))
  {
  }

  v6 = (v3 + v4 + 8) & ~v4;
  v7 = v0 + v2;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v19 = *(v10 + 24);
      v11 = type metadata accessor for URL();
      v17 = *(v11 - 8);
      v18 = v11;
      if (!(*(v17 + 48))(v9 + v19, 1))
      {
        (*(v17 + 8))(v9 + v19, v18);
      }
    }
  }

  v12 = type metadata accessor for PlaylistContext();
  if (!(*(*(v12 - 8) + 48))(v0 + v6, 1, v12))
  {
    v13 = type metadata accessor for Playlist.Entry();
    (*(*(v13 - 8) + 8))(v0 + v6, v13);
    v14 = *(v12 + 20);
    v15 = type metadata accessor for Playlist();
    (*(*(v15 - 8) + 8))(v0 + v6 + v14, v15);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100082C38()
{
  v1 = type metadata accessor for Playlist.Folder();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 16) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_100082DC8()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Playlist.Folder();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_100082F20()
{

  return swift_deallocObject();
}

uint64_t sub_100082F5C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of LibraryPlaylistFolderItemFilter.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100082FAC()
{
  v1 = *(sub_10010FC20(&unk_101182900) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  v3 = sub_10010FC20(&qword_101193C80);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1000830E0()
{
  v1 = *(sub_10010FC20(&unk_101182900) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_10010FC20(&qword_101193C80);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_10008320C()
{
  v1 = *(sub_10010FC20(&unk_101182900) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);

  v3 = sub_10010FC20(&qword_101193C80);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_100083340()
{

  if (v0[3])
  {
  }

  if (v0[5])
  {
  }

  if (v0[7])
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10008349C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Artist();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 64);
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

  else
  {
    v12 = sub_10010FC20(&qword_1011854E0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1000835DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Artist();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 64) = a2;
  }

  else
  {
    v11 = sub_10010FC20(&qword_1011854E0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100083720()
{
  v1 = type metadata accessor for LibraryArtistHeaderView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = type metadata accessor for Artist();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + *(v1 + 20);
  swift_unknownObjectWeakDestroy();
  v5 = *(v4 + 48);
  if (v5 != 255)
  {
    sub_10012B804(*(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), v5);
  }

  if (*(v4 + 64))
  {
  }

  if (*(v4 + 80))
  {
  }

  v6 = *(v1 + 24);
  sub_10010FC20(&unk_101184840);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for UserInterfaceSizeClass();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v2 + v6, 1, v7))
    {
      (*(v8 + 8))(v2 + v6, v7);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10008393C()
{
  v1 = type metadata accessor for LibraryArtistHeaderView();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = type metadata accessor for Artist();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = v0 + v2 + *(v1 + 20);
  swift_unknownObjectWeakDestroy();
  v6 = *(v5 + 48);
  if (v6 != 255)
  {
    sub_10012B804(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  v7 = *(v1 + 24);
  sub_10010FC20(&unk_101184840);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for UserInterfaceSizeClass();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v3 + v7, 1, v8))
    {
      (*(v9 + 8))(v3 + v7, v8);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100083B50()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100083B98()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100083BD8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100083C10()
{

  return swift_deallocObject();
}

uint64_t sub_100083C50()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100083C90()
{

  return swift_deallocObject();
}

uint64_t sub_100083D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10010FC20(&qword_10119F0B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100083E30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10010FC20(&qword_10119F0B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100083EE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10118DD90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100083F50(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_10118DD90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100083FBC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100084000()
{

  return swift_deallocObject();
}

uint64_t sub_100084038()
{

  if (v0[3])
  {
  }

  if (v0[5])
  {
  }

  if (v0[7])
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000840F0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100084150()
{

  return swift_deallocObject();
}

uint64_t sub_1000841A0()
{

  return swift_deallocObject();
}

uint64_t sub_100084208()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100084240()
{

  sub_10000959C(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000842A4()
{
  sub_10000959C(v0 + 16);
  if (*(v0 + 72))
  {

    v1 = *(v0 + 88);
    if (v1 >> 60 != 15)
    {
      sub_10002C064(*(v0 + 80), v1);
    }
  }

  swift_unknownObjectWeakDestroy();
  v2 = *(v0 + 144);
  if (v2 != 255)
  {
    sub_10012B804(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), v2);
  }

  if (*(v0 + 160))
  {
  }

  if (*(v0 + 176))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100084344()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000843E4()
{

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_10012B804(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 128))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100084468()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000844BC()
{
  v1 = type metadata accessor for Playlist();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100084580()
{
  v1 = type metadata accessor for Playlist();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_10012B804(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100084698()
{
  v1 = *(type metadata accessor for Actions.Collaborate.Context() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = type metadata accessor for Playlist();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1000847AC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100084844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10010FC20(&qword_10118E2F8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100084900(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_10010FC20(&qword_10118E2F8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000849B0()
{
  v1 = _s16PlaybackControlsVMa();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  if (*v2)
  {
  }

  sub_10027AC30(*(v2 + 24), *(v2 + 32));
  v3 = *(v1 + 28);
  sub_10010FC20(&qword_10118E3F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for RedactionReasons();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100084AF4()
{
  v1 = _s16PlaybackControlsVMa();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  if (*(v0 + v2))
  {
  }

  sub_10027AC30(*(v3 + 24), *(v3 + 32));
  v4 = *(v1 + 28);
  sub_10010FC20(&qword_10118E3F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for RedactionReasons();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100084C3C()
{
  v1 = type metadata accessor for PlaybackIntentDescriptor(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = (v0 + v2);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + *(v1 + 28);
  if (*(v5 + 24))
  {
    sub_10000959C(v5);
  }

  v6 = v3 + *(v1 + 32);
  if (*(v6 + 24))
  {
    sub_10000959C(v6);
  }

  return swift_deallocObject();
}

uint64_t sub_100084D78()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100084DB0()
{

  return swift_deallocObject();
}

uint64_t sub_100084E38()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100084E70()
{

  return swift_deallocObject();
}

uint64_t sub_100084EB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WaveformState();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100084F1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WaveformState();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100084F8C()
{
  type metadata accessor for DancingPlaybackBarsOverlayModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  sub_1001109D0(&qword_10118E6A8);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  type metadata accessor for Optional();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for _OverlayModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_100085144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlaylistPicker.Mode(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_10010FC20(&qword_10119F0B0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100085240(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PlaylistPicker.Mode(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_10010FC20(&qword_10119F0B0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100085348(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ArtworkImage.Info(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_10010FC20(&qword_10119F0B0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[11];
      goto LABEL_3;
    }

    v15 = sub_10010FC20(&qword_10119A070);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[12];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1000854D8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for ArtworkImage.Info(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_10010FC20(&qword_10119F0B0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[11];
    goto LABEL_3;
  }

  v15 = sub_10010FC20(&qword_10119A070);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[12];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1000856A0()
{
  sub_10005C9F8();

  return swift_deallocObject();
}

uint64_t sub_1000856E0()
{

  return swift_deallocObject();
}

uint64_t sub_100085718()
{

  return swift_deallocObject();
}

uint64_t sub_100085750()
{

  return swift_deallocObject();
}

uint64_t sub_10008578C()
{
  v1 = type metadata accessor for PlaybackIntentDescriptor(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = (v0 + v2);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + *(v1 + 28);
  if (*(v5 + 24))
  {
    sub_10000959C(v5);
  }

  v6 = v3 + *(v1 + 32);
  if (*(v6 + 24))
  {
    sub_10000959C(v6);
  }

  return swift_deallocObject();
}

uint64_t sub_1000858E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_10010FC20(&qword_101188C20);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000859DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_10010FC20(&qword_101188C20);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100085AE4()
{
  v1 = sub_10010FC20(&qword_10118F138);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100085BB4()
{
  v1 = sub_10010FC20(&qword_10118F138);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100085C8C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100085CC4()
{
  v1 = type metadata accessor for Artist();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100085DF4()
{
  v1 = *(_s6AlbumsV5ScopeOMa(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v9 = type metadata accessor for Artist();
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v9 = type metadata accessor for Composer();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }

    v9 = type metadata accessor for Genre();
  }

  (*(*(v9 - 8) + 8))(v0 + v2, v9);
LABEL_8:
  v10 = (v2 + v3 + v6) & ~v6;
  v11 = (v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v5 + 8))(v0 + v10, v4);

  return swift_deallocObject();
}

uint64_t sub_100085FA8()
{

  return swift_deallocObject();
}

uint64_t sub_100085FE8()
{
  v1 = type metadata accessor for PlaybackIntentDescriptor(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = (v0 + v2);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + *(v1 + 28);
  if (*(v5 + 24))
  {
    sub_10000959C(v5);
  }

  v6 = v3 + *(v1 + 32);
  if (*(v6 + 24))
  {
    sub_10000959C(v6);
  }

  return swift_deallocObject();
}

uint64_t sub_100086120()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000861F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Album();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_10010FC20(&qword_10118F260);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100086320(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Album();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = sub_10010FC20(&qword_10118F260);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10008644C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10118F328);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000864BC(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_10118F328);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100086568()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000865A0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000865E4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100086664()
{

  return swift_deallocObject();
}

uint64_t sub_10008669C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100086710()
{
  v1 = type metadata accessor for PlaybackIntentDescriptor(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = (v0 + v2);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + *(v1 + 28);
  if (*(v5 + 24))
  {
    sub_10000959C(v5);
  }

  v6 = v3 + *(v1 + 32);
  if (*(v6 + 24))
  {
    sub_10000959C(v6);
  }

  return swift_deallocObject();
}

uint64_t sub_100086848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010FC20(&unk_10118F670);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

  else
  {
    v12 = sub_10010FC20(&unk_1011842D0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_100086994(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10010FC20(&unk_10118F670);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = sub_10010FC20(&unk_1011842D0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100086AD4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100086B0C()
{

  return swift_deallocObject();
}

uint64_t sub_100086B4C()
{

  return swift_deallocObject();
}

uint64_t sub_100086B88(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10010FC20(&qword_10118ABE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100086C44(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10010FC20(&qword_10118ABE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100086CF4()
{

  return swift_deallocObject();
}

uint64_t sub_100086D2C()
{

  return swift_deallocObject();
}

uint64_t sub_100086D64(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for URL();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_10010FC20(&qword_101188C20);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[17];
    goto LABEL_9;
  }

  v14 = type metadata accessor for ArtworkImage.Placeholder(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[23];

  return v15(v16, a2, v14);
}

uint64_t sub_100086EDC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for URL();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10010FC20(&qword_101188C20);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[17];
    goto LABEL_7;
  }

  v14 = type metadata accessor for ArtworkImage.Placeholder(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[23];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1000870B0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000870E8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100087120()
{

  return swift_deallocObject();
}

uint64_t sub_100087158()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100087198()
{
  swift_unknownObjectRelease();
  v1 = (v0 + 32);
  if (*(v0 + 80) == 1)
  {
    sub_10000959C(v1);
    v1 = (v0 + 72);
  }

  return swift_deallocObject();
}

uint64_t sub_100087204()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10008723C()
{
  swift_unknownObjectRelease();

  v1 = (v0 + 48);
  if (*(v0 + 96) == 1)
  {
    sub_10000959C(v1);
    v1 = (v0 + 88);
  }

  return swift_deallocObject();
}

uint64_t sub_1000872AC()
{

  return swift_deallocObject();
}

uint64_t sub_1000872E4()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100087334()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100087374()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000873AC()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000873F4()
{
  swift_unknownObjectRelease();

  v1 = (v0 + 48);
  if (*(v0 + 96) == 1)
  {
    sub_10000959C(v1);
    v1 = (v0 + 88);
  }

  return swift_deallocObject();
}

uint64_t sub_100087548()
{

  return swift_deallocObject();
}

uint64_t sub_100087580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArtworkImage.Info(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_10010FC20(&unk_101192950);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100087698(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ArtworkImage.Info(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_10010FC20(&unk_101192950);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10008781C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100087854()
{

  return swift_deallocObject();
}

uint64_t sub_100087894()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000878DC()
{
  v1 = type metadata accessor for Playlist();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_10012B804(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000879FC()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 64);
  if (v1 != 255)
  {
    sub_10012B804(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), v1);
  }

  if (*(v0 + 80))
  {
  }

  if (*(v0 + 96))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100087A78()
{
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_10012B804(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100087B0C()
{

  return swift_deallocObject();
}

uint64_t sub_100087B74@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of LibraryMusicMovieFilter.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100087C24@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of LibraryTrackSortProperties.title.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100087C6C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100087CA4()
{

  return swift_deallocObject();
}

uint64_t sub_100087CE8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100087D90()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100087DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010FC20(&qword_101190D20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 32) + 8);
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

  else
  {
    v12 = type metadata accessor for Playlist();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 36);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_100087F08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10010FC20(&qword_101190D20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 32) + 8) = a2;
  }

  else
  {
    v11 = type metadata accessor for Playlist();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100088058()
{
  v1 = _s14descr101092F61V19PlaylistDetailsViewVMa();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for Playlist.Entry();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  sub_10010FC20(&unk_101193FC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for MultimodalListStyle.Layout();
    (*(*(v7 - 8) + 8))(v0 + v2, v7);
  }

  else
  {
  }

  sub_1000D8FC4();
  sub_1000D8FC4();
  sub_1000D8FC4();

  v8 = *(v1 + 36);
  v9 = type metadata accessor for Playlist();
  (*(*(v9 - 8) + 8))(v0 + v2 + v8, v9);
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1000882A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101182900);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100088318(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101182900);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100088394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlaylistPicker.Mode(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    v12 = v11 <= 0;
    if (v11 < 0)
    {
      v11 = -1;
    }

    if (v12)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }
}

uint64_t sub_100088460(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PlaylistPicker.Mode(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 + 1);
  }

  return result;
}

uint64_t sub_10008851C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100088554()
{

  return swift_deallocObject();
}

uint64_t sub_100088594()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100088658()
{
  v1 = type metadata accessor for Playlist();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1000887A8()
{
  v1 = type metadata accessor for Playlist();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = sub_10010FC20(&unk_1011841D0);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_10008890C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100088948()
{

  return swift_deallocObject();
}

uint64_t sub_100088984()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000889DC()
{

  return swift_deallocObject();
}

uint64_t sub_100088A14()
{
  v1 = type metadata accessor for Playlist();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100088AB0()
{

  return swift_deallocObject();
}

uint64_t sub_100088B58()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100088B90()
{

  return swift_deallocObject();
}

uint64_t sub_100088BC8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100088CA8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100088D6C()
{

  return swift_deallocObject();
}

uint64_t sub_100088DB4()
{

  return swift_deallocObject();
}

uint64_t sub_100088DFC()
{
  v1 = type metadata accessor for Playlist.Folder();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100088EC0()
{

  return swift_deallocObject();
}

uint64_t sub_100088F00()
{

  return swift_deallocObject();
}

uint64_t sub_100088F3C()
{
  v1 = type metadata accessor for Artist();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100089088()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000890C0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000890F8()
{

  return swift_deallocObject();
}

uint64_t sub_1000891A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Playlist.Entry();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for Playlist();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100089294(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Playlist.Entry();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for Playlist();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100089390()
{

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_10012B804(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 128))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100089414()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 64);
  if (v1 != 255)
  {
    sub_10012B804(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), v1);
  }

  if (*(v0 + 80))
  {
  }

  if (*(v0 + 96))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100089488()
{

  sub_10000959C(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000894CC()
{
  v1 = type metadata accessor for Playlist.Folder.Item();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000895A4()
{
  v1 = type metadata accessor for Playlist.Folder.Item();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 17) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  sub_10000959C(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_100089668()
{
  v1 = type metadata accessor for Song();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100089754()
{
  v1 = type metadata accessor for Song();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10008982C()
{
  v1 = type metadata accessor for Song();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_10012B804(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100089908()
{
  sub_10000959C(v0 + 16);
  if (*(v0 + 72))
  {

    v1 = *(v0 + 88);
    if (v1 >> 60 != 15)
    {
      sub_10002C064(*(v0 + 80), v1);
    }
  }

  swift_unknownObjectWeakDestroy();
  v2 = *(v0 + 144);
  if (v2 != 255)
  {
    sub_10012B804(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), v2);
  }

  if (*(v0 + 160))
  {
  }

  if (*(v0 + 176))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000899A8()
{
  v1 = type metadata accessor for Song();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Actions.PlaybackContext();
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + v6;

  v8 = v5[5];
  v9 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v9 - 8) + 48))(v0 + v6 + v8, 1, v9))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = type metadata accessor for MusicPlaybackIntentDescriptor();
      (*(*(v10 - 8) + 8))(v7 + v8, v10);
    }

    else
    {
    }
  }

  v11 = (v7 + v5[6]);
  if (v11[1])
  {

    v12 = v11[3];
    if (v12 >> 60 != 15)
    {
      sub_10002C064(v11[2], v12);
    }
  }

  v13 = v7 + v5[7];
  if (*(v13 + 24))
  {
    sub_10000959C(v13);
  }

  return swift_deallocObject();
}

uint64_t sub_100089BC4()
{
  v1 = type metadata accessor for Song();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100089C64()
{
  v1 = type metadata accessor for Playlist();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100089D28()
{
  v1 = type metadata accessor for Playlist();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_10012B804(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100089E44()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100089F00()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_100089F94()
{
  v1 = type metadata accessor for Song();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10008A08C()
{
  v1 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  if (*(v0 + 16))
  {
  }

  v3 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {

LABEL_24:

      goto LABEL_30;
    }

    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        goto LABEL_30;
      }

      type metadata accessor for PlaylistPicker.Mode(0);
      v5 = swift_getEnumCaseMultiPayload() == 1 ? type metadata accessor for Playlist.Folder.Item() : sub_10010FC20(&unk_1011841D0);
      (*(*(v5 - 8) + 8))(v0 + v2, v5);
      if (*(v3 + *(type metadata accessor for PlaylistPicker.Context(0) + 20) + 16) == 1)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }

    v9 = type metadata accessor for Playlist.Folder();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v0 + v2, 1, v9))
    {
      (*(v10 + 8))(v0 + v2, v9);
    }

    v11 = type metadata accessor for PlaylistCreation.Context(0);

    v12 = *(v11 + 24);
    v13 = sub_10010FC20(&unk_1011841D0);
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v3 + v12, 1, v13))
    {
      (*(v14 + 8))(v3 + v12, v13);
    }

    v15 = *(v11 + 28);
    goto LABEL_28;
  }

  if (!EnumCaseMultiPayload)
  {
    type metadata accessor for AppInterfaceContext.Activity.Destination(0);
    v16 = swift_getEnumCaseMultiPayload();
    if (v16 == 4)
    {

      v18 = *(sub_10010FC20(&unk_10118CE00) + 48);
      v19 = type metadata accessor for UITraitOverrides();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(v3 + v18, 1, v19))
      {
        (*(v20 + 8))(v3 + v18, v19);
      }
    }

    else if (v16 == 3)
    {
      v17 = type metadata accessor for Artist();
      (*(*(v17 - 8) + 8))(v0 + v2, v17);
    }

    v15 = *(sub_10010FC20(&unk_1011841E0) + 48);
LABEL_28:
    if (*(v3 + v15))
    {
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload == 1)
  {

    v6 = *(sub_10010FC20(&unk_10118A290) + 48);
    v7 = type metadata accessor for SearchScope();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

LABEL_30:

  return swift_deallocObject();
}

uint64_t sub_10008A508()
{
  v1 = type metadata accessor for MusicPin();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Actions.PlaybackContext();
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  v7 = *(*(v5 - 1) + 64);
  v8 = *(*(sub_10010FC20(&unk_1011838D0) - 8) + 80);
  v9 = v7 + v8;
  (*(v2 + 8))(v0 + v3, v1);
  v10 = v0 + v6;

  v11 = v5[5];
  v12 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v12 - 8) + 48))(v0 + v6 + v11, 1, v12))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = type metadata accessor for MusicPlaybackIntentDescriptor();
      (*(*(v13 - 8) + 8))(v10 + v11, v13);
    }

    else
    {
    }
  }

  v14 = v6 + v9;
  v15 = (v10 + v5[6]);
  if (v15[1])
  {

    v16 = v15[3];
    if (v16 >> 60 != 15)
    {
      sub_10002C064(v15[2], v16);
    }
  }

  v17 = v14 & ~v8;
  v18 = v10 + v5[7];
  if (*(v18 + 24))
  {
    sub_10000959C(v18);
  }

  v19 = v0 + v17;
  v20 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v20 - 8) + 48))(v0 + v17, 1, v20))
  {
    if (*(v19 + 8) >= 0xDuLL)
    {
    }

    v21 = v19 + *(v20 + 20);
    v22 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
    {

      v23 = *(v22 + 24);
      v24 = type metadata accessor for URL();
      v28 = *(v24 - 8);
      v29 = v23;
      v25 = v21 + v23;
      v26 = v24;
      if (!(*(v28 + 48))(v25, 1, v24))
      {
        (*(v28 + 8))(v21 + v29, v26);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_10008A920()
{
  v1 = type metadata accessor for MusicPin();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Actions.PlaybackContext();
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  v7 = *(*(v5 - 1) + 64) + v6;
  v8 = *(*(sub_10010FC20(&unk_1011838D0) - 8) + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v9 = v0 + v6;

  v10 = v5[5];
  v11 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v11 - 8) + 48))(v0 + v6 + v10, 1, v11))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = type metadata accessor for MusicPlaybackIntentDescriptor();
      (*(*(v12 - 8) + 8))(v9 + v10, v12);
    }

    else
    {
    }
  }

  v13 = v7 + 7;
  v14 = (v9 + v5[6]);
  if (v14[1])
  {

    v15 = v14[3];
    if (v15 >> 60 != 15)
    {
      sub_10002C064(v14[2], v15);
    }
  }

  v16 = v13 & 0xFFFFFFFFFFFFFFF8;
  v17 = v9 + v5[7];
  if (*(v17 + 24))
  {
    sub_10000959C(v17);
  }

  v18 = v0 + v16;
  swift_unknownObjectWeakDestroy();
  v19 = *(v0 + v16 + 48);
  if (v19 != 255)
  {
    sub_10012B804(*(v18 + 8), *(v18 + 16), *(v18 + 24), *(v18 + 32), *(v18 + 40), v19);
  }

  if (*(v18 + 64))
  {
  }

  v20 = (v16 + v8 + 96) & ~v8;
  if (*(v18 + 80))
  {
  }

  v21 = v0 + v20;
  v22 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v22 - 8) + 48))(v0 + v20, 1, v22))
  {
    if (*(v21 + 8) >= 0xDuLL)
    {
    }

    v23 = v21 + *(v22 + 20);
    v24 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
    {

      v25 = *(v24 + 24);
      v26 = type metadata accessor for URL();
      v30 = *(v26 - 8);
      v31 = v25;
      v27 = v23 + v25;
      v28 = v26;
      if (!(*(v30 + 48))(v27, 1, v26))
      {
        (*(v30 + 8))(v23 + v31, v28);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_10008AD88()
{
  v1 = type metadata accessor for MusicPin();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_10010FC20(&unk_1011838D0) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = v0 + v6;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v0 + v6, 1, v8))
  {
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = type metadata accessor for URL();
      v16 = *(v12 - 8);
      v17 = v11;
      v13 = v9 + v11;
      v14 = v12;
      if (!(*(v16 + 48))(v13, 1, v12))
      {
        (*(v16 + 8))(v9 + v17, v14);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_10008B05C()
{
  v1 = type metadata accessor for MusicPin();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(*(sub_10010FC20(&unk_1011838D0) - 8) + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v6 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v7 = *(v0 + v4 + 48);
  if (v7 != 255)
  {
    sub_10012B804(*(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), v7);
  }

  if (*(v6 + 64))
  {
  }

  v8 = (v4 + v5 + 96) & ~v5;
  if (*(v6 + 80))
  {
  }

  v9 = v0 + v8;
  v10 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v10 - 8) + 48))(v0 + v8, 1, v10))
  {
    if (*(v9 + 8) >= 0xDuLL)
    {
    }

    v11 = v9 + *(v10 + 20);
    v12 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {

      v13 = *(v12 + 24);
      v14 = type metadata accessor for URL();
      v15 = *(v14 - 8);
      v19 = v13;
      v16 = v11 + v13;
      v17 = v14;
      if (!(*(v15 + 48))(v16, 1, v14))
      {
        (*(v15 + 8))(v11 + v19, v17);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_10008B3AC()
{
  v1 = type metadata accessor for Playlist();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10008B490()
{
  v1 = type metadata accessor for Playlist.Folder();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10008B568()
{

  return swift_deallocObject();
}

uint64_t sub_10008B5A0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10008B5F4()
{
  v1 = type metadata accessor for Playlist();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10008B70C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10008B744()
{

  return swift_deallocObject();
}

uint64_t sub_10008B7AC()
{
  v1 = type metadata accessor for Album();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = sub_10010FC20(&unk_1011841D0);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_10008B920()
{
  v1 = *(type metadata accessor for ContainerDetail.AttributionItem(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v4 = type metadata accessor for RadioShow();
        break;
      case 4:
        v4 = type metadata accessor for Genre();
        break;
      case 5:
        v4 = type metadata accessor for Playlist();
        break;
      default:
        goto LABEL_15;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v4 = type metadata accessor for SocialProfile();
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_15;
      }

      v4 = type metadata accessor for Curator();
    }
  }

  else
  {
    v4 = type metadata accessor for Artist();
  }

  (*(*(v4 - 8) + 8))(v0 + v2, v4);
LABEL_15:

  return swift_deallocObject();
}

uint64_t sub_10008BA9C()
{

  return swift_deallocObject();
}

uint64_t sub_10008BAD4()
{

  return swift_deallocObject();
}

uint64_t sub_10008BB94()
{
  v1 = type metadata accessor for Album();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10008BC60()
{
  v1 = *(type metadata accessor for ContainerDetail.AttributionItem(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v4 = type metadata accessor for RadioShow();
        break;
      case 4:
        v4 = type metadata accessor for Genre();
        break;
      case 5:
        v4 = type metadata accessor for Playlist();
        break;
      default:
        goto LABEL_15;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v4 = type metadata accessor for SocialProfile();
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_15;
      }

      v4 = type metadata accessor for Curator();
    }
  }

  else
  {
    v4 = type metadata accessor for Artist();
  }

  (*(*(v4 - 8) + 8))(v0 + v2, v4);
LABEL_15:

  return swift_deallocObject();
}

uint64_t sub_10008BDAC()
{
  v1 = *(type metadata accessor for ContainerDetail.AttributionItem(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v4 = type metadata accessor for RadioShow();
        break;
      case 4:
        v4 = type metadata accessor for Genre();
        break;
      case 5:
        v4 = type metadata accessor for Playlist();
        break;
      default:
        goto LABEL_15;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v4 = type metadata accessor for SocialProfile();
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_15;
      }

      v4 = type metadata accessor for Curator();
    }
  }

  else
  {
    v4 = type metadata accessor for Artist();
  }

  (*(*(v4 - 8) + 8))(v0 + v2, v4);
LABEL_15:

  return swift_deallocObject();
}

uint64_t sub_10008BF0C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10008BF54()
{

  return swift_deallocObject();
}

uint64_t sub_10008BF8C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  if (*(v0 + v4))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10008C048()
{

  return swift_deallocObject();
}

uint64_t sub_10008C0A0()
{

  return swift_deallocObject();
}

uint64_t sub_10008C0E0()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10008C1D0()
{
  v1 = type metadata accessor for Track();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_10008C2CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericMusicItem();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10008C338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericMusicItem();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10008C4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10010FC20(&qword_1011933C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10008C588(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10010FC20(&qword_1011933C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10008C838()
{

  return swift_deallocObject();
}

uint64_t sub_10008C870()
{
  v1 = (_s8MetadataO4ViewVMa(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2 + v1[9];
  v4 = type metadata accessor for ScrollPosition();
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_10010FC20(&qword_1011933C0);

  return swift_deallocObject();
}

uint64_t sub_10008CA0C()
{
  v1 = (_s8MetadataO4ViewVMa(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2 + v1[9];
  v4 = type metadata accessor for ScrollPosition();
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_10010FC20(&qword_1011933C0);

  return swift_deallocObject();
}

uint64_t sub_10008CE74()
{
  v1 = sub_10010FC20(&qword_101193768);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_10008CF08()
{
  v1 = sub_10010FC20(&qword_101193768);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10008CFE0()
{
  sub_1001109D0(&qword_101193518);
  sub_1001109D0(&qword_101193510);
  sub_1001109D0(&qword_101192F78);
  sub_1001109D0(&qword_101193508);
  sub_1001109D0(&qword_101193500);
  type metadata accessor for ScrollPosition();
  sub_1001109D0(&qword_1011934F8);
  sub_1001109D0(&qword_101193478);
  sub_1001109D0(&qword_1011934F0);
  sub_1001109D0(&qword_1011842B0);
  sub_1001109D0(&qword_1011934E8);
  sub_1001109D0(&qword_1011934E0);
  sub_1001109D0(&qword_101184230);
  sub_1005007A0();
  sub_100500914();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_100500AC8(&qword_101193568, &qword_1011842B0);
  swift_getOpaqueTypeConformance2();
  sub_100500AC8(&qword_101193580, &qword_101193478);
  swift_getOpaqueTypeConformance2();
  sub_1005008CC(&qword_101193588, &type metadata accessor for ScrollPosition);
  swift_getOpaqueTypeConformance2();
  sub_100500CBC(&qword_101193598, sub_100500D34);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10008D374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010FC20(&qword_101183A20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for Logger();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10008D4A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10010FC20(&qword_101183A20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for Logger();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10008D5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WidgetDiskCache();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10008D694(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WidgetDiskCache();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44) + 8) = (a2 - 1);
  }

  return result;
}

BOOL sub_10008D750(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_10008D788()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10008D7C0()
{
  v1 = sub_10010FC20(&unk_101193AA0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for MusicVideo();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_10008D930()
{
  v1 = *(sub_10010FC20(&unk_10118BCE0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_10008DA58()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10008DA90()
{
  v1 = type metadata accessor for MusicVideo();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10008DB54()
{
  v1 = type metadata accessor for MusicVideo();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10008DC20()
{
  v1 = type metadata accessor for MusicVideo();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_10008DCA8()
{
  v1 = type metadata accessor for MusicVideo();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_10008DDFC()
{
  v1 = type metadata accessor for PlaybackIntentDescriptor(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = (v0 + v2);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + *(v1 + 28);
  if (*(v5 + 24))
  {
    sub_10000959C(v5);
  }

  v6 = v3 + *(v1 + 32);
  if (*(v6 + 24))
  {
    sub_10000959C(v6);
  }

  return swift_deallocObject();
}